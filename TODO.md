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
- [x] Documentation set (`docs/`, 14 chapters)
- [x] Static checker (`make static-check`): legality, `rtn_addr`, instruction length,
      and the recompiler's lengths and flag decisions
- [x] PowerPC simulator; 68K programs run under the emulator, interpreted and recompiled
      (`make test`, `tools/run68k.py`); the translator's output can be inspected
      (`tools/drtranslate.py`)
- [x] Source of `Emulator.x` identified; licence and notice in place

### Source legibility
- [~] Labels: 189 address-style labels (`L_xxxxx`) remain, nearly all in the recompiler's
      decoder helpers (`10680`-`11037`); 1,327 others are `<routine>_L<n>` and could be
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
      programs longer than one block, self-modifying code announced with `FC16`
- [ ] Compare against an independent 68K emulator on a real instruction test suite
- [ ] Extend the simulator harness with the kernel's side: faults to
      `native_exception_handler`, interrupts, `ReturnFromException` (so that `EmEntry`
      can be used), then odd-address detection
- [ ] Extend `tools/check.py`: condition-code effects of interpreter routines, registers
      written, loops
- [ ] Try the build with GNU binutils as a second assembler

### History
- [ ] Diff the builds (first PCI, G3, `Emulator.x`): what did the tuning change?
      (`tools/drtranslate.py` could be pointed at the G3 ROM's emulator to compare output)
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
  locally (git-ignored) for `tools/rominfo.py`: 8600/9600 v2 and G3 v3.
- **Licence**: CC0 for the project's own work; Apple's code is not licensed
  here (`NOTICE.md`). Wording is Renee's to change.

## Leads not yet followed

- The recompiler translates 171 invalid opcodes that the interpreter rejects
  (`docs/09`). The code it emits for `OR.B D0,(d8,PC,Xn)` reads at one
  displacement and writes at another, which looks like a further slip in an
  emitter nobody could have tested.
- Are the two recompiler defects (`MOVE.W A7`, `ADDX` flags) in the earlier builds
  too? `tools/drmap.py`/`drtranslate.py` assume `Emulator.x`'s offsets; pointing them
  at the G3 or 8600 ROM's emulator needs the key routines located there first.
- SUBX is not translated although ADDX is. Possibly someone noticed the sticky-Z
  problem for SUBX and backed it out without fixing ADDX - checking the earlier
  builds' decisions for SUBX would tell.
- Bit `0x0002` in a conditional branch's record flags is set for some branches
  and not others; meaning unknown. (Bit `0x0004` is "the instruction at the
  target replaces N, Z, V, C".)
- `NKPublic.a` in powermac-rom notes "SS replaces with jump to emu+f900" on the
  kernel service table: SheepShaver hosts this emulator without the real
  kernel, so its source is a worked example of the kernel stub still missing
  from `tools/run68k.py`.
- Three table entries (`2F30`, `4EB0`, `4EF4`) special-case one indexed
  extension word each (`81E2`, `81E1`, `0521`). Searching a 68K ROM for those
  words would show what code they were tuned for.
- `0x21F8` is the last word of the recompiler (`182F8`) and is stored at
  `+0x718` by `init_state` and `dr_setup`. Meaning unknown.
- `0C960` is a lone zero word in the middle of code. Cause unknown.
- The first PCI ROM (1995) already has the hash-lookup recompiler. If the
  patent's direct-mapped design ever existed in a ROM, it predates everything
  examined so far.
