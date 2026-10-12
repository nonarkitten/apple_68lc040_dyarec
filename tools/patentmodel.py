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

The patent argues in cycles on a PowerPC 603, not in instructions, and gives
one figure: CLR.B D5 takes 4 cycles interpreted and 2 recompiled (Figure 9).
Its arithmetic is reproduced by a simple rule, used here for all three
designs: two instructions per cycle as long as execution runs straight on; a
taken branch ends the pair; an unconditional branch, the never-taken test
for special events, and (as Figure 10 marks it) the return from a semantic
routine are "folded out" and cost nothing.  This is the patent's way of
counting, not a model of a 603.
"""

import collections
import sys

import check
import drmap
import drtranslate
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
        self.executed = []      # (address, word, taken) as the interpreter ran it
        self.kept = []          # the same without the dispatch sequence

    def count(self, emulator, machine, address, taken):
        word = machine.read(address, 4)
        insn = emulator.kind[address - BASE][1]
        primary, extended = word >> 26, (word >> 1) & 0x3FF
        self.total += 1
        self.executed.append((address, word, taken))
        to_lr_or_ctr = primary == 19 and extended in (16, 528)
        if insn.mnem == 'rlwimi' and insn.ops[0] == ('r', 29):
            return                                          # DECODE1
        if insn.mnem in ('mtlr', 'mtctr') and insn.ops[0] in (('r', 29), ('r', 23)):
            return                                          # DECODE2, or the hand-off to the DR
        if to_lr_or_ctr and (word >> 16) & 31 in (8, 5) and not (word >> 21) & 0x10:
            return                                          # DISPATCH, or the hand-off
        if insn.mnem in ('lhau', 'lha', 'lhax') and insn.ops[0] == ('r', 27):
            return                                          # PREFETCH
        self.kept.append((address, word, taken))
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

    def patent_slots(self):
        """The entry as the patent would run it, as slots for cycles():
        (occupies a slot, ends the pair)."""
        kind, _ = self.patent_cost()
        slots, called = [], False
        for index, (address, word, taken) in enumerate(self.kept):
            occupies, ends = slot(word, taken)
            if kind == 'normal' and word >> 26 == 18 and not word & 1 and not called:
                slots.append((True, True))                  # the entry's bl
                called = True
            elif kind != 'normal' and word >> 26 == 18:
                continue                                    # the routine is in the entry
            else:
                slots.append((occupies, ends))
        if kind == 'normal':
            slots.append((False, True))                     # blr, folded
        slots.append((True, False))                         # lhau prefetch_data
        return slots                                        # (the event test is folded)


def slot(word, taken):
    """(occupies a slot, ends the pair) for one executed instruction, by the
    patent's counting."""
    primary = word >> 26
    if primary == 18:
        return bool(word & 1), True                         # b is folded; bl is not
    if primary == 16:
        if (word >> 16) & 31 == 8 and not taken:
            return False, False                             # test for a special event
        return True, taken
    if primary == 19 and (word >> 1) & 0x3FF in (16, 528):
        return True, taken                                  # blr, bctr and their conditions
    return True, False


def cycles(slots):
    """Two instructions per cycle within a straight run."""
    total = run = 0
    for occupies, ends in slots:
        run += occupies
        if ends:
            total += (run + 1) // 2
            run = 0
    return total + (run + 1) // 2


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
        machine.step()
        traces[-1].count(emulator, machine, address, machine.pc != address + 4)
    return traces


def executed(emulator, machine, limit=3000000):
    """Every instruction a machine executes up to the next ILLEGAL."""
    stop = BASE + emulator.label_addrs['take_illegal_instruction']
    out = []
    for _ in range(limit):
        address = machine.pc
        if address == stop:
            break
        word = machine.read(address, 4)
        machine.step()
        out.append((address, word, machine.pc != address + 4))
    return out


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
    """Instructions and cycles for one program: the interpreter and the
    shipped recompiler as executed, the patent design as modelled."""
    words = ENTRY + [int(word, 16) for word in text.split()] + [ILLEGAL]

    def machine(recompile):
        m = run68k.boot(emulator, words[:2], recompile, True).copy()
        for index, word in enumerate(words):
            m.write(run68k.PROGRAM + 2 * index, 2, word)
        return m

    traces = trace(emulator, machine(False))
    interpreted = [step for t in traces for step in t.executed]
    shipped = executed(emulator, machine(True))

    patent, slots, previous = 0, [], None
    for t in traces:
        if previous is not None and (m68k.decode(previous.opcode).name in INDIRECT
                                     or t.pc >> 6 != previous.pc >> 6):
            patent += DISPATCH_NEXT_PC
            slots += [(False, True)] + [(True, False)] * DISPATCH_NEXT_PC + [(False, True)]
        patent += t.patent_cost()[1]
        slots += t.patent_slots()
        previous = t
    return {'68K': len(traces),
            'interpreter': (len(interpreted), cycles(slot(w, taken) for _, w, taken in interpreted)),
            'shipped': (len(shipped), cycles(slot(w, taken) for _, w, taken in shipped)),
            'patent': (patent, cycles(slots))}


def loops(emulator):
    print('Per loop iteration (from the difference between 120 and 60 iterations, which leaves')
    print('out translation and start-up): PowerPC instructions, and cycles by the patent\'s counting.')
    print('  %-42s %4s %16s %16s %16s' % ('', '68K', 'interpreter', 'shipped DR', 'patent model'))
    for title, make in LOOPS:
        few, many = loop_costs(emulator, make(60)), loop_costs(emulator, make(120))
        cells = ['%5.1f /%5.1f' % tuple((many[key][i] - few[key][i]) / 60 for i in (0, 1))
                 for key in ('interpreter', 'shipped', 'patent')]
        print('  %-42s %4.0f %16s %16s %16s' % (
            title, (many['68K'] - few['68K']) / 60, *cells))
    print()


def figures(emulator):
    """The two instructions the patent works through."""
    boot = run68k.boot(emulator, [0x4E71, 0x4E71], False, False)
    print('The patent\'s own examples, one instruction each (instructions / cycles / 32-byte')
    print('lines of code touched):')
    for title, opcode, claim in (('CLR.B D5 (Figure 9)', 0x4205, '4 cycles against 2'),
                                 ('ADDQ.W #4,D2 (Figure 10)', 0x5842, '3 code lines against 2')):
        machine = boot.copy()
        for index, word in enumerate([opcode, ILLEGAL, ILLEGAL]):
            machine.write(run68k.PROGRAM + 2 * index, 2, word)
        machine.r[27], machine.r[24] = ILLEGAL, run68k.PROGRAM + 2
        machine.pc = BASE + image.TABLE_START + 8 * opcode
        t = trace(emulator, machine, limit=100)[0]
        kind, cost = t.patent_cost()
        # A semantic routine is taken to be packed: its work and a blr.
        routine = -(-4 * t.work // 32) if kind == 'normal' else 0
        print('  %-26s interpreter %d / %d / %d    patent entry (%s) %d / %d / %d    patent says %s' % (
            title, t.total, cycles(slot(w, taken) for _, w, taken in t.executed),
            len({address >> 5 for address, _, _ in t.executed}),
            kind, cost, cycles(t.patent_slots()), 1 + routine, claim))
    print()


def translation(emulator):
    """What the shipped translator spends on a block."""
    print('The shipped translator, PowerPC instructions executed per 68K instruction translated')
    print('(the patent claims fewer than twenty for its own):')
    for title, count, text in (
            ('ADD.L D1,D0, twenty times', 21, 'D081 ' * 20 + '4E75'),
            ('MOVE.L (d16,A0),D0, ten times', 11, '2028 0010 ' * 10 + '4E75'),
            ('a mixture of twelve', 12,
             '2028 0010 D098 2140 0004 5380 B081 6602 7001 4A80 48E7 0F38 4CDF 1CF0 4E75')):
        machine = drtranslate.prepare(emulator)
        for index, word in enumerate(text.split()):
            machine.write(drtranslate.GUEST + 2 * index, 2, int(word, 16))
        # As dr_translate_miss leaves things (see drtranslate.translate).
        machine.write(drmap.STATE + 0xB30, 4, machine.read(drmap.STATE + 0xB04, 4))
        machine.set_crbit(4, 1)
        machine.r[24] = drtranslate.GUEST + 2
        machine.pc = BASE + emulator.label_addrs['dr_translate']
        before = machine.steps
        machine.run(stop={BASE + emulator.label_addrs['dr_translate_done']}, limit=2000000)
        print('  %-32s %5.0f' % (title, (machine.steps - before) / count))
    print()


def main():
    emulator = image.Image()
    if '--loops' not in sys.argv:
        classify(emulator)
        figures(emulator)
        translation(emulator)
    loops(emulator)


if __name__ == '__main__':
    main()
