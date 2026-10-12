# 14. Checks and What They Found

Two kinds of mechanical check are applied to the emulator's code.

`tools/check.py` (`make static-check`) tests it against the 68K
instruction set without executing it. It relies on one fact: each of the
65,536 dispatch table entries is the start of a *known* 68K instruction,
so the instruction says what the code reached from that entry must do.

`tools/fuzz.py` (`make fuzz`) executes it: random 68K programs are run
both by the interpreter and through the dynamic recompiler, and the
results compared.

The checks also validate this project's own material. The comment on
every dispatch table entry comes from the 68K decoder in `tools/m68k.py`;
a disagreement between that decoder and the emulator shows up here.

Between them the checks found four defects in the original code, all in
corners that ordinary software does not reach. They are described under
[Findings](#findings).

## What is checked

### Legality

For every opcode, the decoder's verdict (valid 68LC040 instruction or
not) is compared with the emulator's treatment (a routine, or the illegal
instruction exception).

**Result: no disagreements.** Outside line A and line F, the emulator
implements exactly the 47,647 opcodes that are valid on a 68LC040, and
sends every other opcode to `take_illegal_instruction`. `BKPT` and
`ILLEGAL`, valid encodings whose defined behaviour is the illegal
instruction exception, are sent there too.

Line-F opcodes are not judged: all of them trap in one way or another.
The floating-point opcodes with a valid effective address reach
`take_fline` through their own handler table slots — the forty "exception
stubs" at `+0x89C`, one per kind of addressing mode — rather than through
`fline_handler`. Those slots default to `take_exception`, so the result
is the ordinary line-F exception unless the host has installed the
alternative routines (`install_exception_stubs`).

### `rtn_addr`

An effective address routine "returns" by moving `rtn_addr` to LR or CTR
and branching there ([04-effective-addresses.md](04-effective-addresses.md)).
The check confirms that every dispatch table entry which branches to such
a routine loads `rtn_addr` in its first instruction.

**Result: no violations.**

### Instruction length

On entry to a table entry, `pc` is 2 past the opcode; when the next
instruction is dispatched, `pc` must be 2 past *its* opcode
([03-dispatch.md](03-dispatch.md)). So along every path from an entry to
a DISPATCH, `pc` must advance by exactly the length of the instruction:
2 bytes plus 2 for each extension word.

The checker walks the PowerPC code from each entry, following both sides
of every conditional branch, calls and returns, branches into other table
entries, the `rtn_addr` convention, and calls through the handler table
(resolved to the default handlers). It tracks how far `pc` has been
advanced (`lhau …, n(pc)`, `addi pc, pc, n`) and which code addresses are
in LR, CTR and the registers used to pass them. A jump into the indexed
addressing decode table is treated as a routine that returns, and
instructions with an indexed operand may advance further than the minimum
(full-format extension words). Paths on which `pc` is loaded rather than
advanced — taken branches, jumps, returns, exceptions — are set aside.

**Result:**

| | Opcodes |
|---|---:|
| Length correct on every sequential path found | 46,141 |
| — of which some further path could not be followed | 225 |
| Correct on some paths, with other lengths on others (see below) | 534 |
| Wrong on every path | 8 |
| No sequential path could be followed (an unresolved jump, or a loop) | 467 |

The remaining 497 valid opcodes are control transfers and instructions
that always trap, which have no sequential path to check.

### The recompiler's first pass

The dynamic recompiler decides, for each instruction it translates, how
long the instruction is and which condition codes it writes; the rest of
the translation depends on both. `tools/drmap.py` obtains those
decisions by running the recompiler's first pass in a simulator
(`tools/ppcsim.py`) on all 65,536 opcodes, and the checker compares them
with the instruction set:

- the length must equal 2 bytes plus 2 for each extension word;
- the flags written must be those of the 68K instruction: none (`MOVEA`,
  `LEA`, `ADDA`, …), N Z V C (`MOVE`, logical operations, `CMP`, …), or
  all five (`ADD`, `SUB`, shifts, …).

- an instruction whose resulting flags depend on the old ones — one that
  changes only Z, or clears Z but never sets it — must be marked as
  reading them.

**Result:** no disagreements over 34,802 opcodes for length and 34,491 for
flags written. (Control transfers are excluded from the first, and
instructions involving the SR or CCR from the second.) The third rule
fails for `ADDX`; see Findings.

With `--translations` the checker also translates every translated
instruction on its own and examines the generated code, which must not
name r23: that register holds the recompiler's entry point and is not
part of the 68K's state. 37,642 translations are examined; 50 fail.

### Interpreter against recompiler

`tools/fuzz.py` builds random 68K programs: sixteen instructions that
load every register and the condition codes with random values, then a
random sequence drawn evenly from about eighty mnemonics (40,070 valid
opcodes), with random operands and occasional forward conditional
branches. Each program is run twice in the simulator
([11-testing-gaps.md](11-testing-gaps.md)), interpreted and recompiled,
and the registers, condition codes and all of memory are compared. A
program that differs is cut down automatically to the shortest one that
still does.

The two engines share the interpreter's routines for the complicated
instructions but have entirely separate code for the ones the recompiler
translates inline, and the recompiler adds its own decisions about
instruction lengths and flag liveness, so agreement is a real test of
both.

**Result:** 7 of the first 4,000 programs differed, all traced to the
two recompiler defects below. With the affected opcodes left out, 18,000
further programs (about 290,000 random instructions) ran identically.
The generator does not produce loops, calls, traps or self-modifying
code.

With `--rom` the same test is applied to the emulator build in a ROM
image. The first recompiling build agrees with itself on 6,000 programs,
and shows the first of the two defects when the affected opcodes are put
back ([15-build-history.md](15-build-history.md)).

## Findings

### A defect: `UNPK -(Ay),-(A7)`

Opcodes `8F88`–`8F8F` advance `pc` by 2 instead of 4.

`UNPK` has an adjustment word after the opcode. The general routine
(`pack_unpk_adjust`) executes `lhau rtn_addr, 2(pc)` — stepping over the
adjustment and collecting the next opcode in `rtn_addr` — before the
common code at `unpk_store`, which performs DECODE1 from `rtn_addr`. The
variant for a destination of `-(A7)`, `unpk_to_a7` (`0C2E8`), exists
because a byte predecrement of A7 moves it by 2; it calls `unpk_store`
directly and so skips that instruction. The next instruction is
therefore decoded from whatever `rtn_addr` last held, with `pc` 2 bytes
short.

Executing it confirms the analysis. Under `tools/run68k.py`, the program
`LEA $2004,A0` / `UNPK -(A0),-(A7),#0` / `MOVEQ #2,D1` ends with D1 still
zero and D0 equal to 2: the `MOVEQ` was dispatched as a different
opcode. With `-(A1)` as the destination the same program sets D1.

The instruction — unpacking a BCD byte onto the stack — is not one that
compilers or hand-written code used, so the defect has no practical
consequence. The same code is present in the earlier build in the Power
Macintosh 8600/9600 ROM.

### A defect: the recompiler reads r23 for A7 in word moves

`MOVE.W A7,<memory>` and `MOVEA.W A7,An` — 50 opcodes — are translated
into code that uses PowerPC register r23 where it should use r1.

The code generator `dr_emit_move_w` turns a register-direct source into
a PowerPC register number by adding the opcode's low four bits to 8.
That is right for D0–D7 (r8–r15) and A0–A6 (r16–r22), but A7 is r1, and
the formula gives r23 — the register that holds the address of
`dr_dispatch`. The generator's path for a data register destination
tests for A7 and handles it; the paths for memory destinations and for
`MOVEA.W` do not. `MOVE.L` and every other instruction are unaffected.

```
68K     3F4F 1064   MOVE.W  A7,$1064(A7)

        sth     dr_entry, 0x1064(a7)        // should be: sth a7, ...
        extsh   addr, dr_entry
        addco.  addr, addr, zero
```

Run interpreted, `MOVEA.W A7,A0` with A7 = `$00010000` leaves 0 in A0;
run recompiled it leaves whatever the low word of r23 was. Moving only
the low half of the stack pointer is not something programs do. The
defect is in the first recompiling build already
([15-build-history.md](15-build-history.md)).

### A defect: the recompiler does not know that ADDX reads Z

`ADDX` clears Z if its result is non-zero and otherwise leaves Z as it
was, so that Z after a multi-word addition describes the whole result.
Its result therefore depends on the previous Z. The first pass's record
for `ADDX` says that it reads X and writes all five flags, but not that
it reads N, Z, V and C (`0x0E00` where `0x0F00` is needed; the constant
is at `10DF0`).

The liveness pass consequently treats the flags of the preceding
instruction as dead whenever that instruction writes N, Z, V, C but not
X, and the code generator leaves them out:

```
68K     44FC 0004   MOVE    #4,CCR          Z = 1
        7001        MOVEQ   #1,D0           Z = 0
        D782        ADDX.L  D2,D3           0 + 0 + 0: Z unchanged, so 0

        li      d0, 1                       // MOVEQ, flags omitted
        mtxer   ccr_x
        crmove  4*cr7+so, eq                // the Z that ADDX keeps: stale
        addeo.  d3, d3, d2
        crand   eq, eq, 4*cr7+so
```

Interpreted, the program ends with Z clear; recompiled, with Z set. The
difference needs an instruction such as `MOVE`, `TST` or `CMP` directly
before an `ADDX` whose result is zero, followed by a test of Z. In the
usual multi-word addition the instruction before `ADDX` is an `ADD` or
another `ADDX`, which write X and so keep their flags.

`SUBX`, `NEGX` and the BCD instructions have the same property and are
not translated at all. Nor was `ADDX` in the first recompiling build:
its translation, and with it this defect, came with the later tuning
([15-build-history.md](15-build-history.md)).

### Invalid opcodes that the recompiler translates

The recompiler's first pass gives a code generator to 171 opcodes that
are not valid instructions and that the interpreter rejects: `DIVU.W` and
`DIVS.W` with an address register as the source, and logical, arithmetic
and bit instructions with a `(d8,PC,Xn)` destination. Running the
translator on them (`tools/drtranslate.py`) shows that it generates
working code — `DIVU.W A0,D0` is translated as a division by D0 — so
these opcodes behave differently depending on whether they are
interpreted or translated. See
[09-dynamic-recompiler.md](09-dynamic-recompiler.md).

### Instruction sequences

Eight opcodes showed advances of 2, 4, 6, … bytes: the routine consumes a
run of identical instructions. This is the technique of US patent
5,623,617 (decoding sequences of guest instructions), and following it up
found twelve dispatch table entries whose first instruction compares
`prefetch_data` — the *next* opcode — with a particular value:

| Opcode | Instruction | Looks for | Purpose |
|---|---|---|---|
| `20D9` | `MOVE.L (A1)+,(A0)+` | itself | Unrolled copy loops |
| `22D8` | `MOVE.L (A0)+,(A1)+` | itself | |
| `22DA` | `MOVE.L (A2)+,(A1)+` | itself | |
| `24D8` | `MOVE.L (A0)+,(A2)+` | itself | |
| `2ADC` | `MOVE.L (A4)+,(A5)+` | itself | |
| `22C6` | `MOVE.L D6,(A1)+` | itself | Unrolled fill loops |
| `2AC6` | `MOVE.L D6,(A5)+` | itself | |
| `BD9D` | `EOR.L D6,(A5)+` | itself | |
| `10D9` | `MOVE.B (A1)+,(A0)+` | `66FC` `BNE.S` to itself | Copy until a zero byte |
| `1018` | `MOVE.B (A0)+,D0` | `B019` `CMP.B (A1)+,D0` | String comparison |
| `1218` | `MOVE.B (A0)+,D1` | `B219` `CMP.B (A1)+,D1` | String comparison |
| `2E9F` | `MOVE.L (A7)+,(A7)` | `4E75` `RTS` | Return, discarding a parameter |

For the first eight, the routine stays in a short PowerPC loop for as
long as the next opcode is the same and no special event is pending
(`move_l_a0_inc_a1_inc_run`, `09040`, is annotated in the source). The
specific register choices suggest that these were taken from loops in the
ROM or system software that mattered for performance.

Three further entries (`2F30`, `4EB0`, `4EF4`) compare `prefetch_data`
with one particular indexed addressing extension word, giving a short cut
for the commonest form of that operand. Decoded, the three instructions
are `MOVE.L ([bd.w],od.w),-(A7)` (extension word `81E2`),
`JSR ([bd.w])` (`81E1`) and `JMP ([bd.w,A4,D0.W*4])` (`0521`): a long
word fetched through a pointer in low memory, a call through such a
pointer, and a jump through a table.

Two more sequences are found by routines rather than by table entries.
`MOVEM.L (A7)+,<list>` and `MOVEM.L (d16,An),<list>`, when the list names
only D4–D7 and A2–A4, look for `UNLK A6` (`4E5E`) after the list and
perform both: the end of a compiled procedure (`movem_l_mem_list`,
`08740`).

The recompiler recognises two sequences of its own in the first pass,
both from the lists above: `MOVE.B (A1)+,(A0)+` followed by `BNE.S` to
itself is translated as a single PowerPC loop
(`dr_emit_move_b_bne_loop`), and `MOVE.L ([bd.w],od.w),-(A7)` — `2F30`
with extension word `81E2` — is the one full-format indexed instruction
it translates (`dr_emit_push_l_indirect`).

### Routines that distinguish instructions at run time

Most of the 534 "other lengths" cases are one routine shared by `ABCD`,
`SBCD`, `PACK` and `UNPK`. It recovers the opcode from `disp_table` and
branches on it; `PACK` and `UNPK` have an extension word and the others
do not, so the routine contains paths of both lengths and the checker
cannot tell which belongs to which opcode. The `MOVEM` memory-to-register
forms and the look-ahead entries above account for the rest.

## Limits

The static checks are partial. They do not show that an instruction
computes the right result, sets the right condition codes or writes the
right register; they show that the control structure around every
instruction is consistent with its encoding. The opcodes not fully
analysed are mainly those whose routines loop (shifts by a register
count, `MOVEM`, bit fields, multiply and divide) or jump through a
computed address. For the dynamic recompiler only the first pass's
decisions are checked, not the code it generates.

Opcodes for which a check is known to fail because the original code is
wrong are listed in `KNOWN_DEFECTS` in the tool, so that
`make static-check` continues to succeed while still reporting them.
