# 2. Registers

The emulator's source never used register numbers. Each PowerPC register
has a role and a name; the names below are the ones given in US patent
5,574,873 (columns 9–12), which this code still follows. They are defined in
`src/include/Registers.inc`.

## General purpose registers

| Register | Name | Role |
|---|---|---|
| r0 | `zero` | Always contains 0 while 68K code is being emulated. Used as an operand wherever a zero is needed. |
| r1 | `a7` | 68K A7, the active stack pointer. It is the same register native code uses as its stack pointer, so emulated and native code share one stack. |
| r2 | — | Not used by the emulator. |
| r3 | `addr` | Scratch. Effective address of a memory operand. |
| r4 | `data` | Scratch. Operand value or result. |
| r5 | `rtn_addr` | Scratch. Address of the routine an effective address routine should continue at. |
| r6 | `immed_data` | Scratch. Immediate operand or extension word. |
| r7 | `base_disp` | Scratch. Base displacement or scaled index during address calculation. |
| r8–r15 | `d0`–`d7` | 68K data registers. |
| r16–r22 | `a0`–`a6` | 68K address registers. |
| r23 | `dr_entry` | Address of the dynamic recompiler's dispatcher, or 0. (Unused in the 1994 patent.) |
| r24 | `pc` | 68K program counter; see below. |
| r25 | `sr_and_flags` | Upper byte of the 68K SR, plus emulator flags; see below. |
| r26 | `ccr_x` | The 68K X flag; see [05-condition-codes.md](05-condition-codes.md). |
| r27 | `prefetch_data` | The 16-bit word at `0(pc)`, sign-extended. |
| r28 | `vbr` | 68K vector base register (a copy is also kept in the state block). |
| r29 | `disp_table` | Address of a dispatch table entry: the table's base with an opcode inserted. |
| r30 | `code_ptr` | Address of `cb`, the start of the interpreter's code. |
| r31 | `EmulatorStatePtr` | Address of the emulator state block ([07-emulator-state.md](07-emulator-state.md)). |

The five scratch registers can hold anything inside a routine; their names
describe what the effective address routines leave in them.

### `pc`

`pc` does not point at the instruction being executed. On entry to an
instruction's dispatch table entry:

- `pc` points 2 bytes past the opcode word, and
- `prefetch_data` holds the word at that address, sign-extended.

That word is either the instruction's first extension word or the next
opcode. As an instruction consumes extension words it advances `pc` and
refills `prefetch_data`, so that on exit the same invariant holds for the
next instruction.

Code that needs the true address of the current instruction (exception
entry, tracing) subtracts 2.

### `sr_and_flags`

| Bits | Mask | Meaning |
|---|---|---|
| 31:16 | | Test-mode switches; see [06-exceptions.md](06-exceptions.md). Bit 31 = leave the emulator, 29 = consistency checks, 18 = call a hook, 17 = count per opcode, 16 = count instructions. |
| 11 | `0x0800` | A bus or address error is being processed (used to detect a double fault). |
| 10 | `0x0400` | A test-mode switch is set; makes every instruction go through special event processing. |
| 9 | `0x0200` | The program counter was odd when last examined. |
| 8 | `0x0100` | Trace pending: the instruction now executing is to be followed by a trace exception. |
| 7:0 | `0x00FF` | SR bits 15:8 — T1, T0, S, M, 0, I2, I1, I0. |

The low byte of the SR (the CCR) is not stored here.

`mtcrf 0x0F, sr_and_flags` copies bits 15:0 into CR4–CR7, after which the
flags can be tested with conditional branches. This is how
`process_special_event` and exception entry examine them:

| CR bit | `sr_and_flags` bit |
|---|---|
| cr5.lt | 11 (group 1 exception active) |
| cr5.gt | 10 (test mode) |
| cr5.eq | 9 (odd pc) |
| cr5.so | 8 (trace pending) |
| cr6.lt, cr6.gt | 7, 6 (T1, T0) |
| cr6.eq, cr6.so | 5, 4 (S, M) |
| cr7.gt, cr7.eq, cr7.so | 2, 1, 0 (interrupt mask) |

## Condition register

| Field | Use |
|---|---|
| CR0 | 68K **N** (bit `lt`) and **Z** (bit `eq`). The `gt` and `so` bits carry no 68K state. |
| CR1 | Dynamic recompiler state: `cr_dr_busy` (lt), `cr_dr_active` (gt), `cr_dr_ready` (eq), `cr_dr_enabled` (so). |
| CR2 | Emulator state: `cr_special_event_pending` (lt), an interrupt-related flag (gt), `cr_interrupt_pending` (eq), `cr_supervisor` (so). |
| CR3 | `cr3.so` is a scratch flag inside the recompiler's translator. Otherwise unused. |
| CR4–CR7 | Scratch. Loaded from a register with `mtcrf` to test several bits at once, or used for comparisons. |

`cr_supervisor` duplicates the S bit of the SR so that privileged
instructions can test it with one conditional branch.

`cr_dr_active` is recomputed whenever the conditions for using translated
code may have changed: it is `cr_dr_enabled` AND "none of T1, T0 or the
test-mode flag is set" (`sr_and_flags & 0x4C0 == 0`).

## XER, LR and CTR

| Register | Use |
|---|---|
| XER[OV] | 68K **V** |
| XER[CA] | 68K **C** |
| XER[SO] | Set as a side effect of overflow; carries no 68K state |
| XER byte count | Used by the load/store string instructions in the block-copy private opcodes |
| LR | Scratch. By convention holds the address of the next dispatch table entry during the last instructions of a routine; also the return address inside effective address routines. |
| CTR | Scratch. Used instead of LR for the dispatch when LR is otherwise occupied, for loops, and for indirect calls through the handler table. |

## Registers inside the translator

While the dynamic recompiler is translating (between `dr_translate_miss`
and `dr_translate_done`, with `cr_dr_busy` set), three registers are
borrowed and have other names in the source:

| Register | Name | Role |
|---|---|---|
| r23 | `blk_ofs` | Offset of the 68K instruction being processed from the start of the block |
| r29 | `rec_ptr` | Address of the current instruction record |
| r30 | `out_ptr` | Address of the last word written to the translation cache |

`base_disp` (r7) addresses the translator's tables, `prefetch_data` holds
the opcode being translated, and `pc` holds the address of the start of the
block. The real `disp_table` and `code_ptr` are reloaded from
`saved_disp_table` and `saved_code_ptr` in the state block when the
translator finishes or is abandoned.

## Registers at entry

`EmEntry` is called with native conventions: r3 = address of the state
block, r4 = address of the dispatch table, r1 = caller's stack pointer,
LR = return address. The source uses plain register names in that code.
