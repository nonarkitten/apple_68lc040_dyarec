#!/usr/bin/env python3
"""Report where a Power Macintosh ROM puts the emulator, and how the copy in
that ROM compares with Emulator.x.

Usage: rominfo.py path/to/4MB.ROM            full report on one ROM
       rominfo.py ROM ROM ...                one line per ROM: which build of
                                             the emulator each one contains

A PCI Power Macintosh ROM carries a configuration record for its kernel
(known as NKConfigurationInfo) at ROM offset 0x30D000.  Offsets in the
record are relative to the record itself.  The fields read here are the
ones that concern the emulator; the record's layout is checked rather than
assumed, by requiring the emulator and dispatch table fields to describe a
128 KB block immediately followed by a 512 KB block inside the ROM.

ROM images are not part of this repository (see .gitignore).
"""

import os
import struct
import sys

CONFIG_INFO = 0x30D000

# (offset in record, name, kind)   kind: 'rel' = offset relative to the record,
#                                        'emu' = offset within the emulator code,
#                                        'ed'  = offset within the emulator data page,
#                                        'la'  = logical address, 'size', 'str'
FIELDS = [
    (0x028, 'ROMImageBaseOffset', 'rel'),
    (0x02C, 'ROMImageSize', 'size'),
    (0x034, 'Mac68KROMOffset', 'rel'),
    (0x038, 'Mac68KROMSize', 'size'),
    (0x03C, 'ExceptionTableOffset', 'rel'),
    (0x044, 'HWInitCodeOffset', 'rel'),
    (0x04C, 'KernelCodeOffset', 'rel'),
    (0x050, 'KernelCodeSize', 'size'),
    (0x054, 'EmulatorCodeOffset', 'rel'),
    (0x058, 'EmulatorCodeSize', 'size'),
    (0x05C, 'OpcodeTableOffset', 'rel'),
    (0x060, 'OpcodeTableSize', 'size'),
    (0x064, 'BootstrapVersion', 'str'),
    (0x078, 'ECBOffset', 'ed'),
    (0x07C, 'IplValueOffset', 'ed'),
    (0x080, 'EmulatorEntryOffset', 'emu'),
    (0x084, 'KernelTrapTableOffset', 'emu'),
    (0x09C, 'LA_InfoRecord', 'la'),
    (0x0A0, 'LA_KernelData', 'la'),
    (0x0A4, 'LA_EmulatorData', 'la'),
    (0x0A8, 'LA_DispatchTable', 'la'),
    (0x0AC, 'LA_EmulatorCode', 'la'),
]

CODE_SIZE, TABLE_SIZE = 0x20000, 0x80000


def word(blob, offset):
    return struct.unpack_from('>I', blob, offset)[0]


def signed(value):
    return value - (1 << 32) if value & 0x80000000 else value


def read_config(rom):
    values = {}
    for offset, name, kind in FIELDS:
        if kind == 'str':
            values[name] = rom[CONFIG_INFO + offset:CONFIG_INFO + offset + 16]
        else:
            values[name] = word(rom, CONFIG_INFO + offset)
    code = CONFIG_INFO + signed(values['EmulatorCodeOffset'])
    table = CONFIG_INFO + signed(values['OpcodeTableOffset'])
    plausible = (values['EmulatorCodeSize'] == CODE_SIZE
                 and values['OpcodeTableSize'] == TABLE_SIZE
                 and table == code + CODE_SIZE
                 and 0 <= code and table + TABLE_SIZE <= len(rom))
    return values, code, table, plausible


def credits(image):
    found = []
    for marker in (b'680x0 Emulation', b'Dynamic Recompilation'):
        at = image.find(marker)
        if at >= 0:
            end = image.index(b'\0', at)
            found.append((at, image[at:end].decode('ascii', 'replace')))
    return found


def extent(image, start, stop):
    """Offset just past the last non-padding word in image[start:stop]."""
    end = stop
    while end > start and word(image, end - 4) in (0, 0x60000000):
        end -= 4
    return end


FIRST_TABLE_ENTRY = bytes.fromhex('7D04DB78')      # or data, d0, prefetch_data (ORI.B #,D0)
SECOND_TABLE_ENTRY = bytes.fromhex('7D24DB78')     # or data, d1, prefetch_data (ORI.B #,D1)
SERVICE_TABLE_SETUP = bytes.fromhex('390105F0')    # kernel: addi r8, r1, 0x5F0


def find_emulator(rom):
    """Locate the dispatch table and the emulator code in any ROM, without
    relying on a configuration record.  Returns (code offset, table offset)
    or None."""
    table = rom.find(FIRST_TABLE_ENTRY)
    while table >= 0 and not (table % 8 == 0
                              and rom[table + 8:table + 12] == SECOND_TABLE_ENTRY):
        table = rom.find(FIRST_TABLE_ENTRY, table + 4)
    credit = rom.find(b'680x0 Emulation')
    if table < 0 or credit < 0:
        return None
    return credit & ~0xFFFF, table


def kernel_services(rom):
    """Service numbers the kernel installs a routine of their own for.  The
    kernel fills a 16-entry table with a default routine and then stores
    individual routines with "addi r23, r25, x / stw r23, n(r8)" pairs."""
    at = rom.find(SERVICE_TABLE_SETUP)
    if at < 0:
        return None
    previous = word(rom, at - 4)                    # addi r23, r25, default routine
    default = previous & 0xFFFF if previous >> 16 == 0x3AF9 else None
    slots, pending = set(), None
    for offset in range(at + 4, at + 240, 4):
        value = word(rom, offset)
        if value >> 16 == 0x3AF9:                   # addi r23, r25, x
            pending = value & 0xFFFF
        elif value >> 16 == 0x92E8:                 # stw r23, n(r8)
            if pending != default:
                slots.add((value & 0xFFFF) // 4)
        elif value >> 16 not in (0x3AC0, 0x36D6, 0x7EE8, 0x4082):
            break
    return sorted(slot for slot in slots if slot < 16)


def summary(paths):
    import hashlib
    reference = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))),
                             'Emulator.x')
    with open(reference, 'rb') as handle:
        ours = handle.read()[0x3C:0x3C + CODE_SIZE + TABLE_SIZE]
    print('build       code    credit  recompiler            services  ROM')
    for path in paths:
        with open(path, 'rb') as handle:
            rom = handle.read()
        name = os.path.basename(path)
        found = find_emulator(rom)
        if not found:
            print('%-10s  %s' % ('(none)', name))
            continue
        code, table = found
        image = rom[code:table] + rom[table:table + TABLE_SIZE]
        build = 'Emulator.x' if image == ours else hashlib.sha1(image).hexdigest()[:10]
        credit = rom.find(b'680x0 Emulation') - code
        recompiler = [text for _, text in credits(rom[code:table])
                      if text.startswith('Dynamic')]
        who = recompiler[0][len('Dynamic Recompilation by '):] if recompiler else '-'
        services = kernel_services(rom)
        print('%-10s  %06X  +%05X  %-20s  %-8s  %s' % (
            build, code, credit, who.replace('Eric Traut', 'Traut')
            .replace('tuned by Bob Abeles', 'Abeles').replace('hacked by Murph', 'Murph'),
            '?' if not services else
            ('0-%d' % services[-1] if services == list(range(len(services)))
             else ','.join(str(n) for n in services)), name))


def main():
    if len(sys.argv) < 2:
        sys.exit(__doc__)
    if len(sys.argv) > 2:
        summary(sys.argv[1:])
        return
    with open(sys.argv[1], 'rb') as handle:
        rom = handle.read()
    print('ROM: %d bytes, checksum %08X, version $%04X' % (
        len(rom), word(rom, 0), struct.unpack_from('>H', rom, 8)[0]))

    values, code, table, plausible = read_config(rom)
    if not plausible:
        sys.exit('No recognisable configuration record at ROM offset %X' % CONFIG_INFO)

    print('\nConfiguration record at ROM offset %X:' % CONFIG_INFO)
    for offset, name, kind in FIELDS:
        value = values[name]
        if kind == 'str':
            text = value.split(b'\0')[0].decode('ascii', 'replace')
            print('  +%03X %-22s "%s"' % (offset, name, text.strip()))
        elif kind == 'rel':
            print('  +%03X %-22s %08X  = ROM offset %06X' % (
                offset, name, value, CONFIG_INFO + signed(value)))
        else:
            print('  +%03X %-22s %08X' % (offset, name, value))

    la_code, la_table = values['LA_EmulatorCode'], values['LA_DispatchTable']
    print('\nEmulator code:   ROM offset %06X, mapped at %08X' % (code, la_code))
    print('Dispatch table:  ROM offset %06X, mapped at %08X' % (table, la_table))
    print('Entry point:     %08X (code + %05X)' % (
        la_code + values['EmulatorEntryOffset'], values['EmulatorEntryOffset']))
    print('Kernel traps:    %08X (code + %05X)' % (
        la_code + values['KernelTrapTableOffset'], values['KernelTrapTableOffset']))
    print('State block:     %08X; context block at +%X, interrupt level at +%X' % (
        values['LA_EmulatorData'], values['ECBOffset'], values['IplValueOffset']))

    image = rom[code:code + CODE_SIZE + TABLE_SIZE]
    print('\nEmulator in this ROM:')
    for at, text in credits(image):
        print('  %05X  "%s"' % (at, text))
    print('  interpreter block used up to %05X, recompiler block up to %05X' % (
        extent(image, 0, 0x10000), extent(image, 0x10000, 0x20000)))

    reference = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))),
                             'Emulator.x')
    with open(reference, 'rb') as handle:
        ours = handle.read()[0x3C:0x3C + CODE_SIZE + TABLE_SIZE]
    if ours == image:
        print('\nIdentical to Emulator.x.')
        return
    print('\nNot the same build as Emulator.x:')
    for at, text in credits(ours):
        print('  %05X  "%s"   (Emulator.x)' % (at, text))
    print('  Emulator.x: interpreter block used up to %05X, recompiler block up to %05X' % (
        extent(ours, 0, 0x10000), extent(ours, 0x10000, 0x20000)))
    first = sum(1 for op in range(0x10000)
                if image[CODE_SIZE + op * 8:CODE_SIZE + op * 8 + 4]
                != ours[CODE_SIZE + op * 8:CODE_SIZE + op * 8 + 4])
    second = sum(1 for op in range(0x10000)
                 if image[CODE_SIZE + op * 8 + 4:CODE_SIZE + op * 8 + 8]
                 != ours[CODE_SIZE + op * 8 + 4:CODE_SIZE + op * 8 + 8])
    print('  dispatch table entries whose first instruction differs:  %d' % first)
    print('  dispatch table entries whose second instruction differs: %d '
          '(mostly branches to routines that moved)' % second)
    for name, entry in (('EmEntry', 0xE8B0), ('EmKernelTrapTable', 0xE8C0)):
        key = {'EmEntry': 'EmulatorEntryOffset',
               'EmKernelTrapTable': 'KernelTrapTableOffset'}[name]
        print('  %-18s Emulator.x %05X, this ROM %05X' % (name, entry, values[key]))


if __name__ == '__main__':
    main()
