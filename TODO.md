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
- [~] Labels: 160 address-style labels (`L_xxxxx`) remain, nearly all in the recompiler's
      decoder helpers (`10680`-`11037`); 1,355 others are `<routine>_L<n>` and could be
      given real names where it helps
- [~] `EmulatorState` fields: about 75 named, the rest still numeric
- [ ] Symbolic offsets in the recompiler's descriptor tables (`16E48`, `17228`, `17470`)
      and in its template loads (`lwz addr, 0x1774(base_disp)` and the like)

### Interpreter still to read
- [ ] Bit fields, BCD, MOVEM, MOVEP, MOVE16, CAS/CAS2, CHK2/CMP2, long multiply/divide
- [ ] Private opcodes `FC01`-`FC11`, and those that only forward to kernel services
- [ ] The routines behind the forty FPU handler slots (`0E6D4`-`0E78F`)
- [ ] Mixed mode: the layout of the native context block and the format `$E` frame

### Recompiler still to read
- [ ] Pass-1 decoders and their helpers (`10280`-`11037`), only sampled
- [ ] Code emitters (`11338`-`17640`): named and observable through their output, but not
      read line by line
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

## Leads not yet followed

- The recompiler translates 171 invalid opcodes that the interpreter rejects
  (`docs/09`). The code it emits for `OR.B D0,(d8,PC,Xn)` reads at one
  displacement and writes at another, which looks like a further slip in an
  emitter nobody could have tested.
- Conditional branch record flags: `0x0020` and `0x0012` are classes of condition
  (`dr_bcc_flags`), and the signed class makes a preceding compare emit `cmpw cr7`.
  What the `0x0020` class is used for, and bit `0x0008` (which selects between two
  tables in `dr_emit_bcc_l`, `1708C`), have not been read.
- Some code generators differ between the first build and `Emulator.x` without any
  difference showing in `buildcmp.py --emitters` or in the sequences tried by hand
  (around `ADDQ.B`, `TST`, `Scc`, `JMP`, `JSR`, `LINK`). Reading them, or sampling
  pairs of instructions, would say what else was tuned.
- A taken `BNE.S` does not enter the recompiler from the interpreter (`bne_s`, `07F40`);
  every other taken branch does. Deliberate? It is the same in the first build.
- Both ROM builds keep a second `write_sr` after the credit string that writes the
  interrupt mask to a register at `0x50F2A000`, and offer it in handler slot `+0x96C`.
  It looks like the NuBus machines' version; a NuBus ROM would show whether their
  kernel installs it in `write_sr_handler`.
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
