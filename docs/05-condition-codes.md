# 5. Condition Codes

The 68K condition code register has five flags: X, N, Z, V and C. The
emulator never keeps them together. Each is held where the PowerPC produces
its natural equivalent, so that in the common case the PowerPC instruction
that computes a result also computes the flags.

| 68K flag | Held in | PowerPC meaning |
|---|---|---|
| N | CR0 bit `lt` | result is negative |
| Z | CR0 bit `eq` | result is zero |
| V | XER[OV] | signed overflow |
| C | XER[CA] | carry out |
| X | bit 29 of the register `ccr_x` | — |

Bit 29 of `ccr_x` is the position XER[CA] occupies in the XER, so that
`mfxer ccr_x` makes X equal to C in one instruction. The other bits of
`ccr_x` are ignored.

The three PowerPC instruction suffixes select which flags an operation
updates:

| Suffix | Updates | 68K flags |
|---|---|---|
| `.` (record) | CR0 from the result compared with zero | N, Z |
| `o` (overflow enable) | XER[OV] (and the sticky XER[SO]) | V |
| `c` (carrying) | XER[CA] | C |

## Moves and logical operations

These leave X alone, set N and Z from the result and clear V and C. One
instruction does all of it:

```
        addco.  data, d0, zero          // data = d0;  N,Z from it;  V = 0;  C = 0
```

Adding the `zero` register can neither overflow nor carry, so the `o` and
`c` forms clear V and C, and the record form sets N and Z. Dropping
suffixes gives the partial updates the patent tabulates (`add.`: N and Z
only; `addco`: clear V and C only). Shared endings built on this idiom:

| Routine | Effect |
|---|---|
| `update_vc_zero` (`060C0`) | V = C = 0; N and Z were set by the caller |
| `update_nzvc_zero` (`06100`) | N = 0, Z = 1, V = C = 0 (the result was zero, as in `CLR`) |
| `update_nzvcx_zero` (`060E0`) | the same, and X = 0 (`SUB Dn,Dn` with both operands the same register) |
| `test_data` (`06144`) | N, Z from `data`; V = C = 0 |
| `test_byte` (`06140`) | the same for a byte in the low 8 bits of `data` |

## Operand sizes

PowerPC flags describe a 32-bit result. For byte and word operations the
operands are shifted to the top of the register first, so that bit 31, the
carry out and the overflow of the 32-bit operation are those of the 8- or
16-bit one. The result is then inserted into the low part of the
destination, leaving the rest of the 68K register unchanged:

```
sub_w_any_d0:                           // data = source << 16 (done by the table entry)
        slwi    immed_data, d0, 16      // destination, left-justified
        subfco. data, data, immed_data  // data = immed_data - data, flags as for 16 bits
        rlwimi  d0, data, 16, 16, 31    // d0[15:0] = data[31:16]
```

Dispatch table entries for word and byte operations therefore often hand
the routine an operand that is already shifted (`slwi data, d1, 16` or
`lis data, 1` for a quick constant of 1).

## Addition

```
        addco.  d0, data, d0            // result, N, Z, V, C
        mfxer   ccr_x                   // X = C
```

## Subtraction and comparison

The PowerPC carry flag after a subtraction is the opposite of the 68K's:
PowerPC sets CA when there is *no* borrow, the 68K sets C when there *is*
one. The emulator corrects this in one of two ways.

**Comparison** (`CMP`, `CMPA`, `CMPI`) discards the result, so it follows
the subtraction with an addition whose carry out is the borrow:

```
        subfco. immed_data, data, d0    // immed_data = d0 - data;  N, Z, V
        addc    data, data, immed_data  // data + (d0 - data): carries iff d0 < data
```

This is the pair of instructions given in US patent 5,574,873.

**Subtraction** (`SUB`, `SUBQ`, `SUBI`, `NEG`) must also set X:

```
        subfco. data, data, immed_data  // result;  N, Z, V;  CA = no borrow
        ...
        subfe   immed_data, zero, zero  // immed_data = CA - 1:  0, or -1 if borrow
        addc    ccr_x, immed_data, immed_data
                                        // CA = borrow;  ccr_x = 0 or 0xFFFFFFFE,
                                        // i.e. bit 29 (X) = borrow
```

`SUBX`, `ADDX`, `NEGX` and the BCD instructions feed X back in as the
carry by moving `ccr_x` to the XER before an extended (`adde`/`subfe`)
operation. They also implement the 68K rule that Z is only ever cleared,
never set, by these instructions.

## Testing conditions

N and Z conditions are plain PowerPC conditional branches on CR0. The
entry for `BNE.S` reaches a routine whose first instruction is
`bne taken`.

C is extracted from the XER arithmetically, without disturbing it:

```
bcs_w:
        subfe   data, data, data        // data = CA - 1
        cmpwi   cr6, data, 0
        beq     cr6, branch_taken       // CA was 1
```

Conditions that involve V copy the top of the XER into a scratch CR field
and combine bits with condition-register logic:

```
bge_w:
        mfxer   data
        rlwinm  data, data, 8, 24, 27   // data[7:4] = XER[SO, OV, CA, 0]
        mtcrf   0x02, data              // cr6.lt = SO, cr6.gt = V, cr6.eq = C
        creqv   4*cr6+lt, lt, 4*cr6+gt  // cr6.lt = (N == V)
        blt     cr6, branch_taken
```

Where a condition must be evaluated as a value rather than branched on
(`Scc`, `TRAPcc`, and the trace logic), `condition_truth_table` (`085C0`)
is used: sixteen 32-bit words, one per 68K condition. The flags are packed
into a 5-bit number and used as a rotate count; the rotated word's low bit
is the condition's truth value.

## Assembling and loading the whole CCR

The five flags are gathered into 68K layout only when a 68K instruction or
an exception needs the register as a whole. `take_exception_pc_set`
(`0D790`) shows the gathering:

```
        rlwimi  data, ccr_x, 7, 27, 27          // bit 4 (X) = ccr_x[29]
        mfcr    base_disp
        rlwimi  data, base_disp, 4, 28, 28      // bit 3 (N) = CR[31]  (cr0.lt)
        rlwimi  data, base_disp, 5, 29, 29      // bit 2 (Z) = CR[29]  (cr0.eq)
        mfxer   base_disp
        rlwimi  data, base_disp, 3, 30, 31      // bits 1:0 (V, C) = XER[30:29]
```

and `set_ccr` (`0C3EC`) the scattering, used by `MOVE to CCR`, `RTE`,
`RTR` and friends.

## In translated code

The dynamic recompiler uses the same representation, which is what lets
translated code call the interpreter's routines. Its second pass works out
which instructions compute flags that are overwritten before anything
reads them and selects cheaper code for those; see
[09-dynamic-recompiler.md](09-dynamic-recompiler.md).
