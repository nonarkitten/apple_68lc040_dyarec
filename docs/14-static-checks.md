# 14. Static Checks

`tools/check.py` (`make static-check`) tests the emulator's code against
the 68K instruction set without executing it. It relies on one fact: each
of the 65,536 dispatch table entries is the start of a *known* 68K
instruction, so the instruction says what the code reached from that
entry must do.

The checks also validate this project's own material. The comment on
every dispatch table entry comes from the 68K decoder in `tools/m68k.py`;
a disagreement between that decoder and the emulator shows up here.

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

**Result: no disagreements**, over 34,802 opcodes for length and 34,491
for flags. (Control transfers are excluded from the first, and
instructions involving the SR or CCR from the second.)

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
for the commonest form of that operand.

### Routines that distinguish instructions at run time

Most of the 534 "other lengths" cases are one routine shared by `ABCD`,
`SBCD`, `PACK` and `UNPK`. It recovers the opcode from `disp_table` and
branches on it; `PACK` and `UNPK` have an extension word and the others
do not, so the routine contains paths of both lengths and the checker
cannot tell which belongs to which opcode. The `MOVEM` memory-to-register
forms and the look-ahead entries above account for the rest.

## Limits

The checks are static and partial. (Programs can also be executed; see
[11-testing-gaps.md](11-testing-gaps.md).) They do not show that an instruction
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
