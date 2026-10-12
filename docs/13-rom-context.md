# 13. The Emulator in a ROM

The other chapters describe the image from the inside. This one records
what a real ROM shows about the image's surroundings: where it is loaded,
how the kernel starts it, and what the kernel does when the emulator
traps or faults.

The evidence is a set of 23 Macintosh ROM images, examined with
`tools/rominfo.py`, and in particular the ROM of the Power Macintosh 8600
and 9600 (4 MB, checksum `960FC647`, version `$077D`), whose kernel was
disassembled. ROM images are not part of this repository.

A second source is the `powermac-rom` project by Elliot Nunn, a
reverse-engineered, rebuildable PowerPC ROM. `Emulator.x` is that
project's emulator binary (the two files are identical). The project
contains a commented disassembly of a later version of the kernel, a
source file for the configuration record, and a header describing the
emulator's data page. Kernel and structure names in this chapter are the
ones that project uses, which in turn follow Apple's published headers:
`NKConfigurationInfo` and its fields, `ContextBlock`, the service names,
the information records. The kernel is known as the NanoKernel.

Each statement below is marked with how it is known:

- **[ROM]** read from a ROM image's data or kernel code;
- **[image]** follows from the emulator image alone;
- **[source]** stated in, or read from, the `powermac-rom` kernel
  disassembly;
- **[name]** a conventional name attached to something whose behaviour
  is established by one of the above.

## Where `Emulator.x` comes from

The `powermac-rom` makefile takes `Emulator.x` as a ready-made input; it
is not built from anything in the project. The project's configuration
record source describes itself as "based on Mac OS ROM 8=9=10" with the
bootstrap version string `NewWorld v1.0`, and the 68K ROM image that
accompanies it has version `$077D`, sub-version `$45F6` **[source]**.
`Emulator.x` is therefore the emulator of the last "Mac OS ROM" files —
the ROM images that New World Macintoshes load from disk — wrapped in an
XCOFF object so that it can be linked into a rebuilt ROM. That agrees
with the evidence of the build table below: it is later than every ROM
chip, and it needs a kernel that provides service 8.

The emulator has no source in that project. Its build script can
optionally rebuild the *68K* ROM image from a separate source tree (the
`mac-rom` repository, whose build products are laid out as
`BuildResults/RISC/Image/RomMondo`); the PowerPC emulator is always the
prebuilt binary **[source]**.

## Builds of the emulator

`Emulator.x` is not found in any of the 23 Macintosh ROM images that were
examined (ROM chips of machines from the Quadra 840AV to the PowerBook G3
Series); it is a later build than all of them. Running
`tools/rominfo.py` over those images groups them by the emulator they
contain **[ROM]**:

| Emulator build | Recompiler credit | Recompiler code ends | Kernel services | Found in |
|---|---|---|---|---|
| — | (68K machines: no emulator) | | | Quadra 660AV/840AV, PowerBook 190cs, PowerBook 520/540; and a damaged Power Mac 9700 prototype dump |
| Interpreter only, three variants | none | | 0–4 | Power Mac 6100/7100/8100, Workgroup Server 9150 |
| First with the recompiler | "Eric Traut" | `17380` | 0–5 | Power Mac 7200/7500/8500/9500 (both versions), 7300/7600/8600/9600 (both versions), PowerBook 2300, Pippin |
| Variant of the above | "Eric Traut" | `173A0` | 0–5 | Power Mac and Performa 5200/5300/6200/6300 |
| Tuned, two variants | "Eric Traut, tuned by Bob Abeles" | `180A8` | 0–5 | Performa 6400; PowerBook 1400 |
| Tuned | "Eric Traut, tuned by Bob Abeles" | `182E8` | 0–6 | Power Mac 6500 |
| Tuned | "Eric Traut, tuned by Bob Abeles" | `182E8` | 0–7 | Power Mac G3, PowerBook G3 Series |
| **`Emulator.x`** | "Eric Traut, tuned by Bob Abeles, hacked by Murph" | `182FC` | uses 0–8 | none of the above |

"Kernel services" is the range of service numbers for which the kernel
in the same ROM installs a routine; for `Emulator.x` it is the range the
emulator calls.

Some observations:

- In the NuBus Power Macs the emulator is interpretive only, and its code
  is at ROM offset `320000` rather than `360000`. The dispatch table is
  at `380000` in every Power Macintosh ROM examined.
- The recompiler appears with the first PCI Power Macs, and it is
  already the design documented in
  [09-dynamic-recompiler.md](09-dynamic-recompiler.md): the first build's
  recompiler begins with the same instructions and uses the same state
  block fields. The direct-mapped cache of US 5,790,825, and its 128 KB
  offset table, are not in any of these ROMs.
- The dispatch table hardly changes. Leaving aside the displacements of
  branches to routines that have moved, three entries differ between
  the first recompiling build and the G3 build (private opcodes `FE01`,
  `FE11` and `FE20`) and none between the G3 build and `Emulator.x`.
- `lwarx`/`stwcx.` (in the recompiler's invalidation requests) first
  appear in the G3 build.
- Each later kernel adds services: 5 with the first PCI machines, 6 with
  the Power Mac 6500, 7 with the G3. `Emulator.x` calls service 8, which
  none of these kernels provides; the kernel in `powermac-rom`, which
  belongs with it, does.
- The `UNPK -(Ay),-(A7)` defect
  ([14-static-checks.md](14-static-checks.md)) is present, at the same
  offset, in the first recompiling build, the G3 build and `Emulator.x`.

What changed in the code from the first recompiling build to the G3
build, and from there to `Emulator.x`, is the subject of
[15-build-history.md](15-build-history.md).

The rest of this chapter uses the Power Macintosh 8600/9600 ROM
(checksum `960FC647`), which contains the first recompiling build. The
interface to the kernel described below is the one that ROM's kernel
implements; `Emulator.x` uses the same context block offsets and the
same first six services.

## Where the emulator lives

A configuration record for the kernel (`NKConfigurationInfo` **[name]**)
is at ROM offset `30D000` **[ROM]**. Offsets in it are relative to the
record. The fields that concern the emulator:

| Field | Value | Meaning |
|---|---|---|
| `EmulatorCodeOffset`, `EmulatorCodeSize` | ROM offset `360000`, `0x20000` | The emulator's code (`EmTop`…`EmBtm`) |
| `OpcodeTableOffset`, `OpcodeTableSize` | ROM offset `380000`, `0x80000` | The dispatch table, up to the last byte of the ROM |
| `LA_EmulatorCode` | `0x68060000` | Address at which the code is mapped |
| `LA_DispatchTable` | `0x68080000` | Address at which the table is mapped |
| `EmulatorEntryOffset` | offset of `EmEntry` in the code | |
| `KernelTrapTableOffset` | offset of `EmKernelTrapTable` in the code | |
| `LA_EmulatorData` | `0x68FFF000` | The emulator state block (one page) |
| `ECBOffset` | `0x100` | The emulator's context block within the state block |
| `IplValueOffset` | `0x70` | The interrupt level word within the state block |
| `LA_KernelData` | `0x68FFE000` | The kernel's own data page |
| `LA_InfoRecord` | `0x5FFFE000` | Read-only view of kernel information for other software |

So in this machine the image described by this documentation is mapped
at `0x68060000`, and offset *x* in the source is address
`0x68060000 + x`. The dispatch table is at `0x68080000`–`0x680FFFFF`,
which satisfies the alignment requirements in
[01-overview.md](01-overview.md): 512 KB aligned, with bit 20 clear. The
two addresses imply that the last megabyte of the ROM is mapped at
`0x68000000`–`0x680FFFFF`; odd-address detection needs the megabyte
above that to be unmapped.

The 1994 patent's figures (`$68000000` for the table, with the code
after it) describe an earlier arrangement. The 128 KB "DR offset table"
of US 5,790,825 does not exist in this ROM: the emulator's 640 KB runs to
the end of the ROM, and what precedes it is Open Firmware (to about ROM
offset `348800`) followed by zeros **[ROM]**.

The symbols in `Emulator.x` (`EmTop`, `EmEntry`, `EmKernelTrapTable`,
`OpcodeTblTop`, …) correspond to these record fields: they exist so that
a ROM build can compute the offsets.

## How the kernel starts the emulator

During initialisation the kernel prepares the emulator's context block at
`LA_EmulatorData + ECBOffset` **[ROM]**:

| Context block offset | State block offset | Set to |
|---|---|---|
| `+0x84` | `+0x184` (`ecb_pc`) | `LA_EmulatorCode + EmulatorEntryOffset` — the address of `EmEntry` |
| `+0x94` | `+0x194` (`ecb_r3`) | `LA_EmulatorData` |
| `+0x9C` | `+0x19C` (`ecb_r4`) | `LA_DispatchTable` |
| `+0x5C` | `+0x15C` (`ecb_handler_return`) | `LA_EmulatorCode + KernelTrapTableOffset` — the address of `EmKernelTrapTable` |

and then runs the context, which begins executing `EmEntry` with r3 and
r4 as the emulator expects.

`EmEntry` rewrites `ecb_pc` to the address of `emulator_reset`, sets
`ecb_saved_flags`, `ecb_saved_enables`, `ecb_handler` (to
`native_exception_handler`) and `ecb_handler_arg` (to `take_bus_error`),
and calls service 0, `ReturnFromException`, which resumes the context at
`ecb_pc` **[image, ROM]**. That is how `emulator_reset` is reached. The
purpose of the detour is to make the kernel load the context's flags and
handler in the ordinary way.

## Kernel services

A trap in the emulator context reaches the kernel's program exception
handler. The handler **[ROM]**:

1. Compares the address of the trapping instruction with the address of
   `EmKernelTrapTable`. If it lies in the first sixteen words of the
   table, its position is the service number.
2. Otherwise reads the instruction, and if it is `twi 31, r31, n` with
   *n* < 16, uses *n*.
3. Counts the call (in `NanoKernelCallCounts`, part of the information
   records) and jumps to the service's routine through a 16-entry table
   in the kernel's data page.

Because of step 1, the immediate operand of a trap inside the table does
not matter. That explains slot 14 of the table in `Emulator.x`, whose
operand is 13: it is still service 14. Step 2 is what makes the inline
`twi 31, r31, 6` at `0DB34` (private opcode `FE20`) work.

| Service | Name **[source]** | Kernel in the 8600/9600 ROM | Used by the emulator for |
|---|---|---|---|
| 0 | `ReturnFromException` | implemented | Starting; returning from `native_exception_handler` |
| 1 | `RunAlternateContext` | implemented | `switch_to_native` |
| 2 | `ResetSystem` | implemented | The `RESET` instruction |
| 3 | `VMDispatch` | implemented | Private opcodes `FE06`, `FE0A` (handler slot `+0x968`) |
| 4 | `PrioritizeInterrupts` | implemented | Lowering the SR interrupt mask below a pending request |
| 5 | `PowerDispatch` | implemented | Private opcode `FE0F` (handler slot `+0x99C`) |
| 6 | `RTASDispatch` | not implemented (first in the Power Mac 6500 ROM) | Private opcode `FE20` |
| 7 | `CacheDispatch` | not implemented (first in the G3 ROMs) | Private opcode `FE11` (handler slot `+0x9A4`) |
| 8 | `MPDispatch` | not implemented (in none of the ROM chips examined) | Private opcode `FE1F` (handler slot `+0x9DC`) |
| 9–14 | unused (12 and 14 are named `CallAdapterProcPPC` and `CallAdapterProc68k`, and marked unused) | not implemented | Not used |
| 15 | `Thud` — the kernel's panic | the same routine as every unimplemented service | No free native context save area |
| 16 | | outside the kernel's table | Not used |

The assignments agree with how the emulator uses each service, and the
later kernel's own comments tie service 3 to private opcode `FE0A` and
service 5 to `FE0F` **[source]**.

## Exceptions in the emulator context

When the processor takes an exception while the emulator context is
running and the exception is passed to the context, the kernel
**[ROM]**:

1. Saves in the context block what it is about to overwrite: the
   interrupted pc (`+0x84`), LR (`+0x8C`), r3 (`+0x94`), r4 (`+0x9C`),
   and the context's flags and enables (`+0x40`, `+0x44`). Exceptions
   are disabled for the context so that a second one cannot be
   delivered on top of the first **[source]**.
2. For a memory fault, stores its description of the fault in the
   context block at `+0x64`, `+0x68`, `+0x6C`, `+0x74` and `+0x7C`. The
   emulator's handler uses these as the fault address and the kind and
   size of the access.
3. Enters the context's handler (`+0x4C`) with r3 = the address of the
   context block, r4 = the handler argument (`+0x54`), and the return
   address set to the kernel trap table.

`ReturnFromException` reverses step 1: it restores the flags, enables,
LR, r3 and r4 from those fields and resumes at the saved pc. The fields
at `+0x84`, `+0x94` and `+0x9C` are the same ones the kernel initialises
with the address of `EmEntry`, the state block and the dispatch table —
starting the emulator is, to the kernel, returning from an exception
that never happened.

For the emulator this means `native_exception_handler` runs with the
address of `take_bus_error` in `data` and with a return address that
leads to `ReturnFromException`. The handler chooses where to resume,
writes that to `ecb_pc`, and returns; see
[06-exceptions.md](06-exceptions.md).

## Interrupts

The kernel's interrupt handler delivers an interrupt to the emulator
without running any emulator code **[source]**:

1. It stores the interrupt level in the word at
   `LA_EmulatorData + IplValueOffset` (`+0x70` of the state block, whose
   low byte is `interrupt_level`).
2. If the level is non-zero it ORs the configuration record's
   `PostIntMaskInit` (`0x00E00000`) into the interrupted context's
   condition register; if the level is zero it ANDs the register with
   `ClearIntMaskInit` (`0xFF9FFFFF`).

In the emulator's terms, `0x00E00000` is CR bits
`cr_special_event_pending`, `cr_interrupt_asserted` and
`cr_interrupt_pending`, and the clear mask removes the last two. The
emulator then notices at its next DISPATCH. This is why the `STOP` loop,
which only tests `cr_interrupt_pending`, terminates.

`TestIntMaskInit` (`0x00200000`, `cr_interrupt_pending`) is a third mask
from the same record, used by the kernel's `PowerDispatch` service.
Because the masks come from the ROM's configuration record, the
assignment of these three condition register bits is part of the
contract between a ROM and its emulator, not something the kernel
knows.

## Information records

The kernel publishes pointers to several records at fixed addresses at
the top of the `LA_InfoRecord` page **[ROM]**: each is a 4-byte address
followed by a 2-byte version and a 2-byte length.

| Address | Record **[name]** | Length in this ROM |
|---|---|---|
| `0x5FFFEFD8` | The same record as `0x5FFFEFF8` | 64 |
| `0x5FFFEFE0` | `NanoKernelInfo` (exception and service call counters) | 256 |
| `0x5FFFEFE8` | `DiagInfo` | 256 |
| `0x5FFFEFF0` | `SystemInfo` | 256 |
| `0x5FFFEFF8` | `ProcessorInfo` | 64 |

The dynamic recompiler's one absolute address, `0x5FFFEFF0`, is the
`SystemInfo` pointer. `dr_setup` reads the word at offset 8 of that
record — `LogicalMemorySize` **[name]** — to decide how much of the 68K
address space its page bitmap must cover.

## Mac OS low memory

The line-A fast path uses two tables in 68K low memory **[image]**. Their
addresses, held at `+0x7B4` and `+0x7B0` of the state block, are `0x400`
and `0xE00`: the classic Mac OS `OSTable` and `ToolTable` **[name]**, the
dispatch tables for operating system and Toolbox traps.

## Reproducing this

```
$ python3 tools/rominfo.py "path/to/8600-9600.ROM"
```

prints the configuration record fields, the mapped addresses, and a
comparison of the ROM's emulator with `Emulator.x`. Given several ROMs,

```
$ python3 tools/rominfo.py *.ROM
```

it prints one line for each: a fingerprint of the emulator build, where
the code is, the recompiler credit and the kernel's services. A ROM that
contains the same build as `Emulator.x` is reported as such.

`tools/buildcmp.py` compares the code of a ROM's build with `Emulator.x`
routine by routine ([15-build-history.md](15-build-history.md)).
