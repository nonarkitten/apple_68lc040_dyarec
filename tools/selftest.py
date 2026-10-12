#!/usr/bin/env python3
"""Execute small 68K programs under the emulator and check the results.

Usage: selftest.py [-v]

Each program is run twice in the simulator (tools/run68k.py): interpreted,
and with the dynamic recompiler switched on.  Both runs must end with the
expected register, condition code and memory values, which were worked out
by hand from the 68K instruction definitions.

Every program is entered through a BRA so that the recompiler gets control
at its first instruction, and ends with ILLEGAL.
"""

import sys

import image
import run68k

X, N, Z, V, C = 16, 8, 4, 2, 1

# name, 68K words, expected values.  Keys: d0..d7, a0..a7, ccr, and
# (address, size) for memory.
TESTS = [
    ('add', '7005 D080',
     {'d0': 10, 'ccr': 0}),
    ('sum 1..100 in a loop', '7064 7200 D280 5380 66FA',
     {'d0': 0, 'd1': 5050, 'ccr': Z}),
    ('signed overflow', '203C 7FFF FFFF 5280',
     {'d0': 0x80000000, 'ccr': N | V}),
    ('borrow sets C and X', '7000 5380',
     {'d0': 0xFFFFFFFF, 'ccr': X | N | C}),
    ('compare leaves X alone', '7001 7202 B081',
     {'d0': 1, 'd1': 2, 'ccr': N | C}),
    ('MULU.W', '7064 C0FC 012C',
     {'d0': 30000, 'ccr': 0}),
    ('DIVU.W: quotient and remainder', '203C 0001 86A0 80FC 0007',
     {'d0': 0x000537CD, 'ccr': 0}),
    ('memory, postincrement and predecrement',
     '41F8 2000 20FC 1234 5678 30BC ABCD 2020 3228 0004',
     {'d0': 0x12345678, 'd1': 0x0000ABCD, 'a0': 0x2000, 'ccr': N,
      (0x2000, 4): 0x12345678, (0x2004, 2): 0xABCD}),
    ('BSR and RTS', '6104 7201 4AFC 7002 4E75',
     {'d0': 2, 'd1': 1, 'a7': 0x10000}),
    ('DBF runs count+1 times', '7009 7200 5281 51C8 FFFC',
     {'d0': 0x0000FFFF, 'd1': 10, 'ccr': 0}),
    ('Scc', '7000 4A80 57C1 56C2',
     {'d1': 0xFF, 'd2': 0, 'ccr': Z}),
    ('MOVEM to and from the stack', '7001 7202 48E7 C000 7000 7200 4CDF 0003',
     {'d0': 1, 'd1': 2, 'a7': 0x10000, 'ccr': Z,
      (0xFFF8, 4): 1, (0xFFFC, 4): 2}),
    ('run of MOVE.L (A0)+,(A1)+',
     '41F8 2000 43F8 3000 20BC 1111 1111 217C 2222 2222 0004 22D8 22D8',
     {'a0': 0x2008, 'a1': 0x3008, 'ccr': 0,
      (0x3000, 4): 0x11111111, (0x3004, 4): 0x22222222}),
    ('shifts, then a rotate the recompiler leaves alone', '7001 E188 E280 E398',
     {'d0': 0x100, 'ccr': 0}),
    ('SWAP, EXT, EXG', '203C 0001 FFFF 4840 48C0 72FF C141',
     {'d0': 0xFFFFFFFF, 'd1': 1, 'ccr': N}),
    ('indexed addressing', '41F8 2000 7008 21BC CAFE BABE 0800 2228 0008',
     {'d0': 8, 'd1': 0xCAFEBABE, 'a0': 0x2000, 'ccr': N,
      (0x2008, 4): 0xCAFEBABE}),
    ('forward branch taken and not taken', '7000 4A80 6602 5280 4A80 6702 5280',
     {'d0': 2, 'ccr': 0}),
]

ENTRY = [0x6000, 0x0002]        # BRA.W to the next instruction
ILLEGAL = [0x4AFC]


def mismatches(result, expected):
    """List of 'what: got X, expected Y' strings."""
    problems = []
    for key, want in expected.items():
        if isinstance(key, tuple):
            address, size = key
            got = 0
            for offset in range(size):
                got = got << 8 | result.memory.get(address + offset, 0)
            what = '(%X).%s' % (address, {1: 'B', 2: 'W', 4: 'L'}[size])
        elif key == 'ccr':
            got, what = result.ccr, 'CCR'
        elif key[0] == 'd':
            got, what = result.d[int(key[1])], key.upper()
        else:
            got, what = result.a[int(key[1])], key.upper()
        if got != want:
            problems.append('%s: got %X, expected %X' % (what, got, want))
    return problems


def main():
    verbose = '-v' in sys.argv[1:]
    emulator = image.Image()
    failures = 0
    for name, source, expected in TESTS:
        words = ENTRY + [int(word, 16) for word in source.split()]
        if words[-3:] != [0x4AFC, 0x7002, 0x4E75]:      # 'BSR and RTS' places its own
            words += ILLEGAL
        outcomes = []
        for mode, recompile in (('interpreted', False), ('recompiled', True)):
            try:
                result = run68k.run(emulator, words, recompile)
                problems = mismatches(result, expected)
                if recompile and not result.translated:
                    problems.append('no translated code was executed')
            except Exception as error:      # a simulator limit or missing instruction
                result, problems = None, ['%s: %s' % (type(error).__name__, error)]
            outcomes.append((mode, result, problems))
        bad = [(mode, problems) for mode, _, problems in outcomes if problems]
        states = [result.state() for _, result, _ in outcomes if result]
        if len(states) == 2 and states[0] != states[1] and not bad:
            bad.append(('both', ['interpreted and recompiled runs end in different states']))
        failures += bool(bad)
        print('%-4s %s' % ('FAIL' if bad else 'ok', name))
        for mode, problems in bad:
            for problem in problems:
                print('       %s: %s' % (mode, problem))
        if verbose:
            for mode, result, _ in outcomes:
                if result:
                    print('     %s\n%s' % (mode, result.show()))
    print('\n%s' % ('FAILED: %d of %d programs' % (failures, len(TESTS)) if failures
                    else 'OK: %d programs, interpreted and recompiled' % len(TESTS)))
    return 1 if failures else 0


if __name__ == '__main__':
    sys.exit(main())
