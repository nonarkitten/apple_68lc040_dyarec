#!/usr/bin/env python3
"""Checks of this project's own work, as opposed to Apple's.

Usage: selfcheck.py [-v]

The source is edited by hand and the documentation refers to it by name and
by offset, so there are things that can drift apart without changing a byte
of the build.  This looks for them:

  1. tools/image.py against the assembler: every label must be at the
     offset the assembler gave it (from the symbol table of
     build/Emulator.o).  The other tools trust image.py's byte counting.
  2. Comments in the source that state facts: "Reached from N dispatch
     table entries" above a routine, and the opcode in the comment of each
     dispatch table entry.
  3. The documentation: a label quoted with its offset - `fetch` (`06084`) -
     must be at that offset; a state field quoted with its offset must have
     it; a word in code style that looks like a label must be one (or a
     register, a field, or a term listed in OTHER_TERMS below); links and
     quoted paths must lead somewhere.

Nothing here runs or judges the emulator.
"""

import glob
import os
import re
import sys

import elf2xcoff
import image

DOCUMENTS = ['README.md', 'CLAUDE.md', 'TODO.md', 'NOTICE.md'] + sorted(
    os.path.relpath(path, image.ROOT)
    for path in glob.glob(os.path.join(image.ROOT, 'docs', '*.md')))

# Words in code style that look like labels but name something else: terms
# from the patents, kernel and Mac OS names, things in the tools.
OTHER_TERMS = set('''
    dispatch_next_pc cr_sp_event handle_special_event fpsp_fline fpsp_unimp
    add_w_shifted_data_d2 dr_add_w_shifted_data_d2 update_nzc_zero not_l_mem cea_l_30
    cea_s_mr fea_s_mr trc_pc imm_d b_dsp sr_flg
    label_addrs table_users
'''.split())


def vocabulary(emulator):
    """Every name the source defines."""
    names = set(emulator.label_addrs)
    for path in ('Registers.inc', 'EmulatorState.inc'):
        for entries in image.parse_defines(os.path.join(image.ROOT, 'src/include', path)).values():
            names.update(name for name, _ in entries)
    with open(os.path.join(image.ROOT, 'src/include/Macros.inc'), encoding='utf-8') as handle:
        text = handle.read()
    names.update(re.findall(r'^\s*\.macro\s+(\w+)', text, re.M))
    names.update(re.findall(r'^#define\s+(\w+)', text, re.M))
    return names


def check_symbols(emulator, problems):
    path = os.path.join(image.ROOT, 'build', 'Emulator.o')
    if not os.path.exists(path):
        problems.append('build/Emulator.o is missing: run "make" first')
        return 0
    _, symbols = elf2xcoff.read_elf(path)
    for name, offset in emulator.label_addrs.items():
        if symbols.get(name) != offset:
            problems.append('label %s: image.py has it at %05X, the assembler at %s' % (
                name, offset, '%05X' % symbols[name] if name in symbols else 'no such symbol'))
    return len(emulator.label_addrs)


def check_source_comments(emulator, problems):
    checked = 0
    for addr, lines in emulator.lines.items():
        for line in lines:
            reached = re.match(r'// Reached from (\d+) dispatch table entr', line)
            if reached:
                checked += 1
                # The comment belongs to the label that follows it, at this
                # statement.
                if int(reached.group(1)) != len(emulator.table_users.get(addr, ())):
                    problems.append('%05X %s: comment says %s table entries, the table has %d' % (
                        addr, emulator.labels.get(addr, ''), reached.group(1),
                        len(emulator.table_users.get(addr, ()))))
    for opcode in range(0x10000):
        entry = image.TABLE_START + 8 * opcode
        comment = re.search(r'//\s*([0-9A-F]{4})\b', emulator.lines[entry][-1])
        checked += 1
        if comment is None or int(comment.group(1), 16) != opcode:
            problems.append('%05X: the table entry for opcode %04X is commented %s' % (
                entry, opcode, comment.group(1) if comment else 'with no opcode'))
    return checked


def check_documents(emulator, problems, verbose):
    names = vocabulary(emulator)
    state = {name: offset for name, offset in image.parse_defines(os.path.join(
        image.ROOT, 'src/include/EmulatorState.inc')).get('state', [])}
    checked = 0
    for document in DOCUMENTS:
        with open(os.path.join(image.ROOT, document), encoding='utf-8') as handle:
            text = handle.read()
        prose = re.sub(r'```.*?```', '', text, flags=re.S)           # not the code blocks
        where = lambda match: '%s:%d' % (document, text.count('\n', 0, text.find(match.group(0))) + 1)

        # `label` (`0D780`)  and  (`label`, `0D780`)
        for match in re.finditer(r'`(\w+)`,? \(?`([0-9A-F]{5})`', prose):
            name, offset = match.group(1), int(match.group(2), 16)
            if name in emulator.label_addrs or re.fullmatch(r'[a-z]\w*_\w+', name):
                checked += 1
                if emulator.label_addrs.get(name) != offset:
                    actual = emulator.label_addrs.get(name)
                    problems.append('%s: `%s` (`%05X`): %s' % (
                        where(match), name, offset,
                        'it is at %05X' % actual if actual is not None else 'no such label'))
        # `field` (`+0x7A0`)
        for match in re.finditer(r'`(\w+)` \(`\+?(0x[0-9A-Fa-f]+)`\)', prose):
            name, offset = match.group(1), int(match.group(2), 16)
            if name in state:
                checked += 1
                if state[name] != offset:
                    problems.append('%s: `%s` (`+0x%X`): the field is at +0x%X' % (
                        where(match), name, offset, state[name]))
        # Words that look like labels.
        for match in re.finditer(r'`([a-z][a-z0-9]*(?:_[a-z0-9]+)+)`', prose):
            name = match.group(1)
            checked += 1
            if name not in names and name not in OTHER_TERMS:
                problems.append('%s: `%s` is not a label, register or field of the source' % (
                    where(match), name))
        # Links and quoted paths.
        folder = os.path.dirname(os.path.join(image.ROOT, document))
        for match in re.finditer(r'\]\(([^)#]+?)(?:#[^)]*)?\)', prose):
            target = match.group(1)
            if not re.match(r'[a-z]+:', target):
                checked += 1
                if not os.path.exists(os.path.join(folder, target)):
                    problems.append('%s: link to %s, which does not exist' % (where(match), target))
        for match in re.finditer(r'`((?:tools|src|docs)/[\w./-]+)`', prose):
            target = match.group(1).rstrip('.')
            checked += 1
            if '*' not in target and not os.path.exists(os.path.join(image.ROOT, target)):
                problems.append('%s: `%s` does not exist' % (where(match), target))
    return checked


def main():
    verbose = '-v' in sys.argv
    emulator = image.Image()
    failed = False
    for title, check in (
            ('labels at the offsets the assembler gives them', check_symbols),
            ('statements of fact in source comments', check_source_comments),
            ('references in the documentation',
             lambda e, p: check_documents(e, p, verbose))):
        problems = []
        count = check(emulator, problems)
        print('%-52s %6d checked, %d wrong' % (title, count, len(problems)))
        for problem in problems[:None if verbose else 12]:
            print('    ' + problem)
        if len(problems) > 12 and not verbose:
            print('    ... and %d more (-v lists them)' % (len(problems) - 12))
        failed = failed or bool(problems)
    print('FAILED' if failed else 'OK: the source, the tools and the documentation agree')
    return 1 if failed else 0


if __name__ == '__main__':
    sys.exit(main())
