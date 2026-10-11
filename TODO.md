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
- [x] Role names for every register (patent names: `d0`, `a0`, `pc`, `prefetch_data`, ...)
- [~] Symbolic condition-register flag bits (CR1 and CR2 done; one CR2 bit, cr2.gt, still unnamed)
- [~] Symbolic `EmulatorState` field offsets (about 45 named; many still numeric)
- [x] Alignment padding expressed as directives rather than runs of `nop`
- [x] Embedded data tables emitted as data (with symbolic code offsets where they hold pointers)
- [x] Automatic end-of-line comments for cryptic PowerPC instructions (rotate/mask, CR logic, ...)
- [x] Dispatch table: every entry commented with its 68K instruction
- [x] Every routine reached from the dispatch table named and headed by the instructions that use it
- [ ] Replace the 1,564 remaining address-style labels (`L_xxxxx`) with meaningful ones
- [ ] Review the automatic handler names; hand-name the awkward ones (`*_etc_any_any`, numeric suffixes)
- [ ] Symbolic offsets in the recompiler's descriptor tables (`16E48`, `17228`, `17470`) and template loads

### 3. Understanding the interpreter (0x00000-0x0EA44)
- [x] Dispatch / prefetch / decode sequence
- [x] Effective address routines (incl. the 256-entry indexed-mode decode table)
- [x] Condition code model (N/Z in CR0, V/C in XER, X in `ccr_x`)
- [~] Per-instruction handler families (named automatically; only a sample read in full)
- [x] Exceptions, interrupts and special events
- [~] Privileged instructions, SR changes, MOVEC, RTE, STOP, RESET (gates and tables understood; `0C3D0`-`0D0EC` not annotated line by line)
- [x] Emulator entry, initialisation and the kernel trap table
- [~] Mixed-mode / native-code interface (flow understood; context block layouts not)
- [ ] Bit field, BCD, MOVEM, MOVEP, MOVE16, CAS/CAS2, CHK2/CMP2, 64-bit multiply/divide routines
- [ ] Private opcodes `FC01`-`FC11` and the ones that forward to kernel traps

### 4. Understanding the dynamic recompiler (0x10000-0x182FC)
- [x] Entry from the interpreter and return paths
- [x] Lookup table, cache layout, block allocation
- [~] Translator (three passes and record format understood; per-line decoders `10280`-`10FFF` only sampled)
- [ ] Code emitters `11338`-`17640` (about 6,000 instructions, sampled only)
- [x] Block chaining and inline caches
- [x] Cache flush / range invalidation / page bitmap
- [~] Fault recovery in translated code (purpose clear, details not annotated)

### 5. Documentation (`docs/`)
- [x] Overview and image layout
- [x] Register conventions
- [x] Dispatch mechanism
- [x] Effective address calculation
- [x] Condition codes
- [x] Exceptions and special events
- [x] EmulatorState layout
- [x] Kernel / native interface
- [x] Dynamic recompiler
- [x] Building and verifying
- [x] Known gaps and what would be needed to run and test the code
- [x] Cross-reference to the three patents
- [ ] Per-instruction-family notes (shifts, multiply/divide, bit fields, BCD) once those routines are read
- [ ] Extend the recompiler chapter once the emitters are read

### 6. Wrap-up
- [x] README rewritten for the new repository layout
- [ ] Merge branch `emulator-disassembly` into `master` (left for Renee)
- [ ] Decide whether to freeze `src/` as hand-maintained source (see "Open decisions")
- [ ] Re-point or remove the `origin` remote (still `ogamespec/ppcd`)
- [ ] Try the build with GNU binutils (`powerpc-*-as`) as a second assembler
- [ ] Decide what to do with the untracked legacy files (`ppcd/`, `Emulator.asm`; currently git-ignored)

## How to continue

1. `make check` — should print `OK`.
2. Pick an unchecked item above. For naming and commentary work:
   `python3 tools/show.py START END` prints the code with offsets; add
   labels and comments to a file in `annotations/`; `make check`; commit.
3. When a finding changes what the docs say, change the docs in the same
   commit.

Suggested order: private opcodes and privileged instructions
(`0C3D0`-`0D0EC`), then the arithmetic families, then the recompiler's
decoders and emitters.

## Open decisions (for Renee)

- **Freezing the source.** While analysis is ongoing `src/` is generated
  and must not be edited by hand. Once the annotations are considered
  complete the generator could be retired and `src/` edited directly.
- **Load address.** The image is position independent and the docs use
  offsets from `EmTop` only. The original `Emulator.asm` assumed the
  dispatch table at `0x68000000` (as in US5574873). My recollection is
  that PCI Power Macs map the code at `0x68060000` and the table at
  `0x68080000`, but that is not something this image can confirm, so it
  is deliberately not stated in `docs/`. Worth checking against a ROM's
  configuration data.
- **Licence / legal note.** The code is Apple's. The README describes
  provenance but the repository has no licence file (the old one covered
  ppcd and was removed with it).
- **Names of kernel-side things.** The docs describe the kernel interface
  only from the emulator's side and avoid names from other reverse
  engineering efforts (NanoKernel, ContextBlock, KernelData, ...). If you
  want those names used, they can be added once checked against a source.

## Notes and findings (working log)

- `Emulator.x` timestamp is Mac-epoch 2018-02-08, i.e. the XCOFF wrapper
  was produced by a ROM-rebuild project, not by Apple's original build.
- The patent's 128 KB "DR offset table" is not present; the recompiler in
  the image is a different, later design (see `docs/12-patents.md`).
- `llvm-mc` does not accept `mcrxr`, `lswx`, `stswx`; encodes `+`/`-`
  hints with "at" bits; rejects symbols as memory-operand base registers
  (hence the C preprocessor for names); emits a relocation for a branch
  to a `.globl` symbol (hence the exported symbols are left local).
- `0C960` is a lone zero word in the middle of code; cause unknown.
- `0x21F8` appears as the last word of the recompiler (`182F8`) and is
  stored at `+0x718` in the state block by both `init_state` and
  `dr_setup`; meaning unknown (possibly a version or size).
- `EmEntry` is followed by `twi 31, r0, -0x2153` and an infinite loop,
  never reached. `-0x2153` is `0xDEAD` as a signed 16-bit value: a
  "should not get here" marker.
- The `sc` at `0C480` (r0 = 13, r3 = 1) is the only system call
  instruction; all other kernel services use `twi 31, r31, n`.
- cr2.gt (CR bit 9) is consulted by `check_interrupt` and set from the
  native-context status path (`0E28C`); its exact meaning is not yet
  pinned down.
- Ideas not yet pursued: a static checker that uses the dispatch table as
  a specification (see `docs/11-testing-gaps.md`, stage 1).
