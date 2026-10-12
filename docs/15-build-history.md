# 15. Changes Between Builds

`Emulator.x` is the last of a series of builds
([13-rom-context.md](13-rom-context.md)). This chapter compares three of
them:

| | First recompiling build | G3 build | `Emulator.x` |
|---|---|---|---|
| Source | Power Macintosh 8600/9600 ROM, checksum `960FC647` | Power Macintosh G3 ROM, checksum `78F57389` | [13-rom-context.md](13-rom-context.md) |
| Recompiler credit | "Eric Traut" | "…, tuned by Bob Abeles" | "…, hacked by Murph" |
| `emulator_version` (`+0x718`) | `0x20F3` | `0x21F7` | `0x21F8` |
| Interpreter block, words in use | 14,900 | 14,948 | 14,993 |
| Recompiler block, words in use | 7,392 | 8,378 | 8,383 |
| Opcodes the recompiler translates (extension words zero) | 40,807 | 41,911 | 41,911 |
| Lookup table | 1,024 sets of 4, selected by `pc[13:4]` | 2,048 sets of 4, selected by `pc[11:1]` | as G3 |
| Instruction record | 8 bytes | 12 bytes | 12 bytes |
| Padding between routines | `b` to the next instruction | `b` to the next instruction | `nop` |

The builds between the first and the G3 build (Performa 6400, PowerBook
1400, Power Macintosh 6500) were not compared, so "the G3 build" below
means the state the code had reached by then, not the build in which
each change was made.

## Method

`tools/buildcmp.py` does the comparison. The code of two builds is
aligned as sequences of instruction words in which the fields that
change merely because code has moved are ignored: branch displacements,
the immediate operands of `addi`, `addis`, `ori` and `oris` (which are
mostly offsets of code), and displacements from `base_disp` (offsets of
the recompiler's templates). What remains different is reported against
the labels of `Emulator.x`. A change confined to one of the ignored
fields is not seen by the alignment; the size of the instruction record,
for one, was found by reading.

The recompilers are compared by running them. Each build's first pass is
run on all 65,536 opcodes (as `tools/drmap.py` does for `Emulator.x`),
and each build's whole translator is run on the same 68K code so that
the PowerPC code they generate can be laid side by side.

## The version word

`init_state` stores a constant at `+0x718` in the state block, and it is
different in each build: `0x20F3`, `0x21F7`, `0x21F8`. In the two later
builds `dr_setup` stores it again and it is also the last word of the
recompiler's code block. 68K code can read it: it is variable 0 of
private opcode `FE04` ([08-native-interface.md](08-native-interface.md)).
It is named `emulator_version` *(inferred: it is the only such constant
that changes with every build, it increases with the builds' age, and in
Apple's version notation the three values read 2.0f3, 2.1f7 and 2.1f8)*.

## The interpreter

The interpreter is nearly unchanged. From the start of the image to
`write_sr` (`0C410`) — every instruction routine, the effective address
routines and the condition code routines — the three builds are identical
apart from padding. The differences are all in system support.

**First recompiling build to the G3 build**

| Where (label in `Emulator.x`) | Change |
|---|---|
| `cas_l_mem_3` (`0CF28`) | `CAS.L` on an address that is a multiple of four is done with `lwarx`/`stwcx.`; the first build has only the load-compare-store sequence that the later builds keep for other addresses |
| `test_mode_events` (`0D2B4`) | Test-mode bit 18 and its hook at `+0x7C8` are new |
| `private_fe04_fe05` (`0D824`) | Private opcodes `FE04`/`FE05` accept 26 variables instead of 24; the two new ones are the hook and its argument |
| `private_fe0f` (`0D9EC`) | `FE0F` passes D1 as well as D0 |
| `private_fe11` (`0DA1C`) | `FE11` calls handler slot `+0x9A4` (kernel service 7) from a routine of its own instead of the common one |
| `private_fe20` (`0DB2C`) | New: `FE20`, kernel service 6. In the first build the opcode goes to the line-F handler |
| `private_fe01` (`0DE10`) | `FE01` reaches `mixed_mode_dispatch` through handler slot `+0x9E0` instead of directly |

`FE01`, `FE11` and `FE20` are also the only three dispatch table
entries that differ, other than in branch displacements.

**G3 build to `Emulator.x`**

| Where | Change |
|---|---|
| `write_sr` (`0C410`) | Sets `cr_special_event_pending` when the private interrupt request at `+0x1D0` is non-zero; makes the `sc` call ([08-native-interface.md](08-native-interface.md)) |
| `check_interrupt` (`0D3E4`) | New, with its call in `special_event_continue`: the private interrupt request and its per-level table at `+0xAE0` ([06-exceptions.md](06-exceptions.md)). The G3 build goes straight to `take_interrupt` |
| `private_fe1f` (`0DB44`) | New: private opcode `FE1F`, kernel service 8 |
| `init_state` (`0DB94`) | The configuration word at `+0x7A0` starts as `0x80000039` instead of `1` |
| After `handler_defaults` (`0DD74`…) | The set-up of the native context area preserves `+0x4D8` and stores `0xAE0` at `+0x1C8`. The table itself has 151 entries in all three builds |
| `switch_to_native` (`0E128`), `private_fe07` (`0E380`) | Where the native context area is copied to the 68K stack and back, a save area of 0x220 bytes is now also claimed from, and returned to, a pool described by `+0xE0`…`+0xEC`; kernel service 15 when none is free |
| `EmKernelTrapTable` (`0E8C0`) | Seventeen entries instead of sixteen |
| After `interpreter_credits` | Removed: see below |
| Throughout | Padding is `nop` instead of a branch to the next instruction |

No dispatch table entry differs between these two builds except in
branch displacements.

Both ROM builds carry, after the interpreter's credit string, a second
version of `write_sr` that also copies the new interrupt mask into bits
5:3 of a hardware register at `0x50F2A000`. Its address is the default
contents of handler slot `+0x96C`. `Emulator.x` has neither the routine
nor the default. No PowerPC code in either ROM loads that slot or stores
to `write_sr_handler` (no load or store with those displacements between
ROM offsets `300000` and `380000`), so the routine is not put to use by
the kernel or the emulator themselves. It is not the only code for that
register in these ROMs: the kernel of the 8600/9600 ROM has an
exception handler (ROM offset `315440`) that writes and reads the same
address.

## The recompiler: first build to the G3 build

This is the "tuning" of the credit string. The design does not change —
blocks of at most 120 bytes of 68K code, three passes, a four-way lookup
table, chaining, inline caches — but each part was reworked.

### Run-time

| | First build | G3 build |
|---|---|---|
| Lookup table | 32 KB: 1,024 sets selected by `pc[13:4]`, so the eight possible instruction addresses in 16 bytes share a set | 64 KB: 2,048 sets selected by `pc[11:1]`, one per instruction address in 4 KB |
| Flush of everything | Done at once: the cache pointer is reset and the table cleared with 1,024 `dcbz` | Requested, then done in steps from `dr_dispatch`, 2 KB per step, giving way to a pending special event between steps ([09-dynamic-recompiler.md](09-dynamic-recompiler.md)) |
| Invalidating a range (`FC16`) | Done at once: the sets for the range are scanned — one set per 16 bytes, or the whole table for more than `0x3F80` bytes — and matching entries dropped | Skipped if the page bitmap shows no translated code in the range; otherwise queued in one of 32 request records and carried out in steps |
| Page bitmap | None | One bit per 512 bytes of 68K address space, sized from the kernel's `SystemInfo` record |
| Atomic updates (`lwarx`/`stwcx.`) | None | The two bit masks of the request records |
| Publishing a new block (`dr_emit_finish`) | Per cache block `dcbst`, `icbi`; then `sync`, `isync` | Per cache block `dcbst`, `sync`, `icbi`; then `sync`, `isync` |

In the first build a range of *n* bytes corresponds to about *n*/16
consecutive sets, and blocks that start in the same 16 bytes, or a
multiple of 16 KB apart, compete for the same four entries. In the
G3 build the range corresponds to *n*/2 sets — the whole table from 4 KB
upwards — and only blocks a multiple of 4 KB apart share a set; the
scan is avoided where the bitmap allows and interruptible where it does
not.

### Translator

- **Records.** A record grows from 8 to 12 bytes. The added word receives
  the target offset of a conditional branch (`10CF8`).
- **Looking ahead at branch targets.** New. When pass 1 meets a
  conditional branch it decodes the instruction at the target before
  going on, and sets bit `0x0004` in the branch's flags if that
  instruction replaces N, Z, V and C without reading them. The resume
  offset is parked at `+0xB68`.
- **Classes of condition.** New. A conditional branch's flags come from
  the table `dr_bcc_flags` (`10BEC`), indexed by condition. Every entry
  is `0x2300`; the entries for HI, LS, CC, CS, NE and EQ add `0x20`, and
  those for GE, LT, GT and LE add `0x12`. In the first build every
  conditional branch is `0x2300`.
- **Map of branch targets.** New: a bit for each word of the block at
  `+0xBA8`, set for each address that a branch within the block goes to.
- **Liveness.** One instruction is added to the pass (`10164`). As
  before, bits 7:6 of a record's flags come to say which of the two flag
  groups the instruction must produce. Bits 11:10, which after the first
  build's pass still say which groups the instruction writes, now say
  which groups are wanted afterwards and not written by it — that is,
  which must survive it.
- **End of block.** Records that end a block are also marked as reading
  all the flags (`0x0300`).
- **More instructions.** `ADDX` in both its forms and all three sizes
  (384 opcodes) and `DIVU.W`/`DIVS.W` (720 opcodes) are translated. No
  opcode stops being translated, and no instruction's length is decided
  differently.

### Generated code

Of the 119 code generators that both builds use, 114 produced the same
code in both for every instruction sampled (`buildcmp.py --emitters`:
up to five opcodes of each generator, each followed by code that wants
all the flags, that replaces N, Z, V and C, and that replaces all five).
The differences found:

**Events are polled only on the way backwards.** The first build tests
`cr_special_event_pending` before every exit to another block. The G3
build does so only when the branch goes backwards; a forward exit is
the call alone.

```
68K     5380        SUBQ.L  #1,D0
        6010        BRA.S   *+18

First build                                     G3 build and Emulator.x
  addi    pc, pc, 20                              addi    pc, pc, 20
  bt_unlikely cr_special_event_pending, <exit>    bl      dr_block_exit
  bl      dr_block_exit
```

**A signed comparison is done natively.** When `CMP`, `CMPA`, `CMPI` or
`CMPM` is followed by `BGE`, `BLT`, `BGT` or `BLE`, the G3 build adds a
PowerPC signed compare into CR7 and the branch tests its result. The
first build rebuilds N⊕V from the XER, four instructions.

```
68K     B081        CMP.L   D1,D0
        6D04        BLT.S   *+6

First build                                     G3 build and Emulator.x
  subfco. rtn_addr, d1, d0                        cmpw    cr7, d0, d1
  addc    addr, d1, rtn_addr                      subfco. rtn_addr, d1, d0
  mfxer   rtn_addr                                addc    addr, d1, rtn_addr
  rlwinm  rtn_addr, rtn_addr, 8, 24, 27           bt_unlikely 4*cr7+lt, <taken>
  mtcrf   0x02, rtn_addr
  crxor   4*cr6+lt, lt, 4*cr6+gt
  bt_unlikely 4*cr6+lt, <taken>
```

`TST` followed by a signed branch is translated alike in both.

**`ADDQ.W` and `SUBQ.W` on a data register, when only X is wanted.** The
G3 build computes in `ccr_x` itself, so that the carry or borrow out of
the low word arrives where X is kept:

```
68K     5940        SUBQ.W  #4,D0       (N, Z, V, C dead)

First build                                     G3 build and Emulator.x
  lis     addr, 0x0004                            clrlwi  ccr_x, d0, 16
  slwi    rtn_addr, d0, 16                        addi    ccr_x, ccr_x, -4
  subfco. addr, addr, rtn_addr                    rlwimi  d0, ccr_x, 0, 16, 31
  rlwimi  d0, addr, 16, 16, 31
  subfe   addr, zero, zero
  addc    ccr_x, addr, addr
```

The alignment shows further routines whose code differs — the
generators for `ADDQ.B` and `JMP` among them — without a difference in
what the samples produced; `buildcmp.py` lists them.

## The recompiler: G3 build to `Emulator.x`

Three things, and nothing else:

- The four places that publish new or patched code (`dr_emit_finish`,
  `dr_chain_block`, `dr_drop_entry`, `dr_translate_miss`) use `dcbf`
  where the G3 build has `dcbst`: the cache block is written to memory
  and discarded from the data cache, rather than written and kept.
- Padding is `nop`.
- The credit string is longer and the version word is `0x21F8`.

The two builds make the same first-pass decision for every opcode and
generated the same code for every instruction sampled.

## The defects, build by build

| Defect ([14-static-checks.md](14-static-checks.md)) | First build | G3 build | `Emulator.x` |
|---|---|---|---|
| Interpreter: `UNPK -(Ay),-(A7)` | present | present | present |
| Recompiler: r23 read for A7 by `MOVE.W A7,…` and `MOVEA.W A7,An` | present | present | present |
| Recompiler: `ADDX` not marked as reading Z | — (`ADDX` is not translated) | present | present |
| Recompiler: invalid opcodes translated | 43: destinations `(d8,PC,Xn)` | 171: those, and `DIVU.W`/`DIVS.W An,Dn` | 171 |

The first two are original, and so are 43 of the invalid opcodes. `ADDX`
and the two divisions arrived with the tuning, and their defects with
them. `SUBX` is translated by none of the three builds.

Run against its own interpreter (`tools/fuzz.py --rom`), the first
build's recompiler agreed on all of 6,000 random programs, the opcodes
of the known defects being excluded as they are for `Emulator.x`.

## Reproducing this

```
python3 tools/buildcmp.py ROM                 routines, table entries, first-pass decisions
python3 tools/buildcmp.py ROM --emitters      the generated-code sampling
python3 tools/buildcmp.py ROM B081 6D04 7001 4E75 7002 4E75
python3 tools/fuzz.py 6000 --seed 3 --rom ROM
```

The third form translates the given 68K code with both recompilers; the
fourth tests the ROM's build, interpreter against recompiler.
