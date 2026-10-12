# TODO

Progress tracking and open questions. Finished, reader-facing material is in
`docs/`; workflow rules are in `CLAUDE.md`.

## Checklist

Legend: `[x]` done, `[~]` partly done, `[ ]` not started.

### Done
- [x] `src/` reassembles to a byte-identical `Emulator.x` (`make verify`)
- [x] Registers, CR flags and state fields named; every dispatch table entry commented
- [x] Interpreter core: dispatch, effective addresses, condition codes, exceptions, entry
- [x] Privileged instructions: SR writes, RTE, MOVEC, CHK, format 2 exceptions
- [x] Recompiler: run-time, cache management, structure of the translator
- [x] Recompiler's 142 code generators named from the instructions they translate
- [x] Kernel interface and ROM context, checked against a ROM and the kernel's disassembly
- [x] Documentation set (`docs/`, 15 chapters)
- [x] Static checker (`make static-check`): legality, `rtn_addr`, instruction length,
      and the recompiler's lengths and flag decisions
- [x] PowerPC simulator; 68K programs run under the emulator, interpreted and recompiled
      (`make test`, `tools/run68k.py`); the translator's output can be inspected
      (`tools/drtranslate.py`)
- [x] Source of `Emulator.x` identified; licence and notice in place
- [x] Builds compared (first recompiling build, G3, `Emulator.x`): `tools/buildcmp.py`,
      `docs/15-build-history.md`

### Source legibility
- [x] Labels: three address-style labels remain; about 1,400 are `<routine>_L<n>`, which
      is where things stay unless a name helps
- [~] `EmulatorState` fields: about 75 named, the rest still numeric
- [x] Symbolic template loads and operand emitter tables in the recompiler; every
      emitter's header shows a translation
- [ ] The words of the condition sequence tables (`dr_bcc_sequences` and the like) are
      still plain numbers

### Interpreter still to read
- [ ] Bit fields, BCD, MOVEM, MOVEP, MOVE16, CAS/CAS2, CHK2/CMP2, long multiply/divide
- [~] Private opcodes: all named (Apple's names from SuperMario) and described; the SANE
      arithmetic (`FC04`, `FC06`, `FC08`-`FC0F`, 4 KB) is not read line by line
- [ ] The routines behind the forty FPU handler slots (`0E6D4`-`0E78F`)
- [ ] Mixed mode: the layout of the native context block and the format `$E` frame

### Recompiler still to read
- [x] Pass-1 decoders and their helpers: named from traces, shared helpers read
- [~] Code emitters (`11338`-`17640`): legible now (templates, examples, operand emitters)
      but commented by hand only where something was being looked for
- [ ] Fault recovery in translated code, line by line

### Testing
- [x] Differential fuzzer (`make fuzz`): interpreter against recompiler on random
      straight-line programs; found two recompiler defects, clean otherwise
- [ ] Extend the fuzzer: loops (`DBcc`, backward `Bcc` with bounded counts), `BSR`/`RTS`,
      programs longer than one block, self-modifying code announced with `FC16`, and
      compare-and-branch pairs (the recompiler treats `CMP` + signed `Bcc` specially)
- [ ] `tools/drmap.py` scans with extension words of zero; three decisions depend on them
      (`docs/09`, "What is translated"). `tools/check.py` could scan a second time with
      non-zero words
- [ ] Compare against an independent 68K emulator on a real instruction test suite
- [ ] Extend the simulator harness with the kernel's side: faults to
      `native_exception_handler`, interrupts, `ReturnFromException` (so that `EmEntry`
      can be used), then odd-address detection
- [ ] Extend `tools/check.py`: condition-code effects of interpreter routines, registers
      written, loops
- [ ] Try the build with GNU binutils as a second assembler

### History
- [x] Diff the builds (first PCI, G3, `Emulator.x`): what did the tuning change?
- [ ] The same for the builds in between (Performa 6400, PowerBook 1400, Power Mac 6500)
      and for the NuBus interpreter-only builds; those ROM images are no longer here.
      `tools/buildcmp.py` takes any ROM
- [ ] Confirm `Emulator.x` against an actual "Mac OS ROM" file with `tools/rominfo.py`

### Experiments
- [ ] Feasibility check for the two items below (notes under "The patent's recompiler")
- [ ] Reconstruct the hypothetical original Dynamic Recompiler from the patent by
      using the Dynamic Recompiler to extract what the semantic routines might have been
      and rebuild the Offset Table from that
- [ ] Compare the performance of the reconstructed Dynamic Recompiler versus the one
      that was shipped in ROMs; what was lost (if anything); what was gained (if anything)

## How to continue

1. `make check`, `make static-check` and `make test` should all print `OK`.
2. Pick an item. To name and comment code: `python3 tools/show.py START END`
   prints it with offsets; add labels and comments to a file in
   `annotations/`; `make check`; commit.
3. To find out what a piece of 68K code does under the emulator, run it:
   `tools/run68k.py`, or `tools/drtranslate.py` for the recompiler's output.
4. If a finding changes what the docs say, change the docs in the same commit.

## Decisions

- **Generator**: kept; retire it gradually and only as needed. A file is handed
  over to manual editing by marking it `frozen` in `annotations/layout.txt`.
  Nothing is frozen yet.
- **External names**: use the kernel's and Mac OS's conventional names, saying
  how each is known. Reference: https://github.com/elliotnunn/powermac-rom.
- **Automatic handler names**: fine as they are.
- **Repository contents**: only what the work needs. Two ROM images are kept
  locally (git-ignored) for `tools/rominfo.py` and `tools/buildcmp.py`: 8600/9600 v2
  and G3 v3.
- **Licence**: CC0 for the project's own work; Apple's code is not licensed
  here (`NOTICE.md`). Wording is Renee's to change.

## The patent's recompiler: notes towards a feasibility check

What US 5,790,825 describes (columns 5-8), as far as it bears on rebuilding it:

- A cache line is 32 entries of four PowerPC instructions, one entry per two bytes of
  68K code: 64 bytes of 68K code per line, `pc[5:1]` the entry, `pc[16:6]` the line
  (for a 1 MB cache), the other 15 bits a tag kept in a separate tag store.
- A normal entry is: the opcode's first instruction *copied from the interpreter's
  dispatch table*; a `bl` to a DR semantic routine (address from the 14-bit offset in
  the DR offset table; the low 2 bits give the length: 2, 4, 6 bytes or "special");
  `lhau prefetch_data, 2(pc)`; a test for a special event. A 4- or 6-byte instruction
  ends its entry with `b $+16` instead, skipping the entries of its extension words.
- "Inline": the instruction needs only two host instructions, so no `bl`. "Double
  inline": three, using the event-test slot; not allowed in a line's last entry.
- Execution falls through entry to entry inside a line but *not* line to line: the last
  entry branches to `dispatch_next_pc` (event test, find the line, compare the tag,
  recompile on a mismatch), as does every change of flow. So a line is in effect a
  fixed 64-byte block with a tag check at each end. The shipped recompiler's chained
  blocks are the ones that run block to block without a check.
- Translation is meant to be trivial ("fewer than twenty PowerPC instructions" per 68K
  instruction): no decoding beyond two table look-ups, no flag analysis.

What the image offers:

- Nothing of the patent's code. Translating every translated opcode shows the shipped
  recompiler's output is straight-line code that calls nothing but three division
  helpers (`docs/09`); there are no DR semantic routines in it, and no offset table in
  any ROM examined. The first PCI ROM predates the patent application (November 1995)
  and already has the block design.
- But the patent's entry starts with the dispatch table's first instruction, so its
  semantic routine for an opcode has to pick up exactly where the interpreter's routine
  does. The natural reconstruction is therefore from the *interpreter*: each routine
  with its fetch-and-dispatch tail replaced by `blr`, and the offset table read off the
  second instruction of each dispatch table entry. `tools/check.py`'s path walker
  already finds those tails. The patent's Figures 9 and 10 show such pairs and can
  check the result.
- The shipped recompiler helps in two ways: its first pass gives every instruction's
  length (the 2-bit flag), and its straight-line translations show which instructions
  can be done in two or three host instructions (inline, double inline) - though they
  do not start from the dispatch table's first instruction, so they are a guide, not
  the entries themselves.

Open questions for the check:

- LR. An entry's `bl` puts the return address in LR, which the interpreter's routines
  use themselves (effective address routines return through LR or CTR, and LR normally
  holds the next dispatch entry). How many routines survive the tail swap unchanged?
- Which instructions must leave for the interpreter (the patent: anything that changes
  flow goes through `dispatch_next_pc`), and the "special case" encodings.
- The run-time (`dispatch_next_pc`, tag store, the line recompiler) has to be written
  from the description; the patent gives no listing of it.
- Measuring. `tools/ppcsim.py` counts instructions. The patent's own argument is about
  instruction cache lines touched and folded branches, which needs at least a cache
  model. Instruction counts alone would understate the patent design's cost (two taken
  branches per 68K instruction) and say nothing about translation time or memory.
- It would be new code, not Apple's. Where it lives (apart from `src/`, or another
  repository) is Renee's decision.

## Leads not yet followed

- The recompiler translates 171 invalid opcodes that the interpreter rejects
  (`docs/09`). The code it emits for `OR.B D0,(d8,PC,Xn)` reads at one
  displacement and writes at another, which looks like a further slip in an
  emitter nobody could have tested.
- Compare-and-branch: the compare emitters put `cmplw cr7` (class `0x0020`) or `cmpw cr7`
  (class `0x0012`) in front of a conditional branch and mark its record `0x0008`. When
  exactly they do so depends on a word at `+0xBB0` that has not been traced; the unsigned
  form did not appear in any sequence tried (`CMP` + `BHI`).
- Some code generators differ between the first build and `Emulator.x` without any
  difference showing in `buildcmp.py --emitters` or in the sequences tried by hand
  (around `ADDQ.B`, `TST`, `Scc`, `JMP`, `JSR`, `LINK`). Reading them, or sampling
  pairs of instructions, would say what else was tuned.
- A taken `BNE.S` does not enter the recompiler from the interpreter (`bne_s`, `07F40`);
  every other taken branch does. Deliberate? It is the same in the first build.
- Both ROM builds keep a second `write_sr` after the credit string that writes the
  interrupt mask to a register at `0x50F2A000`, and offer it in handler slot `+0x96C`.
  No PowerPC code in either ROM takes it from there, but the 8600/9600 ROM's kernel has
  its own handler for the same register (ROM `315440`), so this looks like one code base
  serving NuBus and PCI machines, with the choice made by configuration. Still to find:
  who would install it (68K code? a NuBus ROM would show), and which interrupt handler
  kinds the kernel's `NKConfigurationInfo` selects between (see powermac-rom).
- The first build indexes its lookup table by `pc[13:4]`, the later ones by `pc[11:1]`.
  Neither is the direct-mapped table of the patent.
- `NKPublic.a` in powermac-rom notes "SS replaces with jump to emu+f900" on the
  kernel service table: SheepShaver hosts this emulator without the real
  kernel, so its source is a worked example of the kernel stub still missing
  from `tools/run68k.py`.
- Three table entries (`2F30`, `4EB0`, `4EF4`) special-case one indexed
  extension word each (`81E2`, `81E1`, `0521`). Searching a 68K ROM for those
  words would show what code they were tuned for.
- `0C960` is a lone zero word in the middle of code. Cause unknown.
- The first PCI ROM (1995) already has the hash-lookup recompiler. If the
  patent's direct-mapped design ever existed in a ROM, it predates everything
  examined so far.
