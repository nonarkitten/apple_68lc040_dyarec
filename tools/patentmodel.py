#!/usr/bin/env python3
"""What the recompiler of US 5,790,825 would cost, estimated from the interpreter.

Usage: patentmodel.py               classify every opcode, then compare loops
       patentmodel.py --loops       only the comparison

The patent's recompiler is not in the image (docs/12-patents.md).  It gives
every 68K instruction a fixed entry of four PowerPC instructions: the first
instruction of the interpreter's dispatch table entry, a call to a "semantic
routine", the prefetch of the next word, and a test for special events.  An
instruction that needs only two or three PowerPC instructions has them in
the entry instead of the call ("inline", "double inline").

The semantic routine has to continue from exactly the state the dispatch
table's first instruction leaves, so it would be the interpreter's routine
without its DECODE1 / DECODE2 / PREFETCH / DISPATCH.  That makes the design
measurable without building it: run the interpreter in the simulator, and
for each 68K instruction count what it executes apart from that sequence.

    interpreter     measured
    shipped DR      measured (tools/run68k.py, recompiled)
    patent model    work instructions + 2 (inline), 4 in all (double inline),
                    or work + call, return, prefetch, event test (normal);
                    plus DISPATCH_NEXT_PC when control leaves a 64-byte
                    "cache line" of 68K code or passes through RTS, JMP, JSR

DISPATCH_NEXT_PC is an assumption: the patent describes the routine (test for
events, find the line, compare its tag, branch) but gives no code.
"""

import collections
import sys

import check
import image
import m68k
import ppcsim
import run68k

BASE = ppcsim.LOAD_ADDRESS
TABLE = range(BASE + image.TABLE_START, BASE + image.IMAGE_SIZE)
DISPATCH_NEXT_PC = 12
INDIRECT = ('RTS', 'RTD', 'RTE', 'RTR', 'JMP', 'JSR')
ENTRY = [0x6000, 0x0002]            # BRA.W to the next instruction: lets the shipped DR start
ILLEGAL = 0x4AFC

# Loops with an iteration count n in their first MOVEQ.
LOOPS = [
    ('sum: ADD, SUBQ, BNE', lambda n: '70%02X 7200 D280 5380 66FA' % n),
    ('copy: MOVE (A0)+, ADD, MOVE (A1)+, DBRA',
     lambda n: '41F8 2000 43F8 3000 70%02X 2218 D481 22C1 51C8 FFF8' % (n - 1)),
    ('call: BSR, ADDQ, ADD, RTS, DBRA',
     lambda n: '70%02X 7200 6106 51C8 FFFC 6006 5281 D282 4E75' % (n - 1)),
    ('test: CMP, BLE, ADDQ, SUBQ, BNE', lambda n: '70%02X 7200 7432 B082 6F02 5281 5380 66F6' % n),
]


class Trace:
    """Counts for one 68K instruction as the interpreter executed it."""

    def __init__(self, pc, opcode):
        self.pc, self.opcode = pc, opcode
        self.total = self.work = self.branches = 0
        self.uses_lr = self.uses_ctr = self.reads_opcode = False

    def count(self, emulator, machine, address):
        word = machine.read(address, 4)
        insn = emulator.kind[address - BASE][1]
        primary, extended = word >> 26, (word >> 1) & 0x3FF
        self.total += 1
        to_lr_or_ctr = primary == 19 and extended in (16, 528)
        if insn.mnem == 'rlwimi' and insn.ops[0] == ('r', 29):
            return                                          # DECODE1
        if insn.mnem in ('mtlr', 'mtctr') and insn.ops[0] in (('r', 29), ('r', 23)):
            return                                          # DECODE2, or the hand-off to the DR
        if to_lr_or_ctr and (word >> 16) & 31 in (8, 5) and not (word >> 21) & 0x10:
            return                                          # DISPATCH, or the hand-off
        if insn.mnem in ('lhau', 'lha', 'lhax') and insn.ops[0] == ('r', 27):
            return                                          # PREFETCH
        if primary == 18 and not word & 1:
            self.branches += 1
            return
        self.work += 1
        if insn.mnem == 'mtlr' or (word & 1 and primary in (16, 18, 19)) \
                or (to_lr_or_ctr and extended == 16):
            self.uses_lr = True
        if insn.mnem == 'mtctr' or (to_lr_or_ctr and extended == 528):
            self.uses_ctr = True
        if any(o == ('r', 29) or (o[0] == 'mem' and o[2][1] == 29) for o in insn.ops[1:]):
            self.reads_opcode = True

    def patent_cost(self):
        length = 2 + 2 * check.extension_words(m68k.decode(self.opcode))[0]
        if self.work <= 2:
            return 'inline', self.work + 2
        if self.work == 3 and length == 2:
            return 'double inline', 4
        return 'normal', self.work + max(self.branches - 1, 0) + 4


def trace(emulator, machine, limit=3000000):
    """Step the interpreter to the next ILLEGAL; one Trace per instruction."""
    stop = BASE + emulator.label_addrs['take_illegal_instruction']
    traces, left = [], True
    for _ in range(limit):
        address = machine.pc
        if address == stop:
            break
        if address in TABLE and left:
            traces.append(Trace((machine.r[24] - 2) & 0xFFFFFFFF,
                                (address - BASE - image.TABLE_START) // 8))
            left = False
        elif address not in TABLE:
            left = True
        traces[-1].count(emulator, machine, address)
        machine.step()
    return traces


# -- every opcode once ------------------------------------------------------

def classify(emulator):
    boot = run68k.boot(emulator, [0x4E71, 0x4E71], False, False)
    classes, lengths = collections.Counter(), collections.Counter()
    interpreter = patent = uses_lr = uses_ctr = reads_opcode = straight = other = 0
    for opcode in range(0xF000):
        op = m68k.decode(opcode)
        if check.classify(emulator, opcode) != 'implemented':
            continue
        if check.CONTROL_FLOW.match(op.name):
            other += 1
            continue
        extension = check.extension_words(op)[0]
        machine = boot.copy()
        for index, word in enumerate([opcode] + [0x0010] * extension + [ILLEGAL] * 3):
            machine.write(run68k.PROGRAM + 2 * index, 2, word)
        for register in range(8):
            machine.r[8 + register] = 0x00000101 * (register + 1)           # D0-D7
        for register in range(7):
            machine.r[16 + register] = 0x00021000 + 0x2000 * register       # A0-A6
        machine.r[27], machine.r[24] = (0x0010 if extension else ILLEGAL), run68k.PROGRAM + 2
        machine.pc = BASE + image.TABLE_START + 8 * opcode
        try:
            one = trace(emulator, machine, limit=600)[:1]
        except (ppcsim.Unimplemented, ppcsim.Limit, KeyError):
            one = []
        if not one:
            other += 1
            continue
        t = one[0]
        kind, cost = t.patent_cost()
        straight += 1
        classes[kind] += 1
        lengths[2 + 2 * extension] += 1
        interpreter += t.total
        patent += cost
        uses_lr += t.uses_lr
        uses_ctr += t.uses_ctr
        reads_opcode += t.reads_opcode
    print('Straight-line opcodes the interpreter implements: %d (control transfers and others: %d)'
          % (straight, other))
    print('  as patent entries: ' + ', '.join('%s %d' % item for item in classes.most_common()))
    print('  by length in bytes: ' + ', '.join('%d: %d' % item for item in sorted(lengths.items())))
    print('  PowerPC instructions per 68K instruction, each opcode counted once: '
          'interpreter %.1f, patent entry %.1f' % (interpreter / straight, patent / straight))
    print('  routine uses LR itself: %d; uses CTR: %d; reads its opcode from disp_table: %d'
          % (uses_lr, uses_ctr, reads_opcode))
    print()


# -- loops ------------------------------------------------------------------

def loop_costs(emulator, text):
    words = ENTRY + [int(word, 16) for word in text.split()] + [ILLEGAL]
    machine = run68k.boot(emulator, words[:2], False, False).copy()
    for index, word in enumerate(words):
        machine.write(run68k.PROGRAM + 2 * index, 2, word)
    traces = trace(emulator, machine)
    patent, previous = 0, None
    for t in traces:
        patent += t.patent_cost()[1]
        if previous is not None and (m68k.decode(previous.opcode).name in INDIRECT
                                     or t.pc >> 6 != previous.pc >> 6):
            patent += DISPATCH_NEXT_PC
        previous = t
    shipped = run68k.run(emulator, words, recompile=True, quick=True)
    return (len(traces), sum(t.total for t in traces), shipped.steps, shipped.translated, patent)


def loops(emulator):
    print('PowerPC instructions per loop iteration (from the difference between 120 and 60')
    print('iterations, which leaves out translation and start-up):')
    print('  %-42s %4s %12s %22s %13s' % ('', '68K', 'interpreter', 'shipped DR (in cache)',
                                          'patent model'))
    for title, make in LOOPS:
        few, many = loop_costs(emulator, make(60)), loop_costs(emulator, make(120))
        per = [(b - a) / 60 for a, b in zip(few, many)]
        print('  %-42s %4.0f %12.1f %13.1f (%5.1f) %13.1f' % ((title,) + tuple(per)))


def main():
    emulator = image.Image()
    if '--loops' not in sys.argv:
        classify(emulator)
    loops(emulator)


if __name__ == '__main__':
    main()
