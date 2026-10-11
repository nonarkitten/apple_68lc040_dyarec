"""PowerPC (32-bit, classic) instruction decoder used to regenerate the
Emulator sources.

The decoder is deliberately strict: a word is only decoded when every
reserved field is zero and the instruction can be written in a form that
assembles back to exactly the same 32 bits.  Anything else is returned as
None and emitted by the caller as a `.long`.

Operands are returned as typed tuples so the caller can substitute role
names for registers, symbolic names for CR bits, labels for branch targets
and structure-field names for displacements:

    ('r',   n)          general purpose register
    ('rz',  n)          register operand where r0 means the literal value 0
    ('f',   n)          floating point register
    ('crf', n)          condition register field 0..7
    ('crb', n)          condition register bit 0..31
    ('simm', v)         signed 16-bit immediate
    ('uimm', v)         unsigned 16-bit immediate
    ('n',   v)          small plain number (shift count, mask bit, TO, ...)
    ('mem', d, ra)      d(rA) memory operand, rA follows 'rz' rules
    ('tgt', addr)       branch target (absolute offset in the image)
"""

from collections import namedtuple

Insn = namedtuple('Insn', 'mnem ops')


def _sx(v, bits):
    return v - (1 << bits) if v & (1 << (bits - 1)) else v


# ---------------------------------------------------------------------------
# Opcode 31 tables
# ---------------------------------------------------------------------------

# rD, rA, rB arithmetic with OE and Rc.
_ARITH3 = {
    8: 'subfc', 10: 'addc', 40: 'subf', 136: 'subfe', 138: 'adde',
    235: 'mullw', 266: 'add', 459: 'divwu', 491: 'divw',
}
# rD, rA arithmetic with OE and Rc (rB field reserved).
_ARITH2 = {104: 'neg', 200: 'subfze', 202: 'addze', 232: 'subfme', 234: 'addme'}
# rD, rA, rB with Rc but no OE.
_MULH = {11: 'mulhwu', 75: 'mulhw'}
# rA, rS, rB logical with Rc.
_LOGIC3 = {
    24: 'slw', 28: 'and', 60: 'andc', 124: 'nor', 284: 'eqv', 316: 'xor',
    412: 'orc', 444: 'or', 476: 'nand', 536: 'srw', 792: 'sraw',
}
# rA, rS with Rc (rB field reserved).
_LOGIC2 = {26: 'cntlzw', 922: 'extsh', 954: 'extsb'}
# rD, rA|0, rB indexed loads / stores (no update).
_INDEXED = {
    23: 'lwzx', 87: 'lbzx', 279: 'lhzx', 343: 'lhax',
    151: 'stwx', 215: 'stbx', 407: 'sthx',
    534: 'lwbrx', 790: 'lhbrx', 662: 'stwbrx', 918: 'sthbrx',
    20: 'lwarx', 533: 'lswx', 661: 'stswx',
}
# rD, rA, rB indexed loads / stores with update.
_INDEXED_U = {
    55: 'lwzux', 119: 'lbzux', 311: 'lhzux', 375: 'lhaux',
    183: 'stwux', 247: 'stbux', 439: 'sthux',
}
# rA|0, rB cache management (rD field reserved).
_CACHE = {54: 'dcbst', 86: 'dcbf', 246: 'dcbtst', 278: 'dcbt', 982: 'icbi', 1014: 'dcbz'}

_SPR_NAMES = {1: 'xer', 8: 'lr', 9: 'ctr'}

_LOADSTORE = {
    32: 'lwz', 33: 'lwzu', 34: 'lbz', 35: 'lbzu', 36: 'stw', 37: 'stwu',
    38: 'stb', 39: 'stbu', 40: 'lhz', 41: 'lhzu', 42: 'lha', 43: 'lhau',
    44: 'sth', 45: 'sthu', 46: 'lmw', 47: 'stmw',
}
_UPDATE_FORMS = {33, 35, 37, 39, 41, 43, 45}

_CR_LOGIC = {
    33: 'crnor', 129: 'crandc', 193: 'crxor', 225: 'crnand',
    257: 'crand', 289: 'creqv', 417: 'crorc', 449: 'cror',
}

# Condition names indexed by (branch-if-true, bit within the CR field).
COND_TRUE = ('lt', 'gt', 'eq', 'so')
COND_FALSE = ('ge', 'le', 'ne', 'ns')


def _branch_cond(bo, bi, suffix, extra, flag_bits):
    """Build the mnemonic and leading operands for a conditional branch.

    suffix is '', 'lr' or 'ctr' followed by an optional 'l' (LK).
    extra is the list of trailing operands (the target, if any).
    flag_bits is the set of CR bits that are named flags and therefore read
    better as `bt flag` / `bf flag` than as a condition mnemonic.
    Returns an Insn or None when the BO value has no clean spelling.
    """
    y = bo & 1
    base = bo & 0x1E
    kind, lk = suffix, ''
    if suffix in ('l', 'lrl', 'ctrl'):
        kind, lk = suffix[:-1], 'l'
    crf, bit = bi >> 2, bi & 3

    if base == 20:                      # branch always
        if y or bi:
            return None
        if kind == '':
            return None                 # `bc 20,0,target` - never emitted by assemblers
        return Insn('b' + kind + lk, extra)

    if base in (16, 18):                # decrement CTR, branch if CTR != 0 / == 0
        if y or bi or kind == 'ctr':
            return None
        return Insn(('bdnz' if base == 16 else 'bdz') + kind + lk, extra)

    if base in (0, 2, 8, 10):           # decrement CTR and test a CR bit
        if y or kind == 'ctr':
            return None
        name = {0: 'bdnzf', 2: 'bdzf', 8: 'bdnzt', 10: 'bdzt'}[base]
        return Insn(name + kind + lk, [('crb', bi)] + extra)

    if base in (4, 12):                 # plain CR bit test
        true = base == 12
        if y:
            # Old-style static prediction bit: spelled with a macro because
            # modern assemblers encode +/- using the newer "at" bits.
            if lk:
                return None
            if kind:
                hint = '_likely'
            else:
                hint = None             # direction dependent, filled in by caller
            return Insn(('bt' if true else 'bf') + kind + (hint or '_Y'),
                        [('crb', bi)] + extra)
        if bi in flag_bits:
            return Insn(('bt' if true else 'bf') + kind + lk, [('crb', bi)] + extra)
        cond = (COND_TRUE if true else COND_FALSE)[bit]
        ops = ([('crf', crf)] if crf else []) + extra
        return Insn('b' + cond + kind + lk, ops)

    return None


def decode(w, addr, flag_bits=frozenset()):
    """Decode one instruction word located at image offset `addr`.

    Returns an Insn, or None if the word should be emitted as data.
    """
    op = w >> 26
    rd = (w >> 21) & 31
    ra = (w >> 16) & 31
    rb = (w >> 11) & 31
    simm = _sx(w & 0xFFFF, 16)
    uimm = w & 0xFFFF
    rc = w & 1

    if w == 0x60000000:
        return Insn('nop', [])

    if op == 3:
        return Insn('twi', [('n', rd), ('r', ra), ('simm', simm)])
    if op == 7:
        return Insn('mulli', [('r', rd), ('r', ra), ('simm', simm)])
    if op == 8:
        return Insn('subfic', [('r', rd), ('r', ra), ('simm', simm)])
    if op in (10, 11):
        if rd & 3:                      # reserved bit / L=1 (64-bit compare)
            return None
        crf = rd >> 2
        ops = ([('crf', crf)] if crf else [])
        if op == 10:
            return Insn('cmplwi', ops + [('r', ra), ('uimm', uimm)])
        return Insn('cmpwi', ops + [('r', ra), ('simm', simm)])
    if op == 12:
        return Insn('addic', [('r', rd), ('r', ra), ('simm', simm)])
    if op == 13:
        return Insn('addic.', [('r', rd), ('r', ra), ('simm', simm)])
    if op == 14:
        if ra == 0:
            return Insn('li', [('r', rd), ('simm', simm)])
        return Insn('addi', [('r', rd), ('r', ra), ('simm', simm)])
    if op == 15:
        if ra == 0:
            return Insn('lis', [('r', rd), ('uimm', uimm)])
        return Insn('addis', [('r', rd), ('r', ra), ('simm', simm)])

    if op == 16:
        if w & 2:                       # absolute conditional branches: unused
            return None
        target = (addr + _sx(w & 0xFFFC, 16)) & 0xFFFFFFFF
        ins = _branch_cond(rd, ra, 'l' if rc else '', [('tgt', target)], flag_bits)
        if ins and ins.mnem.endswith('_Y'):
            hint = '_likely' if target > addr else '_unlikely'
            ins = Insn(ins.mnem[:-2] + hint, ins.ops)
        return ins

    if op == 17:
        return Insn('sc', []) if w == 0x44000002 else None

    if op == 18:
        if w & 2:
            return None
        target = (addr + _sx(w & 0x03FFFFFC, 26)) & 0xFFFFFFFF
        return Insn('bl' if rc else 'b', [('tgt', target)])

    if op == 19:
        xo = (w >> 1) & 0x3FF
        if xo in (16, 528):
            if rb:
                return None
            suffix = ('lr' if xo == 16 else 'ctr') + ('l' if rc else '')
            return _branch_cond(rd, ra, suffix, [], flag_bits)
        if rc:
            return None
        if xo == 0:
            if (rd & 3) or (ra & 3) or rb:
                return None
            return Insn('mcrf', [('crf', rd >> 2), ('crf', ra >> 2)])
        if xo in _CR_LOGIC:
            name = _CR_LOGIC[xo]
            if xo == 289 and rd == ra == rb:
                return Insn('crset', [('crb', rd)])
            if xo == 193 and rd == ra == rb:
                return Insn('crclr', [('crb', rd)])
            if xo == 449 and ra == rb:
                return Insn('crmove', [('crb', rd), ('crb', ra)])
            if xo == 33 and ra == rb:
                return Insn('crnot', [('crb', rd), ('crb', ra)])
            return Insn(name, [('crb', rd), ('crb', ra), ('crb', rb)])
        if xo == 50 and w == 0x4C000064:
            return Insn('rfi', [])
        if xo == 150 and w == 0x4C00012C:
            return Insn('isync', [])
        return None

    if op in (20, 21):
        sh, mb, me = rb, (w >> 6) & 31, (w >> 1) & 31
        dot = '.' if rc else ''
        if op == 20:
            return Insn('rlwimi' + dot,
                        [('r', ra), ('r', rd), ('n', sh), ('n', mb), ('n', me)])
        # rlwinm: prefer the common simplified spellings.
        if mb == 0 and me == 31 - sh and sh:
            return Insn('slwi' + dot, [('r', ra), ('r', rd), ('n', sh)])
        if me == 31 and sh == 32 - mb and mb:
            return Insn('srwi' + dot, [('r', ra), ('r', rd), ('n', mb)])
        if sh == 0 and me == 31 and mb:
            return Insn('clrlwi' + dot, [('r', ra), ('r', rd), ('n', mb)])
        if sh == 0 and mb == 0 and me != 31:
            return Insn('clrrwi' + dot, [('r', ra), ('r', rd), ('n', 31 - me)])
        if mb == 0 and me == 31 and sh:
            return Insn('rotlwi' + dot, [('r', ra), ('r', rd), ('n', sh)])
        return Insn('rlwinm' + dot,
                    [('r', ra), ('r', rd), ('n', sh), ('n', mb), ('n', me)])
    if op == 23:
        mb, me = (w >> 6) & 31, (w >> 1) & 31
        return Insn('rlwnm' + ('.' if rc else ''),
                    [('r', ra), ('r', rd), ('r', rb), ('n', mb), ('n', me)])

    if op in (24, 25, 26, 27, 28, 29):
        name = {24: 'ori', 25: 'oris', 26: 'xori', 27: 'xoris',
                28: 'andi.', 29: 'andis.'}[op]
        return Insn(name, [('r', ra), ('r', rd), ('uimm', uimm)])

    if op == 31:
        return _decode31(w, rd, ra, rb, rc)

    if op in _LOADSTORE:
        if op in _UPDATE_FORMS:
            # Update forms with rA == 0 (or rA == rD for loads) are invalid.
            if ra == 0:
                return None
            return Insn(_LOADSTORE[op], [('r', rd), ('mem', simm, ('r', ra))])
        return Insn(_LOADSTORE[op], [('r', rd), ('mem', simm, ('rz', ra))])

    return None


def _decode31(w, rd, ra, rb, rc):
    xo = (w >> 1) & 0x3FF
    dot = '.' if rc else ''
    oe = 'o' if xo & 0x200 else ''
    xo9 = xo & 0x1FF

    if xo9 in _ARITH3 and (xo in _ARITH3 or xo - 512 in _ARITH3):
        return Insn(_ARITH3[xo9] + oe + dot, [('r', rd), ('r', ra), ('r', rb)])
    if xo9 in _ARITH2 and (xo in _ARITH2 or xo - 512 in _ARITH2):
        if rb:
            return None
        return Insn(_ARITH2[xo9] + oe + dot, [('r', rd), ('r', ra)])
    if xo in _MULH:
        return Insn(_MULH[xo] + dot, [('r', rd), ('r', ra), ('r', rb)])
    if xo in _LOGIC3:
        if xo == 444 and rd == rb and not rc:
            return Insn('mr', [('r', ra), ('r', rd)])
        if xo == 124 and rd == rb and not rc:
            return Insn('not', [('r', ra), ('r', rd)])
        return Insn(_LOGIC3[xo] + dot, [('r', ra), ('r', rd), ('r', rb)])
    if xo in _LOGIC2:
        if rb:
            return None
        return Insn(_LOGIC2[xo] + dot, [('r', ra), ('r', rd)])
    if xo == 824:
        return Insn('srawi' + dot, [('r', ra), ('r', rd), ('n', rb)])

    if rc and xo != 150:
        return None

    if xo in (0, 32):
        if rd & 3:
            return None
        crf = rd >> 2
        ops = [('crf', crf)] if crf else []
        return Insn('cmpw' if xo == 0 else 'cmplw', ops + [('r', ra), ('r', rb)])
    if xo == 4:
        return Insn('tw', [('n', rd), ('r', ra), ('r', rb)])
    if xo == 19:
        return None if (ra or rb) else Insn('mfcr', [('r', rd)])
    if xo == 144:
        if (w >> 20) & 1 or (w >> 11) & 1:
            return None
        mask = (w >> 12) & 0xFF
        if mask == 0xFF:
            return Insn('mtcr', [('r', rd)])
        return Insn('mtcrf', [('n', mask), ('r', rd)])
    if xo in (339, 467):
        spr = ra | (rb << 5)
        if spr not in _SPR_NAMES:
            return None
        return Insn(('mf' if xo == 339 else 'mt') + _SPR_NAMES[spr], [('r', rd)])
    if xo == 371:
        tbr = ra | (rb << 5)
        if tbr == 268:
            return Insn('mftb', [('r', rd)])
        if tbr == 269:
            return Insn('mftbu', [('r', rd)])
        return None
    if xo == 512:
        if (rd & 3) or ra or rb:
            return None
        return Insn('mcrxr', [('crf', rd >> 2)])
    if xo == 150:
        return Insn('stwcx.', [('r', rd), ('rz', ra), ('r', rb)]) if rc else None
    if xo in _INDEXED:
        return Insn(_INDEXED[xo], [('r', rd), ('rz', ra), ('r', rb)])
    if xo in _INDEXED_U:
        if ra == 0:
            return None
        return Insn(_INDEXED_U[xo], [('r', rd), ('r', ra), ('r', rb)])
    if xo in (597, 725):
        return Insn('lswi' if xo == 597 else 'stswi', [('r', rd), ('rz', ra), ('n', rb)])
    if xo in _CACHE:
        if rd:
            return None
        return Insn(_CACHE[xo], [('rz', ra), ('r', rb)])
    if xo == 598:
        return Insn('sync', []) if w == 0x7C0004AC else None
    if xo == 854:
        return Insn('eieio', []) if w == 0x7C0006AC else None
    return None
