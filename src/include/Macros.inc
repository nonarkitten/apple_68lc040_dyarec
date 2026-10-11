// Macros.inc - assembler macros needed to reproduce the original encodings

// The value used for alignment padding (a PowerPC nop: ori r0,r0,0).
#define NOP_WORD        0x60000000

// Pad with nops to the next multiple of n bytes.
#define ALIGN(n)        .balignl n, NOP_WORD

// ---------------------------------------------------------------------------
// Static branch prediction
//
// The original PowerPC architecture has a single prediction hint, the "y"
// bit (the low bit of the BO field).  Assemblers of the day wrote it as a
// "+" or "-" suffix.  Current assemblers encode those suffixes with the
// newer two-bit "at" hint instead, which would not reproduce the original
// bytes, so hinted branches are written with these macros.
//
//   bclr / bcctr with y=1   predicted taken
//   bc with y=1             prediction reversed from the default (backward
//                           taken, forward not taken): forward branches
//                           become "likely", backward ones "unlikely"
// ---------------------------------------------------------------------------

        .macro  bt_likely bi, target
        bc      13, \bi, \target
        .endm
        .macro  bt_unlikely bi, target
        bc      13, \bi, \target
        .endm
        .macro  bf_likely bi, target
        bc      5, \bi, \target
        .endm
        .macro  bf_unlikely bi, target
        bc      5, \bi, \target
        .endm
        .macro  btlr_likely bi
        bclr    13, \bi
        .endm
        .macro  bflr_likely bi
        bclr    5, \bi
        .endm
        .macro  btctr_likely bi
        bcctr   13, \bi
        .endm
        .macro  bfctr_likely bi
        bcctr   5, \bi
        .endm

// ---------------------------------------------------------------------------
// Instructions from the original PowerPC architecture that some current
// assemblers no longer accept.
// ---------------------------------------------------------------------------

// mcrxr crf: copy XER[SO,OV,CA] into CR field crf, then clear them in XER.
        .macro  mcrxr crf
        .long   0x7C000400 | ((\crf) << 23)
        .endm

// lswx rt, ra, rb: load string word indexed (byte count in XER[25:31]).
        .macro  lswx rt, ra, rb
        .long   0x7C00042A | ((\rt) << 21) | ((\ra) << 16) | ((\rb) << 11)
        .endm

// stswx rs, ra, rb: store string word indexed (byte count in XER[25:31]).
        .macro  stswx rs, ra, rb
        .long   0x7C00052A | ((\rs) << 21) | ((\ra) << 16) | ((\rb) << 11)
        .endm
