# 3. Dispatch

## The dispatch table

`OpcodeTblTop` (offset `20000`) is a table of 65,536 entries, one for every
possible 16-bit 68K opcode word. Each entry is exactly two PowerPC
instructions (8 bytes), so the entry for opcode *op* is at
`OpcodeTblTop + op * 8`.

The emulator does not look anything up: it jumps *into the table*. The
entry's two instructions are the first two instructions of the emulation of
that opcode. Because every operand that is encoded in the opcode word —
register numbers, sizes, quick constants, simple addressing modes — selects
a different entry, those operands are never decoded at run time. The entry
for `MOVE.L D1,D0` is literally an instruction that copies r9 to r8.

In the source the table is `src/optable/Line0.S` … `LineF.S`. Each entry is
commented with its opcode and the 68K instruction it stands for:

```
        addco.  data, d0, zero                  // 2F00  MOVE.L    D0,-(A7)
        b       move_l_reg_mem_16
```

## Fetch, decode, dispatch

Every emulation routine ends with the same four instructions (plus a
fall-through branch). US patent 5,574,873 names them as macros, and those
names are used in the source comments:

```
        rlwimi  disp_table, prefetch_data, 3, 13, 28    // DECODE1
        mtlr    disp_table                              // DECODE2
        lhau    prefetch_data, 2(pc)                    // PREFETCH
        bflr_likely cr_special_event_pending            // DISPATCH
        b       process_special_event
```

| Step | Effect |
|---|---|
| DECODE1 | `disp_table[18:3] = prefetch_data[15:0]`. The next opcode, which is already in `prefetch_data`, is multiplied by 8 and inserted into the table address. The rest of `disp_table` is unchanged, which is why the table must be 512 KB aligned. |
| DECODE2 | The entry address is moved to LR (or CTR). |
| PREFETCH | `pc += 2; prefetch_data = sign-extended word at pc`. One instruction advances the program counter and reads ahead. |
| DISPATCH | Branch to LR unless `cr_special_event_pending` is set. Otherwise fall into the branch to `process_special_event`. |

The four steps need not be adjacent or in this order. Routines interleave
them with their own last few instructions so that the load in PREFETCH and
the move to LR overlap useful work; a routine is free to do DECODE1 early
provided `prefetch_data` already holds the next opcode. The standalone copy
of the sequence is `fetch` (`06084`), used by table entries that finish
their work in their first instruction:

```
        addco.  data, d0, zero                  // 4A80  TST.L     D0
        b       fetch
```

The conditional branch is written with the `_likely` macro because the
original encoding has the static prediction bit set: the processor is told
to assume no special event.

### Extension words

An instruction with extension words consumes them from `prefetch_data` and
executes PREFETCH once per word consumed (or `lhau prefetch_data, 4(pc)` to
step over a long word after reading it with `lwz …, 0(pc)`). When the
handler reaches its ending, `prefetch_data` again holds the next opcode.

A few shared endings exist purely to step over extension words:
`fetch_skip_word` (`06080`) and `fetch_skip_long` (`060A0`).

## Shapes of table entry

### Complete in one instruction

The first instruction does all the work; the second branches to `fetch` or
to an ending that also fixes the condition codes (`update_vc_zero`,
`update_nzvc_zero`, `test_data`, …).

```
        addic.  d0, zero, 1                     // 7001  MOVEQ.L   #$01,D0
        b       update_vc_zero
```

### Set up, then a routine

The first instruction fetches an operand or computes an address, the second
branches to a routine that is specific to the operation and usually to the
destination register:

```
        slwi    data, d1, 16                    // 9041  SUB.W     D1,D0
        b       sub_w_any_d0
```

Routines often have several entry points a few instructions apart, used by
entries that have done more or less of the preliminary work.

### Effective address routine with continuation

When the address calculation takes more than one instruction, the first
instruction loads the address of the operation's routine into `rtn_addr`
and the second branches to an effective address routine, which finishes by
jumping to `rtn_addr`:

```
        ori     rtn_addr, code_ptr, not_l_mem_2 - cb    // 4698  NOT.L     (A0)+
        b       cea_l_30
```

`code_ptr` holds the address of `cb`, the first byte of the image, so the
16-bit immediate is simply the routine's offset. This is exactly the form
shown in the patent (`ori rtn_addr,code_ptr,not_l_mem-cb` / `b cea_l_30`).
See [04-effective-addresses.md](04-effective-addresses.md).

### Branch to another table entry

Some addressing modes are implemented by adjusting a register and then
using the entry for a simpler mode. All `-(An)` destination forms of the
immediate instructions work this way:

```
        addi    a0, a0, -1                      // 0020  ORI.B     #<data>,-(A0)
        b       op_0010
```

`op_0010` is the label of the table entry for `ORI.B #<data>,(A0)`. Table
entries that are branched to have `op_XXXX` labels in the source.

`DBcc` uses a conditional branch as its first instruction: if the condition
is true it behaves as `DBT` (which never loops), otherwise it continues to
the decrement-and-branch routine:

```
        bne     op_50C8                         // 56C8  DBNE.W    D0,<label>
        b       dbcc_w_d0
```

### Unimplemented opcodes

Entries for opcodes that are not valid 68LC040 instructions load a handler
address from the state block and branch to a routine that supplies the
exception vector:

```
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)
        b       take_illegal_instruction
```

Line-F opcodes use `fline_handler` and `take_fline` in the same way.
Line-A opcodes branch to a routine that can dispatch Mac OS traps without
taking an exception at all (see [08-native-interface.md](08-native-interface.md)).
The handlers are normally `take_exception` but, being in RAM, can be
replaced.

### Private opcodes

A group of line-F opcodes that no 68K processor implements (`FC00`–`FC16`
and `FE01`–`FE20`) have real entries. They give 68K code access to services
of the host; see [08-native-interface.md](08-native-interface.md). One of
them, `FC10`, is the only entry in the table whose second instruction is
not a branch: it runs on into the entry for `FC11`.

## Control transfers

Instructions that load a new program counter load the opcode at the target
directly instead of using PREFETCH. `RTS`, for example:

```
        lwz     pc, 0(a7)                       // 4E75  RTS  (table entry)
        b       rts
rts:
        lha     prefetch_data, 0(pc)            // opcode at the return address
        rlwimi  disp_table, pc, 20, 11, 11      // odd address check (below)
        mtctr   dr_entry
        rlwimi  disp_table, prefetch_data, 3, 13, 28    // DECODE1
        mtlr    disp_table                              // DECODE2
        lhau    prefetch_data, 2(pc)                    // PREFETCH
        addi    a7, a7, 4
        btctr   cr_dr_active                    // hand over to the recompiler
        bflr_likely cr_special_event_pending    // DISPATCH
        b       process_special_event
```

The two lines involving `dr_entry` and `cr_dr_active` are the hook for the
dynamic recompiler: when it is active, every transfer of control goes to
`dr_dispatch` with LR still holding the table entry the interpreter would
have used. There are 31 such sites in the interpreter.

`DBF` and the loop form of `DBcc` take the branch speculatively in the
table entry itself — `lhaux data, pc, prefetch_data` moves `pc` to the
target and loads the opcode there — and undo it in the routine if the
counter has expired.

## Odd addresses

The 68K takes an address error exception if execution is attempted at an
odd address. The check costs one instruction at each control transfer:

```
        rlwimi  disp_table, pc, 20, 11, 11      // disp_table[20] = pc[0]
```

If the new `pc` is odd, bit 20 of `disp_table` becomes 1 and DISPATCH jumps
to an address 1 MB beyond the intended table entry. That address is not
executable, so the processor takes a native exception. The kernel reflects
it to `native_exception_handler` (`0D440`), which recognises the situation
by comparing the faulting address with `disp_table`, and resumes the
emulator at `take_address_error`. An even `pc` costs nothing further.

This is the second of the two methods described in US patent 5,574,873
("CHECK_ODD_PC1"). It depends on the kernel and on the memory map; see
[11-testing-gaps.md](11-testing-gaps.md).

## Handler names in the source

Routines reached from the table are named automatically from the 68K
instructions that use them, and each is preceded by a comment listing those
instructions. The name is built from the mnemonic, the operand size and the
operand kinds:

| Fragment | Meaning |
|---|---|
| `b`, `w`, `l` | operand size |
| `d0`…`d7`, `a0`…`a7` | a specific register |
| `dn`, `an`, `reg` | any data / address / either register |
| `mem` | a memory operand |
| `imm`, `q` | immediate data / a quick constant from the opcode |
| `ea` | memory or immediate |
| `any` | none of the above describes all users |
| `_2`, `_3`, … | another routine that would otherwise get the same name, in address order |
| `_etc` | more mnemonics share the routine than are named |

`cea_s_mr` and `fea_s_mr` are effective address routines; see
[04-effective-addresses.md](04-effective-addresses.md). Shared endings and
other routines that have been examined individually have descriptive names
instead (`fetch`, `update_nzvc_zero`, `take_exception`, …).
