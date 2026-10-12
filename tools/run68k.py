#!/usr/bin/env python3
"""Run 68K code under the emulator, in the simulator.

Usage: run68k.py [--dr] [--both] WORD [WORD ...]     68K instruction words, hex

    $ python3 tools/run68k.py 7005 D080 4AFC
    $ python3 tools/run68k.py --both 7064 5380 66FC 4AFC

The words are placed at address 0x1000 with a reset vector pointing at
them, and the emulator is started at emulator_reset exactly as the kernel
would start it.  Execution stops when the 68K program reaches an invalid
opcode - end the program with ILLEGAL (4AFC) - and the 68K registers are
printed.

    --dr     switch the dynamic recompiler on before the first instruction
    --both   run once interpreted and once with the recompiler, and compare

There is no kernel: a kernel trap, a memory fault or an interrupt cannot be
handled, and the run fails if the emulator needs one.  Memory is flat and
initially zero.
"""

import sys

import drmap
import image
import ppcsim

BASE = ppcsim.LOAD_ADDRESS
STATE = drmap.STATE
PROGRAM = 0x00001000
STACK = 0x00010000
DR_MEMORY, DR_MEMORY_SIZE = 0x69000000, 0x00100000
SYSTEM_INFO = 0x5FFFEC80
RETURN = 0xDEAD0000
EMULATOR_MEMORY = ((STATE, STATE + 0x1000),                         # state block
                   (DR_MEMORY, DR_MEMORY + DR_MEMORY_SIZE),         # the recompiler's memory
                   (0x5FFFE000, 0x5FFFF000))                        # kernel information records


class Result:
    def __init__(self, m, steps, note='', translated=0):
        self.translated = translated            # PowerPC instructions run in translated code
        self.d = [m.r[8 + n] for n in range(8)]
        self.a = [m.r[16 + n] for n in range(7)] + [m.r[1]]
        self.pc = (m.r[24] - 2) & 0xFFFFFFFF
        self.sr_high = m.r[25] & 0xFF
        self.ccr = ((m.r[26] >> 29 & 1) << 4 | m.crbit(0) << 3 | m.crbit(2) << 2
                    | m.ov << 1 | m.ca)
        self.steps = steps
        self.note = note
        # Everything the program wrote, leaving out the emulator's own data.
        self.memory = {a: b for a, b in m.mem.items()
                       if b and not any(low <= a < high for low, high in EMULATOR_MEMORY)}

    def state(self):
        return (self.d, self.a, self.pc, self.sr_high, self.ccr, self.memory)

    def show(self):
        flags = ''.join(name if self.ccr >> bit & 1 else '-'
                        for name, bit in (('X', 4), ('N', 3), ('Z', 2), ('V', 1), ('C', 0)))
        lines = ['  D0-D7  ' + ' '.join('%08X' % v for v in self.d),
                 '  A0-A7  ' + ' '.join('%08X' % v for v in self.a),
                 '  PC %08X   SR %02X%02X   CCR %s   (%d PowerPC instructions%s)' % (
                     self.pc, self.sr_high, self.ccr, flags, self.steps,
                     ', ' + self.note if self.note else '')]
        return '\n'.join(lines)


_booted = {}


def boot(emulator, first, recompile, quick):
    """A machine stopped at the first dispatch of a program whose first two
    words are `first`, with the recompiler switched on if asked.  The result
    is cached; callers must copy it."""
    key = (emulator, tuple(first), recompile, quick)
    if key in _booted:
        return _booted[key]
    names = emulator.label_addrs
    m = ppcsim.Machine()
    m.load(BASE, emulator.image)
    m.write(0, 4, STACK)                        # 68K reset vector: initial SSP
    m.write(4, 4, PROGRAM)                      #                   initial PC
    for index, word in enumerate(first):
        m.write(PROGRAM + 2 * index, 2, word)
    # What the kernel provides before the emulator context first runs.
    m.r[31] = STATE
    m.r[30] = BASE
    m.r[29] = BASE + image.TABLE_START
    m.write(STATE + 0x74, 4, m.r[29])           # saved_disp_table
    m.write(STATE + 0x78, 4, m.r[30])           # saved_code_ptr
    m.pc = BASE + names['emulator_reset']
    table = range(BASE + image.TABLE_START, BASE + image.IMAGE_SIZE)
    while m.pc not in table:
        m.step()
    if recompile:
        # Do what private opcode FE05 with selector 0x12 does: set the
        # recompiler up and switch it on.
        m.write(STATE + 0x7C0, 4, DR_MEMORY)
        m.write(STATE + 0x7C4, 4, DR_MEMORY_SIZE)
        m.write(0x5FFFEFF0, 4, SYSTEM_INFO)
        m.write(SYSTEM_INFO + 8, 4, 0x02000000)
        resume, m.lr, m.pc = m.pc, RETURN, BASE + names['dr_setup']
        m.run(stop=(RETURN,), limit=100000)
        m.pc = resume
        for bit in (5, 6, 7):                   # cr_dr_active, cr_dr_ready, cr_dr_enabled
            m.set_crbit(bit, 1)
        m.r[23] = m.read(STATE + 0xA00, 4)      # dr_entry = dr_dispatch_vector
        if quick:
            # dr_setup leaves a whole-cache flush pending, which the first
            # dispatch would carry out.  The memory is already clear, so
            # leave things as dr_flush_done would.
            m.write(STATE + 0xB20, 4, m.read(STATE + 0xB08, 4))
            for field in (0xB6C, 0xB70, 0xB74):
                m.write(STATE + field, 4, 0)
    m.steps = 0
    _booted[key] = m
    return m


def run(emulator, words, recompile=False, limit=2000000, quick=False):
    """Run a program to its first invalid opcode and return a Result.

    quick   skip the recompiler's initial cache flush (for bulk testing)
    """
    names = emulator.label_addrs
    m = boot(emulator, words[:2], recompile, quick).copy()
    for index, word in enumerate(words):
        m.write(PROGRAM + 2 * index, 2, word)
    stop = BASE + names['take_illegal_instruction']
    cache = ()
    if recompile:
        cache = range(m.read(STATE + 0xB08, 4), m.read(STATE + 0xB0C, 4))
    translated = 0
    for _ in range(limit):
        if m.pc == stop:
            break
        if recompile and m.pc in cache:
            translated += 1
        m.step()
    else:
        raise ppcsim.Limit('the 68K program did not reach an invalid opcode')
    note = '%d of them in translated code' % translated if recompile else ''
    return Result(m, m.steps, note, translated)


def main():
    arguments = sys.argv[1:]
    both = '--both' in arguments
    recompile = '--dr' in arguments
    words = [int(word, 16) for word in ' '.join(a for a in arguments
                                                 if not a.startswith('--')).split()]
    if not words:
        sys.exit(__doc__)
    emulator = image.Image()
    if not both:
        print(run(emulator, words, recompile).show())
        return 0
    interpreted = run(emulator, words)
    recompiled = run(emulator, words, recompile=True)
    print('interpreted:\n' + interpreted.show())
    print('recompiled:\n' + recompiled.show())
    same = interpreted.state() == recompiled.state()
    print('SAME' if same else 'DIFFERENT')
    return 0 if same else 1


if __name__ == '__main__':
    sys.exit(main())
