"""A small PowerPC simulator for running pieces of the emulator image.

It implements the user-mode integer instructions the image uses, with a
sparse big-endian memory.  It is not fast and not complete: an instruction
it does not know raises Unimplemented, which is the cue to add it.

    machine = Machine()
    machine.load(0x68060000, image_bytes)
    machine.r[31] = state_block
    machine.pc = 0x68060000 + offset
    machine.run(stop={address, ...}, limit=10000)

The emulator is position independent; LOAD_ADDRESS is where the Power
Macintosh 8600/9600 ROM maps it (docs/13-rom-context.md).
"""

LOAD_ADDRESS = 0x68060000
M32 = 0xFFFFFFFF


class Unimplemented(Exception):
    pass


class Limit(Exception):
    pass


def _signed(value):
    return value - (1 << 32) if value & 0x80000000 else value


def _sext16(value):
    return value - 0x10000 if value & 0x8000 else value


def _mask(mb, me):
    if mb <= me:
        return ((1 << (me - mb + 1)) - 1) << (31 - me)
    return M32 ^ (((1 << (mb - me - 1)) - 1) << (31 - mb + 1))


def _rotl(value, count):
    count &= 31
    return ((value << count) | (value >> (32 - count))) & M32 if count else value


class Machine:
    def __init__(self):
        self.r = [0] * 32
        self.cr = 0
        self.lr = self.ctr = self.pc = 0
        self.ca = self.ov = self.so = 0
        self.xer_count = 0
        self.mem = {}                   # address -> byte, for everything written
        self.images = []                # (start, end, bytes): read-only until written over
        self.steps = 0

    # -- memory --------------------------------------------------------------

    def load(self, address, data):
        """Map a block of initial memory contents (shared, never modified)."""
        self.images.append((address, address + len(data), bytes(data)))

    def read(self, address, size):
        mem = self.mem
        value = 0
        for address in range(address, address + size):
            address &= M32
            byte = mem.get(address)
            if byte is None:
                byte = 0
                for start, end, data in self.images:
                    if start <= address < end:
                        byte = data[address - start]
                        break
            value = (value << 8) | byte
        return value

    def write(self, address, size, value):
        for offset in range(size):
            self.mem[(address + offset) & M32] = (value >> (8 * (size - 1 - offset))) & 0xFF

    # -- condition register ----------------------------------------------------

    def set_crf(self, field, bits):
        shift = 28 - 4 * field
        self.cr = (self.cr & ~(0xF << shift) | (bits << shift)) & M32

    def crbit(self, bit):
        return (self.cr >> (31 - bit)) & 1

    def set_crbit(self, bit, value):
        self.cr = (self.cr & ~(1 << (31 - bit)) | ((value & 1) << (31 - bit))) & M32

    def record(self, value):
        signed = _signed(value)
        self.set_crf(0, (8 if signed < 0 else 4 if signed > 0 else 2) | self.so)

    def compare(self, field, a, b):
        self.set_crf(field, (8 if a < b else 4 if a > b else 2) | self.so)

    # -- execution -------------------------------------------------------------

    def run(self, stop=(), limit=100000):
        """Execute until pc is in `stop`; return that pc."""
        stop = set(stop)
        for _ in range(limit):
            if self.pc in stop:
                return self.pc
            self.step()
        raise Limit('no stop address reached in %d steps (pc %08X)' % (limit, self.pc))

    def branch_taken(self, bo, bi):
        if not bo & 4:
            self.ctr = (self.ctr - 1) & M32
        ctr_ok = bool(bo & 4) or ((self.ctr != 0) != bool(bo & 2))
        cond_ok = bool(bo & 16) or (self.crbit(bi) == ((bo >> 3) & 1))
        return ctr_ok and cond_ok

    def step(self):
        self.steps += 1
        pc = self.pc
        w = self.read(pc, 4)
        op = w >> 26
        rd, ra, rb = (w >> 21) & 31, (w >> 16) & 31, (w >> 11) & 31
        simm, uimm = _sext16(w & 0xFFFF), w & 0xFFFF
        r = self.r
        nxt = (pc + 4) & M32

        if op == 14:                                    # addi
            r[rd] = ((r[ra] if ra else 0) + simm) & M32
        elif op == 15:                                  # addis
            r[rd] = ((r[ra] if ra else 0) + (simm << 16)) & M32
        elif op in (12, 13):                            # addic, addic.
            total = r[ra] + (simm & M32)
            r[rd], self.ca = total & M32, total >> 32
            if op == 13:
                self.record(r[rd])
        elif op == 8:                                   # subfic
            total = (r[ra] ^ M32) + (simm & M32) + 1
            r[rd], self.ca = total & M32, total >> 32
        elif op == 7:                                   # mulli
            r[rd] = (_signed(r[ra]) * simm) & M32
        elif op == 10:                                  # cmplwi
            self.compare(rd >> 2, r[ra], uimm)
        elif op == 11:                                  # cmpwi
            self.compare(rd >> 2, _signed(r[ra]), simm)
        elif op == 18:                                  # b, bl
            disp = w & 0x03FFFFFC
            if disp & 0x02000000:
                disp -= 0x04000000
            if w & 1:
                self.lr = nxt
            nxt = (pc + disp) & M32
        elif op == 16:                                  # bc
            if self.branch_taken(rd, ra):
                if w & 1:
                    self.lr = nxt
                nxt = (pc + _sext16(w & 0xFFFC)) & M32
            elif w & 1:
                self.lr = nxt
        elif op == 19:
            nxt = self.op19(w, rd, ra, rb, nxt)
        elif op in (20, 21, 23):                        # rlwimi, rlwinm, rlwnm
            mask = _mask((w >> 6) & 31, (w >> 1) & 31)
            rotated = _rotl(r[rd], r[rb] if op == 23 else rb)
            r[ra] = (rotated & mask) | (r[ra] & ~mask & M32 if op == 20 else 0)
            if w & 1:
                self.record(r[ra])
        elif op in (24, 25):                            # ori, oris
            r[ra] = r[rd] | (uimm << (16 if op == 25 else 0))
        elif op in (26, 27):                            # xori, xoris
            r[ra] = r[rd] ^ (uimm << (16 if op == 27 else 0))
        elif op in (28, 29):                            # andi., andis.
            r[ra] = r[rd] & (uimm << (16 if op == 29 else 0))
            self.record(r[ra])
        elif op == 31:
            self.op31(w, rd, ra, rb)
        elif 32 <= op <= 45:                            # loads and stores
            size = {32: 4, 33: 4, 34: 1, 35: 1, 36: 4, 37: 4, 38: 1, 39: 1,
                    40: 2, 41: 2, 42: 2, 43: 2, 44: 2, 45: 2}[op]
            update = op & 1
            address = ((r[ra] if ra or update else 0) + simm) & M32
            if op in (36, 37, 38, 39, 44, 45):
                self.write(address, size, r[rd])
            else:
                value = self.read(address, size)
                r[rd] = _sext16(value) & M32 if op in (42, 43) else value
            if update:
                r[ra] = address
        elif op in (46, 47):                            # lmw, stmw
            address = ((r[ra] if ra else 0) + simm) & M32
            for reg in range(rd, 32):
                if op == 46:
                    r[reg] = self.read(address, 4)
                else:
                    self.write(address, 4, r[reg])
                address += 4
        else:
            raise Unimplemented('%08X: %08X' % (pc, w))
        self.pc = nxt

    def op19(self, w, rd, ra, rb, nxt):
        xo = (w >> 1) & 0x3FF
        if xo in (16, 528):                             # bclr, bcctr
            target = self.lr if xo == 16 else self.ctr
            if self.branch_taken(rd | (4 if xo == 528 else 0), ra):
                if w & 1:
                    self.lr = nxt
                return target & ~3 & M32
            if w & 1:
                self.lr = nxt
            return nxt
        if xo == 0:                                     # mcrf
            self.set_crf(rd >> 2, (self.cr >> (28 - 4 * (ra >> 2))) & 0xF)
            return nxt
        a, b = self.crbit(ra), self.crbit(rb)
        logic = {33: 1 ^ (a | b), 129: a & (1 ^ b), 193: a ^ b, 225: 1 ^ (a & b),
                 257: a & b, 289: 1 ^ (a ^ b), 417: a | (1 ^ b), 449: a | b}
        if xo not in logic:
            raise Unimplemented('%08X: %08X' % (self.pc, w))
        self.set_crbit(rd, logic[xo])
        return nxt

    def op31(self, w, rd, ra, rb):
        r = self.r
        xo = (w >> 1) & 0x3FF
        rc = w & 1
        a, b, s = r[ra], r[rb], r[rd]
        base = a if ra else 0
        result = None                                   # value for rD-style destinations
        logical = None                                  # value for rA-style destinations

        if xo == 0:
            self.compare(rd >> 2, _signed(a), _signed(b))
        elif xo == 32:
            self.compare(rd >> 2, a, b)
        elif xo & 0x1FF in (266, 10, 40, 8, 138, 136, 202, 200, 104, 235):
            kind = xo & 0x1FF
            if kind in (266, 10):                       # add, addc
                total = a + b
            elif kind in (40, 8):                       # subf, subfc
                total = (a ^ M32) + b + 1
            elif kind == 138:                           # adde
                total = a + b + self.ca
            elif kind == 136:                           # subfe
                total = (a ^ M32) + b + self.ca
            elif kind == 202:                           # addze
                total = a + self.ca
            elif kind == 200:                           # subfze
                total = (a ^ M32) + self.ca
            elif kind == 104:                           # neg
                total = (a ^ M32) + 1
            else:                                       # mullw
                total = (_signed(a) * _signed(b)) & M32
            result = total & M32
            if kind not in (266, 40, 104, 235):
                self.ca = (total >> 32) & 1
            if xo & 0x200:                              # OE
                if kind in (266, 10, 138):
                    overflow = (~(a ^ b) & (a ^ result)) >> 31 & 1
                elif kind in (40, 8, 136):
                    overflow = ((a ^ b) & (b ^ result)) >> 31 & 1
                elif kind == 104:
                    overflow = int(a == 0x80000000)
                else:
                    overflow = int(kind == 235 and _signed(a) * _signed(b) != _signed(result))
                self.ov = overflow
                self.so |= overflow
        elif xo == 11:                                  # mulhwu
            result = (a * b) >> 32
        elif xo == 75:                                  # mulhw
            result = ((_signed(a) * _signed(b)) >> 32) & M32
        elif xo == 459:                                 # divwu
            result = a // b if b else 0
        elif xo == 28:
            logical = s & b
        elif xo == 60:
            logical = s & (b ^ M32)
        elif xo == 444:
            logical = s | b
        elif xo == 412:
            logical = s | (b ^ M32)
        elif xo == 316:
            logical = s ^ b
        elif xo == 124:
            logical = (s | b) ^ M32
        elif xo == 284:
            logical = (s ^ b) ^ M32
        elif xo == 476:
            logical = (s & b) ^ M32
        elif xo == 24:                                  # slw
            logical = (s << (b & 31)) & M32 if not b & 32 else 0
        elif xo == 536:                                 # srw
            logical = s >> (b & 31) if not b & 32 else 0
        elif xo in (792, 824):                          # sraw, srawi
            count = rb if xo == 824 else b & 63
            signed = _signed(s)
            if count > 31:
                count = 31 if signed >= 0 else 32
            logical = (signed >> min(count, 31)) & M32 if count < 32 else M32
            self.ca = int(signed < 0 and (s & ((1 << min(count, 32)) - 1)) != 0)
        elif xo == 26:                                  # cntlzw
            logical = 32 - s.bit_length()
        elif xo == 922:                                 # extsh
            logical = _sext16(s & 0xFFFF) & M32
        elif xo == 954:                                 # extsb
            logical = ((s & 0xFF) - 0x100 if s & 0x80 else s & 0xFF) & M32
        elif xo == 19:                                  # mfcr
            r[rd] = self.cr
        elif xo == 144:                                 # mtcrf
            for field in range(8):
                if (w >> 12) & (0x80 >> field):
                    self.set_crf(field, (s >> (28 - 4 * field)) & 0xF)
        elif xo in (339, 467):                          # mfspr, mtspr
            spr = ra | (rb << 5)
            if xo == 339:
                r[rd] = {1: (self.so << 31) | (self.ov << 30) | (self.ca << 29) | self.xer_count,
                         8: self.lr, 9: self.ctr}[spr]
            elif spr == 1:
                self.so, self.ov, self.ca = s >> 31, (s >> 30) & 1, (s >> 29) & 1
                self.xer_count = s & 0x7F
            elif spr == 8:
                self.lr = s
            elif spr == 9:
                self.ctr = s
            else:
                raise Unimplemented('SPR %d' % spr)
        elif xo in (23, 87, 279, 343, 55, 119, 311, 375):      # indexed loads
            size = {23: 4, 55: 4, 87: 1, 119: 1, 279: 2, 311: 2, 343: 2, 375: 2}[xo]
            update = xo in (55, 119, 311, 375)
            address = ((a if update else base) + b) & M32
            value = self.read(address, size)
            r[rd] = _sext16(value) & M32 if xo in (343, 375) else value
            if update:
                r[ra] = address
        elif xo in (151, 215, 407, 183, 247, 439):             # indexed stores
            size = {151: 4, 183: 4, 215: 1, 247: 1, 407: 2, 439: 2}[xo]
            update = xo in (183, 247, 439)
            address = ((a if update else base) + b) & M32
            self.write(address, size, s)
            if update:
                r[ra] = address
        elif xo in (54, 86, 278, 246, 982, 598, 854):          # cache hints, sync, eieio
            pass
        elif xo == 1014:                                        # dcbz (32-byte blocks)
            address = (base + b) & ~31 & M32
            for offset in range(32):
                self.mem[address + offset] = 0
        else:
            raise Unimplemented('%08X: %08X (31/%d)' % (self.pc, w, xo))

        if result is not None:
            r[rd] = result
            if rc:
                self.record(result)
        elif logical is not None:
            r[ra] = logical & M32
            if rc:
                self.record(r[ra])
