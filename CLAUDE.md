# CLAUDE.md

Guidance for AI assistants (and humans) working in this repository.

## What this is
A documented, reassemblable disassembly of Apple's PowerPC-hosted 68LC040
emulator (interpreter + dynamic recompiler + dispatch table), extracted from
a Power Macintosh ROM. It is an educational reference. The only correctness
criterion is that the source reassembles to a byte-identical `Emulator.x`.

## Layout
- `Emulator.x`      reference binary (XCOFF). Never modify.
- `src/`            assembly source. **Generated - do not edit by hand.**
- `annotations/`    human-written input to the generator (labels, comments, data ranges).
- `tools/`          Python 3 tooling (decoders, generator, XCOFF wrapper). Standard library only.
- `docs/`           finished technical documentation. `docs/patents/` holds the three patents.
- `TODO.md`         checklist, plan, open questions, working notes.
- `build/`          build output (ignored).

## Commands
- `make`            regenerate nothing; assemble `src/` into `build/Emulator.x`
- `make verify`     build and compare against `Emulator.x` (must print OK)
- `make regen`      rebuild `src/` from `Emulator.x` + `annotations/`
- `make check`      `regen` then `verify`; run before every commit

## Rules
1. `make check` must pass before committing. A change that breaks the byte
   comparison is wrong by definition.
2. To change a label or comment, edit `annotations/`, not `src/`, then
   `make regen`. Commit the annotation change and the regenerated source together.
3. `docs/` is final, technical and impersonal. No speculation, no progress
   notes, no first person. Uncertain material goes in `TODO.md` until it is
   confirmed, or is stated in the docs as explicitly unverified with the reason.
4. Prefer names from the patents over invented names. Do not guess: an
   address-style label is better than a wrong meaningful one.
5. Claims in comments and docs must be backed by the code. When the code and
   a patent disagree, the code wins and the difference is worth documenting.
6. Offsets are relative to `EmTop` (start of the image) and written as five
   hex digits.
7. Commit at milestones with messages that say what was learned, not just
   what was changed.
8. Python: standard library only, no generated files checked in other than `src/`.

## Conventions in the generated source
- Registers are referred to by role (`d0`, `a7`, `pc`, `prefetch_data`, ...);
  see `src/include/Registers.inc`.
- `//` comments. Block comments describe routines; end-of-line comments
  explain single instructions.
- Old-style branch prediction hints are spelled with `_likely` / `_unlikely`
  macros (`src/include/Macros.inc`).
- Labels without a meaningful name yet look like `L_0C458` (their offset).
