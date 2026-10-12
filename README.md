# Apple 68LC040 Emulator for PowerPC — Annotated Disassembly

This repository is a documented, reassemblable disassembly of the 680x0
emulator from a Power Macintosh ROM: the PowerPC program that let
Power Macs run 68K software. It contains

- Gary Davidian's interpretive emulator,
- the dynamic recompiler credited in the code to Eric Traut, Bob Abeles
  and "Murph", and
- the 512 KB dispatch table that both are built around.

It is provided as an educational reference for people writing emulators,
not as something to reuse. Outside a Power Macintosh the code can only
be run in the bundled simulator, and only for programs that need nothing
from the kernel (see [docs/11-testing-gaps.md](docs/11-testing-gaps.md)).

## What is here

| Path | Contents |
|---|---|
| [`docs/`](docs/README.md) | How the emulator works: registers, dispatch, addressing modes, condition codes, exceptions, state layout, the kernel interface, the recompiler |
| `src/` | The assembly source: about 42,000 lines of emulator and a 135,000-line dispatch table, with role names for registers, labels, and comments |
| `Emulator.x` | The original binary (an XCOFF object extracted from the ROM), kept as the reference |
| `annotations/`, `tools/` | The labels and comments, and the Python tools that combine them with the binary to produce `src/` |
| [`docs/patents/`](docs/patents/) | The three Apple patents that describe the design (all expired) |
| [`TODO.md`](TODO.md) | Progress checklist and open questions |

Start with [docs/README.md](docs/README.md).

## Proof of fidelity

The source is only useful if it is the original code. Assembling `src/`
reproduces `Emulator.x` exactly — all 655,720 bytes, including the XCOFF
header and symbol table:

```
$ make verify
OK: build/Emulator.x is identical to Emulator.x
```

This needs a C preprocessor, LLVM (`brew install llvm`) and Python 3.
Details are in [docs/10-building.md](docs/10-building.md).

## A taste

Every 68K opcode has two PowerPC instructions of its own in the dispatch
table. Simple instructions are finished in the first one:

```
        addic.  d0, zero, 1                     // 7001  MOVEQ.L   #$01,D0
        b       update_vc_zero
```

and every routine ends by jumping straight to the table entry for the
next opcode, which has already been fetched:

```
fetch:
        rlwimi  disp_table, prefetch_data, 3, 13, 28    // DECODE1: disp_table[18:3] = opcode
        mtlr    disp_table                              // DECODE2: LR = address of the next dispatch entry
        lhau    prefetch_data, 2(pc)                    // PREFETCH: pc += 2, load the word there
        bflr_likely cr_special_event_pending            // DISPATCH unless a special event is pending
        b       process_special_event
```

## Status

The whole image round-trips. The interpreter's core, exception handling,
entry and native-code interface, and the recompiler's run-time and
overall structure are named and documented. Individual instruction
handlers carry names derived automatically from the instructions that
use them; about 1,500 internal branch targets and the recompiler's code
generators have not been examined one by one. See [TODO.md](TODO.md).

`make static-check` cross-checks the code against the 68K instruction
set without running it, and `make fuzz` runs random 68K programs through
both the interpreter and the recompiler and compares the results.
Between them they found four genuine (and harmless) defects in Apple's
code — one in the interpreter and three in the recompiler — which are
written up in [docs/14-static-checks.md](docs/14-static-checks.md).

The emulator can also be *run*. A small PowerPC simulator in `tools/`
executes it without a kernel or ROM:

```
$ python3 tools/run68k.py --both 6002 4E71 7064 7200 D280 5380 66FA 4AFC   # sum 1..100
$ python3 tools/drtranslate.py 7001 5380 66FC 4E75     # what the recompiler generates
$ make test                                             # 17 programs, interpreted and recompiled
$ make fuzz                                             # 2,000 random programs, both ways
```

See [docs/11-testing-gaps.md](docs/11-testing-gaps.md).

## Provenance and rights

The emulator is Apple's code, reproduced here for study; nobody involved
in this repository claims any right in it. Everything else — the
documentation, names, comments and tools — is dedicated to the public
domain under [CC0 1.0](LICENSE). [NOTICE.md](NOTICE.md) spells out which
is which.

The names of registers and many routines follow the three patents that
describe the design (US 5,574,873, US 5,623,617 and US 5,790,825; the
last of them expired on November 8, 2015).

`Emulator.x` is the emulator binary from Elliot Nunn's `powermac-rom`
project, which rebuilds a New World "Mac OS ROM" image. It is a later
build than the emulator in any Power Macintosh ROM chip up to the G3;
[docs/13-rom-context.md](docs/13-rom-context.md) traces the builds, and
describes where the emulator sits in a ROM and how the kernel starts it.

The repository began as a fork of the `ppcd` PowerPC disassembler, which
it no longer contains.
