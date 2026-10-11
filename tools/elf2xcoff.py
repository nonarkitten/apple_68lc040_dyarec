#!/usr/bin/env python3
"""Wrap the assembled emulator in the same XCOFF container as Emulator.x.

Usage: elf2xcoff.py input.o output.x

The reference file is an XCOFF32 object with a single .text section and
seven symbols.  Nothing in it depends on the tools that originally produced
it except the timestamp, so the container is rebuilt here from first
principles: the section contents and the symbol values are taken from the
ELF object produced by the assembler.
"""

import struct
import sys

# Symbols exported by the reference file, in symbol-table order.
SYMBOLS = ['EmTop', 'EmEntry', 'EmKernelTrapTable', 'EmBtm',
           'OpcodeTblTop', 'OpcodeTblBtm']

XCOFF_MAGIC = 0x01DF            # XCOFF32
TIMESTAMP = 0xD6A2903A          # creation time recorded in the reference file
STYP_TEXT = 0x0020
C_EXT, C_HIDEXT = 2, 107
XTY_SD, XTY_LD = 1, 2
ALIGN_4 = 2 << 3                # log2(alignment) in the upper bits of x_smtyp


def read_elf(path):
    """Return (.text bytes, {symbol: value}) from a 32-bit big-endian ELF
    relocatable object."""
    with open(path, 'rb') as handle:
        elf = handle.read()
    if elf[:6] != b'\x7fELF\x01\x02':
        sys.exit('%s: not a 32-bit big-endian ELF file' % path)
    shoff, = struct.unpack_from('>I', elf, 0x20)
    shentsize, shnum, shstrndx = struct.unpack_from('>HHH', elf, 0x2E)

    sections = []
    for index in range(shnum):
        sections.append(struct.unpack_from('>IIIIIIIIII', elf, shoff + index * shentsize))

    def section_bytes(header):
        return elf[header[4]:header[4] + header[5]]

    names = section_bytes(sections[shstrndx])

    def cstring(table, offset):
        return table[offset:table.index(b'\0', offset)].decode()

    text = text_index = symtab = None
    for index, header in enumerate(sections):
        name = cstring(names, header[0])
        if name == '.text':
            text, text_index = section_bytes(header), index
        elif header[1] == 2:                    # SHT_SYMTAB
            symtab = header
    if text is None or symtab is None:
        sys.exit('%s: missing .text or symbol table' % path)
    for header in sections:
        if header[1] in (4, 9) and header[7] == text_index and header[5]:
            sys.exit('%s: .text has relocations; the image must be self-contained' % path)

    strings = section_bytes(sections[symtab[6]])
    symbols = {}
    data = section_bytes(symtab)
    for offset in range(0, len(data), 16):
        name, value, _size, _info, _other, shndx = struct.unpack_from('>IIIBBH', data, offset)
        if shndx == text_index:
            symbols[cstring(strings, name)] = value
    return text, symbols


def build_xcoff(text, symbols):
    header_size = 20 + 40
    symbol_offset = header_size + len(text)

    strings = b''
    entries = []

    def symbol(name, value, storage_class, aux):
        nonlocal strings
        if len(name) <= 8:
            name_field = name.encode().ljust(8, b'\0')
        else:
            name_field = struct.pack('>II', 0, 4 + len(strings))
            strings += name.encode() + b'\0'
        entries.append(name_field + struct.pack('>IhHBB', value, 1, 0, storage_class, 1))
        entries.append(aux)

    def csect_aux(length, symbol_type):
        # x_scnlen, x_parmhash, x_snhash, x_smtyp, x_smclas (XMC_PR), x_stab, x_snstab
        return struct.pack('>IIHBBIH', length, 0, 0, symbol_type | ALIGN_4, 0, 0, 0)

    symbol('', 0, C_HIDEXT, csect_aux(len(text), XTY_SD))
    for name in SYMBOLS:
        if name not in symbols:
            sys.exit('symbol %s is not defined in .text' % name)
        symbol(name, symbols[name], C_EXT, csect_aux(0, XTY_LD))

    file_header = struct.pack('>HHIIIHH', XCOFF_MAGIC, 1, TIMESTAMP,
                              symbol_offset, len(entries), 0, 0)
    section_header = struct.pack('>8sIIIIIIHHI', b'.text', 0, 0, len(text),
                                 header_size, 0, 0, 0, 0, STYP_TEXT)
    string_table = struct.pack('>I', 4 + len(strings)) + strings
    return file_header + section_header + text + b''.join(entries) + string_table


def main():
    if len(sys.argv) != 3:
        sys.exit(__doc__)
    text, symbols = read_elf(sys.argv[1])
    with open(sys.argv[2], 'wb') as handle:
        handle.write(build_xcoff(text, symbols))


if __name__ == '__main__':
    main()
