// Registers.inc - register and condition-register names
//
// The emulator's source referred to registers by role, never by number.
// The role names below are the ones listed in US patent 5,574,873
// (columns 9-12).  tools/gen.py also reads this file: the "//@" lines mark
// the sections it parses, so keep one definition per line.

//@ plain
// Plain PowerPC names, used where a register has no fixed role.
#define r0      0
#define r1      1
#define r2      2
#define r3      3
#define r4      4
#define r5      5
#define r6      6
#define r7      7
#define r8      8
#define r9      9
#define r10     10
#define r11     11
#define r12     12
#define r13     13
#define r14     14
#define r15     15
#define r16     16
#define r17     17
#define r18     18
#define r19     19
#define r20     20
#define r21     21
#define r22     22
#define r23     23
#define r24     24
#define r25     25
#define r26     26
#define r27     27
#define r28     28
#define r29     29
#define r30     30
#define r31     31

//@ gpr
// Role names while 68K code is being emulated.
#define zero                0       // always contains 0
#define a7                  1       // 68K A7: the active stack pointer (shared with native code)
#define addr                3       // scratch: effective address
#define data                4       // scratch: operand / result
#define rtn_addr            5       // scratch: return address for EA routines
#define immed_data          6       // scratch: immediate operand / extension word
#define base_disp           7       // scratch: base displacement / scaled index
#define d0                  8       // 68K D0
#define d1                  9       // 68K D1
#define d2                  10      // 68K D2
#define d3                  11      // 68K D3
#define d4                  12      // 68K D4
#define d5                  13      // 68K D5
#define d6                  14      // 68K D6
#define d7                  15      // 68K D7
#define a0                  16      // 68K A0
#define a1                  17      // 68K A1
#define a2                  18      // 68K A2
#define a3                  19      // 68K A3
#define a4                  20      // 68K A4
#define a5                  21      // 68K A5
#define a6                  22      // 68K A6
#define pc                  24      // 68K program counter (points past the prefetched word)
#define sr_and_flags        25      // upper byte of SR plus emulator flag bits
#define ccr_x               26      // 68K X flag, kept in the XER[CA] bit position
#define prefetch_data       27      // sign-extended 16-bit word at 0(pc)
#define vbr                 28      // 68K vector base register
#define disp_table          29      // address of the current dispatch table entry
#define code_ptr            30      // address of the code base "cb" (64 KB aligned)
#define EmulatorStatePtr    31      // base of the emulator's memory-resident state

//@ crf
// Condition register fields.
#define cr0     0
#define cr1     1
#define cr2     2
#define cr3     3
#define cr4     4
#define cr5     5
#define cr6     6
#define cr7     7

//@ crcond
// Bit positions within a condition register field, for 4*crN+cond.
#define lt      0
#define gt      1
#define eq      2
#define so      3

//@ crbit
// Condition register bits with a fixed meaning.

//@ end
