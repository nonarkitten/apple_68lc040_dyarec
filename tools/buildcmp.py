#!/usr/bin/env python3
"""Compare the emulator in a Power Macintosh ROM with Emulator.x.

Usage: buildcmp.py ROM                  which routines differ, which dispatch
                                        table entries, and what the two
                                        recompilers decide for every opcode
       buildcmp.py ROM --emitters       translate sample instructions of every
                                        code generator with both recompilers
       buildcmp.py ROM WORD [WORD ...]  translate the 68K code (hex words) with
                                        both recompilers, side by side

Routines are matched by content, not by offset: the two code blocks are
aligned as sequences of instruction words in which the parts that move when
code is rearranged are ignored - branch displacements, the immediate
operands of addi, addis, ori and oris (mostly offsets of code), and
displacements from base_disp (offsets of the recompiler's templates).
Differences are reported against the labels of Emulator.x.  A change that
is confined to one of the ignored fields is not seen.

Everything said about the recompilers comes from running them in the
simulator (tools/ppcsim.py).  The routines of the ROM's build that have to
be called are found by looking for the code Emulator.x has at the same
label.

ROM images are not part of this repository (see .gitignore).
"""

import bisect
import collections
import copy
import difflib
import hashlib
import os
import struct
import sys

import check
import drmap
import drtranslate
import image
import m68k
import rominfo

CODE_SIZE = image.TABLE_START
PADDING = (0x00000000, 0x60000000, 0x48000004)     # zero, nop, branch to the next instruction


def words(blob):
    return list(struct.unpack('>%dI' % (len(blob) // 4), blob))


def masked(word, loose=False):
    """The instruction word without the fields that only say where things
    are.  `loose` drops every 16-bit immediate, for finding a routine."""
    primary = word >> 26
    if primary == 18:
        return word & 0xFC000003
    if primary == 16:
        return word & 0xFFFF0003
    if primary in (14, 15, 24, 25):
        return word & 0xFFFF0000
    if 32 <= primary <= 47 and (loose or (word >> 16) & 31 == 7):
        return word & 0xFFFF0000
    if loose and primary in (7, 8, 10, 11, 12, 13, 26, 27, 28, 29):
        return word & 0xFFFF0000
    return word


def rom_image(path):
    with open(path, 'rb') as handle:
        rom = handle.read()
    found = rominfo.find_emulator(rom)
    if not found:
        sys.exit('%s: no emulator found' % path)
    code, table = found
    return rom[code:code + CODE_SIZE] + rom[table:table + rominfo.TABLE_SIZE]


def extent(image, start, stop):
    end = stop
    while end > start and struct.unpack_from('>I', image, end - 4)[0] in PADDING:
        end -= 4
    return end


def locate(reference, other, offset):
    """Offset in `other` of the code that `reference` has at `offset`."""
    ours = [masked(w, True) for w in words(reference[:CODE_SIZE])]
    theirs = [masked(w, True) for w in words(other[:CODE_SIZE])]
    for length in (12, 8, 6):
        wanted = ours[offset // 4:offset // 4 + length]
        hits = [4 * index for index in range(len(theirs) - length)
                if theirs[index:index + length] == wanted]
        if hits:
            return hits[0]
    return None


# -- routines ---------------------------------------------------------------

def routine_differences(emulator, other, start, stop):
    """Align other[start:...] with the reference and return
    (words in other, words in reference, padding-only differences,
     {routine: [regions, words in other, words in reference]})."""
    g = emulator
    named = sorted(addr for addr, name in g.labels.items()
                   if addr < CODE_SIZE and not image.LOCAL_LABEL.fullmatch(name))

    def routine(addr):
        return g.labels[named[bisect.bisect_right(named, addr) - 1]]

    theirs = words(other[start:extent(other, start, stop)])
    ours = words(g.image[start:extent(g.image, start, stop)])
    matcher = difflib.SequenceMatcher(None, [masked(w) for w in theirs],
                                      [masked(w) for w in ours], autojunk=False)
    padding, routines = 0, collections.OrderedDict()
    for tag, i1, i2, j1, j2 in matcher.get_opcodes():
        if tag == 'equal':
            continue
        if all(w in PADDING for w in theirs[i1:i2] + ours[j1:j2]):
            padding += 1
            continue
        name = routine(start + 4 * j1) if j1 < len(ours) else '(after the last routine)'
        entry = routines.setdefault(name, [0, 0, 0])
        entry[0] += 1
        entry[1] += i2 - i1
        entry[2] += j2 - j1
    return len(theirs), len(ours), padding, routines


def report_routines(emulator, other, title, start, stop):
    theirs, ours, padding, routines = routine_differences(emulator, other, start, stop)
    print('%s: %d words in the ROM, %d in Emulator.x; %d routines differ'
          ' (%d differences in padding ignored)' % (title, theirs, ours, len(routines), padding))
    if routines:
        print('  %-30s %8s  %12s  %12s' % ('at or after', 'places', 'words in ROM', 'in Emulator.x'))
    for name, (regions, old, new) in routines.items():
        print('  %-30s %8d  %12d  %12d' % (name, regions, old, new))
    print()


def report_table(emulator, other):
    ours = words(emulator.image[CODE_SIZE:])
    theirs = words(other[CODE_SIZE:])
    different = [opcode for opcode in range(0x10000)
                 if [masked(w) for w in ours[2 * opcode:2 * opcode + 2]]
                 != [masked(w) for w in theirs[2 * opcode:2 * opcode + 2]]]
    print('Dispatch table: %d entries differ%s\n' % (
        len(different), ''.join(' %04X' % opcode for opcode in different[:24])
        + (' ...' if len(different) > 24 else '')))


# -- the recompiler ---------------------------------------------------------

def recompiler_layout(emulator, other):
    found = [locate(emulator.image, other, emulator.label_addrs[name])
             for name in ('dr_scan_next', 'dr_liveness', 'dr_translate_abort', 'dr_line_0')]
    return None if None in found else drmap.Layout(*found)


def decisions_of(image, layout):
    cache = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'build',
                         'drmap-%s.json' % hashlib.sha1(image[:CODE_SIZE]).hexdigest()[:10])
    return drmap.scan(image[:CODE_SIZE], cache=cache, layout=layout)


def by_mnemonic(opcodes):
    count = collections.OrderedDict()
    for opcode in opcodes:
        name = m68k.text(opcode).split()[0]
        count[name] = count.get(name, 0) + 1
    return ', '.join('%s %d' % item for item in count.items()) or 'none'


def report_decisions(emulator, other):
    layout = recompiler_layout(emulator, other)
    if layout is None:
        print('Recompiler: not found in the ROM\'s build\n')
        return
    ours = decisions_of(emulator.image, drmap.EMULATOR_X)
    theirs = decisions_of(other, layout)
    print('Recompiler, first pass, all 65536 opcodes:')
    print('  translated: %d in the ROM, %d in Emulator.x' % (
        sum(1 for d in theirs.values() if d.translated),
        sum(1 for d in ours.values() if d.translated)))
    print('  only in Emulator.x: %s' % by_mnemonic(
        op for op in ours if ours[op].translated and not theirs[op].translated))
    print('  only in the ROM:    %s' % by_mnemonic(
        op for op in ours if theirs[op].translated and not ours[op].translated))
    both = [op for op in ours if ours[op].translated and theirs[op].translated]
    print('  translated by both, different length: %s' % by_mnemonic(
        op for op in both if not ours[op].ends_block and ours[op].length != theirs[op].length))
    changes = collections.OrderedDict()
    for op in ours:
        if ours[op].flags != theirs[op].flags and ours[op].translated == theirs[op].translated:
            name = m68k.text(op).split()[0].split('.')[0] if ours[op].translated else '(not translated)'
            changes.setdefault((theirs[op].flags, ours[op].flags), []).append(name)
    print('  record flags that differ (ROM -> Emulator.x):')
    for (old, new), names in changes.items():
        distinct = list(collections.OrderedDict.fromkeys(names))
        print('    %04X -> %04X  %5d opcodes  %s' % (old, new, len(names), ' '.join(distinct[:8])
                                                     + (' ...' if len(distinct) > 8 else '')))
    if not changes:
        print('    none')
    print()


def as_build(emulator, other):
    """A stand-in for the Image that describes another build: enough of it
    for tools/drtranslate.py and tools/run68k.py."""
    build = copy.copy(emulator)
    build.image = other
    build.label_addrs = {}
    for name in ('emulator_reset', 'init_state', 'dr_setup', 'dr_translate',
                 'dr_translate_done', 'dr_exit_to_interpreter', 'dr_indirect_exit',
                 'dr_block_exit', 'process_special_event'):
        at = locate(emulator.image, other, emulator.label_addrs[name])
        if at is not None:
            build.label_addrs[name] = at
    # Opcode 4AFC (ILLEGAL): the second word of its table entry is a branch
    # to take_illegal_instruction.
    entry = CODE_SIZE + 0x4AFC * 8 + 4
    branch = struct.unpack_from('>I', other, entry)[0]
    build.label_addrs['take_illegal_instruction'] = entry + (
        (branch & 0x03FFFFFC) - (0x04000000 if branch & 0x02000000 else 0))
    build.labels = {addr: name for name, addr in build.label_addrs.items()}
    return build


def translation(build, code):
    """Rendered lines, and the words with branches out of the block made
    comparable between builds."""
    try:
        m, start, end = drtranslate.translate(build, code)
    except RuntimeError as error:
        return ['(%s)' % error], None
    comparable = []
    for address in range(start, end, 4):
        word = m.read(address, 4)
        if word >> 26 == 18:
            displacement = (word & 0x03FFFFFC) - (0x04000000 if word & 0x02000000 else 0)
            if not start <= address + displacement < end:
                word &= 0xFC000003
        comparable.append(word)
    return drtranslate.render(build, m, start, end), tuple(comparable)


def side_by_side(emulator, build, code):
    theirs, _ = translation(build, code)
    ours, _ = translation(emulator, code)
    print('  %-50s   %s' % ('ROM', 'Emulator.x'))
    for index in range(max(len(theirs), len(ours))):
        left = theirs[index] if index < len(theirs) else ''
        right = ours[index] if index < len(ours) else ''
        print('%s %-50s | %s' % (' ' if left == right else '*', left, right))


# Three things that can follow the instruction under test: all condition
# codes wanted; N, Z, V, C replaced (TST.L D1); all five replaced (ADD.L D1,D1).
CONTEXTS = (('all flags wanted', [0x4E75]),
            ('N, Z, V, C dead', [0x4A81, 0x4E75]),
            ('all flags dead', [0xD281, 0x4E75]))


def report_emitters(emulator, other):
    layout = recompiler_layout(emulator, other)
    if layout is None:
        sys.exit('no recompiler in the ROM\'s build')
    build = as_build(emulator, other)
    ours = decisions_of(emulator.image, drmap.EMULATOR_X)
    theirs = decisions_of(other, layout)
    users = collections.defaultdict(list)
    for opcode in range(0x10000):
        if (ours[opcode].translated and theirs[opcode].translated
                and not ours[opcode].ends_block and check.classify(emulator, opcode) == 'implemented'
                and not check.known_recompiler_defect(opcode)):
            users[ours[opcode].emitter].append(opcode)
    same = 0
    for emitter in sorted(users):
        opcodes = users[emitter]
        samples = sorted({opcodes[len(opcodes) * k // 4] for k in range(4)} | {opcodes[-1]})
        different = []
        for opcode in samples:
            extension = [0x0010] * check.extension_words(m68k.decode(opcode))[0]
            for title, tail in CONTEXTS:
                code = [opcode] + extension + tail
                if translation(build, code)[1] != translation(emulator, code)[1]:
                    different.append('%04X (%s)' % (opcode, title))
        name = emulator.labels.get(drmap.DR_EMITTERS + emitter, '%04X' % emitter)
        same += not different
        if different:
            print('  %-20s differs for %s' % (name, ', '.join(different)))
    print('%d code generators are used by both builds; %d of them produced the same code '
          'for every sample' % (len(users), same))


def main():
    arguments = [a for a in sys.argv[1:] if not a.startswith('--')]
    if not arguments:
        sys.exit(__doc__)
    emulator = image.Image()
    other = rom_image(arguments[0])
    if other == emulator.image:
        print('The ROM contains Emulator.x itself.')
        return
    if '--emitters' in sys.argv:
        report_emitters(emulator, other)
    elif len(arguments) > 1:
        code = [int(word, 16) for word in ' '.join(arguments[1:]).split()]
        side_by_side(emulator, as_build(emulator, other), code)
    else:
        report_routines(emulator, other, 'Interpreter', 0, 0x10000)
        report_routines(emulator, other, 'Recompiler', 0x10000, CODE_SIZE)
        report_table(emulator, other)
        report_decisions(emulator, other)


if __name__ == '__main__':
    main()
