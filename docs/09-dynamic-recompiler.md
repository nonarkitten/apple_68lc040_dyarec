# 9. The Dynamic Recompiler

The dynamic recompiler ("DR") occupies offsets `10000`–`182FB`. It
translates blocks of 68K code into PowerPC code, keeps the translations in
a cache in RAM, and runs them in place of interpreting.

The design in this image is not the one described in US patent 5,790,825.
The patent describes a direct-mapped cache of fixed-size lines in which
every 2-byte step of 68K code owns a fixed slot of host instructions. This
code instead translates variable-length basic blocks, finds them through a
hashed lookup table, analyses condition code usage, and links blocks to
each other. [12-patents.md](12-patents.md) lists the differences.

**Scope.** This chapter covers the run-time (dispatch, cache management,
invalidation, linking) and the structure of the translator. It does not
describe the individual code generators (`11338`–`17640`, about 6,000
instructions) beyond the conventions they share.

## State and switches

Four bits of CR1 describe the recompiler's state:

| Bit | Name | Meaning |
|---|---|---|
| cr1.so | `cr_dr_enabled` | The recompiler has been switched on |
| cr1.eq | `cr_dr_ready` | Its memory has been set up |
| cr1.gt | `cr_dr_active` | Control transfers should enter the recompiler. Recomputed as `cr_dr_enabled` AND no trace bit AND no test-mode flag |
| cr1.lt | `cr_dr_busy` | The translator is running and has borrowed `disp_table`, `code_ptr` and `dr_entry` |

At reset all four are clear and the recompiler's entry points in the
state block are stubs. The recompiler is switched on from 68K code with
private opcode `FE05`, selector `0x12` (see
[08-native-interface.md](08-native-interface.md)): bit 0 of A0 becomes
`cr_dr_enabled`. The request is honoured only if the low two bits of the
configuration word at `+0x7A0` are both set, and the host must already
have stored the base and size of a block of memory at `+0x7C0` and
`+0x7C4`. The first time the recompiler is enabled, `dr_setup` is called
through its handler table slot, followed by a flush to initialise the
tables.

## Memory layout

`dr_setup` (`181AC`) divides the memory it has been given, from the
bottom:

| Region | Size | Pointer in state block |
|---|---|---|
| Lookup table | 64 KB | `dr_hash_table` |
| A table of routines in RAM | value at `+0xB18` | `+0xB1C` |
| Invalidation request table | 512 bytes (32 × 16) | `dr_invalidate_requests` |
| Translation cache | the remainder | `dr_cache_start` … `dr_cache_limit` |
| Margin | 2 KB | |
| Instruction records | 2 KB | `dr_records` |
| Page bitmap | computed from the amount of memory | `dr_page_bitmap` |

The page bitmap has one bit for every 512 bytes of 68K address space up
to `dr_memory_limit`. The limit is read from a kernel data structure
whose address is found at the fixed location `0x5FFFEFF0` — the one
absolute address in the recompiler. (It is the kernel's `SystemInfo`
record, and the value read is the logical memory size; see
[13-rom-context.md](13-rom-context.md).) The bitmap is only allocated if it
fits.

`dr_setup` then replaces the stubs in the state block with the addresses
of `dr_dispatch`, `dr_request_flush`, `dr_invalidate_range`,
`dr_fault_fixup` and `dr_fault_redirect`, and builds the table of sixteen
pass-1 decoders (`dr_line_decoders`).

## Entering translated code

The interpreter's control-transfer routines (`JMP`, `JSR`, `RTS`, `Bcc`,
`DBcc`, `RTE`, exception entry, and so on — 31 sites) end with

```
        mtctr   dr_entry
        ...
        btctr   cr_dr_active
        bflr_likely cr_special_event_pending
```

so when the recompiler is active they jump to `dr_dispatch` (`17964`)
instead of to the next dispatch table entry, with LR still holding that
entry's address.

`dr_dispatch`:

1. Looks at the opcode about to execute. `AAFE` and `FE02` are never
   translated: return through LR, i.e. interpret.
2. If a special event is pending, leaves through
   `dr_exit_to_interpreter`.
3. If a cache flush is in progress, or range invalidations are pending,
   does a bounded amount of that work first (below).
4. Looks `pc` up (`dr_lookup`). On a hit, jumps to the translation. On a
   miss, translates.

### The lookup table

The table has 2,048 sets of four entries. An entry is two words: a 68K
address and the address of its translation. Bits 11:1 of `pc` select the
set; because the table is 64 KB long and 64 KB aligned, the set's address
is formed with a single `rlwimi` into the table's base address.

The four entries are compared in order. A hit in the first goes straight
to the translation. A hit in any other first swaps that entry with the
first (`dr_promote_hit`), so each set is kept in most-recently-used
order.

On a miss (`dr_translate_miss`) an empty entry is used if there is one;
otherwise the last entry of the set — the least recently used — is
evicted. Eviction overwrites the first instruction of the evicted
translation with a branch to `dr_stale_block`, because other blocks may
have been linked directly to it.

## The translator

`dr_translate` (`10000`) translates the block that starts at `pc − 2`.
While it runs, `cr_dr_busy` is set and three registers have different
roles: `blk_ofs` (r23) is the offset of the current 68K instruction in
the block, `rec_ptr` (r29) addresses the current instruction record and
`out_ptr` (r30) addresses the last word written to the cache.

Translation works on an array of 12-byte records, one per 68K
instruction:

| Offset | Contents |
|---|---|
| +0 | Flags: condition codes the instruction sets and uses, markers for branch targets and for the end of the block |
| +2 | Offset of the instruction from the start of the block |
| +4 | The emitter (code generator) chosen for the instruction; after pass 3, the offset of its translation within the translated block |
| +6 | For a branch within the block, the offset of its target |

Every loop in the translator tests `cr_special_event_pending`. If an
event arrives the translation is abandoned (`dr_translate_abort`), the
borrowed registers are restored, and the interpreter handles the event.
Translation therefore adds nothing to interrupt latency.

### Pass 1: decode (`dr_scan_next`)

For each instruction the opcode is read, its top four bits select one of
sixteen decoders (`dr_line_0` and the following fifteen, each exactly 64
bytes so that their addresses form an arithmetic progression), and the
decoder:

- works out the instruction's length from the byte tables at
  `dr_ea_length_tables`, indexed by the opcode's effective address
  fields; modes with an extension word that must itself be examined
  (indexed modes) are flagged in the table and handled by a subroutine;
- chooses an emitter;
- sets the flags that say which condition codes the instruction
  produces and consumes.

The scan stops at an instruction that ends the block — a control
transfer, or anything the recompiler does not translate — or when the
block reaches 120 bytes of 68K code (`dr_scan_block_full`), in which case
the block is ended with code that continues at the next instruction.
Branches whose target lies inside the block are noted so that they can
become PowerPC branches within the translation.

### Pass 2: condition code liveness (`dr_liveness_loop`)

The records are walked from last to first, carrying a mask of the
condition codes that are still wanted. An instruction that sets flags
which are overwritten before anything reads them has those flag bits
cleared in its record. The emitters consult the bits and produce shorter
code — typically the non-recording, non-carrying form of the same PowerPC
instruction — when the flags are dead. At the end of a block all flags
are assumed live.

### Pass 3: emit (`dr_emit_next`)

Each record's emitter is called in turn. An emitter appends PowerPC
instructions to the cache at `out_ptr`. They are assembled from
*templates*: instruction words stored in the recompiler's code block,
loaded as data, with register numbers, immediates or branch displacements
inserted. `dr_templates` (`1767C`) holds the commonest: `addi pc, pc, n`
and `addis pc, pc, n` to advance the 68K program counter, a `bl`, a
conditional branch on `cr_special_event_pending`, and unconditional
branches. Operand access is generated by routines selected from
`dr_operand_emitters`, five tables of offsets indexed by addressing
mode.

Simple instructions are translated to the PowerPC instructions that
perform them, on the same register assignments the interpreter uses.
Complex ones are translated to a call (`bl`) to a routine. The
conventions are the interpreter's, so translated code and interpreter
routines can be mixed freely.

A second walk (`dr_fix_branches`) fills in the displacements of branches
between instructions of the block. Finally `dr_emit_finish` pushes the
new code out of the data cache and invalidates the instruction cache
over it (`dcbf`, `icbi`, `sync`, `isync`).

### Finishing (`dr_translate_done`)

The new block is entered in the lookup table slot chosen earlier, and
the bit for its 68K address is set in the page bitmap. If the cache
pointer has passed `dr_cache_limit`, a full flush is requested and
execution continues in the interpreter. Otherwise the saved scratch
registers are restored and the new block is entered.

## Leaving a block

### Known targets: chaining

A block that ends by going to a fixed 68K address ends with a call into
the run-time. The first time it is executed, the run-time looks the
target up (translating it if need be) and then, in `dr_chain_block`,
*overwrites the call* with a direct branch to the target block and
flushes that word from the caches. From then on the two blocks run back
to back without entering the run-time.

### Computed targets: inline caching

A block that ends with a target known only at run time (`RTS`,
`JMP (An)`, …) calls `dr_indirect_exit` (`178E0`). The two words
following the call are a one-entry cache: the 68K address seen last time
and its translation. If the target is the same, the run-time jumps
straight to it; otherwise it does a full lookup and rewrites the two
words.

### Back to the interpreter

`dr_exit_to_interpreter` (`1782C`) re-establishes the interpreter's
invariants for the instruction at `pc − 2` — `prefetch_data`,
`disp_table`, LR, `dr_entry` — and dispatches it, or goes to
`process_special_event` if an event is pending. Translated code tests
`cr_special_event_pending` itself at points chosen by the emitters, using
the conditional-branch template, and leaves through this routine when it
is set.

## Keeping translations valid

### Self-modifying code and code loading

The recompiler does not detect writes to memory that has been
translated. It relies on 68K software announcing that it has modified
code. Two announcements are recognised:

- Private opcode `FC16`, with a start address in A0 and a length in D0,
  invalidates a range.
- Any of the 68040 `CINV` and `CPUSH` instructions, whatever their scope,
  requests a flush of the whole translation cache. (They have no other
  effect. `PFLUSH` and `PTEST` are accepted and ignored.)

`dr_invalidate_range` (`17E00`) handles the first. It consults the page
bitmap, and if no bit is set anywhere in the range there is nothing to
do. Otherwise it claims a free entry of the request table, stores the
range there together with the first lookup table set to scan and the
number of sets, and sets the entry's bit in `dr_invalidate_pending`. If
all 32 entries are in use it requests a full flush instead. The bit
masks are updated with `lwarx`/`stwcx.` loops, which makes the updates
atomic with respect to anything else that might run on the processor in
between.

`dr_invalidate_step` (`17AC0`), called from `dr_dispatch`, services one
request at a time, scanning 64 lookup table entries per step and
dropping every entry whose 68K address is in the range
(`dr_drop_entry`, which also patches the head of the translation to
branch to `dr_stale_block`). Between steps it checks for special events.

### Flushing everything

`dr_request_flush` (`17FA0`) sets `dr_flush_pending` and the amount of
work outstanding. `dr_flush_step` (`179EC`), called from `dr_dispatch`,
clears the lookup table and then the page bitmap 2 KB at a time with
`dcbz`, returning to the interpreter between chunks if a special event
is pending. When both are clear the cache pointer is reset to
`dr_cache_start` (`dr_flush_done`). A flush is requested when the cache
fills, when the invalidation request table is full, and by `CINV` and
`CPUSH`.

## Faults in translated code

A bus error can occur in the middle of a translated block, where the
`pc` register does not identify the faulting 68K instruction, or inside
the translator itself. Two routines called while the bus error frame is
being built repair the picture:

- `dr_fault_redirect` (`180C4`), if the faulting PowerPC address is in
  the translation cache, records the position within the block and
  arranges for execution to resume through `dr_resume_after_fault`.
- `dr_fault_fixup` (`17FFC`) converts a saved address inside the cache
  back to an offset relative to the block's translation by finding the
  block in the lookup table, so that the frame built for the 68K handler
  remains valid even if the translation is moved or discarded before the
  handler returns. If the fault interrupted the translator
  (`cr_dr_busy`), the translation is abandoned and the saved scratch
  registers are restored first.

On `RTE` from such a frame, `dr_resume_after_fault` /
`dr_resume_in_translator` look the block up again and continue at the
recorded offset, retranslating if the block has gone.

## Limits

| Limit | Value | Where |
|---|---|---|
| Block length | 120 bytes of 68K code | `dr_scan_store` |
| Instruction records | 2 KB (170 records) | `dr_setup` |
| Lookup table | 2,048 sets × 4 entries | `dr_lookup` |
| Pending range invalidations | 32 | `dr_invalidate_requests` |
| Granularity of the page bitmap | 512 bytes | `dr_translate_done` |
