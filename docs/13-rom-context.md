# 13. The Emulator in a ROM

The other chapters describe the image from the inside. This one records
what a real ROM shows about the image's surroundings: where it is loaded,
how the kernel starts it, and what the kernel does when the emulator
traps or faults.

The evidence is a set of 23 Macintosh ROM images, examined with
`tools/rominfo.py`, and in particular the ROM of the Power Macintosh 8600
and 9600 (4 MB, checksum `960FC647`, version `$077D`), whose kernel was
disassembled. ROM images are not part of this repository.

Names of kernel structures and services in this chapter (`ConfigInfo`
field names, `ContextBlock`, `KernelData`, `ReturnFromException`, the
`nk…InfoPtr` addresses, `OSTable`, `ToolTable`) are the ones used in
Apple's published headers and in community disassemblies of this kernel,
which is known as the NanoKernel. Each statement below is marked with how
it is known:

- **[ROM]** read from this ROM's data or kernel code;
- **[image]** follows from the emulator image alone;
- **[name]** a conventional name attached to something whose behaviour
  is established by one of the above;
- **[later]** known from later versions of the kernel, and not present
  in this ROM.

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
- The dispatch table changes little. Between the first recompiling
  build and the G3 build only 26 entries have a different first
  instruction (`TAS` and private opcodes); between the G3 build and
  `Emulator.x`, 435 do (`CHK`, `CAS`, `CHK2`/`CMP2`, `TAS`, `MOVE`
  to and from the SR, private opcodes).
- `lwarx`/`stwcx.` (in the recompiler's invalidation requests) first
  appear in the G3 build.
- Each later kernel adds services: 5 with the first PCI machines, 6 with
  the Power Mac 6500, 7 with the G3. `Emulator.x` calls service 8, which
  none of these kernels provides, so it belongs with a kernel later than
  the G3's — that is, to the generation of machines whose ROM is loaded
  from a file rather than held in a chip *(inferred from the above; no
  such image was examined)*.
- The `UNPK -(Ay),-(A7)` defect
  ([14-static-checks.md](14-static-checks.md)) is present, at the same
  offset, in the first recompiling build, the G3 build and `Emulator.x`.

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
`ecb_flags`, `ecb_enables`, `ecb_handler` (to
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

| Service | Name | Kernel in this ROM | Used by the emulator for |
|---|---|---|---|
| 0 | `ReturnFromException` | implemented | Starting; returning from `native_exception_handler` |
| 1 | `RunAlternateContext` | implemented | `switch_to_native` |
| 2 | `ResetSystem` | implemented | The `RESET` instruction |
| 3 | `VMDispatch` | implemented | Private opcodes `FE06`, `FE0A` (handler slot `+0x968`) |
| 4 | `PrioritizeInterrupts` | implemented | Lowering the SR interrupt mask below a pending request |
| 5 | `PowerDispatch` | implemented | Private opcode `FE0F` (handler slot `+0x99C`) |
| 6 | `RTASDispatch` **[later]** | not implemented (first in the Power Mac 6500 ROM) | Private opcode `FE20` |
| 7 | `CacheDispatch` **[later]** | not implemented (first in the G3 ROMs) | Private opcode `FE11` (handler slot `+0x9A4`) |
| 8 | `MPDispatch` **[later]** | not implemented (in none of the ROMs examined) | Private opcode `FE1F` (handler slot `+0x9DC`) |
| 9–14 | | not implemented | Not used |
| 15 | `SystemCrash` | the same routine as every unimplemented service | No free native context save area |
| 16 | | outside the kernel's table | Not used |

The service names are **[name]**; the assignments for 0–5 agree with how
the emulator uses each one. Services 6–8 are used only by `Emulator.x`,
not by the emulator in this ROM, consistent with `Emulator.x` belonging
to a later ROM with a later kernel.

## Exceptions in the emulator context

When the processor takes an exception while the emulator context is
running and the exception is passed to the context, the kernel
**[ROM]**:

1. Saves the context's flags and enables in the context block
   (`+0x40`, `+0x44`).
2. For a memory fault, stores its description of the fault in the
   context block at `+0x64`, `+0x68`, `+0x6C`, `+0x74` and `+0x7C`. The
   emulator's handler uses these as the fault address and the kind and
   size of the access.
3. Enters the context's handler (`+0x4C`) with r3 = the address of the
   context block, r4 = the handler argument (`+0x54`), and the return
   address set to the kernel trap table.

For the emulator this means `native_exception_handler` runs with the
address of `take_bus_error` in `data` and with a return address that
leads to `ReturnFromException`. The handler chooses where to resume,
writes that to `ecb_pc`, and returns; see
[06-exceptions.md](06-exceptions.md).

## Interrupts

`IplValueOffset` identifies the word at `+0x70` of the state block as the
place where the kernel publishes the interrupt level **[ROM, name]**; the
emulator reads its low byte (`interrupt_level`). The kernel's interrupt
path also sets condition register bits in the interrupted emulator
context, which is what `cr_special_event_pending` and
`cr_interrupt_pending` respond to **[image]** — the `STOP` loop cannot
end otherwise.

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
