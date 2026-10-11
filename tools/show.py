#!/usr/bin/env python3
"""Print an annotated listing of part of the image, with offsets.

Usage: show.py START END [START END ...] [-c] [-x]

    -c   include the automatic end-of-line comments
    -x   include the raw instruction word

The generated source has no offsets on instruction lines; this is the tool
for reading the code next to its addresses while writing annotations.
"""

import sys

import gen


def listing(generator, start, end, comments=False, raw=False):
    g = generator
    addr = start & ~3
    while addr < end:
        users = g.table_users.get(addr)
        if users and addr < gen.TABLE_START:
            forms = []
            for opcode in users:
                form = gen.generalise(gen.m68k.text(opcode))
                if form not in forms:
                    forms.append(form)
            extra = '' if len(forms) <= 4 else ' (+%d forms)' % (len(forms) - 4)
            print('        ; <- %d: %s%s' % (len(users), ' | '.join(forms[:4]), extra))
        if addr in g.labels:
            print('%s:' % g.labels[addr])
        kind, value = g.kind[addr]
        word = '%08X ' % g.words[addr // 4] if raw else ''
        if kind == 'insn':
            text = g.instruction_text(addr, value).strip()
            mnem, _, rest = text.partition(' ')
            line = '%05X %s%-7s %s' % (addr, word, mnem, rest.strip())
            note = g.ann.eols.get(addr) or (g.auto_comment(addr, value) if comments else None)
            if note:
                line = '%-52s ; %s' % (line, note)
        elif kind == 'data':
            line = '%05X %s.data   %08X (%s)' % (addr, word, g.words[addr // 4], value[2])
        else:
            line = '%05X %s.long   %08X' % (addr, word, g.words[addr // 4])
        print(line.rstrip())
        addr += 4


def main():
    args = [a for a in sys.argv[1:] if not a.startswith('-')]
    flags = [a for a in sys.argv[1:] if a.startswith('-')]
    if not args or len(args) % 2:
        sys.exit(__doc__)
    generator = gen.Generator()
    generator.analyse()
    for index in range(0, len(args), 2):
        if index:
            print('-----')
        listing(generator, int(args[index], 16), int(args[index + 1], 16),
                comments='-c' in flags, raw='-x' in flags)


if __name__ == '__main__':
    main()
