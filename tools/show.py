#!/usr/bin/env python3
"""Print part of the source with the offsets of its statements.

Usage: show.py START [END] [-x]

START and END are offsets in the image, in hex, or labels; END may also be
+N, a number of bytes (hex), and defaults to +40.  -x adds the instruction
words.

    $ python3 tools/show.py take_exception +20
    $ python3 tools/show.py 0D780 0D7A0 -x

The offsets come from walking src/ (tools/image.py); nothing is
disassembled here.
"""

import sys

import image


def place(im, text, start=None):
    if text.startswith('+'):
        return start + int(text[1:], 16)
    if text in im.label_addrs:
        return im.label_addrs[text]
    try:
        return int(text, 16)
    except ValueError:
        sys.exit('show.py: %s is neither a label nor a hex offset' % text)


def listing(im, start, end, raw=False):
    for addr in sorted(a for a in im.lines if start <= a < end):
        lines = im.lines[addr]
        for line in lines[:-1]:
            print(line)
        words = ''
        if raw:
            kind = im.kind[addr & ~3][0]
            words = ('%08X ' % im.words[addr // 4]) if kind == 'insn' and not addr & 3 else ' ' * 9
        print('%05X %s%s' % (addr, words, lines[-1].strip()))


def main():
    arguments = [a for a in sys.argv[1:] if a != '-x']
    if not arguments:
        sys.exit(__doc__)
    im = image.Image()
    start = place(im, arguments[0])
    end = place(im, arguments[1] if len(arguments) > 1 else '+40', start)
    listing(im, start, end, raw='-x' in sys.argv)


if __name__ == '__main__':
    main()
