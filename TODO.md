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
- [x] Apple's private opcodes named from the SuperMario sources (SANE, the trap
      dispatcher's exit, BlockMove, emulator control registers)
- [x] Annotation pass: every routine named; the recompiler's decoders and emitters made
      legible by running them; the intricate interpreter routines described

### Source legibility
- [x] Labels: three address-style labels remain; about 1,400 are `<routine>_L<n>`, which
      is where things stay unless a name helps
- [~] `EmulatorState` fields: about 120 named. What is left numeric is mostly the kernel's
      side of the context block and fields used once
- [x] Symbolic template loads and operand emitter tables in the recompiler; every
      emitter's header shows a translation

### Interpreter still to read
- [x] Bit fields, BCD, MOVEM, MOVE16, CAS, CHK2/CMP2, long multiply/divide: read and
      described in block comments
- [~] Private opcodes: all named (Apple's names from SuperMario) and described; the SANE
      arithmetic (`FC04`, `FC06`, `FC08`-`FC0F`, 4 KB) is not read line by line
- [x] The routines behind the forty FPU handler slots: they build the 68LC040's format 4
      frame (`docs/06`). Nothing in the image or the ROMs calls `install_exception_stubs`
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
- [x] Feasibility check for the two items below: see "The patent's recompiler: feasibility"
      and `tools/patentmodel.py`
- [ ] Reconstruct the hypothetical original Dynamic Recompiler from the patent by
      using the Dynamic Recompiler to extract what the semantic routines might have been
      and rebuild the Offset Table from that
- [ ] Compare the performance of the reconstructed Dynamic Recompiler versus the one
      that was shipped in ROMs; what was lost (if anything); what was gained (if anything)

## How to continue

1. `make check` should print `OK` three times.
2. To name or comment code: `python3 tools/show.py START +40` (offset or label) finds it;
   edit `src/`; `make check`; commit.
3. To find out what a piece of 68K code does under the emulator, run it:
   `tools/run68k.py`, or `tools/drtranslate.py` for the recompiler's output.
4. If a finding changes what the docs say, change the docs in the same commit.

## Decisions

- **Generator**: retired (October 2026). `src/` is edited by hand; the generator and
  `annotations/` are in the history up to commit "Read labels and data ranges from src/
  itself". The tools read labels and data ranges from `src/` (`tools/image.py`).
- **Local labels**: `<routine>_L<n>` is how they stay.
- **External names**: use the kernel's and Mac OS's conventional names, saying
  how each is known. Reference: https://github.com/elliotnunn/powermac-rom.
- **Automatic handler names**: fine as they are.
- **Repository contents**: only what the work needs. Two ROM images are kept
  locally (git-ignored) for `tools/rominfo.py` and `tools/buildcmp.py`: 8600/9600 v2
  and G3 v3.
- **Licence**: CC0 for the project's own work; Apple's code is not licensed
  here (`NOTICE.md`). Wording is Renee's to change.

## The patent's recompiler: feasibility

**Verdict: feasible, as a new implementation in the manner of the patent, derived
mechanically from the interpreter. Not as a recovery of Apple's code - none survives.
A trace-driven model (`tools/patentmodel.py`) already answers the performance question
to first order; building the real thing would refine the answer, not change it.**

What US 5,790,825 describes (columns 5-10):

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
- Execution falls through entry to entry inside a line but not line to line: the last
  entry branches to `dispatch_next_pc` (event test, find the line, compare the tag,
  recompile on a mismatch), as does every change of flow.
- Translation is meant to be trivial ("fewer than twenty PowerPC instructions" per 68K
  instruction): two table look-ups, no flag analysis.
- Its own performance claim is in cycles on a 603, not instruction counts: 4 cycles
  interpreted against 2 recompiled for `BCLR.B D5`, and two instruction cache lines
  touched instead of three.

What was measured (`python3 tools/patentmodel.py`):

- The patent's semantic routine has to continue from the state the dispatch table's
  first instruction leaves, so it is the interpreter's routine minus DECODE1, DECODE2,
  PREFETCH and DISPATCH. Tracing every opcode once in the interpreter gives the split:
  of 40,927 straight-line opcodes, 5,941 are inline, 2,949 double inline and 32,037
  need a routine. All of them can be derived from the interpreter.
- Per 68K instruction, each opcode counted once: 14.4 PowerPC instructions interpreted,
  12.5 as patent entries. The shipped recompiler generates about 4.8 (all flags wanted).
- Per loop iteration, four small loops (interpreter / shipped / patent model):
  26 / 7 / 21, 38 / 13 / 27, 49 / 33 / 37, 47 / 9 / 36. The patent design saves the
  dispatch, about a fifth; the shipped one saves the prefetch, the per-instruction
  event test, the call and return, the generic routines and dead flags as well. It is
  weakest on calls: `RTS` leaves through the run-time (16 of its 33 instructions).
- Translating: the shipped translator executes 80 to 115 PowerPC instructions per 68K
  instruction; the patent claims under 20. On these counts the shipped design overtakes
  the patent's after an instruction has run about ten times.
- Memory: the patent's cache holds 8 bytes of host code per byte of 68K code for whole
  64-byte lines, executed or not; the shipped one about 19 bytes per translated
  instruction, only for blocks that ran.

What building it would take:

1. Offset table (128 KB) and entries: generated; the classification above is most of it.
2. Semantic routines: the interpreter's routines with the dispatch sequence removed and
   `blr` added. Three things stop this being a plain deletion:
   - 14,841 of the 40,927 opcodes use routines that use LR themselves (effective
     address continuations, calls), which the entry's `bl` would destroy. LR has to be
     saved - r23 is the one free register, and the interpreter's hooks need it to hold
     the dispatcher - or those routines changed to use CTR.
   - Instructions with extension words (16,110 opcodes) advance `pc` in the routine;
     the patent moves that to the entry.
   - 3,891 opcodes' routines read their own opcode out of `disp_table` (`ADDQ`/`SUBQ`,
     BCD, `Scc`, rotates), which the patent's entries do not keep up to date.
3. Run-time: `dispatch_next_pc`, the tag store, the line recompiler, the special cases
   (variable-length modes, branches within a line), flushing. A few hundred lines of
   new PowerPC assembly, written from prose; the patent gives no listing.
4. Hooking it in needs no change to Apple's code: the interpreter already leaves through
   `dr_entry` at every control transfer when `cr_dr_active` is set.
5. Testing: `tools/fuzz.py` against the interpreter, as for the shipped recompiler.
6. Measuring beyond instruction counts needs a cycle and cache model in `tools/ppcsim.py`
   (branch folding, a 603-style instruction cache) - the patent's argument lives there.

Limits to say out loud: the result would characterise the patent's design, not Apple's
lost code; the original's semantic routines, special-case encodings and tuning are
unknown; `DISPATCH_NEXT_PC` in the model (12 instructions) is an assumption.

Suggested order: (a) add the cycle and cache model to the simulator and re-run the
comparison - cheap, and it tests the patent's own claim; (b) widen the set of programs
beyond four loops; (c) only then build the reconstruction, if the modelled gap leaves
anything to learn. It would be new code, not Apple's: where it lives (apart from
`src/`, or another repository) is Renee's decision.

## Leads not yet followed

- The recompiler translates 171 invalid opcodes that the interpreter rejects
  (`docs/09`). The code it emits for `OR.B D0,(d8,PC,Xn)` reads at one
  displacement and writes at another, which looks like a further slip in an
  emitter nobody could have tested.
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
  kinds the kernel's `NKConfigurationInfo` selects between (see powermac-rom, and the
  `ExternalInts.s` of https://github.com/elliotnunn/NanoKernel, whose `master` branch is
  the NuBus machines' kernel).
- The first build indexes its lookup table by `pc[13:4]`, the later ones by `pc[11:1]`.
  Neither is the direct-mapped table of the patent.
- `NKPublic.a` in powermac-rom notes "SS replaces with jump to emu+f900" on the
  kernel service table: SheepShaver hosts this emulator without the real
  kernel, so its source is a worked example of the kernel stub still missing
  from `tools/run68k.py`.
- The special-cased sequences and operands (`docs/14`) are presumably from hot code in the
  ROM or system. The SuperMario sources could be searched for them: `MOVE.L ([bd.w],od.w),
  -(A7)`, `JSR ([bd.w])`, `JMP ([bd.w,A4,D0.W*4])`, and the string loops.
- The 68K side of `FC01`-`FC0F` (the SANE package as built for Power Macs) is not in
  SuperMario - nothing there uses the macros - so what the bits of D6 and D7 mean rests
  on the PowerPC side alone. A Power Mac ROM's 68K part could be disassembled around the
  `FC01` opcodes to settle it.
- `0C960` is a lone zero word in the middle of code. Cause unknown.
- The first PCI ROM (1995) already has the hash-lookup recompiler. If the
  patent's direct-mapped design ever existed in a ROM, it predates everything
  examined so far.
