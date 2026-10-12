#!/usr/bin/env python3
"""Random 68K programs, run interpreted and recompiled, and compared.

Usage: fuzz.py [COUNT] [--seed N] [--length N] [--known] [--rom ROM] [-v]

The interpreter and the dynamic recompiler implement the same instructions
with largely separate code, so each is a check on the other.  This tool
builds random straight-line 68K programs (with forward conditional
branches), runs every one both ways in the simulator (tools/run68k.py) and
compares the final registers, condition codes and memory.

When the two runs differ, the program is cut down to the shortest one that
still differs and printed, with what each run produced.

Opcodes the recompiler is already known to mistranslate
(check.known_recompiler_defect) are left out, so that a difference means
something new; --known puts them back.

With --rom the emulator tested is the build in that ROM image instead of
Emulator.x (see tools/buildcmp.py).

Programs are built to stay inside what the simulator can run without a
kernel: no traps, no privileged state changes, no jumps or backward
branches, and no division by a value that might be zero.  Within that, the
opcode, registers, addressing modes and operand values are random.
"""

import collections
import random
import sys

import check
import gen
import m68k
import run68k

INCLUDE_KNOWN = False                   # --known: also use opcodes with known recompiler defects
ENTRY = [0x6000, 0x0002]                # BRA.W to the next instruction
ILLEGAL = 0x4AFC
SCRATCH = 0x00021000                    # A0 points here; A1..A6 follow at 0x2000 intervals

EXCLUDED = {
    'A-LINE', 'F-LINE', 'ILLEGAL', 'BKPT', 'STOP', 'RESET', 'RTE', 'RTR', 'RTS', 'RTD',
    'JMP', 'JSR', 'BSR', 'BRA', 'MOVEC', 'MOVES', 'MOVE16', 'MOVEP', 'CAS', 'CAS2',
    'CHK', 'CHK2/CMP2', 'TRAPV', 'MULU/MULS', 'DIVU/DIVS', 'RTM', 'CALLM',
}

# The program and its stack are put well away from the low 64 KB, so that
# short absolute addresses and sign-extended word values loaded into address
# registers cannot reach them: a program that overwrote itself would not be
# a fair comparison, because the recompiler is only told about that through
# the cache-flush operations.
PROGRAM, STACK = 0x00401000, 0x00410000


def usable(opcode):
    """True if the opcode may appear in a generated program."""
    op = m68k.decode(opcode)
    name = op.name
    if not op.legal or name in EXCLUDED or opcode in check.KNOWN_DEFECTS:
        return False
    if not INCLUDE_KNOWN and check.known_recompiler_defect(opcode):
        return False
    if name.startswith(('TRAP', 'CINV', 'CPUSH', 'PFLUSH', 'PTEST', 'DB')):
        return False
    if name[0] == 'B' and name[1:] in m68k.CC:              # Bcc: added separately
        return False
    if 'SR' in (op.src, op.dst) or 'USP' in (op.src, op.dst):
        return False
    if name in ('DIVU', 'DIVS') and op.src != '#<data>':
        return False
    return True


def extension(rng, opcode):
    """Extension words for one instruction, chosen at random but valid."""
    op = m68k.decode(opcode)
    words = []

    def immediate(size):
        if size == 'L':
            words.extend([rng.getrandbits(16), rng.getrandbits(16)])
        elif size == 'B':
            words.append(rng.getrandbits(8))
        else:
            words.append(rng.getrandbits(16))

    def address(text):
        text = text.replace('{ofs:wid}', '')
        if text == '#<data>':                               # TST #<data>, CMPI's cousins
            immediate(op.size)
        elif text.startswith('(d16,'):
            words.append(rng.getrandbits(16) & 0xFFFE)
        elif text.startswith('(d8,'):
            words.append(rng.getrandbits(16) & 0xFEFE)      # brief format, even displacement
        elif text == '(xxx).W':
            words.append(rng.randrange(0x4000, 0x7FF0, 2))
        elif text == '(xxx).L':
            words.extend([0x0003, rng.getrandbits(16) & 0xFFFE])

    name = op.name
    if name == 'MOVEM':
        to_memory = not opcode & 0x0400
        predecrement = (opcode & 0x38) == 0x20
        words.append(rng.getrandbits(16) or 1)
        address(op.dst if to_memory else op.src)
        return words
    if '{ofs:wid}' in op.src + op.dst:                      # bit field
        words.append(rng.getrandbits(15))
    if name == 'LINK':
        immediate(op.size)
        return words
    if op.src in ('#<data>', '#<bit>'):
        if name in ('DIVU', 'DIVS'):
            words.append(rng.randrange(1, 0x10000))         # never zero
        elif op.src == '#<bit>':
            words.append(rng.getrandbits(5))
        else:
            immediate(op.size)
    else:
        address(op.src)
    if op.dst == '#<adj>':                                  # PACK, UNPK
        words.append(rng.getrandbits(16))
    else:
        address(op.dst)
    return words


class Pool:
    """The usable opcodes, grouped so that every mnemonic is equally likely."""

    def __init__(self):
        groups = collections.defaultdict(list)
        for opcode in range(0x10000):
            if usable(opcode):
                op = m68k.decode(opcode)
                groups[(op.name, op.size)].append(opcode)
        self.groups = [groups[key] for key in sorted(groups)]

    def pick(self, rng):
        return rng.choice(rng.choice(self.groups))


def make_program(rng, pool, length):
    """A program as a list of items: ('ins', [words]) or ('bcc', condition, skip)."""
    items = []
    for register in range(8):                               # MOVE.L #random,Dn
        items.append(('ins', [0x203C | register << 9,
                              rng.getrandbits(16), rng.getrandbits(16)]))
    for register in range(7):                               # MOVEA.L #scratch,An
        where = SCRATCH + 0x2000 * register
        items.append(('ins', [0x207C | register << 9, where >> 16, where & 0xFFFF]))
    items.append(('ins', [0x44FC, rng.getrandbits(5)]))     # MOVE #random,CCR
    for _ in range(length):
        if rng.random() < 0.12:
            items.append(('bcc', rng.randrange(2, 16), rng.randrange(1, 4)))
        else:
            opcode = pool.pick(rng)
            items.append(('ins', [opcode] + extension(rng, opcode)))
    return items


def assemble(items):
    """Turn the items into 68K words.  A 'bcc' skips forward over the given
    number of following instructions (fewer if the program ends first)."""
    words = list(ENTRY)
    sizes = [len(item[1]) if item[0] == 'ins' else 1 for item in items]
    for index, item in enumerate(items):
        if item[0] == 'ins':
            words.extend(item[1])
            continue
        skipped = sizes[index + 1:index + 1 + item[2]]
        if not skipped:
            words.append(0x4E71)                            # nothing left to skip: NOP
        else:
            words.append(0x6000 | item[1] << 8 | 2 * sum(skipped))
    return words + [ILLEGAL]


def listing(items):
    lines = []
    for item in items:
        if item[0] == 'bcc':
            lines.append('        B%s.S   over the next %d' % (m68k.CC[item[1]], item[2]))
        else:
            lines.append('        %-24s %s' % (' '.join('%04X' % w for w in item[1]),
                                              ' '.join(m68k.text(item[1][0]).split())))
    return '\n'.join(lines)


def outcome(generator, words, recompile):
    """('ok', state) or ('error', description)."""
    try:
        return ('ok', run68k.run(generator, words, recompile, limit=400000,
                                 quick=True).state())
    except Exception as error:
        return ('error', '%s: %s' % (type(error).__name__, str(error)[:60]))


def differs(generator, items):
    words = assemble(items)
    interpreted = outcome(generator, words, False)
    if interpreted[0] == 'error':
        return False                    # the simulator cannot run it; not a comparison
    return outcome(generator, words, True) != interpreted


def minimise(generator, items, fixed):
    """Drop instructions (after the first `fixed`, the set-up) while the two
    runs still differ."""
    changed = True
    while changed:
        changed = False
        for index in range(len(items) - 1, fixed - 1, -1):
            shorter = items[:index] + items[index + 1:]
            if differs(generator, shorter):
                items, changed = shorter, True
    return items


def describe(generator, items):
    words = assemble(items)
    results = []
    for recompile in (False, True):
        try:
            results.append(run68k.run(generator, words, recompile, limit=400000, quick=True))
        except Exception as error:
            results.append(error)
    lines = [listing(items)]
    for label, result in zip(('interpreted', 'recompiled'), results):
        lines.append('    %s:' % label)
        lines.append(result.show() if isinstance(result, run68k.Result)
                     else '      %s: %s' % (type(result).__name__, result))
    if all(isinstance(result, run68k.Result) for result in results):
        a, b = (result.memory for result in results)
        for address in sorted(set(a) | set(b)):
            if a.get(address, 0) != b.get(address, 0):
                lines.append('    memory %08X: %02X interpreted, %02X recompiled' % (
                    address, a.get(address, 0), b.get(address, 0)))
    return '\n'.join(lines)


def main():
    global INCLUDE_KNOWN
    arguments = sys.argv[1:]
    verbose = '-v' in arguments
    INCLUDE_KNOWN = '--known' in arguments
    options = {'--seed': 1, '--length': 12}
    count = 200
    rom = None
    index = 0
    while index < len(arguments):
        if arguments[index] in options:
            options[arguments[index]] = int(arguments[index + 1])
            index += 1
        elif arguments[index] == '--rom':
            rom = arguments[index + 1]
            index += 1
        elif arguments[index].isdigit():
            count = int(arguments[index])
        index += 1
    generator = gen.Generator()
    generator.analyse()
    if rom:
        import buildcmp
        generator = buildcmp.as_build(generator, buildcmp.rom_image(rom))
    run68k.PROGRAM, run68k.STACK = PROGRAM, STACK
    pool = Pool()
    fixed = 16                          # items of set-up at the start of every program
    different = unrunnable = 0
    signatures = collections.Counter()
    for number in range(count):
        rng = random.Random(options['--seed'] * 1000003 + number)
        items = make_program(rng, pool, options['--length'])
        words = assemble(items)
        interpreted = outcome(generator, words, False)
        if interpreted[0] == 'error':
            unrunnable += 1
            if verbose:
                print('program %d not runnable: %s' % (number, interpreted[1]))
            continue
        if outcome(generator, words, True) == interpreted:
            continue
        different += 1
        small = minimise(generator, items, fixed)
        culprit = ' / '.join(gen.generalise(m68k.text(item[1][0])) if item[0] == 'ins'
                             else 'Bcc' for item in small[fixed:])
        signatures[culprit] += 1
        if signatures[culprit] == 1 or verbose:
            print('\nProgram %d (seed %d) differs.  Shortest form:' % (number, options['--seed']))
            print(describe(generator, small))
    print('\n%d programs: %d ran both ways, %d differed, %d could not be run in the simulator'
          % (count, count - unrunnable, different, unrunnable))
    for culprit, times in signatures.most_common():
        print('  %3d  %s' % (times, culprit))
    return 1 if different else 0


if __name__ == '__main__':
    sys.exit(main())
