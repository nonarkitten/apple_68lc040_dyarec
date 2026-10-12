# 10. Building and Verifying

The purpose of the build is to prove that the source in `src/` is a
faithful rendering of the original binary: assembling it must reproduce
`Emulator.x` byte for byte.

## Requirements

| Tool | Used for | Notes |
|---|---|---|
| A C preprocessor | Register and field names, comments | Any `cc -E` |
| An assembler for 32-bit big-endian PowerPC ELF | Assembling | LLVM's `llvm-mc` by default |
| Python 3 | Wrapping the result in XCOFF; regenerating the source | Standard library only |
| `make` | Driving the above | |

On macOS: `brew install llvm`. The Makefile looks for LLVM in the usual
Homebrew locations; set `LLVM_BIN` to its `bin` directory otherwise.

## Commands

| Command | Effect |
|---|---|
| `make` | Assemble `src/` into `build/Emulator.x` |
| `make verify` | Build, then compare `build/Emulator.x` with `./Emulator.x` |
| `make static-check` | Cross-check the code against the 68K instruction set ([14-static-checks.md](14-static-checks.md)) |
| `make test` | Run 68K test programs under the emulator, interpreted and recompiled, in a simulator ([11-testing-gaps.md](11-testing-gaps.md)) |
| `make fuzz` | Run 2,000 random 68K programs both ways and compare ([14-static-checks.md](14-static-checks.md)) |
| `make listing` | Write `build/Emulator.lst`, a disassembly of the result with offsets and symbols |
| `make regen` | Regenerate `src/` from `Emulator.x` and `annotations/` |
| `make check` | `regen` followed by `verify` |
| `make clean` | Remove `build/` |

A successful verification prints

```
OK: build/Emulator.x is identical to Emulator.x
```

## How the build works

1. **Preprocess.** `src/Emulator.S` includes the three files in
   `src/include/` and then every source file in image order. The C
   preprocessor replaces register names (`d0`, `prefetch_data`, …),
   condition register names and state block field names with numbers and
   removes the `//` comments. The output is one assembly file,
   `build/Emulator.s`.
2. **Assemble.** That file is assembled as a single unit into
   `build/Emulator.o`. There is no link step: all code is in one section,
   every branch is resolved by the assembler, and the object must contain
   no relocations (the wrapper tool checks).
3. **Wrap.** `tools/elf2xcoff.py` extracts the `.text` section and the six
   exported symbols from the ELF object and writes them in the same XCOFF
   layout as the reference file: a 20-byte file header, one 40-byte
   section header, the 655,360 bytes of code, fourteen symbol table
   entries (seven symbols, each with one auxiliary entry) and a 48-byte
   string table. The only value not derived from the source is the
   timestamp in the file header, which is copied from the reference.
4. **Compare.** `cmp` against `Emulator.x`.

## Source conventions

The source is GNU-assembler syntax. A few points are worth knowing when
reading it.

**Names are preprocessor macros.** LLVM's assembler does not accept a
symbol as the base register of a memory operand (`2(pc)`), so register
names cannot be assembler symbols. The definitions are in
`src/include/Registers.inc`. A consequence is that none of those names
may be used as a label.

**Condition register bits** are written `4*cr6+eq` in the standard
PowerPC manner, or by name when the bit has a fixed meaning
(`cr_special_event_pending`). Bits of CR0 are written `lt`, `gt`, `eq`,
`so`.

**Branch hints.** The original PowerPC architecture has one static
prediction bit, written by assemblers of the time as a `+` or `-` suffix.
Current assemblers encode those suffixes with a newer two-bit hint and
would not reproduce the original bytes. Branches with the old bit set are
therefore written with macros from `src/include/Macros.inc`:
`bflr_likely`, `bfctr_likely`, `btlr_likely`, `bt_likely`, `bf_likely`,
`bt_unlikely`, `bf_unlikely`. For a branch to LR or CTR the bit means
"predict taken". For a relative branch it reverses the default (backward
taken, forward not taken), so a forward branch with the bit is "likely"
and a backward one "unlikely".

**Missing mnemonics.** `mcrxr`, `lswx` and `stswx` are valid on the
processors this code was written for but are not accepted by LLVM. They
are provided as macros that emit the instruction word.

**Alignment.** Runs of `nop` that pad to a boundary are written
`ALIGN(n)`, which expands to a directive that fills with the `nop`
encoding to the next multiple of *n* bytes. The emulator's routines are
packed into 32- and 64-byte blocks to suit the processor's cache.

**Offsets within the image.** Code addresses are formed at run time as
`code_ptr` OR a 16-bit offset, written `label - cb`, where `cb` is the
first byte of the image. Tables of code addresses hold the same 16-bit
offsets. The recompiler's code block has its own base label, `dr_cb`.

**Simplified mnemonics.** The usual PowerPC extended mnemonics are used
(`mr`, `li`, `lis`, `slwi`, `srwi`, `clrlwi`, `clrrwi`, `rotlwi`, `not`,
`crset`, `crclr`, `crmove`, `crnot`, `mtcr`, `mtlr`, …). `subf` and its
variants are left in their native form, with the operation spelled out in
a comment, because the operand order (`subf rD,rA,rB` computes
`rB − rA`) is a common source of misreading.

**Comments.** Rotate-and-mask and condition-register instructions carry
a comment that states the effect with conventional bit numbers (bit 0 is
the least significant), for example

```
        rlwimi  disp_table, prefetch_data, 3, 13, 28    // DECODE1: disp_table[18:3] = opcode in prefetch_data
        rlwinm  data, sr_and_flags, 8, 16, 23           // data = sr_and_flags[7:0] << 8
        mtcrf   0x03, base_disp                         // cr6..cr7 = base_disp[7:0]
```

## How the source is produced

The files in `src/` (other than `src/include/`) are written by
`tools/gen.py`. It decodes the reference image and combines the result
with the files in `annotations/`:

| File | Contents |
|---|---|
| `layout.txt` | Which source file each range of the image goes to |
| `hints.txt` | Ranges that are data rather than code, register names that apply to particular ranges, and a few operand spellings |
| `*.ann` | Labels, block comments and end-of-line comments, keyed by offset |

Routines reached from the dispatch table are named automatically
(`tools/naming.py`) unless an annotation names them. Automatic comments
come from `gen.py`; an annotation for the same offset replaces them.

The generator cannot produce wrong code silently: it only writes
instructions it has decoded from the image, the decoder
(`tools/ppc.py`) refuses any word it cannot spell in a way that
assembles back to the same bits (such words are emitted as `.long`), and
the result is checked by `make verify`. An incorrect annotation can make
a name or comment misleading, but cannot change the binary.

`tools/show.py START END` prints a listing of any part of the image with
offsets, which is the convenient view for writing annotations.

## Verifying with another assembler

The source avoids constructs specific to LLVM, and the three macros
above cover the encodings on which assemblers differ, so GNU binutils
(`powerpc-eabi-as` or similar, with the `-many` or `-mppc` option) is
expected to work with `PPC_AS` overridden on the `make` command line.
Only the LLVM build has been verified.

## Other tools

| Tool | Purpose |
|---|---|
| `tools/show.py START END` | Listing of part of the image with offsets |
| `tools/m68k.py WORD…` | Decode 68K opcode words |
| `tools/check.py [-v] [--translations]` | The static checks; `-v` lists individual opcodes, `--translations` also examines the recompiler's output for every instruction (about half a minute) |
| `tools/fuzz.py [COUNT] [--seed N] [--length N] [--known]` | Random programs, interpreter against recompiler |
| `tools/rominfo.py ROM…` | Where a ROM maps the emulator, and which build it contains ([13-rom-context.md](13-rom-context.md)) |
| `tools/ppcsim.py` | A small PowerPC simulator (a library), enough to run parts of the image |
| `tools/drmap.py WORD…` | What the recompiler's first pass decides for an opcode |
| `tools/drtranslate.py WORD…` | Run the recompiler's translator on 68K code and print the PowerPC code it generates |
| `tools/run68k.py [--dr\|--both] WORD…` | Run a 68K program under the emulator and print the registers it ends with |
| `tools/selftest.py [-v]` | The 68K test programs |
