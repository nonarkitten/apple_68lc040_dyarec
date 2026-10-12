# CLAUDE.md

Guidance for AI assistants (and humans) working in this repository.

## What this is
A documented, reassemblable disassembly of Apple's PowerPC-hosted 68LC040
emulator (interpreter + dynamic recompiler + dispatch table), extracted from
a Power Macintosh ROM. It is an educational reference. The only correctness
criterion is that the source reassembles to a byte-identical `Emulator.x`.

## Layout
- `Emulator.x`      reference binary (XCOFF). Never modify.
- `src/`            the assembly source, edited by hand. It was produced by a generator from
                    `Emulator.x` and a set of annotations; both were retired when the annotation
                    was complete (they are in the git history before October 2026).
- `src/include/`    register names, state block offsets, macros. `tools/image.py` reads the
                    `//@` sections of the first two.
- `tools/`          Python 3 tooling. Standard library only. `tools/image.py` gets labels and
                    data ranges for the other tools by walking `src/`.
- `docs/`           finished technical documentation. `docs/patents/` holds the three patents.
- `TODO.md`         checklist, open questions, working notes.
- `build/`          build output (ignored).
- `*.ROM`           ROM images used as evidence for `docs/13-rom-context.md`; git-ignored, never
                    commit them. Note: `Emulator.x` is a *later* build than the emulator in any ROM chip.
- `LICENSE`, `NOTICE.md`  CC0 for the project's own work; Apple's code is not licensed here.

## Commands
- `make`            assemble `src/` into `build/Emulator.x`
- `make verify`     build and compare against `Emulator.x` (must print OK)
- `make static-check`  cross-check code against the 68K instruction set (`tools/check.py`);
                    must end with "OK: no unexplained disagreements"
- `make test`       run 68K programs under the emulator in `tools/ppcsim.py`, interpreted and
                    recompiled (`tools/selftest.py`); must end with "OK"
- `make check`      all three of the above; run before every commit
- `make fuzz`       random 68K programs, interpreter against recompiler (`tools/fuzz.py`);
                    known recompiler defects are excluded, so any difference is news
- `python3 tools/check.py --translations`   also scan the recompiler's output for every opcode
- `python3 tools/run68k.py [--dr|--both] WORDS`   run one 68K program (end it with 4AFC)
- `python3 tools/rominfo.py ROM`   where a ROM maps the emulator; compare its build with Emulator.x
- `python3 tools/buildcmp.py ROM [--emitters | WORDS]`   what differs between a ROM's emulator build
                    and Emulator.x: routines, table entries, the recompiler's decisions and output
                    (`tools/fuzz.py --rom ROM` fuzzes that build)
- `python3 tools/drtranslate.py 7001 5380 66FC 4E75`   run the recompiler's translator (in
                    `tools/ppcsim.py`) on 68K words and print the PowerPC code it emits
- `python3 tools/drmap.py 4E75`     what the recompiler's first pass decides for an opcode, and
                    which decoder helpers it goes through
- `python3 tools/show.py START [END] [-x]`   the source with offsets; START and END are hex
                    offsets or labels, END may be `+N`
- `python3 tools/m68k.py 4E75 ...`              decode 68K opcode words

## Workflow for naming and commenting
1. Find the code: `python3 tools/show.py 0D780 +40`, or search `src/` for a label.
2. Edit `src/` directly: rename a label (everywhere it is used), add or change a comment.
   Keep the layout of the surrounding lines.
3. `make check`.

A new register or state-field name must be added to `src/include/*.inc`
(they are C preprocessor macros, so they must not collide with labels) and
then used in place of the number where it applies.

`tools/image.py` works out offsets by counting the bytes of each statement,
so it understands only what the source already uses: instructions (four
bytes), `.long`, `.short`, `.byte`, `.ascii`, `.space` and `ALIGN(n)`. A
label is a line of its own ending in a colon.

## Rules
1. `make check` must pass before committing. A change that breaks the byte
   comparison is wrong by definition.
2. Edits to `src/` change names, comments and layout only. Never change what
   assembles: `make verify` is the guard, and nothing else is.
3. `docs/` is final, technical and impersonal. No speculation, no progress
   notes, no first person. Uncertain material goes in `TODO.md` until it is
   confirmed, or is stated in the docs as explicitly *(inferred)* with the
   reason.
4. Prefer names from the patents over invented names. Do not guess: an
   address-style label is better than a wrong meaningful one.
5. Claims in comments and docs must be backed by code that has actually
   been read. When the code and a patent disagree, the code wins and the
   difference is worth documenting (`docs/12-patents.md`).
6. Conventional names for things outside the image (kernel services and
   structures, Mac OS low-memory globals, info records) may and should be
   used - the owner asked for this. Say how each is known, as
   `docs/13-rom-context.md` does. The authority for kernel-side names is
   https://github.com/elliotnunn/powermac-rom (the project `Emulator.x`
   came from): `Internal/EmulatorPublic.a`, `Internal/NKPublic.a`,
   `NanoKernel/*.s`; https://github.com/elliotnunn/NanoKernel has the kernel
   by version, one branch each, from the first Power Macs on (its `Emulate.s`
   emulates missing PowerPC instructions, not 68K). For names on the 68K
   side (the private opcodes) it is
   https://github.com/elliotnunn/supermario, `Internal/Asm/TrapsPrivate.a`.
   Fetch them when needed rather than keeping a copy here (the files use
   classic Mac line endings and MacRoman).
7. Keep the repository focused: no scratch files, dumps, third-party
   trees or reference copies. Working files go in a temp directory.
8. Offsets are relative to `EmTop` (start of the image) and written as five
   hex digits. Bit numbers in prose are LSB = 0.
9. Commit at milestones with messages that say what was learned, not just
   what was changed. Work happens on a branch, not on `master`.
10. Python: standard library only.

## Conventions in the source
- Registers are referred to by role (`d0`, `a7`, `pc`, `prefetch_data`, ...);
  see `src/include/Registers.inc`. Inside the recompiler's translator three
  registers have alias names (`blk_ofs`, `rec_ptr`, `out_ptr`).
- `//` comments. Block comments describe routines; end-of-line comments
  explain single instructions. The comments with DECODE1 / DECODE2 /
  PREFETCH / DISPATCH and the rotate/mask explanations were written by the
  generator and follow one pattern throughout.
- Old-style branch prediction hints are spelled with `_likely` / `_unlikely`
  macros (`src/include/Macros.inc`).
- Most routines reached from the dispatch table are named after the
  instructions that use them (`add_l_dn_dn`, numbered when several share a
  description). `cea_`/`fea_` = effective address routines. Private opcode
  routines carry the opcode and Apple's name (`fc0a_float_add`).
- In the recompiler, `dr_emit_*` (code generators) and `dr_decode_*` (first-pass
  helpers) were named by running the recompiler in the simulator; `T_xxxxx` is an
  instruction template; `dr_operand_<access>_<size>_<mode><reg>` is an operand emitter.
- Branch targets inside a routine are `<routine>_L<n>` and stay that way;
  only routines, tables and shared helpers get names of their own.
  `op_XXXX` is the dispatch table entry for opcode XXXX.
