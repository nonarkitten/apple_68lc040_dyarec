# 4. Effective Addresses

A 68K effective address is a 3-bit mode and a 3-bit register number. Since
both are part of the opcode word, each combination has its own dispatch
table entries, and the work of computing the address is divided between the
table entry and, for the harder modes, an effective address routine.

## How each mode is handled

The examples are the table entries for `TST.L <ea>` with register A0. The
operation's own routine is `test_data` (set N and Z from `data`, clear V
and C).

| Mode | Syntax | Where the work is done |
|---|---|---|
| 0 | `Dn` | In the entry. The register is named directly. |
| 1 | `An` | In the entry. |
| 2 | `(An)` | In the entry: `lwz data, 0(a0)` or, when the address is needed, `mr addr, a0`. |
| 3 | `(An)+` | Effective address routine: the entry loads `rtn_addr` and branches to `fea_l_30`. |
| 4 | `-(An)` | In the entry, using a PowerPC update-form load (`lwzu data, -4(a0)`), or by decrementing the register and branching to the entry for mode 2. |
| 5 | `(d16,An)` | In the entry: the displacement is already in `prefetch_data`, so `lwzx data, a0, prefetch_data` fetches the operand. The routine then steps over the extension word. |
| 6 | `(d8,An,Xn)` and the 68020 full formats | Effective address routine (`fea_l_60_2`), using the indexed decode table. |
| 7.0 | `(xxx).W` | In the entry: `lwz data, 0(prefetch_data)` — the sign-extended extension word *is* the address. |
| 7.1 | `(xxx).L` | Effective address routine (`fea_l_71_2`). |
| 7.2 | `(d16,PC)` | In the entry: `lwzx data, pc, prefetch_data`. This works because `pc` points at the extension word, which is the base the 68K defines for the displacement. |
| 7.3 | `(d8,PC,Xn)` | Effective address routine (`fea_l_73_2`). |
| 7.4 | `#<data>` | In the entry or the routine: word immediates are in `prefetch_data`; long immediates are read with `lwz …, 0(pc)`. |

Stack pointer special cases follow from the opcode-per-entry design: the
entries for byte-sized `(A7)+` and `-(A7)` adjust by 2 rather than 1
without any test at run time.

## Effective address routines

### Calling convention

The dispatch table entry cannot make a subroutine call and then continue,
because it only has two instructions. Instead it passes the address of the
operation's routine as a parameter:

```
        ori     rtn_addr, code_ptr, test_data - cb      // 4A98  TST.L (A0)+
        b       fea_l_30
```

The effective address routine moves `rtn_addr` to LR, does its work and
returns with `blr` — into the operation's routine:

```
fea_l_30:
        mtlr    rtn_addr
        lwz     data, 0(a0)
        addi    a0, a0, 4
        blr
```

`rtn_addr` may be used as a scratch register once it has been moved to LR
(or CTR).

Register conventions on return (from US patent 5,574,873, and as the code
behaves):

| Register | Contents |
|---|---|
| `addr` | The effective address, for routines that compute one |
| `data` | The operand read from that address, for "fetch" routines; otherwise unchanged |
| `immed_data` | For the variants used by immediate instructions: the immediate operand or opcode extension word that preceded the address extension words |
| `base_disp`, `rtn_addr` | Scratch |

### Names

The routines are named after the pattern visible in the patent
(`cea_l_30`):

```
    cea_<size>_<mode><register>     compute effective address
    fea_<size>_<mode><register>     compute it and fetch the operand
```

`<size>` is `b`, `w` or `l`, or `x` where one routine serves several sizes.
`<mode>` and `<register>` are the two 3-bit fields of the 68K effective
address, so `fea_w_33` handles `(A3)+` for word operands and `cea_x_71`
handles `(xxx).L`. The prefix `fea_` is this project's choice; only `cea_`
is attested.

Where two routines exist for one mode and size, the first is the entry for
instructions that have an immediate operand ahead of the address extension
words (`ORI`, `ADDI`, `CMPI`, `BTST #`, …): it collects the immediate into
`immed_data` and falls into the second, which has the suffix `_2` and is
the entry for everything else.

Routines exist for `(An)+` (one per register and size, at `00800`–`00BFF`),
for the indexed modes (`05980`–`05CDF`), and for `(xxx).L` and
`(d8,PC,Xn)` (`05E00`–`05F3F`).

## Indexed addressing

The indexed modes take an extension word:

```
 15   14-12   11   10-9   8    7-0
 D/A  reg     W/L  scale  0    d8             brief format
 D/A  reg     W/L  scale  1    BS IS BDsz 0 I/IS    full format (68020)
```

### The indexed decode table

The first 2 KB of the image (`cb`, offsets `00000`–`007FF`) is a second
table of two-instruction entries: 256 of them, indexed by the *high byte*
of the extension word. The high byte contains the index register, its size,
the scale and the format bit, so — just as with opcodes — every combination
has code written specifically for it.

The caller (for example `fea_l_60_2`) does:

```
        extsb   base_disp, prefetch_data        // d8, sign-extended
        add     addr, base_disp, a0             // base + d8, optimistically
        ...
ea_indexed_dispatch:
        mtctr   rtn_addr                        // operation routine -> CTR
        rlwinm  rtn_addr, prefetch_data, 27, 21, 28   // high byte * 8
        add     rtn_addr, rtn_addr, code_ptr
        mtlr    rtn_addr
        lhau    prefetch_data, 2(pc)            // PREFETCH: consume the word
        blrl                                    // call the table entry
        lwz     data, 0(addr)                   // fetch the operand
        bctr                                    // on to the operation
```

The sixteen entries for one index register (here D0) are:

```
        extsh   rtn_addr, d0            // word index, scale 1, brief
        b       ea_add_index
        extsh   rtn_addr, d0            // word index, scale 1, full format
        b       ea_full_format
        extsh   rtn_addr, d0            // word index, scale 2, brief
        b       ea_add_index_x2
        ...
        add     addr, addr, d0          // long index, scale 1, brief:
        blr                             //   finished in the entry
        mr      rtn_addr, d0            // long index, scale 1, full format
        b       ea_full_format
        slwi    rtn_addr, d0, 1         // long index, scale 2, brief
        b       ea_add_index
        ...
```

The commonest case — a long index with no scaling — completes in the table
entry itself.

### Full-format extension words

`ea_full_format` (`05F84`, with entries that first apply the scale) handles
the 68020 forms. It copies the low byte of the extension word into CR6 and
CR7 with one `mtcrf` and then branches on individual bits:

| CR bit | Extension word field |
|---|---|
| cr6.lt | BS — suppress the base register |
| cr6.gt | IS — suppress the index |
| cr6.eq, cr6.so | Base displacement size: null, word or long |
| cr7.gt, cr7.eq, cr7.so | I/IS — no indirection, pre-indexed or post-indexed, and the outer displacement size |

It first subtracts the `d8` that the caller added, since a full-format word
has no 8-bit displacement, then adds the base displacement, performs the
memory indirection and adds the outer displacement as required, reading the
extra words from the instruction stream with the usual prefetch
instructions. Reserved combinations return the address `0xDEADBEEF`
(`ea_reserved_format`).

## Memory access

Operands are read and written with ordinary PowerPC load and store
instructions on the 68K address. There is no address translation, range
check or byte swap in the emulator: 68K memory is the PowerPC address
space, and both processors are big-endian. Unaligned word and long accesses
rely on the host processor performing them.

A 68K access to an invalid address therefore becomes a PowerPC data access
exception. The kernel passes it to `native_exception_handler`, which turns
it into a 68K bus error; see [06-exceptions.md](06-exceptions.md).
