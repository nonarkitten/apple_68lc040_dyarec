# 11. Running and Testing

The build proves that the source matches the original binary. This
chapter is about executing it: what the image needs from its
surroundings, how much of that the tools in this repository supply, and
what is still missing.

## What can be run today

`tools/ppcsim.py` is a simulator for the user-mode PowerPC instructions
the image uses. With it, and with no kernel, ROM or operating system:

| Tool | What it runs |
|---|---|
| `tools/run68k.py` | A 68K program under the emulator, from `emulator_reset` to the first invalid opcode; optionally with the dynamic recompiler switched on |
| `tools/selftest.py` (`make test`) | Seventeen small 68K programs, each run interpreted and recompiled, checked against results worked out by hand |
| `tools/drtranslate.py` | The recompiler's translator on any 68K code, printing the PowerPC code it generates |
| `tools/drmap.py` | The recompiler's first pass, for every opcode |

```
$ python3 tools/run68k.py --both 6002 4E71 7064 7200 D280 5380 66FA 4AFC
interpreted:
  D0-D7  00000000 000013BA 00000000 ...
  PC 0000100E   SR 2704   CCR --Z--   (3620 PowerPC instructions)
recompiled:
  D0-D7  00000000 000013BA 00000000 ...
  PC 0000100E   SR 2704   CCR --Z--   (8632 PowerPC instructions, 703 of them in translated code)
SAME
```

(The program sums the integers 1 to 100. The totals include reset and,
for the recompiled run, setting the recompiler up and translating.)

`run68k.py` stands in for the kernel in the simplest possible way. It
sets `EmulatorStatePtr`, `code_ptr` and `disp_table`, puts a reset vector
at address 0, and starts at `emulator_reset`; memory is flat and
initially zero. To use the recompiler it lets the emulator reach its
first dispatch, calls `dr_setup` with a block of memory and a
`SystemInfo` record in place, sets the three CR1 flags and loads
`dr_entry` — the effect of private opcode `FE05` with selector `0x12`.
The first control transfer then enters `dr_dispatch`, which performs the
initial flush and starts translating.

For the loop in that example, interpretation costs 26 PowerPC
instructions per iteration of three 68K instructions, and the
translation costs 7.

What the simulator cannot do is anything that needs the kernel: a kernel
trap, a memory fault or an interrupt ends the run with an error.

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
| Base and size of a RAM block at `+0x7C0`/`+0x7C4`, within 32 MB of the emulator's code | `dr_setup` carves it up; translated code branches directly to emulator routines |
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

## What remains

1. **A reference to compare against.** The self-test's expected values
   were derived by hand, which limits it to small programs. Running a
   68K instruction test suite, or random instruction sequences, under
   both this emulator and an independent 68K emulator (Musashi, UAE,
   Moira) and comparing the state after every instruction would cover
   the instruction set properly. `run68k.py` already produces the state
   to compare; test-mode bit 31 of `sr_and_flags` (`exit_emulator`) and
   `special_event_hook` are ready-made places to stop after each
   instruction.
2. **Interpreter against recompiler at scale.** `run68k.py --both`
   compares the two on one program. Doing so over generated programs is
   a strong test of both, since they share almost no code for the
   instructions the recompiler translates inline.
3. **Exceptions.** Deliver data access faults to
   `native_exception_handler` as the kernel does
   ([13-rom-context.md](13-rom-context.md)), and check the bus and
   address error frames. Odd-address detection needs the fetch from 1 MB
   above the dispatch table to fault.
4. **Interrupts.** Set `interrupt_level` and the three CR2 bits at chosen
   instruction boundaries; check frames, masking and the `STOP` loop.
5. **Kernel services.** At least `ReturnFromException`, so that the
   emulator can be started through `EmEntry` rather than at
   `emulator_reset`.
6. **Self-modifying code** under the recompiler: programs that modify
   code and announce it with `FC16` or `CINV`.
7. **System level.** With the real kernel and ROM the environment is a
   Power Macintosh, and existing whole-machine emulators are the
   practical vehicle.

## Things that cannot be confirmed from the image alone

- The complete layout of the kernel's context blocks, including the
  format of the fault description.
- Who writes the handler table slots and the "expected vector" fields
  after initialisation, and with what.
- The exact "Mac OS ROM" file version `Emulator.x` was extracted from
  ([13-rom-context.md](13-rom-context.md) gives what is known).
