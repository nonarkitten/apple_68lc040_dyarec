# 1. Overview

## What the image is

`Emulator.x` is an XCOFF object file holding one 640 KB `.text` section and
six symbols. The section is a position-independent PowerPC program that
emulates a Motorola 68LC040: the 68040 instruction set without floating
point. Floating-point opcodes take the line-F exception. The 68040's
memory management instructions are accepted in supervisor state and do
nothing, and its MMU control registers are not implemented.

The program has three parts:

| Offsets | Size | Contents |
|---|---|---|
| `00000`–`0EA43` | 60 KB | **Interpreter.** Routines that emulate each 68K instruction, effective address routines, exception processing, entry and initialisation. |
| `0EA44`–`0FFFF` | | `nop` padding to the next 64 KB boundary |
| `10000`–`182FB` | 33 KB | **Dynamic recompiler.** Translates blocks of 68K code into PowerPC code at run time. |
| `182FC`–`1FFFF` | | zero padding |
| `20000`–`9FFFF` | 512 KB | **Dispatch table.** 65,536 entries of two PowerPC instructions, one entry per 68K opcode word. |

Two text strings are embedded in the code:

- at `0EA00`: `680x0 Emulation written by Gary Davidian`
- at `182A8`: `Dynamic Recompilation by Eric Traut, tuned by Bob Abeles, hacked by Murph`

## Symbols

| Symbol | Offset | Meaning |
|---|---|---|
| `EmTop` | `00000` | Start of the image |
| `EmEntry` | `0E8B0` | Entry point, called once by native code |
| `EmKernelTrapTable` | `0E8C0` | Seventeen kernel service traps |
| `EmBtm` | `20000` | End of the code |
| `OpcodeTblTop` | `20000` | Start of the dispatch table |
| `OpcodeTblBtm` | `A0000` | End of the dispatch table |

## Load address

Nothing in the image contains an absolute address of the image itself. The
code finds its own position at entry (`em_entry_save` takes the return
address of a `bl` and rounds it down to 64 KB) and is given the address of
the dispatch table as a parameter. Two alignment requirements follow from
the way addresses are formed:

- The code must start on a 64 KB boundary, because addresses inside it are
  built by OR-ing a 16-bit offset into `code_ptr`.
- The dispatch table must start on a 512 KB boundary, because an entry's
  address is formed by inserting the opcode into bits 18:3 of `disp_table`
  and leaving the other bits alone.
- Bit 20 of the table's address must be zero, and the address 1 MB above
  each table entry must not be executable: a 68K program counter that is
  odd is detected by copying its low bit into bit 20 of `disp_table` (see
  "Odd addresses" in [03-dispatch.md](03-dispatch.md)).

The dynamic recompiler assumes its code block is exactly 64 KB above the
interpreter's (`init_state` stores `code_ptr + 0x10000` as `dr_code_base`).

US patent 5,574,873 gives `$68000000` for the dispatch table and
`$68080000` for the code in the 1994 design. The address used on any
particular machine is chosen by the ROM that loads this image, not by the
image.

## How the parts work together

### Interpretation

Each 68K instruction is executed by jumping to the dispatch table entry
selected by its 16-bit opcode word. The entry's two instructions either do
the whole job, or do the first step and branch to a routine in the
interpreter. Every routine ends by decoding the next opcode and jumping to
its table entry, so there is no central loop. See
[03-dispatch.md](03-dispatch.md).

The 68K registers live in PowerPC registers; the condition codes live in the
PowerPC condition register and XER. See [02-registers.md](02-registers.md)
and [05-condition-codes.md](05-condition-codes.md).

### Events and exceptions

A single condition register bit, `cr_special_event_pending`, is tested at
the end of every instruction. When set, control goes to
`process_special_event` instead of the next instruction; that routine deals
with interrupts, tracing, odd program counters and debugging hooks. 68K
exceptions are delivered by building a genuine 68K stack frame and
continuing at the address in the 68K vector table. See
[06-exceptions.md](06-exceptions.md).

### Recompilation

When the recompiler is active, every interpreted instruction that changes
the flow of control jumps to `dr_dispatch` instead of to the next table
entry. `dr_dispatch` looks the target address up in a table of translated
blocks, translating the block first if necessary, and runs the translation.
Translated blocks call or branch into the same interpreter routines for
anything complicated, and fall back to the interpreter whenever a special
event is pending. See [09-dynamic-recompiler.md](09-dynamic-recompiler.md).

### The outside world

The emulator runs as a context managed by a kernel that is not part of this
image. It asks the kernel for services with trap instructions, the kernel
reflects native exceptions (for example memory faults) back to it, and the
two cooperate to switch between 68K code and native PowerPC code. See
[08-native-interface.md](08-native-interface.md).

## Composition of the dispatch table

| Entries | Kind |
|---:|---|
| 33,523 | Set up, then branch to a routine in the interpreter |
| 12,164 | Load the routine's address into `rtn_addr`, then branch to an effective address routine |
| 9,977 | Unimplemented: branch to `take_illegal_instruction` |
| 4,299 | Complete in the first instruction; the second branches to a shared ending |
| 3,588 | Line-F opcodes: branch to `take_fline` |
| 1,984 | Adjust a register, then branch to *another dispatch table entry* |
| 1 | No branch: falls through into the next entry |

(The 4,096 line-A opcodes are among the first group: they branch to a
routine that can dispatch Mac OS traps directly; see
[08-native-interface.md](08-native-interface.md).)

## Source layout

| Path | Contents |
|---|---|
| `src/Emulator.S` | Top-level file; includes everything else in image order |
| `src/include/Registers.inc` | Register and condition-register names |
| `src/include/EmulatorState.inc` | Offsets in the emulator state block |
| `src/include/Macros.inc` | Macros for encodings current assemblers do not produce |
| `src/interp/Interpreter.S` | Offsets `00000`–`0FFFF` |
| `src/dr/DynamicRecompiler.S` | Offsets `10000`–`1FFFF` |
| `src/optable/Line0.S` … `LineF.S` | The dispatch table, split by the top four bits of the opcode |
