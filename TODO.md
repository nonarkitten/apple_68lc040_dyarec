# TODO

Progress tracking and open questions. Finished, reader-facing material is in
`docs/`; workflow rules are in `CLAUDE.md`.

## Checklist

Legend: `[x]` done, `[~]` partly done, `[ ]` not started.

### Done
- [x] `src/` reassembles to a byte-identical `Emulator.x` (`make verify`)
- [x] Registers, CR flags and state fields named; every dispatch table entry commented
- [x] Interpreter core: dispatch, effective addresses, condition codes, exceptions, entry
- [x] Recompiler: run-time, cache management, structure of the translator
- [x] Kernel interface and ROM context, checked against a ROM and the kernel's disassembly
- [x] Documentation set (`docs/`, 14 chapters)
- [x] Static checker (`make static-check`): legality, `rtn_addr`, instruction length
- [x] Source of `Emulator.x` identified; licence and notice in place

### Source legibility
- [ ] Name the 1,555 remaining address-style labels (`L_xxxxx`)
- [~] `EmulatorState` fields: about 60 named, the rest still numeric
- [ ] Symbolic offsets in the recompiler's descriptor tables (`16E48`, `17228`, `17470`)

### Interpreter still to read
- [ ] Privileged instructions and SR changes, line by line (`0C3D0`-`0D0EC`)
- [ ] Bit fields, BCD, MOVEM, MOVEP, MOVE16, CAS/CAS2, CHK2/CMP2, long multiply/divide
- [ ] Private opcodes `FC01`-`FC11`, and those that only forward to kernel services
- [ ] The routines behind the forty FPU handler slots (`0E6D4`-`0E78F`)
- [ ] Mixed mode: the layout of the native context block and the format `$E` frame

### Recompiler still to read
- [ ] Pass-1 decoders (`10280`-`10FFF`), only sampled
- [ ] Code emitters (`11338`-`17640`, about 6,000 instructions), only sampled
- [ ] Fault recovery in translated code, line by line

### Tooling
- [ ] Extend `tools/check.py`: condition-code effects, registers written, loops
- [ ] Try the build with GNU binutils as a second assembler
- [ ] Minimal kernel stub and PowerPC harness to execute 68K test programs
      (`docs/11-testing-gaps.md`, stage 2 onwards)

### History
- [ ] Diff the builds (first PCI, G3, `Emulator.x`): what did the tuning change?
- [ ] Confirm `Emulator.x` against an actual "Mac OS ROM" file with `tools/rominfo.py`

## How to continue

1. `make check` and `make static-check` should both print `OK`.
2. Pick an item. To name and comment code: `python3 tools/show.py START END`
   prints it with offsets; add labels and comments to a file in
   `annotations/`; `make check`; commit.
3. If a finding changes what the docs say, change the docs in the same commit.

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

- `EmulatorPublic.a` in powermac-rom calls state block `+0x740..`
  "EmuControlRegisters Reg0..Reg14". Our reading is that `+0x708` points there
  and it holds D0-D7/A0-A6/pc for native code. Not reconciled.
- `NKPublic.a` there notes "SS replaces with jump to emu+f900" on the kernel
  service table: SheepShaver hosts this emulator without the real kernel, so
  its source is a worked example of the kernel stub we would need.
- Three table entries (`2F30`, `4EB0`, `4EF4`) special-case one indexed
  extension word each (`81E2`, `81E1`, `0521`). Searching a 68K ROM for those
  words would show what code they were tuned for.
- `0x21F8` is the last word of the recompiler (`182F8`) and is stored at
  `+0x718` by `init_state` and `dr_setup`. Meaning unknown.
- `0C960` is a lone zero word in the middle of code. Cause unknown.
- The first PCI ROM (1995) already has the hash-lookup recompiler. If the
  patent's direct-mapped design ever existed in a ROM, it predates everything
  examined so far.
