# 12. The Patents and the Code

Three Apple patents describe the technology in this emulator. They are in
[`patents/`](patents/). All three have expired.

| Patent | Title (abbreviated) | Inventor | Earliest application | Describes |
|---|---|---|---|---|
| US 5,574,873 | Decoding guest instruction to directly access emulation routines | Gary G. Davidian | May 7, 1993 | The dispatch table and the interpreter |
| US 5,623,617 | Method for decoding sequences of guest instructions for a host computer | Gary G. Davidian | derived from the same 1993 application | The same design, with emphasis on handling sequences of instructions |
| US 5,790,825 | Method for emulating guest instructions through dynamic recompilation | Eric P. Traut | November 8, 1995 | A dynamic recompiler |

The patents describe a 68020 emulator on the POWER/PowerPC 601; this image
is a later 68LC040 emulator. The interpreter has changed little. The
recompiler has changed a great deal.

## US 5,574,873 and US 5,623,617 — the interpreter

Section III of US 5,574,873 ("Details of a 68020 Emulation on a POWER
Architecture") is, in effect, design documentation for the interpreter,
and most of it applies to this image unchanged.

| Patent | This image |
|---|---|
| Register assignments (r0 `zero`, r1 `a7`, r3 `addr`, r4 `data`, r5 `rtn_addr`, r6 `immed_data`, r7 `base_disp`, r8–r15 `d0`–`d7`, r16–r22 `a0`–`a6`, r24 `pc`, r25 `sr_and_flags`, r26 `ccr_x`, r27 `prefetch_data`, r28 `vbr`, r29 `disp_table`, r30 `code_ptr`, r31 `EmulatorStatePtr`) | Identical. r23, "unused" in the patent, is now `dr_entry`. |
| 512 KB dispatch table, two instructions per opcode | Identical. |
| DECODE1 / DECODE2 / PREFETCH / DISPATCH | Identical instruction sequence. The patent's listings use POWER mnemonics (`rlimi`, `a.`, `sfo.`); the binary contains the PowerPC equivalents. |
| `pc` runs 2 bytes ahead; `prefetch_data` holds the word there | Identical. |
| N and Z in CR0, V and C in XER, X in `ccr_x` at the CA position | Identical. |
| "The fields cr1 and cr2 are not used; cr3 is used for global flags" | Changed. CR2 holds the global flags (`cr_special_event_pending`, `cr_interrupt_pending`, `cr_supervisor`); CR1 holds the recompiler's flags. |
| `sr_and_flags`: SR byte in the low 8 bits; bit 20 group 1 active, bit 22 odd pc, bit 23 trace pending (IBM numbering); test-mode flags in the upper half | Identical. Bit 21 additionally marks "a test-mode flag is set". |
| Effective address routines called with the continuation in `rtn_addr`: `ori rtn_addr,code_ptr,not_l_mem-cb` / `b cea_l_30` | Identical, including the form of the instruction. The label `cb` and the `cea_` naming used in this source come from this passage. |
| 256-entry table of instruction pairs at the start of the code block for indexed addressing | Identical (`cb`, offsets `00000`–`007FF`). |
| Odd address detection: two methods, the first "no longer used", the second inserting the low bit of `pc` into bit 11 (IBM) of `disp_table` | The second method is the one used. |
| Dispatch table at `$68000000`, code at `$68080000`, 64 KB of code | The image is position independent. The code now precedes the table and is 128 KB (two 64 KB blocks); the 8600/9600 ROM maps the code at `0x68060000` and the table at `0x68080000`. |
| MOVEM register list optimisations | Outside the scope of this documentation. |
| Subtraction carry corrected with `sfo.` then `a.` | Used for comparisons. Subtractions that set X use a `subfe`/`addc` pair instead; see [05-condition-codes.md](05-condition-codes.md). |
| Three stack pointers, with the inactive two in memory; `trace_pc` | Identical, with the same field names. |

US 5,623,617 shares its description with US 5,574,873. Its claims concern
emulation routines that recognise a *sequence* of guest instructions and
emulate the sequence as a unit, bypassing the dispatch between them: its
figure 10 shows a dispatch table entry whose first instruction tests
`prefetch_data` — the next opcode — for a repeat of the instruction.

This image does exactly that. The entry for `MOVE.L (A0)+,(A1)+` is

```
        cmpwi   cr7, prefetch_data, 0x22D8      // 22D8  MOVE.L (A0)+,(A1)+
        b       move_l_a0_inc_a1_inc_run
```

and the routine loops for as long as the comparison succeeds. Twelve
table entries look ahead in this way, for runs of one instruction and
for three two-instruction idioms; they are listed in
[14-static-checks.md](14-static-checks.md). `DBcc` is a related case:
its table entry takes the loop branch and loads the next opcode itself.

## US 5,790,825 — the dynamic recompiler

The patent and the image agree on the framework and differ on almost
everything inside it.

| Patent | This image |
|---|---|
| The recompiler works with the interpreter, reusing its dispatch table and routines, and falls back to it | True. Translated code uses the interpreter's register assignments and calls its routines. |
| ROM contains: interpretive dispatch table (512 KB), DR offset table (128 KB: one 2-byte entry per opcode), DR semantic routines (64 KB), interpretive semantic routines (64 KB) | The dispatch table and two 64 KB code blocks are present. There is no 128 KB DR offset table, in this image or elsewhere in the 8600/9600 ROM (see [13-rom-context.md](13-rom-context.md)). Per-opcode decisions are made by sixteen decoder routines and compact tables indexed by addressing mode. |
| RAM contains a DR cache of 256 KB–2 MB and a tag store | RAM contains a 64 KB lookup table, a translation cache sized by the host, and a bitmap of translated memory. |
| The cache is direct mapped: bits of the 68K `pc` select a cache line; each line has 32 entries of four PowerPC instructions; each 2 bytes of 68K code owns one entry. A tag per line identifies the 68K page it holds | Not used. Translation is by variable-length block (up to 120 bytes of 68K code). Blocks are found through a 4-way set-associative lookup table kept in most-recently-used order. |
| First instruction of an entry is copied from the interpretive dispatch table; the second is generated by indexing the DR offset table | Not used. Code is generated by emitters from instruction templates. |
| "Inline" and "double inline" entries for instructions that translate to two or three host instructions | No fixed entries; an instruction's translation is as long as it needs to be. |
| Special events checked at the end of each cache line | Checked at points chosen by the emitters, and in every loop of the translator and of cache maintenance. |
| Condition code updates always performed | A backward pass determines which condition codes are dead and selects cheaper code. |
| — | Blocks are linked by patching exit calls into direct branches. Indirect exits have a one-entry inline cache. |
| — | Range invalidation driven by 68K cache-flush operations; incremental, interruptible whole-cache flush; recovery from faults inside translated code. |
| Figure 9: `update_nzvc_zero` in the interpreter path for `CLR.B` | Present at `06100` with exactly the instructions shown. |
| Register names in the figures (`disp_table`, `prefetch_data`, `pc`, `cr_sp_event`, `ccr_x`, `immed_data`, `data`) | Same registers. The flag is called `cr_special_event_pending` in US 5,574,873 and that name is used here. |

The credit string in the recompiler's code reads "Dynamic Recompilation by
Eric Traut, tuned by Bob Abeles, hacked by Murph", which is consistent
with a design that was reworked after the patent was written. The
patent's scheme is simple enough to translate without analysis; the
scheme in the image spends more effort translating in order to produce
better code and to use memory more economically.

## Using the patents with this source

- Read US 5,574,873 section III alongside
  [02-registers.md](02-registers.md) and [03-dispatch.md](03-dispatch.md);
  it is accurate for this image apart from the points in the table above.
- Read US 5,790,825 for the motivation and for the interaction between
  recompiler and interpreter, but rely on
  [09-dynamic-recompiler.md](09-dynamic-recompiler.md) for how this
  recompiler works.
- The patent text was scanned and contains recognition errors in the code
  listings (`riwimi` for `rlwimi`, `hau` for `lhau`, `mtir` for `mtlr`).
