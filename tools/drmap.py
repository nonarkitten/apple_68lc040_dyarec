"""What the dynamic recompiler does with each 68K opcode.

The recompiler's first pass (dr_scan_next, docs/09-dynamic-recompiler.md)
decodes one instruction and fills in a 12-byte record: flags, and the offset
of the code generator ("emitter") that will translate it.  This module runs
that code, in the simulator, for all 65536 opcodes and returns what it
decided.  Nothing here interprets the recompiler: the answers are the
recompiler's own.

    scan(image) -> {opcode: Decision}

    Decision.translated   False if the instruction ends the block and is
                          left to the interpreter
    Decision.ends_block   True if no instruction after it joins the block
    Decision.flags        the record's flag word (see FLAG_*)
    Decision.emitter      offset of the emitter from dr_emitters, or None
    Decision.length       bytes of 68K code the instruction occupies
                          (meaningful when it does not end the block)
"""

import collections

import ppcsim

Decision = collections.namedtuple('Decision', 'translated ends_block flags emitter length')

# Flag word of an instruction record, as far as the bits are understood.
FLAG_TARGET_SETS_NZVC = 0x0004     # on a branch: the instruction at its target replaces N, Z, V, C
FLAG_USES_NZVC = 0x0100
FLAG_USES_X = 0x0200
FLAG_SETS_NZVC = 0x0400
FLAG_SETS_X = 0x0800
FLAG_BRANCH_TARGET = 0x1000
FLAG_CONTROL_TRANSFER = 0x2000
FLAG_NOT_TRANSLATED = 0x4000
FLAG_LAST_IN_BLOCK = 0x8000

# Offsets within the image (see the labels of the same names in src/).
DR_CB = 0x10000
DR_SCAN_NEXT = 0x1005C
DR_LIVENESS = 0x100FC
DR_TRANSLATE_ABORT = 0x10234
DR_LINE_0 = 0x10280
DR_EMITTERS = 0x11338

# The four of them that pass 1 needs.  Other builds of the emulator have the
# same routines at other offsets (tools/buildcmp.py finds them).
Layout = collections.namedtuple('Layout', 'scan_next liveness translate_abort line_0')
EMULATOR_X = Layout(DR_SCAN_NEXT, DR_LIVENESS, DR_TRANSLATE_ABORT, DR_LINE_0)

PEEK_RESUME_OFFSET = 0xB68      # state block: blk_ofs to return to after looking at a branch target

STATE = 0x68FFF000              # emulator state block
GUEST_CODE = 0x00100000         # where the 68K instruction under test is put
RECORDS = 0x00200000            # instruction record array


def _machine(image, opcode, extension, layout):
    """A machine about to run pass 1 on one instruction."""
    base = ppcsim.LOAD_ADDRESS
    m = ppcsim.Machine()
    m.load(base, image)
    m.write(STATE + 0xB00, 4, base + DR_CB)                 # dr_code_base
    for line in range(16):                                  # dr_line_decoders
        m.write(STATE + 0xA1C + 4 * line, 4, base + layout.line_0 + 0x40 * line)
    m.write(STATE + 0xB14, 4, RECORDS)                      # dr_records
    m.write(GUEST_CODE, 2, opcode)
    for index, word in enumerate(extension):
        m.write(GUEST_CODE + 2 + 2 * index, 2, word)
    m.r[31] = STATE
    m.r[24] = GUEST_CODE            # pc: start of the block
    m.r[23] = 0                     # blk_ofs
    m.r[29] = RECORDS               # rec_ptr
    m.r[7] = base + layout.line_0   # base_disp: decoder tables
    m.pc = base + layout.scan_next
    return m


def decide(image, opcode, extension=(0, 0, 0, 0), layout=EMULATOR_X):
    """Run pass 1 on one instruction and return its Decision."""
    base = ppcsim.LOAD_ADDRESS
    m = _machine(image, opcode, extension, layout)
    while True:
        m.step()
        stop = m.run(stop=(base + layout.scan_next, base + layout.liveness,
                           base + layout.translate_abort), limit=5000) - base
        # A conditional branch makes the decoder look at the instruction at
        # its target before going on; that visit to dr_scan_next has the
        # resume offset parked in the state block.
        if stop != layout.scan_next or m.read(STATE + PEEK_RESUME_OFFSET, 4) == 0:
            break
    if stop == layout.translate_abort:
        raise RuntimeError('pass 1 aborted on opcode %04X' % opcode)
    flags = m.read(RECORDS, 2)
    emitter = m.read(RECORDS + 4, 2)
    if emitter & 0x8000:
        emitter -= 0x10000
    translated = not flags & FLAG_NOT_TRANSLATED
    return Decision(translated, stop == layout.liveness, flags,
                    emitter if translated else None, m.r[23])


def entered(image, opcode, extension=(0, 0, 0, 0), layout=EMULATOR_X):
    """The places pass 1 branches to while it decodes one instruction, as
    offsets in the image, in order.  The look at a branch's target, which
    decodes another instruction, is left out."""
    base = ppcsim.LOAD_ADDRESS
    m = _machine(image, opcode, extension, layout)
    stops = (base + layout.scan_next, base + layout.liveness, base + layout.translate_abort)
    places, returns = [], set()
    for _ in range(5000):
        previous = m.pc
        if m.read(previous, 4) & 1 and m.read(previous, 4) >> 26 in (16, 18, 19):
            returns.add(previous + 4)           # a call: coming back is not a branch
        m.step()
        if m.pc in stops:
            break
        if m.pc != previous + 4 and m.pc not in returns:
            places.append(m.pc - base)
    return places


def paths(image, cache=None, layout=EMULATOR_X):
    """{offset: [opcodes]}: for every place pass 1 branches to, the opcodes
    whose decoding goes through it.  Cached like scan()."""
    import hashlib
    import json
    import os
    digest = hashlib.sha1(image).hexdigest()
    if cache and os.path.exists(cache):
        with open(cache) as handle:
            stored = json.load(handle)
        if stored.get('digest') == digest:
            return {int(offset): opcodes for offset, opcodes in stored['paths'].items()}
    result = collections.defaultdict(list)
    for opcode in range(0x10000):
        for offset in sorted(set(entered(image, opcode, layout=layout))):
            result[offset].append(opcode)
    if cache:
        os.makedirs(os.path.dirname(cache), exist_ok=True)
        with open(cache, 'w') as handle:
            json.dump({'digest': digest, 'paths': result}, handle)
    return dict(result)


def scan(image, cache=None, layout=EMULATOR_X):
    """Decide every opcode.  The run takes several seconds, so the result
    can be kept in a cache file (keyed by a digest of the image)."""
    import hashlib
    import json
    import os
    digest = hashlib.sha1(image).hexdigest()
    if cache and os.path.exists(cache):
        with open(cache) as handle:
            stored = json.load(handle)
        if stored.get('digest') == digest:
            return {int(opcode): Decision(*fields)
                    for opcode, fields in stored['decisions'].items()}
    decisions = {opcode: decide(image, opcode, layout=layout) for opcode in range(0x10000)}
    if cache:
        os.makedirs(os.path.dirname(cache), exist_ok=True)
        with open(cache, 'w') as handle:
            json.dump({'digest': digest, 'decisions': decisions}, handle)
    return decisions


if __name__ == '__main__':
    import os
    import sys
    sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
    import m68k
    with open(os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))),
                           'Emulator.x'), 'rb') as handle:
        image = handle.read()[0x3C:0x3C + 0x20000]
    for argument in sys.argv[1:]:
        opcode = int(argument, 16)
        print('%04X  %-30s %s' % (opcode, ' '.join(m68k.text(opcode).split()),
                                  decide(image, opcode)))
