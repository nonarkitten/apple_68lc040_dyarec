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

PEEK_RESUME_OFFSET = 0xB68      # state block: blk_ofs to return to after looking at a branch target

STATE = 0x68FFF000              # emulator state block
GUEST_CODE = 0x00100000         # where the 68K instruction under test is put
RECORDS = 0x00200000            # instruction record array


def decide(image, opcode, extension=(0, 0, 0, 0)):
    """Run pass 1 on one instruction and return its Decision."""
    base = ppcsim.LOAD_ADDRESS
    m = ppcsim.Machine()
    m.load(base, image)
    m.write(STATE + 0xB00, 4, base + DR_CB)                 # dr_code_base
    for line in range(16):                                  # dr_line_decoders
        m.write(STATE + 0xA1C + 4 * line, 4, base + DR_LINE_0 + 0x40 * line)
    m.write(STATE + 0xB14, 4, RECORDS)                      # dr_records
    m.write(GUEST_CODE, 2, opcode)
    for index, word in enumerate(extension):
        m.write(GUEST_CODE + 2 + 2 * index, 2, word)
    m.r[31] = STATE
    m.r[24] = GUEST_CODE            # pc: start of the block
    m.r[23] = 0                     # blk_ofs
    m.r[29] = RECORDS               # rec_ptr
    m.r[7] = base + DR_LINE_0       # base_disp: decoder tables
    m.pc = base + DR_SCAN_NEXT
    while True:
        m.step()
        stop = m.run(stop=(base + DR_SCAN_NEXT, base + DR_LIVENESS,
                           base + DR_TRANSLATE_ABORT), limit=5000) - base
        # A conditional branch makes the decoder look at the instruction at
        # its target before going on; that visit to dr_scan_next has the
        # resume offset parked in the state block.
        if stop != DR_SCAN_NEXT or m.read(STATE + PEEK_RESUME_OFFSET, 4) == 0:
            break
    if stop == DR_TRANSLATE_ABORT:
        raise RuntimeError('pass 1 aborted on opcode %04X' % opcode)
    flags = m.read(RECORDS, 2)
    emitter = m.read(RECORDS + 4, 2)
    if emitter & 0x8000:
        emitter -= 0x10000
    translated = not flags & FLAG_NOT_TRANSLATED
    return Decision(translated, stop == DR_LIVENESS, flags,
                    emitter if translated else None, m.r[23])


def scan(image, cache=None):
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
    decisions = {opcode: decide(image, opcode) for opcode in range(0x10000)}
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
