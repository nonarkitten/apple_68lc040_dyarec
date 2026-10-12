"""MC68040 opcode-word decoder.

Only the first (opcode) word is examined, which is exactly what the
emulator's dispatch table is indexed by.  For every one of the 65536
possible opcode words `decode()` returns an Op tuple:

    name    mnemonic without size suffix, e.g. 'MOVE', 'ORI', 'Bcc' -> 'BNE'
    size    'B', 'W', 'L' or '' when the instruction has no size
    src     source operand text, or ''
    dst     destination operand text, or ''
    legal   False when the encoding is not a valid 68040 instruction

`text()` renders it in conventional Motorola syntax.  Operands that live in
extension words are shown symbolically (#<data>, (d16,An), <label>, ...).
"""

from collections import namedtuple

Op = namedtuple('Op', 'name size src dst legal')

CC = ('T', 'F', 'HI', 'LS', 'CC', 'CS', 'NE', 'EQ',
      'VC', 'VS', 'PL', 'MI', 'GE', 'LT', 'GT', 'LE')

# Effective address classes (sets of (mode, reg) the instruction accepts).
_DN, _AN, _IND, _POST, _PRE, _D16, _IDX = range(7)
_ABSW, _ABSL, _PC16, _PCIDX, _IMM = 7, 8, 9, 10, 11


def _ea_kind(mode, reg):
    if mode < 7:
        return mode
    return 7 + reg if reg <= 4 else None


def _mk(*kinds):
    return frozenset(kinds)


EA_ALL = _mk(*range(12))
EA_DATA = EA_ALL - {_AN}
EA_MEM = EA_DATA - {_DN}
EA_CTRL = _mk(_IND, _D16, _IDX, _ABSW, _ABSL, _PC16, _PCIDX)
EA_ALT = _mk(_DN, _AN, _IND, _POST, _PRE, _D16, _IDX, _ABSW, _ABSL)
EA_DATA_ALT = EA_ALT - {_AN}
EA_MEM_ALT = EA_DATA_ALT - {_DN}
EA_CTRL_ALT = _mk(_IND, _D16, _IDX, _ABSW, _ABSL)
EA_DATA_NOIMM = EA_DATA - {_IMM}            # BTST Dn,<ea> allows PC relative


def ea_text(mode, reg):
    """Motorola syntax for an effective address field."""
    if mode == 0:
        return 'D%d' % reg
    if mode == 1:
        return 'A%d' % reg
    if mode == 2:
        return '(A%d)' % reg
    if mode == 3:
        return '(A%d)+' % reg
    if mode == 4:
        return '-(A%d)' % reg
    if mode == 5:
        return '(d16,A%d)' % reg
    if mode == 6:
        return '(d8,A%d,Xn)' % reg
    return {0: '(xxx).W', 1: '(xxx).L', 2: '(d16,PC)', 3: '(d8,PC,Xn)',
            4: '#<data>'}.get(reg, '<ea 7.%d>' % reg)


def _ea(op, allowed):
    """Return (text, valid) for the EA in the low six bits of op."""
    mode, reg = (op >> 3) & 7, op & 7
    kind = _ea_kind(mode, reg)
    return ea_text(mode, reg), (kind is not None and kind in allowed)


_SIZES = ('B', 'W', 'L')
ILLEGAL = Op('ILLEGAL', '', '', '', False)


def _op(name, size='', src='', dst='', legal=True):
    return Op(name, size, src, dst, legal)


def _line0(op):
    mode, reg = (op >> 3) & 7, op & 7
    ss = (op >> 6) & 3
    if op & 0x0100:
        dn = 'D%d' % ((op >> 9) & 7)
        if mode == 1:                               # MOVEP
            size = 'L' if op & 0x40 else 'W'
            mem = '(d16,A%d)' % reg
            if op & 0x80:
                return _op('MOVEP', size, dn, mem)
            return _op('MOVEP', size, mem, dn)
        name = ('BTST', 'BCHG', 'BCLR', 'BSET')[ss]
        ea, ok = _ea(op, EA_DATA if ss == 0 else EA_DATA_ALT)
        return _op(name, 'L' if mode == 0 else 'B', dn, ea, ok)

    group = (op >> 9) & 7
    if group == 4:                                  # static bit operations
        name = ('BTST', 'BCHG', 'BCLR', 'BSET')[ss]
        ea, ok = _ea(op, EA_DATA_NOIMM if ss == 0 else EA_DATA_ALT)
        return _op(name, 'L' if mode == 0 else 'B', '#<bit>', ea, ok)

    if ss == 3:
        if group in (0, 1, 2):                      # CHK2 / CMP2
            ea, ok = _ea(op, EA_CTRL)
            return _op('CHK2/CMP2', _SIZES[group], ea, 'Rn', ok)
        if group == 3:                              # 68020 RTM / CALLM
            if mode <= 1:
                return _op('RTM', '', ('D%d' if mode == 0 else 'A%d') % reg, '', False)
            ea, ok = _ea(op, EA_CTRL)
            return _op('CALLM', '', '#<data>', ea, False)
        # CAS / CAS2
        size = _SIZES[group - 5]
        if (op & 0x3F) == 0x3C:
            if group == 5:
                return ILLEGAL
            return _op('CAS2', size, 'Dc1:Dc2,Du1:Du2', '(Rn1):(Rn2)')
        ea, ok = _ea(op, EA_MEM_ALT)
        return _op('CAS', size, 'Dc,Du', ea, ok)

    if group == 7:                                  # MOVES
        ea, ok = _ea(op, EA_MEM_ALT)
        return _op('MOVES', _SIZES[ss], 'Rn', ea, ok)

    name = ('ORI', 'ANDI', 'SUBI', 'ADDI', None, 'EORI', 'CMPI')[group]
    if (op & 0x3F) == 0x3C and name in ('ORI', 'ANDI', 'EORI'):
        if ss == 0:
            return _op(name, 'B', '#<data>', 'CCR')
        if ss == 1:
            return _op(name, 'W', '#<data>', 'SR')
        return ILLEGAL
    ea, ok = _ea(op, EA_DATA_NOIMM if name == 'CMPI' else EA_DATA_ALT)
    return _op(name, _SIZES[ss], '#<data>', ea, ok)


def _move(op):
    size = {1: 'B', 3: 'W', 2: 'L'}[op >> 12]
    src, ok_s = _ea(op, EA_ALL)
    dmode, dreg = (op >> 6) & 7, (op >> 9) & 7
    if size == 'B' and ((op >> 3) & 7) == 1:
        ok_s = False
    kind = _ea_kind(dmode, dreg)
    dst = ea_text(dmode, dreg)
    if dmode == 1:
        return _op('MOVEA', size, src, dst, ok_s and size != 'B')
    return _op('MOVE', size, src, dst, ok_s and kind is not None and kind in EA_DATA_ALT)


def _line4(op):
    mode, reg = (op >> 3) & 7, op & 7
    ss = (op >> 6) & 3
    if op & 0x0100:
        dn = 'D%d' % ((op >> 9) & 7)
        if op & 0xFFF8 == 0x49C0:
            return _op('EXTB', 'L', '', 'D%d' % reg)
        if ss == 3:
            ea, ok = _ea(op, EA_CTRL)
            return _op('LEA', '', ea, 'A%d' % ((op >> 9) & 7), ok)
        if ss in (0, 2):
            ea, ok = _ea(op, EA_DATA)
            return _op('CHK', 'L' if ss == 0 else 'W', ea, dn, ok)
        return ILLEGAL

    group = (op >> 9) & 7
    if group in (0, 1, 2, 3):
        if ss == 3:
            if group == 0:
                ea, ok = _ea(op, EA_DATA_ALT)
                return _op('MOVE', 'W', 'SR', ea, ok)
            if group == 1:
                ea, ok = _ea(op, EA_DATA_ALT)
                return _op('MOVE', 'W', 'CCR', ea, ok)
            ea, ok = _ea(op, EA_DATA)
            return _op('MOVE', 'W', ea, 'CCR' if group == 2 else 'SR', ok)
        ea, ok = _ea(op, EA_DATA_ALT)
        return _op(('NEGX', 'CLR', 'NEG', 'NOT')[group], _SIZES[ss], '', ea, ok)

    if group == 4:
        if ss == 0:
            if mode == 1:
                return _op('LINK', 'L', 'A%d' % reg, '#<disp>')
            ea, ok = _ea(op, EA_DATA_ALT)
            return _op('NBCD', 'B', '', ea, ok)
        if ss == 1:
            if mode == 0:
                return _op('SWAP', '', '', 'D%d' % reg)
            if mode == 1:
                return _op('BKPT', '', '#%d' % reg, '')
            ea, ok = _ea(op, EA_CTRL)
            return _op('PEA', '', ea, '', ok)
        size = 'L' if ss == 3 else 'W'
        if mode == 0:
            return _op('EXT', size, '', 'D%d' % reg)
        ea, ok = _ea(op, EA_CTRL_ALT | {_PRE})
        return _op('MOVEM', size, '<list>', ea, ok)

    if group == 5:
        if ss == 3:
            if op == 0x4AFC:
                return _op('ILLEGAL', '', '', '', True)
            if op in (0x4AFA, 0x4AFB):
                return ILLEGAL
            ea, ok = _ea(op, EA_DATA_ALT)
            return _op('TAS', 'B', '', ea, ok)
        ea, ok = _ea(op, EA_ALL)
        if ss == 0 and mode == 1:
            ok = False
        return _op('TST', _SIZES[ss], '', ea, ok)

    if group == 6:
        if ss == 0:
            ea, ok = _ea(op, EA_DATA)
            return _op('MULU/MULS', 'L', ea, 'Dl|Dh:Dl', ok)
        if ss == 1:
            ea, ok = _ea(op, EA_DATA)
            return _op('DIVU/DIVS', 'L', ea, 'Dq|Dr:Dq', ok)
        ea, ok = _ea(op, EA_CTRL | {_POST})
        return _op('MOVEM', 'L' if ss == 3 else 'W', ea, '<list>', ok)

    # group == 7
    if ss == 2:
        ea, ok = _ea(op, EA_CTRL)
        return _op('JSR', '', ea, '', ok)
    if ss == 3:
        ea, ok = _ea(op, EA_CTRL)
        return _op('JMP', '', ea, '', ok)
    if ss == 0:
        return ILLEGAL
    low = op & 0x3F
    if low < 0x10:
        return _op('TRAP', '', '#%d' % (op & 15), '')
    if low < 0x18:
        return _op('LINK', 'W', 'A%d' % reg, '#<disp>')
    if low < 0x20:
        return _op('UNLK', '', '', 'A%d' % reg)
    if low < 0x28:
        return _op('MOVE', 'L', 'A%d' % reg, 'USP')
    if low < 0x30:
        return _op('MOVE', 'L', 'USP', 'A%d' % reg)
    simple = {0x30: 'RESET', 0x31: 'NOP', 0x33: 'RTE', 0x35: 'RTS',
              0x36: 'TRAPV', 0x37: 'RTR'}
    if low in simple:
        return _op(simple[low])
    if low == 0x32:
        return _op('STOP', '', '#<data>', '')
    if low == 0x34:
        return _op('RTD', '', '#<disp>', '')
    if low == 0x3A:
        return _op('MOVEC', 'L', 'Rc', 'Rn')
    if low == 0x3B:
        return _op('MOVEC', 'L', 'Rn', 'Rc')
    return ILLEGAL


def _line5(op):
    mode, reg = (op >> 3) & 7, op & 7
    ss = (op >> 6) & 3
    if ss == 3:
        cc = CC[(op >> 8) & 15]
        if mode == 1:
            return _op('DB' + cc, 'W', 'D%d' % reg, '<label>')
        if mode == 7 and reg in (2, 3, 4):
            opnd = {2: '#<data>.W', 3: '#<data>.L', 4: ''}[reg]
            return _op('TRAP' + cc, '', opnd, '')
        ea, ok = _ea(op, EA_DATA_ALT)
        return _op('S' + cc, 'B', '', ea, ok)
    quick = (op >> 9) & 7 or 8
    ea, ok = _ea(op, EA_ALT)
    if mode == 1 and ss == 0:
        ok = False
    return _op('SUBQ' if op & 0x0100 else 'ADDQ', _SIZES[ss], '#%d' % quick, ea, ok)


def _line6(op):
    cond = (op >> 8) & 15
    disp = op & 0xFF
    name = 'BRA' if cond == 0 else 'BSR' if cond == 1 else 'B' + CC[cond]
    size = 'W' if disp == 0 else 'L' if disp == 0xFF else 'S'
    return _op(name, size, '', '<label>')


def _line7(op):
    if op & 0x0100:
        return ILLEGAL
    value = op & 0xFF
    return _op('MOVEQ', 'L', '#$%02X' % value, 'D%d' % ((op >> 9) & 7))


def _arith(op, name, xname, mul_names, bcd):
    """Shared decoder for lines 8, 9, B, C and D."""
    mode, reg = (op >> 3) & 7, op & 7
    opmode = (op >> 6) & 7
    r9 = (op >> 9) & 7
    dn = 'D%d' % r9
    if opmode in (3, 7):
        if mul_names:                               # DIVU/DIVS, MULU/MULS
            ea, ok = _ea(op, EA_DATA)
            return _op(mul_names[opmode >> 2], 'W', ea, dn, ok)
        ea, ok = _ea(op, EA_ALL)                    # ADDA / SUBA / CMPA
        return _op(name + 'A', 'L' if opmode == 7 else 'W', ea, 'A%d' % r9, ok)
    size = _SIZES[opmode & 3]
    if opmode < 4:
        ea, ok = _ea(op, EA_ALL if not mul_names else EA_DATA)
        if mode == 1 and size == 'B':
            ok = False
        return _op(name, size, ea, dn, ok)
    # opmode 4..6: Dn,<ea> or the "extended" forms that reuse modes 0 and 1.
    if mode in (0, 1):
        if xname:                                   # ADDX / SUBX
            if mode == 0:
                return _op(xname, size, 'D%d' % reg, dn)
            return _op(xname, size, '-(A%d)' % reg, '-(A%d)' % r9)
        if bcd:
            if opmode == 4:                         # ABCD / SBCD
                if mode == 0:
                    return _op(bcd[0], 'B', 'D%d' % reg, dn)
                return _op(bcd[0], 'B', '-(A%d)' % reg, '-(A%d)' % r9)
            return bcd[1](op, opmode, mode, reg, r9)
    ea, ok = _ea(op, EA_MEM_ALT)
    return _op(name, size, dn, ea, ok)


def _line8_ext(op, opmode, mode, reg, r9):
    name = 'PACK' if opmode == 5 else 'UNPK'
    if mode == 0:
        return _op(name, '', 'D%d,D%d' % (reg, r9), '#<adj>')
    return _op(name, '', '-(A%d),-(A%d)' % (reg, r9), '#<adj>')


def _lineC_ext(op, opmode, mode, reg, r9):
    if opmode == 5:
        if mode == 0:
            return _op('EXG', 'L', 'D%d' % r9, 'D%d' % reg)
        return _op('EXG', 'L', 'A%d' % r9, 'A%d' % reg)
    if mode == 1:
        return _op('EXG', 'L', 'D%d' % r9, 'A%d' % reg)
    return ILLEGAL


def _lineB(op):
    mode, reg = (op >> 3) & 7, op & 7
    opmode = (op >> 6) & 7
    r9 = (op >> 9) & 7
    if opmode in (3, 7):
        ea, ok = _ea(op, EA_ALL)
        return _op('CMPA', 'L' if opmode == 7 else 'W', ea, 'A%d' % r9, ok)
    size = _SIZES[opmode & 3]
    if opmode < 4:
        ea, ok = _ea(op, EA_ALL)
        if mode == 1 and size == 'B':
            ok = False
        return _op('CMP', size, ea, 'D%d' % r9, ok)
    if mode == 1:
        return _op('CMPM', size, '(A%d)+' % reg, '(A%d)+' % r9)
    ea, ok = _ea(op, EA_DATA_ALT)
    return _op('EOR', size, 'D%d' % r9, ea, ok)


_SHIFT = ('AS', 'LS', 'ROX', 'RO')
_BITFIELD = ('BFTST', 'BFEXTU', 'BFCHG', 'BFEXTS', 'BFCLR', 'BFFFO', 'BFSET', 'BFINS')


def _lineE(op):
    mode, reg = (op >> 3) & 7, op & 7
    ss = (op >> 6) & 3
    direction = 'L' if op & 0x0100 else 'R'
    if ss != 3:
        kind = _SHIFT[(op >> 3) & 3]
        count = (op >> 9) & 7
        src = 'D%d' % count if op & 0x20 else '#%d' % (count or 8)
        return _op(kind + direction, _SIZES[ss], src, 'D%d' % reg)
    if not op & 0x0800:
        ea, ok = _ea(op, EA_MEM_ALT)
        return _op(_SHIFT[(op >> 9) & 3] + direction, 'W', '', ea, ok)
    which = (op >> 8) & 7
    name = _BITFIELD[which]
    if which in (0, 1, 3, 5):                       # read-only bit field ops
        allowed = _mk(_DN) | EA_CTRL
    else:
        allowed = _mk(_DN) | EA_CTRL_ALT
    ea, ok = _ea(op, allowed)
    ea += '{ofs:wid}'
    if which in (1, 3, 5):
        return _op(name, '', ea, 'Dn', ok)
    if which == 7:
        return _op(name, '', 'Dn', ea, ok)
    return _op(name, '', '', ea, ok)


def _lineF(op):
    cpid = (op >> 9) & 7
    kind = (op >> 6) & 7
    mode, reg = (op >> 3) & 7, op & 7
    if cpid == 1:                                   # FPU (absent on the LC040)
        names = ('FPU general', 'FScc/FDBcc/FTRAPcc', 'FBcc.W', 'FBcc.L',
                 'FSAVE', 'FRESTORE', 'FPU (reserved)', 'FPU (reserved)')
        return _op('F-LINE', '', names[kind], ea_text(mode, reg) if kind in (0, 1, 4, 5) else '')
    if cpid == 2:                                   # 68040 cache / MMU control
        if kind in (0, 1, 2, 3):
            scope = ('', 'L', 'P', 'A')[mode & 3]
            cache = ('NC', 'DC', 'IC', 'BC')[kind]
            if scope == '':
                return ILLEGAL
            name = ('CPUSH' if mode & 4 else 'CINV') + scope
            return _op(name, '', cache, '' if scope == 'A' else '(A%d)' % reg)
        if kind == 4:
            if mode < 4:
                name = ('PFLUSHN', 'PFLUSH', 'PFLUSHAN', 'PFLUSHA')[mode]
                return _op(name, '', '' if mode >= 2 else '(A%d)' % reg, '')
            return ILLEGAL
        if kind == 5:                               # PTESTW / PTESTR (68040 only)
            if mode == 1:
                return _op('PTESTW', '', '(A%d)' % reg, '')
            if mode == 5:
                return _op('PTESTR', '', '(A%d)' % reg, '')
        return ILLEGAL
    if cpid == 3:                                   # MOVE16
        if kind == 0:
            if mode == 4:
                return _op('MOVE16', '', '(A%d)+' % reg, '(Ay)+')
            if mode < 4:
                forms = (('(A%d)+', '(xxx).L'), ('(xxx).L', '(A%d)+'),
                         ('(A%d)', '(xxx).L'), ('(xxx).L', '(A%d)'))[mode]
                src, dst = (f % reg if '%' in f else f for f in forms)
                return _op('MOVE16', '', src, dst)
        return ILLEGAL
    return _op('F-LINE', '', 'cpID %d' % cpid, '')


def decode(op):
    """Decode a 16-bit opcode word into an Op tuple."""
    line = op >> 12
    if line == 0:
        return _line0(op)
    if line in (1, 2, 3):
        return _move(op)
    if line == 4:
        return _line4(op)
    if line == 5:
        return _line5(op)
    if line == 6:
        return _line6(op)
    if line == 7:
        return _line7(op)
    if line == 8:
        return _arith(op, 'OR', None, ('DIVU', 'DIVS'), ('SBCD', _line8_ext))
    if line == 9:
        return _arith(op, 'SUB', 'SUBX', None, None)
    if line == 10:
        return _op('A-LINE', '', '$%04X' % op, '')
    if line == 11:
        return _lineB(op)
    if line == 12:
        return _arith(op, 'AND', None, ('MULU', 'MULS'), ('ABCD', _lineC_ext))
    if line == 13:
        return _arith(op, 'ADD', 'ADDX', None, None)
    if line == 14:
        return _lineE(op)
    return _lineF(op)


def text(op):
    """Conventional one-line rendering of the opcode word."""
    d = decode(op) if isinstance(op, int) else op
    name = d.name + ('.' + d.size if d.size else '')
    operands = ','.join(x for x in (d.src, d.dst) if x)
    s = ('%-9s %s' % (name, operands)).rstrip()
    if not d.legal and d.name != 'ILLEGAL':
        s += '   (illegal)'
    return s


if __name__ == '__main__':
    import sys
    for arg in sys.argv[1:]:
        value = int(arg, 16)
        print('%04X  %s' % (value, text(value)))
