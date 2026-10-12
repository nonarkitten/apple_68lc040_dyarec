# 11. Running and Testing: What Is Missing

The build proves that the source matches the original binary. It does not
prove that the binary runs, and nothing in this repository executes it.
The original is presumed correct because it shipped.

This chapter lists what the image needs from its surroundings — the
"holes" — and what it would take to fill each one well enough to execute
and test the code.

## Dependencies

### 1. A caller and a memory map

`EmEntry` must be called with r3 pointing to a zeroed, writable 4 KB
state block and r4 pointing to the dispatch table.

| Requirement | Reason |
|---|---|
| Code at a 64 KB boundary | Addresses are formed as `code_ptr \| offset` |
| Dispatch table at a 512 KB boundary, 128 KB above the code | Opcode is inserted into bits 18:3 of the table address; `EmEntry` receives the table address separately but the image is one contiguous block |
| The megabyte above the table not executable | Odd-address detection jumps there deliberately |
| Recompiler code 64 KB above the interpreter | `dr_code_base = code_ptr + 0x10000` |
| 68K memory identity-mapped, big-endian | 68K addresses are used directly as PowerPC addresses |
| A valid 68K reset vector at address 0 | `emulator_reset` loads SSP and PC from addresses 0 and 4 |
| Unaligned loads and stores supported | 68K data need not be aligned |

**To fill:** any PowerPC environment that can map memory at address 0 —
a system-mode emulator such as QEMU, or a user-mode harness that maps
low memory. A big-endian 32-bit PowerPC target is required.

### 2. The kernel

This is the largest gap. The emulator expects to be a context under a
kernel with which it shares part of the state block.

| What the emulator does | What the kernel must do |
|---|---|
| Trap 0 from `EmEntry` | Begin running the emulator context at the address stored at `+0x184` (`emulator_reset`), with the registers the context block describes |
| Traps 1–8, 15 | Provide the services in [08-native-interface.md](08-native-interface.md): run native code, reset, priority changes, and the calls behind several private opcodes |
| One `sc` instruction | A further service, called when the interrupt mask changes |
| Registers `native_exception_handler` | Transfer to it, with fault details in the state block, when the emulator context takes a PowerPC exception |
| Jumps 1 MB past the dispatch table on an odd `pc` | Deliver the resulting instruction access exception as above |
| Polls `cr_special_event_pending`, `cr_interrupt_pending`, `interrupt_level` | Set them, in the emulator's saved context, when an interrupt arrives |

The parts of the context block that the emulator and kernel share are
listed in [07-emulator-state.md](07-emulator-state.md).

**To fill, minimally:** a stub that
1. calls `EmEntry` with r3 = the state block and r4 = the dispatch
   table, as the kernel does;
2. on trap 0 (`ReturnFromException`), jumps to the address in `ecb_pc`
   with the registers unchanged — the first time, that is
   `emulator_reset`;
3. treats every other trap as fatal;
4. never raises an interrupt.

That is enough to execute user-mode 68K code that does not fault. It can
be a few dozen instructions of PowerPC, or a hook in a host emulator
that intercepts the `twi 31, r31, n` instruction.

To add memory faults: on a data access exception, store the fault
description in the context block, load r4 from `ecb_handler_arg`, set LR
to the address of `EmKernelTrapTable` and jump to `ecb_handler`. The
handler returns through trap 0. [13-rom-context.md](13-rom-context.md)
gives the protocol as the real kernel implements it.

**To fill properly:** an implementation of the kernel's context block and
exception reflection. The kernel is a separate component of the same
ROM; documenting it is outside this project, but the offsets the
emulator touches ([07-emulator-state.md](07-emulator-state.md)) define
the part of the interface that matters here.

### 3. The dynamic recompiler's memory and kernel data

The recompiler is off until 68K code switches it on, so it is not needed
for a first test. To use it:

| Requirement | Reason |
|---|---|
| Base and size of a RAM block at `+0x7C0`/`+0x7C4` | `dr_setup` carves it up |
| A readable structure at the address stored at `0x5FFFEFF0`, with the memory size at offset 8 | `dr_setup` reads it to size the page bitmap |
| Working `dcbz`, `dcbf`, `icbi` with 32-byte cache blocks | Table clearing and code publication assume a 32-byte block size |
| Both of the low two bits of the configuration word at `+0x7A0` set | The enabling code checks them. `init_state` sets only bit 0; bit 1 must be set afterwards, which 68K code can do with private opcode `FE05`, selector `0x13` |
| 68K code that executes `FE05` with D0 = `0x12` and bit 0 of A0 set | That is the only path that enables the recompiler |

**To fill:** allocate the block, plant a fake information record, and
run a short 68K stub that issues the two opcodes. A host emulator must model
`dcbz` with a 32-byte block; processors with larger cache blocks would
clear too much.

### 4. Mac OS conventions

Several fast paths assume the Mac OS memory layout, but each checks
before acting and falls back to a real 68K exception:

| Fast path | Guard |
|---|---|
| Native line-A trap dispatch using tables at `0x400` and `0xE00` | Line-A vector equals the value at `+0x720` |
| `MOVE from SR` allowed in user state | Privilege violation vector equals the value at `+0x72C` |
| Mixed mode routine descriptors | Only reached through private opcode `FE01` |

With `+0x720` and `+0x72C` left at zero and ordinary vectors installed,
none of these are taken. No ROM is needed to test instruction
emulation.

### 5. Private opcodes

Opcodes `FC01`–`FC16` and `FE01`–`FE20` call the kernel or assume the
ROM's data structures. Test programs should avoid them, except the
self-contained ones: `FE08`/`FE09` (time base) and `FE0B`–`FE0E` (cache
operations).

## A staged plan for making the code testable

Each stage is useful on its own.

1. **Static cross-checks (no execution).** Use the dispatch table as a
   specification: for each opcode, check mechanically that the entry and
   the routine it reaches have the properties the 68K instruction
   requires (for example, that every `ADD` variant ends by copying XER
   to `ccr_x`). `tools/gen.py` already has the table-to-routine mapping.
2. **Bare interpreter in a PowerPC emulator.** Load the image at a
   suitable address in QEMU (or a simple PowerPC interpreter), provide
   the minimal kernel stub from section 2 and a reset vector, and run
   small hand-assembled 68K programs. Compare final register values
   with expectations.
3. **Differential testing.** Run a 68K instruction test suite — the
   single-step JSON tests published for 68000-family cores, or random
   instruction sequences — under both this emulator and a reference 68K
   emulator (Musashi, UAE, Moira), comparing registers, CCR and memory
   after every instruction. Test-mode bit 31 of `sr_and_flags`
   (`exit_emulator`) and the `special_event_hook` provide ready-made
   places to stop after each instruction and export the state.
4. **Exceptions.** Extend the stub so that data access exceptions reach
   `native_exception_handler` with the fields it reads filled in, and
   check the bus and address error frames.
5. **Interrupts.** Have the stub set `interrupt_level`,
   `cr_interrupt_pending` and `cr_special_event_pending` at chosen
   instruction boundaries; check frames, masking and the `STOP` loop.
6. **Dynamic recompiler.** Provide the memory and information record
   from section 3, enable the recompiler, and repeat stage 3. Running
   the same programs with and without the recompiler and comparing the
   results is a strong test of both. Add tests that modify code and
   announce it with `FC16`.
7. **System level.** Supply the real kernel and ROM. At this point the
   environment is a Power Macintosh, and existing whole-machine
   emulators are the practical vehicle.

## Things that cannot be confirmed from the image alone

- The services behind kernel traps 6 to 8, which the kernel in the
  8600/9600 ROM does not implement.
- The complete layout of the kernel's context blocks, including the
  format of the fault description.
- Who writes the handler table slots and the "expected vector" fields
  after initialisation, and with what.
- Which ROM `Emulator.x` was taken from. The 8600/9600 ROM contains an
  earlier build ([13-rom-context.md](13-rom-context.md)).
