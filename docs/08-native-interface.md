# 8. Entry, the Kernel and Native Code

The emulator is not a self-contained program. It runs as one *context*
under a small kernel that is not part of this image, and it cooperates
with that kernel to start up, to handle processor exceptions, to take
interrupts and to switch between 68K code and native PowerPC code.

This chapter describes the emulator's side of that interface. What the
kernel does in response is outside the image; statements about it that
rest on the image alone are marked *(inferred)*.
[13-rom-context.md](13-rom-context.md) describes the kernel's side as
found in a ROM, with the kernel's names for the services, and confirms
the inferences made here.

## Entry

`EmEntry` (`0E8B0`) is called once, with native calling conventions:

| Register | Contents |
|---|---|
| r3 | Address of the emulator state block |
| r4 | Address of the dispatch table |
| LR | Return address |

It does the following.

1. Sets r1 to the state block + `0x1000` and saves CR, LR and r12–r31 in
   an 84-byte frame there (`em_entry_save`).
2. Sets `EmulatorStatePtr` and `disp_table` from r3 and r4, and derives
   `code_ptr` from its own return address rounded down to 64 KB. Both
   addresses are stored in the state block (`saved_disp_table`,
   `saved_code_ptr`).
3. Fills in the kernel context area of the state block: flags, the
   address of `native_exception_handler`, the address of `take_bus_error`,
   and the address of `emulator_reset` as the place to resume.
4. Issues kernel trap 0 with r3 = 0.

Nothing in the image branches to `emulator_reset` (`0E964`). The kernel is
expected to resume the emulator context at the address stored in step 3
*(inferred)*.

`emulator_reset` zeroes the 68K registers, calls `init_state`, and then
does what a 68K does on reset: loads `a7` from address 0 and `pc` from
address 4, sets the SR to `$2700`, clears the condition codes and
dispatches the first instruction. The memory at address 0 must therefore
already contain a valid reset vector.

`exit_emulator` (`0E830`) is the way back: it stores the complete 68K
state in the state block, reloads the frame saved in step 1 and returns
to the caller of `EmEntry`. It is reached only through test-mode bit 31
of `sr_and_flags`.

## Kernel traps

`EmKernelTrapTable` (`0E8C0`) is seventeen consecutive instructions of
the form

```
        twi     31, EmulatorStatePtr, n         // trap always
```

A trap instruction with all condition bits set always traps. The kernel
identifies the service from the immediate operand *n* and, when it has
finished, resumes at the following instruction *(inferred)*. Emulator
code reaches an entry with a branch, having arranged for LR or the saved
context to lead where it wants to continue.

The entries are *n* = 0 to 16, except that there is no 14: the slot
repeats 13. The uses visible in the image:

| *n* | Used by |
|---|---|
| 0 (`ReturnFromException`) | `EmEntry` (start the context). Also `native_call_unavailable`, with r3 = 255, as the default for native-call handlers that have not been set |
| 1 (`RunAlternateContext`) | `switch_to_native`: run native code |
| 2 (`ResetSystem`) | The `RESET` instruction, after `init_state` |
| 3, 5, 7, 8 (`VMDispatch`, `PowerDispatch`, `CacheDispatch`, `MPDispatch`) | Defaults of handler table slots `+0x968`, `+0x99C`, `+0x9A4`, `+0x9DC`, called by private opcodes |
| 4 (`PrioritizeInterrupts`) | The SR-change routine, when the interrupt mask is lowered below a pending request |
| 6 (`RTASDispatch`) | Private opcode `FE20` (the trap instruction is inline at `0DB34`) |
| 15 (`Thud`, the kernel's panic) | `switch_to_native`, when no free context save area is left |
| 9–13, 16 | Not referenced within the image |

One `sc` (system call) instruction is also present, at `0C480`, in the
SR-change routine; it is issued with r0 = 13 and r3 = 1 and with the
emulator's `zero` register restored afterwards.

Trap instructions with other condition codes are used as assertions:
`twi 24, reg, 0` traps if `reg` is non-zero (`check_double_fault`), and
`check_prefetch_consistency` uses `tw 24, a, b` to trap if two registers
differ.

## Native exceptions

`native_exception_handler` (`0D440`) is registered at entry. The kernel
transfers to it when the processor takes an exception while the emulator
context is running *(inferred)*. Its two jobs — recognising a dispatch to
an odd address, and recording the details of a memory fault so that
`take_bus_error` can build a 68K bus error frame — are described in
[06-exceptions.md](06-exceptions.md).

## Running native code

68K code and native code call each other through *routine descriptors*:
data structures that begin with a 68K trap word and contain one or more
routine records, each naming a procedure, the instruction set it is
written for (ISA) and how its parameters are passed.

`mixed_mode_dispatch` (`0DE1C`) interprets a routine descriptor without
leaving the emulator. It selects a routine record (by selector, if the
descriptor uses selectors; the search handles both sequential and sorted
records) and then:

- **ISA 0 (68K):** loads `pc` from the record's procedure pointer and
  continues emulating (`mixed_mode_call_68k`).
- **ISA 1 (PowerPC):** goes to `switch_to_native`.
- Anything else, or no matching record: returns an error number (1–5) to
  the 68K caller.

`switch_to_native` (`0E128`) stores D0–D7, A0–A6 and the 68K `pc` in the
register area shared with native code, `native_regs`, sets up the native
context block and issues kernel trap 1, `RunAlternateContext`. The
native context block is one of the kernel's context blocks, like the
emulator's own; the fields set are these (names from the kernel's
sources, [13-rom-context.md](13-rom-context.md)):

| Context block offset | Kernel's field | Set to |
|---|---|---|
| `+0x000` | `Flags`, first byte | 0; on return, the status below |
| `+0x0FC` | `PC` | The native code to run |
| `+0x10C` | `r1` | `a7`: native code runs on the 68K stack |
| `+0x114` | `r2` | `native_toc` |
| `+0x1FC` | `r31` | The address of `native_regs` |

When control returns, the status byte says why:

| Status | Meaning |
|---|---|
| 255 | Native code has finished or wants 68K code run: reload the 68K registers and continue at the stored `pc` |
| 240–247 | An interrupt of level (status − 240) arrived while native code was running |
| other | An exception is to be delivered to 68K code |

To deliver an interrupt that arrived in native code, the emulator builds
a private exception frame of format `$E` on the 68K supervisor stack,
holding a copy of the native context, and runs the 68K interrupt
handler. On the handler's `RTE`, `rte_format_e` (`0E408`) copies the
context back and resumes native code.

| Frame offset | Contents |
|---|---|
| `+0x00`, `+0x02`, `+0x06` | SR, PC, format word |
| `+0x08` | `trace_pc`: the 68K `pc` to come back to |
| `+0x0C` | The address in `switch_to_native` at which to continue |
| `+0x10` | The CR, with four flags of `sr_and_flags` |
| `+0x14` | `0x13000000`, by which the frame is recognised |
| `+0x18`–`+0x317` | The first `0x300` bytes of the native context block: its two kernel states, the special registers, r0–r31 and f0–f31 |

The frame is `0x318` bytes. If the native context has a save area (a
pointer at `+0x0D8` of the context block), the handler may enter native
code again, so a fresh save area of `0x220` bytes is claimed for the
interval from a pool described by `+0xE0`–`+0xEC` of the state block and
returned by `rte_format_e`. With none free the emulator calls kernel
service 15. Private opcode `FE07` inspects such a frame on behalf of a
68K handler.

## Private opcodes

Line-F opcodes with coprocessor ID 6 and 7 are not used by any Motorola
processor. The dispatch table gives 42 of them entries of their own
(`FC00`–`FC16` and `FE00`–`FE20`, with gaps). They are how 68K code in
the ROM and the system asks the emulator, and through it the kernel, for
services.

Apple's names for them, where given, are those of the macros that define
the opcodes in the SuperMario ROM sources (`Internal/Asm/TrapsPrivate.a`,
February 1994; see [13-rom-context.md](13-rom-context.md)). That file predates the recompiler and the PCI
machines; opcodes it does not have are described from the code. The
routines are labelled with the opcode and the name
(`fc0a_float_add`, `fe04_move_from_ecr`).

| Opcode | Apple's name | Behaviour |
|---|---|---|
| `FC00` | `_ToolBoxCoprocessorNop` | Goes to the handler in slot `+0x958`. The default is `fetch`, so the opcode does nothing; elsewhere it would be a line-F exception |
| `FC01` | `_DecodeSANEop` | Start of a SANE operation: see below |
| `FC02` | `_ExitSANEop` | End of a SANE operation |
| `FC03`, `FC04`, `FC05` | `_LoadArg1Extended`, `_LoadArg2Convert`, `_CopyArg2ToArg1` | Unpack operands |
| `FC06` | `_CheckResultArg1` | |
| `FC07`, `FC08`, `FC09` | `_StoreArg1Extended`, `_StoreArg1Double`, `_StoreArg1Single` | Pack the result |
| `FC0A`–`FC0F` | `_FloatAdd`, `_FloatSub`, `_FloatMul`, `_FloatDiv`, `_FloatRem`, `_FloatSqrt` | Arithmetic on the unpacked operands |
| `FC10`, `FC11` | `_ATrapOSExit`, `_ATrapOSNoA0Exit` | The exit path of the 68K operating system trap dispatcher: restore A1, D1, D2 and A2 from the stack (`FC10`: A0 first), set N and Z from D0.W, return to the trap's caller |
| `FC12`, `FC13` | `_MoveBytes`, `_MoveBytesNoDCBZ` | The body of `BlockMove`: copy D0 bytes from (A0) to (A1) with the PowerPC string instructions. A move of more than 20 bytes is first reported to the recompiler as a change to the destination range. `FC13` does not use `dcbz` on the destination |
| `FC14`, `FC15` | | The same two copies without the report to the recompiler |
| `FC16` | | Invalidate translated code for the range A0, length D0 (calls `dr_invalidate_vector` when the recompiler is ready) |
| `FE00` | `_RiscCoprocessorNop` | As `FC00`, with slot `+0x95C`. The SuperMario Gestalt code executes it with a line-F handler installed to find out whether it is running under the emulator |
| `FE01` | | Mixed mode switch: `mixed_mode_dispatch` (through handler slot `+0x9E0`). SuperMario has `FEED`, `_MixedMode`, for this; in this image `FEED` is an ordinary line-F opcode |
| `FE02` | | Return to native code: `switch_to_native` |
| `FE03` | `_ExecuteRiscContext` | (A7) points to a native context block. Calls handler slot `+0x964`, by default kernel service 1 |
| `FE04`, `FE05` | `_MoveFromECR`, `_MoveToECR` | Read or write an *emulator control register*, using A0 for the value and D0 for the register number; see below |
| `FE06`, `FE0A` | `FE0A`: `_VMDispatch`, `_KernelVMDispatch` | D0 is a selector, A0, A1 and D1 parameters, D0 the result. Calls handler slot `+0x968`, by default kernel service 3. SuperMario lists 29 selectors, from `mmuInit` to `mmuSwitchTo040` |
| `FE07` | `_HandleMixedModeFault` | "Handle mixed mode interrupts and page faults": works on the exception frame on the stack and gives back a native save area ([15-build-history.md](15-build-history.md)) |
| `FE08` | `_ReadTimeBase32` | D0 = low half of the PowerPC time base |
| `FE09` | `_ReadTimeBase64` | A0:D0 = 64-bit PowerPC time base, read consistently |
| `FE0B` | | Instruction cache block invalidate (`icbi`) over the range A0, length D0 |
| `FE0C` | | Data cache block flush (`dcbf`) over the range |
| `FE0D` | | Data cache block store (`dcbst`) over the range |
| `FE0E` | | Data cache block zero (`dcbz`) over the range |
| `FE0F` | | Calls handler slot `+0x99C`, by default kernel service 5, with D0 and D1 |
| `FE11` | | Calls handler slot `+0x9A4`, by default kernel service 7 |
| `FE1F` | | Calls handler slot `+0x9DC`, by default kernel service 8, with eight registers as arguments |
| `FE20` | | Kernel service 6 with A0 in r3 |

The four cache operations run 32 bytes per iteration and stop early if an
interrupt becomes pending, leaving the remaining length in D0 and the 68K
`pc` on the same instruction so that it resumes after the interrupt is
serviced.

The recompiler never begins a translated block at opcode `FE02` or at
`AAFE` (the trap word that begins a routine descriptor).

### Emulator control registers

`FE04` and `FE05` are how 68K code configures the emulator: the fields
that `init_state` leaves empty — where the Mac OS trap tables are, which
exception vectors to expect, what memory the recompiler may use — are
written this way. D0 is the register number, 0 to 25, and A0 the value;
a byte table (`ecr_offsets`, `0D850`) gives each register's word in the
state block. A number out of range does nothing. The routine in handler
slot `+0x960` is called first.

| Register | Field | Notes |
|---|---|---|
| 0 | `emulator_version` (`+0x718`) | Cannot be written |
| 1, 2, 3 | `native_call_entry`, `native_toc`, `native_regs_ptr` | |
| 4 | `+0x70C` | Initialised like `native_call_entry` |
| 5 | `native_context` | |
| 6 | `expected_aline_vector` | Line-A traps are dispatched natively while the 68K vector has this value |
| 7, 8 | `os_trap_exit`, `os_trap_exit_no_a0` | 68K addresses that the native dispatch gives an OS trap routine to return to: code ending in `FC10` or `FC11` |
| 9 | `+0x730` | Test-mode switches; writing also copies the low 16 bits into the upper half of `sr_and_flags` |
| 10 | `+0x734` | |
| 11, 12 | `instruction_count`, `opcode_counts` | |
| 13 | `native_return_entry` | |
| 14 | `expected_privilege_vector` | |
| 15 | `native_invalidate_entry` | Address of `native_invalidate_range` (`0E48C`), which native code may call to have translations of a range discarded |
| 16, 17 | `toolbox_trap_table`, `os_trap_table` | |
| 18 | | The recompiler's switches. Reading gives three flags from the CR; writing sets `cr_dr_enabled` and `cr_dr_ready` from bits 0 and 1 of A0, calls `dr_setup` when the recompiler is first enabled and flushes its cache when it becomes ready. Ignored unless bits 0 and 1 of `config_flags` are both set |
| 19 | `config_flags` | |
| 20 | `+0x7BC` | Exists only if bit 2 of `config_flags` is set |
| 21, 22 | `dr_memory_base`, `dr_memory_size` | |
| 23 | `+0x7A8` | Written under the mask at `+0x7AC`; the same bits are changed in two words of the native context block |
| 24, 25 | `test_hook`, `test_hook_arg` | |

### SANE

`FC01`–`FC0F` accelerate SANE, the Mac OS floating point package
(`_FP68K`). A 68LC040 has no floating point unit, so SANE's arithmetic
is software; here its expensive steps are single opcodes, carried out
with PowerPC integer instructions (`097C0`–`0A9AB`, 4.5 KB of the
interpreter). The package's 68K code remains in charge of the
sequence, and the state of an operation is held in 68K registers from
one opcode to the next:

| Register | Holds |
|---|---|
| D0, D1:D2 | Argument 1: exponent, and 64-bit significand |
| D3, D4:D5 | Argument 2 |
| D6 | The SANE operation word, in the upper half |
| D7 | Status: the signs of the two arguments (bits 7 and 6), their classes — zero, infinite, NaN — (bits 11:10 and 9:8), and the size of the caller's arguments (bits 4:1) |
| A0, A1 | Addresses of the destination and source operands |

`FC01` is followed in the 68K code by a mask word and a table of long
words. It masks the operation word found on the stack, uses the result
to pick a table entry, and continues 68K execution at the offset the
entry holds — a computed jump to the code for that operation. Before
that it makes a 64-byte-aligned work area below the stack pointer and
saves D0–D7, A0 and A1 there. `FC02` restores them, removes the caller's
arguments and returns to the caller.

## Line-A traps

Mac OS system calls are line-A opcodes. A 68K processor takes a line 1010
exception for each one, and the handler in ROM decodes the trap word and
calls the routine from a table.

The dispatch table entries for all 4,096 line-A opcodes branch to one of
four routines (`aline_os_trap`, `aline_os_trap_alt`, `aline_toolbox_trap`,
`aline_toolbox_trap_autopop`, at `095E0`–`097FF`; 1,024 opcodes each).
Operating system traps (`A000`–`A7FF`) are divided by opcode bit 8 and
Toolbox traps (`A800`–`AFFF`) by bit 10, the auto-pop bit. Each routine
first compares the line-A
exception vector, `[vbr + 0x28]`, with the address recorded at `+0x720`
in the state block. If they match — that is, if the standard trap
dispatcher is still installed — the emulator performs the dispatch
itself: it takes the routine address directly from the Toolbox or OS trap
table in 68K low memory (`+0x7B0`, `+0x7B4` in the state block hold the
table addresses `0xE00` and `0x400`), saves registers on the 68K stack as
the ROM's dispatcher would, and continues at the routine. If the vector
has been changed, the exception is taken normally through
`aline_handler`.

The same pattern — check that a vector still holds the expected value,
and if so do natively what the standard handler would have done — is used
for `MOVE from SR` in user state (see
[06-exceptions.md](06-exceptions.md)).
