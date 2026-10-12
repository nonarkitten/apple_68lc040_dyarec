#!/usr/bin/env python3
"""Static checks that use the dispatch table as a specification.

Usage: check.py [-v]

Each of the 65536 dispatch table entries starts the emulation of a known
68K instruction, which says what the code reached from it ought to do.
Three properties are checked without executing anything:

  legality    The emulator implements an opcode exactly when it is a valid
              68LC040 instruction (according to tools/m68k.py).

  rtn_addr    An entry that branches to a routine which "returns" through
              rtn_addr has loaded rtn_addr in its first instruction.

  length      Along every path from the entry to the dispatch of the next
              instruction, pc advances by exactly the length of the
              instruction (opcode word plus extension words).

A disagreement means one of three things: the decoder in tools/m68k.py is
wrong about that opcode (so the comment on its table entry is too), the
checker's model is too simple for that routine, or the emulator really
does something unexpected.  All three are worth knowing; -v lists the
individual opcodes.

The length check is a path walk over the PowerPC code with a small
abstract state: how far pc has advanced, and which code addresses are held
in LR, CTR and the registers used to pass them.  It follows both sides of
conditional branches, follows calls and returns, and resolves calls
through the handler table to the default handlers.  It models a jump into the indexed
addressing decode table as a routine that returns.  It stops at loops and
at jumps it cannot resolve, and reports how many opcodes that left
unchecked.
"""

import collections
import re
import struct
import sys

import gen
import m68k

TABLE = gen.TABLE_START
STEP_LIMIT = 4000               # instructions examined per opcode
SPECIAL_EVENT_BIT = 8           # cr_special_event_pending
DR_ACTIVE_BIT = 5               # cr_dr_active

# Opcodes for which a check is known to fail because the original code is
# wrong.  They are reported separately and do not make the run fail.
KNOWN_DEFECTS = {
    opcode: 'pc advances 2 instead of 4, and the next opcode is taken from a stale register'
    for opcode in range(0x8F88, 0x8F90)         # UNPK -(Ay),-(A7),#<adj>
}

CONTROL_FLOW = re.compile(
    r'^(B(RA|SR|[A-Z]{2})|DB[A-Z]{1,2}|JMP|JSR|RT[SERD]|TRAP.*|CHK.*|STOP|RESET|'
    r'ILLEGAL|BKPT|DIV.*|A-LINE|F-LINE|MOVE16|CAS.*|MOVEC|MOVES)$')


# ---------------------------------------------------------------------------
# What the 68K instruction requires
# ---------------------------------------------------------------------------

def extension_words(op):
    """Number of extension words the instruction has, and whether the count
    can be larger (indexed addressing with a full-format extension word)."""
    words, variable = 0, False
    size_words = 2 if op.size == 'L' else 1
    for operand in (op.src, op.dst):
        text = operand.replace('{ofs:wid}', '')
        if text in ('(xxx).L',):
            words += 2
        elif re.fullmatch(r'\(d16,(A\d|PC)\)|\(xxx\)\.W', text):
            words += 1
        elif re.fullmatch(r'\(d8,(A\d|PC),Xn\)', text):
            words, variable = words + 1, True
        elif text == '#<data>':
            words += size_words
        elif text in ('#<bit>', '#<adj>', '<list>', '#<data>.W', '(Ay)+'):
            words += 1
        elif text == '#<data>.L':
            words += 2
        elif text == '#<disp>':
            words += size_words
        elif text == '<label>':
            words += {'S': 0, 'W': 1, 'L': 2}[op.size]
    name = op.name
    if '{ofs:wid}' in op.src + op.dst:
        words += 1
    if name in ('MOVES', 'CHK2/CMP2', 'CAS', 'MOVEC', 'MULU/MULS', 'DIVU/DIVS'):
        words += 1
    if name == 'CAS2':
        words += 2
    if name == 'STOP':
        words = 1
    return words, variable


# ---------------------------------------------------------------------------
# Abstract walk of the PowerPC code
# ---------------------------------------------------------------------------

class Walker:
    def __init__(self, generator):
        self.g = generator
        self.words = generator.words
        self.kind = generator.kind
        names = generator.label_addrs
        self.event = names['process_special_event']
        self.terminal = {}
        for name, addr in names.items():
            if gen.AUTO_LABEL.fullmatch(name):
                continue                        # a local label inside a routine
            if name.startswith('take_') or name in (
                    'exit_emulator', 'switch_to_native', 'mixed_mode_dispatch',
                    'privilege_check_failed'):
                self.terminal[addr] = 'exception'
        trap_table = names['EmKernelTrapTable']
        for slot in range(17):
            self.terminal[trap_table + 4 * slot] = 'kernel'
        # Default contents of the handler table at +0x800 in the state block.
        defaults = names['handler_defaults']
        self.vectors = {}
        for index in range(151):
            value = struct.unpack_from('>H', generator.image, defaults + 2 * index)[0]
            if value:
                self.vectors[0x800 + 4 * index] = value

    def walk(self, entry):
        """Return {(advance, kind)} for every path from the table entry.

        kind: 'dispatch'   next instruction dispatched, pc advanced by `advance`
              'jump'       next instruction dispatched after pc was loaded
              'exception', 'kernel', 'event'
              'indirect'   jump through a value the walk cannot resolve
              'loop'       the path returned to an instruction already on it
              'limit'      too many steps
        """
        results = set()
        budget = [STEP_LIMIT]
        seen = set()
        stack = [(entry, 0, False, None, None, ())]
        while stack:
            addr, adv, loaded, lr, ctr, regs = stack.pop()
            path = set()
            regs = dict(regs)
            while True:
                budget[0] -= 1
                if budget[0] < 0:
                    results.add((adv, 'limit'))
                    return results
                if addr in self.terminal:
                    results.add((adv, self.terminal[addr]))
                    break
                if addr == self.event:
                    results.add((adv, 'event'))
                    break
                state = (addr, adv, loaded, lr, ctr, tuple(sorted(regs.items())))
                if addr in path:
                    results.add((adv, 'loop'))
                    break
                if state in seen:
                    break
                seen.add(state)
                path.add(addr)
                kind, insn = self.kind.get(addr, ('long', None))
                if kind != 'insn':
                    results.add((adv, 'indirect'))
                    break
                word = self.words[addr // 4]
                primary = word >> 26

                # ---- branches -------------------------------------------
                if primary == 18:                       # b / bl
                    target = insn.ops[0][1]
                    if word & 1:
                        lr = ('addr', addr + 4)
                    addr = target
                    continue
                if primary == 16:                       # bc
                    bo, bi = (word >> 21) & 31, (word >> 16) & 31
                    target = insn.ops[-1][1]
                    taken_lr = ('addr', addr + 4) if word & 1 else lr
                    stack.append((target, adv, loaded, taken_lr, ctr,
                                  tuple(sorted(regs.items()))))
                    addr += 4
                    continue
                if primary == 19 and ((word >> 1) & 0x3FF) in (16, 528):
                    to_lr = ((word >> 1) & 0x3FF) == 16
                    bo, bi = (word >> 21) & 31, (word >> 16) & 31
                    value = lr if to_lr else ctr
                    always = bo & 0x14 == 0x14
                    if not always and bi == DR_ACTIVE_BIT and value == 'dr':
                        addr += 4                       # hand-off to the recompiler: ignore
                        continue
                    if not always and bi == SPECIAL_EVENT_BIT and value == 'next':
                        results.add((adv, 'jump' if loaded else 'dispatch'))
                        break                           # DISPATCH
                    if not always:
                        stack.append((addr + 4, adv, loaded, lr, ctr,
                                      tuple(sorted(regs.items()))))
                    if value == 'next':
                        results.add((adv, 'jump' if loaded else 'dispatch'))
                        break
                    if isinstance(value, tuple) and value[0] == 'addr':
                        if word & 1:
                            lr = ('addr', addr + 4)
                        addr = value[1]
                        continue
                    if word & 1:                        # opaque call: assume it returns
                        lr = ('addr', addr + 4)
                        addr += 4
                        continue
                    other = ctr if to_lr else lr
                    if value == 'indexed' and isinstance(other, tuple):
                        # Jump into the indexed addressing decode table, which
                        # returns through the other register.
                        addr = other[1]
                        continue
                    results.add((adv, 'indirect'))
                    break

                # ---- everything else ------------------------------------
                m, ops = insn.mnem, insn.ops
                if m in ('mtlr', 'mtctr'):
                    source = ops[0][1]
                    value = ('next' if source == 29 else 'dr' if source == 23
                             else regs.get(source))
                    if m == 'mtlr':
                        lr = value
                    else:
                        ctr = value
                elif m in ('mflr', 'mfctr'):
                    regs[ops[0][1]] = lr if m == 'mflr' else ctr
                elif m == 'ori' and ops[1] == ('r', 30):
                    regs[ops[0][1]] = ('addr', ops[2][1])
                elif m == 'add' and ops[2] == ('r', 30) and ops[0] == ops[1]:
                    regs[ops[0][1]] = 'indexed'         # code_ptr + extension byte * 8
                elif m == 'lwz' and ops[1][2] == ('r', 31) and ops[1][1] in self.vectors:
                    regs[ops[0][1]] = ('addr', self.vectors[ops[1][1]])
                elif m == 'mr':
                    if ops[0][1] == 24:
                        loaded = True
                    regs[ops[0][1]] = regs.get(ops[1][1])
                else:
                    memory = next((o for o in ops if o[0] == 'mem'), None)
                    update = m in ('lbzu', 'lhzu', 'lhau', 'lwzu', 'stbu', 'sthu', 'stwu')
                    indexed_update = m in ('lbzux', 'lhzux', 'lhaux', 'lwzux',
                                           'stbux', 'sthux', 'stwux')
                    store = m.startswith('st')
                    if update and memory[2][1] == 24:
                        adv += memory[1]
                    elif indexed_update and ops[1][1] == 24:
                        loaded = True
                    elif m == 'addi' and ops[0] == ('r', 24) and ops[1] == ('r', 24):
                        adv += ops[2][1]
                    elif ops and ops[0] == ('r', 24) and not store \
                            and not m.startswith('cmp'):
                        loaded = True
                    if ops and ops[0][0] == 'r' and not store and not m.startswith('cmp'):
                        regs.pop(ops[0][1], None)
                    if update and not store:
                        regs.pop(memory[2][1], None)
                addr += 4
        return results


# ---------------------------------------------------------------------------
# The checks
# ---------------------------------------------------------------------------

def classify(generator, opcode):
    """How the emulator treats the opcode: 'illegal', 'fline', 'aline' or
    'implemented'."""
    entry = TABLE + opcode * 8
    kind, insn = generator.kind[entry + 4]
    if kind == 'insn' and insn.ops and insn.ops[-1][0] == 'tgt':
        name = generator.labels.get(insn.ops[-1][1], '')
        if name == 'take_illegal_instruction':
            return 'illegal'
        if name == 'take_fline':
            return 'fline'
        if name.startswith('aline_'):
            return 'aline'
    return 'implemented'


def reads_rtn_addr(generator, addr):
    """True if the routine at addr moves rtn_addr to LR or CTR before
    giving it a value of its own."""
    for step in range(3):
        kind, insn = generator.kind.get(addr + 4 * step, ('long', None))
        if kind != 'insn':
            return False
        if insn.mnem in ('mtlr', 'mtctr') and insn.ops[0] == ('r', 5):
            return True
        if insn.ops and insn.ops[0] == ('r', 5):
            return False
    return False


def short_branch_advance(opcode):
    """pc advance of a taken short branch: 2 plus the 8-bit displacement."""
    disp = opcode & 0xFF
    return 2 + (disp - 256 if disp & 0x80 else disp)


def summarise(title, items, verbose):
    """items: list of (opcode, detail)."""
    print('\n%s: %d' % (title, len(items)))
    groups = collections.OrderedDict()
    for opcode, detail in items:
        key = (gen.generalise(m68k.text(opcode)), detail)
        groups.setdefault(key, []).append(opcode)
    for (form, detail), opcodes in sorted(groups.items(), key=lambda kv: -len(kv[1])):
        line = '  %5d  %-44s %s' % (len(opcodes), form, detail)
        print(line.rstrip())
        if verbose:
            print('         ' + ' '.join('%04X' % o for o in opcodes[:16])
                  + (' ...' if len(opcodes) > 16 else ''))


def main():
    verbose = '-v' in sys.argv[1:]
    generator = gen.Generator()
    generator.analyse()
    walker = Walker(generator)

    wrongly_implemented, wrongly_rejected, missing_rtn_addr = [], [], []
    wrong_length, unchecked = [], collections.Counter()
    repeats, also_longer, known = [], [], []
    checked = 0

    for opcode in range(0x10000):
        op = m68k.decode(opcode)
        treatment = classify(generator, opcode)
        private = opcode >= 0xFC00
        coprocessor = op.name == 'F-LINE'

        # -- legality ------------------------------------------------------
        if op.name == 'A-LINE':
            if treatment != 'aline':
                wrongly_rejected.append((opcode, 'not routed to the line-A routines'))
            continue
        if coprocessor:
            # Coprocessor opcodes trap one way or another (the FPU ones with
            # a 68LC040-style frame); private opcodes are the host's own.
            continue
        if op.name in ('BKPT', 'ILLEGAL') and op.legal:
            # Valid encodings whose defined behaviour is the illegal
            # instruction exception.
            if treatment != 'illegal':
                wrongly_implemented.append((opcode, 'should take the illegal instruction exception'))
            continue
        if op.legal and treatment != 'implemented':
            wrongly_rejected.append((opcode, 'valid but -> %s' % treatment))
            continue
        if not op.legal:
            if treatment == 'implemented':
                wrongly_implemented.append((opcode, 'invalid but implemented'))
            continue

        # -- rtn_addr ------------------------------------------------------
        entry = TABLE + opcode * 8
        first = generator.kind[entry][1]
        second = generator.kind[entry + 4][1]
        target = second.ops[-1][1] if second.ops and second.ops[-1][0] == 'tgt' else None
        if target is not None and target < TABLE and reads_rtn_addr(generator, target):
            if not (first.ops and first.ops[0] == ('r', 5)):
                missing_rtn_addr.append((opcode, '-> %s' % generator.labels.get(target)))

        # -- length --------------------------------------------------------
        words, variable = extension_words(op)
        expected = 2 + 2 * words
        results = walker.walk(entry)
        advances = sorted({adv for adv, kind in results if kind == 'dispatch'})
        problems = sorted({kind for adv, kind in results
                           if kind in ('indirect', 'loop', 'limit')})
        control = bool(CONTROL_FLOW.match(op.name))
        if not advances:
            if not control:
                unchecked[', '.join(problems) or 'no sequential path'] += 1
            continue
        allowed = {expected}
        if op.name in ('BRA', 'BSR') and op.size == 'S':
            allowed = {short_branch_advance(opcode)}
        elif op.size == 'S' and op.name.startswith('B') and op.name[1:] in m68k.CC:
            allowed.add(short_branch_advance(opcode))
        extra = [adv for adv in advances
                 if adv not in allowed and not (variable and adv > expected)]
        if not allowed & set(advances) and opcode in KNOWN_DEFECTS:
            known.append((opcode, KNOWN_DEFECTS[opcode]))
        elif not allowed & set(advances):
            wrong_length.append((opcode, 'expected %s, found %s' % (
                '/'.join(str(a) for a in sorted(allowed)),
                '/'.join(str(a) for a in advances))))
        elif extra:
            if all(adv % expected == 0 for adv in advances) and len(advances) > 2:
                repeats.append((opcode, 'runs of the same instruction handled in one go'))
            else:
                also_longer.append((opcode, 'expected %d, also found %s' % (
                    expected, '/'.join(str(a) for a in extra))))
        else:
            checked += 1
            if problems and not control:
                unchecked['some paths: ' + ', '.join(problems)] += 1

    print('Static checks against the dispatch table')
    summarise('Implemented although tools/m68k.py calls them invalid',
              wrongly_implemented, verbose)
    summarise('Not implemented although tools/m68k.py calls them valid',
              wrongly_rejected, verbose)
    summarise('Entries that reach a rtn_addr routine without loading rtn_addr',
              missing_rtn_addr, verbose)
    summarise('Instruction length: pc advance differs from the instruction size',
              wrong_length, verbose)
    summarise('Known defects of the original code (not counted as failures)', known, verbose)
    summarise('Instruction length: right on some paths, different on others '
              '(routines that tell instructions apart at run time)', also_longer, verbose)
    summarise('Instruction sequences: the routine looks ahead for repeats of itself',
              repeats, verbose)
    print('\nInstruction length verified on every sequential path: %d opcodes' % checked)
    print('Not fully checked:')
    for reason, count in unchecked.most_common():
        print('  %5d  %s' % (count, reason))
    failures = (len(wrongly_implemented) + len(wrongly_rejected)
                + len(missing_rtn_addr) + len(wrong_length))
    print('\n%s' % ('FAILED: %d unexplained disagreements' % failures if failures
                    else 'OK: no unexplained disagreements'))
    return 1 if failures else 0


if __name__ == '__main__':
    sys.exit(main())
