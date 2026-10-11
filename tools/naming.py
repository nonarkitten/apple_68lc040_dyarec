"""Automatic names for routines reached from the dispatch table.

A dispatch table entry reaches emulator code in two ways:

    <setup instruction>              the second instruction branches straight
    b       handler                  to the routine that does the work

    ori     rtn_addr, code_ptr, handler - cb     the entry names the routine
    b       ea_routine                           that does the work, then
                                                 branches to an effective
                                                 address routine which
                                                 "returns" to it

Both kinds of routine are named here from the set of 68K instructions that
use them.  Effective address routines follow the convention visible in
US5574873 (`cea_l_30`: compute effective address, long, mode 3 register 0);
`fea_` is used for the variants that also fetch the operand.

The names are a starting point: anything in annotations/*.ann overrides
them.
"""

import collections
import re

import m68k

# Mnemonics that share an emulation routine with a simpler relative.
_BASE = {
    'ADDI': 'ADD', 'ADDQ': 'ADD', 'SUBI': 'SUB', 'SUBQ': 'SUB',
    'ANDI': 'AND', 'ORI': 'OR', 'EORI': 'EOR', 'CMPI': 'CMP',
    'MOVEA': 'MOVE', 'MOVEQ': 'MOVE',
}

_MEMORY = {'ind', 'postinc', 'predec', 'd16an', 'idx', 'absw', 'absl', 'd16pc', 'pcidx'}


def _classify(text):
    """Reduce an operand to (class, register number or None)."""
    if not text:
        return ('', None)
    match = re.fullmatch(r'D(\d)', text)
    if match:
        return ('d', int(match.group(1)))
    match = re.fullmatch(r'A(\d)', text)
    if match:
        return ('a', int(match.group(1)))
    patterns = (
        (r'\(A(\d)\)\+', 'postinc'), (r'-\(A(\d)\)', 'predec'), (r'\(A(\d)\)', 'ind'),
        (r'\(d16,A(\d)\)', 'd16an'), (r'\(d8,A(\d),Xn\)', 'idx'))
    for pattern, kind in patterns:
        match = re.fullmatch(pattern + r'(\{ofs:wid\})?', text)
        if match:
            return (kind, int(match.group(1)))
    text = text.replace('{ofs:wid}', '')
    fixed = {'(xxx).W': 'absw', '(xxx).L': 'absl', '(d16,PC)': 'd16pc',
             '(d8,PC,Xn)': 'pcidx', '#<data>': 'imm', '#<bit>': 'imm',
             'CCR': 'ccr', 'SR': 'sr', 'USP': 'usp', '<label>': '',
             '<list>': 'list', '#<disp>': 'imm', 'Rn': 'rn', 'Rc': 'rc'}
    if text in fixed:
        return (fixed[text], None)
    if re.fullmatch(r'#\$?[0-9A-F]+', text):
        return ('q', None)
    return ('', None)


def _summarise(operands):
    """One name fragment for a list of (class, register) pairs."""
    classes = {kind for kind, _ in operands}
    registers = {reg for _, reg in operands}
    if classes == {''}:
        return ''
    if len(classes) == 1:
        kind = next(iter(classes))
        reg = next(iter(registers)) if len(registers) == 1 else None
        if kind in ('d', 'a'):
            return kind + ('n' if reg is None else str(reg))
        if kind in _MEMORY:
            return 'mem'
        return kind
    classes.discard('')
    if classes <= _MEMORY:
        return 'mem'
    if classes <= _MEMORY | {'imm'}:
        return 'ea'
    if classes <= {'d', 'a'}:
        return 'reg'
    if classes <= {'imm', 'q'}:
        return 'imm'
    return 'any'


def _mnemonic(ops):
    names = collections.Counter(op.name for op in ops)
    if len(names) == 1:
        return next(iter(names))
    bases = collections.Counter(_BASE.get(op.name, op.name) for op in ops)
    ordered = [name for name, _ in bases.most_common()]
    if len(ordered) == 1:
        return ordered[0]
    # Conditional families collapse to their generic name.
    for prefix, generic in (('DB', 'DBcc'), ('TRAP', 'TRAPcc'), ('S', 'Scc'), ('B', 'Bcc')):
        if all(n.startswith(prefix) and n[len(prefix):] in m68k.CC for n in ordered):
            return generic
    if len(ordered) > 3:
        return '_'.join(ordered[:2]) + '_etc'
    return '_'.join(ordered)


def _clean(name):
    name = name.lower().replace('/', '_').replace('-', '')
    return re.sub(r'[^a-z0-9_]', '', name)


def routine_name(opcodes):
    """Name for a routine that performs the operation of these opcodes."""
    ops = [m68k.decode(opcode) for opcode in opcodes]
    if not any(op.legal for op in ops):
        if all(op.name in ('ILLEGAL',) or not op.legal for op in ops):
            names = {op.name for op in ops}
            if names == {'ILLEGAL'}:
                return 'illegal'
    legal = [op for op in ops if op.legal] or ops
    parts = [_clean(_mnemonic(legal))]
    sizes = {op.size for op in legal}
    if len(sizes) == 1 and next(iter(sizes)):
        parts.append(next(iter(sizes)).lower())
    for operands in ([_classify(op.src) for op in legal], [_classify(op.dst) for op in legal]):
        fragment = _summarise(operands)
        if fragment:
            parts.append(fragment)
    return '_'.join(parts)


def ea_routine_name(opcodes, fetches, size_hint=None):
    """Name for an effective address routine, or None if the opcodes do not
    share one addressing mode."""
    # Nearly every user encodes the mode in the low six bits; a few (CMPM,
    # ADDX -(An),-(An), ...) imply it, so go with a clear majority.
    fields = collections.Counter(opcode & 0x3F for opcode in opcodes)
    field, count = fields.most_common(1)[0]
    if count * 5 < len(opcodes) * 4 or field >> 3 < 2:
        return None
    mode, reg = field >> 3, field & 7
    sizes = {m68k.decode(opcode).size for opcode in opcodes
             if m68k.decode(opcode).legal and opcode & 0x3F == field}
    sizes.discard('')
    size = next(iter(sizes)).lower() if len(sizes) == 1 else (size_hint or 'x')
    return '%s_%s_%d%d' % ('fea' if fetches else 'cea', size, mode, reg)


def assign(generator, direct, continuation, ea_users):
    """Return {addr: name}.

    direct        addr -> opcodes whose second instruction branches there
    continuation  addr -> opcodes that load addr into rtn_addr
    ea_users      addr -> opcodes that branch there with rtn_addr loaded
    """
    proposals = {}
    for addr, opcodes in direct.items():
        # An effective address routine moves rtn_addr to LR or CTR so that
        # it can "return" into the operation routine; failing that, a
        # routine every user enters with rtn_addr loaded is one too.
        via_rtn_addr = len(ea_users.get(addr, ())) == len(opcodes)
        if generator.uses_rtn_addr(addr) or via_rtn_addr:
            name = ea_routine_name(opcodes, generator.routine_fetches(addr))
            if name:
                proposals[addr] = name
    for source in (continuation, direct):
        for addr, opcodes in source.items():
            if addr not in proposals:
                proposals[addr] = routine_name(opcodes)

    used = collections.Counter()
    names = {}
    for addr in sorted(proposals):
        base = proposals[addr]
        used[base] += 1
        names[addr] = base if used[base] == 1 else '%s_%d' % (base, used[base])
    return names
