#!/usr/bin/env python3
"""Show the PowerPC code the dynamic recompiler generates for 68K code.

Usage: drtranslate.py WORD [WORD ...]        68K instruction words, in hex

    $ python3 tools/drtranslate.py 7001 5380 66FC 4E75

The words are placed in memory as a 68K program, the emulator's own
initialisation (init_state, dr_setup) and translator (dr_translate) are run
in the simulator (tools/ppcsim.py), and the block that the translator leaves
in the translation cache is disassembled.  Branches out of the block are
shown with the name of the emulator routine they go to.

This runs the original code; nothing about the translation is modelled.
"""

import struct
import sys

import drmap
import gen
import m68k
import ppc
import ppcsim

BASE = ppcsim.LOAD_ADDRESS
STATE = drmap.STATE
GUEST = drmap.GUEST_CODE
# Translated code reaches the emulator with ordinary branches, so the memory
# given to the recompiler has to be within their 32 MB range of the image.
DR_MEMORY, DR_MEMORY_SIZE = 0x69000000, 0x00100000
SYSTEM_INFO = 0x5FFFEC80
RETURN = 0xDEAD0000             # sentinel return address for called routines


def labelled(generator):
    return generator.label_addrs


_prepared = {}


def prepare(generator):
    """A machine on which init_state and dr_setup have run (a fresh copy
    each time; the work is done once)."""
    if generator not in _prepared:
        _prepared[generator] = _prepare(generator)
    return _prepared[generator].copy()


def _prepare(generator):
    names = labelled(generator)
    m = ppcsim.Machine()
    m.load(BASE, generator.image)
    m.r[31] = STATE
    m.r[30] = BASE                              # code_ptr
    m.r[29] = BASE + gen.TABLE_START            # disp_table
    m.write(STATE + 0x74, 4, m.r[29])           # saved_disp_table
    m.write(STATE + 0x78, 4, m.r[30])           # saved_code_ptr
    m.write(STATE + 0x7C0, 4, DR_MEMORY)        # memory for the recompiler
    m.write(STATE + 0x7C4, 4, DR_MEMORY_SIZE)
    m.write(0x5FFFEFF0, 4, SYSTEM_INFO)         # kernel's SystemInfo record ...
    m.write(SYSTEM_INFO + 8, 4, 0x02000000)     # ... logical memory size: 32 MB
    for routine in ('init_state', 'dr_setup'):
        m.lr = RETURN
        m.pc = BASE + names[routine]
        m.run(stop=(RETURN,), limit=200000)
    # What dr_flush_done would do once the first flush has run its course.
    m.write(STATE + 0xB20, 4, m.read(STATE + 0xB08, 4))     # dr_cache_ptr = dr_cache_start
    m.write(STATE + 0xB6C, 4, 0)                            # dr_flush_pending
    return m


def translate(generator, words):
    """Return (machine, start, end) for the translated block, or raise."""
    names = labelled(generator)
    m = prepare(generator)
    for index, word in enumerate(words):
        m.write(GUEST + 2 * index, 2, word)
    # As dr_translate_miss leaves things: a lookup table slot chosen, the
    # translator marked busy, pc 2 past the first opcode of the block.
    m.write(STATE + 0xB30, 4, m.read(STATE + 0xB04, 4))     # dr_hash_slot
    m.set_crbit(4, 1)                                       # cr_dr_busy
    m.r[24] = GUEST + 2
    m.pc = BASE + names['dr_translate']
    stops = {BASE + names['dr_translate_done']: 'done',
             BASE + names['dr_exit_to_interpreter']: 'abandoned'}
    outcome = stops[m.run(stop=stops, limit=2000000)]
    if outcome != 'done':
        raise RuntimeError('the translator gave up (left for the interpreter)')
    # dr_cache_ptr still holds where this block's code starts; the slot the
    # translator filled in holds its entry point, which follows a short stub.
    return m, m.read(STATE + 0xB20, 4), m.r[30]


def registers_used(m, start, end):
    """The set of general register numbers named by the instructions of a
    translated block."""
    used = set()
    for address in range(start, end, 4):
        insn = ppc.decode(m.read(address, 4), address)
        if insn is None:
            continue
        for operand in insn.ops:
            if operand[0] in ('r', 'rz'):
                used.add(operand[1])
            elif operand[0] == 'mem':
                used.add(operand[2][1])
    return used


def entry_point(m):
    return m.read(STATE + 0xB2C, 4)


def render(generator, m, start, end):
    """Disassemble the block, naming branch targets."""
    g = generator
    lines = []
    entry = entry_point(m)
    for address in range(start, end, 4):
        if address == entry:
            lines.append('entry:')
        word = m.read(address, 4)
        insn = ppc.decode(word, address, g.flag_bits)
        if insn is None:
            lines.append('  +%03X  .long   0x%08X' % (address - start, word))
            continue
        operands = []
        for operand in insn.ops:
            if operand[0] == 'tgt':
                target = operand[1]
                if start <= target < end:
                    operands.append('+%03X' % (target - start))
                elif BASE <= target < BASE + gen.IMAGE_SIZE:
                    offset = target - BASE
                    name = g.labels.get(offset)
                    if name is None and offset >= gen.TABLE_START:
                        opcode, second = divmod(offset - gen.TABLE_START, 8)
                        name = 'op_%04X%s' % (opcode, '_2' if second else '')
                    operands.append(name or 'EmTop+0x%05X' % offset)
                else:
                    operands.append('0x%08X' % target)
            else:
                operands.append(g.operand(operand, 0, insn))
        lines.append('  +%03X  %-7s %s' % (address - start, insn.mnem, ', '.join(operands)))
    return lines


def main():
    if len(sys.argv) < 2:
        sys.exit(__doc__)
    words = [int(word, 16) for word in ' '.join(sys.argv[1:]).split()]
    generator = gen.Generator()
    generator.analyse()
    print('68K code:')
    offset = 0
    while offset < len(words):
        op = m68k.decode(words[offset])
        import check
        count = 1 + check.extension_words(op)[0]
        print('  %2d  %-14s %s' % (2 * offset, ' '.join('%04X' % w for w in words[offset:offset + count]),
                                  ' '.join(m68k.text(op).split())))
        offset += count
    m, start, end = translate(generator, words)
    print('\nTranslation (%d instructions):' % ((end - start) // 4))
    print('\n'.join(render(generator, m, start, end)))


if __name__ == '__main__':
    main()
