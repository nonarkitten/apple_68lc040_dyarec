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
- [x] Static checker (`make static-check`): legality, `rtn_addr` convention, instruction length
- [x] ROM inspection tool (`tools/rominfo.py`)

### 2. Legible source
- [x] Role names for every register (patent names: `d0`, `a0`, `pc`, `prefetch_data`, ...)
- [~] Symbolic condition-register flag bits (CR1 and CR2 done; one CR2 bit, cr2.gt, still unnamed)
- [~] Symbolic `EmulatorState` field offsets (about 55 named, incl. the context block; many still numeric)
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
- [x] The emulator in a real ROM (addresses, kernel start-up and services)
- [x] Static checks and their findings
- [ ] Per-instruction-family notes (shifts, multiply/divide, bit fields, BCD) once those routines are read
- [ ] Extend the recompiler chapter once the emitters are read

### 6. Wrap-up
- [x] README rewritten for the new repository layout
- [x] Repository published; `origin` is `nonarkitten/apple_68lc040_dyarec` (done by Renee)
- [x] Licence: CC0 for the project's own work, with `NOTICE.md` on scope (Renee to confirm the wording)
- [x] Per-file freeze mechanism for retiring the generator gradually (`frozen` in `annotations/layout.txt`)
- [ ] Merge branch `rom-context` (ROM findings, licence, static checker)
- [ ] Try the build with GNU binutils (`powerpc-*-as`) as a second assembler

### 7. Next (ideas, roughly in order of value)
- [x] Find where `Emulator.x` came from: elliotnunn/powermac-rom (identical file), i.e. the
      emulator of the NewWorld "Mac OS ROM" 8/9/10 era (68K ROM `$077D.45F6`)
- [ ] Get an actual "Mac OS ROM" file and confirm with `tools/rominfo.py` (needs the 4 MB image
      unpacked, e.g. with elliotnunn/tbxi, which the project's README now points to)
- [ ] Diff the two builds routine by routine: what did "tuned by Bob Abeles, hacked by Murph" change?
- [ ] Extend `tools/check.py`: condition-code effects (which instructions may touch CR0 / XER /
      `ccr_x`), which 68K registers a routine writes, and loops (shifts, MOVEM)
- [ ] Minimal kernel stub + PowerPC interpreter harness to actually execute 68K test programs
      (`docs/11-testing-gaps.md`, stage 2); the kernel protocol is now known
- [ ] Read the routines behind the forty FPU "exception stub" slots (`0E6D4`-`0E78F`)

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

## Decisions

Settled (2026-10-11):
- **Generator**: keep it, retire it gradually and only as needed. A file is
  handed over to manual editing by marking it `frozen` in
  `annotations/layout.txt`; nothing is frozen yet.
- **External names**: use the conventional names for kernel structures,
  services and Mac OS globals, saying how each is known.
- **Load address**: settled by the ROM - code `0x68060000`, table
  `0x68080000` (`docs/13-rom-context.md`). The docs still use offsets from
  `EmTop` throughout, since the image is position independent.
- **Automatic handler names**: fine as they are (the patent's own names are
  no prettier).

Open:
- **Licence wording.** I chose CC0 for everything that is ours and an
  explicit statement that Apple's code is not ours to license. That gives
  you "no claim over it" without pretending to put Apple's work in the
  public domain, which nobody but Apple can do. Not legal advice; change
  `NOTICE.md` if you want a different stance.

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
- The emulator in the 8600/9600 ROM (960FC647) is an earlier build than
  `Emulator.x`: interpreter credit at `0E7C0`, recompiler credit only
  "Eric Traut", recompiler ends at `17380`, trap table of 16 entries.
  Same recompiler design (hash lookup, three passes), so the patent's
  direct-mapped scheme and its 128 KB offset table are not in that ROM
  either. If an even earlier DR ROM exists (the first PCI machines,
  1995), it would be the place to look for the patent's design.
- The kernel in that ROM implements services 0-5 only; `Emulator.x` also
  uses 6, 7 and 8, so it expects a later kernel.
- `tools/check.py` found a real defect in the original: `UNPK -(Ay),-(A7)`
  (`unpk_to_a7`, `0C2E8`) skips the instruction that steps over the
  adjustment word. Present in both builds.
- It also caught a mistake in `tools/m68k.py` (PTESTR was decoded at the
  wrong opcodes), since fixed - the table comments for `F568`-`F56F`
  changed.
- Twelve dispatch table entries look ahead at the next opcode (US5623617);
  three more special-case one indexed extension word (`2F30`, `4EB0`,
  `4EF4` with `81E2`, `81E1`, `0521`). What code uses those exact
  extension words is unknown - probably the trap dispatcher or a jump
  table idiom in the ROM; searching the 68K ROM for them would tell.
- ROM archive scan (2026-10-11): five recompiling builds before `Emulator.x`. The very first
  PCI ROM (7200/7500/8500/9500 v1) already has the hash-lookup recompiler, so the patent's
  direct-mapped design never shipped in a ROM we have. Kernel services grow 0-4 (NuBus),
  0-5 (PCI), 0-6 (6500), 0-7 (G3); my names for 6/7/8 (RTAS, Cache, MP) fit that timeline
  (CHRP work in 1997, G3 backside cache, MP in 1999) but remain recalled, not verified.
- powermac-rom (2026-10-11): `Emulator.x` there is byte-identical to ours and is a prebuilt
  input to its makefile - no emulator source exists in it. Its NanoKernel disassembly and
  `EmulatorPublic.a` confirmed: service names 0-8 (15 is "Thud"), the ECB layout (+0x84 pc,
  +0x8C LR, +0x94 r3, +0x9C r4 are the save slots of the exception hand-off), and that the
  kernel posts interrupts by OR-ing `PostIntMaskInit` (CR bits 8, 9, 10) into the emulator's
  CR. CR bit 9 is now `cr_interrupt_asserted`.
- `NKPublic.a` has comments like "SS replaces with jump to emu+f900" on the service table:
  SheepShaver patches these. Worth a look for how an existing emulator hosts this code -
  it is effectively a worked example of the "minimal kernel stub" in docs/11.
- `EmulatorPublic.a` calls +0x740.. "EmuControlRegisters Reg0..Reg14"; our reading is that
  [+0x708] points there and it holds D0-D7/A0-A6/pc for native code. Not reconciled yet.
- Still no DR offset table anywhere: not in `Emulator.x`, not in 23 ROM chips, not in
  powermac-rom. The shipped recompiler never used one.
