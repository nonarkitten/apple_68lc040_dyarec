# Apple 68LC040 Emulator for PowerPC — Technical Reference

This directory documents the emulator contained in `Emulator.x`: the
PowerPC program that runs Motorola 680x0 code on PCI-era Power Macintosh
computers. It consists of an interpreter, a dynamic recompiler ("DR") and a
512 KB dispatch table.

All statements here are derived from the code in `src/`, which reassembles
to the original binary. Where a statement is an inference rather than
something the code shows directly, it is marked *(inferred)*. Where the
three Apple patents in [`patents/`](patents/) describe the same mechanism,
the patent is cited; where the code differs from a patent, the code is
described and the difference is noted.

## Contents

| Document | Subject |
|---|---|
| [01-overview.md](01-overview.md) | What the image contains and how the parts fit together |
| [02-registers.md](02-registers.md) | PowerPC register assignments, condition register and flag bits |
| [03-dispatch.md](03-dispatch.md) | The dispatch table and the fetch/decode/dispatch sequence |
| [04-effective-addresses.md](04-effective-addresses.md) | How 680x0 addressing modes are computed |
| [05-condition-codes.md](05-condition-codes.md) | How the 680x0 CCR is represented and updated |
| [06-exceptions.md](06-exceptions.md) | Special events, exceptions, interrupts and tracing |
| [07-emulator-state.md](07-emulator-state.md) | Layout of the emulator state block |
| [08-native-interface.md](08-native-interface.md) | Entry, the kernel, native code, private opcodes |
| [09-dynamic-recompiler.md](09-dynamic-recompiler.md) | The dynamic recompiler |
| [10-building.md](10-building.md) | Building the source and verifying it against the original |
| [11-testing-gaps.md](11-testing-gaps.md) | What the image depends on, and what running it would take |
| [12-patents.md](12-patents.md) | Cross-reference between the patents and the code |
| [glossary.md](glossary.md) | Terms and names |

## Conventions

- **Offsets** are byte offsets from the start of the image (`EmTop`),
  written as five hexadecimal digits: `0D114`.
- **Bit numbers** are conventional: bit 0 is the least significant bit.
  PowerPC documentation numbers bits the other way round (bit 0 is the most
  significant); where a PowerPC field is meant it is written "IBM bit *n*".
  A range such as `disp_table[18:3]` means bits 18 down to 3.
- **Names** in `this style` are labels or register names that appear in the
  source. Register names are the ones used by the emulator's authors, as
  listed in US patent 5,574,873.
- **68K** means the emulated Motorola 680x0 processor; **native** means
  PowerPC.
