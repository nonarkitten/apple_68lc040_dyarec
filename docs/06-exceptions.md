# 6. Special Events and Exceptions

## The special event flag

`cr_special_event_pending` (CR2 bit `lt`) is the emulator's only run-time
check. DISPATCH tests it at the end of every instruction:

```
        bflr_likely cr_special_event_pending
        b       process_special_event
```

When the flag is clear — almost always — the cost is a conditional branch
that is predicted correctly. When it is set, the next instruction is not
started and `process_special_event` (`0D114`) runs instead, with `pc`,
`prefetch_data` and `disp_table` already describing that next instruction.

Anything that wants the emulator's attention sets the flag: an interrupt
request, the trace bits being set, a test-mode switch.

## `process_special_event`

1. Call the handler in `special_event_hook` (state block `+0x814`). By
   default this is the address of the instruction after the call
   (`special_event_continue`), so the call does nothing.
2. Copy the low bit of `pc` into the odd-pc flag, and load the flag and SR
   bytes of `sr_and_flags` into CR4–CR7.
3. Test, in order:

| Condition | Action |
|---|---|
| Odd `pc` | `take_address_error` |
| Trace pending (set before the *previous* instruction) | `take_trace_exception` |
| A private request above the SR mask (`check_interrupt`) | exception through vector offset `0x058` |
| `cr_interrupt_pending`, and the level exceeds the SR mask or is 7 | `take_interrupt` |
| The test-mode flag is set | `test_mode_events` |
| T1 or T0 is set in the SR | `arm_trace`: mark the next instruction for tracing |
| None of the above | `bctr` to the instruction |

`cr_special_event_pending` is recomputed on the way through, so that it
stays set only while there is a reason for it.

### Tracing

When the SR requests tracing, `arm_trace` saves the address of the
instruction about to run in `trace_pc`, sets the trace-pending flag and
leaves the special event flag set, so that control returns to
`process_special_event` after exactly one instruction; the trace exception
is then taken with a format 2 frame carrying `trace_pc`.

With T1 ("trace all") that is unconditional. With T0 ("trace on change of
flow") `arm_trace` examines the opcode and leaves the trace-pending flag
set only for instructions that change the flow of control: `RTE`, `RTD`,
`RTS`, `RTR`, `JSR`, `JMP`, `BRA`, `BSR`, and `Bcc`/`DBcc` when their
condition (evaluated in advance with `condition_truth_table`) says the
branch will be taken.

The dynamic recompiler is not used while either trace bit is set.

### Test-mode switches

The upper half of `sr_and_flags` holds switches that are not part of the
68K architecture. They can be set from 68K code through a private opcode
(see [08-native-interface.md](08-native-interface.md)). Bit 10 of
`sr_and_flags` is set whenever any of them is, which forces every
instruction through `process_special_event`.

| Bit of `sr_and_flags` | Effect before each instruction |
|---|---|
| 31 | `exit_emulator`: store the full 68K state in the state block and return to the native caller of `EmEntry` |
| 29 | `check_prefetch_consistency`: trap if `prefetch_data`, CTR and `disp_table` do not agree with the instruction stream |
| 18 | Call the routine whose address is at `+0x7C8` in the state block, if non-zero, with the word at `+0x7CC` in `data` |
| 17 | `count_opcode`: increment a per-opcode counter in the table whose address is at `+0x73C` |
| 16 | `count_instruction`: increment the counter at `+0x738` |

## Exception entry

`take_exception` (`0D780`) delivers a 68K exception exactly as the
processor would. On entry `immed_data` holds the format/vector word for
the stack frame: the frame format in bits 15:12 and the vector offset in
bits 11:0.

1. `pc` is backed up by 2 to the true instruction address.
2. T1, T0 and trace-pending are cleared.
3. The SR is assembled: the system byte from `sr_and_flags`, the CCR from
   CR0, the XER and `ccr_x`.
4. `enter_supervisor`: if not already in supervisor state, the user stack
   pointer is saved in `saved_usp` and `a7` is loaded from `saved_isp` or,
   if the M bit is set, `saved_msp`; S is set.
5. If the caller asked for it (cr7.so set), control returns to the caller
   through LR so that it can push the additional words of a longer frame;
   the caller then returns here.
6. The SR, `pc` and the format/vector word are pushed (8 bytes).
7. `pc` is loaded from the vector table at `vbr + offset`, the handler's
   first opcode is fetched and dispatched. An odd handler address leads to
   an address error; a second group 1 fault while one is being processed
   traps to the kernel (`check_double_fault`).

Entry points part-way down (`take_exception_sr_built`,
`take_exception_pc_set`, `enter_supervisor`, `push_exception_frame`) serve
callers that have done some of the steps themselves.

### Frames produced

| Exception | Vector offset | Frame |
|---|---|---|
| Bus error | `0x008` | Format `$B` (92 bytes), built by `take_bus_error` |
| Address error | `0x00C` | Format `$B` (92 bytes), built by `take_address_error` |
| Illegal instruction | `0x010` | Format 0 |
| Zero divide | `0x014` | Format 2 (with instruction address) |
| CHK, CHK2 | `0x018` | Format 2 |
| TRAPV, TRAPcc | `0x01C` | Format 2 |
| Format error (from `RTE`) | `0x038` | Format 0 |
| Private request (see "Interrupts") | `0x058` | Format 2 |
| Privilege violation | `0x020` | Format 0 |
| Trace | `0x024` | Format 2 |
| Line 1010 | `0x028` | Format 0 |
| Line 1111 | `0x02C` | Format 0 |
| Interrupt, level *n* | `0x060 + 4n` | Format 0, plus a format 1 "throwaway" frame on the interrupt stack when the master stack was in use |

The bus and address error frames are the 68020/68030 long format, not the
68040's format 7. Software that inspects the frame format will therefore
see a 68020-style fault frame from a processor that otherwise implements
the 68040 instruction set.

### Replaceable handlers

The dispatch table entries for unimplemented, line-A and line-F opcodes do
not branch to `take_exception` directly. They load a handler address from
the state block (`illegal_handler`, `aline_handler`, `fline_handler`;
privileged instructions use the one at `+0x80C`) and call it with the
vector offset in `immed_data`. The default for all of them is
`take_exception`. Because the table is in RAM, the host can substitute its
own handlers without the cost of a 68K exception.

## Interrupts

The emulator polls; nothing in this image is an interrupt handler. The
kernel's interrupt handler stores the level in the state block
(`interrupt_level`) and sets `cr_special_event_pending`,
`cr_interrupt_asserted` and `cr_interrupt_pending` in the interrupted
emulator context's condition register
([13-rom-context.md](13-rom-context.md)). The emulator shows its side of
this arrangement in `STOP`, which waits in a one-instruction loop

```
stop_wait:
        bf      cr_interrupt_pending, stop_wait
```

that can only end when something outside the emulator changes the bit.

Two kinds of request are recognised by `process_special_event`:

**Ordinary interrupts.** `interrupt_level` (byte at `+0x71`) holds the
requested level. `take_interrupt` (`0D248`) takes it if the level exceeds
the SR mask or is 7, and then:

- increments the counter for that level (`interrupt_counts`),
- uses the autovector `0x60 + 4 × level` — there is no interrupt
  acknowledge cycle and no vectored interrupt,
- sets the SR mask to the level,
- pushes a format 0 frame, and if the M bit was set, clears it and pushes
  the format 1 throwaway frame on the interrupt stack, as a 68020 does.

**A second, private request.** `check_interrupt` (`0D3E4`) examines a
level in the word at `+0x1D0`. If it exceeds the SR mask (and no ordinary
interrupt of higher level is waiting) the emulator takes an exception
through vector offset `0x058` with a format 2 frame whose extra longword
comes from a per-level table at `+0xAE0`, and sets the SR mask to that
level. Vector 22 is not assigned by Motorola; its use is a convention
between this emulator and its host.

## Bus errors

68K memory accesses are plain PowerPC loads and stores, so a bad 68K
address causes a PowerPC exception. `EmEntry` registers
`native_exception_handler` (`0D440`) with the kernel as the handler for
exceptions taken in the emulator context.

`native_exception_handler`:

- traps to the kernel if a group 1 exception is already being processed;
- recognises the odd-`pc` dispatch fault described in
  [03-dispatch.md](03-dispatch.md) and resumes at `take_address_error`;
- otherwise copies the kernel's description of the fault (address, access
  type and size) from the kernel-maintained area of the state block into
  fields from `+0x80`, and returns to the kernel, which resumes the
  emulator at `take_bus_error` (`0D4C8`) *(inferred: `take_bus_error` is
  registered at entry and never branched to within the image)*.

`take_bus_error` builds the format `$B` frame, including the fault
address, the data buffers, the special status word and the saved scratch
registers, from which the 68K handler's `RTE` can resume the instruction.

## RTE

`RTE` reads the format field of the frame at `a7` and calls one of sixteen
replaceable handlers in the state block (`+0x830 + 4 × format`). Formats
0, 1 and 2 are the ordinary cases. Format `$B` (`0D5DC`) restores the
internal state saved by a bus or address error. Format `$E` — not a
Motorola format — is a frame the emulator itself builds to hold a saved
native context when an interrupt has to be delivered to 68K code while
native code was running (`0E408`; see
[08-native-interface.md](08-native-interface.md)). Every other format
raises a format error exception (vector offset `0x038`).

When the fault happened in translated code, or inside the translator,
`dr_fault_fixup` and `dr_fault_redirect` adjust the saved state so that
the frame describes 68K code; see
[09-dynamic-recompiler.md](09-dynamic-recompiler.md).

## Privileged instructions

Dispatch table entries for privileged instructions load the instruction's
handler from the state block and branch to `require_supervisor` (`0CA88`):

```
require_supervisor:
        mtlr    rtn_addr
        btlr    cr_supervisor           // supervisor: do the instruction
        b       take_privilege_violation
```

### The status register

Every write to the system byte of the SR goes through `write_sr`
(`0C410`, reached through `write_sr_handler`). It copies the new
interrupt mask into `sr_and_flags` and raises the special event flag if
an interrupt is now deliverable; recomputes `cr_dr_active`; and, if any
of T1, T0, S or M changed, stores `a7` in the slot of the outgoing stack
pointer and loads it from the slot of the incoming one
(`stack_pointer_slots`), updates `cr_supervisor`, and raises the special
event flag if a trace bit is now set.

On a 68000 `MOVE from SR` is not privileged, and software written for it
runs in user state on later processors only because the operating system
emulates the instruction in its privilege violation handler. The emulator
short-circuits that. If the privilege violation vector still holds the
address recorded at `+0x72C` in the state block,
`privilege_check_failed` (`0CA68`) lets the instruction proceed instead
of taking the exception. The same applies to writes to the SR from user
state, with S and M protected: `move_to_sr_user` keeps their current
values, `andi_to_sr_user` forces them on in the mask, and
`ori_eori_to_sr_user` removes them from the operand. One encoding is
excepted: `MOVE SR,D7` (`40C7`) in user state always takes the
exception.

### Exceptions that record the instruction address

`CHK`, `CHK2`, `TRAPcc`, `TRAPV` and division by zero push a format 2
frame, which contains the address of the instruction as well as the
return address. By the time the condition is detected `pc` has moved on
by an amount that depends on the addressing mode, and nothing recorded
where the instruction began. `take_format2_exception` (`0CC90`) finds
out by searching: it recovers the opcode from `disp_table` and steps
backwards from `pc`, up to seven words, until it finds a word equal to
it.
