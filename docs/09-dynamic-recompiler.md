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
describe the individual code generators (`dr_emitters`, `11338`–`17640`,
about 6,000 instructions) one by one; instead it shows what they produce.
`tools/drtranslate.py` runs the translator itself, in a simulator, on any
68K code and prints the PowerPC code that results; the examples below are
its output.

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

Translated code reaches the emulator's routines with ordinary relative
branches, so this memory must lie within 32 MB of the emulator's code.

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

One taken branch is not among them: the short form of `BNE` (`bne_s`,
`07F40`) dispatches its target in the interpreter without testing
`cr_dr_active`. `BNE.W`, `BNE.L` and every other condition's short form
do enter the recompiler. A branch that is not taken does not.

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
| +8 | For a conditional branch whose target was examined (below), the target's offset |

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
condition codes that are still wanted. Two flag groups are tracked: N,
Z, V and C together, and X. For each record the pass

- sets bit `0x0040` (N, Z, V, C) or `0x0080` (X) if the instruction
  writes that group and it is wanted afterwards — the instruction must
  produce it;
- replaces the two "writes" bits (`0x0400`, `0x0800`) by the groups that
  are wanted afterwards and that the instruction does not write — they
  must survive it;
- then removes what the instruction writes from the mask and adds what
  it reads.

The emitters consult these bits and produce shorter code — typically
the non-recording, non-carrying form of the same PowerPC instruction —
when flags are dead. At the end of a block all flags are assumed live.

### Pass 3: emit (`dr_emit_next`)

Each record's emitter is called in turn. An emitter appends PowerPC
instructions to the cache at `out_ptr`. They are assembled from
*templates*: instruction words stored in the recompiler's code block,
loaded as data, with register numbers, immediates or branch displacements
inserted. `dr_templates` (`1767C`) holds the commonest: `addi pc, pc, n`
and `addis pc, pc, n` to advance the 68K program counter, a `bl`, a
conditional branch on `cr_special_event_pending`, and unconditional
branches. In the source every load of a template is commented with the
instruction it loads, and the header of each emitter shows what it
generates for one instruction, obtained by running it.

Operand access is generated by the *operand emitters*, reached through
ten tables of offsets indexed by the 6-bit effective address field
(`dr_operand_address_table`, `11E7C`, and the nine that follow): one for
the address of an operand, and for each of the three sizes one to load
it, one to store it, and one to store back to an operand that has just
been loaded — `-4(An)` for `(An)+`, since the load has already advanced
the register. An emitter calls an entry such as `dr_operand_load_l`
(`124A0`) with the opcode in hand and the target register prepared.

A conditional branch, `Scc` or `DBcc` is generated from a sequence of
templates chosen by condition from `dr_bcc_sequences`,
`dr_scc_sequences` or `dr_dbcc_sequences`.

Instructions are translated to the PowerPC instructions that perform
them, on the same register assignments the interpreter uses, so that
control can pass between translated code and the interpreter at any
instruction boundary. The code is straight-line: translating each of the
37,328 valid opcodes that do not end a block, on its own and with every
flag wanted, gives anything from no PowerPC instructions
(`MOVEA.L A7,A7`) to seventeen (`DBLE`), most often five. `NOP` becomes
`eieio`. Only `DIVU.W` and `DIVS.W` call a routine — `dr_divu_w`,
`dr_divs_w` and `dr_divs_w_shift` in the recompiler's own block — and a
line-A trap, which ends a block, leaves through `dr_aline_trap`. No
translation calls an interpreter routine.

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

## What is translated

Running the first pass on every opcode (`tools/drmap.py`) gives the
recompiler's own answer. It assigns a code generator to 41,911 of the
65,536 opcodes, through 142 generators. An instruction it does not
translate ends the block: the translation stops in front of it and
returns to the interpreter, which executes that one instruction and
re-enters the recompiler afterwards.

| Translated | Left to the interpreter |
|---|---|
| `MOVE`, `MOVEA`, `MOVEQ`, `LEA`, `PEA`, `CLR`, `EXG`, `SWAP`, `EXT`; `MOVE` to and from the CCR | `MOVEP`, `MOVES`, `MOVE16`, `MOVEC`; `MOVE` to and from the SR; `ANDI`/`ORI`/`EORI` to the CCR or SR |
| `ADD`, `SUB`, `CMP` and their A, I, Q, M forms; `NEG`; `ADDX` | `SUBX`, `NEGX`, `ABCD`, `SBCD`, `NBCD`, `PACK`, `UNPK` |
| `AND`, `OR`, `EOR`, `NOT`, `TST` | Bit field instructions |
| `MULU.W`, `MULS.W`; `DIVU.W` and `DIVS.W` for 296 of their 424 forms | The remaining forms of `DIVU.W`/`DIVS.W`; 32-bit multiply and divide |
| `ASL`, `ASR`, `LSL`, `LSR` by an immediate count | Shifts by a register count or on memory; all rotates |
| `BTST`, `BCHG`, `BCLR`, `BSET` with an immediate bit number | The same with the bit number in a register |
| `Bcc`, `BRA`, `BSR`, `DBcc`, `Scc`, `JMP`, `JSR`, `RTS`, `RTD` | The cases below; `RTE`, `RTR`, `TRAP`, `TRAPV`, `TRAPcc`, `CHK`, `CHK2`, `CAS`, `TAS` |
| `LINK`, `UNLK`, `MOVEM`, `NOP`; line-A traps | `STOP`, `RESET`, cache and MMU instructions, everything invalid |

The counts above are for extension words of zero, which is how the scan
is run. Three decisions depend on the words that follow the opcode:

- An indexed addressing mode whose extension word is in the full format
  (bit 8 set) is not translated. 6,422 of the translated opcodes have an
  indexed mode.
- `Bcc`, `BRA`, `BSR`, `DBcc` and `JSR (d16,PC)` are not translated when
  the displacement is odd.
- `JMP (xxx).L` and `JSR (xxx).L` are translated unless the address is
  zero (`10A38`), which is why the scan does not count them. *(Inferred:
  a jump to address zero is the form of a jump whose address is filled
  in later, as in a jump table entry not yet loaded.)*

Each instruction's record carries flag bits that the later passes use:

| Bit | Meaning |
|---|---|
| `0x0100` | Reads N, Z, V, C |
| `0x0200` | Reads X |
| `0x0400` | Writes N, Z, V, C |
| `0x0800` | Writes X |
| `0x1000` | Is the target of a branch within the block |
| `0x2000` | Transfers control |
| `0x4000` | Not translated |
| `0x8000` | Last record of the block |
| `0x0004` | On a conditional branch: the instruction at the branch target replaces N, Z, V and C |
| `0x0020` | On a conditional branch: the condition is HI, LS, CC, CS, NE or EQ |
| `0x0012` | On a conditional branch: the condition is GE, LT, GT or LE |
| `0x0008` | On a conditional branch, set during pass 3: the emitter of the compare before it has left a PowerPC comparison in CR7 |

An instruction that changes only some of the flags it writes — `BTST`
sets Z and leaves the rest — is marked as both reading and writing the
group. For a conditional branch the decoder looks ahead at the
instruction at the branch target, which is how the last bit is obtained:
it tells the liveness pass whether the flags are still wanted along the
taken path. The two classes of condition come from the table
`dr_bcc_flags` (`10BEC`). They let the emitter of a preceding compare
prepare for the branch. It can emit a PowerPC compare into CR7 —
`cmplw` for the first class, `cmpw` for the signed one — and set bit
`0x0008` in the branch's record, upon which the branch is generated from
`dr_bcc_sequences_cr7`, where every condition is a single branch on CR7.
`dr_plan_compare` (`15248`) decides. When nothing else can want the 68K
flags — the instruction at the branch's target replaces them, so do the
instructions after the branch, the target is inside the block and the
branch is not itself a branch target — the compare is generated as the
PowerPC compare alone, and the pair costs two instructions:

```
68K     B081        CMP.L   D1,D0
        6202        BHI.S   *+4
        7001        MOVEQ   #1,D0
        7002        MOVEQ   #2,D0

        cmplw   cr7, d0, d1
        bgt     cr7, <MOVEQ #2>
```

Otherwise the flags are computed as usual; a branch of the signed class
still gets its `cmpw` beside them, because rebuilding N⊕V costs more.
Before a branch of the signed class, `CMP`,
`CMPA`, `CMPI` and `CMPM` also emit a PowerPC signed compare into CR7,
and the branch tests that instead of rebuilding N⊕V
([15-build-history.md](15-build-history.md) shows the code).

`make static-check` confirms two properties of these decisions for every
translated instruction: the length the recompiler computes equals the
length of the encoding, and the flags it believes the instruction writes
are the ones the 68K instruction does write
([14-static-checks.md](14-static-checks.md)).

## What translated code looks like

A counted loop:

```
68K     0  7001   MOVEQ   #1,D0
        2  5380   SUBQ.L  #1,D0
        4  66FC   BNE.S   2
        6  4E75   RTS

  +000  b       dr_exit_to_interpreter
  +004  bf_likely cr_special_event_pending, +014
  +008  addi    pc, pc, 2
  +00C  b       +000
entry:
  +010  li      d0, 1
  +014  li      addr, 1
  +018  subfco. d0, addr, d0
  +01C  subfe   addr, zero, zero
  +020  addc    ccr_x, addr, addr
  +024  bne     +004
  +028  lwz     pc, 0(a7)
  +02C  addi    a7, a7, 4
  +030  bl      dr_indirect_exit
  +034  .long   0x00000000
  +038  .long   0x00000000
```

- `MOVEQ` has become a bare `li`. Its condition codes are overwritten by
  the `SUBQ` before anything reads them, so pass 2 dropped them. The
  interpreter would have used `addic.` and then cleared V and C.
- `SUBQ` is the same three instructions the interpreter uses
  ([05-condition-codes.md](05-condition-codes.md)).
- The backward branch goes to a stub ahead of the entry point that tests
  `cr_special_event_pending` before re-entering the loop. If an event is
  pending the stub sets `pc` and leaves for the interpreter; an interrupt
  is therefore never delayed by more than one iteration.
- `pc` is not maintained inside the block. It is given a value only
  where control leaves.
- `RTS` loads the new `pc` and calls `dr_indirect_exit`; the two zero
  words after the call are its one-entry cache.

Memory operands, and a store whose flags are needed:

```
68K     0  2028 0010   MOVE.L  16(A0),D0
        4  D098        ADD.L   (A0)+,D0
        6  2140 0004   MOVE.L  D0,4(A0)
       10  4E75        RTS

entry:
  +000  lwz     d0, 16(a0)
  +004  lwz     addr, 0(a0)
  +008  addi    a0, a0, 4
  +00C  addco.  d0, d0, addr
  +010  mfxer   ccr_x
  +014  stw     d0, 4(a0)
  +018  addco.  addr, d0, zero
  +01C  lwz     pc, 0(a7)
  ...
```

The first `MOVE.L` is one load instruction. The last one must leave the
condition codes correct at the end of the block, so it is followed by the
`addco.` idiom.

A comparison and a forward branch out of the block:

```
68K     0  3018        MOVE.W  (A0)+,D0
        2  B058        CMP.W   (A0)+,D0
        4  6600 0008   BNE.W   14
        8  4E75        RTS

  +000  b       dr_exit_to_interpreter
  +004  addi    pc, pc, 14
  +008  bl      dr_block_exit
  +00C  .long   0x00000000
  +010  .long   0x00000000
entry:
  +014  lha     addr, 0(a0)
  +018  addi    a0, a0, 2
  +01C  rlwimi  d0, addr, 0, 16, 31
  +020  lha     addr, 0(a0)
  +024  addi    a0, a0, 2
  +028  slwi    addr, addr, 16
  +02C  slwi    rtn_addr, d0, 16
  +030  subfco. rtn_addr, addr, rtn_addr
  +034  addc    addr, addr, rtn_addr
  +038  bf_unlikely eq, +004
  +03C  lwz     pc, 0(a7)
  ...
```

The taken side of the branch is a stub placed ahead of the entry point: it
sets `pc` for the target and calls `dr_block_exit`, which will turn the
call into a direct branch once the target has been translated. A forward
branch whose target is inside the block becomes a plain conditional
branch.

A block that reaches an instruction the recompiler does not translate
simply stops in front of it:

```
68K     0  7005   MOVEQ   #5,D0
        2  E398   ROL.L   #1,D0

entry:
  +000  li      d0, 5
  +004  addco.  d0, d0, zero
  +008  addi    pc, pc, 2
  +00C  b       dr_exit_to_interpreter
```

Here the `MOVEQ` keeps its flags, because the interpreter's `ROL` is
going to read X and the liveness pass cannot see past the end of the
block.

## Differences from the interpreter

Translated code is meant to behave exactly as the interpreter does. Three
cases are known in which it does not; all were found mechanically, and
[14-static-checks.md](14-static-checks.md) gives the details.

- **Invalid opcodes.** The first pass does not check every addressing
  mode for validity. It assigns code generators to 171 opcodes that are
  not valid 68K instructions and that the interpreter sends to the
  illegal instruction exception: `DIVU.W An,Dn` and `DIVS.W An,Dn` (128
  opcodes), and 43 instructions that would write to a `(d8,PC,Xn)`
  destination. Translated, `DIVU.W A0,D0` divides by D0, and
  `OR.B D0,(d8,PC,Xn)` performs the store.
- **Word moves from A7.** `MOVE.W A7,<memory>` and `MOVEA.W A7,An` (50
  opcodes) are translated into code that reads r23 instead of r1.
- **`ADDX` and Z.** `ADDX` is recorded as not reading N, Z, V and C,
  although it leaves Z unchanged when its result is zero. An instruction
  before it that writes those flags but not X can have them optimised
  away, and `ADDX` then sees a stale Z.

Apart from these, random programs run identically both ways.

## Leaving a block

### Known targets: chaining

A block that ends by going to a fixed 68K address ends with a call to
`dr_block_exit` (`17860`). The first time it is executed, the run-time
looks the target up (translating it if need be) and then, in
`dr_chain_block`, *overwrites the call* with a direct branch to the
target block and flushes that word from the caches. From then on the two blocks run back
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

- `dr_fault_fixup` (`17FFC`), called as the frame is completed, deals
  with a faulting PowerPC address inside the translation cache. It finds
  the block in the lookup table from the `pc` in the frame — inside a
  block `pc` is still the block's — and replaces that field
  (frame `+0x24`) with the offset of the faulting instruction from the
  start of the block's translation. The frame then stays valid even if
  the translation is moved or discarded before the handler returns. If
  the fault interrupted the translator instead (`cr_dr_busy`), the
  translation is given up: the frame receives the values `addr`, `data`
  and `rtn_addr` had before translation began, and a flush of the whole
  cache is requested.
- `dr_fault_redirect` (`180C4`), called by `RTE` from such a frame,
  refuses to resume at a saved address inside the cache. It records the
  offset from the frame, plus four to pass the instruction that faulted,
  in `dr_resume_offset`, and substitutes the address of
  `dr_resume_after_fault`.

`dr_resume_after_fault` (`180FC`) looks the block up again and continues
at the recorded offset inside its translation. If the block is no longer
translated it sets `dr_retranslating` and has it translated afresh
first. `dr_resume_in_translator` is the entry used when the fault had
interrupted the translator.

## Limits

| Limit | Value | Where |
|---|---|---|
| Block length | 120 bytes of 68K code | `dr_scan_store` |
| Instruction records | 2 KB (170 records) | `dr_setup` |
| Lookup table | 2,048 sets × 4 entries | `dr_lookup` |
| Pending range invalidations | 32 | `dr_invalidate_requests` |
| Granularity of the page bitmap | 512 bytes | `dr_translate_done` |
