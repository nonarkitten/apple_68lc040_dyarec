# Glossary

**68K** — The emulated processor: a Motorola 68LC040 (the 68040
instruction set without the FPU; the MMU instructions do nothing).

**Block** — In the dynamic recompiler, a run of 68K instructions
translated as a unit: from an entry address to the first control
transfer or untranslatable instruction, at most 120 bytes.

**`cb`** — "Code base": the label at the first byte of the image. Code
addresses are formed as `code_ptr` OR (`label - cb`). The name is from
US 5,574,873.

**`cea_` / `fea_`** — Prefixes of effective address routines: *compute*
effective address, and compute then *fetch* the operand. Followed by the
operand size and the 68K mode and register digits (`cea_l_30`).

**Chaining** — Replacing a translated block's exit call with a direct
branch to the next block once the next block exists.

**Context** — A set of processor registers managed by the kernel. The
emulator is one context; native code called from 68K code runs in
another.

**Continuation** — The routine an effective address routine returns to;
its address is passed in `rtn_addr`.

**DECODE1, DECODE2, PREFETCH, DISPATCH** — The four steps that end every
emulation routine, named as in US 5,574,873. See
[03-dispatch.md](03-dispatch.md).

**Dispatch table** — The 512 KB table of two-instruction entries indexed
by 68K opcode (`OpcodeTblTop`).

**DR** — Dynamic recompiler / dynamic recompilation.

**Emitter** — A routine in the recompiler that generates the PowerPC code
for one kind of 68K instruction or operand.

**Emulator control register (ECR)** — Apple's term for a word of the
emulator's state that 68K code can read and write by number with
private opcodes `FE04` and `FE05`. See
[08-native-interface.md](08-native-interface.md).

**Emulator state block** — The memory addressed by `EmulatorStatePtr`.
See [07-emulator-state.md](07-emulator-state.md).

**Extension word** — A 16-bit word following a 68K opcode word that
supplies a displacement, immediate value, index specification or further
opcode bits.

**Full format** — The 68020 form of the indexed addressing extension
word (bit 8 set), allowing base and outer displacements and memory
indirection; the alternative is the *brief* format with an 8-bit
displacement.

**Group 1 exception** — Motorola's term for bus error and address error.

**Handler table** — The 151 routine addresses at `+0x800` in the state
block through which the emulator calls replaceable routines.

**IBM bit numbering** — PowerPC's convention in which bit 0 is the most
significant bit. This documentation uses the opposite, conventional
numbering unless it says "IBM bit".

**Kernel** — The supervisor-level software, outside this image, that
runs the emulator context, handles processor exceptions and performs the
services requested through `EmKernelTrapTable`.

**Line** — The top four bits of a 68K opcode. "Line A" and "line F"
opcodes are unimplemented on a 68K and trap; Mac OS uses line A for
system calls.

**Lookup table** — The recompiler's map from 68K addresses to translated
blocks: 2,048 sets of four entries.

**Mixed mode** — The Mac OS mechanism for calls between 68K and PowerPC
code, based on routine descriptors.

**Native** — PowerPC, as opposed to emulated 68K.

**Page bitmap** — The recompiler's record, one bit per 512 bytes, of
which 68K memory contains code that has been translated.

**Private opcode** — One of the line-F opcodes (`FC00`–`FC16`,
`FE00`–`FE20`) through which 68K code in the ROM and the system asks the
emulator and the kernel for services.

**Record** — The 12-byte entry describing one 68K instruction during
translation.

**Routine descriptor** — The data structure describing a routine's
instruction set and calling conventions, used by mixed mode.

**SANE** — The Standard Apple Numerics Environment, the Mac OS
floating point package. Private opcodes `FC01`–`FC0F` carry out its
expensive steps. See [08-native-interface.md](08-native-interface.md).

**Special event** — Anything that must be dealt with before the next 68K
instruction: an interrupt, a trace, an odd `pc`, a test-mode action.
Signalled by `cr_special_event_pending`.

**Template** — A PowerPC instruction word stored as data in the
recompiler, copied into the translation cache with fields filled in.

**Test mode** — The debugging facilities controlled by the upper half of
`sr_and_flags`.

**Translation cache** — The RAM region holding translated blocks.
