// EmulatorState.inc - layout of the memory block addressed by EmulatorStatePtr
//
// The block holds everything that does not fit in PowerPC registers: the
// rarely used 68K registers, the context the kernel saves and restores, a
// table of replaceable handler addresses, and the dynamic recompiler's
// bookkeeping.  Only fields whose purpose has been established from the code
// are named; other offsets appear as plain numbers in the source.
//
// Names beginning "saved_" and "trace_pc" are the ones used in US5574873.
// tools/gen.py reads this file: every "#define name offset" between the
// "//@ state" and "//@ end" markers names a displacement from
// EmulatorStatePtr.

//@ state

// 68K register image, valid only while the emulator is not running
#define saved_d0                0x000   // D0..D7 follow at 4-byte intervals
#define saved_a0                0x020   // A0..A6 follow at 4-byte intervals
#define saved_a7                0x03C
#define saved_sr                0x042   // word: full SR including CCR
#define saved_pc                0x044

// 68K supervisor registers (always kept here)
#define saved_usp               0x048   // A7 while USP is not the active stack
#define saved_isp               0x04C   // A7 while ISP is not the active stack
#define saved_msp               0x050   // A7 while MSP is not the active stack
#define saved_vbr               0x054   // copy of the vbr register
#define saved_sfc               0x058
#define saved_dfc               0x05C
#define saved_cacr              0x060
#define saved_caar              0x064

#define trace_pc                0x06C   // start of the instruction being traced
#define interrupt_level         0x071   // byte: level of the interrupt being requested (low byte of the kernel's "IPL value" word at 0x070)

// Values needed to get back to native code
#define saved_disp_table        0x074   // address of the dispatch table (OpcodeTblTop)
#define saved_code_ptr          0x078   // address of the code base (cb)
#define native_sp               0x07C   // stack pointer of the native caller of the emulator

#define interrupt_counts        0x0C0   // one counter per interrupt level, 4 bytes each

// Scratch state saved when a memory fault interrupts an instruction
#define fault_saved_flags       0x080   // the context's flags at the time of the fault
#define fault_data              0x098
#define fault_immed_data        0x09C
#define fault_base_disp         0x0A0
#define fault_sr_and_flags      0x0A4
#define fault_lr                0x0AC
#define fault_pc                0x0B0   // PowerPC address of the faulting instruction
#define fault_cr                0x0B4

// The emulator's context block (ECB), which the kernel shares.  It starts at
// +0x100; see docs/13-rom-context.md.  When the kernel passes an exception
// to the context's handler it saves what it is about to overwrite - the
// flags, pc, LR, r3 and r4 - in the fields below, and ReturnFromException
// restores them.
#define ecb_saved_flags         0x140   // context flags to restore
#define ecb_saved_enables       0x144   // exception enables to restore
#define ecb_handler             0x14C   // where the kernel sends the context's exceptions
#define ecb_handler_arg         0x154   // passed to the handler in r4
#define ecb_handler_return      0x15C   // the handler's return address (EmKernelTrapTable)
#define ecb_pc                  0x184   // where the context resumes (initially EmEntry)
#define ecb_lr                  0x18C   // LR to restore
#define ecb_r3                  0x194   // r3 to restore (initially the address of this block)
#define ecb_r4                  0x19C   // r4 to restore (initially the address of the dispatch table)

// Replaceable handler addresses (initialised from handler_defaults)
#define illegal_handler         0x800   // unimplemented opcodes
#define aline_handler           0x804   // line 1010 opcodes
#define fline_handler           0x808   // line 1111 opcodes
#define privilege_handler       0x80C   // privilege violation
#define format2_handler         0x810   // exceptions with a format 2 frame (CHK, TRAPcc, zero divide)
#define special_event_hook      0x814   // called first by process_special_event
#define write_sr_handler        0x818   // every write to the system byte of the SR
#define reset_handler           0x828   // the RESET instruction
#define rte_handler             0x82C   // RTE; +0x830.. are sixteen handlers, one per frame format
#define movec_from_handler      0x878   // MOVEC Rc,Rn
#define movec_to_handler        0x87C   // MOVEC Rn,Rc
#define mixed_mode_handler      0x9E0   // private opcode FE01

// Dynamic recompiler entry points (stubs until the recompiler is set up)
#define dr_dispatch_vector      0xA00   // copied into dr_entry
#define dr_flush_vector         0xA04
#define dr_invalidate_vector    0xA08
#define dr_fault_fixup_vector   0xA0C
#define dr_setup_vector         0xA14
#define dr_line_decoders        0xA1C   // 16 pass-1 decoders, indexed by opcode bits 15:12

// Dynamic recompiler state
#define dr_code_base            0xB00   // address of the recompiler's code block (cb + 0x10000)
#define dr_hash_table           0xB04   // 68K pc -> translated code lookup table
#define dr_cache_start          0xB08   // first byte of the translation cache
#define dr_cache_limit          0xB0C   // translation stops being stored beyond this
#define dr_records              0xB14   // scratch array of 12-byte instruction records
#define dr_cache_ptr            0xB20   // next free byte in the translation cache
#define dr_emit_ptr             0xB2C   // where the block being translated will start
#define dr_hash_slot            0xB30   // lookup table slot the new block will occupy
#define dr_flush_pending        0xB6C   // nonzero while the whole cache is being discarded
#define dr_invalidate_requests  0xB78   // table of address ranges waiting to be invalidated
#define dr_invalidate_pending   0xB80   // bit mask of live entries in that table
#define dr_page_bitmap          0xB90   // one bit per 512 bytes of 68K memory holding translated code
#define dr_memory_limit         0xB98   // highest address the bitmap covers

//@ end
