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
register area shared with native code (its address is at `+0x708` in the
state block), stores `a7` in the native context block (address at
`+0x710`) and issues kernel trap 1. The kernel runs the native context
*(inferred)*. When control returns, a status byte at the start of the
native context block says why:

| Status | Meaning |
|---|---|
| 255 | Native code has finished or wants 68K code run: reload the 68K registers and continue at the stored `pc` |
| 240–247 | An interrupt of level (status − 240) arrived while native code was running |
| other | An exception is to be delivered to 68K code |

To deliver an interrupt that arrived in native code, the emulator builds
a private exception frame (format `$E`, `0x318` bytes) on the 68K
supervisor stack containing a copy of the native context, runs the 68K
interrupt handler, and on the handler's `RTE` (`0E408`) copies the
context back and resumes native code. Nested native contexts are given
save areas from a pool whose allocation mask is in the state block.

## Private opcodes

Line-F opcodes with coprocessor ID 6 and 7 are not used by any Motorola
processor. The dispatch table gives 40 of them real entries
(`FC01`–`FC16` and `FE01`–`FE20`, with gaps). They are how 68K code — in
practice, the ROM — asks the host for services. Those whose behaviour is
clear from the code:

| Opcode | Behaviour |
|---|---|
| `FC12`–`FC15` | Block copy between the addresses in A0 and A1, length in D0, using the PowerPC string instructions (four variants) |
| `FC16` | Invalidate translated code for the range A0, length D0 (calls `dr_invalidate_vector` when the recompiler is ready) |
| `FE01` | Mixed mode switch: `mixed_mode_dispatch` (through handler slot `+0x9E0`) |
| `FE02` | Return to native code: `switch_to_native` |
| `FE04`, `FE05` | Read (`FE04`) or write (`FE05`) a 32-bit emulator variable, using A0 for the value. D0 (0–25) selects the variable: a byte table (`0D850`) gives its offset from `+0x700` in the state block. Some selectors are special-cased: `0x09` written sets the test-mode switches in `sr_and_flags`; `0x12` reads or sets the dynamic recompiler's enable bits; `0x13` is the configuration word at `+0x7A0` |
| `FE08` | D0 = low half of the PowerPC time base |
| `FE09` | A0:D0 = 64-bit PowerPC time base, read consistently |
| `FE0B` | Instruction cache block invalidate (`icbi`) over the range A0, length D0 |
| `FE0C` | Data cache block flush (`dcbf`) over the range |
| `FE0D` | Data cache block store (`dcbst`) over the range |
| `FE0E` | Data cache block zero (`dcbz`) over the range |
| `FE20` | Kernel trap 6 with A0 in r3 |

The four cache operations run 32 bytes per iteration and stop early if an
interrupt becomes pending, leaving the remaining length in D0 and the 68K
`pc` on the same instruction so that it resumes after the interrupt is
serviced.

`FE03`, `FE06`, `FE0A`, `FE0F`, `FE11` and `FE1F` copy 68K registers into
PowerPC argument registers, call a handler table slot (several of which
default to kernel traps) and copy results back. `FC01`–`FC11` operate on
exception stack frames and the status register; their individual
functions are outside the scope of this chapter.

The recompiler never begins a translated block at opcode `FE02` or at
`AAFE` (the trap word that begins a routine descriptor).

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
