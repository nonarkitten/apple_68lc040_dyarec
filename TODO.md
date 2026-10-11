# TODO

Working notes and progress tracking for the Emulator disassembly. Finished,
reader-facing material lives in `docs/`; anything tentative, in progress or
conversational belongs here (or in `CLAUDE.md` for workflow rules).

## Checklist

Legend: `[x]` done, `[~]` partly done, `[ ]` not started.

### 1. Foundations
- [x] Identify the container format of `Emulator.x` (XCOFF, one `.text` section, 6 symbols)
- [x] Map the image into its major regions (interpreter, DR, dispatch table)
- [x] Pick a toolchain and prove a byte-exact round trip is possible
- [x] PowerPC decoder that only emits forms which reassemble identically (`tools/ppc.py`)
- [x] 68040 opcode-word decoder for naming dispatch table entries (`tools/m68k.py`)
- [x] Source generator driven by annotation files (`tools/gen.py`)
- [x] `make` builds `build/Emulator.x`; `make verify` compares it with the reference

### 2. Legible source
- [~] Role names for every register (patent names: `d0`, `a0`, `pc`, `prefetch_data`, ...)
- [ ] Symbolic condition-register flag bits
- [ ] Symbolic `EmulatorState` field offsets
- [x] Alignment padding expressed as directives rather than runs of `nop`
- [ ] Embedded data tables emitted as data (with symbolic code offsets where they hold pointers)
- [x] Automatic end-of-line comments for cryptic PowerPC instructions (rotate/mask, CR logic, ...)
- [x] Dispatch table: every entry commented with its 68K instruction

### 3. Understanding the interpreter (0x00000-0x0EA44)
- [ ] Dispatch / prefetch / decode sequence
- [ ] Effective address routines (incl. the 256-entry indexed-mode decode table)
- [ ] Condition code model (N/Z in CR0, V/C in XER, X in `ccr_x`)
- [ ] Per-instruction handler families named from the dispatch table
- [ ] Exceptions, interrupts and special events
- [ ] Privileged instructions, SR changes, MOVEC, RTE, STOP, RESET
- [ ] Emulator entry, initialisation and the kernel trap table
- [ ] Mixed-mode / native-code interface

### 4. Understanding the dynamic recompiler (0x10000-0x182FC)
- [ ] Entry from the interpreter and return paths
- [ ] Translation cache layout, tag store, line allocation
- [ ] Translator (per-opcode code generation, the embedded tables)
- [ ] DR-specific semantic routines
- [ ] Cache flush / invalidation

### 5. Documentation (`docs/`)
- [ ] Overview and image layout
- [ ] Register conventions
- [ ] Dispatch mechanism
- [ ] Effective address calculation
- [ ] Condition codes
- [ ] Exceptions and special events
- [ ] EmulatorState layout
- [ ] Kernel / native interface
- [ ] Dynamic recompiler
- [ ] Building and verifying
- [ ] Known gaps and what would be needed to run and test the code
- [ ] Cross-reference to the three patents

### 6. Wrap-up
- [ ] README rewritten for the new repository layout
- [ ] Decide whether to freeze `src/` as hand-maintained source (see "Open decisions")
- [ ] Re-point or remove the `origin` remote (still `ogamespec/ppcd`)
- [ ] Try the build with GNU binutils (`powerpc-*-as`) as a second assembler

## Plan

### Goal
A reassemblable, readable, documented source rendering of the Apple 68LC040
emulator, proven faithful by rebuilding `Emulator.x` byte for byte.

### Approach
1. **Never hand-type instructions.** The source is produced by a generator
   (`tools/gen.py`) from the reference binary plus human-written annotation
   files (`annotations/`): labels, comments, data ranges, register naming.
   Every regeneration is checked by reassembling and comparing, so a wrong
   annotation can make the text misleading but can never make the code wrong.
2. **Work outside-in.** Get the whole image round-tripping first with
   automatic labels, then replace automatic names and comments with real ones
   region by region.
3. **Use the dispatch table as the Rosetta stone.** Each of the 65536 table
   entries is the start of a known 68K instruction, which names the handler
   it branches to.
4. **Use the original vocabulary.** Register, macro and label names that
   appear in the patents (`prefetch_data`, `disp_table`, `cb`, `cea_*`,
   `process_special_event`, DECODE1/DECODE2/PREFETCH/DISPATCH) are preferred
   over invented ones.
5. **Docs are written last**, from what the annotated source actually shows,
   and cross-checked against the patents.

### Toolchain decisions
- GNU `as` syntax, preprocessed with the C preprocessor (`.S` files).
  Register and field names are `#define`s because LLVM's PowerPC assembler
  rejects symbols as the base register of a memory operand.
- Assembler: LLVM (`llvm-mc`, triple `powerpc-unknown-elf`). The source is
  kept neutral enough that GNU binutils should also work (untested).
- Comments use `//` (removed by the preprocessor).
- Three things LLVM would encode differently from the 1995 binary are wrapped
  in macros: old-style "y-bit" branch hints, `mcrxr`, and `lswx`/`stswx`.
- A single translation unit: no linker, no relocations.
- The XCOFF wrapper (header + symbol table) is rebuilt by a small tool from
  the assembled object's symbols.

### Milestones (each ends with a commit)
- M0  Repository restructure, plan, decoders.
- M1  Generator + build + verify: whole image round-trips from `src/`.
- M2  Interpreter core named and commented.
- M3  Interpreter handlers named; exceptions and system code commented.
- M4  Dynamic recompiler named and commented.
- M5  Documentation set.
- M6  Wrap-up, README, final checklist state.

## Open decisions (for Renee)
- **Freezing the source.** While analysis is ongoing `src/` is generated and
  must not be edited by hand. Once the annotations are considered complete
  the generator could be retired and `src/` edited directly. Not decided.
- **Load address.** The image is position independent. Offsets from `EmTop`
  are used throughout. The original `Emulator.asm` assumed the dispatch table
  at `0x68000000` (as in patent US5574873); PCI Power Macs are believed to
  place it at `0x68080000`. Needs confirming against a ROM before the docs
  state it as fact.
- **Licence / legal note** for the repository (the code is Apple's).

## Notes and findings (working log)
- `Emulator.x` timestamp is Mac-epoch 2018-02-08, i.e. the XCOFF wrapper was
  produced by a ROM-rebuild project, not by Apple's original build.
- Image regions: `0x00000` interpreter (Gary Davidian), `0x0EA44` nop pad,
  `0x10000` DR (Eric Traut, Bob Abeles, "Murph"), `0x182FC` zero pad,
  `0x20000` dispatch table (512 KB).
- The patent's 128 KB "DR offset table" is not present in the image.
- The dispatch table branches into itself about 2000 times (e.g. `-(An)`
  entries adjust the register then reuse the `(An)` entry) and uses unused
  F-line opcode slots as spare code space.
- Unsupported by `llvm-mc`: `mcrxr`, `lswx`, `stswx`; `+`/`-` hints are
  encoded with "at" bits instead of the old y bit.
