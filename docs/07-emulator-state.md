# 7. The Emulator State Block

`EmulatorStatePtr` (r31) addresses a block of memory that holds everything
the emulator cannot keep in registers. It is allocated by the caller of
`EmEntry` and passed in r3.

The block is at least `0xBB0` bytes long. `EmEntry` also uses the top of
the 4 KB page that begins at the block as a small native stack (it sets
r1 to block + `0x1000` and saves 84 bytes below that), so the block is in
practice one page.

The kernel's name for the block is the Emulator Data Page (EDP).

Fields whose purpose has been established have names, defined in
`src/include/EmulatorState.inc`. The names `saved_usp`, `saved_isp`,
`saved_msp`, `saved_vbr`, `saved_sfc`, `saved_dfc`, `saved_cacr`,
`saved_caar` and `trace_pc` are the ones used in US patent 5,574,873; the
others were chosen for this documentation. Offsets not listed here appear
in the source as plain numbers.

An independent description of the first `0xC0` bytes exists in the
`powermac-rom` project (`Internal/EmulatorPublic.a`), written from the
kernel's point of view. It agrees with the layout below, and records
short names for the fault save area — `trc_pc`, `imm_d`, `b_dsp`,
`sr_flg`, `ssw` — that match the patent's register names.

## 68K register image (`+0x000`)

Used only when the emulator is not running: written by `exit_emulator`,
and by the code that switches to native code.

| Offset | Name | Contents |
|---|---|---|
| `0x000` | `saved_d0` | D0–D7, 4 bytes each |
| `0x020` | `saved_a0` | A0–A6, 4 bytes each |
| `0x03C` | `saved_a7` | A7 |
| `0x042` | `saved_sr` | Full 16-bit SR, CCR included |
| `0x044` | `saved_pc` | Address of the next instruction |

## 68K supervisor registers (`+0x048`)

Always kept here. `MOVEC` reaches them through the byte table
`movec_tables`, which maps a control register number to one of these
offsets (or to 0 for registers that are not implemented, such as the
68040's `TC`, `ITTn`, `DTTn`, `MMUSR`, `URP` and `SRP`).

| Offset | Name | Contents |
|---|---|---|
| `0x048` | `saved_usp` | User stack pointer, when A7 is not it |
| `0x04C` | `saved_isp` | Interrupt stack pointer, when A7 is not it |
| `0x050` | `saved_msp` | Master stack pointer, when A7 is not it |
| `0x054` | `saved_vbr` | Vector base register (the working copy is in the `vbr` register) |
| `0x058` | `saved_sfc` | Source function code |
| `0x05C` | `saved_dfc` | Destination function code |
| `0x060` | `saved_cacr` | Cache control register (stored; has no effect) |
| `0x064` | `saved_caar` | Cache address register (68020/68030; stored only) |

The slot belonging to the stack pointer that is currently active is stale;
the live value is in `a7`. `stack_pointer_slots` gives the slot for each
combination of the S and M bits.

## Emulator bookkeeping (`+0x06C`)

| Offset | Name | Contents |
|---|---|---|
| `0x06C` | `trace_pc` | Address of the instruction being traced; also used to remember the 68K pc across a switch to native code |
| `0x071` | `interrupt_level` | Byte: level of the interrupt being requested. It is the low byte of the word at `0x070` in which the kernel publishes the interrupt level |
| `0x074` | `saved_disp_table` | Address of the dispatch table, as passed to `EmEntry` |
| `0x078` | `saved_code_ptr` | Address of `cb` |
| `0x07C` | `native_sp` | Stack pointer to restore when leaving through `exit_emulator` |
| `0x080` | `fault_saved_flags` | Context flags at the time of the last memory fault |
| `0x084`–`0x094` | | The kernel's description of the fault, copied from the context block |
| `0x098`–`0x0A4` | `fault_data`, `fault_immed_data`, `fault_base_disp`, `fault_sr_and_flags` | The scratch registers and `sr_and_flags` as they were when the fault happened, for the bus error frame |
| `0x0AC` | `fault_lr` | LR likewise |
| `0x0B0` | `fault_pc` | PowerPC address of the faulting instruction |
| `0x0B4` | `fault_cr` | Condition register likewise |
| `0x0C0` | `interrupt_counts` | Eight 32-bit counters: interrupts taken at each level |
| `0x0E0`–`0x0EF` | | Base addresses and an allocation bit mask for a pool of 0x220-byte areas used when native contexts nest *(inferred)* |

## The emulator's context block (`+0x100`)

The kernel keeps a *context block* for every context it runs. The
emulator's own (the "ECB") is inside the state block, at `+0x100`; the
offset is given to the kernel by the ROM's configuration record. Both
the kernel and the emulator read and write it. The fields the emulator
uses, with the kernel's meaning for each (see
[13-rom-context.md](13-rom-context.md)):

| Offset | Name | Contents |
|---|---|---|
| `0x140` | `ecb_saved_flags` | Context flags to be restored by `ReturnFromException`. Set to 7 by `EmEntry`; written by the kernel when it enters the handler; partly cleared by `native_exception_handler` |
| `0x144` | `ecb_saved_enables` | Exception enables to be restored. Set to `0xFFFFFFFF` by `EmEntry` |
| `0x14C` | `ecb_handler` | Address the kernel transfers to on an exception in this context: `native_exception_handler` |
| `0x154` | `ecb_handler_arg` | Passed to the handler in r4: the address of `take_bus_error` |
| `0x15C` | `ecb_handler_return` | The handler's return address, set by the kernel: `EmKernelTrapTable` |
| `0x164`–`0x17C` | | The kernel's description of a memory fault (address, kind and size of access), read by `native_exception_handler` |
| `0x184` | `ecb_pc` | Where `ReturnFromException` resumes the context. The kernel stores the interrupted pc here; `EmEntry` and `native_exception_handler` overwrite it to redirect execution |
| `0x18C` | `ecb_lr` | LR at the time of the exception, restored on return |
| `0x194` | `ecb_r3` | r3 likewise. Initially the address of the state block, which is how `EmEntry` receives it |
| `0x19C` | `ecb_r4` | r4 likewise. Initially the address of the dispatch table |

The context block's general register array (r0 at `0x204`, 8 bytes per
register) and floating-point registers (`0x300`) follow; the emulator
does not touch them.

Further up, `0x1C8`–`0x1D8` hold interrupt bookkeeping, including the
private request level at `0x1D0`.

## Miscellaneous (`+0x700`)

| Offset | Contents |
|---|---|
| `0x700`, `0x70C`, `0x714` | Addresses used when switching to native code; initially `native_call_unavailable` |
| `0x708` | Address of the 68K register area shared with native code (the block + `0x740`) |
| `0x710` | Address of the native context block |
| `0x718` | Initialised to `0x21F8` |
| `0x720` | Expected line-A vector (see [08-native-interface.md](08-native-interface.md)) |
| `0x72C` | Expected privilege violation vector |
| `0x738` | Instruction counter (test mode) |
| `0x73C` | Address of the per-opcode counter table (test mode) |
| `0x7A0` | Configuration flags; initialised to `0x80000039` |
| `0x7B0`, `0x7B4` | `0xE00` and `0x400`: addresses of the Mac OS Toolbox and OS trap dispatch tables in 68K low memory (`ToolTable` and `OSTable`) |
| `0x7C0`, `0x7C4` | Base address and size of the memory given to the dynamic recompiler |
| `0x7C8`, `0x7CC` | Test-mode hook routine and its argument |

## Handler table (`+0x800`)

151 routine addresses, copied at initialisation from `handler_defaults`
(offsets from `cb`, converted to addresses by OR-ing in `code_ptr`). The
dispatch table and the interpreter call through these slots instead of
branching to fixed routines, so behaviour can be changed by storing a
different address.

| Offset | Name | Default | Called for |
|---|---|---|---|
| `0x800` | `illegal_handler` | `take_exception` | Unimplemented opcodes |
| `0x804` | `aline_handler` | `take_exception` | Line 1010 opcodes |
| `0x808` | `fline_handler` | `take_exception` | Line 1111 opcodes |
| `0x80C` | `privilege_handler` | `take_exception` | Privilege violation |
| `0x810` | `format2_handler` | `format2_exception` | Exceptions with a format 2 frame |
| `0x814` | `special_event_hook` | `special_event_continue` | First step of `process_special_event` |
| `0x818` | `write_sr_handler` | `write_sr` | Every write to the system byte of the SR |
| `0x81C`–`0x824` | | | `MOVE from SR` and related operations |
| `0x828` | `reset_handler` | | The `RESET` instruction |
| `0x82C` | `rte_handler` | `rte` | `RTE` |
| `0x830`–`0x86C` | | `rte_format_0`, `rte_format_1`, `rte_format_2`, …; `rte_bad_format` for unsupported formats | `RTE`, by frame format 0–15 |
| `0x870`–`0x898` | `movec_from_handler` (`0x878`), `movec_to_handler` (`0x87C`) | | `MOVE USP`, `MOVEC`, `TAS` on memory (`0x880`), `CAS`/`CAS2` (`0x884`–`0x894`); `0x898` is `install_exception_stubs` |
| `0x89C`–`0x938` | | | Forty exception stubs, copied from `exception_stub_defaults` by `install_exception_stubs` |
| `0x93C`–`0x9E0` | | | Cache control instructions and the private opcodes. `0x964`, `0x968`, `0x99C`, `0x9A4` and `0x9DC` default to kernel traps 1, 3, 5, 7 and 8; `0x9E0` is `mixed_mode_dispatch` |
| `0xA00` | `dr_dispatch_vector` | a stub | Loaded into `dr_entry` |
| `0xA04` | `dr_flush_vector` | a stub | Discard all translations |
| `0xA08` | `dr_invalidate_vector` | a stub | Invalidate translations of an address range |
| `0xA0C` | `dr_fault_fixup_vector` | a stub | Called while building a bus error frame |
| `0xA10` | | a stub | Likewise (`dr_fault_redirect`) |
| `0xA14` | `dr_setup_vector` | `dr_setup` | Called when the recompiler is switched on |
| `0xA18` | | `dr_null_hook` | |
| `0xA1C` | `dr_line_decoders` | 0 | Sixteen pass-1 decoders, filled in by `dr_setup` |

## Dynamic recompiler state (`+0xAE0`)

| Offset | Name | Contents |
|---|---|---|
| `0xAE0` | | Per-level values for the private interrupt request |
| `0xB00` | `dr_code_base` | Address of the recompiler's code (`dr_cb`) |
| `0xB04` | `dr_hash_table` | Lookup table: 68K address → translated code |
| `0xB08` | `dr_cache_start` | Start of the translation cache |
| `0xB0C` | `dr_cache_limit` | Translations are not kept beyond this address |
| `0xB14` | `dr_records` | Array of instruction records used during translation |
| `0xB18`, `0xB1C` | | Size and address of a table of routines in RAM |
| `0xB20` | `dr_cache_ptr` | Next free address in the translation cache |
| `0xB24`–`0xB2A` | | Per-translation scratch |
| `0xB2C` | `dr_emit_ptr` | Start of the block being translated |
| `0xB30` | `dr_hash_slot` | Lookup table slot the new block will use |
| `0xB34`, `0xB36` | | Offset into a block at which to resume after a fault; abort marker |
| `0xB38`–`0xB44` | | `addr`, `data`, `rtn_addr` and CR saved across a translation |
| `0xB68` | | Scratch for pass 1 |
| `0xB6C` | `dr_flush_pending` | Non-zero while the cache is being discarded |
| `0xB70`, `0xB74` | | Progress of the flush (chunks of table and bitmap still to clear) |
| `0xB78` | `dr_invalidate_requests` | Address of a table of 32 pending range invalidations, 16 bytes each |
| `0xB7C`, `0xB80` | `dr_invalidate_pending` (`0xB80`) | Bit masks of allocated and pending entries in that table |
| `0xB84`–`0xB8C` | | Progress of the request being serviced |
| `0xB90` | `dr_page_bitmap` | Address of the bitmap of translated memory |
| `0xB94` | | Size of the bitmap, in 32-byte units |
| `0xB98` | `dr_memory_limit` | Highest address the bitmap covers |
