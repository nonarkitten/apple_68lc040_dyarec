# CLAUDE.md

Guidance for AI assistants (and humans) working in this repository.

## What this is
A documented, reassemblable disassembly of Apple's PowerPC-hosted 68LC040
emulator (interpreter + dynamic recompiler + dispatch table), extracted from
a Power Macintosh ROM. It is an educational reference. The only correctness
criterion is that the source reassembles to a byte-identical `Emulator.x`.

## Layout
- `Emulator.x`      reference binary (XCOFF). Never modify.
- `src/`            assembly source. **Generated - do not edit by hand**, except `src/include/`.
- `src/include/`    hand-maintained: register names, state block offsets, macros.
                    `tools/gen.py` parses the `//@` sections of the first two.
- `annotations/`    human-written input to the generator (labels, comments, data ranges).
- `tools/`          Python 3 tooling. Standard library only.
- `docs/`           finished technical documentation. `docs/patents/` holds the three patents.
- `TODO.md`         checklist, open questions, working notes.
- `build/`          build output (ignored).
- `ppcd/`, `Emulator.asm`  the owner's earlier working files; untracked and ignored. Leave them alone.

## Commands
- `make`            assemble `src/` into `build/Emulator.x`
- `make verify`     build and compare against `Emulator.x` (must print OK)
- `make regen`      rebuild `src/` from `Emulator.x` + `annotations/`
- `make check`      `regen` then `verify`; run before every commit
- `python3 tools/show.py START END [-c] [-x]`   listing with offsets (hex), for reading code
- `python3 tools/m68k.py 4E75 ...`              decode 68K opcode words

## Workflow for naming and commenting
1. Read code with `tools/show.py`.
2. Add to a file in `annotations/` (`NN-topic.ann`):
   ```
   @0D780 take_exception          <- offset, optional label
       Block comment placed above   <- indented lines; "." alone = blank line
       the label.
   0D788 pc = address of the instruction      <- end-of-line comment
   ```
   Data ranges, per-range register names and operand spellings go in
   `annotations/hints.txt`; the file split is `annotations/layout.txt`.
3. `make check`.
4. Commit annotations and regenerated `src/` together.

A new register or state-field name must be added to `src/include/*.inc`
(they are C preprocessor macros, so they must not collide with labels).

## Rules
1. `make check` must pass before committing. A change that breaks the byte
   comparison is wrong by definition.
2. Never edit generated files in `src/`; edit `annotations/` or the tools.
3. `docs/` is final, technical and impersonal. No speculation, no progress
   notes, no first person. Uncertain material goes in `TODO.md` until it is
   confirmed, or is stated in the docs as explicitly *(inferred)* with the
   reason.
4. Prefer names from the patents over invented names. Do not guess: an
   address-style label is better than a wrong meaningful one.
5. Claims in comments and docs must be backed by code that has actually
   been read. When the code and a patent disagree, the code wins and the
   difference is worth documenting (`docs/12-patents.md`).
6. Do not import facts about the surrounding ROM or kernel from memory or
   from other projects into `docs/`; the image is the only evidence here.
   Put such leads in `TODO.md`.
7. Offsets are relative to `EmTop` (start of the image) and written as five
   hex digits. Bit numbers in prose are LSB = 0.
8. Commit at milestones with messages that say what was learned, not just
   what was changed. Work happens on a branch, not on `master`.
9. Python: standard library only.

## Conventions in the generated source
- Registers are referred to by role (`d0`, `a7`, `pc`, `prefetch_data`, ...);
  see `src/include/Registers.inc`. Inside the recompiler's translator three
  registers have alias names (`blk_ofs`, `rec_ptr`, `out_ptr`).
- `//` comments. Block comments describe routines; end-of-line comments
  explain single instructions. Comments with DECODE1 / DECODE2 / PREFETCH /
  DISPATCH and the rotate/mask explanations are produced by `gen.py`.
- Old-style branch prediction hints are spelled with `_likely` / `_unlikely`
  macros (`src/include/Macros.inc`).
- Routines reached from the dispatch table are named by `tools/naming.py`
  unless an annotation names them. `cea_`/`fea_` = effective address routines.
- Labels without a meaningful name yet look like `L_0C458` (their offset);
  `op_XXXX` is the dispatch table entry for opcode XXXX.
