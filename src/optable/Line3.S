// Line3.S - offsets 38000-3FFFF
//
// Names and comments are edited here.  After any change "make verify" must
// still report that the build is identical to Emulator.x.

// ---- $3000-$303F --------------------------------------------------------
        slwi.   data, d0, 16                            // 3000  MOVE.W    D0,D0
        b       update_vc_zero
        rlwimi  d0, d1, 0, 16, 31                       // 3001  MOVE.W    D1,D0
        b       move_w_reg_d0
        rlwimi  d0, d2, 0, 16, 31                       // 3002  MOVE.W    D2,D0
        b       move_w_reg_d0
        rlwimi  d0, d3, 0, 16, 31                       // 3003  MOVE.W    D3,D0
        b       move_w_reg_d0
        rlwimi  d0, d4, 0, 16, 31                       // 3004  MOVE.W    D4,D0
        b       move_w_reg_d0
        rlwimi  d0, d5, 0, 16, 31                       // 3005  MOVE.W    D5,D0
        b       move_w_reg_d0
        rlwimi  d0, d6, 0, 16, 31                       // 3006  MOVE.W    D6,D0
        b       move_w_reg_d0
        rlwimi  d0, d7, 0, 16, 31                       // 3007  MOVE.W    D7,D0
        b       move_w_reg_d0
        rlwimi  d0, a0, 0, 16, 31                       // 3008  MOVE.W    A0,D0
        b       move_w_reg_d0
        rlwimi  d0, a1, 0, 16, 31                       // 3009  MOVE.W    A1,D0
        b       move_w_reg_d0
        rlwimi  d0, a2, 0, 16, 31                       // 300A  MOVE.W    A2,D0
        b       move_w_reg_d0
        rlwimi  d0, a3, 0, 16, 31                       // 300B  MOVE.W    A3,D0
        b       move_w_reg_d0
        rlwimi  d0, a4, 0, 16, 31                       // 300C  MOVE.W    A4,D0
        b       move_w_reg_d0
        rlwimi  d0, a5, 0, 16, 31                       // 300D  MOVE.W    A5,D0
        b       move_w_reg_d0
        rlwimi  d0, a6, 0, 16, 31                       // 300E  MOVE.W    A6,D0
        b       move_w_reg_d0
        rlwimi  d0, a7, 0, 16, 31                       // 300F  MOVE.W    A7,D0
        b       move_w_reg_d0
        lha     data, 0(a0)                             // 3010  MOVE.W    (A0),D0
        b       move_w_mem_d0_2
        lha     data, 0(a1)                             // 3011  MOVE.W    (A1),D0
        b       move_w_mem_d0_2
        lha     data, 0(a2)                             // 3012  MOVE.W    (A2),D0
        b       move_w_mem_d0_2
        lha     data, 0(a3)                             // 3013  MOVE.W    (A3),D0
        b       move_w_mem_d0_2
        lha     data, 0(a4)                             // 3014  MOVE.W    (A4),D0
        b       move_w_mem_d0_2
        lha     data, 0(a5)                             // 3015  MOVE.W    (A5),D0
        b       move_w_mem_d0_2
        lha     data, 0(a6)                             // 3016  MOVE.W    (A6),D0
        b       move_w_mem_d0_2
        lha     data, 0(a7)                             // 3017  MOVE.W    (A7),D0
        b       move_w_mem_d0_2
        ori     rtn_addr, code_ptr, move_w_mem_d0_2 - cb  // 3018  MOVE.W    (A0)+,D0
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_d0_2 - cb  // 3019  MOVE.W    (A1)+,D0
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_d0_2 - cb  // 301A  MOVE.W    (A2)+,D0
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_d0_2 - cb  // 301B  MOVE.W    (A3)+,D0
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_d0_2 - cb  // 301C  MOVE.W    (A4)+,D0
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_d0_2 - cb  // 301D  MOVE.W    (A5)+,D0
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_d0_2 - cb  // 301E  MOVE.W    (A6)+,D0
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_d0_2 - cb  // 301F  MOVE.W    (A7)+,D0
        b       fea_w_37
        lhau    data, -2(a0)                            // 3020  MOVE.W    -(A0),D0
        b       move_w_mem_d0_2
        lhau    data, -2(a1)                            // 3021  MOVE.W    -(A1),D0
        b       move_w_mem_d0_2
        lhau    data, -2(a2)                            // 3022  MOVE.W    -(A2),D0
        b       move_w_mem_d0_2
        lhau    data, -2(a3)                            // 3023  MOVE.W    -(A3),D0
        b       move_w_mem_d0_2
        lhau    data, -2(a4)                            // 3024  MOVE.W    -(A4),D0
        b       move_w_mem_d0_2
        lhau    data, -2(a5)                            // 3025  MOVE.W    -(A5),D0
        b       move_w_mem_d0_2
        lhau    data, -2(a6)                            // 3026  MOVE.W    -(A6),D0
        b       move_w_mem_d0_2
        lhau    data, -2(a7)                            // 3027  MOVE.W    -(A7),D0
        b       move_w_mem_d0_2
        lhax    data, a0, prefetch_data                 // 3028  MOVE.W    (d16,A0),D0
        b       move_w_mem_d0
        lhax    data, a1, prefetch_data                 // 3029  MOVE.W    (d16,A1),D0
        b       move_w_mem_d0
        lhax    data, a2, prefetch_data                 // 302A  MOVE.W    (d16,A2),D0
        b       move_w_mem_d0
        lhax    data, a3, prefetch_data                 // 302B  MOVE.W    (d16,A3),D0
        b       move_w_mem_d0
        lhax    data, a4, prefetch_data                 // 302C  MOVE.W    (d16,A4),D0
        b       move_w_mem_d0
        lhax    data, a5, prefetch_data                 // 302D  MOVE.W    (d16,A5),D0
        b       move_w_mem_d0
        lhax    data, a6, prefetch_data                 // 302E  MOVE.W    (d16,A6),D0
        b       move_w_mem_d0
        lhax    data, a7, prefetch_data                 // 302F  MOVE.W    (d16,A7),D0
        b       move_w_mem_d0
        ori     rtn_addr, code_ptr, move_w_mem_d0_2 - cb  // 3030  MOVE.W    (d8,A0,Xn),D0
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_d0_2 - cb  // 3031  MOVE.W    (d8,A1,Xn),D0
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_d0_2 - cb  // 3032  MOVE.W    (d8,A2,Xn),D0
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_d0_2 - cb  // 3033  MOVE.W    (d8,A3,Xn),D0
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_d0_2 - cb  // 3034  MOVE.W    (d8,A4,Xn),D0
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_d0_2 - cb  // 3035  MOVE.W    (d8,A5,Xn),D0
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_d0_2 - cb  // 3036  MOVE.W    (d8,A6,Xn),D0
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_d0_2 - cb  // 3037  MOVE.W    (d8,A7,Xn),D0
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3038  MOVE.W    (xxx).W,D0
        b       move_w_mem_d0
        ori     rtn_addr, code_ptr, move_w_mem_d0_2 - cb  // 3039  MOVE.W    (xxx).L,D0
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 303A  MOVE.W    (d16,PC),D0
        b       move_w_mem_d0
        ori     rtn_addr, code_ptr, move_w_mem_d0_2 - cb  // 303B  MOVE.W    (d8,PC,Xn),D0
        b       fea_w_73
        rlwimi  d0, prefetch_data, 0, 16, 31            // 303C  MOVE.W    #<data>,D0
        b       move_w_imm_any
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 303D  MOVE.W    <ea 7.5>,D0   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 303E  MOVE.W    <ea 7.6>,D0   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 303F  MOVE.W    <ea 7.7>,D0   (illegal)
        b       take_illegal_instruction

// ---- $3040-$307F --------------------------------------------------------
        extsh   a0, d0                                  // 3040  MOVEA.W   D0,A0
        b       fetch
        extsh   a0, d1                                  // 3041  MOVEA.W   D1,A0
        b       fetch
        extsh   a0, d2                                  // 3042  MOVEA.W   D2,A0
        b       fetch
        extsh   a0, d3                                  // 3043  MOVEA.W   D3,A0
        b       fetch
        extsh   a0, d4                                  // 3044  MOVEA.W   D4,A0
        b       fetch
        extsh   a0, d5                                  // 3045  MOVEA.W   D5,A0
        b       fetch
        extsh   a0, d6                                  // 3046  MOVEA.W   D6,A0
        b       fetch
        extsh   a0, d7                                  // 3047  MOVEA.W   D7,A0
        b       fetch
        extsh   a0, a0                                  // 3048  MOVEA.W   A0,A0
        b       fetch
        extsh   a0, a1                                  // 3049  MOVEA.W   A1,A0
        b       fetch
        extsh   a0, a2                                  // 304A  MOVEA.W   A2,A0
        b       fetch
        extsh   a0, a3                                  // 304B  MOVEA.W   A3,A0
        b       fetch
        extsh   a0, a4                                  // 304C  MOVEA.W   A4,A0
        b       fetch
        extsh   a0, a5                                  // 304D  MOVEA.W   A5,A0
        b       fetch
        extsh   a0, a6                                  // 304E  MOVEA.W   A6,A0
        b       fetch
        extsh   a0, a7                                  // 304F  MOVEA.W   A7,A0
        b       fetch
        lha     a0, 0(a0)                               // 3050  MOVEA.W   (A0),A0
        b       fetch
        lha     a0, 0(a1)                               // 3051  MOVEA.W   (A1),A0
        b       fetch
        lha     a0, 0(a2)                               // 3052  MOVEA.W   (A2),A0
        b       fetch
        lha     a0, 0(a3)                               // 3053  MOVEA.W   (A3),A0
        b       fetch
        lha     a0, 0(a4)                               // 3054  MOVEA.W   (A4),A0
        b       fetch
        lha     a0, 0(a5)                               // 3055  MOVEA.W   (A5),A0
        b       fetch
        lha     a0, 0(a6)                               // 3056  MOVEA.W   (A6),A0
        b       fetch
        lha     a0, 0(a7)                               // 3057  MOVEA.W   (A7),A0
        b       fetch
        lha     a0, 0(a0)                               // 3058  MOVEA.W   (A0)+,A0
        b       fetch
        ori     rtn_addr, code_ptr, movea_mem_a0 - cb   // 3059  MOVEA.W   (A1)+,A0
        b       fea_w_31
        ori     rtn_addr, code_ptr, movea_mem_a0 - cb   // 305A  MOVEA.W   (A2)+,A0
        b       fea_w_32
        ori     rtn_addr, code_ptr, movea_mem_a0 - cb   // 305B  MOVEA.W   (A3)+,A0
        b       fea_w_33
        ori     rtn_addr, code_ptr, movea_mem_a0 - cb   // 305C  MOVEA.W   (A4)+,A0
        b       fea_w_34
        ori     rtn_addr, code_ptr, movea_mem_a0 - cb   // 305D  MOVEA.W   (A5)+,A0
        b       fea_w_35
        ori     rtn_addr, code_ptr, movea_mem_a0 - cb   // 305E  MOVEA.W   (A6)+,A0
        b       fea_w_36
        ori     rtn_addr, code_ptr, movea_mem_a0 - cb   // 305F  MOVEA.W   (A7)+,A0
        b       fea_w_37
        lha     a0, -2(a0)                              // 3060  MOVEA.W   -(A0),A0
        b       fetch
        lhau    a0, -2(a1)                              // 3061  MOVEA.W   -(A1),A0
        b       fetch
        lhau    a0, -2(a2)                              // 3062  MOVEA.W   -(A2),A0
        b       fetch
        lhau    a0, -2(a3)                              // 3063  MOVEA.W   -(A3),A0
        b       fetch
        lhau    a0, -2(a4)                              // 3064  MOVEA.W   -(A4),A0
        b       fetch
        lhau    a0, -2(a5)                              // 3065  MOVEA.W   -(A5),A0
        b       fetch
        lhau    a0, -2(a6)                              // 3066  MOVEA.W   -(A6),A0
        b       fetch
        lhau    a0, -2(a7)                              // 3067  MOVEA.W   -(A7),A0
        b       fetch
        lhax    a0, a0, prefetch_data                   // 3068  MOVEA.W   (d16,A0),A0
        b       fetch_skip_word
        lhax    a0, a1, prefetch_data                   // 3069  MOVEA.W   (d16,A1),A0
        b       fetch_skip_word
        lhax    a0, a2, prefetch_data                   // 306A  MOVEA.W   (d16,A2),A0
        b       fetch_skip_word
        lhax    a0, a3, prefetch_data                   // 306B  MOVEA.W   (d16,A3),A0
        b       fetch_skip_word
        lhax    a0, a4, prefetch_data                   // 306C  MOVEA.W   (d16,A4),A0
        b       fetch_skip_word
        lhax    a0, a5, prefetch_data                   // 306D  MOVEA.W   (d16,A5),A0
        b       fetch_skip_word
        lhax    a0, a6, prefetch_data                   // 306E  MOVEA.W   (d16,A6),A0
        b       fetch_skip_word
        lhax    a0, a7, prefetch_data                   // 306F  MOVEA.W   (d16,A7),A0
        b       fetch_skip_word
        ori     rtn_addr, code_ptr, movea_mem_a0 - cb   // 3070  MOVEA.W   (d8,A0,Xn),A0
        b       fea_w_60
        ori     rtn_addr, code_ptr, movea_mem_a0 - cb   // 3071  MOVEA.W   (d8,A1,Xn),A0
        b       fea_w_61
        ori     rtn_addr, code_ptr, movea_mem_a0 - cb   // 3072  MOVEA.W   (d8,A2,Xn),A0
        b       fea_w_62
        ori     rtn_addr, code_ptr, movea_mem_a0 - cb   // 3073  MOVEA.W   (d8,A3,Xn),A0
        b       fea_w_63
        ori     rtn_addr, code_ptr, movea_mem_a0 - cb   // 3074  MOVEA.W   (d8,A4,Xn),A0
        b       fea_w_64
        ori     rtn_addr, code_ptr, movea_mem_a0 - cb   // 3075  MOVEA.W   (d8,A5,Xn),A0
        b       fea_w_65
        ori     rtn_addr, code_ptr, movea_mem_a0 - cb   // 3076  MOVEA.W   (d8,A6,Xn),A0
        b       fea_w_66
        ori     rtn_addr, code_ptr, movea_mem_a0 - cb   // 3077  MOVEA.W   (d8,A7,Xn),A0
        b       fea_w_67
        lha     a0, 0(prefetch_data)                    // 3078  MOVEA.W   (xxx).W,A0
        b       fetch_skip_word
        ori     rtn_addr, code_ptr, movea_mem_a0 - cb   // 3079  MOVEA.W   (xxx).L,A0
        b       fea_w_71
        lhax    a0, pc, prefetch_data                   // 307A  MOVEA.W   (d16,PC),A0
        b       fetch_skip_word
        ori     rtn_addr, code_ptr, movea_mem_a0 - cb   // 307B  MOVEA.W   (d8,PC,Xn),A0
        b       fea_w_73
        mr      a0, prefetch_data                       // 307C  MOVEA.W   #<data>,A0
        b       fetch_skip_word
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 307D  MOVEA.W   <ea 7.5>,A0   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 307E  MOVEA.W   <ea 7.6>,A0   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 307F  MOVEA.W   <ea 7.7>,A0   (illegal)
        b       take_illegal_instruction

// ---- $3080-$30BF --------------------------------------------------------
        extsh   data, d0                                // 3080  MOVE.W    D0,(A0)
        b       move_w_mem_mem_2
        extsh   data, d1                                // 3081  MOVE.W    D1,(A0)
        b       move_w_mem_mem_2
        extsh   data, d2                                // 3082  MOVE.W    D2,(A0)
        b       move_w_mem_mem_2
        extsh   data, d3                                // 3083  MOVE.W    D3,(A0)
        b       move_w_mem_mem_2
        extsh   data, d4                                // 3084  MOVE.W    D4,(A0)
        b       move_w_mem_mem_2
        extsh   data, d5                                // 3085  MOVE.W    D5,(A0)
        b       move_w_mem_mem_2
        extsh   data, d6                                // 3086  MOVE.W    D6,(A0)
        b       move_w_mem_mem_2
        extsh   data, d7                                // 3087  MOVE.W    D7,(A0)
        b       move_w_mem_mem_2
        extsh   data, a0                                // 3088  MOVE.W    A0,(A0)
        b       move_w_mem_mem_2
        extsh   data, a1                                // 3089  MOVE.W    A1,(A0)
        b       move_w_mem_mem_2
        extsh   data, a2                                // 308A  MOVE.W    A2,(A0)
        b       move_w_mem_mem_2
        extsh   data, a3                                // 308B  MOVE.W    A3,(A0)
        b       move_w_mem_mem_2
        extsh   data, a4                                // 308C  MOVE.W    A4,(A0)
        b       move_w_mem_mem_2
        extsh   data, a5                                // 308D  MOVE.W    A5,(A0)
        b       move_w_mem_mem_2
        extsh   data, a6                                // 308E  MOVE.W    A6,(A0)
        b       move_w_mem_mem_2
        extsh   data, a7                                // 308F  MOVE.W    A7,(A0)
        b       move_w_mem_mem_2
        lha     data, 0(a0)                             // 3090  MOVE.W    (A0),(A0)
        b       test_data
        lha     data, 0(a1)                             // 3091  MOVE.W    (A1),(A0)
        b       move_w_mem_mem_2
        lha     data, 0(a2)                             // 3092  MOVE.W    (A2),(A0)
        b       move_w_mem_mem_2
        lha     data, 0(a3)                             // 3093  MOVE.W    (A3),(A0)
        b       move_w_mem_mem_2
        lha     data, 0(a4)                             // 3094  MOVE.W    (A4),(A0)
        b       move_w_mem_mem_2
        lha     data, 0(a5)                             // 3095  MOVE.W    (A5),(A0)
        b       move_w_mem_mem_2
        lha     data, 0(a6)                             // 3096  MOVE.W    (A6),(A0)
        b       move_w_mem_mem_2
        lha     data, 0(a7)                             // 3097  MOVE.W    (A7),(A0)
        b       move_w_mem_mem_2
        ori     rtn_addr, code_ptr, move_w_mem_mem_2 - cb  // 3098  MOVE.W    (A0)+,(A0)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_2 - cb  // 3099  MOVE.W    (A1)+,(A0)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_2 - cb  // 309A  MOVE.W    (A2)+,(A0)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_2 - cb  // 309B  MOVE.W    (A3)+,(A0)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_2 - cb  // 309C  MOVE.W    (A4)+,(A0)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_2 - cb  // 309D  MOVE.W    (A5)+,(A0)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_2 - cb  // 309E  MOVE.W    (A6)+,(A0)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_2 - cb  // 309F  MOVE.W    (A7)+,(A0)
        b       fea_w_37
        lhau    data, -2(a0)                            // 30A0  MOVE.W    -(A0),(A0)
        b       test_data
        lhau    data, -2(a1)                            // 30A1  MOVE.W    -(A1),(A0)
        b       move_w_mem_mem_2
        lhau    data, -2(a2)                            // 30A2  MOVE.W    -(A2),(A0)
        b       move_w_mem_mem_2
        lhau    data, -2(a3)                            // 30A3  MOVE.W    -(A3),(A0)
        b       move_w_mem_mem_2
        lhau    data, -2(a4)                            // 30A4  MOVE.W    -(A4),(A0)
        b       move_w_mem_mem_2
        lhau    data, -2(a5)                            // 30A5  MOVE.W    -(A5),(A0)
        b       move_w_mem_mem_2
        lhau    data, -2(a6)                            // 30A6  MOVE.W    -(A6),(A0)
        b       move_w_mem_mem_2
        lhau    data, -2(a7)                            // 30A7  MOVE.W    -(A7),(A0)
        b       move_w_mem_mem_2
        lhax    data, a0, prefetch_data                 // 30A8  MOVE.W    (d16,A0),(A0)
        b       move_w_mem_mem
        lhax    data, a1, prefetch_data                 // 30A9  MOVE.W    (d16,A1),(A0)
        b       move_w_mem_mem
        lhax    data, a2, prefetch_data                 // 30AA  MOVE.W    (d16,A2),(A0)
        b       move_w_mem_mem
        lhax    data, a3, prefetch_data                 // 30AB  MOVE.W    (d16,A3),(A0)
        b       move_w_mem_mem
        lhax    data, a4, prefetch_data                 // 30AC  MOVE.W    (d16,A4),(A0)
        b       move_w_mem_mem
        lhax    data, a5, prefetch_data                 // 30AD  MOVE.W    (d16,A5),(A0)
        b       move_w_mem_mem
        lhax    data, a6, prefetch_data                 // 30AE  MOVE.W    (d16,A6),(A0)
        b       move_w_mem_mem
        lhax    data, a7, prefetch_data                 // 30AF  MOVE.W    (d16,A7),(A0)
        b       move_w_mem_mem
        ori     rtn_addr, code_ptr, move_w_mem_mem_2 - cb  // 30B0  MOVE.W    (d8,A0,Xn),(A0)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_2 - cb  // 30B1  MOVE.W    (d8,A1,Xn),(A0)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_2 - cb  // 30B2  MOVE.W    (d8,A2,Xn),(A0)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_2 - cb  // 30B3  MOVE.W    (d8,A3,Xn),(A0)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_2 - cb  // 30B4  MOVE.W    (d8,A4,Xn),(A0)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_2 - cb  // 30B5  MOVE.W    (d8,A5,Xn),(A0)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_2 - cb  // 30B6  MOVE.W    (d8,A6,Xn),(A0)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_2 - cb  // 30B7  MOVE.W    (d8,A7,Xn),(A0)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 30B8  MOVE.W    (xxx).W,(A0)
        b       move_w_mem_mem
        ori     rtn_addr, code_ptr, move_w_mem_mem_2 - cb  // 30B9  MOVE.W    (xxx).L,(A0)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 30BA  MOVE.W    (d16,PC),(A0)
        b       move_w_mem_mem
        ori     rtn_addr, code_ptr, move_w_mem_mem_2 - cb  // 30BB  MOVE.W    (d8,PC,Xn),(A0)
        b       fea_w_73
        sth     prefetch_data, 0(a0)                    // 30BC  MOVE.W    #<data>,(A0)
        b       move_w_imm_any
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 30BD  MOVE.W    <ea 7.5>,(A0)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 30BE  MOVE.W    <ea 7.6>,(A0)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 30BF  MOVE.W    <ea 7.7>,(A0)   (illegal)
        b       take_illegal_instruction

// ---- $30C0-$30FF --------------------------------------------------------
        extsh   data, d0                                // 30C0  MOVE.W    D0,(A0)+
        b       move_w_mem_mem_33
        extsh   data, d1                                // 30C1  MOVE.W    D1,(A0)+
        b       move_w_mem_mem_33
        extsh   data, d2                                // 30C2  MOVE.W    D2,(A0)+
        b       move_w_mem_mem_33
        extsh   data, d3                                // 30C3  MOVE.W    D3,(A0)+
        b       move_w_mem_mem_33
        extsh   data, d4                                // 30C4  MOVE.W    D4,(A0)+
        b       move_w_mem_mem_33
        extsh   data, d5                                // 30C5  MOVE.W    D5,(A0)+
        b       move_w_mem_mem_33
        extsh   data, d6                                // 30C6  MOVE.W    D6,(A0)+
        b       move_w_mem_mem_33
        extsh   data, d7                                // 30C7  MOVE.W    D7,(A0)+
        b       move_w_mem_mem_33
        extsh   data, a0                                // 30C8  MOVE.W    A0,(A0)+
        b       move_w_mem_mem_33
        extsh   data, a1                                // 30C9  MOVE.W    A1,(A0)+
        b       move_w_mem_mem_33
        extsh   data, a2                                // 30CA  MOVE.W    A2,(A0)+
        b       move_w_mem_mem_33
        extsh   data, a3                                // 30CB  MOVE.W    A3,(A0)+
        b       move_w_mem_mem_33
        extsh   data, a4                                // 30CC  MOVE.W    A4,(A0)+
        b       move_w_mem_mem_33
        extsh   data, a5                                // 30CD  MOVE.W    A5,(A0)+
        b       move_w_mem_mem_33
        extsh   data, a6                                // 30CE  MOVE.W    A6,(A0)+
        b       move_w_mem_mem_33
        extsh   data, a7                                // 30CF  MOVE.W    A7,(A0)+
        b       move_w_mem_mem_33
        lha     data, 0(a0)                             // 30D0  MOVE.W    (A0),(A0)+
        b       move_w_mem_mem_33
        lha     data, 0(a1)                             // 30D1  MOVE.W    (A1),(A0)+
        b       move_w_mem_mem_33
        lha     data, 0(a2)                             // 30D2  MOVE.W    (A2),(A0)+
        b       move_w_mem_mem_33
        lha     data, 0(a3)                             // 30D3  MOVE.W    (A3),(A0)+
        b       move_w_mem_mem_33
        lha     data, 0(a4)                             // 30D4  MOVE.W    (A4),(A0)+
        b       move_w_mem_mem_33
        lha     data, 0(a5)                             // 30D5  MOVE.W    (A5),(A0)+
        b       move_w_mem_mem_33
        lha     data, 0(a6)                             // 30D6  MOVE.W    (A6),(A0)+
        b       move_w_mem_mem_33
        lha     data, 0(a7)                             // 30D7  MOVE.W    (A7),(A0)+
        b       move_w_mem_mem_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_33 - cb  // 30D8  MOVE.W    (A0)+,(A0)+
        b       fea_w_30
        rlwimi  disp_table, prefetch_data, 3, 13, 28    // 30D9  MOVE.W    (A1)+,(A0)+
        b       move_w_mem_mem_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_33 - cb  // 30DA  MOVE.W    (A2)+,(A0)+
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_33 - cb  // 30DB  MOVE.W    (A3)+,(A0)+
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_33 - cb  // 30DC  MOVE.W    (A4)+,(A0)+
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_33 - cb  // 30DD  MOVE.W    (A5)+,(A0)+
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_33 - cb  // 30DE  MOVE.W    (A6)+,(A0)+
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_33 - cb  // 30DF  MOVE.W    (A7)+,(A0)+
        b       fea_w_37
        lha     data, -2(a0)                            // 30E0  MOVE.W    -(A0),(A0)+
        b       test_data
        lhau    data, -2(a1)                            // 30E1  MOVE.W    -(A1),(A0)+
        b       move_w_mem_mem_33
        lhau    data, -2(a2)                            // 30E2  MOVE.W    -(A2),(A0)+
        b       move_w_mem_mem_33
        lhau    data, -2(a3)                            // 30E3  MOVE.W    -(A3),(A0)+
        b       move_w_mem_mem_33
        lhau    data, -2(a4)                            // 30E4  MOVE.W    -(A4),(A0)+
        b       move_w_mem_mem_33
        lhau    data, -2(a5)                            // 30E5  MOVE.W    -(A5),(A0)+
        b       move_w_mem_mem_33
        lhau    data, -2(a6)                            // 30E6  MOVE.W    -(A6),(A0)+
        b       move_w_mem_mem_33
        lhau    data, -2(a7)                            // 30E7  MOVE.W    -(A7),(A0)+
        b       move_w_mem_mem_33
        lhax    data, a0, prefetch_data                 // 30E8  MOVE.W    (d16,A0),(A0)+
        b       move_w_ea_mem
        lhax    data, a1, prefetch_data                 // 30E9  MOVE.W    (d16,A1),(A0)+
        b       move_w_ea_mem
        lhax    data, a2, prefetch_data                 // 30EA  MOVE.W    (d16,A2),(A0)+
        b       move_w_ea_mem
        lhax    data, a3, prefetch_data                 // 30EB  MOVE.W    (d16,A3),(A0)+
        b       move_w_ea_mem
        lhax    data, a4, prefetch_data                 // 30EC  MOVE.W    (d16,A4),(A0)+
        b       move_w_ea_mem
        lhax    data, a5, prefetch_data                 // 30ED  MOVE.W    (d16,A5),(A0)+
        b       move_w_ea_mem
        lhax    data, a6, prefetch_data                 // 30EE  MOVE.W    (d16,A6),(A0)+
        b       move_w_ea_mem
        lhax    data, a7, prefetch_data                 // 30EF  MOVE.W    (d16,A7),(A0)+
        b       move_w_ea_mem
        ori     rtn_addr, code_ptr, move_w_mem_mem_33 - cb  // 30F0  MOVE.W    (d8,A0,Xn),(A0)+
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_33 - cb  // 30F1  MOVE.W    (d8,A1,Xn),(A0)+
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_33 - cb  // 30F2  MOVE.W    (d8,A2,Xn),(A0)+
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_33 - cb  // 30F3  MOVE.W    (d8,A3,Xn),(A0)+
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_33 - cb  // 30F4  MOVE.W    (d8,A4,Xn),(A0)+
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_33 - cb  // 30F5  MOVE.W    (d8,A5,Xn),(A0)+
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_33 - cb  // 30F6  MOVE.W    (d8,A6,Xn),(A0)+
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_33 - cb  // 30F7  MOVE.W    (d8,A7,Xn),(A0)+
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 30F8  MOVE.W    (xxx).W,(A0)+
        b       move_w_ea_mem
        ori     rtn_addr, code_ptr, move_w_mem_mem_33 - cb  // 30F9  MOVE.W    (xxx).L,(A0)+
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 30FA  MOVE.W    (d16,PC),(A0)+
        b       move_w_ea_mem
        ori     rtn_addr, code_ptr, move_w_mem_mem_33 - cb  // 30FB  MOVE.W    (d8,PC,Xn),(A0)+
        b       fea_w_73
        extsh   data, prefetch_data                     // 30FC  MOVE.W    #<data>,(A0)+
        b       move_w_ea_mem
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 30FD  MOVE.W    <ea 7.5>,(A0)+   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 30FE  MOVE.W    <ea 7.6>,(A0)+   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 30FF  MOVE.W    <ea 7.7>,(A0)+   (illegal)
        b       take_illegal_instruction

// ---- $3100-$313F --------------------------------------------------------
        extsh   data, d0                                // 3100  MOVE.W    D0,-(A0)
        b       move_w_mem_mem_18
        extsh   data, d1                                // 3101  MOVE.W    D1,-(A0)
        b       move_w_mem_mem_18
        extsh   data, d2                                // 3102  MOVE.W    D2,-(A0)
        b       move_w_mem_mem_18
        extsh   data, d3                                // 3103  MOVE.W    D3,-(A0)
        b       move_w_mem_mem_18
        extsh   data, d4                                // 3104  MOVE.W    D4,-(A0)
        b       move_w_mem_mem_18
        extsh   data, d5                                // 3105  MOVE.W    D5,-(A0)
        b       move_w_mem_mem_18
        extsh   data, d6                                // 3106  MOVE.W    D6,-(A0)
        b       move_w_mem_mem_18
        extsh   data, d7                                // 3107  MOVE.W    D7,-(A0)
        b       move_w_mem_mem_18
        extsh   data, a0                                // 3108  MOVE.W    A0,-(A0)
        b       move_w_mem_mem_18
        extsh   data, a1                                // 3109  MOVE.W    A1,-(A0)
        b       move_w_mem_mem_18
        extsh   data, a2                                // 310A  MOVE.W    A2,-(A0)
        b       move_w_mem_mem_18
        extsh   data, a3                                // 310B  MOVE.W    A3,-(A0)
        b       move_w_mem_mem_18
        extsh   data, a4                                // 310C  MOVE.W    A4,-(A0)
        b       move_w_mem_mem_18
        extsh   data, a5                                // 310D  MOVE.W    A5,-(A0)
        b       move_w_mem_mem_18
        extsh   data, a6                                // 310E  MOVE.W    A6,-(A0)
        b       move_w_mem_mem_18
        extsh   data, a7                                // 310F  MOVE.W    A7,-(A0)
        b       move_w_mem_mem_18
        lha     data, 0(a0)                             // 3110  MOVE.W    (A0),-(A0)
        b       move_w_mem_mem_18
        lha     data, 0(a1)                             // 3111  MOVE.W    (A1),-(A0)
        b       move_w_mem_mem_18
        lha     data, 0(a2)                             // 3112  MOVE.W    (A2),-(A0)
        b       move_w_mem_mem_18
        lha     data, 0(a3)                             // 3113  MOVE.W    (A3),-(A0)
        b       move_w_mem_mem_18
        lha     data, 0(a4)                             // 3114  MOVE.W    (A4),-(A0)
        b       move_w_mem_mem_18
        lha     data, 0(a5)                             // 3115  MOVE.W    (A5),-(A0)
        b       move_w_mem_mem_18
        lha     data, 0(a6)                             // 3116  MOVE.W    (A6),-(A0)
        b       move_w_mem_mem_18
        lha     data, 0(a7)                             // 3117  MOVE.W    (A7),-(A0)
        b       move_w_mem_mem_18
        lha     data, 0(a0)                             // 3118  MOVE.W    (A0)+,-(A0)
        b       test_data
        ori     rtn_addr, code_ptr, move_w_mem_mem_18 - cb  // 3119  MOVE.W    (A1)+,-(A0)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_18 - cb  // 311A  MOVE.W    (A2)+,-(A0)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_18 - cb  // 311B  MOVE.W    (A3)+,-(A0)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_18 - cb  // 311C  MOVE.W    (A4)+,-(A0)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_18 - cb  // 311D  MOVE.W    (A5)+,-(A0)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_18 - cb  // 311E  MOVE.W    (A6)+,-(A0)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_18 - cb  // 311F  MOVE.W    (A7)+,-(A0)
        b       fea_w_37
        lhau    data, -2(a0)                            // 3120  MOVE.W    -(A0),-(A0)
        b       move_w_mem_mem_18
        lhau    data, -2(a1)                            // 3121  MOVE.W    -(A1),-(A0)
        b       move_w_mem_mem_18
        lhau    data, -2(a2)                            // 3122  MOVE.W    -(A2),-(A0)
        b       move_w_mem_mem_18
        lhau    data, -2(a3)                            // 3123  MOVE.W    -(A3),-(A0)
        b       move_w_mem_mem_18
        lhau    data, -2(a4)                            // 3124  MOVE.W    -(A4),-(A0)
        b       move_w_mem_mem_18
        lhau    data, -2(a5)                            // 3125  MOVE.W    -(A5),-(A0)
        b       move_w_mem_mem_18
        lhau    data, -2(a6)                            // 3126  MOVE.W    -(A6),-(A0)
        b       move_w_mem_mem_18
        lhau    data, -2(a7)                            // 3127  MOVE.W    -(A7),-(A0)
        b       move_w_mem_mem_18
        lhax    data, a0, prefetch_data                 // 3128  MOVE.W    (d16,A0),-(A0)
        b       move_w_mem_mem_17
        lhax    data, a1, prefetch_data                 // 3129  MOVE.W    (d16,A1),-(A0)
        b       move_w_mem_mem_17
        lhax    data, a2, prefetch_data                 // 312A  MOVE.W    (d16,A2),-(A0)
        b       move_w_mem_mem_17
        lhax    data, a3, prefetch_data                 // 312B  MOVE.W    (d16,A3),-(A0)
        b       move_w_mem_mem_17
        lhax    data, a4, prefetch_data                 // 312C  MOVE.W    (d16,A4),-(A0)
        b       move_w_mem_mem_17
        lhax    data, a5, prefetch_data                 // 312D  MOVE.W    (d16,A5),-(A0)
        b       move_w_mem_mem_17
        lhax    data, a6, prefetch_data                 // 312E  MOVE.W    (d16,A6),-(A0)
        b       move_w_mem_mem_17
        lhax    data, a7, prefetch_data                 // 312F  MOVE.W    (d16,A7),-(A0)
        b       move_w_mem_mem_17
        ori     rtn_addr, code_ptr, move_w_mem_mem_18 - cb  // 3130  MOVE.W    (d8,A0,Xn),-(A0)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_18 - cb  // 3131  MOVE.W    (d8,A1,Xn),-(A0)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_18 - cb  // 3132  MOVE.W    (d8,A2,Xn),-(A0)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_18 - cb  // 3133  MOVE.W    (d8,A3,Xn),-(A0)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_18 - cb  // 3134  MOVE.W    (d8,A4,Xn),-(A0)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_18 - cb  // 3135  MOVE.W    (d8,A5,Xn),-(A0)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_18 - cb  // 3136  MOVE.W    (d8,A6,Xn),-(A0)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_18 - cb  // 3137  MOVE.W    (d8,A7,Xn),-(A0)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3138  MOVE.W    (xxx).W,-(A0)
        b       move_w_mem_mem_17
        ori     rtn_addr, code_ptr, move_w_mem_mem_18 - cb  // 3139  MOVE.W    (xxx).L,-(A0)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 313A  MOVE.W    (d16,PC),-(A0)
        b       move_w_mem_mem_17
        ori     rtn_addr, code_ptr, move_w_mem_mem_18 - cb  // 313B  MOVE.W    (d8,PC,Xn),-(A0)
        b       fea_w_73
        sthu    prefetch_data, -2(a0)                   // 313C  MOVE.W    #<data>,-(A0)
        b       move_w_imm_any
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 313D  MOVE.W    <ea 7.5>,-(A0)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 313E  MOVE.W    <ea 7.6>,-(A0)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 313F  MOVE.W    <ea 7.7>,-(A0)   (illegal)
        b       take_illegal_instruction

// ---- $3140-$317F --------------------------------------------------------
        sthx    d0, a0, prefetch_data                   // 3140  MOVE.W    D0,(d16,A0)
        b       move_w_d0_mem
        extsh   data, d1                                // 3141  MOVE.W    D1,(d16,A0)
        b       move_w_mem_mem_34
        extsh   data, d2                                // 3142  MOVE.W    D2,(d16,A0)
        b       move_w_mem_mem_34
        extsh   data, d3                                // 3143  MOVE.W    D3,(d16,A0)
        b       move_w_mem_mem_34
        extsh   data, d4                                // 3144  MOVE.W    D4,(d16,A0)
        b       move_w_mem_mem_34
        extsh   data, d5                                // 3145  MOVE.W    D5,(d16,A0)
        b       move_w_mem_mem_34
        extsh   data, d6                                // 3146  MOVE.W    D6,(d16,A0)
        b       move_w_mem_mem_34
        extsh   data, d7                                // 3147  MOVE.W    D7,(d16,A0)
        b       move_w_mem_mem_34
        extsh   data, a0                                // 3148  MOVE.W    A0,(d16,A0)
        b       move_w_mem_mem_34
        extsh   data, a1                                // 3149  MOVE.W    A1,(d16,A0)
        b       move_w_mem_mem_34
        extsh   data, a2                                // 314A  MOVE.W    A2,(d16,A0)
        b       move_w_mem_mem_34
        extsh   data, a3                                // 314B  MOVE.W    A3,(d16,A0)
        b       move_w_mem_mem_34
        extsh   data, a4                                // 314C  MOVE.W    A4,(d16,A0)
        b       move_w_mem_mem_34
        extsh   data, a5                                // 314D  MOVE.W    A5,(d16,A0)
        b       move_w_mem_mem_34
        extsh   data, a6                                // 314E  MOVE.W    A6,(d16,A0)
        b       move_w_mem_mem_34
        extsh   data, a7                                // 314F  MOVE.W    A7,(d16,A0)
        b       move_w_mem_mem_34
        lha     data, 0(a0)                             // 3150  MOVE.W    (A0),(d16,A0)
        b       move_w_mem_mem_34
        lha     data, 0(a1)                             // 3151  MOVE.W    (A1),(d16,A0)
        b       move_w_mem_mem_34
        lha     data, 0(a2)                             // 3152  MOVE.W    (A2),(d16,A0)
        b       move_w_mem_mem_34
        lha     data, 0(a3)                             // 3153  MOVE.W    (A3),(d16,A0)
        b       move_w_mem_mem_34
        lha     data, 0(a4)                             // 3154  MOVE.W    (A4),(d16,A0)
        b       move_w_mem_mem_34
        lha     data, 0(a5)                             // 3155  MOVE.W    (A5),(d16,A0)
        b       move_w_mem_mem_34
        lha     data, 0(a6)                             // 3156  MOVE.W    (A6),(d16,A0)
        b       move_w_mem_mem_34
        lha     data, 0(a7)                             // 3157  MOVE.W    (A7),(d16,A0)
        b       move_w_mem_mem_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_34 - cb  // 3158  MOVE.W    (A0)+,(d16,A0)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_34 - cb  // 3159  MOVE.W    (A1)+,(d16,A0)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_34 - cb  // 315A  MOVE.W    (A2)+,(d16,A0)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_34 - cb  // 315B  MOVE.W    (A3)+,(d16,A0)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_34 - cb  // 315C  MOVE.W    (A4)+,(d16,A0)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_34 - cb  // 315D  MOVE.W    (A5)+,(d16,A0)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_34 - cb  // 315E  MOVE.W    (A6)+,(d16,A0)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_34 - cb  // 315F  MOVE.W    (A7)+,(d16,A0)
        b       fea_w_37
        lhau    data, -2(a0)                            // 3160  MOVE.W    -(A0),(d16,A0)
        b       move_w_mem_mem_34
        lhau    data, -2(a1)                            // 3161  MOVE.W    -(A1),(d16,A0)
        b       move_w_mem_mem_34
        lhau    data, -2(a2)                            // 3162  MOVE.W    -(A2),(d16,A0)
        b       move_w_mem_mem_34
        lhau    data, -2(a3)                            // 3163  MOVE.W    -(A3),(d16,A0)
        b       move_w_mem_mem_34
        lhau    data, -2(a4)                            // 3164  MOVE.W    -(A4),(d16,A0)
        b       move_w_mem_mem_34
        lhau    data, -2(a5)                            // 3165  MOVE.W    -(A5),(d16,A0)
        b       move_w_mem_mem_34
        lhau    data, -2(a6)                            // 3166  MOVE.W    -(A6),(d16,A0)
        b       move_w_mem_mem_34
        lhau    data, -2(a7)                            // 3167  MOVE.W    -(A7),(d16,A0)
        b       move_w_mem_mem_34
        lhax    data, a0, prefetch_data                 // 3168  MOVE.W    (d16,A0),(d16,A0)
        b       move_w_ea_mem_2
        lhax    data, a1, prefetch_data                 // 3169  MOVE.W    (d16,A1),(d16,A0)
        b       move_w_ea_mem_2
        lhax    data, a2, prefetch_data                 // 316A  MOVE.W    (d16,A2),(d16,A0)
        b       move_w_ea_mem_2
        lhax    data, a3, prefetch_data                 // 316B  MOVE.W    (d16,A3),(d16,A0)
        b       move_w_ea_mem_2
        lhax    data, a4, prefetch_data                 // 316C  MOVE.W    (d16,A4),(d16,A0)
        b       move_w_ea_mem_2
        lhax    data, a5, prefetch_data                 // 316D  MOVE.W    (d16,A5),(d16,A0)
        b       move_w_ea_mem_2
        lhax    data, a6, prefetch_data                 // 316E  MOVE.W    (d16,A6),(d16,A0)
        b       move_w_ea_mem_2
        lhax    data, a7, prefetch_data                 // 316F  MOVE.W    (d16,A7),(d16,A0)
        b       move_w_ea_mem_2
        ori     rtn_addr, code_ptr, move_w_mem_mem_34 - cb  // 3170  MOVE.W    (d8,A0,Xn),(d16,A0)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_34 - cb  // 3171  MOVE.W    (d8,A1,Xn),(d16,A0)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_34 - cb  // 3172  MOVE.W    (d8,A2,Xn),(d16,A0)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_34 - cb  // 3173  MOVE.W    (d8,A3,Xn),(d16,A0)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_34 - cb  // 3174  MOVE.W    (d8,A4,Xn),(d16,A0)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_34 - cb  // 3175  MOVE.W    (d8,A5,Xn),(d16,A0)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_34 - cb  // 3176  MOVE.W    (d8,A6,Xn),(d16,A0)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_34 - cb  // 3177  MOVE.W    (d8,A7,Xn),(d16,A0)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3178  MOVE.W    (xxx).W,(d16,A0)
        b       move_w_ea_mem_2
        ori     rtn_addr, code_ptr, move_w_mem_mem_34 - cb  // 3179  MOVE.W    (xxx).L,(d16,A0)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 317A  MOVE.W    (d16,PC),(d16,A0)
        b       move_w_ea_mem_2
        ori     rtn_addr, code_ptr, move_w_mem_mem_34 - cb  // 317B  MOVE.W    (d8,PC,Xn),(d16,A0)
        b       fea_w_73
        extsh   data, prefetch_data                     // 317C  MOVE.W    #<data>,(d16,A0)
        b       move_w_ea_mem_2
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 317D  MOVE.W    <ea 7.5>,(d16,A0)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 317E  MOVE.W    <ea 7.6>,(d16,A0)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 317F  MOVE.W    <ea 7.7>,(d16,A0)   (illegal)
        b       take_illegal_instruction

// ---- $3180-$31BF --------------------------------------------------------
        extsh   data, d0                                // 3180  MOVE.W    D0,(d8,A0,Xn)
        b       move_w_mem_mem_35
        extsh   data, d1                                // 3181  MOVE.W    D1,(d8,A0,Xn)
        b       move_w_mem_mem_35
        extsh   data, d2                                // 3182  MOVE.W    D2,(d8,A0,Xn)
        b       move_w_mem_mem_35
        extsh   data, d3                                // 3183  MOVE.W    D3,(d8,A0,Xn)
        b       move_w_mem_mem_35
        extsh   data, d4                                // 3184  MOVE.W    D4,(d8,A0,Xn)
        b       move_w_mem_mem_35
        extsh   data, d5                                // 3185  MOVE.W    D5,(d8,A0,Xn)
        b       move_w_mem_mem_35
        extsh   data, d6                                // 3186  MOVE.W    D6,(d8,A0,Xn)
        b       move_w_mem_mem_35
        extsh   data, d7                                // 3187  MOVE.W    D7,(d8,A0,Xn)
        b       move_w_mem_mem_35
        extsh   data, a0                                // 3188  MOVE.W    A0,(d8,A0,Xn)
        b       move_w_mem_mem_35
        extsh   data, a1                                // 3189  MOVE.W    A1,(d8,A0,Xn)
        b       move_w_mem_mem_35
        extsh   data, a2                                // 318A  MOVE.W    A2,(d8,A0,Xn)
        b       move_w_mem_mem_35
        extsh   data, a3                                // 318B  MOVE.W    A3,(d8,A0,Xn)
        b       move_w_mem_mem_35
        extsh   data, a4                                // 318C  MOVE.W    A4,(d8,A0,Xn)
        b       move_w_mem_mem_35
        extsh   data, a5                                // 318D  MOVE.W    A5,(d8,A0,Xn)
        b       move_w_mem_mem_35
        extsh   data, a6                                // 318E  MOVE.W    A6,(d8,A0,Xn)
        b       move_w_mem_mem_35
        extsh   data, a7                                // 318F  MOVE.W    A7,(d8,A0,Xn)
        b       move_w_mem_mem_35
        lha     data, 0(a0)                             // 3190  MOVE.W    (A0),(d8,A0,Xn)
        b       move_w_mem_mem_35
        lha     data, 0(a1)                             // 3191  MOVE.W    (A1),(d8,A0,Xn)
        b       move_w_mem_mem_35
        lha     data, 0(a2)                             // 3192  MOVE.W    (A2),(d8,A0,Xn)
        b       move_w_mem_mem_35
        lha     data, 0(a3)                             // 3193  MOVE.W    (A3),(d8,A0,Xn)
        b       move_w_mem_mem_35
        lha     data, 0(a4)                             // 3194  MOVE.W    (A4),(d8,A0,Xn)
        b       move_w_mem_mem_35
        lha     data, 0(a5)                             // 3195  MOVE.W    (A5),(d8,A0,Xn)
        b       move_w_mem_mem_35
        lha     data, 0(a6)                             // 3196  MOVE.W    (A6),(d8,A0,Xn)
        b       move_w_mem_mem_35
        lha     data, 0(a7)                             // 3197  MOVE.W    (A7),(d8,A0,Xn)
        b       move_w_mem_mem_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_35 - cb  // 3198  MOVE.W    (A0)+,(d8,A0,Xn)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_35 - cb  // 3199  MOVE.W    (A1)+,(d8,A0,Xn)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_35 - cb  // 319A  MOVE.W    (A2)+,(d8,A0,Xn)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_35 - cb  // 319B  MOVE.W    (A3)+,(d8,A0,Xn)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_35 - cb  // 319C  MOVE.W    (A4)+,(d8,A0,Xn)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_35 - cb  // 319D  MOVE.W    (A5)+,(d8,A0,Xn)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_35 - cb  // 319E  MOVE.W    (A6)+,(d8,A0,Xn)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_35 - cb  // 319F  MOVE.W    (A7)+,(d8,A0,Xn)
        b       fea_w_37
        lhau    data, -2(a0)                            // 31A0  MOVE.W    -(A0),(d8,A0,Xn)
        b       move_w_mem_mem_35
        lhau    data, -2(a1)                            // 31A1  MOVE.W    -(A1),(d8,A0,Xn)
        b       move_w_mem_mem_35
        lhau    data, -2(a2)                            // 31A2  MOVE.W    -(A2),(d8,A0,Xn)
        b       move_w_mem_mem_35
        lhau    data, -2(a3)                            // 31A3  MOVE.W    -(A3),(d8,A0,Xn)
        b       move_w_mem_mem_35
        lhau    data, -2(a4)                            // 31A4  MOVE.W    -(A4),(d8,A0,Xn)
        b       move_w_mem_mem_35
        lhau    data, -2(a5)                            // 31A5  MOVE.W    -(A5),(d8,A0,Xn)
        b       move_w_mem_mem_35
        lhau    data, -2(a6)                            // 31A6  MOVE.W    -(A6),(d8,A0,Xn)
        b       move_w_mem_mem_35
        lhau    data, -2(a7)                            // 31A7  MOVE.W    -(A7),(d8,A0,Xn)
        b       move_w_mem_mem_35
        lhax    data, a0, prefetch_data                 // 31A8  MOVE.W    (d16,A0),(d8,A0,Xn)
        b       move_w_ea_mem_3
        lhax    data, a1, prefetch_data                 // 31A9  MOVE.W    (d16,A1),(d8,A0,Xn)
        b       move_w_ea_mem_3
        lhax    data, a2, prefetch_data                 // 31AA  MOVE.W    (d16,A2),(d8,A0,Xn)
        b       move_w_ea_mem_3
        lhax    data, a3, prefetch_data                 // 31AB  MOVE.W    (d16,A3),(d8,A0,Xn)
        b       move_w_ea_mem_3
        lhax    data, a4, prefetch_data                 // 31AC  MOVE.W    (d16,A4),(d8,A0,Xn)
        b       move_w_ea_mem_3
        lhax    data, a5, prefetch_data                 // 31AD  MOVE.W    (d16,A5),(d8,A0,Xn)
        b       move_w_ea_mem_3
        lhax    data, a6, prefetch_data                 // 31AE  MOVE.W    (d16,A6),(d8,A0,Xn)
        b       move_w_ea_mem_3
        lhax    data, a7, prefetch_data                 // 31AF  MOVE.W    (d16,A7),(d8,A0,Xn)
        b       move_w_ea_mem_3
        ori     rtn_addr, code_ptr, move_w_mem_mem_35 - cb  // 31B0  MOVE.W    (d8,A0,Xn),(d8,A0,Xn)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_35 - cb  // 31B1  MOVE.W    (d8,A1,Xn),(d8,A0,Xn)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_35 - cb  // 31B2  MOVE.W    (d8,A2,Xn),(d8,A0,Xn)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_35 - cb  // 31B3  MOVE.W    (d8,A3,Xn),(d8,A0,Xn)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_35 - cb  // 31B4  MOVE.W    (d8,A4,Xn),(d8,A0,Xn)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_35 - cb  // 31B5  MOVE.W    (d8,A5,Xn),(d8,A0,Xn)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_35 - cb  // 31B6  MOVE.W    (d8,A6,Xn),(d8,A0,Xn)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_35 - cb  // 31B7  MOVE.W    (d8,A7,Xn),(d8,A0,Xn)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 31B8  MOVE.W    (xxx).W,(d8,A0,Xn)
        b       move_w_ea_mem_3
        ori     rtn_addr, code_ptr, move_w_mem_mem_35 - cb  // 31B9  MOVE.W    (xxx).L,(d8,A0,Xn)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 31BA  MOVE.W    (d16,PC),(d8,A0,Xn)
        b       move_w_ea_mem_3
        ori     rtn_addr, code_ptr, move_w_mem_mem_35 - cb  // 31BB  MOVE.W    (d8,PC,Xn),(d8,A0,Xn)
        b       fea_w_73
        extsh   data, prefetch_data                     // 31BC  MOVE.W    #<data>,(d8,A0,Xn)
        b       move_w_ea_mem_3
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 31BD  MOVE.W    <ea 7.5>,(d8,A0,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 31BE  MOVE.W    <ea 7.6>,(d8,A0,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 31BF  MOVE.W    <ea 7.7>,(d8,A0,Xn)   (illegal)
        b       take_illegal_instruction

// ---- $31C0-$31FF --------------------------------------------------------
        extsh   data, d0                                // 31C0  MOVE.W    D0,(xxx).W
        b       move_w_mem_mem_57
        extsh   data, d1                                // 31C1  MOVE.W    D1,(xxx).W
        b       move_w_mem_mem_57
        extsh   data, d2                                // 31C2  MOVE.W    D2,(xxx).W
        b       move_w_mem_mem_57
        extsh   data, d3                                // 31C3  MOVE.W    D3,(xxx).W
        b       move_w_mem_mem_57
        extsh   data, d4                                // 31C4  MOVE.W    D4,(xxx).W
        b       move_w_mem_mem_57
        extsh   data, d5                                // 31C5  MOVE.W    D5,(xxx).W
        b       move_w_mem_mem_57
        extsh   data, d6                                // 31C6  MOVE.W    D6,(xxx).W
        b       move_w_mem_mem_57
        extsh   data, d7                                // 31C7  MOVE.W    D7,(xxx).W
        b       move_w_mem_mem_57
        extsh   data, a0                                // 31C8  MOVE.W    A0,(xxx).W
        b       move_w_mem_mem_57
        extsh   data, a1                                // 31C9  MOVE.W    A1,(xxx).W
        b       move_w_mem_mem_57
        extsh   data, a2                                // 31CA  MOVE.W    A2,(xxx).W
        b       move_w_mem_mem_57
        extsh   data, a3                                // 31CB  MOVE.W    A3,(xxx).W
        b       move_w_mem_mem_57
        extsh   data, a4                                // 31CC  MOVE.W    A4,(xxx).W
        b       move_w_mem_mem_57
        extsh   data, a5                                // 31CD  MOVE.W    A5,(xxx).W
        b       move_w_mem_mem_57
        extsh   data, a6                                // 31CE  MOVE.W    A6,(xxx).W
        b       move_w_mem_mem_57
        extsh   data, a7                                // 31CF  MOVE.W    A7,(xxx).W
        b       move_w_mem_mem_57
        lha     data, 0(a0)                             // 31D0  MOVE.W    (A0),(xxx).W
        b       move_w_mem_mem_57
        lha     data, 0(a1)                             // 31D1  MOVE.W    (A1),(xxx).W
        b       move_w_mem_mem_57
        lha     data, 0(a2)                             // 31D2  MOVE.W    (A2),(xxx).W
        b       move_w_mem_mem_57
        lha     data, 0(a3)                             // 31D3  MOVE.W    (A3),(xxx).W
        b       move_w_mem_mem_57
        lha     data, 0(a4)                             // 31D4  MOVE.W    (A4),(xxx).W
        b       move_w_mem_mem_57
        lha     data, 0(a5)                             // 31D5  MOVE.W    (A5),(xxx).W
        b       move_w_mem_mem_57
        lha     data, 0(a6)                             // 31D6  MOVE.W    (A6),(xxx).W
        b       move_w_mem_mem_57
        lha     data, 0(a7)                             // 31D7  MOVE.W    (A7),(xxx).W
        b       move_w_mem_mem_57
        ori     rtn_addr, code_ptr, move_w_mem_mem_57 - cb  // 31D8  MOVE.W    (A0)+,(xxx).W
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_57 - cb  // 31D9  MOVE.W    (A1)+,(xxx).W
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_57 - cb  // 31DA  MOVE.W    (A2)+,(xxx).W
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_57 - cb  // 31DB  MOVE.W    (A3)+,(xxx).W
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_57 - cb  // 31DC  MOVE.W    (A4)+,(xxx).W
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_57 - cb  // 31DD  MOVE.W    (A5)+,(xxx).W
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_57 - cb  // 31DE  MOVE.W    (A6)+,(xxx).W
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_57 - cb  // 31DF  MOVE.W    (A7)+,(xxx).W
        b       fea_w_37
        lhau    data, -2(a0)                            // 31E0  MOVE.W    -(A0),(xxx).W
        b       move_w_mem_mem_57
        lhau    data, -2(a1)                            // 31E1  MOVE.W    -(A1),(xxx).W
        b       move_w_mem_mem_57
        lhau    data, -2(a2)                            // 31E2  MOVE.W    -(A2),(xxx).W
        b       move_w_mem_mem_57
        lhau    data, -2(a3)                            // 31E3  MOVE.W    -(A3),(xxx).W
        b       move_w_mem_mem_57
        lhau    data, -2(a4)                            // 31E4  MOVE.W    -(A4),(xxx).W
        b       move_w_mem_mem_57
        lhau    data, -2(a5)                            // 31E5  MOVE.W    -(A5),(xxx).W
        b       move_w_mem_mem_57
        lhau    data, -2(a6)                            // 31E6  MOVE.W    -(A6),(xxx).W
        b       move_w_mem_mem_57
        lhau    data, -2(a7)                            // 31E7  MOVE.W    -(A7),(xxx).W
        b       move_w_mem_mem_57
        lhax    data, a0, prefetch_data                 // 31E8  MOVE.W    (d16,A0),(xxx).W
        b       move_w_ea_mem_25
        lhax    data, a1, prefetch_data                 // 31E9  MOVE.W    (d16,A1),(xxx).W
        b       move_w_ea_mem_25
        lhax    data, a2, prefetch_data                 // 31EA  MOVE.W    (d16,A2),(xxx).W
        b       move_w_ea_mem_25
        lhax    data, a3, prefetch_data                 // 31EB  MOVE.W    (d16,A3),(xxx).W
        b       move_w_ea_mem_25
        lhax    data, a4, prefetch_data                 // 31EC  MOVE.W    (d16,A4),(xxx).W
        b       move_w_ea_mem_25
        lhax    data, a5, prefetch_data                 // 31ED  MOVE.W    (d16,A5),(xxx).W
        b       move_w_ea_mem_25
        lhax    data, a6, prefetch_data                 // 31EE  MOVE.W    (d16,A6),(xxx).W
        b       move_w_ea_mem_25
        lhax    data, a7, prefetch_data                 // 31EF  MOVE.W    (d16,A7),(xxx).W
        b       move_w_ea_mem_25
        ori     rtn_addr, code_ptr, move_w_mem_mem_57 - cb  // 31F0  MOVE.W    (d8,A0,Xn),(xxx).W
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_57 - cb  // 31F1  MOVE.W    (d8,A1,Xn),(xxx).W
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_57 - cb  // 31F2  MOVE.W    (d8,A2,Xn),(xxx).W
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_57 - cb  // 31F3  MOVE.W    (d8,A3,Xn),(xxx).W
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_57 - cb  // 31F4  MOVE.W    (d8,A4,Xn),(xxx).W
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_57 - cb  // 31F5  MOVE.W    (d8,A5,Xn),(xxx).W
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_57 - cb  // 31F6  MOVE.W    (d8,A6,Xn),(xxx).W
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_57 - cb  // 31F7  MOVE.W    (d8,A7,Xn),(xxx).W
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 31F8  MOVE.W    (xxx).W,(xxx).W
        b       move_w_ea_mem_25
        ori     rtn_addr, code_ptr, move_w_mem_mem_57 - cb  // 31F9  MOVE.W    (xxx).L,(xxx).W
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 31FA  MOVE.W    (d16,PC),(xxx).W
        b       move_w_ea_mem_25
        ori     rtn_addr, code_ptr, move_w_mem_mem_57 - cb  // 31FB  MOVE.W    (d8,PC,Xn),(xxx).W
        b       fea_w_73
        extsh   data, prefetch_data                     // 31FC  MOVE.W    #<data>,(xxx).W
        b       move_w_ea_mem_25
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 31FD  MOVE.W    <ea 7.5>,(xxx).W   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 31FE  MOVE.W    <ea 7.6>,(xxx).W   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 31FF  MOVE.W    <ea 7.7>,(xxx).W   (illegal)
        b       take_illegal_instruction

// ---- $3200-$323F --------------------------------------------------------
        rlwimi  d1, d0, 0, 16, 31                       // 3200  MOVE.W    D0,D1
        b       move_w_reg_d1
        slwi.   data, d1, 16                            // 3201  MOVE.W    D1,D1
        b       update_vc_zero
        rlwimi  d1, d2, 0, 16, 31                       // 3202  MOVE.W    D2,D1
        b       move_w_reg_d1
        rlwimi  d1, d3, 0, 16, 31                       // 3203  MOVE.W    D3,D1
        b       move_w_reg_d1
        rlwimi  d1, d4, 0, 16, 31                       // 3204  MOVE.W    D4,D1
        b       move_w_reg_d1
        rlwimi  d1, d5, 0, 16, 31                       // 3205  MOVE.W    D5,D1
        b       move_w_reg_d1
        rlwimi  d1, d6, 0, 16, 31                       // 3206  MOVE.W    D6,D1
        b       move_w_reg_d1
        rlwimi  d1, d7, 0, 16, 31                       // 3207  MOVE.W    D7,D1
        b       move_w_reg_d1
        rlwimi  d1, a0, 0, 16, 31                       // 3208  MOVE.W    A0,D1
        b       move_w_reg_d1
        rlwimi  d1, a1, 0, 16, 31                       // 3209  MOVE.W    A1,D1
        b       move_w_reg_d1
        rlwimi  d1, a2, 0, 16, 31                       // 320A  MOVE.W    A2,D1
        b       move_w_reg_d1
        rlwimi  d1, a3, 0, 16, 31                       // 320B  MOVE.W    A3,D1
        b       move_w_reg_d1
        rlwimi  d1, a4, 0, 16, 31                       // 320C  MOVE.W    A4,D1
        b       move_w_reg_d1
        rlwimi  d1, a5, 0, 16, 31                       // 320D  MOVE.W    A5,D1
        b       move_w_reg_d1
        rlwimi  d1, a6, 0, 16, 31                       // 320E  MOVE.W    A6,D1
        b       move_w_reg_d1
        rlwimi  d1, a7, 0, 16, 31                       // 320F  MOVE.W    A7,D1
        b       move_w_reg_d1
        lha     data, 0(a0)                             // 3210  MOVE.W    (A0),D1
        b       move_w_mem_d1_2
        lha     data, 0(a1)                             // 3211  MOVE.W    (A1),D1
        b       move_w_mem_d1_2
        lha     data, 0(a2)                             // 3212  MOVE.W    (A2),D1
        b       move_w_mem_d1_2
        lha     data, 0(a3)                             // 3213  MOVE.W    (A3),D1
        b       move_w_mem_d1_2
        lha     data, 0(a4)                             // 3214  MOVE.W    (A4),D1
        b       move_w_mem_d1_2
        lha     data, 0(a5)                             // 3215  MOVE.W    (A5),D1
        b       move_w_mem_d1_2
        lha     data, 0(a6)                             // 3216  MOVE.W    (A6),D1
        b       move_w_mem_d1_2
        lha     data, 0(a7)                             // 3217  MOVE.W    (A7),D1
        b       move_w_mem_d1_2
        ori     rtn_addr, code_ptr, move_w_mem_d1_2 - cb  // 3218  MOVE.W    (A0)+,D1
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_d1_2 - cb  // 3219  MOVE.W    (A1)+,D1
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_d1_2 - cb  // 321A  MOVE.W    (A2)+,D1
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_d1_2 - cb  // 321B  MOVE.W    (A3)+,D1
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_d1_2 - cb  // 321C  MOVE.W    (A4)+,D1
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_d1_2 - cb  // 321D  MOVE.W    (A5)+,D1
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_d1_2 - cb  // 321E  MOVE.W    (A6)+,D1
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_d1_2 - cb  // 321F  MOVE.W    (A7)+,D1
        b       fea_w_37
        lhau    data, -2(a0)                            // 3220  MOVE.W    -(A0),D1
        b       move_w_mem_d1_2
        lhau    data, -2(a1)                            // 3221  MOVE.W    -(A1),D1
        b       move_w_mem_d1_2
        lhau    data, -2(a2)                            // 3222  MOVE.W    -(A2),D1
        b       move_w_mem_d1_2
        lhau    data, -2(a3)                            // 3223  MOVE.W    -(A3),D1
        b       move_w_mem_d1_2
        lhau    data, -2(a4)                            // 3224  MOVE.W    -(A4),D1
        b       move_w_mem_d1_2
        lhau    data, -2(a5)                            // 3225  MOVE.W    -(A5),D1
        b       move_w_mem_d1_2
        lhau    data, -2(a6)                            // 3226  MOVE.W    -(A6),D1
        b       move_w_mem_d1_2
        lhau    data, -2(a7)                            // 3227  MOVE.W    -(A7),D1
        b       move_w_mem_d1_2
        lhax    data, a0, prefetch_data                 // 3228  MOVE.W    (d16,A0),D1
        b       move_w_mem_d1
        lhax    data, a1, prefetch_data                 // 3229  MOVE.W    (d16,A1),D1
        b       move_w_mem_d1
        lhax    data, a2, prefetch_data                 // 322A  MOVE.W    (d16,A2),D1
        b       move_w_mem_d1
        lhax    data, a3, prefetch_data                 // 322B  MOVE.W    (d16,A3),D1
        b       move_w_mem_d1
        lhax    data, a4, prefetch_data                 // 322C  MOVE.W    (d16,A4),D1
        b       move_w_mem_d1
        lhax    data, a5, prefetch_data                 // 322D  MOVE.W    (d16,A5),D1
        b       move_w_mem_d1
        lhax    data, a6, prefetch_data                 // 322E  MOVE.W    (d16,A6),D1
        b       move_w_mem_d1
        lhax    data, a7, prefetch_data                 // 322F  MOVE.W    (d16,A7),D1
        b       move_w_mem_d1
        ori     rtn_addr, code_ptr, move_w_mem_d1_2 - cb  // 3230  MOVE.W    (d8,A0,Xn),D1
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_d1_2 - cb  // 3231  MOVE.W    (d8,A1,Xn),D1
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_d1_2 - cb  // 3232  MOVE.W    (d8,A2,Xn),D1
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_d1_2 - cb  // 3233  MOVE.W    (d8,A3,Xn),D1
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_d1_2 - cb  // 3234  MOVE.W    (d8,A4,Xn),D1
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_d1_2 - cb  // 3235  MOVE.W    (d8,A5,Xn),D1
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_d1_2 - cb  // 3236  MOVE.W    (d8,A6,Xn),D1
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_d1_2 - cb  // 3237  MOVE.W    (d8,A7,Xn),D1
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3238  MOVE.W    (xxx).W,D1
        b       move_w_mem_d1
        ori     rtn_addr, code_ptr, move_w_mem_d1_2 - cb  // 3239  MOVE.W    (xxx).L,D1
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 323A  MOVE.W    (d16,PC),D1
        b       move_w_mem_d1
        ori     rtn_addr, code_ptr, move_w_mem_d1_2 - cb  // 323B  MOVE.W    (d8,PC,Xn),D1
        b       fea_w_73
        rlwimi  d1, prefetch_data, 0, 16, 31            // 323C  MOVE.W    #<data>,D1
        b       move_w_imm_any
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 323D  MOVE.W    <ea 7.5>,D1   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 323E  MOVE.W    <ea 7.6>,D1   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 323F  MOVE.W    <ea 7.7>,D1   (illegal)
        b       take_illegal_instruction

// ---- $3240-$327F --------------------------------------------------------
        extsh   a1, d0                                  // 3240  MOVEA.W   D0,A1
        b       fetch
        extsh   a1, d1                                  // 3241  MOVEA.W   D1,A1
        b       fetch
        extsh   a1, d2                                  // 3242  MOVEA.W   D2,A1
        b       fetch
        extsh   a1, d3                                  // 3243  MOVEA.W   D3,A1
        b       fetch
        extsh   a1, d4                                  // 3244  MOVEA.W   D4,A1
        b       fetch
        extsh   a1, d5                                  // 3245  MOVEA.W   D5,A1
        b       fetch
        extsh   a1, d6                                  // 3246  MOVEA.W   D6,A1
        b       fetch
        extsh   a1, d7                                  // 3247  MOVEA.W   D7,A1
        b       fetch
        extsh   a1, a0                                  // 3248  MOVEA.W   A0,A1
        b       fetch
        extsh   a1, a1                                  // 3249  MOVEA.W   A1,A1
        b       fetch
        extsh   a1, a2                                  // 324A  MOVEA.W   A2,A1
        b       fetch
        extsh   a1, a3                                  // 324B  MOVEA.W   A3,A1
        b       fetch
        extsh   a1, a4                                  // 324C  MOVEA.W   A4,A1
        b       fetch
        extsh   a1, a5                                  // 324D  MOVEA.W   A5,A1
        b       fetch
        extsh   a1, a6                                  // 324E  MOVEA.W   A6,A1
        b       fetch
        extsh   a1, a7                                  // 324F  MOVEA.W   A7,A1
        b       fetch
        lha     a1, 0(a0)                               // 3250  MOVEA.W   (A0),A1
        b       fetch
        lha     a1, 0(a1)                               // 3251  MOVEA.W   (A1),A1
        b       fetch
        lha     a1, 0(a2)                               // 3252  MOVEA.W   (A2),A1
        b       fetch
        lha     a1, 0(a3)                               // 3253  MOVEA.W   (A3),A1
        b       fetch
        lha     a1, 0(a4)                               // 3254  MOVEA.W   (A4),A1
        b       fetch
        lha     a1, 0(a5)                               // 3255  MOVEA.W   (A5),A1
        b       fetch
        lha     a1, 0(a6)                               // 3256  MOVEA.W   (A6),A1
        b       fetch
        lha     a1, 0(a7)                               // 3257  MOVEA.W   (A7),A1
        b       fetch
        ori     rtn_addr, code_ptr, movea_mem_a1 - cb   // 3258  MOVEA.W   (A0)+,A1
        b       fea_w_30
        lha     a1, 0(a1)                               // 3259  MOVEA.W   (A1)+,A1
        b       fetch
        ori     rtn_addr, code_ptr, movea_mem_a1 - cb   // 325A  MOVEA.W   (A2)+,A1
        b       fea_w_32
        ori     rtn_addr, code_ptr, movea_mem_a1 - cb   // 325B  MOVEA.W   (A3)+,A1
        b       fea_w_33
        ori     rtn_addr, code_ptr, movea_mem_a1 - cb   // 325C  MOVEA.W   (A4)+,A1
        b       fea_w_34
        ori     rtn_addr, code_ptr, movea_mem_a1 - cb   // 325D  MOVEA.W   (A5)+,A1
        b       fea_w_35
        ori     rtn_addr, code_ptr, movea_mem_a1 - cb   // 325E  MOVEA.W   (A6)+,A1
        b       fea_w_36
        ori     rtn_addr, code_ptr, movea_mem_a1 - cb   // 325F  MOVEA.W   (A7)+,A1
        b       fea_w_37
        lhau    a1, -2(a0)                              // 3260  MOVEA.W   -(A0),A1
        b       fetch
        lha     a1, -2(a1)                              // 3261  MOVEA.W   -(A1),A1
        b       fetch
        lhau    a1, -2(a2)                              // 3262  MOVEA.W   -(A2),A1
        b       fetch
        lhau    a1, -2(a3)                              // 3263  MOVEA.W   -(A3),A1
        b       fetch
        lhau    a1, -2(a4)                              // 3264  MOVEA.W   -(A4),A1
        b       fetch
        lhau    a1, -2(a5)                              // 3265  MOVEA.W   -(A5),A1
        b       fetch
        lhau    a1, -2(a6)                              // 3266  MOVEA.W   -(A6),A1
        b       fetch
        lhau    a1, -2(a7)                              // 3267  MOVEA.W   -(A7),A1
        b       fetch
        lhax    a1, a0, prefetch_data                   // 3268  MOVEA.W   (d16,A0),A1
        b       fetch_skip_word
        lhax    a1, a1, prefetch_data                   // 3269  MOVEA.W   (d16,A1),A1
        b       fetch_skip_word
        lhax    a1, a2, prefetch_data                   // 326A  MOVEA.W   (d16,A2),A1
        b       fetch_skip_word
        lhax    a1, a3, prefetch_data                   // 326B  MOVEA.W   (d16,A3),A1
        b       fetch_skip_word
        lhax    a1, a4, prefetch_data                   // 326C  MOVEA.W   (d16,A4),A1
        b       fetch_skip_word
        lhax    a1, a5, prefetch_data                   // 326D  MOVEA.W   (d16,A5),A1
        b       fetch_skip_word
        lhax    a1, a6, prefetch_data                   // 326E  MOVEA.W   (d16,A6),A1
        b       fetch_skip_word
        lhax    a1, a7, prefetch_data                   // 326F  MOVEA.W   (d16,A7),A1
        b       fetch_skip_word
        ori     rtn_addr, code_ptr, movea_mem_a1 - cb   // 3270  MOVEA.W   (d8,A0,Xn),A1
        b       fea_w_60
        ori     rtn_addr, code_ptr, movea_mem_a1 - cb   // 3271  MOVEA.W   (d8,A1,Xn),A1
        b       fea_w_61
        ori     rtn_addr, code_ptr, movea_mem_a1 - cb   // 3272  MOVEA.W   (d8,A2,Xn),A1
        b       fea_w_62
        ori     rtn_addr, code_ptr, movea_mem_a1 - cb   // 3273  MOVEA.W   (d8,A3,Xn),A1
        b       fea_w_63
        ori     rtn_addr, code_ptr, movea_mem_a1 - cb   // 3274  MOVEA.W   (d8,A4,Xn),A1
        b       fea_w_64
        ori     rtn_addr, code_ptr, movea_mem_a1 - cb   // 3275  MOVEA.W   (d8,A5,Xn),A1
        b       fea_w_65
        ori     rtn_addr, code_ptr, movea_mem_a1 - cb   // 3276  MOVEA.W   (d8,A6,Xn),A1
        b       fea_w_66
        ori     rtn_addr, code_ptr, movea_mem_a1 - cb   // 3277  MOVEA.W   (d8,A7,Xn),A1
        b       fea_w_67
        lha     a1, 0(prefetch_data)                    // 3278  MOVEA.W   (xxx).W,A1
        b       fetch_skip_word
        ori     rtn_addr, code_ptr, movea_mem_a1 - cb   // 3279  MOVEA.W   (xxx).L,A1
        b       fea_w_71
        lhax    a1, pc, prefetch_data                   // 327A  MOVEA.W   (d16,PC),A1
        b       fetch_skip_word
        ori     rtn_addr, code_ptr, movea_mem_a1 - cb   // 327B  MOVEA.W   (d8,PC,Xn),A1
        b       fea_w_73
        mr      a1, prefetch_data                       // 327C  MOVEA.W   #<data>,A1
        b       fetch_skip_word
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 327D  MOVEA.W   <ea 7.5>,A1   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 327E  MOVEA.W   <ea 7.6>,A1   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 327F  MOVEA.W   <ea 7.7>,A1   (illegal)
        b       take_illegal_instruction

// ---- $3280-$32BF --------------------------------------------------------
        extsh   data, d0                                // 3280  MOVE.W    D0,(A1)
        b       move_w_mem_mem_4
        extsh   data, d1                                // 3281  MOVE.W    D1,(A1)
        b       move_w_mem_mem_4
        extsh   data, d2                                // 3282  MOVE.W    D2,(A1)
        b       move_w_mem_mem_4
        extsh   data, d3                                // 3283  MOVE.W    D3,(A1)
        b       move_w_mem_mem_4
        extsh   data, d4                                // 3284  MOVE.W    D4,(A1)
        b       move_w_mem_mem_4
        extsh   data, d5                                // 3285  MOVE.W    D5,(A1)
        b       move_w_mem_mem_4
        extsh   data, d6                                // 3286  MOVE.W    D6,(A1)
        b       move_w_mem_mem_4
        extsh   data, d7                                // 3287  MOVE.W    D7,(A1)
        b       move_w_mem_mem_4
        extsh   data, a0                                // 3288  MOVE.W    A0,(A1)
        b       move_w_mem_mem_4
        extsh   data, a1                                // 3289  MOVE.W    A1,(A1)
        b       move_w_mem_mem_4
        extsh   data, a2                                // 328A  MOVE.W    A2,(A1)
        b       move_w_mem_mem_4
        extsh   data, a3                                // 328B  MOVE.W    A3,(A1)
        b       move_w_mem_mem_4
        extsh   data, a4                                // 328C  MOVE.W    A4,(A1)
        b       move_w_mem_mem_4
        extsh   data, a5                                // 328D  MOVE.W    A5,(A1)
        b       move_w_mem_mem_4
        extsh   data, a6                                // 328E  MOVE.W    A6,(A1)
        b       move_w_mem_mem_4
        extsh   data, a7                                // 328F  MOVE.W    A7,(A1)
        b       move_w_mem_mem_4
        lha     data, 0(a0)                             // 3290  MOVE.W    (A0),(A1)
        b       move_w_mem_mem_4
        lha     data, 0(a1)                             // 3291  MOVE.W    (A1),(A1)
        b       test_data
        lha     data, 0(a2)                             // 3292  MOVE.W    (A2),(A1)
        b       move_w_mem_mem_4
        lha     data, 0(a3)                             // 3293  MOVE.W    (A3),(A1)
        b       move_w_mem_mem_4
        lha     data, 0(a4)                             // 3294  MOVE.W    (A4),(A1)
        b       move_w_mem_mem_4
        lha     data, 0(a5)                             // 3295  MOVE.W    (A5),(A1)
        b       move_w_mem_mem_4
        lha     data, 0(a6)                             // 3296  MOVE.W    (A6),(A1)
        b       move_w_mem_mem_4
        lha     data, 0(a7)                             // 3297  MOVE.W    (A7),(A1)
        b       move_w_mem_mem_4
        ori     rtn_addr, code_ptr, move_w_mem_mem_4 - cb  // 3298  MOVE.W    (A0)+,(A1)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_4 - cb  // 3299  MOVE.W    (A1)+,(A1)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_4 - cb  // 329A  MOVE.W    (A2)+,(A1)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_4 - cb  // 329B  MOVE.W    (A3)+,(A1)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_4 - cb  // 329C  MOVE.W    (A4)+,(A1)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_4 - cb  // 329D  MOVE.W    (A5)+,(A1)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_4 - cb  // 329E  MOVE.W    (A6)+,(A1)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_4 - cb  // 329F  MOVE.W    (A7)+,(A1)
        b       fea_w_37
        lhau    data, -2(a0)                            // 32A0  MOVE.W    -(A0),(A1)
        b       move_w_mem_mem_4
        lhau    data, -2(a1)                            // 32A1  MOVE.W    -(A1),(A1)
        b       test_data
        lhau    data, -2(a2)                            // 32A2  MOVE.W    -(A2),(A1)
        b       move_w_mem_mem_4
        lhau    data, -2(a3)                            // 32A3  MOVE.W    -(A3),(A1)
        b       move_w_mem_mem_4
        lhau    data, -2(a4)                            // 32A4  MOVE.W    -(A4),(A1)
        b       move_w_mem_mem_4
        lhau    data, -2(a5)                            // 32A5  MOVE.W    -(A5),(A1)
        b       move_w_mem_mem_4
        lhau    data, -2(a6)                            // 32A6  MOVE.W    -(A6),(A1)
        b       move_w_mem_mem_4
        lhau    data, -2(a7)                            // 32A7  MOVE.W    -(A7),(A1)
        b       move_w_mem_mem_4
        lhax    data, a0, prefetch_data                 // 32A8  MOVE.W    (d16,A0),(A1)
        b       move_w_mem_mem_3
        lhax    data, a1, prefetch_data                 // 32A9  MOVE.W    (d16,A1),(A1)
        b       move_w_mem_mem_3
        lhax    data, a2, prefetch_data                 // 32AA  MOVE.W    (d16,A2),(A1)
        b       move_w_mem_mem_3
        lhax    data, a3, prefetch_data                 // 32AB  MOVE.W    (d16,A3),(A1)
        b       move_w_mem_mem_3
        lhax    data, a4, prefetch_data                 // 32AC  MOVE.W    (d16,A4),(A1)
        b       move_w_mem_mem_3
        lhax    data, a5, prefetch_data                 // 32AD  MOVE.W    (d16,A5),(A1)
        b       move_w_mem_mem_3
        lhax    data, a6, prefetch_data                 // 32AE  MOVE.W    (d16,A6),(A1)
        b       move_w_mem_mem_3
        lhax    data, a7, prefetch_data                 // 32AF  MOVE.W    (d16,A7),(A1)
        b       move_w_mem_mem_3
        ori     rtn_addr, code_ptr, move_w_mem_mem_4 - cb  // 32B0  MOVE.W    (d8,A0,Xn),(A1)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_4 - cb  // 32B1  MOVE.W    (d8,A1,Xn),(A1)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_4 - cb  // 32B2  MOVE.W    (d8,A2,Xn),(A1)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_4 - cb  // 32B3  MOVE.W    (d8,A3,Xn),(A1)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_4 - cb  // 32B4  MOVE.W    (d8,A4,Xn),(A1)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_4 - cb  // 32B5  MOVE.W    (d8,A5,Xn),(A1)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_4 - cb  // 32B6  MOVE.W    (d8,A6,Xn),(A1)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_4 - cb  // 32B7  MOVE.W    (d8,A7,Xn),(A1)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 32B8  MOVE.W    (xxx).W,(A1)
        b       move_w_mem_mem_3
        ori     rtn_addr, code_ptr, move_w_mem_mem_4 - cb  // 32B9  MOVE.W    (xxx).L,(A1)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 32BA  MOVE.W    (d16,PC),(A1)
        b       move_w_mem_mem_3
        ori     rtn_addr, code_ptr, move_w_mem_mem_4 - cb  // 32BB  MOVE.W    (d8,PC,Xn),(A1)
        b       fea_w_73
        sth     prefetch_data, 0(a1)                    // 32BC  MOVE.W    #<data>,(A1)
        b       move_w_imm_any
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 32BD  MOVE.W    <ea 7.5>,(A1)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 32BE  MOVE.W    <ea 7.6>,(A1)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 32BF  MOVE.W    <ea 7.7>,(A1)   (illegal)
        b       take_illegal_instruction

// ---- $32C0-$32FF --------------------------------------------------------
        extsh   data, d0                                // 32C0  MOVE.W    D0,(A1)+
        b       move_w_mem_mem_36
        extsh   data, d1                                // 32C1  MOVE.W    D1,(A1)+
        b       move_w_mem_mem_36
        extsh   data, d2                                // 32C2  MOVE.W    D2,(A1)+
        b       move_w_mem_mem_36
        extsh   data, d3                                // 32C3  MOVE.W    D3,(A1)+
        b       move_w_mem_mem_36
        extsh   data, d4                                // 32C4  MOVE.W    D4,(A1)+
        b       move_w_mem_mem_36
        extsh   data, d5                                // 32C5  MOVE.W    D5,(A1)+
        b       move_w_mem_mem_36
        extsh   data, d6                                // 32C6  MOVE.W    D6,(A1)+
        b       move_w_mem_mem_36
        extsh   data, d7                                // 32C7  MOVE.W    D7,(A1)+
        b       move_w_mem_mem_36
        extsh   data, a0                                // 32C8  MOVE.W    A0,(A1)+
        b       move_w_mem_mem_36
        extsh   data, a1                                // 32C9  MOVE.W    A1,(A1)+
        b       move_w_mem_mem_36
        extsh   data, a2                                // 32CA  MOVE.W    A2,(A1)+
        b       move_w_mem_mem_36
        extsh   data, a3                                // 32CB  MOVE.W    A3,(A1)+
        b       move_w_mem_mem_36
        extsh   data, a4                                // 32CC  MOVE.W    A4,(A1)+
        b       move_w_mem_mem_36
        extsh   data, a5                                // 32CD  MOVE.W    A5,(A1)+
        b       move_w_mem_mem_36
        extsh   data, a6                                // 32CE  MOVE.W    A6,(A1)+
        b       move_w_mem_mem_36
        extsh   data, a7                                // 32CF  MOVE.W    A7,(A1)+
        b       move_w_mem_mem_36
        lha     data, 0(a0)                             // 32D0  MOVE.W    (A0),(A1)+
        b       move_w_mem_mem_36
        lha     data, 0(a1)                             // 32D1  MOVE.W    (A1),(A1)+
        b       move_w_mem_mem_36
        lha     data, 0(a2)                             // 32D2  MOVE.W    (A2),(A1)+
        b       move_w_mem_mem_36
        lha     data, 0(a3)                             // 32D3  MOVE.W    (A3),(A1)+
        b       move_w_mem_mem_36
        lha     data, 0(a4)                             // 32D4  MOVE.W    (A4),(A1)+
        b       move_w_mem_mem_36
        lha     data, 0(a5)                             // 32D5  MOVE.W    (A5),(A1)+
        b       move_w_mem_mem_36
        lha     data, 0(a6)                             // 32D6  MOVE.W    (A6),(A1)+
        b       move_w_mem_mem_36
        lha     data, 0(a7)                             // 32D7  MOVE.W    (A7),(A1)+
        b       move_w_mem_mem_36
        rlwimi  disp_table, prefetch_data, 3, 13, 28    // 32D8  MOVE.W    (A0)+,(A1)+
        b       move_w_mem_mem_59
        ori     rtn_addr, code_ptr, move_w_mem_mem_36 - cb  // 32D9  MOVE.W    (A1)+,(A1)+
        b       fea_w_31
        rlwimi  disp_table, prefetch_data, 3, 13, 28    // 32DA  MOVE.W    (A2)+,(A1)+
        b       move_w_mem_mem_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_36 - cb  // 32DB  MOVE.W    (A3)+,(A1)+
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_36 - cb  // 32DC  MOVE.W    (A4)+,(A1)+
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_36 - cb  // 32DD  MOVE.W    (A5)+,(A1)+
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_36 - cb  // 32DE  MOVE.W    (A6)+,(A1)+
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_36 - cb  // 32DF  MOVE.W    (A7)+,(A1)+
        b       fea_w_37
        lhau    data, -2(a0)                            // 32E0  MOVE.W    -(A0),(A1)+
        b       move_w_mem_mem_36
        lha     data, -2(a1)                            // 32E1  MOVE.W    -(A1),(A1)+
        b       test_data
        lhau    data, -2(a2)                            // 32E2  MOVE.W    -(A2),(A1)+
        b       move_w_mem_mem_36
        lhau    data, -2(a3)                            // 32E3  MOVE.W    -(A3),(A1)+
        b       move_w_mem_mem_36
        lhau    data, -2(a4)                            // 32E4  MOVE.W    -(A4),(A1)+
        b       move_w_mem_mem_36
        lhau    data, -2(a5)                            // 32E5  MOVE.W    -(A5),(A1)+
        b       move_w_mem_mem_36
        lhau    data, -2(a6)                            // 32E6  MOVE.W    -(A6),(A1)+
        b       move_w_mem_mem_36
        lhau    data, -2(a7)                            // 32E7  MOVE.W    -(A7),(A1)+
        b       move_w_mem_mem_36
        lhax    data, a0, prefetch_data                 // 32E8  MOVE.W    (d16,A0),(A1)+
        b       move_w_ea_mem_4
        lhax    data, a1, prefetch_data                 // 32E9  MOVE.W    (d16,A1),(A1)+
        b       move_w_ea_mem_4
        lhax    data, a2, prefetch_data                 // 32EA  MOVE.W    (d16,A2),(A1)+
        b       move_w_ea_mem_4
        lhax    data, a3, prefetch_data                 // 32EB  MOVE.W    (d16,A3),(A1)+
        b       move_w_ea_mem_4
        lhax    data, a4, prefetch_data                 // 32EC  MOVE.W    (d16,A4),(A1)+
        b       move_w_ea_mem_4
        lhax    data, a5, prefetch_data                 // 32ED  MOVE.W    (d16,A5),(A1)+
        b       move_w_ea_mem_4
        lhax    data, a6, prefetch_data                 // 32EE  MOVE.W    (d16,A6),(A1)+
        b       move_w_ea_mem_4
        lhax    data, a7, prefetch_data                 // 32EF  MOVE.W    (d16,A7),(A1)+
        b       move_w_ea_mem_4
        ori     rtn_addr, code_ptr, move_w_mem_mem_36 - cb  // 32F0  MOVE.W    (d8,A0,Xn),(A1)+
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_36 - cb  // 32F1  MOVE.W    (d8,A1,Xn),(A1)+
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_36 - cb  // 32F2  MOVE.W    (d8,A2,Xn),(A1)+
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_36 - cb  // 32F3  MOVE.W    (d8,A3,Xn),(A1)+
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_36 - cb  // 32F4  MOVE.W    (d8,A4,Xn),(A1)+
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_36 - cb  // 32F5  MOVE.W    (d8,A5,Xn),(A1)+
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_36 - cb  // 32F6  MOVE.W    (d8,A6,Xn),(A1)+
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_36 - cb  // 32F7  MOVE.W    (d8,A7,Xn),(A1)+
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 32F8  MOVE.W    (xxx).W,(A1)+
        b       move_w_ea_mem_4
        ori     rtn_addr, code_ptr, move_w_mem_mem_36 - cb  // 32F9  MOVE.W    (xxx).L,(A1)+
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 32FA  MOVE.W    (d16,PC),(A1)+
        b       move_w_ea_mem_4
        ori     rtn_addr, code_ptr, move_w_mem_mem_36 - cb  // 32FB  MOVE.W    (d8,PC,Xn),(A1)+
        b       fea_w_73
        extsh   data, prefetch_data                     // 32FC  MOVE.W    #<data>,(A1)+
        b       move_w_ea_mem_4
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 32FD  MOVE.W    <ea 7.5>,(A1)+   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 32FE  MOVE.W    <ea 7.6>,(A1)+   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 32FF  MOVE.W    <ea 7.7>,(A1)+   (illegal)
        b       take_illegal_instruction

// ---- $3300-$333F --------------------------------------------------------
        extsh   data, d0                                // 3300  MOVE.W    D0,-(A1)
        b       move_w_mem_mem_20
        extsh   data, d1                                // 3301  MOVE.W    D1,-(A1)
        b       move_w_mem_mem_20
        extsh   data, d2                                // 3302  MOVE.W    D2,-(A1)
        b       move_w_mem_mem_20
        extsh   data, d3                                // 3303  MOVE.W    D3,-(A1)
        b       move_w_mem_mem_20
        extsh   data, d4                                // 3304  MOVE.W    D4,-(A1)
        b       move_w_mem_mem_20
        extsh   data, d5                                // 3305  MOVE.W    D5,-(A1)
        b       move_w_mem_mem_20
        extsh   data, d6                                // 3306  MOVE.W    D6,-(A1)
        b       move_w_mem_mem_20
        extsh   data, d7                                // 3307  MOVE.W    D7,-(A1)
        b       move_w_mem_mem_20
        extsh   data, a0                                // 3308  MOVE.W    A0,-(A1)
        b       move_w_mem_mem_20
        extsh   data, a1                                // 3309  MOVE.W    A1,-(A1)
        b       move_w_mem_mem_20
        extsh   data, a2                                // 330A  MOVE.W    A2,-(A1)
        b       move_w_mem_mem_20
        extsh   data, a3                                // 330B  MOVE.W    A3,-(A1)
        b       move_w_mem_mem_20
        extsh   data, a4                                // 330C  MOVE.W    A4,-(A1)
        b       move_w_mem_mem_20
        extsh   data, a5                                // 330D  MOVE.W    A5,-(A1)
        b       move_w_mem_mem_20
        extsh   data, a6                                // 330E  MOVE.W    A6,-(A1)
        b       move_w_mem_mem_20
        extsh   data, a7                                // 330F  MOVE.W    A7,-(A1)
        b       move_w_mem_mem_20
        lha     data, 0(a0)                             // 3310  MOVE.W    (A0),-(A1)
        b       move_w_mem_mem_20
        lha     data, 0(a1)                             // 3311  MOVE.W    (A1),-(A1)
        b       move_w_mem_mem_20
        lha     data, 0(a2)                             // 3312  MOVE.W    (A2),-(A1)
        b       move_w_mem_mem_20
        lha     data, 0(a3)                             // 3313  MOVE.W    (A3),-(A1)
        b       move_w_mem_mem_20
        lha     data, 0(a4)                             // 3314  MOVE.W    (A4),-(A1)
        b       move_w_mem_mem_20
        lha     data, 0(a5)                             // 3315  MOVE.W    (A5),-(A1)
        b       move_w_mem_mem_20
        lha     data, 0(a6)                             // 3316  MOVE.W    (A6),-(A1)
        b       move_w_mem_mem_20
        lha     data, 0(a7)                             // 3317  MOVE.W    (A7),-(A1)
        b       move_w_mem_mem_20
        ori     rtn_addr, code_ptr, move_w_mem_mem_20 - cb  // 3318  MOVE.W    (A0)+,-(A1)
        b       fea_w_30
        lha     data, 0(a1)                             // 3319  MOVE.W    (A1)+,-(A1)
        b       test_data
        ori     rtn_addr, code_ptr, move_w_mem_mem_20 - cb  // 331A  MOVE.W    (A2)+,-(A1)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_20 - cb  // 331B  MOVE.W    (A3)+,-(A1)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_20 - cb  // 331C  MOVE.W    (A4)+,-(A1)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_20 - cb  // 331D  MOVE.W    (A5)+,-(A1)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_20 - cb  // 331E  MOVE.W    (A6)+,-(A1)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_20 - cb  // 331F  MOVE.W    (A7)+,-(A1)
        b       fea_w_37
        lhau    data, -2(a0)                            // 3320  MOVE.W    -(A0),-(A1)
        b       move_w_mem_mem_20
        lhau    data, -2(a1)                            // 3321  MOVE.W    -(A1),-(A1)
        b       move_w_mem_mem_20
        lhau    data, -2(a2)                            // 3322  MOVE.W    -(A2),-(A1)
        b       move_w_mem_mem_20
        lhau    data, -2(a3)                            // 3323  MOVE.W    -(A3),-(A1)
        b       move_w_mem_mem_20
        lhau    data, -2(a4)                            // 3324  MOVE.W    -(A4),-(A1)
        b       move_w_mem_mem_20
        lhau    data, -2(a5)                            // 3325  MOVE.W    -(A5),-(A1)
        b       move_w_mem_mem_20
        lhau    data, -2(a6)                            // 3326  MOVE.W    -(A6),-(A1)
        b       move_w_mem_mem_20
        lhau    data, -2(a7)                            // 3327  MOVE.W    -(A7),-(A1)
        b       move_w_mem_mem_20
        lhax    data, a0, prefetch_data                 // 3328  MOVE.W    (d16,A0),-(A1)
        b       move_w_mem_mem_19
        lhax    data, a1, prefetch_data                 // 3329  MOVE.W    (d16,A1),-(A1)
        b       move_w_mem_mem_19
        lhax    data, a2, prefetch_data                 // 332A  MOVE.W    (d16,A2),-(A1)
        b       move_w_mem_mem_19
        lhax    data, a3, prefetch_data                 // 332B  MOVE.W    (d16,A3),-(A1)
        b       move_w_mem_mem_19
        lhax    data, a4, prefetch_data                 // 332C  MOVE.W    (d16,A4),-(A1)
        b       move_w_mem_mem_19
        lhax    data, a5, prefetch_data                 // 332D  MOVE.W    (d16,A5),-(A1)
        b       move_w_mem_mem_19
        lhax    data, a6, prefetch_data                 // 332E  MOVE.W    (d16,A6),-(A1)
        b       move_w_mem_mem_19
        lhax    data, a7, prefetch_data                 // 332F  MOVE.W    (d16,A7),-(A1)
        b       move_w_mem_mem_19
        ori     rtn_addr, code_ptr, move_w_mem_mem_20 - cb  // 3330  MOVE.W    (d8,A0,Xn),-(A1)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_20 - cb  // 3331  MOVE.W    (d8,A1,Xn),-(A1)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_20 - cb  // 3332  MOVE.W    (d8,A2,Xn),-(A1)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_20 - cb  // 3333  MOVE.W    (d8,A3,Xn),-(A1)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_20 - cb  // 3334  MOVE.W    (d8,A4,Xn),-(A1)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_20 - cb  // 3335  MOVE.W    (d8,A5,Xn),-(A1)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_20 - cb  // 3336  MOVE.W    (d8,A6,Xn),-(A1)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_20 - cb  // 3337  MOVE.W    (d8,A7,Xn),-(A1)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3338  MOVE.W    (xxx).W,-(A1)
        b       move_w_mem_mem_19
        ori     rtn_addr, code_ptr, move_w_mem_mem_20 - cb  // 3339  MOVE.W    (xxx).L,-(A1)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 333A  MOVE.W    (d16,PC),-(A1)
        b       move_w_mem_mem_19
        ori     rtn_addr, code_ptr, move_w_mem_mem_20 - cb  // 333B  MOVE.W    (d8,PC,Xn),-(A1)
        b       fea_w_73
        sthu    prefetch_data, -2(a1)                   // 333C  MOVE.W    #<data>,-(A1)
        b       move_w_imm_any
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 333D  MOVE.W    <ea 7.5>,-(A1)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 333E  MOVE.W    <ea 7.6>,-(A1)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 333F  MOVE.W    <ea 7.7>,-(A1)   (illegal)
        b       take_illegal_instruction

// ---- $3340-$337F --------------------------------------------------------
        sthx    d0, a1, prefetch_data                   // 3340  MOVE.W    D0,(d16,A1)
        b       move_w_d0_mem
        extsh   data, d1                                // 3341  MOVE.W    D1,(d16,A1)
        b       move_w_mem_mem_37
        extsh   data, d2                                // 3342  MOVE.W    D2,(d16,A1)
        b       move_w_mem_mem_37
        extsh   data, d3                                // 3343  MOVE.W    D3,(d16,A1)
        b       move_w_mem_mem_37
        extsh   data, d4                                // 3344  MOVE.W    D4,(d16,A1)
        b       move_w_mem_mem_37
        extsh   data, d5                                // 3345  MOVE.W    D5,(d16,A1)
        b       move_w_mem_mem_37
        extsh   data, d6                                // 3346  MOVE.W    D6,(d16,A1)
        b       move_w_mem_mem_37
        extsh   data, d7                                // 3347  MOVE.W    D7,(d16,A1)
        b       move_w_mem_mem_37
        extsh   data, a0                                // 3348  MOVE.W    A0,(d16,A1)
        b       move_w_mem_mem_37
        extsh   data, a1                                // 3349  MOVE.W    A1,(d16,A1)
        b       move_w_mem_mem_37
        extsh   data, a2                                // 334A  MOVE.W    A2,(d16,A1)
        b       move_w_mem_mem_37
        extsh   data, a3                                // 334B  MOVE.W    A3,(d16,A1)
        b       move_w_mem_mem_37
        extsh   data, a4                                // 334C  MOVE.W    A4,(d16,A1)
        b       move_w_mem_mem_37
        extsh   data, a5                                // 334D  MOVE.W    A5,(d16,A1)
        b       move_w_mem_mem_37
        extsh   data, a6                                // 334E  MOVE.W    A6,(d16,A1)
        b       move_w_mem_mem_37
        extsh   data, a7                                // 334F  MOVE.W    A7,(d16,A1)
        b       move_w_mem_mem_37
        lha     data, 0(a0)                             // 3350  MOVE.W    (A0),(d16,A1)
        b       move_w_mem_mem_37
        lha     data, 0(a1)                             // 3351  MOVE.W    (A1),(d16,A1)
        b       move_w_mem_mem_37
        lha     data, 0(a2)                             // 3352  MOVE.W    (A2),(d16,A1)
        b       move_w_mem_mem_37
        lha     data, 0(a3)                             // 3353  MOVE.W    (A3),(d16,A1)
        b       move_w_mem_mem_37
        lha     data, 0(a4)                             // 3354  MOVE.W    (A4),(d16,A1)
        b       move_w_mem_mem_37
        lha     data, 0(a5)                             // 3355  MOVE.W    (A5),(d16,A1)
        b       move_w_mem_mem_37
        lha     data, 0(a6)                             // 3356  MOVE.W    (A6),(d16,A1)
        b       move_w_mem_mem_37
        lha     data, 0(a7)                             // 3357  MOVE.W    (A7),(d16,A1)
        b       move_w_mem_mem_37
        ori     rtn_addr, code_ptr, move_w_mem_mem_37 - cb  // 3358  MOVE.W    (A0)+,(d16,A1)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_37 - cb  // 3359  MOVE.W    (A1)+,(d16,A1)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_37 - cb  // 335A  MOVE.W    (A2)+,(d16,A1)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_37 - cb  // 335B  MOVE.W    (A3)+,(d16,A1)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_37 - cb  // 335C  MOVE.W    (A4)+,(d16,A1)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_37 - cb  // 335D  MOVE.W    (A5)+,(d16,A1)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_37 - cb  // 335E  MOVE.W    (A6)+,(d16,A1)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_37 - cb  // 335F  MOVE.W    (A7)+,(d16,A1)
        b       fea_w_37
        lhau    data, -2(a0)                            // 3360  MOVE.W    -(A0),(d16,A1)
        b       move_w_mem_mem_37
        lhau    data, -2(a1)                            // 3361  MOVE.W    -(A1),(d16,A1)
        b       move_w_mem_mem_37
        lhau    data, -2(a2)                            // 3362  MOVE.W    -(A2),(d16,A1)
        b       move_w_mem_mem_37
        lhau    data, -2(a3)                            // 3363  MOVE.W    -(A3),(d16,A1)
        b       move_w_mem_mem_37
        lhau    data, -2(a4)                            // 3364  MOVE.W    -(A4),(d16,A1)
        b       move_w_mem_mem_37
        lhau    data, -2(a5)                            // 3365  MOVE.W    -(A5),(d16,A1)
        b       move_w_mem_mem_37
        lhau    data, -2(a6)                            // 3366  MOVE.W    -(A6),(d16,A1)
        b       move_w_mem_mem_37
        lhau    data, -2(a7)                            // 3367  MOVE.W    -(A7),(d16,A1)
        b       move_w_mem_mem_37
        lhax    data, a0, prefetch_data                 // 3368  MOVE.W    (d16,A0),(d16,A1)
        b       move_w_ea_mem_5
        lhax    data, a1, prefetch_data                 // 3369  MOVE.W    (d16,A1),(d16,A1)
        b       move_w_ea_mem_5
        lhax    data, a2, prefetch_data                 // 336A  MOVE.W    (d16,A2),(d16,A1)
        b       move_w_ea_mem_5
        lhax    data, a3, prefetch_data                 // 336B  MOVE.W    (d16,A3),(d16,A1)
        b       move_w_ea_mem_5
        lhax    data, a4, prefetch_data                 // 336C  MOVE.W    (d16,A4),(d16,A1)
        b       move_w_ea_mem_5
        lhax    data, a5, prefetch_data                 // 336D  MOVE.W    (d16,A5),(d16,A1)
        b       move_w_ea_mem_5
        lhax    data, a6, prefetch_data                 // 336E  MOVE.W    (d16,A6),(d16,A1)
        b       move_w_ea_mem_5
        lhax    data, a7, prefetch_data                 // 336F  MOVE.W    (d16,A7),(d16,A1)
        b       move_w_ea_mem_5
        ori     rtn_addr, code_ptr, move_w_mem_mem_37 - cb  // 3370  MOVE.W    (d8,A0,Xn),(d16,A1)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_37 - cb  // 3371  MOVE.W    (d8,A1,Xn),(d16,A1)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_37 - cb  // 3372  MOVE.W    (d8,A2,Xn),(d16,A1)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_37 - cb  // 3373  MOVE.W    (d8,A3,Xn),(d16,A1)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_37 - cb  // 3374  MOVE.W    (d8,A4,Xn),(d16,A1)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_37 - cb  // 3375  MOVE.W    (d8,A5,Xn),(d16,A1)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_37 - cb  // 3376  MOVE.W    (d8,A6,Xn),(d16,A1)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_37 - cb  // 3377  MOVE.W    (d8,A7,Xn),(d16,A1)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3378  MOVE.W    (xxx).W,(d16,A1)
        b       move_w_ea_mem_5
        ori     rtn_addr, code_ptr, move_w_mem_mem_37 - cb  // 3379  MOVE.W    (xxx).L,(d16,A1)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 337A  MOVE.W    (d16,PC),(d16,A1)
        b       move_w_ea_mem_5
        ori     rtn_addr, code_ptr, move_w_mem_mem_37 - cb  // 337B  MOVE.W    (d8,PC,Xn),(d16,A1)
        b       fea_w_73
        extsh   data, prefetch_data                     // 337C  MOVE.W    #<data>,(d16,A1)
        b       move_w_ea_mem_5
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 337D  MOVE.W    <ea 7.5>,(d16,A1)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 337E  MOVE.W    <ea 7.6>,(d16,A1)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 337F  MOVE.W    <ea 7.7>,(d16,A1)   (illegal)
        b       take_illegal_instruction

// ---- $3380-$33BF --------------------------------------------------------
        extsh   data, d0                                // 3380  MOVE.W    D0,(d8,A1,Xn)
        b       move_w_mem_mem_38
        extsh   data, d1                                // 3381  MOVE.W    D1,(d8,A1,Xn)
        b       move_w_mem_mem_38
        extsh   data, d2                                // 3382  MOVE.W    D2,(d8,A1,Xn)
        b       move_w_mem_mem_38
        extsh   data, d3                                // 3383  MOVE.W    D3,(d8,A1,Xn)
        b       move_w_mem_mem_38
        extsh   data, d4                                // 3384  MOVE.W    D4,(d8,A1,Xn)
        b       move_w_mem_mem_38
        extsh   data, d5                                // 3385  MOVE.W    D5,(d8,A1,Xn)
        b       move_w_mem_mem_38
        extsh   data, d6                                // 3386  MOVE.W    D6,(d8,A1,Xn)
        b       move_w_mem_mem_38
        extsh   data, d7                                // 3387  MOVE.W    D7,(d8,A1,Xn)
        b       move_w_mem_mem_38
        extsh   data, a0                                // 3388  MOVE.W    A0,(d8,A1,Xn)
        b       move_w_mem_mem_38
        extsh   data, a1                                // 3389  MOVE.W    A1,(d8,A1,Xn)
        b       move_w_mem_mem_38
        extsh   data, a2                                // 338A  MOVE.W    A2,(d8,A1,Xn)
        b       move_w_mem_mem_38
        extsh   data, a3                                // 338B  MOVE.W    A3,(d8,A1,Xn)
        b       move_w_mem_mem_38
        extsh   data, a4                                // 338C  MOVE.W    A4,(d8,A1,Xn)
        b       move_w_mem_mem_38
        extsh   data, a5                                // 338D  MOVE.W    A5,(d8,A1,Xn)
        b       move_w_mem_mem_38
        extsh   data, a6                                // 338E  MOVE.W    A6,(d8,A1,Xn)
        b       move_w_mem_mem_38
        extsh   data, a7                                // 338F  MOVE.W    A7,(d8,A1,Xn)
        b       move_w_mem_mem_38
        lha     data, 0(a0)                             // 3390  MOVE.W    (A0),(d8,A1,Xn)
        b       move_w_mem_mem_38
        lha     data, 0(a1)                             // 3391  MOVE.W    (A1),(d8,A1,Xn)
        b       move_w_mem_mem_38
        lha     data, 0(a2)                             // 3392  MOVE.W    (A2),(d8,A1,Xn)
        b       move_w_mem_mem_38
        lha     data, 0(a3)                             // 3393  MOVE.W    (A3),(d8,A1,Xn)
        b       move_w_mem_mem_38
        lha     data, 0(a4)                             // 3394  MOVE.W    (A4),(d8,A1,Xn)
        b       move_w_mem_mem_38
        lha     data, 0(a5)                             // 3395  MOVE.W    (A5),(d8,A1,Xn)
        b       move_w_mem_mem_38
        lha     data, 0(a6)                             // 3396  MOVE.W    (A6),(d8,A1,Xn)
        b       move_w_mem_mem_38
        lha     data, 0(a7)                             // 3397  MOVE.W    (A7),(d8,A1,Xn)
        b       move_w_mem_mem_38
        ori     rtn_addr, code_ptr, move_w_mem_mem_38 - cb  // 3398  MOVE.W    (A0)+,(d8,A1,Xn)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_38 - cb  // 3399  MOVE.W    (A1)+,(d8,A1,Xn)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_38 - cb  // 339A  MOVE.W    (A2)+,(d8,A1,Xn)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_38 - cb  // 339B  MOVE.W    (A3)+,(d8,A1,Xn)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_38 - cb  // 339C  MOVE.W    (A4)+,(d8,A1,Xn)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_38 - cb  // 339D  MOVE.W    (A5)+,(d8,A1,Xn)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_38 - cb  // 339E  MOVE.W    (A6)+,(d8,A1,Xn)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_38 - cb  // 339F  MOVE.W    (A7)+,(d8,A1,Xn)
        b       fea_w_37
        lhau    data, -2(a0)                            // 33A0  MOVE.W    -(A0),(d8,A1,Xn)
        b       move_w_mem_mem_38
        lhau    data, -2(a1)                            // 33A1  MOVE.W    -(A1),(d8,A1,Xn)
        b       move_w_mem_mem_38
        lhau    data, -2(a2)                            // 33A2  MOVE.W    -(A2),(d8,A1,Xn)
        b       move_w_mem_mem_38
        lhau    data, -2(a3)                            // 33A3  MOVE.W    -(A3),(d8,A1,Xn)
        b       move_w_mem_mem_38
        lhau    data, -2(a4)                            // 33A4  MOVE.W    -(A4),(d8,A1,Xn)
        b       move_w_mem_mem_38
        lhau    data, -2(a5)                            // 33A5  MOVE.W    -(A5),(d8,A1,Xn)
        b       move_w_mem_mem_38
        lhau    data, -2(a6)                            // 33A6  MOVE.W    -(A6),(d8,A1,Xn)
        b       move_w_mem_mem_38
        lhau    data, -2(a7)                            // 33A7  MOVE.W    -(A7),(d8,A1,Xn)
        b       move_w_mem_mem_38
        lhax    data, a0, prefetch_data                 // 33A8  MOVE.W    (d16,A0),(d8,A1,Xn)
        b       move_w_ea_mem_6
        lhax    data, a1, prefetch_data                 // 33A9  MOVE.W    (d16,A1),(d8,A1,Xn)
        b       move_w_ea_mem_6
        lhax    data, a2, prefetch_data                 // 33AA  MOVE.W    (d16,A2),(d8,A1,Xn)
        b       move_w_ea_mem_6
        lhax    data, a3, prefetch_data                 // 33AB  MOVE.W    (d16,A3),(d8,A1,Xn)
        b       move_w_ea_mem_6
        lhax    data, a4, prefetch_data                 // 33AC  MOVE.W    (d16,A4),(d8,A1,Xn)
        b       move_w_ea_mem_6
        lhax    data, a5, prefetch_data                 // 33AD  MOVE.W    (d16,A5),(d8,A1,Xn)
        b       move_w_ea_mem_6
        lhax    data, a6, prefetch_data                 // 33AE  MOVE.W    (d16,A6),(d8,A1,Xn)
        b       move_w_ea_mem_6
        lhax    data, a7, prefetch_data                 // 33AF  MOVE.W    (d16,A7),(d8,A1,Xn)
        b       move_w_ea_mem_6
        ori     rtn_addr, code_ptr, move_w_mem_mem_38 - cb  // 33B0  MOVE.W    (d8,A0,Xn),(d8,A1,Xn)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_38 - cb  // 33B1  MOVE.W    (d8,A1,Xn),(d8,A1,Xn)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_38 - cb  // 33B2  MOVE.W    (d8,A2,Xn),(d8,A1,Xn)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_38 - cb  // 33B3  MOVE.W    (d8,A3,Xn),(d8,A1,Xn)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_38 - cb  // 33B4  MOVE.W    (d8,A4,Xn),(d8,A1,Xn)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_38 - cb  // 33B5  MOVE.W    (d8,A5,Xn),(d8,A1,Xn)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_38 - cb  // 33B6  MOVE.W    (d8,A6,Xn),(d8,A1,Xn)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_38 - cb  // 33B7  MOVE.W    (d8,A7,Xn),(d8,A1,Xn)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 33B8  MOVE.W    (xxx).W,(d8,A1,Xn)
        b       move_w_ea_mem_6
        ori     rtn_addr, code_ptr, move_w_mem_mem_38 - cb  // 33B9  MOVE.W    (xxx).L,(d8,A1,Xn)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 33BA  MOVE.W    (d16,PC),(d8,A1,Xn)
        b       move_w_ea_mem_6
        ori     rtn_addr, code_ptr, move_w_mem_mem_38 - cb  // 33BB  MOVE.W    (d8,PC,Xn),(d8,A1,Xn)
        b       fea_w_73
        extsh   data, prefetch_data                     // 33BC  MOVE.W    #<data>,(d8,A1,Xn)
        b       move_w_ea_mem_6
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 33BD  MOVE.W    <ea 7.5>,(d8,A1,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 33BE  MOVE.W    <ea 7.6>,(d8,A1,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 33BF  MOVE.W    <ea 7.7>,(d8,A1,Xn)   (illegal)
        b       take_illegal_instruction

// ---- $33C0-$33FF --------------------------------------------------------
        extsh   data, d0                                // 33C0  MOVE.W    D0,(xxx).L
        b       move_w_mem_mem_58
        extsh   data, d1                                // 33C1  MOVE.W    D1,(xxx).L
        b       move_w_mem_mem_58
        extsh   data, d2                                // 33C2  MOVE.W    D2,(xxx).L
        b       move_w_mem_mem_58
        extsh   data, d3                                // 33C3  MOVE.W    D3,(xxx).L
        b       move_w_mem_mem_58
        extsh   data, d4                                // 33C4  MOVE.W    D4,(xxx).L
        b       move_w_mem_mem_58
        extsh   data, d5                                // 33C5  MOVE.W    D5,(xxx).L
        b       move_w_mem_mem_58
        extsh   data, d6                                // 33C6  MOVE.W    D6,(xxx).L
        b       move_w_mem_mem_58
        extsh   data, d7                                // 33C7  MOVE.W    D7,(xxx).L
        b       move_w_mem_mem_58
        extsh   data, a0                                // 33C8  MOVE.W    A0,(xxx).L
        b       move_w_mem_mem_58
        extsh   data, a1                                // 33C9  MOVE.W    A1,(xxx).L
        b       move_w_mem_mem_58
        extsh   data, a2                                // 33CA  MOVE.W    A2,(xxx).L
        b       move_w_mem_mem_58
        extsh   data, a3                                // 33CB  MOVE.W    A3,(xxx).L
        b       move_w_mem_mem_58
        extsh   data, a4                                // 33CC  MOVE.W    A4,(xxx).L
        b       move_w_mem_mem_58
        extsh   data, a5                                // 33CD  MOVE.W    A5,(xxx).L
        b       move_w_mem_mem_58
        extsh   data, a6                                // 33CE  MOVE.W    A6,(xxx).L
        b       move_w_mem_mem_58
        extsh   data, a7                                // 33CF  MOVE.W    A7,(xxx).L
        b       move_w_mem_mem_58
        lha     data, 0(a0)                             // 33D0  MOVE.W    (A0),(xxx).L
        b       move_w_mem_mem_58
        lha     data, 0(a1)                             // 33D1  MOVE.W    (A1),(xxx).L
        b       move_w_mem_mem_58
        lha     data, 0(a2)                             // 33D2  MOVE.W    (A2),(xxx).L
        b       move_w_mem_mem_58
        lha     data, 0(a3)                             // 33D3  MOVE.W    (A3),(xxx).L
        b       move_w_mem_mem_58
        lha     data, 0(a4)                             // 33D4  MOVE.W    (A4),(xxx).L
        b       move_w_mem_mem_58
        lha     data, 0(a5)                             // 33D5  MOVE.W    (A5),(xxx).L
        b       move_w_mem_mem_58
        lha     data, 0(a6)                             // 33D6  MOVE.W    (A6),(xxx).L
        b       move_w_mem_mem_58
        lha     data, 0(a7)                             // 33D7  MOVE.W    (A7),(xxx).L
        b       move_w_mem_mem_58
        ori     rtn_addr, code_ptr, move_w_mem_mem_58 - cb  // 33D8  MOVE.W    (A0)+,(xxx).L
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_58 - cb  // 33D9  MOVE.W    (A1)+,(xxx).L
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_58 - cb  // 33DA  MOVE.W    (A2)+,(xxx).L
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_58 - cb  // 33DB  MOVE.W    (A3)+,(xxx).L
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_58 - cb  // 33DC  MOVE.W    (A4)+,(xxx).L
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_58 - cb  // 33DD  MOVE.W    (A5)+,(xxx).L
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_58 - cb  // 33DE  MOVE.W    (A6)+,(xxx).L
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_58 - cb  // 33DF  MOVE.W    (A7)+,(xxx).L
        b       fea_w_37
        lhau    data, -2(a0)                            // 33E0  MOVE.W    -(A0),(xxx).L
        b       move_w_mem_mem_58
        lhau    data, -2(a1)                            // 33E1  MOVE.W    -(A1),(xxx).L
        b       move_w_mem_mem_58
        lhau    data, -2(a2)                            // 33E2  MOVE.W    -(A2),(xxx).L
        b       move_w_mem_mem_58
        lhau    data, -2(a3)                            // 33E3  MOVE.W    -(A3),(xxx).L
        b       move_w_mem_mem_58
        lhau    data, -2(a4)                            // 33E4  MOVE.W    -(A4),(xxx).L
        b       move_w_mem_mem_58
        lhau    data, -2(a5)                            // 33E5  MOVE.W    -(A5),(xxx).L
        b       move_w_mem_mem_58
        lhau    data, -2(a6)                            // 33E6  MOVE.W    -(A6),(xxx).L
        b       move_w_mem_mem_58
        lhau    data, -2(a7)                            // 33E7  MOVE.W    -(A7),(xxx).L
        b       move_w_mem_mem_58
        lhax    data, a0, prefetch_data                 // 33E8  MOVE.W    (d16,A0),(xxx).L
        b       move_w_ea_mem_26
        lhax    data, a1, prefetch_data                 // 33E9  MOVE.W    (d16,A1),(xxx).L
        b       move_w_ea_mem_26
        lhax    data, a2, prefetch_data                 // 33EA  MOVE.W    (d16,A2),(xxx).L
        b       move_w_ea_mem_26
        lhax    data, a3, prefetch_data                 // 33EB  MOVE.W    (d16,A3),(xxx).L
        b       move_w_ea_mem_26
        lhax    data, a4, prefetch_data                 // 33EC  MOVE.W    (d16,A4),(xxx).L
        b       move_w_ea_mem_26
        lhax    data, a5, prefetch_data                 // 33ED  MOVE.W    (d16,A5),(xxx).L
        b       move_w_ea_mem_26
        lhax    data, a6, prefetch_data                 // 33EE  MOVE.W    (d16,A6),(xxx).L
        b       move_w_ea_mem_26
        lhax    data, a7, prefetch_data                 // 33EF  MOVE.W    (d16,A7),(xxx).L
        b       move_w_ea_mem_26
        ori     rtn_addr, code_ptr, move_w_mem_mem_58 - cb  // 33F0  MOVE.W    (d8,A0,Xn),(xxx).L
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_58 - cb  // 33F1  MOVE.W    (d8,A1,Xn),(xxx).L
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_58 - cb  // 33F2  MOVE.W    (d8,A2,Xn),(xxx).L
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_58 - cb  // 33F3  MOVE.W    (d8,A3,Xn),(xxx).L
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_58 - cb  // 33F4  MOVE.W    (d8,A4,Xn),(xxx).L
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_58 - cb  // 33F5  MOVE.W    (d8,A5,Xn),(xxx).L
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_58 - cb  // 33F6  MOVE.W    (d8,A6,Xn),(xxx).L
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_58 - cb  // 33F7  MOVE.W    (d8,A7,Xn),(xxx).L
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 33F8  MOVE.W    (xxx).W,(xxx).L
        b       move_w_ea_mem_26
        ori     rtn_addr, code_ptr, move_w_mem_mem_58 - cb  // 33F9  MOVE.W    (xxx).L,(xxx).L
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 33FA  MOVE.W    (d16,PC),(xxx).L
        b       move_w_ea_mem_26
        ori     rtn_addr, code_ptr, move_w_mem_mem_58 - cb  // 33FB  MOVE.W    (d8,PC,Xn),(xxx).L
        b       fea_w_73
        extsh   data, prefetch_data                     // 33FC  MOVE.W    #<data>,(xxx).L
        b       move_w_ea_mem_26
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 33FD  MOVE.W    <ea 7.5>,(xxx).L   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 33FE  MOVE.W    <ea 7.6>,(xxx).L   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 33FF  MOVE.W    <ea 7.7>,(xxx).L   (illegal)
        b       take_illegal_instruction

// ---- $3400-$343F --------------------------------------------------------
        rlwimi  d2, d0, 0, 16, 31                       // 3400  MOVE.W    D0,D2
        b       move_w_reg_d2
        rlwimi  d2, d1, 0, 16, 31                       // 3401  MOVE.W    D1,D2
        b       move_w_reg_d2
        slwi.   data, d2, 16                            // 3402  MOVE.W    D2,D2
        b       update_vc_zero
        rlwimi  d2, d3, 0, 16, 31                       // 3403  MOVE.W    D3,D2
        b       move_w_reg_d2
        rlwimi  d2, d4, 0, 16, 31                       // 3404  MOVE.W    D4,D2
        b       move_w_reg_d2
        rlwimi  d2, d5, 0, 16, 31                       // 3405  MOVE.W    D5,D2
        b       move_w_reg_d2
        rlwimi  d2, d6, 0, 16, 31                       // 3406  MOVE.W    D6,D2
        b       move_w_reg_d2
        rlwimi  d2, d7, 0, 16, 31                       // 3407  MOVE.W    D7,D2
        b       move_w_reg_d2
        rlwimi  d2, a0, 0, 16, 31                       // 3408  MOVE.W    A0,D2
        b       move_w_reg_d2
        rlwimi  d2, a1, 0, 16, 31                       // 3409  MOVE.W    A1,D2
        b       move_w_reg_d2
        rlwimi  d2, a2, 0, 16, 31                       // 340A  MOVE.W    A2,D2
        b       move_w_reg_d2
        rlwimi  d2, a3, 0, 16, 31                       // 340B  MOVE.W    A3,D2
        b       move_w_reg_d2
        rlwimi  d2, a4, 0, 16, 31                       // 340C  MOVE.W    A4,D2
        b       move_w_reg_d2
        rlwimi  d2, a5, 0, 16, 31                       // 340D  MOVE.W    A5,D2
        b       move_w_reg_d2
        rlwimi  d2, a6, 0, 16, 31                       // 340E  MOVE.W    A6,D2
        b       move_w_reg_d2
        rlwimi  d2, a7, 0, 16, 31                       // 340F  MOVE.W    A7,D2
        b       move_w_reg_d2
        lha     data, 0(a0)                             // 3410  MOVE.W    (A0),D2
        b       move_w_mem_d2_2
        lha     data, 0(a1)                             // 3411  MOVE.W    (A1),D2
        b       move_w_mem_d2_2
        lha     data, 0(a2)                             // 3412  MOVE.W    (A2),D2
        b       move_w_mem_d2_2
        lha     data, 0(a3)                             // 3413  MOVE.W    (A3),D2
        b       move_w_mem_d2_2
        lha     data, 0(a4)                             // 3414  MOVE.W    (A4),D2
        b       move_w_mem_d2_2
        lha     data, 0(a5)                             // 3415  MOVE.W    (A5),D2
        b       move_w_mem_d2_2
        lha     data, 0(a6)                             // 3416  MOVE.W    (A6),D2
        b       move_w_mem_d2_2
        lha     data, 0(a7)                             // 3417  MOVE.W    (A7),D2
        b       move_w_mem_d2_2
        ori     rtn_addr, code_ptr, move_w_mem_d2_2 - cb  // 3418  MOVE.W    (A0)+,D2
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_d2_2 - cb  // 3419  MOVE.W    (A1)+,D2
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_d2_2 - cb  // 341A  MOVE.W    (A2)+,D2
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_d2_2 - cb  // 341B  MOVE.W    (A3)+,D2
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_d2_2 - cb  // 341C  MOVE.W    (A4)+,D2
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_d2_2 - cb  // 341D  MOVE.W    (A5)+,D2
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_d2_2 - cb  // 341E  MOVE.W    (A6)+,D2
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_d2_2 - cb  // 341F  MOVE.W    (A7)+,D2
        b       fea_w_37
        lhau    data, -2(a0)                            // 3420  MOVE.W    -(A0),D2
        b       move_w_mem_d2_2
        lhau    data, -2(a1)                            // 3421  MOVE.W    -(A1),D2
        b       move_w_mem_d2_2
        lhau    data, -2(a2)                            // 3422  MOVE.W    -(A2),D2
        b       move_w_mem_d2_2
        lhau    data, -2(a3)                            // 3423  MOVE.W    -(A3),D2
        b       move_w_mem_d2_2
        lhau    data, -2(a4)                            // 3424  MOVE.W    -(A4),D2
        b       move_w_mem_d2_2
        lhau    data, -2(a5)                            // 3425  MOVE.W    -(A5),D2
        b       move_w_mem_d2_2
        lhau    data, -2(a6)                            // 3426  MOVE.W    -(A6),D2
        b       move_w_mem_d2_2
        lhau    data, -2(a7)                            // 3427  MOVE.W    -(A7),D2
        b       move_w_mem_d2_2
        lhax    data, a0, prefetch_data                 // 3428  MOVE.W    (d16,A0),D2
        b       move_w_mem_d2
        lhax    data, a1, prefetch_data                 // 3429  MOVE.W    (d16,A1),D2
        b       move_w_mem_d2
        lhax    data, a2, prefetch_data                 // 342A  MOVE.W    (d16,A2),D2
        b       move_w_mem_d2
        lhax    data, a3, prefetch_data                 // 342B  MOVE.W    (d16,A3),D2
        b       move_w_mem_d2
        lhax    data, a4, prefetch_data                 // 342C  MOVE.W    (d16,A4),D2
        b       move_w_mem_d2
        lhax    data, a5, prefetch_data                 // 342D  MOVE.W    (d16,A5),D2
        b       move_w_mem_d2
        lhax    data, a6, prefetch_data                 // 342E  MOVE.W    (d16,A6),D2
        b       move_w_mem_d2
        lhax    data, a7, prefetch_data                 // 342F  MOVE.W    (d16,A7),D2
        b       move_w_mem_d2
        ori     rtn_addr, code_ptr, move_w_mem_d2_2 - cb  // 3430  MOVE.W    (d8,A0,Xn),D2
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_d2_2 - cb  // 3431  MOVE.W    (d8,A1,Xn),D2
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_d2_2 - cb  // 3432  MOVE.W    (d8,A2,Xn),D2
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_d2_2 - cb  // 3433  MOVE.W    (d8,A3,Xn),D2
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_d2_2 - cb  // 3434  MOVE.W    (d8,A4,Xn),D2
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_d2_2 - cb  // 3435  MOVE.W    (d8,A5,Xn),D2
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_d2_2 - cb  // 3436  MOVE.W    (d8,A6,Xn),D2
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_d2_2 - cb  // 3437  MOVE.W    (d8,A7,Xn),D2
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3438  MOVE.W    (xxx).W,D2
        b       move_w_mem_d2
        ori     rtn_addr, code_ptr, move_w_mem_d2_2 - cb  // 3439  MOVE.W    (xxx).L,D2
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 343A  MOVE.W    (d16,PC),D2
        b       move_w_mem_d2
        ori     rtn_addr, code_ptr, move_w_mem_d2_2 - cb  // 343B  MOVE.W    (d8,PC,Xn),D2
        b       fea_w_73
        rlwimi  d2, prefetch_data, 0, 16, 31            // 343C  MOVE.W    #<data>,D2
        b       move_w_imm_any
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 343D  MOVE.W    <ea 7.5>,D2   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 343E  MOVE.W    <ea 7.6>,D2   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 343F  MOVE.W    <ea 7.7>,D2   (illegal)
        b       take_illegal_instruction

// ---- $3440-$347F --------------------------------------------------------
        extsh   a2, d0                                  // 3440  MOVEA.W   D0,A2
        b       fetch
        extsh   a2, d1                                  // 3441  MOVEA.W   D1,A2
        b       fetch
        extsh   a2, d2                                  // 3442  MOVEA.W   D2,A2
        b       fetch
        extsh   a2, d3                                  // 3443  MOVEA.W   D3,A2
        b       fetch
        extsh   a2, d4                                  // 3444  MOVEA.W   D4,A2
        b       fetch
        extsh   a2, d5                                  // 3445  MOVEA.W   D5,A2
        b       fetch
        extsh   a2, d6                                  // 3446  MOVEA.W   D6,A2
        b       fetch
        extsh   a2, d7                                  // 3447  MOVEA.W   D7,A2
        b       fetch
        extsh   a2, a0                                  // 3448  MOVEA.W   A0,A2
        b       fetch
        extsh   a2, a1                                  // 3449  MOVEA.W   A1,A2
        b       fetch
        extsh   a2, a2                                  // 344A  MOVEA.W   A2,A2
        b       fetch
        extsh   a2, a3                                  // 344B  MOVEA.W   A3,A2
        b       fetch
        extsh   a2, a4                                  // 344C  MOVEA.W   A4,A2
        b       fetch
        extsh   a2, a5                                  // 344D  MOVEA.W   A5,A2
        b       fetch
        extsh   a2, a6                                  // 344E  MOVEA.W   A6,A2
        b       fetch
        extsh   a2, a7                                  // 344F  MOVEA.W   A7,A2
        b       fetch
        lha     a2, 0(a0)                               // 3450  MOVEA.W   (A0),A2
        b       fetch
        lha     a2, 0(a1)                               // 3451  MOVEA.W   (A1),A2
        b       fetch
        lha     a2, 0(a2)                               // 3452  MOVEA.W   (A2),A2
        b       fetch
        lha     a2, 0(a3)                               // 3453  MOVEA.W   (A3),A2
        b       fetch
        lha     a2, 0(a4)                               // 3454  MOVEA.W   (A4),A2
        b       fetch
        lha     a2, 0(a5)                               // 3455  MOVEA.W   (A5),A2
        b       fetch
        lha     a2, 0(a6)                               // 3456  MOVEA.W   (A6),A2
        b       fetch
        lha     a2, 0(a7)                               // 3457  MOVEA.W   (A7),A2
        b       fetch
        ori     rtn_addr, code_ptr, movea_mem_a2 - cb   // 3458  MOVEA.W   (A0)+,A2
        b       fea_w_30
        ori     rtn_addr, code_ptr, movea_mem_a2 - cb   // 3459  MOVEA.W   (A1)+,A2
        b       fea_w_31
        lha     a2, 0(a2)                               // 345A  MOVEA.W   (A2)+,A2
        b       fetch
        ori     rtn_addr, code_ptr, movea_mem_a2 - cb   // 345B  MOVEA.W   (A3)+,A2
        b       fea_w_33
        ori     rtn_addr, code_ptr, movea_mem_a2 - cb   // 345C  MOVEA.W   (A4)+,A2
        b       fea_w_34
        ori     rtn_addr, code_ptr, movea_mem_a2 - cb   // 345D  MOVEA.W   (A5)+,A2
        b       fea_w_35
        ori     rtn_addr, code_ptr, movea_mem_a2 - cb   // 345E  MOVEA.W   (A6)+,A2
        b       fea_w_36
        ori     rtn_addr, code_ptr, movea_mem_a2 - cb   // 345F  MOVEA.W   (A7)+,A2
        b       fea_w_37
        lhau    a2, -2(a0)                              // 3460  MOVEA.W   -(A0),A2
        b       fetch
        lhau    a2, -2(a1)                              // 3461  MOVEA.W   -(A1),A2
        b       fetch
        lha     a2, -2(a2)                              // 3462  MOVEA.W   -(A2),A2
        b       fetch
        lhau    a2, -2(a3)                              // 3463  MOVEA.W   -(A3),A2
        b       fetch
        lhau    a2, -2(a4)                              // 3464  MOVEA.W   -(A4),A2
        b       fetch
        lhau    a2, -2(a5)                              // 3465  MOVEA.W   -(A5),A2
        b       fetch
        lhau    a2, -2(a6)                              // 3466  MOVEA.W   -(A6),A2
        b       fetch
        lhau    a2, -2(a7)                              // 3467  MOVEA.W   -(A7),A2
        b       fetch
        lhax    a2, a0, prefetch_data                   // 3468  MOVEA.W   (d16,A0),A2
        b       fetch_skip_word
        lhax    a2, a1, prefetch_data                   // 3469  MOVEA.W   (d16,A1),A2
        b       fetch_skip_word
        lhax    a2, a2, prefetch_data                   // 346A  MOVEA.W   (d16,A2),A2
        b       fetch_skip_word
        lhax    a2, a3, prefetch_data                   // 346B  MOVEA.W   (d16,A3),A2
        b       fetch_skip_word
        lhax    a2, a4, prefetch_data                   // 346C  MOVEA.W   (d16,A4),A2
        b       fetch_skip_word
        lhax    a2, a5, prefetch_data                   // 346D  MOVEA.W   (d16,A5),A2
        b       fetch_skip_word
        lhax    a2, a6, prefetch_data                   // 346E  MOVEA.W   (d16,A6),A2
        b       fetch_skip_word
        lhax    a2, a7, prefetch_data                   // 346F  MOVEA.W   (d16,A7),A2
        b       fetch_skip_word
        ori     rtn_addr, code_ptr, movea_mem_a2 - cb   // 3470  MOVEA.W   (d8,A0,Xn),A2
        b       fea_w_60
        ori     rtn_addr, code_ptr, movea_mem_a2 - cb   // 3471  MOVEA.W   (d8,A1,Xn),A2
        b       fea_w_61
        ori     rtn_addr, code_ptr, movea_mem_a2 - cb   // 3472  MOVEA.W   (d8,A2,Xn),A2
        b       fea_w_62
        ori     rtn_addr, code_ptr, movea_mem_a2 - cb   // 3473  MOVEA.W   (d8,A3,Xn),A2
        b       fea_w_63
        ori     rtn_addr, code_ptr, movea_mem_a2 - cb   // 3474  MOVEA.W   (d8,A4,Xn),A2
        b       fea_w_64
        ori     rtn_addr, code_ptr, movea_mem_a2 - cb   // 3475  MOVEA.W   (d8,A5,Xn),A2
        b       fea_w_65
        ori     rtn_addr, code_ptr, movea_mem_a2 - cb   // 3476  MOVEA.W   (d8,A6,Xn),A2
        b       fea_w_66
        ori     rtn_addr, code_ptr, movea_mem_a2 - cb   // 3477  MOVEA.W   (d8,A7,Xn),A2
        b       fea_w_67
        lha     a2, 0(prefetch_data)                    // 3478  MOVEA.W   (xxx).W,A2
        b       fetch_skip_word
        ori     rtn_addr, code_ptr, movea_mem_a2 - cb   // 3479  MOVEA.W   (xxx).L,A2
        b       fea_w_71
        lhax    a2, pc, prefetch_data                   // 347A  MOVEA.W   (d16,PC),A2
        b       fetch_skip_word
        ori     rtn_addr, code_ptr, movea_mem_a2 - cb   // 347B  MOVEA.W   (d8,PC,Xn),A2
        b       fea_w_73
        mr      a2, prefetch_data                       // 347C  MOVEA.W   #<data>,A2
        b       fetch_skip_word
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 347D  MOVEA.W   <ea 7.5>,A2   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 347E  MOVEA.W   <ea 7.6>,A2   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 347F  MOVEA.W   <ea 7.7>,A2   (illegal)
        b       take_illegal_instruction

// ---- $3480-$34BF --------------------------------------------------------
        extsh   data, d0                                // 3480  MOVE.W    D0,(A2)
        b       move_w_mem_mem_6
        extsh   data, d1                                // 3481  MOVE.W    D1,(A2)
        b       move_w_mem_mem_6
        extsh   data, d2                                // 3482  MOVE.W    D2,(A2)
        b       move_w_mem_mem_6
        extsh   data, d3                                // 3483  MOVE.W    D3,(A2)
        b       move_w_mem_mem_6
        extsh   data, d4                                // 3484  MOVE.W    D4,(A2)
        b       move_w_mem_mem_6
        extsh   data, d5                                // 3485  MOVE.W    D5,(A2)
        b       move_w_mem_mem_6
        extsh   data, d6                                // 3486  MOVE.W    D6,(A2)
        b       move_w_mem_mem_6
        extsh   data, d7                                // 3487  MOVE.W    D7,(A2)
        b       move_w_mem_mem_6
        extsh   data, a0                                // 3488  MOVE.W    A0,(A2)
        b       move_w_mem_mem_6
        extsh   data, a1                                // 3489  MOVE.W    A1,(A2)
        b       move_w_mem_mem_6
        extsh   data, a2                                // 348A  MOVE.W    A2,(A2)
        b       move_w_mem_mem_6
        extsh   data, a3                                // 348B  MOVE.W    A3,(A2)
        b       move_w_mem_mem_6
        extsh   data, a4                                // 348C  MOVE.W    A4,(A2)
        b       move_w_mem_mem_6
        extsh   data, a5                                // 348D  MOVE.W    A5,(A2)
        b       move_w_mem_mem_6
        extsh   data, a6                                // 348E  MOVE.W    A6,(A2)
        b       move_w_mem_mem_6
        extsh   data, a7                                // 348F  MOVE.W    A7,(A2)
        b       move_w_mem_mem_6
        lha     data, 0(a0)                             // 3490  MOVE.W    (A0),(A2)
        b       move_w_mem_mem_6
        lha     data, 0(a1)                             // 3491  MOVE.W    (A1),(A2)
        b       move_w_mem_mem_6
        lha     data, 0(a2)                             // 3492  MOVE.W    (A2),(A2)
        b       test_data
        lha     data, 0(a3)                             // 3493  MOVE.W    (A3),(A2)
        b       move_w_mem_mem_6
        lha     data, 0(a4)                             // 3494  MOVE.W    (A4),(A2)
        b       move_w_mem_mem_6
        lha     data, 0(a5)                             // 3495  MOVE.W    (A5),(A2)
        b       move_w_mem_mem_6
        lha     data, 0(a6)                             // 3496  MOVE.W    (A6),(A2)
        b       move_w_mem_mem_6
        lha     data, 0(a7)                             // 3497  MOVE.W    (A7),(A2)
        b       move_w_mem_mem_6
        ori     rtn_addr, code_ptr, move_w_mem_mem_6 - cb  // 3498  MOVE.W    (A0)+,(A2)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_6 - cb  // 3499  MOVE.W    (A1)+,(A2)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_6 - cb  // 349A  MOVE.W    (A2)+,(A2)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_6 - cb  // 349B  MOVE.W    (A3)+,(A2)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_6 - cb  // 349C  MOVE.W    (A4)+,(A2)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_6 - cb  // 349D  MOVE.W    (A5)+,(A2)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_6 - cb  // 349E  MOVE.W    (A6)+,(A2)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_6 - cb  // 349F  MOVE.W    (A7)+,(A2)
        b       fea_w_37
        lhau    data, -2(a0)                            // 34A0  MOVE.W    -(A0),(A2)
        b       move_w_mem_mem_6
        lhau    data, -2(a1)                            // 34A1  MOVE.W    -(A1),(A2)
        b       move_w_mem_mem_6
        lhau    data, -2(a2)                            // 34A2  MOVE.W    -(A2),(A2)
        b       test_data
        lhau    data, -2(a3)                            // 34A3  MOVE.W    -(A3),(A2)
        b       move_w_mem_mem_6
        lhau    data, -2(a4)                            // 34A4  MOVE.W    -(A4),(A2)
        b       move_w_mem_mem_6
        lhau    data, -2(a5)                            // 34A5  MOVE.W    -(A5),(A2)
        b       move_w_mem_mem_6
        lhau    data, -2(a6)                            // 34A6  MOVE.W    -(A6),(A2)
        b       move_w_mem_mem_6
        lhau    data, -2(a7)                            // 34A7  MOVE.W    -(A7),(A2)
        b       move_w_mem_mem_6
        lhax    data, a0, prefetch_data                 // 34A8  MOVE.W    (d16,A0),(A2)
        b       move_w_mem_mem_5
        lhax    data, a1, prefetch_data                 // 34A9  MOVE.W    (d16,A1),(A2)
        b       move_w_mem_mem_5
        lhax    data, a2, prefetch_data                 // 34AA  MOVE.W    (d16,A2),(A2)
        b       move_w_mem_mem_5
        lhax    data, a3, prefetch_data                 // 34AB  MOVE.W    (d16,A3),(A2)
        b       move_w_mem_mem_5
        lhax    data, a4, prefetch_data                 // 34AC  MOVE.W    (d16,A4),(A2)
        b       move_w_mem_mem_5
        lhax    data, a5, prefetch_data                 // 34AD  MOVE.W    (d16,A5),(A2)
        b       move_w_mem_mem_5
        lhax    data, a6, prefetch_data                 // 34AE  MOVE.W    (d16,A6),(A2)
        b       move_w_mem_mem_5
        lhax    data, a7, prefetch_data                 // 34AF  MOVE.W    (d16,A7),(A2)
        b       move_w_mem_mem_5
        ori     rtn_addr, code_ptr, move_w_mem_mem_6 - cb  // 34B0  MOVE.W    (d8,A0,Xn),(A2)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_6 - cb  // 34B1  MOVE.W    (d8,A1,Xn),(A2)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_6 - cb  // 34B2  MOVE.W    (d8,A2,Xn),(A2)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_6 - cb  // 34B3  MOVE.W    (d8,A3,Xn),(A2)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_6 - cb  // 34B4  MOVE.W    (d8,A4,Xn),(A2)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_6 - cb  // 34B5  MOVE.W    (d8,A5,Xn),(A2)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_6 - cb  // 34B6  MOVE.W    (d8,A6,Xn),(A2)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_6 - cb  // 34B7  MOVE.W    (d8,A7,Xn),(A2)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 34B8  MOVE.W    (xxx).W,(A2)
        b       move_w_mem_mem_5
        ori     rtn_addr, code_ptr, move_w_mem_mem_6 - cb  // 34B9  MOVE.W    (xxx).L,(A2)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 34BA  MOVE.W    (d16,PC),(A2)
        b       move_w_mem_mem_5
        ori     rtn_addr, code_ptr, move_w_mem_mem_6 - cb  // 34BB  MOVE.W    (d8,PC,Xn),(A2)
        b       fea_w_73
        sth     prefetch_data, 0(a2)                    // 34BC  MOVE.W    #<data>,(A2)
        b       move_w_imm_any
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 34BD  MOVE.W    <ea 7.5>,(A2)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 34BE  MOVE.W    <ea 7.6>,(A2)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 34BF  MOVE.W    <ea 7.7>,(A2)   (illegal)
        b       take_illegal_instruction

// ---- $34C0-$34FF --------------------------------------------------------
        extsh   data, d0                                // 34C0  MOVE.W    D0,(A2)+
        b       move_w_mem_mem_39
        extsh   data, d1                                // 34C1  MOVE.W    D1,(A2)+
        b       move_w_mem_mem_39
        extsh   data, d2                                // 34C2  MOVE.W    D2,(A2)+
        b       move_w_mem_mem_39
        extsh   data, d3                                // 34C3  MOVE.W    D3,(A2)+
        b       move_w_mem_mem_39
        extsh   data, d4                                // 34C4  MOVE.W    D4,(A2)+
        b       move_w_mem_mem_39
        extsh   data, d5                                // 34C5  MOVE.W    D5,(A2)+
        b       move_w_mem_mem_39
        extsh   data, d6                                // 34C6  MOVE.W    D6,(A2)+
        b       move_w_mem_mem_39
        extsh   data, d7                                // 34C7  MOVE.W    D7,(A2)+
        b       move_w_mem_mem_39
        extsh   data, a0                                // 34C8  MOVE.W    A0,(A2)+
        b       move_w_mem_mem_39
        extsh   data, a1                                // 34C9  MOVE.W    A1,(A2)+
        b       move_w_mem_mem_39
        extsh   data, a2                                // 34CA  MOVE.W    A2,(A2)+
        b       move_w_mem_mem_39
        extsh   data, a3                                // 34CB  MOVE.W    A3,(A2)+
        b       move_w_mem_mem_39
        extsh   data, a4                                // 34CC  MOVE.W    A4,(A2)+
        b       move_w_mem_mem_39
        extsh   data, a5                                // 34CD  MOVE.W    A5,(A2)+
        b       move_w_mem_mem_39
        extsh   data, a6                                // 34CE  MOVE.W    A6,(A2)+
        b       move_w_mem_mem_39
        extsh   data, a7                                // 34CF  MOVE.W    A7,(A2)+
        b       move_w_mem_mem_39
        lha     data, 0(a0)                             // 34D0  MOVE.W    (A0),(A2)+
        b       move_w_mem_mem_39
        lha     data, 0(a1)                             // 34D1  MOVE.W    (A1),(A2)+
        b       move_w_mem_mem_39
        lha     data, 0(a2)                             // 34D2  MOVE.W    (A2),(A2)+
        b       move_w_mem_mem_39
        lha     data, 0(a3)                             // 34D3  MOVE.W    (A3),(A2)+
        b       move_w_mem_mem_39
        lha     data, 0(a4)                             // 34D4  MOVE.W    (A4),(A2)+
        b       move_w_mem_mem_39
        lha     data, 0(a5)                             // 34D5  MOVE.W    (A5),(A2)+
        b       move_w_mem_mem_39
        lha     data, 0(a6)                             // 34D6  MOVE.W    (A6),(A2)+
        b       move_w_mem_mem_39
        lha     data, 0(a7)                             // 34D7  MOVE.W    (A7),(A2)+
        b       move_w_mem_mem_39
        rlwimi  disp_table, prefetch_data, 3, 13, 28    // 34D8  MOVE.W    (A0)+,(A2)+
        b       move_w_mem_mem_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_39 - cb  // 34D9  MOVE.W    (A1)+,(A2)+
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_39 - cb  // 34DA  MOVE.W    (A2)+,(A2)+
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_39 - cb  // 34DB  MOVE.W    (A3)+,(A2)+
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_39 - cb  // 34DC  MOVE.W    (A4)+,(A2)+
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_39 - cb  // 34DD  MOVE.W    (A5)+,(A2)+
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_39 - cb  // 34DE  MOVE.W    (A6)+,(A2)+
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_39 - cb  // 34DF  MOVE.W    (A7)+,(A2)+
        b       fea_w_37
        lhau    data, -2(a0)                            // 34E0  MOVE.W    -(A0),(A2)+
        b       move_w_mem_mem_39
        lhau    data, -2(a1)                            // 34E1  MOVE.W    -(A1),(A2)+
        b       move_w_mem_mem_39
        lha     data, -2(a2)                            // 34E2  MOVE.W    -(A2),(A2)+
        b       test_data
        lhau    data, -2(a3)                            // 34E3  MOVE.W    -(A3),(A2)+
        b       move_w_mem_mem_39
        lhau    data, -2(a4)                            // 34E4  MOVE.W    -(A4),(A2)+
        b       move_w_mem_mem_39
        lhau    data, -2(a5)                            // 34E5  MOVE.W    -(A5),(A2)+
        b       move_w_mem_mem_39
        lhau    data, -2(a6)                            // 34E6  MOVE.W    -(A6),(A2)+
        b       move_w_mem_mem_39
        lhau    data, -2(a7)                            // 34E7  MOVE.W    -(A7),(A2)+
        b       move_w_mem_mem_39
        lhax    data, a0, prefetch_data                 // 34E8  MOVE.W    (d16,A0),(A2)+
        b       move_w_ea_mem_7
        lhax    data, a1, prefetch_data                 // 34E9  MOVE.W    (d16,A1),(A2)+
        b       move_w_ea_mem_7
        lhax    data, a2, prefetch_data                 // 34EA  MOVE.W    (d16,A2),(A2)+
        b       move_w_ea_mem_7
        lhax    data, a3, prefetch_data                 // 34EB  MOVE.W    (d16,A3),(A2)+
        b       move_w_ea_mem_7
        lhax    data, a4, prefetch_data                 // 34EC  MOVE.W    (d16,A4),(A2)+
        b       move_w_ea_mem_7
        lhax    data, a5, prefetch_data                 // 34ED  MOVE.W    (d16,A5),(A2)+
        b       move_w_ea_mem_7
        lhax    data, a6, prefetch_data                 // 34EE  MOVE.W    (d16,A6),(A2)+
        b       move_w_ea_mem_7
        lhax    data, a7, prefetch_data                 // 34EF  MOVE.W    (d16,A7),(A2)+
        b       move_w_ea_mem_7
        ori     rtn_addr, code_ptr, move_w_mem_mem_39 - cb  // 34F0  MOVE.W    (d8,A0,Xn),(A2)+
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_39 - cb  // 34F1  MOVE.W    (d8,A1,Xn),(A2)+
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_39 - cb  // 34F2  MOVE.W    (d8,A2,Xn),(A2)+
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_39 - cb  // 34F3  MOVE.W    (d8,A3,Xn),(A2)+
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_39 - cb  // 34F4  MOVE.W    (d8,A4,Xn),(A2)+
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_39 - cb  // 34F5  MOVE.W    (d8,A5,Xn),(A2)+
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_39 - cb  // 34F6  MOVE.W    (d8,A6,Xn),(A2)+
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_39 - cb  // 34F7  MOVE.W    (d8,A7,Xn),(A2)+
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 34F8  MOVE.W    (xxx).W,(A2)+
        b       move_w_ea_mem_7
        ori     rtn_addr, code_ptr, move_w_mem_mem_39 - cb  // 34F9  MOVE.W    (xxx).L,(A2)+
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 34FA  MOVE.W    (d16,PC),(A2)+
        b       move_w_ea_mem_7
        ori     rtn_addr, code_ptr, move_w_mem_mem_39 - cb  // 34FB  MOVE.W    (d8,PC,Xn),(A2)+
        b       fea_w_73
        extsh   data, prefetch_data                     // 34FC  MOVE.W    #<data>,(A2)+
        b       move_w_ea_mem_7
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 34FD  MOVE.W    <ea 7.5>,(A2)+   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 34FE  MOVE.W    <ea 7.6>,(A2)+   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 34FF  MOVE.W    <ea 7.7>,(A2)+   (illegal)
        b       take_illegal_instruction

// ---- $3500-$353F --------------------------------------------------------
        extsh   data, d0                                // 3500  MOVE.W    D0,-(A2)
        b       move_w_mem_mem_22
        extsh   data, d1                                // 3501  MOVE.W    D1,-(A2)
        b       move_w_mem_mem_22
        extsh   data, d2                                // 3502  MOVE.W    D2,-(A2)
        b       move_w_mem_mem_22
        extsh   data, d3                                // 3503  MOVE.W    D3,-(A2)
        b       move_w_mem_mem_22
        extsh   data, d4                                // 3504  MOVE.W    D4,-(A2)
        b       move_w_mem_mem_22
        extsh   data, d5                                // 3505  MOVE.W    D5,-(A2)
        b       move_w_mem_mem_22
        extsh   data, d6                                // 3506  MOVE.W    D6,-(A2)
        b       move_w_mem_mem_22
        extsh   data, d7                                // 3507  MOVE.W    D7,-(A2)
        b       move_w_mem_mem_22
        extsh   data, a0                                // 3508  MOVE.W    A0,-(A2)
        b       move_w_mem_mem_22
        extsh   data, a1                                // 3509  MOVE.W    A1,-(A2)
        b       move_w_mem_mem_22
        extsh   data, a2                                // 350A  MOVE.W    A2,-(A2)
        b       move_w_mem_mem_22
        extsh   data, a3                                // 350B  MOVE.W    A3,-(A2)
        b       move_w_mem_mem_22
        extsh   data, a4                                // 350C  MOVE.W    A4,-(A2)
        b       move_w_mem_mem_22
        extsh   data, a5                                // 350D  MOVE.W    A5,-(A2)
        b       move_w_mem_mem_22
        extsh   data, a6                                // 350E  MOVE.W    A6,-(A2)
        b       move_w_mem_mem_22
        extsh   data, a7                                // 350F  MOVE.W    A7,-(A2)
        b       move_w_mem_mem_22
        lha     data, 0(a0)                             // 3510  MOVE.W    (A0),-(A2)
        b       move_w_mem_mem_22
        lha     data, 0(a1)                             // 3511  MOVE.W    (A1),-(A2)
        b       move_w_mem_mem_22
        lha     data, 0(a2)                             // 3512  MOVE.W    (A2),-(A2)
        b       move_w_mem_mem_22
        lha     data, 0(a3)                             // 3513  MOVE.W    (A3),-(A2)
        b       move_w_mem_mem_22
        lha     data, 0(a4)                             // 3514  MOVE.W    (A4),-(A2)
        b       move_w_mem_mem_22
        lha     data, 0(a5)                             // 3515  MOVE.W    (A5),-(A2)
        b       move_w_mem_mem_22
        lha     data, 0(a6)                             // 3516  MOVE.W    (A6),-(A2)
        b       move_w_mem_mem_22
        lha     data, 0(a7)                             // 3517  MOVE.W    (A7),-(A2)
        b       move_w_mem_mem_22
        ori     rtn_addr, code_ptr, move_w_mem_mem_22 - cb  // 3518  MOVE.W    (A0)+,-(A2)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_22 - cb  // 3519  MOVE.W    (A1)+,-(A2)
        b       fea_w_31
        lha     data, 0(a2)                             // 351A  MOVE.W    (A2)+,-(A2)
        b       test_data
        ori     rtn_addr, code_ptr, move_w_mem_mem_22 - cb  // 351B  MOVE.W    (A3)+,-(A2)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_22 - cb  // 351C  MOVE.W    (A4)+,-(A2)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_22 - cb  // 351D  MOVE.W    (A5)+,-(A2)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_22 - cb  // 351E  MOVE.W    (A6)+,-(A2)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_22 - cb  // 351F  MOVE.W    (A7)+,-(A2)
        b       fea_w_37
        lhau    data, -2(a0)                            // 3520  MOVE.W    -(A0),-(A2)
        b       move_w_mem_mem_22
        lhau    data, -2(a1)                            // 3521  MOVE.W    -(A1),-(A2)
        b       move_w_mem_mem_22
        lhau    data, -2(a2)                            // 3522  MOVE.W    -(A2),-(A2)
        b       move_w_mem_mem_22
        lhau    data, -2(a3)                            // 3523  MOVE.W    -(A3),-(A2)
        b       move_w_mem_mem_22
        lhau    data, -2(a4)                            // 3524  MOVE.W    -(A4),-(A2)
        b       move_w_mem_mem_22
        lhau    data, -2(a5)                            // 3525  MOVE.W    -(A5),-(A2)
        b       move_w_mem_mem_22
        lhau    data, -2(a6)                            // 3526  MOVE.W    -(A6),-(A2)
        b       move_w_mem_mem_22
        lhau    data, -2(a7)                            // 3527  MOVE.W    -(A7),-(A2)
        b       move_w_mem_mem_22
        lhax    data, a0, prefetch_data                 // 3528  MOVE.W    (d16,A0),-(A2)
        b       move_w_mem_mem_21
        lhax    data, a1, prefetch_data                 // 3529  MOVE.W    (d16,A1),-(A2)
        b       move_w_mem_mem_21
        lhax    data, a2, prefetch_data                 // 352A  MOVE.W    (d16,A2),-(A2)
        b       move_w_mem_mem_21
        lhax    data, a3, prefetch_data                 // 352B  MOVE.W    (d16,A3),-(A2)
        b       move_w_mem_mem_21
        lhax    data, a4, prefetch_data                 // 352C  MOVE.W    (d16,A4),-(A2)
        b       move_w_mem_mem_21
        lhax    data, a5, prefetch_data                 // 352D  MOVE.W    (d16,A5),-(A2)
        b       move_w_mem_mem_21
        lhax    data, a6, prefetch_data                 // 352E  MOVE.W    (d16,A6),-(A2)
        b       move_w_mem_mem_21
        lhax    data, a7, prefetch_data                 // 352F  MOVE.W    (d16,A7),-(A2)
        b       move_w_mem_mem_21
        ori     rtn_addr, code_ptr, move_w_mem_mem_22 - cb  // 3530  MOVE.W    (d8,A0,Xn),-(A2)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_22 - cb  // 3531  MOVE.W    (d8,A1,Xn),-(A2)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_22 - cb  // 3532  MOVE.W    (d8,A2,Xn),-(A2)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_22 - cb  // 3533  MOVE.W    (d8,A3,Xn),-(A2)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_22 - cb  // 3534  MOVE.W    (d8,A4,Xn),-(A2)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_22 - cb  // 3535  MOVE.W    (d8,A5,Xn),-(A2)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_22 - cb  // 3536  MOVE.W    (d8,A6,Xn),-(A2)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_22 - cb  // 3537  MOVE.W    (d8,A7,Xn),-(A2)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3538  MOVE.W    (xxx).W,-(A2)
        b       move_w_mem_mem_21
        ori     rtn_addr, code_ptr, move_w_mem_mem_22 - cb  // 3539  MOVE.W    (xxx).L,-(A2)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 353A  MOVE.W    (d16,PC),-(A2)
        b       move_w_mem_mem_21
        ori     rtn_addr, code_ptr, move_w_mem_mem_22 - cb  // 353B  MOVE.W    (d8,PC,Xn),-(A2)
        b       fea_w_73
        sthu    prefetch_data, -2(a2)                   // 353C  MOVE.W    #<data>,-(A2)
        b       move_w_imm_any
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 353D  MOVE.W    <ea 7.5>,-(A2)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 353E  MOVE.W    <ea 7.6>,-(A2)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 353F  MOVE.W    <ea 7.7>,-(A2)   (illegal)
        b       take_illegal_instruction

// ---- $3540-$357F --------------------------------------------------------
        sthx    d0, a2, prefetch_data                   // 3540  MOVE.W    D0,(d16,A2)
        b       move_w_d0_mem
        extsh   data, d1                                // 3541  MOVE.W    D1,(d16,A2)
        b       move_w_mem_mem_40
        extsh   data, d2                                // 3542  MOVE.W    D2,(d16,A2)
        b       move_w_mem_mem_40
        extsh   data, d3                                // 3543  MOVE.W    D3,(d16,A2)
        b       move_w_mem_mem_40
        extsh   data, d4                                // 3544  MOVE.W    D4,(d16,A2)
        b       move_w_mem_mem_40
        extsh   data, d5                                // 3545  MOVE.W    D5,(d16,A2)
        b       move_w_mem_mem_40
        extsh   data, d6                                // 3546  MOVE.W    D6,(d16,A2)
        b       move_w_mem_mem_40
        extsh   data, d7                                // 3547  MOVE.W    D7,(d16,A2)
        b       move_w_mem_mem_40
        extsh   data, a0                                // 3548  MOVE.W    A0,(d16,A2)
        b       move_w_mem_mem_40
        extsh   data, a1                                // 3549  MOVE.W    A1,(d16,A2)
        b       move_w_mem_mem_40
        extsh   data, a2                                // 354A  MOVE.W    A2,(d16,A2)
        b       move_w_mem_mem_40
        extsh   data, a3                                // 354B  MOVE.W    A3,(d16,A2)
        b       move_w_mem_mem_40
        extsh   data, a4                                // 354C  MOVE.W    A4,(d16,A2)
        b       move_w_mem_mem_40
        extsh   data, a5                                // 354D  MOVE.W    A5,(d16,A2)
        b       move_w_mem_mem_40
        extsh   data, a6                                // 354E  MOVE.W    A6,(d16,A2)
        b       move_w_mem_mem_40
        extsh   data, a7                                // 354F  MOVE.W    A7,(d16,A2)
        b       move_w_mem_mem_40
        lha     data, 0(a0)                             // 3550  MOVE.W    (A0),(d16,A2)
        b       move_w_mem_mem_40
        lha     data, 0(a1)                             // 3551  MOVE.W    (A1),(d16,A2)
        b       move_w_mem_mem_40
        lha     data, 0(a2)                             // 3552  MOVE.W    (A2),(d16,A2)
        b       move_w_mem_mem_40
        lha     data, 0(a3)                             // 3553  MOVE.W    (A3),(d16,A2)
        b       move_w_mem_mem_40
        lha     data, 0(a4)                             // 3554  MOVE.W    (A4),(d16,A2)
        b       move_w_mem_mem_40
        lha     data, 0(a5)                             // 3555  MOVE.W    (A5),(d16,A2)
        b       move_w_mem_mem_40
        lha     data, 0(a6)                             // 3556  MOVE.W    (A6),(d16,A2)
        b       move_w_mem_mem_40
        lha     data, 0(a7)                             // 3557  MOVE.W    (A7),(d16,A2)
        b       move_w_mem_mem_40
        ori     rtn_addr, code_ptr, move_w_mem_mem_40 - cb  // 3558  MOVE.W    (A0)+,(d16,A2)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_40 - cb  // 3559  MOVE.W    (A1)+,(d16,A2)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_40 - cb  // 355A  MOVE.W    (A2)+,(d16,A2)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_40 - cb  // 355B  MOVE.W    (A3)+,(d16,A2)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_40 - cb  // 355C  MOVE.W    (A4)+,(d16,A2)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_40 - cb  // 355D  MOVE.W    (A5)+,(d16,A2)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_40 - cb  // 355E  MOVE.W    (A6)+,(d16,A2)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_40 - cb  // 355F  MOVE.W    (A7)+,(d16,A2)
        b       fea_w_37
        lhau    data, -2(a0)                            // 3560  MOVE.W    -(A0),(d16,A2)
        b       move_w_mem_mem_40
        lhau    data, -2(a1)                            // 3561  MOVE.W    -(A1),(d16,A2)
        b       move_w_mem_mem_40
        lhau    data, -2(a2)                            // 3562  MOVE.W    -(A2),(d16,A2)
        b       move_w_mem_mem_40
        lhau    data, -2(a3)                            // 3563  MOVE.W    -(A3),(d16,A2)
        b       move_w_mem_mem_40
        lhau    data, -2(a4)                            // 3564  MOVE.W    -(A4),(d16,A2)
        b       move_w_mem_mem_40
        lhau    data, -2(a5)                            // 3565  MOVE.W    -(A5),(d16,A2)
        b       move_w_mem_mem_40
        lhau    data, -2(a6)                            // 3566  MOVE.W    -(A6),(d16,A2)
        b       move_w_mem_mem_40
        lhau    data, -2(a7)                            // 3567  MOVE.W    -(A7),(d16,A2)
        b       move_w_mem_mem_40
        lhax    data, a0, prefetch_data                 // 3568  MOVE.W    (d16,A0),(d16,A2)
        b       move_w_ea_mem_8
        lhax    data, a1, prefetch_data                 // 3569  MOVE.W    (d16,A1),(d16,A2)
        b       move_w_ea_mem_8
        lhax    data, a2, prefetch_data                 // 356A  MOVE.W    (d16,A2),(d16,A2)
        b       move_w_ea_mem_8
        lhax    data, a3, prefetch_data                 // 356B  MOVE.W    (d16,A3),(d16,A2)
        b       move_w_ea_mem_8
        lhax    data, a4, prefetch_data                 // 356C  MOVE.W    (d16,A4),(d16,A2)
        b       move_w_ea_mem_8
        lhax    data, a5, prefetch_data                 // 356D  MOVE.W    (d16,A5),(d16,A2)
        b       move_w_ea_mem_8
        lhax    data, a6, prefetch_data                 // 356E  MOVE.W    (d16,A6),(d16,A2)
        b       move_w_ea_mem_8
        lhax    data, a7, prefetch_data                 // 356F  MOVE.W    (d16,A7),(d16,A2)
        b       move_w_ea_mem_8
        ori     rtn_addr, code_ptr, move_w_mem_mem_40 - cb  // 3570  MOVE.W    (d8,A0,Xn),(d16,A2)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_40 - cb  // 3571  MOVE.W    (d8,A1,Xn),(d16,A2)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_40 - cb  // 3572  MOVE.W    (d8,A2,Xn),(d16,A2)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_40 - cb  // 3573  MOVE.W    (d8,A3,Xn),(d16,A2)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_40 - cb  // 3574  MOVE.W    (d8,A4,Xn),(d16,A2)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_40 - cb  // 3575  MOVE.W    (d8,A5,Xn),(d16,A2)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_40 - cb  // 3576  MOVE.W    (d8,A6,Xn),(d16,A2)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_40 - cb  // 3577  MOVE.W    (d8,A7,Xn),(d16,A2)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3578  MOVE.W    (xxx).W,(d16,A2)
        b       move_w_ea_mem_8
        ori     rtn_addr, code_ptr, move_w_mem_mem_40 - cb  // 3579  MOVE.W    (xxx).L,(d16,A2)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 357A  MOVE.W    (d16,PC),(d16,A2)
        b       move_w_ea_mem_8
        ori     rtn_addr, code_ptr, move_w_mem_mem_40 - cb  // 357B  MOVE.W    (d8,PC,Xn),(d16,A2)
        b       fea_w_73
        extsh   data, prefetch_data                     // 357C  MOVE.W    #<data>,(d16,A2)
        b       move_w_ea_mem_8
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 357D  MOVE.W    <ea 7.5>,(d16,A2)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 357E  MOVE.W    <ea 7.6>,(d16,A2)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 357F  MOVE.W    <ea 7.7>,(d16,A2)   (illegal)
        b       take_illegal_instruction

// ---- $3580-$35BF --------------------------------------------------------
        extsh   data, d0                                // 3580  MOVE.W    D0,(d8,A2,Xn)
        b       move_w_mem_mem_41
        extsh   data, d1                                // 3581  MOVE.W    D1,(d8,A2,Xn)
        b       move_w_mem_mem_41
        extsh   data, d2                                // 3582  MOVE.W    D2,(d8,A2,Xn)
        b       move_w_mem_mem_41
        extsh   data, d3                                // 3583  MOVE.W    D3,(d8,A2,Xn)
        b       move_w_mem_mem_41
        extsh   data, d4                                // 3584  MOVE.W    D4,(d8,A2,Xn)
        b       move_w_mem_mem_41
        extsh   data, d5                                // 3585  MOVE.W    D5,(d8,A2,Xn)
        b       move_w_mem_mem_41
        extsh   data, d6                                // 3586  MOVE.W    D6,(d8,A2,Xn)
        b       move_w_mem_mem_41
        extsh   data, d7                                // 3587  MOVE.W    D7,(d8,A2,Xn)
        b       move_w_mem_mem_41
        extsh   data, a0                                // 3588  MOVE.W    A0,(d8,A2,Xn)
        b       move_w_mem_mem_41
        extsh   data, a1                                // 3589  MOVE.W    A1,(d8,A2,Xn)
        b       move_w_mem_mem_41
        extsh   data, a2                                // 358A  MOVE.W    A2,(d8,A2,Xn)
        b       move_w_mem_mem_41
        extsh   data, a3                                // 358B  MOVE.W    A3,(d8,A2,Xn)
        b       move_w_mem_mem_41
        extsh   data, a4                                // 358C  MOVE.W    A4,(d8,A2,Xn)
        b       move_w_mem_mem_41
        extsh   data, a5                                // 358D  MOVE.W    A5,(d8,A2,Xn)
        b       move_w_mem_mem_41
        extsh   data, a6                                // 358E  MOVE.W    A6,(d8,A2,Xn)
        b       move_w_mem_mem_41
        extsh   data, a7                                // 358F  MOVE.W    A7,(d8,A2,Xn)
        b       move_w_mem_mem_41
        lha     data, 0(a0)                             // 3590  MOVE.W    (A0),(d8,A2,Xn)
        b       move_w_mem_mem_41
        lha     data, 0(a1)                             // 3591  MOVE.W    (A1),(d8,A2,Xn)
        b       move_w_mem_mem_41
        lha     data, 0(a2)                             // 3592  MOVE.W    (A2),(d8,A2,Xn)
        b       move_w_mem_mem_41
        lha     data, 0(a3)                             // 3593  MOVE.W    (A3),(d8,A2,Xn)
        b       move_w_mem_mem_41
        lha     data, 0(a4)                             // 3594  MOVE.W    (A4),(d8,A2,Xn)
        b       move_w_mem_mem_41
        lha     data, 0(a5)                             // 3595  MOVE.W    (A5),(d8,A2,Xn)
        b       move_w_mem_mem_41
        lha     data, 0(a6)                             // 3596  MOVE.W    (A6),(d8,A2,Xn)
        b       move_w_mem_mem_41
        lha     data, 0(a7)                             // 3597  MOVE.W    (A7),(d8,A2,Xn)
        b       move_w_mem_mem_41
        ori     rtn_addr, code_ptr, move_w_mem_mem_41 - cb  // 3598  MOVE.W    (A0)+,(d8,A2,Xn)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_41 - cb  // 3599  MOVE.W    (A1)+,(d8,A2,Xn)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_41 - cb  // 359A  MOVE.W    (A2)+,(d8,A2,Xn)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_41 - cb  // 359B  MOVE.W    (A3)+,(d8,A2,Xn)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_41 - cb  // 359C  MOVE.W    (A4)+,(d8,A2,Xn)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_41 - cb  // 359D  MOVE.W    (A5)+,(d8,A2,Xn)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_41 - cb  // 359E  MOVE.W    (A6)+,(d8,A2,Xn)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_41 - cb  // 359F  MOVE.W    (A7)+,(d8,A2,Xn)
        b       fea_w_37
        lhau    data, -2(a0)                            // 35A0  MOVE.W    -(A0),(d8,A2,Xn)
        b       move_w_mem_mem_41
        lhau    data, -2(a1)                            // 35A1  MOVE.W    -(A1),(d8,A2,Xn)
        b       move_w_mem_mem_41
        lhau    data, -2(a2)                            // 35A2  MOVE.W    -(A2),(d8,A2,Xn)
        b       move_w_mem_mem_41
        lhau    data, -2(a3)                            // 35A3  MOVE.W    -(A3),(d8,A2,Xn)
        b       move_w_mem_mem_41
        lhau    data, -2(a4)                            // 35A4  MOVE.W    -(A4),(d8,A2,Xn)
        b       move_w_mem_mem_41
        lhau    data, -2(a5)                            // 35A5  MOVE.W    -(A5),(d8,A2,Xn)
        b       move_w_mem_mem_41
        lhau    data, -2(a6)                            // 35A6  MOVE.W    -(A6),(d8,A2,Xn)
        b       move_w_mem_mem_41
        lhau    data, -2(a7)                            // 35A7  MOVE.W    -(A7),(d8,A2,Xn)
        b       move_w_mem_mem_41
        lhax    data, a0, prefetch_data                 // 35A8  MOVE.W    (d16,A0),(d8,A2,Xn)
        b       move_w_ea_mem_9
        lhax    data, a1, prefetch_data                 // 35A9  MOVE.W    (d16,A1),(d8,A2,Xn)
        b       move_w_ea_mem_9
        lhax    data, a2, prefetch_data                 // 35AA  MOVE.W    (d16,A2),(d8,A2,Xn)
        b       move_w_ea_mem_9
        lhax    data, a3, prefetch_data                 // 35AB  MOVE.W    (d16,A3),(d8,A2,Xn)
        b       move_w_ea_mem_9
        lhax    data, a4, prefetch_data                 // 35AC  MOVE.W    (d16,A4),(d8,A2,Xn)
        b       move_w_ea_mem_9
        lhax    data, a5, prefetch_data                 // 35AD  MOVE.W    (d16,A5),(d8,A2,Xn)
        b       move_w_ea_mem_9
        lhax    data, a6, prefetch_data                 // 35AE  MOVE.W    (d16,A6),(d8,A2,Xn)
        b       move_w_ea_mem_9
        lhax    data, a7, prefetch_data                 // 35AF  MOVE.W    (d16,A7),(d8,A2,Xn)
        b       move_w_ea_mem_9
        ori     rtn_addr, code_ptr, move_w_mem_mem_41 - cb  // 35B0  MOVE.W    (d8,A0,Xn),(d8,A2,Xn)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_41 - cb  // 35B1  MOVE.W    (d8,A1,Xn),(d8,A2,Xn)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_41 - cb  // 35B2  MOVE.W    (d8,A2,Xn),(d8,A2,Xn)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_41 - cb  // 35B3  MOVE.W    (d8,A3,Xn),(d8,A2,Xn)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_41 - cb  // 35B4  MOVE.W    (d8,A4,Xn),(d8,A2,Xn)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_41 - cb  // 35B5  MOVE.W    (d8,A5,Xn),(d8,A2,Xn)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_41 - cb  // 35B6  MOVE.W    (d8,A6,Xn),(d8,A2,Xn)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_41 - cb  // 35B7  MOVE.W    (d8,A7,Xn),(d8,A2,Xn)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 35B8  MOVE.W    (xxx).W,(d8,A2,Xn)
        b       move_w_ea_mem_9
        ori     rtn_addr, code_ptr, move_w_mem_mem_41 - cb  // 35B9  MOVE.W    (xxx).L,(d8,A2,Xn)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 35BA  MOVE.W    (d16,PC),(d8,A2,Xn)
        b       move_w_ea_mem_9
        ori     rtn_addr, code_ptr, move_w_mem_mem_41 - cb  // 35BB  MOVE.W    (d8,PC,Xn),(d8,A2,Xn)
        b       fea_w_73
        extsh   data, prefetch_data                     // 35BC  MOVE.W    #<data>,(d8,A2,Xn)
        b       move_w_ea_mem_9
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35BD  MOVE.W    <ea 7.5>,(d8,A2,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35BE  MOVE.W    <ea 7.6>,(d8,A2,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35BF  MOVE.W    <ea 7.7>,(d8,A2,Xn)   (illegal)
        b       take_illegal_instruction

// ---- $35C0-$35FF --------------------------------------------------------
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35C0  MOVE.W    D0,(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35C1  MOVE.W    D1,(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35C2  MOVE.W    D2,(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35C3  MOVE.W    D3,(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35C4  MOVE.W    D4,(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35C5  MOVE.W    D5,(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35C6  MOVE.W    D6,(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35C7  MOVE.W    D7,(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35C8  MOVE.W    A0,(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35C9  MOVE.W    A1,(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35CA  MOVE.W    A2,(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35CB  MOVE.W    A3,(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35CC  MOVE.W    A4,(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35CD  MOVE.W    A5,(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35CE  MOVE.W    A6,(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35CF  MOVE.W    A7,(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35D0  MOVE.W    (A0),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35D1  MOVE.W    (A1),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35D2  MOVE.W    (A2),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35D3  MOVE.W    (A3),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35D4  MOVE.W    (A4),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35D5  MOVE.W    (A5),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35D6  MOVE.W    (A6),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35D7  MOVE.W    (A7),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35D8  MOVE.W    (A0)+,(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35D9  MOVE.W    (A1)+,(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35DA  MOVE.W    (A2)+,(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35DB  MOVE.W    (A3)+,(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35DC  MOVE.W    (A4)+,(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35DD  MOVE.W    (A5)+,(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35DE  MOVE.W    (A6)+,(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35DF  MOVE.W    (A7)+,(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35E0  MOVE.W    -(A0),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35E1  MOVE.W    -(A1),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35E2  MOVE.W    -(A2),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35E3  MOVE.W    -(A3),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35E4  MOVE.W    -(A4),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35E5  MOVE.W    -(A5),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35E6  MOVE.W    -(A6),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35E7  MOVE.W    -(A7),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35E8  MOVE.W    (d16,A0),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35E9  MOVE.W    (d16,A1),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35EA  MOVE.W    (d16,A2),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35EB  MOVE.W    (d16,A3),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35EC  MOVE.W    (d16,A4),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35ED  MOVE.W    (d16,A5),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35EE  MOVE.W    (d16,A6),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35EF  MOVE.W    (d16,A7),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35F0  MOVE.W    (d8,A0,Xn),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35F1  MOVE.W    (d8,A1,Xn),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35F2  MOVE.W    (d8,A2,Xn),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35F3  MOVE.W    (d8,A3,Xn),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35F4  MOVE.W    (d8,A4,Xn),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35F5  MOVE.W    (d8,A5,Xn),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35F6  MOVE.W    (d8,A6,Xn),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35F7  MOVE.W    (d8,A7,Xn),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35F8  MOVE.W    (xxx).W,(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35F9  MOVE.W    (xxx).L,(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35FA  MOVE.W    (d16,PC),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35FB  MOVE.W    (d8,PC,Xn),(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35FC  MOVE.W    #<data>,(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35FD  MOVE.W    <ea 7.5>,(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35FE  MOVE.W    <ea 7.6>,(d16,PC)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 35FF  MOVE.W    <ea 7.7>,(d16,PC)   (illegal)
        b       take_illegal_instruction

// ---- $3600-$363F --------------------------------------------------------
        rlwimi  d3, d0, 0, 16, 31                       // 3600  MOVE.W    D0,D3
        b       move_w_reg_d3
        rlwimi  d3, d1, 0, 16, 31                       // 3601  MOVE.W    D1,D3
        b       move_w_reg_d3
        rlwimi  d3, d2, 0, 16, 31                       // 3602  MOVE.W    D2,D3
        b       move_w_reg_d3
        slwi.   data, d3, 16                            // 3603  MOVE.W    D3,D3
        b       update_vc_zero
        rlwimi  d3, d4, 0, 16, 31                       // 3604  MOVE.W    D4,D3
        b       move_w_reg_d3
        rlwimi  d3, d5, 0, 16, 31                       // 3605  MOVE.W    D5,D3
        b       move_w_reg_d3
        rlwimi  d3, d6, 0, 16, 31                       // 3606  MOVE.W    D6,D3
        b       move_w_reg_d3
        rlwimi  d3, d7, 0, 16, 31                       // 3607  MOVE.W    D7,D3
        b       move_w_reg_d3
        rlwimi  d3, a0, 0, 16, 31                       // 3608  MOVE.W    A0,D3
        b       move_w_reg_d3
        rlwimi  d3, a1, 0, 16, 31                       // 3609  MOVE.W    A1,D3
        b       move_w_reg_d3
        rlwimi  d3, a2, 0, 16, 31                       // 360A  MOVE.W    A2,D3
        b       move_w_reg_d3
        rlwimi  d3, a3, 0, 16, 31                       // 360B  MOVE.W    A3,D3
        b       move_w_reg_d3
        rlwimi  d3, a4, 0, 16, 31                       // 360C  MOVE.W    A4,D3
        b       move_w_reg_d3
        rlwimi  d3, a5, 0, 16, 31                       // 360D  MOVE.W    A5,D3
        b       move_w_reg_d3
        rlwimi  d3, a6, 0, 16, 31                       // 360E  MOVE.W    A6,D3
        b       move_w_reg_d3
        rlwimi  d3, a7, 0, 16, 31                       // 360F  MOVE.W    A7,D3
        b       move_w_reg_d3
        lha     data, 0(a0)                             // 3610  MOVE.W    (A0),D3
        b       move_w_mem_d3_2
        lha     data, 0(a1)                             // 3611  MOVE.W    (A1),D3
        b       move_w_mem_d3_2
        lha     data, 0(a2)                             // 3612  MOVE.W    (A2),D3
        b       move_w_mem_d3_2
        lha     data, 0(a3)                             // 3613  MOVE.W    (A3),D3
        b       move_w_mem_d3_2
        lha     data, 0(a4)                             // 3614  MOVE.W    (A4),D3
        b       move_w_mem_d3_2
        lha     data, 0(a5)                             // 3615  MOVE.W    (A5),D3
        b       move_w_mem_d3_2
        lha     data, 0(a6)                             // 3616  MOVE.W    (A6),D3
        b       move_w_mem_d3_2
        lha     data, 0(a7)                             // 3617  MOVE.W    (A7),D3
        b       move_w_mem_d3_2
        ori     rtn_addr, code_ptr, move_w_mem_d3_2 - cb  // 3618  MOVE.W    (A0)+,D3
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_d3_2 - cb  // 3619  MOVE.W    (A1)+,D3
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_d3_2 - cb  // 361A  MOVE.W    (A2)+,D3
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_d3_2 - cb  // 361B  MOVE.W    (A3)+,D3
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_d3_2 - cb  // 361C  MOVE.W    (A4)+,D3
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_d3_2 - cb  // 361D  MOVE.W    (A5)+,D3
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_d3_2 - cb  // 361E  MOVE.W    (A6)+,D3
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_d3_2 - cb  // 361F  MOVE.W    (A7)+,D3
        b       fea_w_37
        lhau    data, -2(a0)                            // 3620  MOVE.W    -(A0),D3
        b       move_w_mem_d3_2
        lhau    data, -2(a1)                            // 3621  MOVE.W    -(A1),D3
        b       move_w_mem_d3_2
        lhau    data, -2(a2)                            // 3622  MOVE.W    -(A2),D3
        b       move_w_mem_d3_2
        lhau    data, -2(a3)                            // 3623  MOVE.W    -(A3),D3
        b       move_w_mem_d3_2
        lhau    data, -2(a4)                            // 3624  MOVE.W    -(A4),D3
        b       move_w_mem_d3_2
        lhau    data, -2(a5)                            // 3625  MOVE.W    -(A5),D3
        b       move_w_mem_d3_2
        lhau    data, -2(a6)                            // 3626  MOVE.W    -(A6),D3
        b       move_w_mem_d3_2
        lhau    data, -2(a7)                            // 3627  MOVE.W    -(A7),D3
        b       move_w_mem_d3_2
        lhax    data, a0, prefetch_data                 // 3628  MOVE.W    (d16,A0),D3
        b       move_w_mem_d3
        lhax    data, a1, prefetch_data                 // 3629  MOVE.W    (d16,A1),D3
        b       move_w_mem_d3
        lhax    data, a2, prefetch_data                 // 362A  MOVE.W    (d16,A2),D3
        b       move_w_mem_d3
        lhax    data, a3, prefetch_data                 // 362B  MOVE.W    (d16,A3),D3
        b       move_w_mem_d3
        lhax    data, a4, prefetch_data                 // 362C  MOVE.W    (d16,A4),D3
        b       move_w_mem_d3
        lhax    data, a5, prefetch_data                 // 362D  MOVE.W    (d16,A5),D3
        b       move_w_mem_d3
        lhax    data, a6, prefetch_data                 // 362E  MOVE.W    (d16,A6),D3
        b       move_w_mem_d3
        lhax    data, a7, prefetch_data                 // 362F  MOVE.W    (d16,A7),D3
        b       move_w_mem_d3
        ori     rtn_addr, code_ptr, move_w_mem_d3_2 - cb  // 3630  MOVE.W    (d8,A0,Xn),D3
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_d3_2 - cb  // 3631  MOVE.W    (d8,A1,Xn),D3
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_d3_2 - cb  // 3632  MOVE.W    (d8,A2,Xn),D3
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_d3_2 - cb  // 3633  MOVE.W    (d8,A3,Xn),D3
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_d3_2 - cb  // 3634  MOVE.W    (d8,A4,Xn),D3
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_d3_2 - cb  // 3635  MOVE.W    (d8,A5,Xn),D3
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_d3_2 - cb  // 3636  MOVE.W    (d8,A6,Xn),D3
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_d3_2 - cb  // 3637  MOVE.W    (d8,A7,Xn),D3
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3638  MOVE.W    (xxx).W,D3
        b       move_w_mem_d3
        ori     rtn_addr, code_ptr, move_w_mem_d3_2 - cb  // 3639  MOVE.W    (xxx).L,D3
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 363A  MOVE.W    (d16,PC),D3
        b       move_w_mem_d3
        ori     rtn_addr, code_ptr, move_w_mem_d3_2 - cb  // 363B  MOVE.W    (d8,PC,Xn),D3
        b       fea_w_73
        rlwimi  d3, prefetch_data, 0, 16, 31            // 363C  MOVE.W    #<data>,D3
        b       move_w_imm_any
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 363D  MOVE.W    <ea 7.5>,D3   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 363E  MOVE.W    <ea 7.6>,D3   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 363F  MOVE.W    <ea 7.7>,D3   (illegal)
        b       take_illegal_instruction

// ---- $3640-$367F --------------------------------------------------------
        extsh   a3, d0                                  // 3640  MOVEA.W   D0,A3
        b       fetch
        extsh   a3, d1                                  // 3641  MOVEA.W   D1,A3
        b       fetch
        extsh   a3, d2                                  // 3642  MOVEA.W   D2,A3
        b       fetch
        extsh   a3, d3                                  // 3643  MOVEA.W   D3,A3
        b       fetch
        extsh   a3, d4                                  // 3644  MOVEA.W   D4,A3
        b       fetch
        extsh   a3, d5                                  // 3645  MOVEA.W   D5,A3
        b       fetch
        extsh   a3, d6                                  // 3646  MOVEA.W   D6,A3
        b       fetch
        extsh   a3, d7                                  // 3647  MOVEA.W   D7,A3
        b       fetch
        extsh   a3, a0                                  // 3648  MOVEA.W   A0,A3
        b       fetch
        extsh   a3, a1                                  // 3649  MOVEA.W   A1,A3
        b       fetch
        extsh   a3, a2                                  // 364A  MOVEA.W   A2,A3
        b       fetch
        extsh   a3, a3                                  // 364B  MOVEA.W   A3,A3
        b       fetch
        extsh   a3, a4                                  // 364C  MOVEA.W   A4,A3
        b       fetch
        extsh   a3, a5                                  // 364D  MOVEA.W   A5,A3
        b       fetch
        extsh   a3, a6                                  // 364E  MOVEA.W   A6,A3
        b       fetch
        extsh   a3, a7                                  // 364F  MOVEA.W   A7,A3
        b       fetch
        lha     a3, 0(a0)                               // 3650  MOVEA.W   (A0),A3
        b       fetch
        lha     a3, 0(a1)                               // 3651  MOVEA.W   (A1),A3
        b       fetch
        lha     a3, 0(a2)                               // 3652  MOVEA.W   (A2),A3
        b       fetch
        lha     a3, 0(a3)                               // 3653  MOVEA.W   (A3),A3
        b       fetch
        lha     a3, 0(a4)                               // 3654  MOVEA.W   (A4),A3
        b       fetch
        lha     a3, 0(a5)                               // 3655  MOVEA.W   (A5),A3
        b       fetch
        lha     a3, 0(a6)                               // 3656  MOVEA.W   (A6),A3
        b       fetch
        lha     a3, 0(a7)                               // 3657  MOVEA.W   (A7),A3
        b       fetch
        ori     rtn_addr, code_ptr, movea_mem_a3 - cb   // 3658  MOVEA.W   (A0)+,A3
        b       fea_w_30
        ori     rtn_addr, code_ptr, movea_mem_a3 - cb   // 3659  MOVEA.W   (A1)+,A3
        b       fea_w_31
        ori     rtn_addr, code_ptr, movea_mem_a3 - cb   // 365A  MOVEA.W   (A2)+,A3
        b       fea_w_32
        lha     a3, 0(a3)                               // 365B  MOVEA.W   (A3)+,A3
        b       fetch
        ori     rtn_addr, code_ptr, movea_mem_a3 - cb   // 365C  MOVEA.W   (A4)+,A3
        b       fea_w_34
        ori     rtn_addr, code_ptr, movea_mem_a3 - cb   // 365D  MOVEA.W   (A5)+,A3
        b       fea_w_35
        ori     rtn_addr, code_ptr, movea_mem_a3 - cb   // 365E  MOVEA.W   (A6)+,A3
        b       fea_w_36
        ori     rtn_addr, code_ptr, movea_mem_a3 - cb   // 365F  MOVEA.W   (A7)+,A3
        b       fea_w_37
        lhau    a3, -2(a0)                              // 3660  MOVEA.W   -(A0),A3
        b       fetch
        lhau    a3, -2(a1)                              // 3661  MOVEA.W   -(A1),A3
        b       fetch
        lhau    a3, -2(a2)                              // 3662  MOVEA.W   -(A2),A3
        b       fetch
        lha     a3, -2(a3)                              // 3663  MOVEA.W   -(A3),A3
        b       fetch
        lhau    a3, -2(a4)                              // 3664  MOVEA.W   -(A4),A3
        b       fetch
        lhau    a3, -2(a5)                              // 3665  MOVEA.W   -(A5),A3
        b       fetch
        lhau    a3, -2(a6)                              // 3666  MOVEA.W   -(A6),A3
        b       fetch
        lhau    a3, -2(a7)                              // 3667  MOVEA.W   -(A7),A3
        b       fetch
        lhax    a3, a0, prefetch_data                   // 3668  MOVEA.W   (d16,A0),A3
        b       fetch_skip_word
        lhax    a3, a1, prefetch_data                   // 3669  MOVEA.W   (d16,A1),A3
        b       fetch_skip_word
        lhax    a3, a2, prefetch_data                   // 366A  MOVEA.W   (d16,A2),A3
        b       fetch_skip_word
        lhax    a3, a3, prefetch_data                   // 366B  MOVEA.W   (d16,A3),A3
        b       fetch_skip_word
        lhax    a3, a4, prefetch_data                   // 366C  MOVEA.W   (d16,A4),A3
        b       fetch_skip_word
        lhax    a3, a5, prefetch_data                   // 366D  MOVEA.W   (d16,A5),A3
        b       fetch_skip_word
        lhax    a3, a6, prefetch_data                   // 366E  MOVEA.W   (d16,A6),A3
        b       fetch_skip_word
        lhax    a3, a7, prefetch_data                   // 366F  MOVEA.W   (d16,A7),A3
        b       fetch_skip_word
        ori     rtn_addr, code_ptr, movea_mem_a3 - cb   // 3670  MOVEA.W   (d8,A0,Xn),A3
        b       fea_w_60
        ori     rtn_addr, code_ptr, movea_mem_a3 - cb   // 3671  MOVEA.W   (d8,A1,Xn),A3
        b       fea_w_61
        ori     rtn_addr, code_ptr, movea_mem_a3 - cb   // 3672  MOVEA.W   (d8,A2,Xn),A3
        b       fea_w_62
        ori     rtn_addr, code_ptr, movea_mem_a3 - cb   // 3673  MOVEA.W   (d8,A3,Xn),A3
        b       fea_w_63
        ori     rtn_addr, code_ptr, movea_mem_a3 - cb   // 3674  MOVEA.W   (d8,A4,Xn),A3
        b       fea_w_64
        ori     rtn_addr, code_ptr, movea_mem_a3 - cb   // 3675  MOVEA.W   (d8,A5,Xn),A3
        b       fea_w_65
        ori     rtn_addr, code_ptr, movea_mem_a3 - cb   // 3676  MOVEA.W   (d8,A6,Xn),A3
        b       fea_w_66
        ori     rtn_addr, code_ptr, movea_mem_a3 - cb   // 3677  MOVEA.W   (d8,A7,Xn),A3
        b       fea_w_67
        lha     a3, 0(prefetch_data)                    // 3678  MOVEA.W   (xxx).W,A3
        b       fetch_skip_word
        ori     rtn_addr, code_ptr, movea_mem_a3 - cb   // 3679  MOVEA.W   (xxx).L,A3
        b       fea_w_71
        lhax    a3, pc, prefetch_data                   // 367A  MOVEA.W   (d16,PC),A3
        b       fetch_skip_word
        ori     rtn_addr, code_ptr, movea_mem_a3 - cb   // 367B  MOVEA.W   (d8,PC,Xn),A3
        b       fea_w_73
        mr      a3, prefetch_data                       // 367C  MOVEA.W   #<data>,A3
        b       fetch_skip_word
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 367D  MOVEA.W   <ea 7.5>,A3   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 367E  MOVEA.W   <ea 7.6>,A3   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 367F  MOVEA.W   <ea 7.7>,A3   (illegal)
        b       take_illegal_instruction

// ---- $3680-$36BF --------------------------------------------------------
        extsh   data, d0                                // 3680  MOVE.W    D0,(A3)
        b       move_w_mem_mem_8
        extsh   data, d1                                // 3681  MOVE.W    D1,(A3)
        b       move_w_mem_mem_8
        extsh   data, d2                                // 3682  MOVE.W    D2,(A3)
        b       move_w_mem_mem_8
        extsh   data, d3                                // 3683  MOVE.W    D3,(A3)
        b       move_w_mem_mem_8
        extsh   data, d4                                // 3684  MOVE.W    D4,(A3)
        b       move_w_mem_mem_8
        extsh   data, d5                                // 3685  MOVE.W    D5,(A3)
        b       move_w_mem_mem_8
        extsh   data, d6                                // 3686  MOVE.W    D6,(A3)
        b       move_w_mem_mem_8
        extsh   data, d7                                // 3687  MOVE.W    D7,(A3)
        b       move_w_mem_mem_8
        extsh   data, a0                                // 3688  MOVE.W    A0,(A3)
        b       move_w_mem_mem_8
        extsh   data, a1                                // 3689  MOVE.W    A1,(A3)
        b       move_w_mem_mem_8
        extsh   data, a2                                // 368A  MOVE.W    A2,(A3)
        b       move_w_mem_mem_8
        extsh   data, a3                                // 368B  MOVE.W    A3,(A3)
        b       move_w_mem_mem_8
        extsh   data, a4                                // 368C  MOVE.W    A4,(A3)
        b       move_w_mem_mem_8
        extsh   data, a5                                // 368D  MOVE.W    A5,(A3)
        b       move_w_mem_mem_8
        extsh   data, a6                                // 368E  MOVE.W    A6,(A3)
        b       move_w_mem_mem_8
        extsh   data, a7                                // 368F  MOVE.W    A7,(A3)
        b       move_w_mem_mem_8
        lha     data, 0(a0)                             // 3690  MOVE.W    (A0),(A3)
        b       move_w_mem_mem_8
        lha     data, 0(a1)                             // 3691  MOVE.W    (A1),(A3)
        b       move_w_mem_mem_8
        lha     data, 0(a2)                             // 3692  MOVE.W    (A2),(A3)
        b       move_w_mem_mem_8
        lha     data, 0(a3)                             // 3693  MOVE.W    (A3),(A3)
        b       test_data
        lha     data, 0(a4)                             // 3694  MOVE.W    (A4),(A3)
        b       move_w_mem_mem_8
        lha     data, 0(a5)                             // 3695  MOVE.W    (A5),(A3)
        b       move_w_mem_mem_8
        lha     data, 0(a6)                             // 3696  MOVE.W    (A6),(A3)
        b       move_w_mem_mem_8
        lha     data, 0(a7)                             // 3697  MOVE.W    (A7),(A3)
        b       move_w_mem_mem_8
        ori     rtn_addr, code_ptr, move_w_mem_mem_8 - cb  // 3698  MOVE.W    (A0)+,(A3)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_8 - cb  // 3699  MOVE.W    (A1)+,(A3)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_8 - cb  // 369A  MOVE.W    (A2)+,(A3)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_8 - cb  // 369B  MOVE.W    (A3)+,(A3)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_8 - cb  // 369C  MOVE.W    (A4)+,(A3)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_8 - cb  // 369D  MOVE.W    (A5)+,(A3)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_8 - cb  // 369E  MOVE.W    (A6)+,(A3)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_8 - cb  // 369F  MOVE.W    (A7)+,(A3)
        b       fea_w_37
        lhau    data, -2(a0)                            // 36A0  MOVE.W    -(A0),(A3)
        b       move_w_mem_mem_8
        lhau    data, -2(a1)                            // 36A1  MOVE.W    -(A1),(A3)
        b       move_w_mem_mem_8
        lhau    data, -2(a2)                            // 36A2  MOVE.W    -(A2),(A3)
        b       move_w_mem_mem_8
        lhau    data, -2(a3)                            // 36A3  MOVE.W    -(A3),(A3)
        b       test_data
        lhau    data, -2(a4)                            // 36A4  MOVE.W    -(A4),(A3)
        b       move_w_mem_mem_8
        lhau    data, -2(a5)                            // 36A5  MOVE.W    -(A5),(A3)
        b       move_w_mem_mem_8
        lhau    data, -2(a6)                            // 36A6  MOVE.W    -(A6),(A3)
        b       move_w_mem_mem_8
        lhau    data, -2(a7)                            // 36A7  MOVE.W    -(A7),(A3)
        b       move_w_mem_mem_8
        lhax    data, a0, prefetch_data                 // 36A8  MOVE.W    (d16,A0),(A3)
        b       move_w_mem_mem_7
        lhax    data, a1, prefetch_data                 // 36A9  MOVE.W    (d16,A1),(A3)
        b       move_w_mem_mem_7
        lhax    data, a2, prefetch_data                 // 36AA  MOVE.W    (d16,A2),(A3)
        b       move_w_mem_mem_7
        lhax    data, a3, prefetch_data                 // 36AB  MOVE.W    (d16,A3),(A3)
        b       move_w_mem_mem_7
        lhax    data, a4, prefetch_data                 // 36AC  MOVE.W    (d16,A4),(A3)
        b       move_w_mem_mem_7
        lhax    data, a5, prefetch_data                 // 36AD  MOVE.W    (d16,A5),(A3)
        b       move_w_mem_mem_7
        lhax    data, a6, prefetch_data                 // 36AE  MOVE.W    (d16,A6),(A3)
        b       move_w_mem_mem_7
        lhax    data, a7, prefetch_data                 // 36AF  MOVE.W    (d16,A7),(A3)
        b       move_w_mem_mem_7
        ori     rtn_addr, code_ptr, move_w_mem_mem_8 - cb  // 36B0  MOVE.W    (d8,A0,Xn),(A3)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_8 - cb  // 36B1  MOVE.W    (d8,A1,Xn),(A3)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_8 - cb  // 36B2  MOVE.W    (d8,A2,Xn),(A3)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_8 - cb  // 36B3  MOVE.W    (d8,A3,Xn),(A3)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_8 - cb  // 36B4  MOVE.W    (d8,A4,Xn),(A3)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_8 - cb  // 36B5  MOVE.W    (d8,A5,Xn),(A3)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_8 - cb  // 36B6  MOVE.W    (d8,A6,Xn),(A3)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_8 - cb  // 36B7  MOVE.W    (d8,A7,Xn),(A3)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 36B8  MOVE.W    (xxx).W,(A3)
        b       move_w_mem_mem_7
        ori     rtn_addr, code_ptr, move_w_mem_mem_8 - cb  // 36B9  MOVE.W    (xxx).L,(A3)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 36BA  MOVE.W    (d16,PC),(A3)
        b       move_w_mem_mem_7
        ori     rtn_addr, code_ptr, move_w_mem_mem_8 - cb  // 36BB  MOVE.W    (d8,PC,Xn),(A3)
        b       fea_w_73
        sth     prefetch_data, 0(a3)                    // 36BC  MOVE.W    #<data>,(A3)
        b       move_w_imm_any
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 36BD  MOVE.W    <ea 7.5>,(A3)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 36BE  MOVE.W    <ea 7.6>,(A3)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 36BF  MOVE.W    <ea 7.7>,(A3)   (illegal)
        b       take_illegal_instruction

// ---- $36C0-$36FF --------------------------------------------------------
        extsh   data, d0                                // 36C0  MOVE.W    D0,(A3)+
        b       move_w_mem_mem_42
        extsh   data, d1                                // 36C1  MOVE.W    D1,(A3)+
        b       move_w_mem_mem_42
        extsh   data, d2                                // 36C2  MOVE.W    D2,(A3)+
        b       move_w_mem_mem_42
        extsh   data, d3                                // 36C3  MOVE.W    D3,(A3)+
        b       move_w_mem_mem_42
        extsh   data, d4                                // 36C4  MOVE.W    D4,(A3)+
        b       move_w_mem_mem_42
        extsh   data, d5                                // 36C5  MOVE.W    D5,(A3)+
        b       move_w_mem_mem_42
        extsh   data, d6                                // 36C6  MOVE.W    D6,(A3)+
        b       move_w_mem_mem_42
        extsh   data, d7                                // 36C7  MOVE.W    D7,(A3)+
        b       move_w_mem_mem_42
        extsh   data, a0                                // 36C8  MOVE.W    A0,(A3)+
        b       move_w_mem_mem_42
        extsh   data, a1                                // 36C9  MOVE.W    A1,(A3)+
        b       move_w_mem_mem_42
        extsh   data, a2                                // 36CA  MOVE.W    A2,(A3)+
        b       move_w_mem_mem_42
        extsh   data, a3                                // 36CB  MOVE.W    A3,(A3)+
        b       move_w_mem_mem_42
        extsh   data, a4                                // 36CC  MOVE.W    A4,(A3)+
        b       move_w_mem_mem_42
        extsh   data, a5                                // 36CD  MOVE.W    A5,(A3)+
        b       move_w_mem_mem_42
        extsh   data, a6                                // 36CE  MOVE.W    A6,(A3)+
        b       move_w_mem_mem_42
        extsh   data, a7                                // 36CF  MOVE.W    A7,(A3)+
        b       move_w_mem_mem_42
        lha     data, 0(a0)                             // 36D0  MOVE.W    (A0),(A3)+
        b       move_w_mem_mem_42
        lha     data, 0(a1)                             // 36D1  MOVE.W    (A1),(A3)+
        b       move_w_mem_mem_42
        lha     data, 0(a2)                             // 36D2  MOVE.W    (A2),(A3)+
        b       move_w_mem_mem_42
        lha     data, 0(a3)                             // 36D3  MOVE.W    (A3),(A3)+
        b       move_w_mem_mem_42
        lha     data, 0(a4)                             // 36D4  MOVE.W    (A4),(A3)+
        b       move_w_mem_mem_42
        lha     data, 0(a5)                             // 36D5  MOVE.W    (A5),(A3)+
        b       move_w_mem_mem_42
        lha     data, 0(a6)                             // 36D6  MOVE.W    (A6),(A3)+
        b       move_w_mem_mem_42
        lha     data, 0(a7)                             // 36D7  MOVE.W    (A7),(A3)+
        b       move_w_mem_mem_42
        ori     rtn_addr, code_ptr, move_w_mem_mem_42 - cb  // 36D8  MOVE.W    (A0)+,(A3)+
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_42 - cb  // 36D9  MOVE.W    (A1)+,(A3)+
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_42 - cb  // 36DA  MOVE.W    (A2)+,(A3)+
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_42 - cb  // 36DB  MOVE.W    (A3)+,(A3)+
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_42 - cb  // 36DC  MOVE.W    (A4)+,(A3)+
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_42 - cb  // 36DD  MOVE.W    (A5)+,(A3)+
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_42 - cb  // 36DE  MOVE.W    (A6)+,(A3)+
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_42 - cb  // 36DF  MOVE.W    (A7)+,(A3)+
        b       fea_w_37
        lhau    data, -2(a0)                            // 36E0  MOVE.W    -(A0),(A3)+
        b       move_w_mem_mem_42
        lhau    data, -2(a1)                            // 36E1  MOVE.W    -(A1),(A3)+
        b       move_w_mem_mem_42
        lhau    data, -2(a2)                            // 36E2  MOVE.W    -(A2),(A3)+
        b       move_w_mem_mem_42
        lha     data, -2(a3)                            // 36E3  MOVE.W    -(A3),(A3)+
        b       test_data
        lhau    data, -2(a4)                            // 36E4  MOVE.W    -(A4),(A3)+
        b       move_w_mem_mem_42
        lhau    data, -2(a5)                            // 36E5  MOVE.W    -(A5),(A3)+
        b       move_w_mem_mem_42
        lhau    data, -2(a6)                            // 36E6  MOVE.W    -(A6),(A3)+
        b       move_w_mem_mem_42
        lhau    data, -2(a7)                            // 36E7  MOVE.W    -(A7),(A3)+
        b       move_w_mem_mem_42
        lhax    data, a0, prefetch_data                 // 36E8  MOVE.W    (d16,A0),(A3)+
        b       move_w_ea_mem_10
        lhax    data, a1, prefetch_data                 // 36E9  MOVE.W    (d16,A1),(A3)+
        b       move_w_ea_mem_10
        lhax    data, a2, prefetch_data                 // 36EA  MOVE.W    (d16,A2),(A3)+
        b       move_w_ea_mem_10
        lhax    data, a3, prefetch_data                 // 36EB  MOVE.W    (d16,A3),(A3)+
        b       move_w_ea_mem_10
        lhax    data, a4, prefetch_data                 // 36EC  MOVE.W    (d16,A4),(A3)+
        b       move_w_ea_mem_10
        lhax    data, a5, prefetch_data                 // 36ED  MOVE.W    (d16,A5),(A3)+
        b       move_w_ea_mem_10
        lhax    data, a6, prefetch_data                 // 36EE  MOVE.W    (d16,A6),(A3)+
        b       move_w_ea_mem_10
        lhax    data, a7, prefetch_data                 // 36EF  MOVE.W    (d16,A7),(A3)+
        b       move_w_ea_mem_10
        ori     rtn_addr, code_ptr, move_w_mem_mem_42 - cb  // 36F0  MOVE.W    (d8,A0,Xn),(A3)+
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_42 - cb  // 36F1  MOVE.W    (d8,A1,Xn),(A3)+
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_42 - cb  // 36F2  MOVE.W    (d8,A2,Xn),(A3)+
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_42 - cb  // 36F3  MOVE.W    (d8,A3,Xn),(A3)+
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_42 - cb  // 36F4  MOVE.W    (d8,A4,Xn),(A3)+
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_42 - cb  // 36F5  MOVE.W    (d8,A5,Xn),(A3)+
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_42 - cb  // 36F6  MOVE.W    (d8,A6,Xn),(A3)+
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_42 - cb  // 36F7  MOVE.W    (d8,A7,Xn),(A3)+
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 36F8  MOVE.W    (xxx).W,(A3)+
        b       move_w_ea_mem_10
        ori     rtn_addr, code_ptr, move_w_mem_mem_42 - cb  // 36F9  MOVE.W    (xxx).L,(A3)+
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 36FA  MOVE.W    (d16,PC),(A3)+
        b       move_w_ea_mem_10
        ori     rtn_addr, code_ptr, move_w_mem_mem_42 - cb  // 36FB  MOVE.W    (d8,PC,Xn),(A3)+
        b       fea_w_73
        extsh   data, prefetch_data                     // 36FC  MOVE.W    #<data>,(A3)+
        b       move_w_ea_mem_10
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 36FD  MOVE.W    <ea 7.5>,(A3)+   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 36FE  MOVE.W    <ea 7.6>,(A3)+   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 36FF  MOVE.W    <ea 7.7>,(A3)+   (illegal)
        b       take_illegal_instruction

// ---- $3700-$373F --------------------------------------------------------
        extsh   data, d0                                // 3700  MOVE.W    D0,-(A3)
        b       move_w_mem_mem_24
        extsh   data, d1                                // 3701  MOVE.W    D1,-(A3)
        b       move_w_mem_mem_24
        extsh   data, d2                                // 3702  MOVE.W    D2,-(A3)
        b       move_w_mem_mem_24
        extsh   data, d3                                // 3703  MOVE.W    D3,-(A3)
        b       move_w_mem_mem_24
        extsh   data, d4                                // 3704  MOVE.W    D4,-(A3)
        b       move_w_mem_mem_24
        extsh   data, d5                                // 3705  MOVE.W    D5,-(A3)
        b       move_w_mem_mem_24
        extsh   data, d6                                // 3706  MOVE.W    D6,-(A3)
        b       move_w_mem_mem_24
        extsh   data, d7                                // 3707  MOVE.W    D7,-(A3)
        b       move_w_mem_mem_24
        extsh   data, a0                                // 3708  MOVE.W    A0,-(A3)
        b       move_w_mem_mem_24
        extsh   data, a1                                // 3709  MOVE.W    A1,-(A3)
        b       move_w_mem_mem_24
        extsh   data, a2                                // 370A  MOVE.W    A2,-(A3)
        b       move_w_mem_mem_24
        extsh   data, a3                                // 370B  MOVE.W    A3,-(A3)
        b       move_w_mem_mem_24
        extsh   data, a4                                // 370C  MOVE.W    A4,-(A3)
        b       move_w_mem_mem_24
        extsh   data, a5                                // 370D  MOVE.W    A5,-(A3)
        b       move_w_mem_mem_24
        extsh   data, a6                                // 370E  MOVE.W    A6,-(A3)
        b       move_w_mem_mem_24
        extsh   data, a7                                // 370F  MOVE.W    A7,-(A3)
        b       move_w_mem_mem_24
        lha     data, 0(a0)                             // 3710  MOVE.W    (A0),-(A3)
        b       move_w_mem_mem_24
        lha     data, 0(a1)                             // 3711  MOVE.W    (A1),-(A3)
        b       move_w_mem_mem_24
        lha     data, 0(a2)                             // 3712  MOVE.W    (A2),-(A3)
        b       move_w_mem_mem_24
        lha     data, 0(a3)                             // 3713  MOVE.W    (A3),-(A3)
        b       move_w_mem_mem_24
        lha     data, 0(a4)                             // 3714  MOVE.W    (A4),-(A3)
        b       move_w_mem_mem_24
        lha     data, 0(a5)                             // 3715  MOVE.W    (A5),-(A3)
        b       move_w_mem_mem_24
        lha     data, 0(a6)                             // 3716  MOVE.W    (A6),-(A3)
        b       move_w_mem_mem_24
        lha     data, 0(a7)                             // 3717  MOVE.W    (A7),-(A3)
        b       move_w_mem_mem_24
        ori     rtn_addr, code_ptr, move_w_mem_mem_24 - cb  // 3718  MOVE.W    (A0)+,-(A3)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_24 - cb  // 3719  MOVE.W    (A1)+,-(A3)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_24 - cb  // 371A  MOVE.W    (A2)+,-(A3)
        b       fea_w_32
        lha     data, 0(a3)                             // 371B  MOVE.W    (A3)+,-(A3)
        b       test_data
        ori     rtn_addr, code_ptr, move_w_mem_mem_24 - cb  // 371C  MOVE.W    (A4)+,-(A3)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_24 - cb  // 371D  MOVE.W    (A5)+,-(A3)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_24 - cb  // 371E  MOVE.W    (A6)+,-(A3)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_24 - cb  // 371F  MOVE.W    (A7)+,-(A3)
        b       fea_w_37
        lhau    data, -2(a0)                            // 3720  MOVE.W    -(A0),-(A3)
        b       move_w_mem_mem_24
        lhau    data, -2(a1)                            // 3721  MOVE.W    -(A1),-(A3)
        b       move_w_mem_mem_24
        lhau    data, -2(a2)                            // 3722  MOVE.W    -(A2),-(A3)
        b       move_w_mem_mem_24
        lhau    data, -2(a3)                            // 3723  MOVE.W    -(A3),-(A3)
        b       move_w_mem_mem_24
        lhau    data, -2(a4)                            // 3724  MOVE.W    -(A4),-(A3)
        b       move_w_mem_mem_24
        lhau    data, -2(a5)                            // 3725  MOVE.W    -(A5),-(A3)
        b       move_w_mem_mem_24
        lhau    data, -2(a6)                            // 3726  MOVE.W    -(A6),-(A3)
        b       move_w_mem_mem_24
        lhau    data, -2(a7)                            // 3727  MOVE.W    -(A7),-(A3)
        b       move_w_mem_mem_24
        lhax    data, a0, prefetch_data                 // 3728  MOVE.W    (d16,A0),-(A3)
        b       move_w_mem_mem_23
        lhax    data, a1, prefetch_data                 // 3729  MOVE.W    (d16,A1),-(A3)
        b       move_w_mem_mem_23
        lhax    data, a2, prefetch_data                 // 372A  MOVE.W    (d16,A2),-(A3)
        b       move_w_mem_mem_23
        lhax    data, a3, prefetch_data                 // 372B  MOVE.W    (d16,A3),-(A3)
        b       move_w_mem_mem_23
        lhax    data, a4, prefetch_data                 // 372C  MOVE.W    (d16,A4),-(A3)
        b       move_w_mem_mem_23
        lhax    data, a5, prefetch_data                 // 372D  MOVE.W    (d16,A5),-(A3)
        b       move_w_mem_mem_23
        lhax    data, a6, prefetch_data                 // 372E  MOVE.W    (d16,A6),-(A3)
        b       move_w_mem_mem_23
        lhax    data, a7, prefetch_data                 // 372F  MOVE.W    (d16,A7),-(A3)
        b       move_w_mem_mem_23
        ori     rtn_addr, code_ptr, move_w_mem_mem_24 - cb  // 3730  MOVE.W    (d8,A0,Xn),-(A3)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_24 - cb  // 3731  MOVE.W    (d8,A1,Xn),-(A3)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_24 - cb  // 3732  MOVE.W    (d8,A2,Xn),-(A3)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_24 - cb  // 3733  MOVE.W    (d8,A3,Xn),-(A3)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_24 - cb  // 3734  MOVE.W    (d8,A4,Xn),-(A3)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_24 - cb  // 3735  MOVE.W    (d8,A5,Xn),-(A3)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_24 - cb  // 3736  MOVE.W    (d8,A6,Xn),-(A3)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_24 - cb  // 3737  MOVE.W    (d8,A7,Xn),-(A3)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3738  MOVE.W    (xxx).W,-(A3)
        b       move_w_mem_mem_23
        ori     rtn_addr, code_ptr, move_w_mem_mem_24 - cb  // 3739  MOVE.W    (xxx).L,-(A3)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 373A  MOVE.W    (d16,PC),-(A3)
        b       move_w_mem_mem_23
        ori     rtn_addr, code_ptr, move_w_mem_mem_24 - cb  // 373B  MOVE.W    (d8,PC,Xn),-(A3)
        b       fea_w_73
        sthu    prefetch_data, -2(a3)                   // 373C  MOVE.W    #<data>,-(A3)
        b       move_w_imm_any
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 373D  MOVE.W    <ea 7.5>,-(A3)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 373E  MOVE.W    <ea 7.6>,-(A3)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 373F  MOVE.W    <ea 7.7>,-(A3)   (illegal)
        b       take_illegal_instruction

// ---- $3740-$377F --------------------------------------------------------
        sthx    d0, a3, prefetch_data                   // 3740  MOVE.W    D0,(d16,A3)
        b       move_w_d0_mem
        extsh   data, d1                                // 3741  MOVE.W    D1,(d16,A3)
        b       move_w_mem_mem_43
        extsh   data, d2                                // 3742  MOVE.W    D2,(d16,A3)
        b       move_w_mem_mem_43
        extsh   data, d3                                // 3743  MOVE.W    D3,(d16,A3)
        b       move_w_mem_mem_43
        extsh   data, d4                                // 3744  MOVE.W    D4,(d16,A3)
        b       move_w_mem_mem_43
        extsh   data, d5                                // 3745  MOVE.W    D5,(d16,A3)
        b       move_w_mem_mem_43
        extsh   data, d6                                // 3746  MOVE.W    D6,(d16,A3)
        b       move_w_mem_mem_43
        extsh   data, d7                                // 3747  MOVE.W    D7,(d16,A3)
        b       move_w_mem_mem_43
        extsh   data, a0                                // 3748  MOVE.W    A0,(d16,A3)
        b       move_w_mem_mem_43
        extsh   data, a1                                // 3749  MOVE.W    A1,(d16,A3)
        b       move_w_mem_mem_43
        extsh   data, a2                                // 374A  MOVE.W    A2,(d16,A3)
        b       move_w_mem_mem_43
        extsh   data, a3                                // 374B  MOVE.W    A3,(d16,A3)
        b       move_w_mem_mem_43
        extsh   data, a4                                // 374C  MOVE.W    A4,(d16,A3)
        b       move_w_mem_mem_43
        extsh   data, a5                                // 374D  MOVE.W    A5,(d16,A3)
        b       move_w_mem_mem_43
        extsh   data, a6                                // 374E  MOVE.W    A6,(d16,A3)
        b       move_w_mem_mem_43
        extsh   data, a7                                // 374F  MOVE.W    A7,(d16,A3)
        b       move_w_mem_mem_43
        lha     data, 0(a0)                             // 3750  MOVE.W    (A0),(d16,A3)
        b       move_w_mem_mem_43
        lha     data, 0(a1)                             // 3751  MOVE.W    (A1),(d16,A3)
        b       move_w_mem_mem_43
        lha     data, 0(a2)                             // 3752  MOVE.W    (A2),(d16,A3)
        b       move_w_mem_mem_43
        lha     data, 0(a3)                             // 3753  MOVE.W    (A3),(d16,A3)
        b       move_w_mem_mem_43
        lha     data, 0(a4)                             // 3754  MOVE.W    (A4),(d16,A3)
        b       move_w_mem_mem_43
        lha     data, 0(a5)                             // 3755  MOVE.W    (A5),(d16,A3)
        b       move_w_mem_mem_43
        lha     data, 0(a6)                             // 3756  MOVE.W    (A6),(d16,A3)
        b       move_w_mem_mem_43
        lha     data, 0(a7)                             // 3757  MOVE.W    (A7),(d16,A3)
        b       move_w_mem_mem_43
        ori     rtn_addr, code_ptr, move_w_mem_mem_43 - cb  // 3758  MOVE.W    (A0)+,(d16,A3)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_43 - cb  // 3759  MOVE.W    (A1)+,(d16,A3)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_43 - cb  // 375A  MOVE.W    (A2)+,(d16,A3)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_43 - cb  // 375B  MOVE.W    (A3)+,(d16,A3)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_43 - cb  // 375C  MOVE.W    (A4)+,(d16,A3)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_43 - cb  // 375D  MOVE.W    (A5)+,(d16,A3)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_43 - cb  // 375E  MOVE.W    (A6)+,(d16,A3)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_43 - cb  // 375F  MOVE.W    (A7)+,(d16,A3)
        b       fea_w_37
        lhau    data, -2(a0)                            // 3760  MOVE.W    -(A0),(d16,A3)
        b       move_w_mem_mem_43
        lhau    data, -2(a1)                            // 3761  MOVE.W    -(A1),(d16,A3)
        b       move_w_mem_mem_43
        lhau    data, -2(a2)                            // 3762  MOVE.W    -(A2),(d16,A3)
        b       move_w_mem_mem_43
        lhau    data, -2(a3)                            // 3763  MOVE.W    -(A3),(d16,A3)
        b       move_w_mem_mem_43
        lhau    data, -2(a4)                            // 3764  MOVE.W    -(A4),(d16,A3)
        b       move_w_mem_mem_43
        lhau    data, -2(a5)                            // 3765  MOVE.W    -(A5),(d16,A3)
        b       move_w_mem_mem_43
        lhau    data, -2(a6)                            // 3766  MOVE.W    -(A6),(d16,A3)
        b       move_w_mem_mem_43
        lhau    data, -2(a7)                            // 3767  MOVE.W    -(A7),(d16,A3)
        b       move_w_mem_mem_43
        lhax    data, a0, prefetch_data                 // 3768  MOVE.W    (d16,A0),(d16,A3)
        b       move_w_ea_mem_11
        lhax    data, a1, prefetch_data                 // 3769  MOVE.W    (d16,A1),(d16,A3)
        b       move_w_ea_mem_11
        lhax    data, a2, prefetch_data                 // 376A  MOVE.W    (d16,A2),(d16,A3)
        b       move_w_ea_mem_11
        lhax    data, a3, prefetch_data                 // 376B  MOVE.W    (d16,A3),(d16,A3)
        b       move_w_ea_mem_11
        lhax    data, a4, prefetch_data                 // 376C  MOVE.W    (d16,A4),(d16,A3)
        b       move_w_ea_mem_11
        lhax    data, a5, prefetch_data                 // 376D  MOVE.W    (d16,A5),(d16,A3)
        b       move_w_ea_mem_11
        lhax    data, a6, prefetch_data                 // 376E  MOVE.W    (d16,A6),(d16,A3)
        b       move_w_ea_mem_11
        lhax    data, a7, prefetch_data                 // 376F  MOVE.W    (d16,A7),(d16,A3)
        b       move_w_ea_mem_11
        ori     rtn_addr, code_ptr, move_w_mem_mem_43 - cb  // 3770  MOVE.W    (d8,A0,Xn),(d16,A3)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_43 - cb  // 3771  MOVE.W    (d8,A1,Xn),(d16,A3)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_43 - cb  // 3772  MOVE.W    (d8,A2,Xn),(d16,A3)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_43 - cb  // 3773  MOVE.W    (d8,A3,Xn),(d16,A3)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_43 - cb  // 3774  MOVE.W    (d8,A4,Xn),(d16,A3)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_43 - cb  // 3775  MOVE.W    (d8,A5,Xn),(d16,A3)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_43 - cb  // 3776  MOVE.W    (d8,A6,Xn),(d16,A3)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_43 - cb  // 3777  MOVE.W    (d8,A7,Xn),(d16,A3)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3778  MOVE.W    (xxx).W,(d16,A3)
        b       move_w_ea_mem_11
        ori     rtn_addr, code_ptr, move_w_mem_mem_43 - cb  // 3779  MOVE.W    (xxx).L,(d16,A3)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 377A  MOVE.W    (d16,PC),(d16,A3)
        b       move_w_ea_mem_11
        ori     rtn_addr, code_ptr, move_w_mem_mem_43 - cb  // 377B  MOVE.W    (d8,PC,Xn),(d16,A3)
        b       fea_w_73
        extsh   data, prefetch_data                     // 377C  MOVE.W    #<data>,(d16,A3)
        b       move_w_ea_mem_11
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 377D  MOVE.W    <ea 7.5>,(d16,A3)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 377E  MOVE.W    <ea 7.6>,(d16,A3)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 377F  MOVE.W    <ea 7.7>,(d16,A3)   (illegal)
        b       take_illegal_instruction

// ---- $3780-$37BF --------------------------------------------------------
        extsh   data, d0                                // 3780  MOVE.W    D0,(d8,A3,Xn)
        b       move_w_mem_mem_44
        extsh   data, d1                                // 3781  MOVE.W    D1,(d8,A3,Xn)
        b       move_w_mem_mem_44
        extsh   data, d2                                // 3782  MOVE.W    D2,(d8,A3,Xn)
        b       move_w_mem_mem_44
        extsh   data, d3                                // 3783  MOVE.W    D3,(d8,A3,Xn)
        b       move_w_mem_mem_44
        extsh   data, d4                                // 3784  MOVE.W    D4,(d8,A3,Xn)
        b       move_w_mem_mem_44
        extsh   data, d5                                // 3785  MOVE.W    D5,(d8,A3,Xn)
        b       move_w_mem_mem_44
        extsh   data, d6                                // 3786  MOVE.W    D6,(d8,A3,Xn)
        b       move_w_mem_mem_44
        extsh   data, d7                                // 3787  MOVE.W    D7,(d8,A3,Xn)
        b       move_w_mem_mem_44
        extsh   data, a0                                // 3788  MOVE.W    A0,(d8,A3,Xn)
        b       move_w_mem_mem_44
        extsh   data, a1                                // 3789  MOVE.W    A1,(d8,A3,Xn)
        b       move_w_mem_mem_44
        extsh   data, a2                                // 378A  MOVE.W    A2,(d8,A3,Xn)
        b       move_w_mem_mem_44
        extsh   data, a3                                // 378B  MOVE.W    A3,(d8,A3,Xn)
        b       move_w_mem_mem_44
        extsh   data, a4                                // 378C  MOVE.W    A4,(d8,A3,Xn)
        b       move_w_mem_mem_44
        extsh   data, a5                                // 378D  MOVE.W    A5,(d8,A3,Xn)
        b       move_w_mem_mem_44
        extsh   data, a6                                // 378E  MOVE.W    A6,(d8,A3,Xn)
        b       move_w_mem_mem_44
        extsh   data, a7                                // 378F  MOVE.W    A7,(d8,A3,Xn)
        b       move_w_mem_mem_44
        lha     data, 0(a0)                             // 3790  MOVE.W    (A0),(d8,A3,Xn)
        b       move_w_mem_mem_44
        lha     data, 0(a1)                             // 3791  MOVE.W    (A1),(d8,A3,Xn)
        b       move_w_mem_mem_44
        lha     data, 0(a2)                             // 3792  MOVE.W    (A2),(d8,A3,Xn)
        b       move_w_mem_mem_44
        lha     data, 0(a3)                             // 3793  MOVE.W    (A3),(d8,A3,Xn)
        b       move_w_mem_mem_44
        lha     data, 0(a4)                             // 3794  MOVE.W    (A4),(d8,A3,Xn)
        b       move_w_mem_mem_44
        lha     data, 0(a5)                             // 3795  MOVE.W    (A5),(d8,A3,Xn)
        b       move_w_mem_mem_44
        lha     data, 0(a6)                             // 3796  MOVE.W    (A6),(d8,A3,Xn)
        b       move_w_mem_mem_44
        lha     data, 0(a7)                             // 3797  MOVE.W    (A7),(d8,A3,Xn)
        b       move_w_mem_mem_44
        ori     rtn_addr, code_ptr, move_w_mem_mem_44 - cb  // 3798  MOVE.W    (A0)+,(d8,A3,Xn)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_44 - cb  // 3799  MOVE.W    (A1)+,(d8,A3,Xn)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_44 - cb  // 379A  MOVE.W    (A2)+,(d8,A3,Xn)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_44 - cb  // 379B  MOVE.W    (A3)+,(d8,A3,Xn)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_44 - cb  // 379C  MOVE.W    (A4)+,(d8,A3,Xn)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_44 - cb  // 379D  MOVE.W    (A5)+,(d8,A3,Xn)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_44 - cb  // 379E  MOVE.W    (A6)+,(d8,A3,Xn)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_44 - cb  // 379F  MOVE.W    (A7)+,(d8,A3,Xn)
        b       fea_w_37
        lhau    data, -2(a0)                            // 37A0  MOVE.W    -(A0),(d8,A3,Xn)
        b       move_w_mem_mem_44
        lhau    data, -2(a1)                            // 37A1  MOVE.W    -(A1),(d8,A3,Xn)
        b       move_w_mem_mem_44
        lhau    data, -2(a2)                            // 37A2  MOVE.W    -(A2),(d8,A3,Xn)
        b       move_w_mem_mem_44
        lhau    data, -2(a3)                            // 37A3  MOVE.W    -(A3),(d8,A3,Xn)
        b       move_w_mem_mem_44
        lhau    data, -2(a4)                            // 37A4  MOVE.W    -(A4),(d8,A3,Xn)
        b       move_w_mem_mem_44
        lhau    data, -2(a5)                            // 37A5  MOVE.W    -(A5),(d8,A3,Xn)
        b       move_w_mem_mem_44
        lhau    data, -2(a6)                            // 37A6  MOVE.W    -(A6),(d8,A3,Xn)
        b       move_w_mem_mem_44
        lhau    data, -2(a7)                            // 37A7  MOVE.W    -(A7),(d8,A3,Xn)
        b       move_w_mem_mem_44
        lhax    data, a0, prefetch_data                 // 37A8  MOVE.W    (d16,A0),(d8,A3,Xn)
        b       move_w_ea_mem_12
        lhax    data, a1, prefetch_data                 // 37A9  MOVE.W    (d16,A1),(d8,A3,Xn)
        b       move_w_ea_mem_12
        lhax    data, a2, prefetch_data                 // 37AA  MOVE.W    (d16,A2),(d8,A3,Xn)
        b       move_w_ea_mem_12
        lhax    data, a3, prefetch_data                 // 37AB  MOVE.W    (d16,A3),(d8,A3,Xn)
        b       move_w_ea_mem_12
        lhax    data, a4, prefetch_data                 // 37AC  MOVE.W    (d16,A4),(d8,A3,Xn)
        b       move_w_ea_mem_12
        lhax    data, a5, prefetch_data                 // 37AD  MOVE.W    (d16,A5),(d8,A3,Xn)
        b       move_w_ea_mem_12
        lhax    data, a6, prefetch_data                 // 37AE  MOVE.W    (d16,A6),(d8,A3,Xn)
        b       move_w_ea_mem_12
        lhax    data, a7, prefetch_data                 // 37AF  MOVE.W    (d16,A7),(d8,A3,Xn)
        b       move_w_ea_mem_12
        ori     rtn_addr, code_ptr, move_w_mem_mem_44 - cb  // 37B0  MOVE.W    (d8,A0,Xn),(d8,A3,Xn)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_44 - cb  // 37B1  MOVE.W    (d8,A1,Xn),(d8,A3,Xn)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_44 - cb  // 37B2  MOVE.W    (d8,A2,Xn),(d8,A3,Xn)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_44 - cb  // 37B3  MOVE.W    (d8,A3,Xn),(d8,A3,Xn)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_44 - cb  // 37B4  MOVE.W    (d8,A4,Xn),(d8,A3,Xn)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_44 - cb  // 37B5  MOVE.W    (d8,A5,Xn),(d8,A3,Xn)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_44 - cb  // 37B6  MOVE.W    (d8,A6,Xn),(d8,A3,Xn)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_44 - cb  // 37B7  MOVE.W    (d8,A7,Xn),(d8,A3,Xn)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 37B8  MOVE.W    (xxx).W,(d8,A3,Xn)
        b       move_w_ea_mem_12
        ori     rtn_addr, code_ptr, move_w_mem_mem_44 - cb  // 37B9  MOVE.W    (xxx).L,(d8,A3,Xn)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 37BA  MOVE.W    (d16,PC),(d8,A3,Xn)
        b       move_w_ea_mem_12
        ori     rtn_addr, code_ptr, move_w_mem_mem_44 - cb  // 37BB  MOVE.W    (d8,PC,Xn),(d8,A3,Xn)
        b       fea_w_73
        extsh   data, prefetch_data                     // 37BC  MOVE.W    #<data>,(d8,A3,Xn)
        b       move_w_ea_mem_12
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37BD  MOVE.W    <ea 7.5>,(d8,A3,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37BE  MOVE.W    <ea 7.6>,(d8,A3,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37BF  MOVE.W    <ea 7.7>,(d8,A3,Xn)   (illegal)
        b       take_illegal_instruction

// ---- $37C0-$37FF --------------------------------------------------------
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37C0  MOVE.W    D0,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37C1  MOVE.W    D1,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37C2  MOVE.W    D2,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37C3  MOVE.W    D3,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37C4  MOVE.W    D4,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37C5  MOVE.W    D5,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37C6  MOVE.W    D6,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37C7  MOVE.W    D7,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37C8  MOVE.W    A0,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37C9  MOVE.W    A1,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37CA  MOVE.W    A2,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37CB  MOVE.W    A3,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37CC  MOVE.W    A4,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37CD  MOVE.W    A5,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37CE  MOVE.W    A6,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37CF  MOVE.W    A7,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37D0  MOVE.W    (A0),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37D1  MOVE.W    (A1),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37D2  MOVE.W    (A2),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37D3  MOVE.W    (A3),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37D4  MOVE.W    (A4),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37D5  MOVE.W    (A5),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37D6  MOVE.W    (A6),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37D7  MOVE.W    (A7),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37D8  MOVE.W    (A0)+,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37D9  MOVE.W    (A1)+,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37DA  MOVE.W    (A2)+,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37DB  MOVE.W    (A3)+,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37DC  MOVE.W    (A4)+,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37DD  MOVE.W    (A5)+,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37DE  MOVE.W    (A6)+,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37DF  MOVE.W    (A7)+,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37E0  MOVE.W    -(A0),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37E1  MOVE.W    -(A1),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37E2  MOVE.W    -(A2),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37E3  MOVE.W    -(A3),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37E4  MOVE.W    -(A4),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37E5  MOVE.W    -(A5),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37E6  MOVE.W    -(A6),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37E7  MOVE.W    -(A7),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37E8  MOVE.W    (d16,A0),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37E9  MOVE.W    (d16,A1),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37EA  MOVE.W    (d16,A2),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37EB  MOVE.W    (d16,A3),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37EC  MOVE.W    (d16,A4),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37ED  MOVE.W    (d16,A5),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37EE  MOVE.W    (d16,A6),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37EF  MOVE.W    (d16,A7),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37F0  MOVE.W    (d8,A0,Xn),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37F1  MOVE.W    (d8,A1,Xn),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37F2  MOVE.W    (d8,A2,Xn),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37F3  MOVE.W    (d8,A3,Xn),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37F4  MOVE.W    (d8,A4,Xn),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37F5  MOVE.W    (d8,A5,Xn),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37F6  MOVE.W    (d8,A6,Xn),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37F7  MOVE.W    (d8,A7,Xn),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37F8  MOVE.W    (xxx).W,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37F9  MOVE.W    (xxx).L,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37FA  MOVE.W    (d16,PC),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37FB  MOVE.W    (d8,PC,Xn),(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37FC  MOVE.W    #<data>,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37FD  MOVE.W    <ea 7.5>,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37FE  MOVE.W    <ea 7.6>,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 37FF  MOVE.W    <ea 7.7>,(d8,PC,Xn)   (illegal)
        b       take_illegal_instruction

// ---- $3800-$383F --------------------------------------------------------
        rlwimi  d4, d0, 0, 16, 31                       // 3800  MOVE.W    D0,D4
        b       move_w_reg_d4
        rlwimi  d4, d1, 0, 16, 31                       // 3801  MOVE.W    D1,D4
        b       move_w_reg_d4
        rlwimi  d4, d2, 0, 16, 31                       // 3802  MOVE.W    D2,D4
        b       move_w_reg_d4
        rlwimi  d4, d3, 0, 16, 31                       // 3803  MOVE.W    D3,D4
        b       move_w_reg_d4
        slwi.   data, d4, 16                            // 3804  MOVE.W    D4,D4
        b       update_vc_zero
        rlwimi  d4, d5, 0, 16, 31                       // 3805  MOVE.W    D5,D4
        b       move_w_reg_d4
        rlwimi  d4, d6, 0, 16, 31                       // 3806  MOVE.W    D6,D4
        b       move_w_reg_d4
        rlwimi  d4, d7, 0, 16, 31                       // 3807  MOVE.W    D7,D4
        b       move_w_reg_d4
        rlwimi  d4, a0, 0, 16, 31                       // 3808  MOVE.W    A0,D4
        b       move_w_reg_d4
        rlwimi  d4, a1, 0, 16, 31                       // 3809  MOVE.W    A1,D4
        b       move_w_reg_d4
        rlwimi  d4, a2, 0, 16, 31                       // 380A  MOVE.W    A2,D4
        b       move_w_reg_d4
        rlwimi  d4, a3, 0, 16, 31                       // 380B  MOVE.W    A3,D4
        b       move_w_reg_d4
        rlwimi  d4, a4, 0, 16, 31                       // 380C  MOVE.W    A4,D4
        b       move_w_reg_d4
        rlwimi  d4, a5, 0, 16, 31                       // 380D  MOVE.W    A5,D4
        b       move_w_reg_d4
        rlwimi  d4, a6, 0, 16, 31                       // 380E  MOVE.W    A6,D4
        b       move_w_reg_d4
        rlwimi  d4, a7, 0, 16, 31                       // 380F  MOVE.W    A7,D4
        b       move_w_reg_d4
        lha     data, 0(a0)                             // 3810  MOVE.W    (A0),D4
        b       move_w_mem_d4_2
        lha     data, 0(a1)                             // 3811  MOVE.W    (A1),D4
        b       move_w_mem_d4_2
        lha     data, 0(a2)                             // 3812  MOVE.W    (A2),D4
        b       move_w_mem_d4_2
        lha     data, 0(a3)                             // 3813  MOVE.W    (A3),D4
        b       move_w_mem_d4_2
        lha     data, 0(a4)                             // 3814  MOVE.W    (A4),D4
        b       move_w_mem_d4_2
        lha     data, 0(a5)                             // 3815  MOVE.W    (A5),D4
        b       move_w_mem_d4_2
        lha     data, 0(a6)                             // 3816  MOVE.W    (A6),D4
        b       move_w_mem_d4_2
        lha     data, 0(a7)                             // 3817  MOVE.W    (A7),D4
        b       move_w_mem_d4_2
        ori     rtn_addr, code_ptr, move_w_mem_d4_2 - cb  // 3818  MOVE.W    (A0)+,D4
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_d4_2 - cb  // 3819  MOVE.W    (A1)+,D4
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_d4_2 - cb  // 381A  MOVE.W    (A2)+,D4
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_d4_2 - cb  // 381B  MOVE.W    (A3)+,D4
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_d4_2 - cb  // 381C  MOVE.W    (A4)+,D4
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_d4_2 - cb  // 381D  MOVE.W    (A5)+,D4
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_d4_2 - cb  // 381E  MOVE.W    (A6)+,D4
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_d4_2 - cb  // 381F  MOVE.W    (A7)+,D4
        b       fea_w_37
        lhau    data, -2(a0)                            // 3820  MOVE.W    -(A0),D4
        b       move_w_mem_d4_2
        lhau    data, -2(a1)                            // 3821  MOVE.W    -(A1),D4
        b       move_w_mem_d4_2
        lhau    data, -2(a2)                            // 3822  MOVE.W    -(A2),D4
        b       move_w_mem_d4_2
        lhau    data, -2(a3)                            // 3823  MOVE.W    -(A3),D4
        b       move_w_mem_d4_2
        lhau    data, -2(a4)                            // 3824  MOVE.W    -(A4),D4
        b       move_w_mem_d4_2
        lhau    data, -2(a5)                            // 3825  MOVE.W    -(A5),D4
        b       move_w_mem_d4_2
        lhau    data, -2(a6)                            // 3826  MOVE.W    -(A6),D4
        b       move_w_mem_d4_2
        lhau    data, -2(a7)                            // 3827  MOVE.W    -(A7),D4
        b       move_w_mem_d4_2
        lhax    data, a0, prefetch_data                 // 3828  MOVE.W    (d16,A0),D4
        b       move_w_mem_d4
        lhax    data, a1, prefetch_data                 // 3829  MOVE.W    (d16,A1),D4
        b       move_w_mem_d4
        lhax    data, a2, prefetch_data                 // 382A  MOVE.W    (d16,A2),D4
        b       move_w_mem_d4
        lhax    data, a3, prefetch_data                 // 382B  MOVE.W    (d16,A3),D4
        b       move_w_mem_d4
        lhax    data, a4, prefetch_data                 // 382C  MOVE.W    (d16,A4),D4
        b       move_w_mem_d4
        lhax    data, a5, prefetch_data                 // 382D  MOVE.W    (d16,A5),D4
        b       move_w_mem_d4
        lhax    data, a6, prefetch_data                 // 382E  MOVE.W    (d16,A6),D4
        b       move_w_mem_d4
        lhax    data, a7, prefetch_data                 // 382F  MOVE.W    (d16,A7),D4
        b       move_w_mem_d4
        ori     rtn_addr, code_ptr, move_w_mem_d4_2 - cb  // 3830  MOVE.W    (d8,A0,Xn),D4
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_d4_2 - cb  // 3831  MOVE.W    (d8,A1,Xn),D4
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_d4_2 - cb  // 3832  MOVE.W    (d8,A2,Xn),D4
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_d4_2 - cb  // 3833  MOVE.W    (d8,A3,Xn),D4
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_d4_2 - cb  // 3834  MOVE.W    (d8,A4,Xn),D4
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_d4_2 - cb  // 3835  MOVE.W    (d8,A5,Xn),D4
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_d4_2 - cb  // 3836  MOVE.W    (d8,A6,Xn),D4
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_d4_2 - cb  // 3837  MOVE.W    (d8,A7,Xn),D4
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3838  MOVE.W    (xxx).W,D4
        b       move_w_mem_d4
        ori     rtn_addr, code_ptr, move_w_mem_d4_2 - cb  // 3839  MOVE.W    (xxx).L,D4
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 383A  MOVE.W    (d16,PC),D4
        b       move_w_mem_d4
        ori     rtn_addr, code_ptr, move_w_mem_d4_2 - cb  // 383B  MOVE.W    (d8,PC,Xn),D4
        b       fea_w_73
        rlwimi  d4, prefetch_data, 0, 16, 31            // 383C  MOVE.W    #<data>,D4
        b       move_w_imm_any
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 383D  MOVE.W    <ea 7.5>,D4   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 383E  MOVE.W    <ea 7.6>,D4   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 383F  MOVE.W    <ea 7.7>,D4   (illegal)
        b       take_illegal_instruction

// ---- $3840-$387F --------------------------------------------------------
        extsh   a4, d0                                  // 3840  MOVEA.W   D0,A4
        b       fetch
        extsh   a4, d1                                  // 3841  MOVEA.W   D1,A4
        b       fetch
        extsh   a4, d2                                  // 3842  MOVEA.W   D2,A4
        b       fetch
        extsh   a4, d3                                  // 3843  MOVEA.W   D3,A4
        b       fetch
        extsh   a4, d4                                  // 3844  MOVEA.W   D4,A4
        b       fetch
        extsh   a4, d5                                  // 3845  MOVEA.W   D5,A4
        b       fetch
        extsh   a4, d6                                  // 3846  MOVEA.W   D6,A4
        b       fetch
        extsh   a4, d7                                  // 3847  MOVEA.W   D7,A4
        b       fetch
        extsh   a4, a0                                  // 3848  MOVEA.W   A0,A4
        b       fetch
        extsh   a4, a1                                  // 3849  MOVEA.W   A1,A4
        b       fetch
        extsh   a4, a2                                  // 384A  MOVEA.W   A2,A4
        b       fetch
        extsh   a4, a3                                  // 384B  MOVEA.W   A3,A4
        b       fetch
        extsh   a4, a4                                  // 384C  MOVEA.W   A4,A4
        b       fetch
        extsh   a4, a5                                  // 384D  MOVEA.W   A5,A4
        b       fetch
        extsh   a4, a6                                  // 384E  MOVEA.W   A6,A4
        b       fetch
        extsh   a4, a7                                  // 384F  MOVEA.W   A7,A4
        b       fetch
        lha     a4, 0(a0)                               // 3850  MOVEA.W   (A0),A4
        b       fetch
        lha     a4, 0(a1)                               // 3851  MOVEA.W   (A1),A4
        b       fetch
        lha     a4, 0(a2)                               // 3852  MOVEA.W   (A2),A4
        b       fetch
        lha     a4, 0(a3)                               // 3853  MOVEA.W   (A3),A4
        b       fetch
        lha     a4, 0(a4)                               // 3854  MOVEA.W   (A4),A4
        b       fetch
        lha     a4, 0(a5)                               // 3855  MOVEA.W   (A5),A4
        b       fetch
        lha     a4, 0(a6)                               // 3856  MOVEA.W   (A6),A4
        b       fetch
        lha     a4, 0(a7)                               // 3857  MOVEA.W   (A7),A4
        b       fetch
        ori     rtn_addr, code_ptr, movea_mem_a4 - cb   // 3858  MOVEA.W   (A0)+,A4
        b       fea_w_30
        ori     rtn_addr, code_ptr, movea_mem_a4 - cb   // 3859  MOVEA.W   (A1)+,A4
        b       fea_w_31
        ori     rtn_addr, code_ptr, movea_mem_a4 - cb   // 385A  MOVEA.W   (A2)+,A4
        b       fea_w_32
        ori     rtn_addr, code_ptr, movea_mem_a4 - cb   // 385B  MOVEA.W   (A3)+,A4
        b       fea_w_33
        lha     a4, 0(a4)                               // 385C  MOVEA.W   (A4)+,A4
        b       fetch
        ori     rtn_addr, code_ptr, movea_mem_a4 - cb   // 385D  MOVEA.W   (A5)+,A4
        b       fea_w_35
        ori     rtn_addr, code_ptr, movea_mem_a4 - cb   // 385E  MOVEA.W   (A6)+,A4
        b       fea_w_36
        ori     rtn_addr, code_ptr, movea_mem_a4 - cb   // 385F  MOVEA.W   (A7)+,A4
        b       fea_w_37
        lhau    a4, -2(a0)                              // 3860  MOVEA.W   -(A0),A4
        b       fetch
        lhau    a4, -2(a1)                              // 3861  MOVEA.W   -(A1),A4
        b       fetch
        lhau    a4, -2(a2)                              // 3862  MOVEA.W   -(A2),A4
        b       fetch
        lhau    a4, -2(a3)                              // 3863  MOVEA.W   -(A3),A4
        b       fetch
        lha     a4, -2(a4)                              // 3864  MOVEA.W   -(A4),A4
        b       fetch
        lhau    a4, -2(a5)                              // 3865  MOVEA.W   -(A5),A4
        b       fetch
        lhau    a4, -2(a6)                              // 3866  MOVEA.W   -(A6),A4
        b       fetch
        lhau    a4, -2(a7)                              // 3867  MOVEA.W   -(A7),A4
        b       fetch
        lhax    a4, a0, prefetch_data                   // 3868  MOVEA.W   (d16,A0),A4
        b       fetch_skip_word
        lhax    a4, a1, prefetch_data                   // 3869  MOVEA.W   (d16,A1),A4
        b       fetch_skip_word
        lhax    a4, a2, prefetch_data                   // 386A  MOVEA.W   (d16,A2),A4
        b       fetch_skip_word
        lhax    a4, a3, prefetch_data                   // 386B  MOVEA.W   (d16,A3),A4
        b       fetch_skip_word
        lhax    a4, a4, prefetch_data                   // 386C  MOVEA.W   (d16,A4),A4
        b       fetch_skip_word
        lhax    a4, a5, prefetch_data                   // 386D  MOVEA.W   (d16,A5),A4
        b       fetch_skip_word
        lhax    a4, a6, prefetch_data                   // 386E  MOVEA.W   (d16,A6),A4
        b       fetch_skip_word
        lhax    a4, a7, prefetch_data                   // 386F  MOVEA.W   (d16,A7),A4
        b       fetch_skip_word
        ori     rtn_addr, code_ptr, movea_mem_a4 - cb   // 3870  MOVEA.W   (d8,A0,Xn),A4
        b       fea_w_60
        ori     rtn_addr, code_ptr, movea_mem_a4 - cb   // 3871  MOVEA.W   (d8,A1,Xn),A4
        b       fea_w_61
        ori     rtn_addr, code_ptr, movea_mem_a4 - cb   // 3872  MOVEA.W   (d8,A2,Xn),A4
        b       fea_w_62
        ori     rtn_addr, code_ptr, movea_mem_a4 - cb   // 3873  MOVEA.W   (d8,A3,Xn),A4
        b       fea_w_63
        ori     rtn_addr, code_ptr, movea_mem_a4 - cb   // 3874  MOVEA.W   (d8,A4,Xn),A4
        b       fea_w_64
        ori     rtn_addr, code_ptr, movea_mem_a4 - cb   // 3875  MOVEA.W   (d8,A5,Xn),A4
        b       fea_w_65
        ori     rtn_addr, code_ptr, movea_mem_a4 - cb   // 3876  MOVEA.W   (d8,A6,Xn),A4
        b       fea_w_66
        ori     rtn_addr, code_ptr, movea_mem_a4 - cb   // 3877  MOVEA.W   (d8,A7,Xn),A4
        b       fea_w_67
        lha     a4, 0(prefetch_data)                    // 3878  MOVEA.W   (xxx).W,A4
        b       fetch_skip_word
        ori     rtn_addr, code_ptr, movea_mem_a4 - cb   // 3879  MOVEA.W   (xxx).L,A4
        b       fea_w_71
        lhax    a4, pc, prefetch_data                   // 387A  MOVEA.W   (d16,PC),A4
        b       fetch_skip_word
        ori     rtn_addr, code_ptr, movea_mem_a4 - cb   // 387B  MOVEA.W   (d8,PC,Xn),A4
        b       fea_w_73
        mr      a4, prefetch_data                       // 387C  MOVEA.W   #<data>,A4
        b       fetch_skip_word
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 387D  MOVEA.W   <ea 7.5>,A4   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 387E  MOVEA.W   <ea 7.6>,A4   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 387F  MOVEA.W   <ea 7.7>,A4   (illegal)
        b       take_illegal_instruction

// ---- $3880-$38BF --------------------------------------------------------
        extsh   data, d0                                // 3880  MOVE.W    D0,(A4)
        b       move_w_mem_mem_10
        extsh   data, d1                                // 3881  MOVE.W    D1,(A4)
        b       move_w_mem_mem_10
        extsh   data, d2                                // 3882  MOVE.W    D2,(A4)
        b       move_w_mem_mem_10
        extsh   data, d3                                // 3883  MOVE.W    D3,(A4)
        b       move_w_mem_mem_10
        extsh   data, d4                                // 3884  MOVE.W    D4,(A4)
        b       move_w_mem_mem_10
        extsh   data, d5                                // 3885  MOVE.W    D5,(A4)
        b       move_w_mem_mem_10
        extsh   data, d6                                // 3886  MOVE.W    D6,(A4)
        b       move_w_mem_mem_10
        extsh   data, d7                                // 3887  MOVE.W    D7,(A4)
        b       move_w_mem_mem_10
        extsh   data, a0                                // 3888  MOVE.W    A0,(A4)
        b       move_w_mem_mem_10
        extsh   data, a1                                // 3889  MOVE.W    A1,(A4)
        b       move_w_mem_mem_10
        extsh   data, a2                                // 388A  MOVE.W    A2,(A4)
        b       move_w_mem_mem_10
        extsh   data, a3                                // 388B  MOVE.W    A3,(A4)
        b       move_w_mem_mem_10
        extsh   data, a4                                // 388C  MOVE.W    A4,(A4)
        b       move_w_mem_mem_10
        extsh   data, a5                                // 388D  MOVE.W    A5,(A4)
        b       move_w_mem_mem_10
        extsh   data, a6                                // 388E  MOVE.W    A6,(A4)
        b       move_w_mem_mem_10
        extsh   data, a7                                // 388F  MOVE.W    A7,(A4)
        b       move_w_mem_mem_10
        lha     data, 0(a0)                             // 3890  MOVE.W    (A0),(A4)
        b       move_w_mem_mem_10
        lha     data, 0(a1)                             // 3891  MOVE.W    (A1),(A4)
        b       move_w_mem_mem_10
        lha     data, 0(a2)                             // 3892  MOVE.W    (A2),(A4)
        b       move_w_mem_mem_10
        lha     data, 0(a3)                             // 3893  MOVE.W    (A3),(A4)
        b       move_w_mem_mem_10
        lha     data, 0(a4)                             // 3894  MOVE.W    (A4),(A4)
        b       test_data
        lha     data, 0(a5)                             // 3895  MOVE.W    (A5),(A4)
        b       move_w_mem_mem_10
        lha     data, 0(a6)                             // 3896  MOVE.W    (A6),(A4)
        b       move_w_mem_mem_10
        lha     data, 0(a7)                             // 3897  MOVE.W    (A7),(A4)
        b       move_w_mem_mem_10
        ori     rtn_addr, code_ptr, move_w_mem_mem_10 - cb  // 3898  MOVE.W    (A0)+,(A4)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_10 - cb  // 3899  MOVE.W    (A1)+,(A4)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_10 - cb  // 389A  MOVE.W    (A2)+,(A4)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_10 - cb  // 389B  MOVE.W    (A3)+,(A4)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_10 - cb  // 389C  MOVE.W    (A4)+,(A4)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_10 - cb  // 389D  MOVE.W    (A5)+,(A4)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_10 - cb  // 389E  MOVE.W    (A6)+,(A4)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_10 - cb  // 389F  MOVE.W    (A7)+,(A4)
        b       fea_w_37
        lhau    data, -2(a0)                            // 38A0  MOVE.W    -(A0),(A4)
        b       move_w_mem_mem_10
        lhau    data, -2(a1)                            // 38A1  MOVE.W    -(A1),(A4)
        b       move_w_mem_mem_10
        lhau    data, -2(a2)                            // 38A2  MOVE.W    -(A2),(A4)
        b       move_w_mem_mem_10
        lhau    data, -2(a3)                            // 38A3  MOVE.W    -(A3),(A4)
        b       move_w_mem_mem_10
        lhau    data, -2(a4)                            // 38A4  MOVE.W    -(A4),(A4)
        b       test_data
        lhau    data, -2(a5)                            // 38A5  MOVE.W    -(A5),(A4)
        b       move_w_mem_mem_10
        lhau    data, -2(a6)                            // 38A6  MOVE.W    -(A6),(A4)
        b       move_w_mem_mem_10
        lhau    data, -2(a7)                            // 38A7  MOVE.W    -(A7),(A4)
        b       move_w_mem_mem_10
        lhax    data, a0, prefetch_data                 // 38A8  MOVE.W    (d16,A0),(A4)
        b       move_w_mem_mem_9
        lhax    data, a1, prefetch_data                 // 38A9  MOVE.W    (d16,A1),(A4)
        b       move_w_mem_mem_9
        lhax    data, a2, prefetch_data                 // 38AA  MOVE.W    (d16,A2),(A4)
        b       move_w_mem_mem_9
        lhax    data, a3, prefetch_data                 // 38AB  MOVE.W    (d16,A3),(A4)
        b       move_w_mem_mem_9
        lhax    data, a4, prefetch_data                 // 38AC  MOVE.W    (d16,A4),(A4)
        b       move_w_mem_mem_9
        lhax    data, a5, prefetch_data                 // 38AD  MOVE.W    (d16,A5),(A4)
        b       move_w_mem_mem_9
        lhax    data, a6, prefetch_data                 // 38AE  MOVE.W    (d16,A6),(A4)
        b       move_w_mem_mem_9
        lhax    data, a7, prefetch_data                 // 38AF  MOVE.W    (d16,A7),(A4)
        b       move_w_mem_mem_9
        ori     rtn_addr, code_ptr, move_w_mem_mem_10 - cb  // 38B0  MOVE.W    (d8,A0,Xn),(A4)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_10 - cb  // 38B1  MOVE.W    (d8,A1,Xn),(A4)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_10 - cb  // 38B2  MOVE.W    (d8,A2,Xn),(A4)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_10 - cb  // 38B3  MOVE.W    (d8,A3,Xn),(A4)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_10 - cb  // 38B4  MOVE.W    (d8,A4,Xn),(A4)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_10 - cb  // 38B5  MOVE.W    (d8,A5,Xn),(A4)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_10 - cb  // 38B6  MOVE.W    (d8,A6,Xn),(A4)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_10 - cb  // 38B7  MOVE.W    (d8,A7,Xn),(A4)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 38B8  MOVE.W    (xxx).W,(A4)
        b       move_w_mem_mem_9
        ori     rtn_addr, code_ptr, move_w_mem_mem_10 - cb  // 38B9  MOVE.W    (xxx).L,(A4)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 38BA  MOVE.W    (d16,PC),(A4)
        b       move_w_mem_mem_9
        ori     rtn_addr, code_ptr, move_w_mem_mem_10 - cb  // 38BB  MOVE.W    (d8,PC,Xn),(A4)
        b       fea_w_73
        sth     prefetch_data, 0(a4)                    // 38BC  MOVE.W    #<data>,(A4)
        b       move_w_imm_any
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 38BD  MOVE.W    <ea 7.5>,(A4)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 38BE  MOVE.W    <ea 7.6>,(A4)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 38BF  MOVE.W    <ea 7.7>,(A4)   (illegal)
        b       take_illegal_instruction

// ---- $38C0-$38FF --------------------------------------------------------
        extsh   data, d0                                // 38C0  MOVE.W    D0,(A4)+
        b       move_w_mem_mem_45
        extsh   data, d1                                // 38C1  MOVE.W    D1,(A4)+
        b       move_w_mem_mem_45
        extsh   data, d2                                // 38C2  MOVE.W    D2,(A4)+
        b       move_w_mem_mem_45
        extsh   data, d3                                // 38C3  MOVE.W    D3,(A4)+
        b       move_w_mem_mem_45
        extsh   data, d4                                // 38C4  MOVE.W    D4,(A4)+
        b       move_w_mem_mem_45
        extsh   data, d5                                // 38C5  MOVE.W    D5,(A4)+
        b       move_w_mem_mem_45
        extsh   data, d6                                // 38C6  MOVE.W    D6,(A4)+
        b       move_w_mem_mem_45
        extsh   data, d7                                // 38C7  MOVE.W    D7,(A4)+
        b       move_w_mem_mem_45
        extsh   data, a0                                // 38C8  MOVE.W    A0,(A4)+
        b       move_w_mem_mem_45
        extsh   data, a1                                // 38C9  MOVE.W    A1,(A4)+
        b       move_w_mem_mem_45
        extsh   data, a2                                // 38CA  MOVE.W    A2,(A4)+
        b       move_w_mem_mem_45
        extsh   data, a3                                // 38CB  MOVE.W    A3,(A4)+
        b       move_w_mem_mem_45
        extsh   data, a4                                // 38CC  MOVE.W    A4,(A4)+
        b       move_w_mem_mem_45
        extsh   data, a5                                // 38CD  MOVE.W    A5,(A4)+
        b       move_w_mem_mem_45
        extsh   data, a6                                // 38CE  MOVE.W    A6,(A4)+
        b       move_w_mem_mem_45
        extsh   data, a7                                // 38CF  MOVE.W    A7,(A4)+
        b       move_w_mem_mem_45
        lha     data, 0(a0)                             // 38D0  MOVE.W    (A0),(A4)+
        b       move_w_mem_mem_45
        lha     data, 0(a1)                             // 38D1  MOVE.W    (A1),(A4)+
        b       move_w_mem_mem_45
        lha     data, 0(a2)                             // 38D2  MOVE.W    (A2),(A4)+
        b       move_w_mem_mem_45
        lha     data, 0(a3)                             // 38D3  MOVE.W    (A3),(A4)+
        b       move_w_mem_mem_45
        lha     data, 0(a4)                             // 38D4  MOVE.W    (A4),(A4)+
        b       move_w_mem_mem_45
        lha     data, 0(a5)                             // 38D5  MOVE.W    (A5),(A4)+
        b       move_w_mem_mem_45
        lha     data, 0(a6)                             // 38D6  MOVE.W    (A6),(A4)+
        b       move_w_mem_mem_45
        lha     data, 0(a7)                             // 38D7  MOVE.W    (A7),(A4)+
        b       move_w_mem_mem_45
        ori     rtn_addr, code_ptr, move_w_mem_mem_45 - cb  // 38D8  MOVE.W    (A0)+,(A4)+
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_45 - cb  // 38D9  MOVE.W    (A1)+,(A4)+
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_45 - cb  // 38DA  MOVE.W    (A2)+,(A4)+
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_45 - cb  // 38DB  MOVE.W    (A3)+,(A4)+
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_45 - cb  // 38DC  MOVE.W    (A4)+,(A4)+
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_45 - cb  // 38DD  MOVE.W    (A5)+,(A4)+
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_45 - cb  // 38DE  MOVE.W    (A6)+,(A4)+
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_45 - cb  // 38DF  MOVE.W    (A7)+,(A4)+
        b       fea_w_37
        lhau    data, -2(a0)                            // 38E0  MOVE.W    -(A0),(A4)+
        b       move_w_mem_mem_45
        lhau    data, -2(a1)                            // 38E1  MOVE.W    -(A1),(A4)+
        b       move_w_mem_mem_45
        lhau    data, -2(a2)                            // 38E2  MOVE.W    -(A2),(A4)+
        b       move_w_mem_mem_45
        lhau    data, -2(a3)                            // 38E3  MOVE.W    -(A3),(A4)+
        b       move_w_mem_mem_45
        lha     data, -2(a4)                            // 38E4  MOVE.W    -(A4),(A4)+
        b       test_data
        lhau    data, -2(a5)                            // 38E5  MOVE.W    -(A5),(A4)+
        b       move_w_mem_mem_45
        lhau    data, -2(a6)                            // 38E6  MOVE.W    -(A6),(A4)+
        b       move_w_mem_mem_45
        lhau    data, -2(a7)                            // 38E7  MOVE.W    -(A7),(A4)+
        b       move_w_mem_mem_45
        lhax    data, a0, prefetch_data                 // 38E8  MOVE.W    (d16,A0),(A4)+
        b       move_w_ea_mem_13
        lhax    data, a1, prefetch_data                 // 38E9  MOVE.W    (d16,A1),(A4)+
        b       move_w_ea_mem_13
        lhax    data, a2, prefetch_data                 // 38EA  MOVE.W    (d16,A2),(A4)+
        b       move_w_ea_mem_13
        lhax    data, a3, prefetch_data                 // 38EB  MOVE.W    (d16,A3),(A4)+
        b       move_w_ea_mem_13
        lhax    data, a4, prefetch_data                 // 38EC  MOVE.W    (d16,A4),(A4)+
        b       move_w_ea_mem_13
        lhax    data, a5, prefetch_data                 // 38ED  MOVE.W    (d16,A5),(A4)+
        b       move_w_ea_mem_13
        lhax    data, a6, prefetch_data                 // 38EE  MOVE.W    (d16,A6),(A4)+
        b       move_w_ea_mem_13
        lhax    data, a7, prefetch_data                 // 38EF  MOVE.W    (d16,A7),(A4)+
        b       move_w_ea_mem_13
        ori     rtn_addr, code_ptr, move_w_mem_mem_45 - cb  // 38F0  MOVE.W    (d8,A0,Xn),(A4)+
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_45 - cb  // 38F1  MOVE.W    (d8,A1,Xn),(A4)+
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_45 - cb  // 38F2  MOVE.W    (d8,A2,Xn),(A4)+
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_45 - cb  // 38F3  MOVE.W    (d8,A3,Xn),(A4)+
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_45 - cb  // 38F4  MOVE.W    (d8,A4,Xn),(A4)+
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_45 - cb  // 38F5  MOVE.W    (d8,A5,Xn),(A4)+
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_45 - cb  // 38F6  MOVE.W    (d8,A6,Xn),(A4)+
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_45 - cb  // 38F7  MOVE.W    (d8,A7,Xn),(A4)+
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 38F8  MOVE.W    (xxx).W,(A4)+
        b       move_w_ea_mem_13
        ori     rtn_addr, code_ptr, move_w_mem_mem_45 - cb  // 38F9  MOVE.W    (xxx).L,(A4)+
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 38FA  MOVE.W    (d16,PC),(A4)+
        b       move_w_ea_mem_13
        ori     rtn_addr, code_ptr, move_w_mem_mem_45 - cb  // 38FB  MOVE.W    (d8,PC,Xn),(A4)+
        b       fea_w_73
        extsh   data, prefetch_data                     // 38FC  MOVE.W    #<data>,(A4)+
        b       move_w_ea_mem_13
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 38FD  MOVE.W    <ea 7.5>,(A4)+   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 38FE  MOVE.W    <ea 7.6>,(A4)+   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 38FF  MOVE.W    <ea 7.7>,(A4)+   (illegal)
        b       take_illegal_instruction

// ---- $3900-$393F --------------------------------------------------------
        extsh   data, d0                                // 3900  MOVE.W    D0,-(A4)
        b       move_w_mem_mem_26
        extsh   data, d1                                // 3901  MOVE.W    D1,-(A4)
        b       move_w_mem_mem_26
        extsh   data, d2                                // 3902  MOVE.W    D2,-(A4)
        b       move_w_mem_mem_26
        extsh   data, d3                                // 3903  MOVE.W    D3,-(A4)
        b       move_w_mem_mem_26
        extsh   data, d4                                // 3904  MOVE.W    D4,-(A4)
        b       move_w_mem_mem_26
        extsh   data, d5                                // 3905  MOVE.W    D5,-(A4)
        b       move_w_mem_mem_26
        extsh   data, d6                                // 3906  MOVE.W    D6,-(A4)
        b       move_w_mem_mem_26
        extsh   data, d7                                // 3907  MOVE.W    D7,-(A4)
        b       move_w_mem_mem_26
        extsh   data, a0                                // 3908  MOVE.W    A0,-(A4)
        b       move_w_mem_mem_26
        extsh   data, a1                                // 3909  MOVE.W    A1,-(A4)
        b       move_w_mem_mem_26
        extsh   data, a2                                // 390A  MOVE.W    A2,-(A4)
        b       move_w_mem_mem_26
        extsh   data, a3                                // 390B  MOVE.W    A3,-(A4)
        b       move_w_mem_mem_26
        extsh   data, a4                                // 390C  MOVE.W    A4,-(A4)
        b       move_w_mem_mem_26
        extsh   data, a5                                // 390D  MOVE.W    A5,-(A4)
        b       move_w_mem_mem_26
        extsh   data, a6                                // 390E  MOVE.W    A6,-(A4)
        b       move_w_mem_mem_26
        extsh   data, a7                                // 390F  MOVE.W    A7,-(A4)
        b       move_w_mem_mem_26
        lha     data, 0(a0)                             // 3910  MOVE.W    (A0),-(A4)
        b       move_w_mem_mem_26
        lha     data, 0(a1)                             // 3911  MOVE.W    (A1),-(A4)
        b       move_w_mem_mem_26
        lha     data, 0(a2)                             // 3912  MOVE.W    (A2),-(A4)
        b       move_w_mem_mem_26
        lha     data, 0(a3)                             // 3913  MOVE.W    (A3),-(A4)
        b       move_w_mem_mem_26
        lha     data, 0(a4)                             // 3914  MOVE.W    (A4),-(A4)
        b       move_w_mem_mem_26
        lha     data, 0(a5)                             // 3915  MOVE.W    (A5),-(A4)
        b       move_w_mem_mem_26
        lha     data, 0(a6)                             // 3916  MOVE.W    (A6),-(A4)
        b       move_w_mem_mem_26
        lha     data, 0(a7)                             // 3917  MOVE.W    (A7),-(A4)
        b       move_w_mem_mem_26
        ori     rtn_addr, code_ptr, move_w_mem_mem_26 - cb  // 3918  MOVE.W    (A0)+,-(A4)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_26 - cb  // 3919  MOVE.W    (A1)+,-(A4)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_26 - cb  // 391A  MOVE.W    (A2)+,-(A4)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_26 - cb  // 391B  MOVE.W    (A3)+,-(A4)
        b       fea_w_33
        lha     data, 0(a4)                             // 391C  MOVE.W    (A4)+,-(A4)
        b       test_data
        ori     rtn_addr, code_ptr, move_w_mem_mem_26 - cb  // 391D  MOVE.W    (A5)+,-(A4)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_26 - cb  // 391E  MOVE.W    (A6)+,-(A4)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_26 - cb  // 391F  MOVE.W    (A7)+,-(A4)
        b       fea_w_37
        lhau    data, -2(a0)                            // 3920  MOVE.W    -(A0),-(A4)
        b       move_w_mem_mem_26
        lhau    data, -2(a1)                            // 3921  MOVE.W    -(A1),-(A4)
        b       move_w_mem_mem_26
        lhau    data, -2(a2)                            // 3922  MOVE.W    -(A2),-(A4)
        b       move_w_mem_mem_26
        lhau    data, -2(a3)                            // 3923  MOVE.W    -(A3),-(A4)
        b       move_w_mem_mem_26
        lhau    data, -2(a4)                            // 3924  MOVE.W    -(A4),-(A4)
        b       move_w_mem_mem_26
        lhau    data, -2(a5)                            // 3925  MOVE.W    -(A5),-(A4)
        b       move_w_mem_mem_26
        lhau    data, -2(a6)                            // 3926  MOVE.W    -(A6),-(A4)
        b       move_w_mem_mem_26
        lhau    data, -2(a7)                            // 3927  MOVE.W    -(A7),-(A4)
        b       move_w_mem_mem_26
        lhax    data, a0, prefetch_data                 // 3928  MOVE.W    (d16,A0),-(A4)
        b       move_w_mem_mem_25
        lhax    data, a1, prefetch_data                 // 3929  MOVE.W    (d16,A1),-(A4)
        b       move_w_mem_mem_25
        lhax    data, a2, prefetch_data                 // 392A  MOVE.W    (d16,A2),-(A4)
        b       move_w_mem_mem_25
        lhax    data, a3, prefetch_data                 // 392B  MOVE.W    (d16,A3),-(A4)
        b       move_w_mem_mem_25
        lhax    data, a4, prefetch_data                 // 392C  MOVE.W    (d16,A4),-(A4)
        b       move_w_mem_mem_25
        lhax    data, a5, prefetch_data                 // 392D  MOVE.W    (d16,A5),-(A4)
        b       move_w_mem_mem_25
        lhax    data, a6, prefetch_data                 // 392E  MOVE.W    (d16,A6),-(A4)
        b       move_w_mem_mem_25
        lhax    data, a7, prefetch_data                 // 392F  MOVE.W    (d16,A7),-(A4)
        b       move_w_mem_mem_25
        ori     rtn_addr, code_ptr, move_w_mem_mem_26 - cb  // 3930  MOVE.W    (d8,A0,Xn),-(A4)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_26 - cb  // 3931  MOVE.W    (d8,A1,Xn),-(A4)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_26 - cb  // 3932  MOVE.W    (d8,A2,Xn),-(A4)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_26 - cb  // 3933  MOVE.W    (d8,A3,Xn),-(A4)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_26 - cb  // 3934  MOVE.W    (d8,A4,Xn),-(A4)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_26 - cb  // 3935  MOVE.W    (d8,A5,Xn),-(A4)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_26 - cb  // 3936  MOVE.W    (d8,A6,Xn),-(A4)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_26 - cb  // 3937  MOVE.W    (d8,A7,Xn),-(A4)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3938  MOVE.W    (xxx).W,-(A4)
        b       move_w_mem_mem_25
        ori     rtn_addr, code_ptr, move_w_mem_mem_26 - cb  // 3939  MOVE.W    (xxx).L,-(A4)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 393A  MOVE.W    (d16,PC),-(A4)
        b       move_w_mem_mem_25
        ori     rtn_addr, code_ptr, move_w_mem_mem_26 - cb  // 393B  MOVE.W    (d8,PC,Xn),-(A4)
        b       fea_w_73
        sthu    prefetch_data, -2(a4)                   // 393C  MOVE.W    #<data>,-(A4)
        b       move_w_imm_any
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 393D  MOVE.W    <ea 7.5>,-(A4)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 393E  MOVE.W    <ea 7.6>,-(A4)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 393F  MOVE.W    <ea 7.7>,-(A4)   (illegal)
        b       take_illegal_instruction

// ---- $3940-$397F --------------------------------------------------------
        sthx    d0, a4, prefetch_data                   // 3940  MOVE.W    D0,(d16,A4)
        b       move_w_d0_mem
        extsh   data, d1                                // 3941  MOVE.W    D1,(d16,A4)
        b       move_w_mem_mem_46
        extsh   data, d2                                // 3942  MOVE.W    D2,(d16,A4)
        b       move_w_mem_mem_46
        extsh   data, d3                                // 3943  MOVE.W    D3,(d16,A4)
        b       move_w_mem_mem_46
        extsh   data, d4                                // 3944  MOVE.W    D4,(d16,A4)
        b       move_w_mem_mem_46
        extsh   data, d5                                // 3945  MOVE.W    D5,(d16,A4)
        b       move_w_mem_mem_46
        extsh   data, d6                                // 3946  MOVE.W    D6,(d16,A4)
        b       move_w_mem_mem_46
        extsh   data, d7                                // 3947  MOVE.W    D7,(d16,A4)
        b       move_w_mem_mem_46
        extsh   data, a0                                // 3948  MOVE.W    A0,(d16,A4)
        b       move_w_mem_mem_46
        extsh   data, a1                                // 3949  MOVE.W    A1,(d16,A4)
        b       move_w_mem_mem_46
        extsh   data, a2                                // 394A  MOVE.W    A2,(d16,A4)
        b       move_w_mem_mem_46
        extsh   data, a3                                // 394B  MOVE.W    A3,(d16,A4)
        b       move_w_mem_mem_46
        extsh   data, a4                                // 394C  MOVE.W    A4,(d16,A4)
        b       move_w_mem_mem_46
        extsh   data, a5                                // 394D  MOVE.W    A5,(d16,A4)
        b       move_w_mem_mem_46
        extsh   data, a6                                // 394E  MOVE.W    A6,(d16,A4)
        b       move_w_mem_mem_46
        extsh   data, a7                                // 394F  MOVE.W    A7,(d16,A4)
        b       move_w_mem_mem_46
        lha     data, 0(a0)                             // 3950  MOVE.W    (A0),(d16,A4)
        b       move_w_mem_mem_46
        lha     data, 0(a1)                             // 3951  MOVE.W    (A1),(d16,A4)
        b       move_w_mem_mem_46
        lha     data, 0(a2)                             // 3952  MOVE.W    (A2),(d16,A4)
        b       move_w_mem_mem_46
        lha     data, 0(a3)                             // 3953  MOVE.W    (A3),(d16,A4)
        b       move_w_mem_mem_46
        lha     data, 0(a4)                             // 3954  MOVE.W    (A4),(d16,A4)
        b       move_w_mem_mem_46
        lha     data, 0(a5)                             // 3955  MOVE.W    (A5),(d16,A4)
        b       move_w_mem_mem_46
        lha     data, 0(a6)                             // 3956  MOVE.W    (A6),(d16,A4)
        b       move_w_mem_mem_46
        lha     data, 0(a7)                             // 3957  MOVE.W    (A7),(d16,A4)
        b       move_w_mem_mem_46
        ori     rtn_addr, code_ptr, move_w_mem_mem_46 - cb  // 3958  MOVE.W    (A0)+,(d16,A4)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_46 - cb  // 3959  MOVE.W    (A1)+,(d16,A4)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_46 - cb  // 395A  MOVE.W    (A2)+,(d16,A4)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_46 - cb  // 395B  MOVE.W    (A3)+,(d16,A4)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_46 - cb  // 395C  MOVE.W    (A4)+,(d16,A4)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_46 - cb  // 395D  MOVE.W    (A5)+,(d16,A4)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_46 - cb  // 395E  MOVE.W    (A6)+,(d16,A4)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_46 - cb  // 395F  MOVE.W    (A7)+,(d16,A4)
        b       fea_w_37
        lhau    data, -2(a0)                            // 3960  MOVE.W    -(A0),(d16,A4)
        b       move_w_mem_mem_46
        lhau    data, -2(a1)                            // 3961  MOVE.W    -(A1),(d16,A4)
        b       move_w_mem_mem_46
        lhau    data, -2(a2)                            // 3962  MOVE.W    -(A2),(d16,A4)
        b       move_w_mem_mem_46
        lhau    data, -2(a3)                            // 3963  MOVE.W    -(A3),(d16,A4)
        b       move_w_mem_mem_46
        lhau    data, -2(a4)                            // 3964  MOVE.W    -(A4),(d16,A4)
        b       move_w_mem_mem_46
        lhau    data, -2(a5)                            // 3965  MOVE.W    -(A5),(d16,A4)
        b       move_w_mem_mem_46
        lhau    data, -2(a6)                            // 3966  MOVE.W    -(A6),(d16,A4)
        b       move_w_mem_mem_46
        lhau    data, -2(a7)                            // 3967  MOVE.W    -(A7),(d16,A4)
        b       move_w_mem_mem_46
        lhax    data, a0, prefetch_data                 // 3968  MOVE.W    (d16,A0),(d16,A4)
        b       move_w_ea_mem_14
        lhax    data, a1, prefetch_data                 // 3969  MOVE.W    (d16,A1),(d16,A4)
        b       move_w_ea_mem_14
        lhax    data, a2, prefetch_data                 // 396A  MOVE.W    (d16,A2),(d16,A4)
        b       move_w_ea_mem_14
        lhax    data, a3, prefetch_data                 // 396B  MOVE.W    (d16,A3),(d16,A4)
        b       move_w_ea_mem_14
        lhax    data, a4, prefetch_data                 // 396C  MOVE.W    (d16,A4),(d16,A4)
        b       move_w_ea_mem_14
        lhax    data, a5, prefetch_data                 // 396D  MOVE.W    (d16,A5),(d16,A4)
        b       move_w_ea_mem_14
        lhax    data, a6, prefetch_data                 // 396E  MOVE.W    (d16,A6),(d16,A4)
        b       move_w_ea_mem_14
        lhax    data, a7, prefetch_data                 // 396F  MOVE.W    (d16,A7),(d16,A4)
        b       move_w_ea_mem_14
        ori     rtn_addr, code_ptr, move_w_mem_mem_46 - cb  // 3970  MOVE.W    (d8,A0,Xn),(d16,A4)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_46 - cb  // 3971  MOVE.W    (d8,A1,Xn),(d16,A4)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_46 - cb  // 3972  MOVE.W    (d8,A2,Xn),(d16,A4)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_46 - cb  // 3973  MOVE.W    (d8,A3,Xn),(d16,A4)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_46 - cb  // 3974  MOVE.W    (d8,A4,Xn),(d16,A4)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_46 - cb  // 3975  MOVE.W    (d8,A5,Xn),(d16,A4)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_46 - cb  // 3976  MOVE.W    (d8,A6,Xn),(d16,A4)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_46 - cb  // 3977  MOVE.W    (d8,A7,Xn),(d16,A4)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3978  MOVE.W    (xxx).W,(d16,A4)
        b       move_w_ea_mem_14
        ori     rtn_addr, code_ptr, move_w_mem_mem_46 - cb  // 3979  MOVE.W    (xxx).L,(d16,A4)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 397A  MOVE.W    (d16,PC),(d16,A4)
        b       move_w_ea_mem_14
        ori     rtn_addr, code_ptr, move_w_mem_mem_46 - cb  // 397B  MOVE.W    (d8,PC,Xn),(d16,A4)
        b       fea_w_73
        extsh   data, prefetch_data                     // 397C  MOVE.W    #<data>,(d16,A4)
        b       move_w_ea_mem_14
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 397D  MOVE.W    <ea 7.5>,(d16,A4)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 397E  MOVE.W    <ea 7.6>,(d16,A4)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 397F  MOVE.W    <ea 7.7>,(d16,A4)   (illegal)
        b       take_illegal_instruction

// ---- $3980-$39BF --------------------------------------------------------
        extsh   data, d0                                // 3980  MOVE.W    D0,(d8,A4,Xn)
        b       move_w_mem_mem_47
        extsh   data, d1                                // 3981  MOVE.W    D1,(d8,A4,Xn)
        b       move_w_mem_mem_47
        extsh   data, d2                                // 3982  MOVE.W    D2,(d8,A4,Xn)
        b       move_w_mem_mem_47
        extsh   data, d3                                // 3983  MOVE.W    D3,(d8,A4,Xn)
        b       move_w_mem_mem_47
        extsh   data, d4                                // 3984  MOVE.W    D4,(d8,A4,Xn)
        b       move_w_mem_mem_47
        extsh   data, d5                                // 3985  MOVE.W    D5,(d8,A4,Xn)
        b       move_w_mem_mem_47
        extsh   data, d6                                // 3986  MOVE.W    D6,(d8,A4,Xn)
        b       move_w_mem_mem_47
        extsh   data, d7                                // 3987  MOVE.W    D7,(d8,A4,Xn)
        b       move_w_mem_mem_47
        extsh   data, a0                                // 3988  MOVE.W    A0,(d8,A4,Xn)
        b       move_w_mem_mem_47
        extsh   data, a1                                // 3989  MOVE.W    A1,(d8,A4,Xn)
        b       move_w_mem_mem_47
        extsh   data, a2                                // 398A  MOVE.W    A2,(d8,A4,Xn)
        b       move_w_mem_mem_47
        extsh   data, a3                                // 398B  MOVE.W    A3,(d8,A4,Xn)
        b       move_w_mem_mem_47
        extsh   data, a4                                // 398C  MOVE.W    A4,(d8,A4,Xn)
        b       move_w_mem_mem_47
        extsh   data, a5                                // 398D  MOVE.W    A5,(d8,A4,Xn)
        b       move_w_mem_mem_47
        extsh   data, a6                                // 398E  MOVE.W    A6,(d8,A4,Xn)
        b       move_w_mem_mem_47
        extsh   data, a7                                // 398F  MOVE.W    A7,(d8,A4,Xn)
        b       move_w_mem_mem_47
        lha     data, 0(a0)                             // 3990  MOVE.W    (A0),(d8,A4,Xn)
        b       move_w_mem_mem_47
        lha     data, 0(a1)                             // 3991  MOVE.W    (A1),(d8,A4,Xn)
        b       move_w_mem_mem_47
        lha     data, 0(a2)                             // 3992  MOVE.W    (A2),(d8,A4,Xn)
        b       move_w_mem_mem_47
        lha     data, 0(a3)                             // 3993  MOVE.W    (A3),(d8,A4,Xn)
        b       move_w_mem_mem_47
        lha     data, 0(a4)                             // 3994  MOVE.W    (A4),(d8,A4,Xn)
        b       move_w_mem_mem_47
        lha     data, 0(a5)                             // 3995  MOVE.W    (A5),(d8,A4,Xn)
        b       move_w_mem_mem_47
        lha     data, 0(a6)                             // 3996  MOVE.W    (A6),(d8,A4,Xn)
        b       move_w_mem_mem_47
        lha     data, 0(a7)                             // 3997  MOVE.W    (A7),(d8,A4,Xn)
        b       move_w_mem_mem_47
        ori     rtn_addr, code_ptr, move_w_mem_mem_47 - cb  // 3998  MOVE.W    (A0)+,(d8,A4,Xn)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_47 - cb  // 3999  MOVE.W    (A1)+,(d8,A4,Xn)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_47 - cb  // 399A  MOVE.W    (A2)+,(d8,A4,Xn)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_47 - cb  // 399B  MOVE.W    (A3)+,(d8,A4,Xn)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_47 - cb  // 399C  MOVE.W    (A4)+,(d8,A4,Xn)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_47 - cb  // 399D  MOVE.W    (A5)+,(d8,A4,Xn)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_47 - cb  // 399E  MOVE.W    (A6)+,(d8,A4,Xn)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_47 - cb  // 399F  MOVE.W    (A7)+,(d8,A4,Xn)
        b       fea_w_37
        lhau    data, -2(a0)                            // 39A0  MOVE.W    -(A0),(d8,A4,Xn)
        b       move_w_mem_mem_47
        lhau    data, -2(a1)                            // 39A1  MOVE.W    -(A1),(d8,A4,Xn)
        b       move_w_mem_mem_47
        lhau    data, -2(a2)                            // 39A2  MOVE.W    -(A2),(d8,A4,Xn)
        b       move_w_mem_mem_47
        lhau    data, -2(a3)                            // 39A3  MOVE.W    -(A3),(d8,A4,Xn)
        b       move_w_mem_mem_47
        lhau    data, -2(a4)                            // 39A4  MOVE.W    -(A4),(d8,A4,Xn)
        b       move_w_mem_mem_47
        lhau    data, -2(a5)                            // 39A5  MOVE.W    -(A5),(d8,A4,Xn)
        b       move_w_mem_mem_47
        lhau    data, -2(a6)                            // 39A6  MOVE.W    -(A6),(d8,A4,Xn)
        b       move_w_mem_mem_47
        lhau    data, -2(a7)                            // 39A7  MOVE.W    -(A7),(d8,A4,Xn)
        b       move_w_mem_mem_47
        lhax    data, a0, prefetch_data                 // 39A8  MOVE.W    (d16,A0),(d8,A4,Xn)
        b       move_w_ea_mem_15
        lhax    data, a1, prefetch_data                 // 39A9  MOVE.W    (d16,A1),(d8,A4,Xn)
        b       move_w_ea_mem_15
        lhax    data, a2, prefetch_data                 // 39AA  MOVE.W    (d16,A2),(d8,A4,Xn)
        b       move_w_ea_mem_15
        lhax    data, a3, prefetch_data                 // 39AB  MOVE.W    (d16,A3),(d8,A4,Xn)
        b       move_w_ea_mem_15
        lhax    data, a4, prefetch_data                 // 39AC  MOVE.W    (d16,A4),(d8,A4,Xn)
        b       move_w_ea_mem_15
        lhax    data, a5, prefetch_data                 // 39AD  MOVE.W    (d16,A5),(d8,A4,Xn)
        b       move_w_ea_mem_15
        lhax    data, a6, prefetch_data                 // 39AE  MOVE.W    (d16,A6),(d8,A4,Xn)
        b       move_w_ea_mem_15
        lhax    data, a7, prefetch_data                 // 39AF  MOVE.W    (d16,A7),(d8,A4,Xn)
        b       move_w_ea_mem_15
        ori     rtn_addr, code_ptr, move_w_mem_mem_47 - cb  // 39B0  MOVE.W    (d8,A0,Xn),(d8,A4,Xn)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_47 - cb  // 39B1  MOVE.W    (d8,A1,Xn),(d8,A4,Xn)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_47 - cb  // 39B2  MOVE.W    (d8,A2,Xn),(d8,A4,Xn)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_47 - cb  // 39B3  MOVE.W    (d8,A3,Xn),(d8,A4,Xn)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_47 - cb  // 39B4  MOVE.W    (d8,A4,Xn),(d8,A4,Xn)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_47 - cb  // 39B5  MOVE.W    (d8,A5,Xn),(d8,A4,Xn)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_47 - cb  // 39B6  MOVE.W    (d8,A6,Xn),(d8,A4,Xn)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_47 - cb  // 39B7  MOVE.W    (d8,A7,Xn),(d8,A4,Xn)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 39B8  MOVE.W    (xxx).W,(d8,A4,Xn)
        b       move_w_ea_mem_15
        ori     rtn_addr, code_ptr, move_w_mem_mem_47 - cb  // 39B9  MOVE.W    (xxx).L,(d8,A4,Xn)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 39BA  MOVE.W    (d16,PC),(d8,A4,Xn)
        b       move_w_ea_mem_15
        ori     rtn_addr, code_ptr, move_w_mem_mem_47 - cb  // 39BB  MOVE.W    (d8,PC,Xn),(d8,A4,Xn)
        b       fea_w_73
        extsh   data, prefetch_data                     // 39BC  MOVE.W    #<data>,(d8,A4,Xn)
        b       move_w_ea_mem_15
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39BD  MOVE.W    <ea 7.5>,(d8,A4,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39BE  MOVE.W    <ea 7.6>,(d8,A4,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39BF  MOVE.W    <ea 7.7>,(d8,A4,Xn)   (illegal)
        b       take_illegal_instruction

// ---- $39C0-$39FF --------------------------------------------------------
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39C0  MOVE.W    D0,#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39C1  MOVE.W    D1,#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39C2  MOVE.W    D2,#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39C3  MOVE.W    D3,#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39C4  MOVE.W    D4,#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39C5  MOVE.W    D5,#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39C6  MOVE.W    D6,#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39C7  MOVE.W    D7,#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39C8  MOVE.W    A0,#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39C9  MOVE.W    A1,#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39CA  MOVE.W    A2,#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39CB  MOVE.W    A3,#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39CC  MOVE.W    A4,#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39CD  MOVE.W    A5,#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39CE  MOVE.W    A6,#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39CF  MOVE.W    A7,#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39D0  MOVE.W    (A0),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39D1  MOVE.W    (A1),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39D2  MOVE.W    (A2),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39D3  MOVE.W    (A3),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39D4  MOVE.W    (A4),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39D5  MOVE.W    (A5),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39D6  MOVE.W    (A6),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39D7  MOVE.W    (A7),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39D8  MOVE.W    (A0)+,#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39D9  MOVE.W    (A1)+,#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39DA  MOVE.W    (A2)+,#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39DB  MOVE.W    (A3)+,#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39DC  MOVE.W    (A4)+,#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39DD  MOVE.W    (A5)+,#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39DE  MOVE.W    (A6)+,#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39DF  MOVE.W    (A7)+,#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39E0  MOVE.W    -(A0),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39E1  MOVE.W    -(A1),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39E2  MOVE.W    -(A2),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39E3  MOVE.W    -(A3),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39E4  MOVE.W    -(A4),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39E5  MOVE.W    -(A5),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39E6  MOVE.W    -(A6),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39E7  MOVE.W    -(A7),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39E8  MOVE.W    (d16,A0),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39E9  MOVE.W    (d16,A1),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39EA  MOVE.W    (d16,A2),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39EB  MOVE.W    (d16,A3),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39EC  MOVE.W    (d16,A4),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39ED  MOVE.W    (d16,A5),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39EE  MOVE.W    (d16,A6),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39EF  MOVE.W    (d16,A7),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39F0  MOVE.W    (d8,A0,Xn),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39F1  MOVE.W    (d8,A1,Xn),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39F2  MOVE.W    (d8,A2,Xn),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39F3  MOVE.W    (d8,A3,Xn),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39F4  MOVE.W    (d8,A4,Xn),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39F5  MOVE.W    (d8,A5,Xn),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39F6  MOVE.W    (d8,A6,Xn),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39F7  MOVE.W    (d8,A7,Xn),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39F8  MOVE.W    (xxx).W,#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39F9  MOVE.W    (xxx).L,#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39FA  MOVE.W    (d16,PC),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39FB  MOVE.W    (d8,PC,Xn),#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39FC  MOVE.W    #<data>,#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39FD  MOVE.W    <ea 7.5>,#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39FE  MOVE.W    <ea 7.6>,#<data>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 39FF  MOVE.W    <ea 7.7>,#<data>   (illegal)
        b       take_illegal_instruction

// ---- $3A00-$3A3F --------------------------------------------------------
        rlwimi  d5, d0, 0, 16, 31                       // 3A00  MOVE.W    D0,D5
        b       move_w_reg_d5
        rlwimi  d5, d1, 0, 16, 31                       // 3A01  MOVE.W    D1,D5
        b       move_w_reg_d5
        rlwimi  d5, d2, 0, 16, 31                       // 3A02  MOVE.W    D2,D5
        b       move_w_reg_d5
        rlwimi  d5, d3, 0, 16, 31                       // 3A03  MOVE.W    D3,D5
        b       move_w_reg_d5
        rlwimi  d5, d4, 0, 16, 31                       // 3A04  MOVE.W    D4,D5
        b       move_w_reg_d5
        slwi.   data, d5, 16                            // 3A05  MOVE.W    D5,D5
        b       update_vc_zero
        rlwimi  d5, d6, 0, 16, 31                       // 3A06  MOVE.W    D6,D5
        b       move_w_reg_d5
        rlwimi  d5, d7, 0, 16, 31                       // 3A07  MOVE.W    D7,D5
        b       move_w_reg_d5
        rlwimi  d5, a0, 0, 16, 31                       // 3A08  MOVE.W    A0,D5
        b       move_w_reg_d5
        rlwimi  d5, a1, 0, 16, 31                       // 3A09  MOVE.W    A1,D5
        b       move_w_reg_d5
        rlwimi  d5, a2, 0, 16, 31                       // 3A0A  MOVE.W    A2,D5
        b       move_w_reg_d5
        rlwimi  d5, a3, 0, 16, 31                       // 3A0B  MOVE.W    A3,D5
        b       move_w_reg_d5
        rlwimi  d5, a4, 0, 16, 31                       // 3A0C  MOVE.W    A4,D5
        b       move_w_reg_d5
        rlwimi  d5, a5, 0, 16, 31                       // 3A0D  MOVE.W    A5,D5
        b       move_w_reg_d5
        rlwimi  d5, a6, 0, 16, 31                       // 3A0E  MOVE.W    A6,D5
        b       move_w_reg_d5
        rlwimi  d5, a7, 0, 16, 31                       // 3A0F  MOVE.W    A7,D5
        b       move_w_reg_d5
        lha     data, 0(a0)                             // 3A10  MOVE.W    (A0),D5
        b       move_w_mem_d5_2
        lha     data, 0(a1)                             // 3A11  MOVE.W    (A1),D5
        b       move_w_mem_d5_2
        lha     data, 0(a2)                             // 3A12  MOVE.W    (A2),D5
        b       move_w_mem_d5_2
        lha     data, 0(a3)                             // 3A13  MOVE.W    (A3),D5
        b       move_w_mem_d5_2
        lha     data, 0(a4)                             // 3A14  MOVE.W    (A4),D5
        b       move_w_mem_d5_2
        lha     data, 0(a5)                             // 3A15  MOVE.W    (A5),D5
        b       move_w_mem_d5_2
        lha     data, 0(a6)                             // 3A16  MOVE.W    (A6),D5
        b       move_w_mem_d5_2
        lha     data, 0(a7)                             // 3A17  MOVE.W    (A7),D5
        b       move_w_mem_d5_2
        ori     rtn_addr, code_ptr, move_w_mem_d5_2 - cb  // 3A18  MOVE.W    (A0)+,D5
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_d5_2 - cb  // 3A19  MOVE.W    (A1)+,D5
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_d5_2 - cb  // 3A1A  MOVE.W    (A2)+,D5
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_d5_2 - cb  // 3A1B  MOVE.W    (A3)+,D5
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_d5_2 - cb  // 3A1C  MOVE.W    (A4)+,D5
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_d5_2 - cb  // 3A1D  MOVE.W    (A5)+,D5
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_d5_2 - cb  // 3A1E  MOVE.W    (A6)+,D5
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_d5_2 - cb  // 3A1F  MOVE.W    (A7)+,D5
        b       fea_w_37
        lhau    data, -2(a0)                            // 3A20  MOVE.W    -(A0),D5
        b       move_w_mem_d5_2
        lhau    data, -2(a1)                            // 3A21  MOVE.W    -(A1),D5
        b       move_w_mem_d5_2
        lhau    data, -2(a2)                            // 3A22  MOVE.W    -(A2),D5
        b       move_w_mem_d5_2
        lhau    data, -2(a3)                            // 3A23  MOVE.W    -(A3),D5
        b       move_w_mem_d5_2
        lhau    data, -2(a4)                            // 3A24  MOVE.W    -(A4),D5
        b       move_w_mem_d5_2
        lhau    data, -2(a5)                            // 3A25  MOVE.W    -(A5),D5
        b       move_w_mem_d5_2
        lhau    data, -2(a6)                            // 3A26  MOVE.W    -(A6),D5
        b       move_w_mem_d5_2
        lhau    data, -2(a7)                            // 3A27  MOVE.W    -(A7),D5
        b       move_w_mem_d5_2
        lhax    data, a0, prefetch_data                 // 3A28  MOVE.W    (d16,A0),D5
        b       move_w_mem_d5
        lhax    data, a1, prefetch_data                 // 3A29  MOVE.W    (d16,A1),D5
        b       move_w_mem_d5
        lhax    data, a2, prefetch_data                 // 3A2A  MOVE.W    (d16,A2),D5
        b       move_w_mem_d5
        lhax    data, a3, prefetch_data                 // 3A2B  MOVE.W    (d16,A3),D5
        b       move_w_mem_d5
        lhax    data, a4, prefetch_data                 // 3A2C  MOVE.W    (d16,A4),D5
        b       move_w_mem_d5
        lhax    data, a5, prefetch_data                 // 3A2D  MOVE.W    (d16,A5),D5
        b       move_w_mem_d5
        lhax    data, a6, prefetch_data                 // 3A2E  MOVE.W    (d16,A6),D5
        b       move_w_mem_d5
        lhax    data, a7, prefetch_data                 // 3A2F  MOVE.W    (d16,A7),D5
        b       move_w_mem_d5
        ori     rtn_addr, code_ptr, move_w_mem_d5_2 - cb  // 3A30  MOVE.W    (d8,A0,Xn),D5
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_d5_2 - cb  // 3A31  MOVE.W    (d8,A1,Xn),D5
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_d5_2 - cb  // 3A32  MOVE.W    (d8,A2,Xn),D5
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_d5_2 - cb  // 3A33  MOVE.W    (d8,A3,Xn),D5
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_d5_2 - cb  // 3A34  MOVE.W    (d8,A4,Xn),D5
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_d5_2 - cb  // 3A35  MOVE.W    (d8,A5,Xn),D5
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_d5_2 - cb  // 3A36  MOVE.W    (d8,A6,Xn),D5
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_d5_2 - cb  // 3A37  MOVE.W    (d8,A7,Xn),D5
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3A38  MOVE.W    (xxx).W,D5
        b       move_w_mem_d5
        ori     rtn_addr, code_ptr, move_w_mem_d5_2 - cb  // 3A39  MOVE.W    (xxx).L,D5
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 3A3A  MOVE.W    (d16,PC),D5
        b       move_w_mem_d5
        ori     rtn_addr, code_ptr, move_w_mem_d5_2 - cb  // 3A3B  MOVE.W    (d8,PC,Xn),D5
        b       fea_w_73
        rlwimi  d5, prefetch_data, 0, 16, 31            // 3A3C  MOVE.W    #<data>,D5
        b       move_w_imm_any
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3A3D  MOVE.W    <ea 7.5>,D5   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3A3E  MOVE.W    <ea 7.6>,D5   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3A3F  MOVE.W    <ea 7.7>,D5   (illegal)
        b       take_illegal_instruction

// ---- $3A40-$3A7F --------------------------------------------------------
        extsh   a5, d0                                  // 3A40  MOVEA.W   D0,A5
        b       fetch
        extsh   a5, d1                                  // 3A41  MOVEA.W   D1,A5
        b       fetch
        extsh   a5, d2                                  // 3A42  MOVEA.W   D2,A5
        b       fetch
        extsh   a5, d3                                  // 3A43  MOVEA.W   D3,A5
        b       fetch
        extsh   a5, d4                                  // 3A44  MOVEA.W   D4,A5
        b       fetch
        extsh   a5, d5                                  // 3A45  MOVEA.W   D5,A5
        b       fetch
        extsh   a5, d6                                  // 3A46  MOVEA.W   D6,A5
        b       fetch
        extsh   a5, d7                                  // 3A47  MOVEA.W   D7,A5
        b       fetch
        extsh   a5, a0                                  // 3A48  MOVEA.W   A0,A5
        b       fetch
        extsh   a5, a1                                  // 3A49  MOVEA.W   A1,A5
        b       fetch
        extsh   a5, a2                                  // 3A4A  MOVEA.W   A2,A5
        b       fetch
        extsh   a5, a3                                  // 3A4B  MOVEA.W   A3,A5
        b       fetch
        extsh   a5, a4                                  // 3A4C  MOVEA.W   A4,A5
        b       fetch
        extsh   a5, a5                                  // 3A4D  MOVEA.W   A5,A5
        b       fetch
        extsh   a5, a6                                  // 3A4E  MOVEA.W   A6,A5
        b       fetch
        extsh   a5, a7                                  // 3A4F  MOVEA.W   A7,A5
        b       fetch
        lha     a5, 0(a0)                               // 3A50  MOVEA.W   (A0),A5
        b       fetch
        lha     a5, 0(a1)                               // 3A51  MOVEA.W   (A1),A5
        b       fetch
        lha     a5, 0(a2)                               // 3A52  MOVEA.W   (A2),A5
        b       fetch
        lha     a5, 0(a3)                               // 3A53  MOVEA.W   (A3),A5
        b       fetch
        lha     a5, 0(a4)                               // 3A54  MOVEA.W   (A4),A5
        b       fetch
        lha     a5, 0(a5)                               // 3A55  MOVEA.W   (A5),A5
        b       fetch
        lha     a5, 0(a6)                               // 3A56  MOVEA.W   (A6),A5
        b       fetch
        lha     a5, 0(a7)                               // 3A57  MOVEA.W   (A7),A5
        b       fetch
        ori     rtn_addr, code_ptr, movea_mem_a5 - cb   // 3A58  MOVEA.W   (A0)+,A5
        b       fea_w_30
        ori     rtn_addr, code_ptr, movea_mem_a5 - cb   // 3A59  MOVEA.W   (A1)+,A5
        b       fea_w_31
        ori     rtn_addr, code_ptr, movea_mem_a5 - cb   // 3A5A  MOVEA.W   (A2)+,A5
        b       fea_w_32
        ori     rtn_addr, code_ptr, movea_mem_a5 - cb   // 3A5B  MOVEA.W   (A3)+,A5
        b       fea_w_33
        ori     rtn_addr, code_ptr, movea_mem_a5 - cb   // 3A5C  MOVEA.W   (A4)+,A5
        b       fea_w_34
        lha     a5, 0(a5)                               // 3A5D  MOVEA.W   (A5)+,A5
        b       fetch
        ori     rtn_addr, code_ptr, movea_mem_a5 - cb   // 3A5E  MOVEA.W   (A6)+,A5
        b       fea_w_36
        ori     rtn_addr, code_ptr, movea_mem_a5 - cb   // 3A5F  MOVEA.W   (A7)+,A5
        b       fea_w_37
        lhau    a5, -2(a0)                              // 3A60  MOVEA.W   -(A0),A5
        b       fetch
        lhau    a5, -2(a1)                              // 3A61  MOVEA.W   -(A1),A5
        b       fetch
        lhau    a5, -2(a2)                              // 3A62  MOVEA.W   -(A2),A5
        b       fetch
        lhau    a5, -2(a3)                              // 3A63  MOVEA.W   -(A3),A5
        b       fetch
        lhau    a5, -2(a4)                              // 3A64  MOVEA.W   -(A4),A5
        b       fetch
        lha     a5, -2(a5)                              // 3A65  MOVEA.W   -(A5),A5
        b       fetch
        lhau    a5, -2(a6)                              // 3A66  MOVEA.W   -(A6),A5
        b       fetch
        lhau    a5, -2(a7)                              // 3A67  MOVEA.W   -(A7),A5
        b       fetch
        lhax    a5, a0, prefetch_data                   // 3A68  MOVEA.W   (d16,A0),A5
        b       fetch_skip_word
        lhax    a5, a1, prefetch_data                   // 3A69  MOVEA.W   (d16,A1),A5
        b       fetch_skip_word
        lhax    a5, a2, prefetch_data                   // 3A6A  MOVEA.W   (d16,A2),A5
        b       fetch_skip_word
        lhax    a5, a3, prefetch_data                   // 3A6B  MOVEA.W   (d16,A3),A5
        b       fetch_skip_word
        lhax    a5, a4, prefetch_data                   // 3A6C  MOVEA.W   (d16,A4),A5
        b       fetch_skip_word
        lhax    a5, a5, prefetch_data                   // 3A6D  MOVEA.W   (d16,A5),A5
        b       fetch_skip_word
        lhax    a5, a6, prefetch_data                   // 3A6E  MOVEA.W   (d16,A6),A5
        b       fetch_skip_word
        lhax    a5, a7, prefetch_data                   // 3A6F  MOVEA.W   (d16,A7),A5
        b       fetch_skip_word
        ori     rtn_addr, code_ptr, movea_mem_a5 - cb   // 3A70  MOVEA.W   (d8,A0,Xn),A5
        b       fea_w_60
        ori     rtn_addr, code_ptr, movea_mem_a5 - cb   // 3A71  MOVEA.W   (d8,A1,Xn),A5
        b       fea_w_61
        ori     rtn_addr, code_ptr, movea_mem_a5 - cb   // 3A72  MOVEA.W   (d8,A2,Xn),A5
        b       fea_w_62
        ori     rtn_addr, code_ptr, movea_mem_a5 - cb   // 3A73  MOVEA.W   (d8,A3,Xn),A5
        b       fea_w_63
        ori     rtn_addr, code_ptr, movea_mem_a5 - cb   // 3A74  MOVEA.W   (d8,A4,Xn),A5
        b       fea_w_64
        ori     rtn_addr, code_ptr, movea_mem_a5 - cb   // 3A75  MOVEA.W   (d8,A5,Xn),A5
        b       fea_w_65
        ori     rtn_addr, code_ptr, movea_mem_a5 - cb   // 3A76  MOVEA.W   (d8,A6,Xn),A5
        b       fea_w_66
        ori     rtn_addr, code_ptr, movea_mem_a5 - cb   // 3A77  MOVEA.W   (d8,A7,Xn),A5
        b       fea_w_67
        lha     a5, 0(prefetch_data)                    // 3A78  MOVEA.W   (xxx).W,A5
        b       fetch_skip_word
        ori     rtn_addr, code_ptr, movea_mem_a5 - cb   // 3A79  MOVEA.W   (xxx).L,A5
        b       fea_w_71
        lhax    a5, pc, prefetch_data                   // 3A7A  MOVEA.W   (d16,PC),A5
        b       fetch_skip_word
        ori     rtn_addr, code_ptr, movea_mem_a5 - cb   // 3A7B  MOVEA.W   (d8,PC,Xn),A5
        b       fea_w_73
        mr      a5, prefetch_data                       // 3A7C  MOVEA.W   #<data>,A5
        b       fetch_skip_word
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3A7D  MOVEA.W   <ea 7.5>,A5   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3A7E  MOVEA.W   <ea 7.6>,A5   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3A7F  MOVEA.W   <ea 7.7>,A5   (illegal)
        b       take_illegal_instruction

// ---- $3A80-$3ABF --------------------------------------------------------
        extsh   data, d0                                // 3A80  MOVE.W    D0,(A5)
        b       move_w_mem_mem_12
        extsh   data, d1                                // 3A81  MOVE.W    D1,(A5)
        b       move_w_mem_mem_12
        extsh   data, d2                                // 3A82  MOVE.W    D2,(A5)
        b       move_w_mem_mem_12
        extsh   data, d3                                // 3A83  MOVE.W    D3,(A5)
        b       move_w_mem_mem_12
        extsh   data, d4                                // 3A84  MOVE.W    D4,(A5)
        b       move_w_mem_mem_12
        extsh   data, d5                                // 3A85  MOVE.W    D5,(A5)
        b       move_w_mem_mem_12
        extsh   data, d6                                // 3A86  MOVE.W    D6,(A5)
        b       move_w_mem_mem_12
        extsh   data, d7                                // 3A87  MOVE.W    D7,(A5)
        b       move_w_mem_mem_12
        extsh   data, a0                                // 3A88  MOVE.W    A0,(A5)
        b       move_w_mem_mem_12
        extsh   data, a1                                // 3A89  MOVE.W    A1,(A5)
        b       move_w_mem_mem_12
        extsh   data, a2                                // 3A8A  MOVE.W    A2,(A5)
        b       move_w_mem_mem_12
        extsh   data, a3                                // 3A8B  MOVE.W    A3,(A5)
        b       move_w_mem_mem_12
        extsh   data, a4                                // 3A8C  MOVE.W    A4,(A5)
        b       move_w_mem_mem_12
        extsh   data, a5                                // 3A8D  MOVE.W    A5,(A5)
        b       move_w_mem_mem_12
        extsh   data, a6                                // 3A8E  MOVE.W    A6,(A5)
        b       move_w_mem_mem_12
        extsh   data, a7                                // 3A8F  MOVE.W    A7,(A5)
        b       move_w_mem_mem_12
        lha     data, 0(a0)                             // 3A90  MOVE.W    (A0),(A5)
        b       move_w_mem_mem_12
        lha     data, 0(a1)                             // 3A91  MOVE.W    (A1),(A5)
        b       move_w_mem_mem_12
        lha     data, 0(a2)                             // 3A92  MOVE.W    (A2),(A5)
        b       move_w_mem_mem_12
        lha     data, 0(a3)                             // 3A93  MOVE.W    (A3),(A5)
        b       move_w_mem_mem_12
        lha     data, 0(a4)                             // 3A94  MOVE.W    (A4),(A5)
        b       move_w_mem_mem_12
        lha     data, 0(a5)                             // 3A95  MOVE.W    (A5),(A5)
        b       test_data
        lha     data, 0(a6)                             // 3A96  MOVE.W    (A6),(A5)
        b       move_w_mem_mem_12
        lha     data, 0(a7)                             // 3A97  MOVE.W    (A7),(A5)
        b       move_w_mem_mem_12
        ori     rtn_addr, code_ptr, move_w_mem_mem_12 - cb  // 3A98  MOVE.W    (A0)+,(A5)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_12 - cb  // 3A99  MOVE.W    (A1)+,(A5)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_12 - cb  // 3A9A  MOVE.W    (A2)+,(A5)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_12 - cb  // 3A9B  MOVE.W    (A3)+,(A5)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_12 - cb  // 3A9C  MOVE.W    (A4)+,(A5)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_12 - cb  // 3A9D  MOVE.W    (A5)+,(A5)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_12 - cb  // 3A9E  MOVE.W    (A6)+,(A5)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_12 - cb  // 3A9F  MOVE.W    (A7)+,(A5)
        b       fea_w_37
        lhau    data, -2(a0)                            // 3AA0  MOVE.W    -(A0),(A5)
        b       move_w_mem_mem_12
        lhau    data, -2(a1)                            // 3AA1  MOVE.W    -(A1),(A5)
        b       move_w_mem_mem_12
        lhau    data, -2(a2)                            // 3AA2  MOVE.W    -(A2),(A5)
        b       move_w_mem_mem_12
        lhau    data, -2(a3)                            // 3AA3  MOVE.W    -(A3),(A5)
        b       move_w_mem_mem_12
        lhau    data, -2(a4)                            // 3AA4  MOVE.W    -(A4),(A5)
        b       move_w_mem_mem_12
        lhau    data, -2(a5)                            // 3AA5  MOVE.W    -(A5),(A5)
        b       test_data
        lhau    data, -2(a6)                            // 3AA6  MOVE.W    -(A6),(A5)
        b       move_w_mem_mem_12
        lhau    data, -2(a7)                            // 3AA7  MOVE.W    -(A7),(A5)
        b       move_w_mem_mem_12
        lhax    data, a0, prefetch_data                 // 3AA8  MOVE.W    (d16,A0),(A5)
        b       move_w_mem_mem_11
        lhax    data, a1, prefetch_data                 // 3AA9  MOVE.W    (d16,A1),(A5)
        b       move_w_mem_mem_11
        lhax    data, a2, prefetch_data                 // 3AAA  MOVE.W    (d16,A2),(A5)
        b       move_w_mem_mem_11
        lhax    data, a3, prefetch_data                 // 3AAB  MOVE.W    (d16,A3),(A5)
        b       move_w_mem_mem_11
        lhax    data, a4, prefetch_data                 // 3AAC  MOVE.W    (d16,A4),(A5)
        b       move_w_mem_mem_11
        lhax    data, a5, prefetch_data                 // 3AAD  MOVE.W    (d16,A5),(A5)
        b       move_w_mem_mem_11
        lhax    data, a6, prefetch_data                 // 3AAE  MOVE.W    (d16,A6),(A5)
        b       move_w_mem_mem_11
        lhax    data, a7, prefetch_data                 // 3AAF  MOVE.W    (d16,A7),(A5)
        b       move_w_mem_mem_11
        ori     rtn_addr, code_ptr, move_w_mem_mem_12 - cb  // 3AB0  MOVE.W    (d8,A0,Xn),(A5)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_12 - cb  // 3AB1  MOVE.W    (d8,A1,Xn),(A5)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_12 - cb  // 3AB2  MOVE.W    (d8,A2,Xn),(A5)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_12 - cb  // 3AB3  MOVE.W    (d8,A3,Xn),(A5)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_12 - cb  // 3AB4  MOVE.W    (d8,A4,Xn),(A5)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_12 - cb  // 3AB5  MOVE.W    (d8,A5,Xn),(A5)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_12 - cb  // 3AB6  MOVE.W    (d8,A6,Xn),(A5)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_12 - cb  // 3AB7  MOVE.W    (d8,A7,Xn),(A5)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3AB8  MOVE.W    (xxx).W,(A5)
        b       move_w_mem_mem_11
        ori     rtn_addr, code_ptr, move_w_mem_mem_12 - cb  // 3AB9  MOVE.W    (xxx).L,(A5)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 3ABA  MOVE.W    (d16,PC),(A5)
        b       move_w_mem_mem_11
        ori     rtn_addr, code_ptr, move_w_mem_mem_12 - cb  // 3ABB  MOVE.W    (d8,PC,Xn),(A5)
        b       fea_w_73
        sth     prefetch_data, 0(a5)                    // 3ABC  MOVE.W    #<data>,(A5)
        b       move_w_imm_any
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3ABD  MOVE.W    <ea 7.5>,(A5)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3ABE  MOVE.W    <ea 7.6>,(A5)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3ABF  MOVE.W    <ea 7.7>,(A5)   (illegal)
        b       take_illegal_instruction

// ---- $3AC0-$3AFF --------------------------------------------------------
        extsh   data, d0                                // 3AC0  MOVE.W    D0,(A5)+
        b       move_w_mem_mem_48
        extsh   data, d1                                // 3AC1  MOVE.W    D1,(A5)+
        b       move_w_mem_mem_48
        extsh   data, d2                                // 3AC2  MOVE.W    D2,(A5)+
        b       move_w_mem_mem_48
        extsh   data, d3                                // 3AC3  MOVE.W    D3,(A5)+
        b       move_w_mem_mem_48
        extsh   data, d4                                // 3AC4  MOVE.W    D4,(A5)+
        b       move_w_mem_mem_48
        extsh   data, d5                                // 3AC5  MOVE.W    D5,(A5)+
        b       move_w_mem_mem_48
        extsh   data, d6                                // 3AC6  MOVE.W    D6,(A5)+
        b       move_w_mem_mem_48
        extsh   data, d7                                // 3AC7  MOVE.W    D7,(A5)+
        b       move_w_mem_mem_48
        extsh   data, a0                                // 3AC8  MOVE.W    A0,(A5)+
        b       move_w_mem_mem_48
        extsh   data, a1                                // 3AC9  MOVE.W    A1,(A5)+
        b       move_w_mem_mem_48
        extsh   data, a2                                // 3ACA  MOVE.W    A2,(A5)+
        b       move_w_mem_mem_48
        extsh   data, a3                                // 3ACB  MOVE.W    A3,(A5)+
        b       move_w_mem_mem_48
        extsh   data, a4                                // 3ACC  MOVE.W    A4,(A5)+
        b       move_w_mem_mem_48
        extsh   data, a5                                // 3ACD  MOVE.W    A5,(A5)+
        b       move_w_mem_mem_48
        extsh   data, a6                                // 3ACE  MOVE.W    A6,(A5)+
        b       move_w_mem_mem_48
        extsh   data, a7                                // 3ACF  MOVE.W    A7,(A5)+
        b       move_w_mem_mem_48
        lha     data, 0(a0)                             // 3AD0  MOVE.W    (A0),(A5)+
        b       move_w_mem_mem_48
        lha     data, 0(a1)                             // 3AD1  MOVE.W    (A1),(A5)+
        b       move_w_mem_mem_48
        lha     data, 0(a2)                             // 3AD2  MOVE.W    (A2),(A5)+
        b       move_w_mem_mem_48
        lha     data, 0(a3)                             // 3AD3  MOVE.W    (A3),(A5)+
        b       move_w_mem_mem_48
        lha     data, 0(a4)                             // 3AD4  MOVE.W    (A4),(A5)+
        b       move_w_mem_mem_48
        lha     data, 0(a5)                             // 3AD5  MOVE.W    (A5),(A5)+
        b       move_w_mem_mem_48
        lha     data, 0(a6)                             // 3AD6  MOVE.W    (A6),(A5)+
        b       move_w_mem_mem_48
        lha     data, 0(a7)                             // 3AD7  MOVE.W    (A7),(A5)+
        b       move_w_mem_mem_48
        ori     rtn_addr, code_ptr, move_w_mem_mem_48 - cb  // 3AD8  MOVE.W    (A0)+,(A5)+
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_48 - cb  // 3AD9  MOVE.W    (A1)+,(A5)+
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_48 - cb  // 3ADA  MOVE.W    (A2)+,(A5)+
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_48 - cb  // 3ADB  MOVE.W    (A3)+,(A5)+
        b       fea_w_33
        rlwimi  disp_table, prefetch_data, 3, 13, 28    // 3ADC  MOVE.W    (A4)+,(A5)+
        b       move_w_mem_mem_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_48 - cb  // 3ADD  MOVE.W    (A5)+,(A5)+
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_48 - cb  // 3ADE  MOVE.W    (A6)+,(A5)+
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_48 - cb  // 3ADF  MOVE.W    (A7)+,(A5)+
        b       fea_w_37
        lhau    data, -2(a0)                            // 3AE0  MOVE.W    -(A0),(A5)+
        b       move_w_mem_mem_48
        lhau    data, -2(a1)                            // 3AE1  MOVE.W    -(A1),(A5)+
        b       move_w_mem_mem_48
        lhau    data, -2(a2)                            // 3AE2  MOVE.W    -(A2),(A5)+
        b       move_w_mem_mem_48
        lhau    data, -2(a3)                            // 3AE3  MOVE.W    -(A3),(A5)+
        b       move_w_mem_mem_48
        lhau    data, -2(a4)                            // 3AE4  MOVE.W    -(A4),(A5)+
        b       move_w_mem_mem_48
        lha     data, -2(a5)                            // 3AE5  MOVE.W    -(A5),(A5)+
        b       test_data
        lhau    data, -2(a6)                            // 3AE6  MOVE.W    -(A6),(A5)+
        b       move_w_mem_mem_48
        lhau    data, -2(a7)                            // 3AE7  MOVE.W    -(A7),(A5)+
        b       move_w_mem_mem_48
        lhax    data, a0, prefetch_data                 // 3AE8  MOVE.W    (d16,A0),(A5)+
        b       move_w_ea_mem_16
        lhax    data, a1, prefetch_data                 // 3AE9  MOVE.W    (d16,A1),(A5)+
        b       move_w_ea_mem_16
        lhax    data, a2, prefetch_data                 // 3AEA  MOVE.W    (d16,A2),(A5)+
        b       move_w_ea_mem_16
        lhax    data, a3, prefetch_data                 // 3AEB  MOVE.W    (d16,A3),(A5)+
        b       move_w_ea_mem_16
        lhax    data, a4, prefetch_data                 // 3AEC  MOVE.W    (d16,A4),(A5)+
        b       move_w_ea_mem_16
        lhax    data, a5, prefetch_data                 // 3AED  MOVE.W    (d16,A5),(A5)+
        b       move_w_ea_mem_16
        lhax    data, a6, prefetch_data                 // 3AEE  MOVE.W    (d16,A6),(A5)+
        b       move_w_ea_mem_16
        lhax    data, a7, prefetch_data                 // 3AEF  MOVE.W    (d16,A7),(A5)+
        b       move_w_ea_mem_16
        ori     rtn_addr, code_ptr, move_w_mem_mem_48 - cb  // 3AF0  MOVE.W    (d8,A0,Xn),(A5)+
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_48 - cb  // 3AF1  MOVE.W    (d8,A1,Xn),(A5)+
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_48 - cb  // 3AF2  MOVE.W    (d8,A2,Xn),(A5)+
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_48 - cb  // 3AF3  MOVE.W    (d8,A3,Xn),(A5)+
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_48 - cb  // 3AF4  MOVE.W    (d8,A4,Xn),(A5)+
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_48 - cb  // 3AF5  MOVE.W    (d8,A5,Xn),(A5)+
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_48 - cb  // 3AF6  MOVE.W    (d8,A6,Xn),(A5)+
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_48 - cb  // 3AF7  MOVE.W    (d8,A7,Xn),(A5)+
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3AF8  MOVE.W    (xxx).W,(A5)+
        b       move_w_ea_mem_16
        ori     rtn_addr, code_ptr, move_w_mem_mem_48 - cb  // 3AF9  MOVE.W    (xxx).L,(A5)+
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 3AFA  MOVE.W    (d16,PC),(A5)+
        b       move_w_ea_mem_16
        ori     rtn_addr, code_ptr, move_w_mem_mem_48 - cb  // 3AFB  MOVE.W    (d8,PC,Xn),(A5)+
        b       fea_w_73
        extsh   data, prefetch_data                     // 3AFC  MOVE.W    #<data>,(A5)+
        b       move_w_ea_mem_16
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3AFD  MOVE.W    <ea 7.5>,(A5)+   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3AFE  MOVE.W    <ea 7.6>,(A5)+   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3AFF  MOVE.W    <ea 7.7>,(A5)+   (illegal)
        b       take_illegal_instruction

// ---- $3B00-$3B3F --------------------------------------------------------
        extsh   data, d0                                // 3B00  MOVE.W    D0,-(A5)
        b       move_w_mem_mem_28
        extsh   data, d1                                // 3B01  MOVE.W    D1,-(A5)
        b       move_w_mem_mem_28
        extsh   data, d2                                // 3B02  MOVE.W    D2,-(A5)
        b       move_w_mem_mem_28
        extsh   data, d3                                // 3B03  MOVE.W    D3,-(A5)
        b       move_w_mem_mem_28
        extsh   data, d4                                // 3B04  MOVE.W    D4,-(A5)
        b       move_w_mem_mem_28
        extsh   data, d5                                // 3B05  MOVE.W    D5,-(A5)
        b       move_w_mem_mem_28
        extsh   data, d6                                // 3B06  MOVE.W    D6,-(A5)
        b       move_w_mem_mem_28
        extsh   data, d7                                // 3B07  MOVE.W    D7,-(A5)
        b       move_w_mem_mem_28
        extsh   data, a0                                // 3B08  MOVE.W    A0,-(A5)
        b       move_w_mem_mem_28
        extsh   data, a1                                // 3B09  MOVE.W    A1,-(A5)
        b       move_w_mem_mem_28
        extsh   data, a2                                // 3B0A  MOVE.W    A2,-(A5)
        b       move_w_mem_mem_28
        extsh   data, a3                                // 3B0B  MOVE.W    A3,-(A5)
        b       move_w_mem_mem_28
        extsh   data, a4                                // 3B0C  MOVE.W    A4,-(A5)
        b       move_w_mem_mem_28
        extsh   data, a5                                // 3B0D  MOVE.W    A5,-(A5)
        b       move_w_mem_mem_28
        extsh   data, a6                                // 3B0E  MOVE.W    A6,-(A5)
        b       move_w_mem_mem_28
        extsh   data, a7                                // 3B0F  MOVE.W    A7,-(A5)
        b       move_w_mem_mem_28
        lha     data, 0(a0)                             // 3B10  MOVE.W    (A0),-(A5)
        b       move_w_mem_mem_28
        lha     data, 0(a1)                             // 3B11  MOVE.W    (A1),-(A5)
        b       move_w_mem_mem_28
        lha     data, 0(a2)                             // 3B12  MOVE.W    (A2),-(A5)
        b       move_w_mem_mem_28
        lha     data, 0(a3)                             // 3B13  MOVE.W    (A3),-(A5)
        b       move_w_mem_mem_28
        lha     data, 0(a4)                             // 3B14  MOVE.W    (A4),-(A5)
        b       move_w_mem_mem_28
        lha     data, 0(a5)                             // 3B15  MOVE.W    (A5),-(A5)
        b       move_w_mem_mem_28
        lha     data, 0(a6)                             // 3B16  MOVE.W    (A6),-(A5)
        b       move_w_mem_mem_28
        lha     data, 0(a7)                             // 3B17  MOVE.W    (A7),-(A5)
        b       move_w_mem_mem_28
        ori     rtn_addr, code_ptr, move_w_mem_mem_28 - cb  // 3B18  MOVE.W    (A0)+,-(A5)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_28 - cb  // 3B19  MOVE.W    (A1)+,-(A5)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_28 - cb  // 3B1A  MOVE.W    (A2)+,-(A5)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_28 - cb  // 3B1B  MOVE.W    (A3)+,-(A5)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_28 - cb  // 3B1C  MOVE.W    (A4)+,-(A5)
        b       fea_w_34
        lha     data, 0(a5)                             // 3B1D  MOVE.W    (A5)+,-(A5)
        b       test_data
        ori     rtn_addr, code_ptr, move_w_mem_mem_28 - cb  // 3B1E  MOVE.W    (A6)+,-(A5)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_28 - cb  // 3B1F  MOVE.W    (A7)+,-(A5)
        b       fea_w_37
        lhau    data, -2(a0)                            // 3B20  MOVE.W    -(A0),-(A5)
        b       move_w_mem_mem_28
        lhau    data, -2(a1)                            // 3B21  MOVE.W    -(A1),-(A5)
        b       move_w_mem_mem_28
        lhau    data, -2(a2)                            // 3B22  MOVE.W    -(A2),-(A5)
        b       move_w_mem_mem_28
        lhau    data, -2(a3)                            // 3B23  MOVE.W    -(A3),-(A5)
        b       move_w_mem_mem_28
        lhau    data, -2(a4)                            // 3B24  MOVE.W    -(A4),-(A5)
        b       move_w_mem_mem_28
        lhau    data, -2(a5)                            // 3B25  MOVE.W    -(A5),-(A5)
        b       move_w_mem_mem_28
        lhau    data, -2(a6)                            // 3B26  MOVE.W    -(A6),-(A5)
        b       move_w_mem_mem_28
        lhau    data, -2(a7)                            // 3B27  MOVE.W    -(A7),-(A5)
        b       move_w_mem_mem_28
        lhax    data, a0, prefetch_data                 // 3B28  MOVE.W    (d16,A0),-(A5)
        b       move_w_mem_mem_27
        lhax    data, a1, prefetch_data                 // 3B29  MOVE.W    (d16,A1),-(A5)
        b       move_w_mem_mem_27
        lhax    data, a2, prefetch_data                 // 3B2A  MOVE.W    (d16,A2),-(A5)
        b       move_w_mem_mem_27
        lhax    data, a3, prefetch_data                 // 3B2B  MOVE.W    (d16,A3),-(A5)
        b       move_w_mem_mem_27
        lhax    data, a4, prefetch_data                 // 3B2C  MOVE.W    (d16,A4),-(A5)
        b       move_w_mem_mem_27
        lhax    data, a5, prefetch_data                 // 3B2D  MOVE.W    (d16,A5),-(A5)
        b       move_w_mem_mem_27
        lhax    data, a6, prefetch_data                 // 3B2E  MOVE.W    (d16,A6),-(A5)
        b       move_w_mem_mem_27
        lhax    data, a7, prefetch_data                 // 3B2F  MOVE.W    (d16,A7),-(A5)
        b       move_w_mem_mem_27
        ori     rtn_addr, code_ptr, move_w_mem_mem_28 - cb  // 3B30  MOVE.W    (d8,A0,Xn),-(A5)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_28 - cb  // 3B31  MOVE.W    (d8,A1,Xn),-(A5)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_28 - cb  // 3B32  MOVE.W    (d8,A2,Xn),-(A5)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_28 - cb  // 3B33  MOVE.W    (d8,A3,Xn),-(A5)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_28 - cb  // 3B34  MOVE.W    (d8,A4,Xn),-(A5)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_28 - cb  // 3B35  MOVE.W    (d8,A5,Xn),-(A5)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_28 - cb  // 3B36  MOVE.W    (d8,A6,Xn),-(A5)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_28 - cb  // 3B37  MOVE.W    (d8,A7,Xn),-(A5)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3B38  MOVE.W    (xxx).W,-(A5)
        b       move_w_mem_mem_27
        ori     rtn_addr, code_ptr, move_w_mem_mem_28 - cb  // 3B39  MOVE.W    (xxx).L,-(A5)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 3B3A  MOVE.W    (d16,PC),-(A5)
        b       move_w_mem_mem_27
        ori     rtn_addr, code_ptr, move_w_mem_mem_28 - cb  // 3B3B  MOVE.W    (d8,PC,Xn),-(A5)
        b       fea_w_73
        sthu    prefetch_data, -2(a5)                   // 3B3C  MOVE.W    #<data>,-(A5)
        b       move_w_imm_any
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3B3D  MOVE.W    <ea 7.5>,-(A5)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3B3E  MOVE.W    <ea 7.6>,-(A5)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3B3F  MOVE.W    <ea 7.7>,-(A5)   (illegal)
        b       take_illegal_instruction

// ---- $3B40-$3B7F --------------------------------------------------------
        sthx    d0, a5, prefetch_data                   // 3B40  MOVE.W    D0,(d16,A5)
        b       move_w_d0_mem
        extsh   data, d1                                // 3B41  MOVE.W    D1,(d16,A5)
        b       move_w_mem_mem_49
        extsh   data, d2                                // 3B42  MOVE.W    D2,(d16,A5)
        b       move_w_mem_mem_49
        extsh   data, d3                                // 3B43  MOVE.W    D3,(d16,A5)
        b       move_w_mem_mem_49
        extsh   data, d4                                // 3B44  MOVE.W    D4,(d16,A5)
        b       move_w_mem_mem_49
        extsh   data, d5                                // 3B45  MOVE.W    D5,(d16,A5)
        b       move_w_mem_mem_49
        extsh   data, d6                                // 3B46  MOVE.W    D6,(d16,A5)
        b       move_w_mem_mem_49
        extsh   data, d7                                // 3B47  MOVE.W    D7,(d16,A5)
        b       move_w_mem_mem_49
        extsh   data, a0                                // 3B48  MOVE.W    A0,(d16,A5)
        b       move_w_mem_mem_49
        extsh   data, a1                                // 3B49  MOVE.W    A1,(d16,A5)
        b       move_w_mem_mem_49
        extsh   data, a2                                // 3B4A  MOVE.W    A2,(d16,A5)
        b       move_w_mem_mem_49
        extsh   data, a3                                // 3B4B  MOVE.W    A3,(d16,A5)
        b       move_w_mem_mem_49
        extsh   data, a4                                // 3B4C  MOVE.W    A4,(d16,A5)
        b       move_w_mem_mem_49
        extsh   data, a5                                // 3B4D  MOVE.W    A5,(d16,A5)
        b       move_w_mem_mem_49
        extsh   data, a6                                // 3B4E  MOVE.W    A6,(d16,A5)
        b       move_w_mem_mem_49
        extsh   data, a7                                // 3B4F  MOVE.W    A7,(d16,A5)
        b       move_w_mem_mem_49
        lha     data, 0(a0)                             // 3B50  MOVE.W    (A0),(d16,A5)
        b       move_w_mem_mem_49
        lha     data, 0(a1)                             // 3B51  MOVE.W    (A1),(d16,A5)
        b       move_w_mem_mem_49
        lha     data, 0(a2)                             // 3B52  MOVE.W    (A2),(d16,A5)
        b       move_w_mem_mem_49
        lha     data, 0(a3)                             // 3B53  MOVE.W    (A3),(d16,A5)
        b       move_w_mem_mem_49
        lha     data, 0(a4)                             // 3B54  MOVE.W    (A4),(d16,A5)
        b       move_w_mem_mem_49
        lha     data, 0(a5)                             // 3B55  MOVE.W    (A5),(d16,A5)
        b       move_w_mem_mem_49
        lha     data, 0(a6)                             // 3B56  MOVE.W    (A6),(d16,A5)
        b       move_w_mem_mem_49
        lha     data, 0(a7)                             // 3B57  MOVE.W    (A7),(d16,A5)
        b       move_w_mem_mem_49
        ori     rtn_addr, code_ptr, move_w_mem_mem_49 - cb  // 3B58  MOVE.W    (A0)+,(d16,A5)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_49 - cb  // 3B59  MOVE.W    (A1)+,(d16,A5)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_49 - cb  // 3B5A  MOVE.W    (A2)+,(d16,A5)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_49 - cb  // 3B5B  MOVE.W    (A3)+,(d16,A5)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_49 - cb  // 3B5C  MOVE.W    (A4)+,(d16,A5)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_49 - cb  // 3B5D  MOVE.W    (A5)+,(d16,A5)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_49 - cb  // 3B5E  MOVE.W    (A6)+,(d16,A5)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_49 - cb  // 3B5F  MOVE.W    (A7)+,(d16,A5)
        b       fea_w_37
        lhau    data, -2(a0)                            // 3B60  MOVE.W    -(A0),(d16,A5)
        b       move_w_mem_mem_49
        lhau    data, -2(a1)                            // 3B61  MOVE.W    -(A1),(d16,A5)
        b       move_w_mem_mem_49
        lhau    data, -2(a2)                            // 3B62  MOVE.W    -(A2),(d16,A5)
        b       move_w_mem_mem_49
        lhau    data, -2(a3)                            // 3B63  MOVE.W    -(A3),(d16,A5)
        b       move_w_mem_mem_49
        lhau    data, -2(a4)                            // 3B64  MOVE.W    -(A4),(d16,A5)
        b       move_w_mem_mem_49
        lhau    data, -2(a5)                            // 3B65  MOVE.W    -(A5),(d16,A5)
        b       move_w_mem_mem_49
        lhau    data, -2(a6)                            // 3B66  MOVE.W    -(A6),(d16,A5)
        b       move_w_mem_mem_49
        lhau    data, -2(a7)                            // 3B67  MOVE.W    -(A7),(d16,A5)
        b       move_w_mem_mem_49
        lhax    data, a0, prefetch_data                 // 3B68  MOVE.W    (d16,A0),(d16,A5)
        b       move_w_ea_mem_17
        lhax    data, a1, prefetch_data                 // 3B69  MOVE.W    (d16,A1),(d16,A5)
        b       move_w_ea_mem_17
        lhax    data, a2, prefetch_data                 // 3B6A  MOVE.W    (d16,A2),(d16,A5)
        b       move_w_ea_mem_17
        lhax    data, a3, prefetch_data                 // 3B6B  MOVE.W    (d16,A3),(d16,A5)
        b       move_w_ea_mem_17
        lhax    data, a4, prefetch_data                 // 3B6C  MOVE.W    (d16,A4),(d16,A5)
        b       move_w_ea_mem_17
        lhax    data, a5, prefetch_data                 // 3B6D  MOVE.W    (d16,A5),(d16,A5)
        b       move_w_ea_mem_17
        lhax    data, a6, prefetch_data                 // 3B6E  MOVE.W    (d16,A6),(d16,A5)
        b       move_w_ea_mem_17
        lhax    data, a7, prefetch_data                 // 3B6F  MOVE.W    (d16,A7),(d16,A5)
        b       move_w_ea_mem_17
        ori     rtn_addr, code_ptr, move_w_mem_mem_49 - cb  // 3B70  MOVE.W    (d8,A0,Xn),(d16,A5)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_49 - cb  // 3B71  MOVE.W    (d8,A1,Xn),(d16,A5)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_49 - cb  // 3B72  MOVE.W    (d8,A2,Xn),(d16,A5)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_49 - cb  // 3B73  MOVE.W    (d8,A3,Xn),(d16,A5)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_49 - cb  // 3B74  MOVE.W    (d8,A4,Xn),(d16,A5)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_49 - cb  // 3B75  MOVE.W    (d8,A5,Xn),(d16,A5)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_49 - cb  // 3B76  MOVE.W    (d8,A6,Xn),(d16,A5)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_49 - cb  // 3B77  MOVE.W    (d8,A7,Xn),(d16,A5)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3B78  MOVE.W    (xxx).W,(d16,A5)
        b       move_w_ea_mem_17
        ori     rtn_addr, code_ptr, move_w_mem_mem_49 - cb  // 3B79  MOVE.W    (xxx).L,(d16,A5)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 3B7A  MOVE.W    (d16,PC),(d16,A5)
        b       move_w_ea_mem_17
        ori     rtn_addr, code_ptr, move_w_mem_mem_49 - cb  // 3B7B  MOVE.W    (d8,PC,Xn),(d16,A5)
        b       fea_w_73
        extsh   data, prefetch_data                     // 3B7C  MOVE.W    #<data>,(d16,A5)
        b       move_w_ea_mem_17
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3B7D  MOVE.W    <ea 7.5>,(d16,A5)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3B7E  MOVE.W    <ea 7.6>,(d16,A5)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3B7F  MOVE.W    <ea 7.7>,(d16,A5)   (illegal)
        b       take_illegal_instruction

// ---- $3B80-$3BBF --------------------------------------------------------
        extsh   data, d0                                // 3B80  MOVE.W    D0,(d8,A5,Xn)
        b       move_w_mem_mem_50
        extsh   data, d1                                // 3B81  MOVE.W    D1,(d8,A5,Xn)
        b       move_w_mem_mem_50
        extsh   data, d2                                // 3B82  MOVE.W    D2,(d8,A5,Xn)
        b       move_w_mem_mem_50
        extsh   data, d3                                // 3B83  MOVE.W    D3,(d8,A5,Xn)
        b       move_w_mem_mem_50
        extsh   data, d4                                // 3B84  MOVE.W    D4,(d8,A5,Xn)
        b       move_w_mem_mem_50
        extsh   data, d5                                // 3B85  MOVE.W    D5,(d8,A5,Xn)
        b       move_w_mem_mem_50
        extsh   data, d6                                // 3B86  MOVE.W    D6,(d8,A5,Xn)
        b       move_w_mem_mem_50
        extsh   data, d7                                // 3B87  MOVE.W    D7,(d8,A5,Xn)
        b       move_w_mem_mem_50
        extsh   data, a0                                // 3B88  MOVE.W    A0,(d8,A5,Xn)
        b       move_w_mem_mem_50
        extsh   data, a1                                // 3B89  MOVE.W    A1,(d8,A5,Xn)
        b       move_w_mem_mem_50
        extsh   data, a2                                // 3B8A  MOVE.W    A2,(d8,A5,Xn)
        b       move_w_mem_mem_50
        extsh   data, a3                                // 3B8B  MOVE.W    A3,(d8,A5,Xn)
        b       move_w_mem_mem_50
        extsh   data, a4                                // 3B8C  MOVE.W    A4,(d8,A5,Xn)
        b       move_w_mem_mem_50
        extsh   data, a5                                // 3B8D  MOVE.W    A5,(d8,A5,Xn)
        b       move_w_mem_mem_50
        extsh   data, a6                                // 3B8E  MOVE.W    A6,(d8,A5,Xn)
        b       move_w_mem_mem_50
        extsh   data, a7                                // 3B8F  MOVE.W    A7,(d8,A5,Xn)
        b       move_w_mem_mem_50
        lha     data, 0(a0)                             // 3B90  MOVE.W    (A0),(d8,A5,Xn)
        b       move_w_mem_mem_50
        lha     data, 0(a1)                             // 3B91  MOVE.W    (A1),(d8,A5,Xn)
        b       move_w_mem_mem_50
        lha     data, 0(a2)                             // 3B92  MOVE.W    (A2),(d8,A5,Xn)
        b       move_w_mem_mem_50
        lha     data, 0(a3)                             // 3B93  MOVE.W    (A3),(d8,A5,Xn)
        b       move_w_mem_mem_50
        lha     data, 0(a4)                             // 3B94  MOVE.W    (A4),(d8,A5,Xn)
        b       move_w_mem_mem_50
        lha     data, 0(a5)                             // 3B95  MOVE.W    (A5),(d8,A5,Xn)
        b       move_w_mem_mem_50
        lha     data, 0(a6)                             // 3B96  MOVE.W    (A6),(d8,A5,Xn)
        b       move_w_mem_mem_50
        lha     data, 0(a7)                             // 3B97  MOVE.W    (A7),(d8,A5,Xn)
        b       move_w_mem_mem_50
        ori     rtn_addr, code_ptr, move_w_mem_mem_50 - cb  // 3B98  MOVE.W    (A0)+,(d8,A5,Xn)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_50 - cb  // 3B99  MOVE.W    (A1)+,(d8,A5,Xn)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_50 - cb  // 3B9A  MOVE.W    (A2)+,(d8,A5,Xn)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_50 - cb  // 3B9B  MOVE.W    (A3)+,(d8,A5,Xn)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_50 - cb  // 3B9C  MOVE.W    (A4)+,(d8,A5,Xn)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_50 - cb  // 3B9D  MOVE.W    (A5)+,(d8,A5,Xn)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_50 - cb  // 3B9E  MOVE.W    (A6)+,(d8,A5,Xn)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_50 - cb  // 3B9F  MOVE.W    (A7)+,(d8,A5,Xn)
        b       fea_w_37
        lhau    data, -2(a0)                            // 3BA0  MOVE.W    -(A0),(d8,A5,Xn)
        b       move_w_mem_mem_50
        lhau    data, -2(a1)                            // 3BA1  MOVE.W    -(A1),(d8,A5,Xn)
        b       move_w_mem_mem_50
        lhau    data, -2(a2)                            // 3BA2  MOVE.W    -(A2),(d8,A5,Xn)
        b       move_w_mem_mem_50
        lhau    data, -2(a3)                            // 3BA3  MOVE.W    -(A3),(d8,A5,Xn)
        b       move_w_mem_mem_50
        lhau    data, -2(a4)                            // 3BA4  MOVE.W    -(A4),(d8,A5,Xn)
        b       move_w_mem_mem_50
        lhau    data, -2(a5)                            // 3BA5  MOVE.W    -(A5),(d8,A5,Xn)
        b       move_w_mem_mem_50
        lhau    data, -2(a6)                            // 3BA6  MOVE.W    -(A6),(d8,A5,Xn)
        b       move_w_mem_mem_50
        lhau    data, -2(a7)                            // 3BA7  MOVE.W    -(A7),(d8,A5,Xn)
        b       move_w_mem_mem_50
        lhax    data, a0, prefetch_data                 // 3BA8  MOVE.W    (d16,A0),(d8,A5,Xn)
        b       move_w_ea_mem_18
        lhax    data, a1, prefetch_data                 // 3BA9  MOVE.W    (d16,A1),(d8,A5,Xn)
        b       move_w_ea_mem_18
        lhax    data, a2, prefetch_data                 // 3BAA  MOVE.W    (d16,A2),(d8,A5,Xn)
        b       move_w_ea_mem_18
        lhax    data, a3, prefetch_data                 // 3BAB  MOVE.W    (d16,A3),(d8,A5,Xn)
        b       move_w_ea_mem_18
        lhax    data, a4, prefetch_data                 // 3BAC  MOVE.W    (d16,A4),(d8,A5,Xn)
        b       move_w_ea_mem_18
        lhax    data, a5, prefetch_data                 // 3BAD  MOVE.W    (d16,A5),(d8,A5,Xn)
        b       move_w_ea_mem_18
        lhax    data, a6, prefetch_data                 // 3BAE  MOVE.W    (d16,A6),(d8,A5,Xn)
        b       move_w_ea_mem_18
        lhax    data, a7, prefetch_data                 // 3BAF  MOVE.W    (d16,A7),(d8,A5,Xn)
        b       move_w_ea_mem_18
        ori     rtn_addr, code_ptr, move_w_mem_mem_50 - cb  // 3BB0  MOVE.W    (d8,A0,Xn),(d8,A5,Xn)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_50 - cb  // 3BB1  MOVE.W    (d8,A1,Xn),(d8,A5,Xn)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_50 - cb  // 3BB2  MOVE.W    (d8,A2,Xn),(d8,A5,Xn)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_50 - cb  // 3BB3  MOVE.W    (d8,A3,Xn),(d8,A5,Xn)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_50 - cb  // 3BB4  MOVE.W    (d8,A4,Xn),(d8,A5,Xn)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_50 - cb  // 3BB5  MOVE.W    (d8,A5,Xn),(d8,A5,Xn)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_50 - cb  // 3BB6  MOVE.W    (d8,A6,Xn),(d8,A5,Xn)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_50 - cb  // 3BB7  MOVE.W    (d8,A7,Xn),(d8,A5,Xn)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3BB8  MOVE.W    (xxx).W,(d8,A5,Xn)
        b       move_w_ea_mem_18
        ori     rtn_addr, code_ptr, move_w_mem_mem_50 - cb  // 3BB9  MOVE.W    (xxx).L,(d8,A5,Xn)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 3BBA  MOVE.W    (d16,PC),(d8,A5,Xn)
        b       move_w_ea_mem_18
        ori     rtn_addr, code_ptr, move_w_mem_mem_50 - cb  // 3BBB  MOVE.W    (d8,PC,Xn),(d8,A5,Xn)
        b       fea_w_73
        extsh   data, prefetch_data                     // 3BBC  MOVE.W    #<data>,(d8,A5,Xn)
        b       move_w_ea_mem_18
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BBD  MOVE.W    <ea 7.5>,(d8,A5,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BBE  MOVE.W    <ea 7.6>,(d8,A5,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BBF  MOVE.W    <ea 7.7>,(d8,A5,Xn)   (illegal)
        b       take_illegal_instruction

// ---- $3BC0-$3BFF --------------------------------------------------------
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BC0  MOVE.W    D0,<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BC1  MOVE.W    D1,<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BC2  MOVE.W    D2,<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BC3  MOVE.W    D3,<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BC4  MOVE.W    D4,<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BC5  MOVE.W    D5,<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BC6  MOVE.W    D6,<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BC7  MOVE.W    D7,<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BC8  MOVE.W    A0,<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BC9  MOVE.W    A1,<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BCA  MOVE.W    A2,<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BCB  MOVE.W    A3,<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BCC  MOVE.W    A4,<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BCD  MOVE.W    A5,<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BCE  MOVE.W    A6,<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BCF  MOVE.W    A7,<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BD0  MOVE.W    (A0),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BD1  MOVE.W    (A1),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BD2  MOVE.W    (A2),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BD3  MOVE.W    (A3),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BD4  MOVE.W    (A4),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BD5  MOVE.W    (A5),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BD6  MOVE.W    (A6),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BD7  MOVE.W    (A7),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BD8  MOVE.W    (A0)+,<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BD9  MOVE.W    (A1)+,<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BDA  MOVE.W    (A2)+,<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BDB  MOVE.W    (A3)+,<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BDC  MOVE.W    (A4)+,<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BDD  MOVE.W    (A5)+,<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BDE  MOVE.W    (A6)+,<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BDF  MOVE.W    (A7)+,<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BE0  MOVE.W    -(A0),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BE1  MOVE.W    -(A1),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BE2  MOVE.W    -(A2),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BE3  MOVE.W    -(A3),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BE4  MOVE.W    -(A4),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BE5  MOVE.W    -(A5),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BE6  MOVE.W    -(A6),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BE7  MOVE.W    -(A7),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BE8  MOVE.W    (d16,A0),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BE9  MOVE.W    (d16,A1),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BEA  MOVE.W    (d16,A2),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BEB  MOVE.W    (d16,A3),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BEC  MOVE.W    (d16,A4),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BED  MOVE.W    (d16,A5),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BEE  MOVE.W    (d16,A6),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BEF  MOVE.W    (d16,A7),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BF0  MOVE.W    (d8,A0,Xn),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BF1  MOVE.W    (d8,A1,Xn),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BF2  MOVE.W    (d8,A2,Xn),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BF3  MOVE.W    (d8,A3,Xn),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BF4  MOVE.W    (d8,A4,Xn),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BF5  MOVE.W    (d8,A5,Xn),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BF6  MOVE.W    (d8,A6,Xn),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BF7  MOVE.W    (d8,A7,Xn),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BF8  MOVE.W    (xxx).W,<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BF9  MOVE.W    (xxx).L,<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BFA  MOVE.W    (d16,PC),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BFB  MOVE.W    (d8,PC,Xn),<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BFC  MOVE.W    #<data>,<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BFD  MOVE.W    <ea 7.5>,<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BFE  MOVE.W    <ea 7.6>,<ea 7.5>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3BFF  MOVE.W    <ea 7.7>,<ea 7.5>   (illegal)
        b       take_illegal_instruction

// ---- $3C00-$3C3F --------------------------------------------------------
        rlwimi  d6, d0, 0, 16, 31                       // 3C00  MOVE.W    D0,D6
        b       move_w_reg_d6
        rlwimi  d6, d1, 0, 16, 31                       // 3C01  MOVE.W    D1,D6
        b       move_w_reg_d6
        rlwimi  d6, d2, 0, 16, 31                       // 3C02  MOVE.W    D2,D6
        b       move_w_reg_d6
        rlwimi  d6, d3, 0, 16, 31                       // 3C03  MOVE.W    D3,D6
        b       move_w_reg_d6
        rlwimi  d6, d4, 0, 16, 31                       // 3C04  MOVE.W    D4,D6
        b       move_w_reg_d6
        rlwimi  d6, d5, 0, 16, 31                       // 3C05  MOVE.W    D5,D6
        b       move_w_reg_d6
        slwi.   data, d6, 16                            // 3C06  MOVE.W    D6,D6
        b       update_vc_zero
        rlwimi  d6, d7, 0, 16, 31                       // 3C07  MOVE.W    D7,D6
        b       move_w_reg_d6
        rlwimi  d6, a0, 0, 16, 31                       // 3C08  MOVE.W    A0,D6
        b       move_w_reg_d6
        rlwimi  d6, a1, 0, 16, 31                       // 3C09  MOVE.W    A1,D6
        b       move_w_reg_d6
        rlwimi  d6, a2, 0, 16, 31                       // 3C0A  MOVE.W    A2,D6
        b       move_w_reg_d6
        rlwimi  d6, a3, 0, 16, 31                       // 3C0B  MOVE.W    A3,D6
        b       move_w_reg_d6
        rlwimi  d6, a4, 0, 16, 31                       // 3C0C  MOVE.W    A4,D6
        b       move_w_reg_d6
        rlwimi  d6, a5, 0, 16, 31                       // 3C0D  MOVE.W    A5,D6
        b       move_w_reg_d6
        rlwimi  d6, a6, 0, 16, 31                       // 3C0E  MOVE.W    A6,D6
        b       move_w_reg_d6
        rlwimi  d6, a7, 0, 16, 31                       // 3C0F  MOVE.W    A7,D6
        b       move_w_reg_d6
        lha     data, 0(a0)                             // 3C10  MOVE.W    (A0),D6
        b       move_w_mem_d6_2
        lha     data, 0(a1)                             // 3C11  MOVE.W    (A1),D6
        b       move_w_mem_d6_2
        lha     data, 0(a2)                             // 3C12  MOVE.W    (A2),D6
        b       move_w_mem_d6_2
        lha     data, 0(a3)                             // 3C13  MOVE.W    (A3),D6
        b       move_w_mem_d6_2
        lha     data, 0(a4)                             // 3C14  MOVE.W    (A4),D6
        b       move_w_mem_d6_2
        lha     data, 0(a5)                             // 3C15  MOVE.W    (A5),D6
        b       move_w_mem_d6_2
        lha     data, 0(a6)                             // 3C16  MOVE.W    (A6),D6
        b       move_w_mem_d6_2
        lha     data, 0(a7)                             // 3C17  MOVE.W    (A7),D6
        b       move_w_mem_d6_2
        ori     rtn_addr, code_ptr, move_w_mem_d6_2 - cb  // 3C18  MOVE.W    (A0)+,D6
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_d6_2 - cb  // 3C19  MOVE.W    (A1)+,D6
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_d6_2 - cb  // 3C1A  MOVE.W    (A2)+,D6
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_d6_2 - cb  // 3C1B  MOVE.W    (A3)+,D6
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_d6_2 - cb  // 3C1C  MOVE.W    (A4)+,D6
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_d6_2 - cb  // 3C1D  MOVE.W    (A5)+,D6
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_d6_2 - cb  // 3C1E  MOVE.W    (A6)+,D6
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_d6_2 - cb  // 3C1F  MOVE.W    (A7)+,D6
        b       fea_w_37
        lhau    data, -2(a0)                            // 3C20  MOVE.W    -(A0),D6
        b       move_w_mem_d6_2
        lhau    data, -2(a1)                            // 3C21  MOVE.W    -(A1),D6
        b       move_w_mem_d6_2
        lhau    data, -2(a2)                            // 3C22  MOVE.W    -(A2),D6
        b       move_w_mem_d6_2
        lhau    data, -2(a3)                            // 3C23  MOVE.W    -(A3),D6
        b       move_w_mem_d6_2
        lhau    data, -2(a4)                            // 3C24  MOVE.W    -(A4),D6
        b       move_w_mem_d6_2
        lhau    data, -2(a5)                            // 3C25  MOVE.W    -(A5),D6
        b       move_w_mem_d6_2
        lhau    data, -2(a6)                            // 3C26  MOVE.W    -(A6),D6
        b       move_w_mem_d6_2
        lhau    data, -2(a7)                            // 3C27  MOVE.W    -(A7),D6
        b       move_w_mem_d6_2
        lhax    data, a0, prefetch_data                 // 3C28  MOVE.W    (d16,A0),D6
        b       move_w_mem_d6
        lhax    data, a1, prefetch_data                 // 3C29  MOVE.W    (d16,A1),D6
        b       move_w_mem_d6
        lhax    data, a2, prefetch_data                 // 3C2A  MOVE.W    (d16,A2),D6
        b       move_w_mem_d6
        lhax    data, a3, prefetch_data                 // 3C2B  MOVE.W    (d16,A3),D6
        b       move_w_mem_d6
        lhax    data, a4, prefetch_data                 // 3C2C  MOVE.W    (d16,A4),D6
        b       move_w_mem_d6
        lhax    data, a5, prefetch_data                 // 3C2D  MOVE.W    (d16,A5),D6
        b       move_w_mem_d6
        lhax    data, a6, prefetch_data                 // 3C2E  MOVE.W    (d16,A6),D6
        b       move_w_mem_d6
        lhax    data, a7, prefetch_data                 // 3C2F  MOVE.W    (d16,A7),D6
        b       move_w_mem_d6
        ori     rtn_addr, code_ptr, move_w_mem_d6_2 - cb  // 3C30  MOVE.W    (d8,A0,Xn),D6
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_d6_2 - cb  // 3C31  MOVE.W    (d8,A1,Xn),D6
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_d6_2 - cb  // 3C32  MOVE.W    (d8,A2,Xn),D6
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_d6_2 - cb  // 3C33  MOVE.W    (d8,A3,Xn),D6
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_d6_2 - cb  // 3C34  MOVE.W    (d8,A4,Xn),D6
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_d6_2 - cb  // 3C35  MOVE.W    (d8,A5,Xn),D6
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_d6_2 - cb  // 3C36  MOVE.W    (d8,A6,Xn),D6
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_d6_2 - cb  // 3C37  MOVE.W    (d8,A7,Xn),D6
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3C38  MOVE.W    (xxx).W,D6
        b       move_w_mem_d6
        ori     rtn_addr, code_ptr, move_w_mem_d6_2 - cb  // 3C39  MOVE.W    (xxx).L,D6
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 3C3A  MOVE.W    (d16,PC),D6
        b       move_w_mem_d6
        ori     rtn_addr, code_ptr, move_w_mem_d6_2 - cb  // 3C3B  MOVE.W    (d8,PC,Xn),D6
        b       fea_w_73
        rlwimi  d6, prefetch_data, 0, 16, 31            // 3C3C  MOVE.W    #<data>,D6
        b       move_w_imm_any
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3C3D  MOVE.W    <ea 7.5>,D6   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3C3E  MOVE.W    <ea 7.6>,D6   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3C3F  MOVE.W    <ea 7.7>,D6   (illegal)
        b       take_illegal_instruction

// ---- $3C40-$3C7F --------------------------------------------------------
        extsh   a6, d0                                  // 3C40  MOVEA.W   D0,A6
        b       fetch
        extsh   a6, d1                                  // 3C41  MOVEA.W   D1,A6
        b       fetch
        extsh   a6, d2                                  // 3C42  MOVEA.W   D2,A6
        b       fetch
        extsh   a6, d3                                  // 3C43  MOVEA.W   D3,A6
        b       fetch
        extsh   a6, d4                                  // 3C44  MOVEA.W   D4,A6
        b       fetch
        extsh   a6, d5                                  // 3C45  MOVEA.W   D5,A6
        b       fetch
        extsh   a6, d6                                  // 3C46  MOVEA.W   D6,A6
        b       fetch
        extsh   a6, d7                                  // 3C47  MOVEA.W   D7,A6
        b       fetch
        extsh   a6, a0                                  // 3C48  MOVEA.W   A0,A6
        b       fetch
        extsh   a6, a1                                  // 3C49  MOVEA.W   A1,A6
        b       fetch
        extsh   a6, a2                                  // 3C4A  MOVEA.W   A2,A6
        b       fetch
        extsh   a6, a3                                  // 3C4B  MOVEA.W   A3,A6
        b       fetch
        extsh   a6, a4                                  // 3C4C  MOVEA.W   A4,A6
        b       fetch
        extsh   a6, a5                                  // 3C4D  MOVEA.W   A5,A6
        b       fetch
        extsh   a6, a6                                  // 3C4E  MOVEA.W   A6,A6
        b       fetch
        extsh   a6, a7                                  // 3C4F  MOVEA.W   A7,A6
        b       fetch
        lha     a6, 0(a0)                               // 3C50  MOVEA.W   (A0),A6
        b       fetch
        lha     a6, 0(a1)                               // 3C51  MOVEA.W   (A1),A6
        b       fetch
        lha     a6, 0(a2)                               // 3C52  MOVEA.W   (A2),A6
        b       fetch
        lha     a6, 0(a3)                               // 3C53  MOVEA.W   (A3),A6
        b       fetch
        lha     a6, 0(a4)                               // 3C54  MOVEA.W   (A4),A6
        b       fetch
        lha     a6, 0(a5)                               // 3C55  MOVEA.W   (A5),A6
        b       fetch
        lha     a6, 0(a6)                               // 3C56  MOVEA.W   (A6),A6
        b       fetch
        lha     a6, 0(a7)                               // 3C57  MOVEA.W   (A7),A6
        b       fetch
        ori     rtn_addr, code_ptr, movea_mem_a6 - cb   // 3C58  MOVEA.W   (A0)+,A6
        b       fea_w_30
        ori     rtn_addr, code_ptr, movea_mem_a6 - cb   // 3C59  MOVEA.W   (A1)+,A6
        b       fea_w_31
        ori     rtn_addr, code_ptr, movea_mem_a6 - cb   // 3C5A  MOVEA.W   (A2)+,A6
        b       fea_w_32
        ori     rtn_addr, code_ptr, movea_mem_a6 - cb   // 3C5B  MOVEA.W   (A3)+,A6
        b       fea_w_33
        ori     rtn_addr, code_ptr, movea_mem_a6 - cb   // 3C5C  MOVEA.W   (A4)+,A6
        b       fea_w_34
        ori     rtn_addr, code_ptr, movea_mem_a6 - cb   // 3C5D  MOVEA.W   (A5)+,A6
        b       fea_w_35
        lha     a6, 0(a6)                               // 3C5E  MOVEA.W   (A6)+,A6
        b       fetch
        ori     rtn_addr, code_ptr, movea_mem_a6 - cb   // 3C5F  MOVEA.W   (A7)+,A6
        b       fea_w_37
        lhau    a6, -2(a0)                              // 3C60  MOVEA.W   -(A0),A6
        b       fetch
        lhau    a6, -2(a1)                              // 3C61  MOVEA.W   -(A1),A6
        b       fetch
        lhau    a6, -2(a2)                              // 3C62  MOVEA.W   -(A2),A6
        b       fetch
        lhau    a6, -2(a3)                              // 3C63  MOVEA.W   -(A3),A6
        b       fetch
        lhau    a6, -2(a4)                              // 3C64  MOVEA.W   -(A4),A6
        b       fetch
        lhau    a6, -2(a5)                              // 3C65  MOVEA.W   -(A5),A6
        b       fetch
        lha     a6, -2(a6)                              // 3C66  MOVEA.W   -(A6),A6
        b       fetch
        lhau    a6, -2(a7)                              // 3C67  MOVEA.W   -(A7),A6
        b       fetch
        lhax    a6, a0, prefetch_data                   // 3C68  MOVEA.W   (d16,A0),A6
        b       fetch_skip_word
        lhax    a6, a1, prefetch_data                   // 3C69  MOVEA.W   (d16,A1),A6
        b       fetch_skip_word
        lhax    a6, a2, prefetch_data                   // 3C6A  MOVEA.W   (d16,A2),A6
        b       fetch_skip_word
        lhax    a6, a3, prefetch_data                   // 3C6B  MOVEA.W   (d16,A3),A6
        b       fetch_skip_word
        lhax    a6, a4, prefetch_data                   // 3C6C  MOVEA.W   (d16,A4),A6
        b       fetch_skip_word
        lhax    a6, a5, prefetch_data                   // 3C6D  MOVEA.W   (d16,A5),A6
        b       fetch_skip_word
        lhax    a6, a6, prefetch_data                   // 3C6E  MOVEA.W   (d16,A6),A6
        b       fetch_skip_word
        lhax    a6, a7, prefetch_data                   // 3C6F  MOVEA.W   (d16,A7),A6
        b       fetch_skip_word
        ori     rtn_addr, code_ptr, movea_mem_a6 - cb   // 3C70  MOVEA.W   (d8,A0,Xn),A6
        b       fea_w_60
        ori     rtn_addr, code_ptr, movea_mem_a6 - cb   // 3C71  MOVEA.W   (d8,A1,Xn),A6
        b       fea_w_61
        ori     rtn_addr, code_ptr, movea_mem_a6 - cb   // 3C72  MOVEA.W   (d8,A2,Xn),A6
        b       fea_w_62
        ori     rtn_addr, code_ptr, movea_mem_a6 - cb   // 3C73  MOVEA.W   (d8,A3,Xn),A6
        b       fea_w_63
        ori     rtn_addr, code_ptr, movea_mem_a6 - cb   // 3C74  MOVEA.W   (d8,A4,Xn),A6
        b       fea_w_64
        ori     rtn_addr, code_ptr, movea_mem_a6 - cb   // 3C75  MOVEA.W   (d8,A5,Xn),A6
        b       fea_w_65
        ori     rtn_addr, code_ptr, movea_mem_a6 - cb   // 3C76  MOVEA.W   (d8,A6,Xn),A6
        b       fea_w_66
        ori     rtn_addr, code_ptr, movea_mem_a6 - cb   // 3C77  MOVEA.W   (d8,A7,Xn),A6
        b       fea_w_67
        lha     a6, 0(prefetch_data)                    // 3C78  MOVEA.W   (xxx).W,A6
        b       fetch_skip_word
        ori     rtn_addr, code_ptr, movea_mem_a6 - cb   // 3C79  MOVEA.W   (xxx).L,A6
        b       fea_w_71
        lhax    a6, pc, prefetch_data                   // 3C7A  MOVEA.W   (d16,PC),A6
        b       fetch_skip_word
        ori     rtn_addr, code_ptr, movea_mem_a6 - cb   // 3C7B  MOVEA.W   (d8,PC,Xn),A6
        b       fea_w_73
        mr      a6, prefetch_data                       // 3C7C  MOVEA.W   #<data>,A6
        b       fetch_skip_word
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3C7D  MOVEA.W   <ea 7.5>,A6   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3C7E  MOVEA.W   <ea 7.6>,A6   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3C7F  MOVEA.W   <ea 7.7>,A6   (illegal)
        b       take_illegal_instruction

// ---- $3C80-$3CBF --------------------------------------------------------
        extsh   data, d0                                // 3C80  MOVE.W    D0,(A6)
        b       move_w_mem_mem_14
        extsh   data, d1                                // 3C81  MOVE.W    D1,(A6)
        b       move_w_mem_mem_14
        extsh   data, d2                                // 3C82  MOVE.W    D2,(A6)
        b       move_w_mem_mem_14
        extsh   data, d3                                // 3C83  MOVE.W    D3,(A6)
        b       move_w_mem_mem_14
        extsh   data, d4                                // 3C84  MOVE.W    D4,(A6)
        b       move_w_mem_mem_14
        extsh   data, d5                                // 3C85  MOVE.W    D5,(A6)
        b       move_w_mem_mem_14
        extsh   data, d6                                // 3C86  MOVE.W    D6,(A6)
        b       move_w_mem_mem_14
        extsh   data, d7                                // 3C87  MOVE.W    D7,(A6)
        b       move_w_mem_mem_14
        extsh   data, a0                                // 3C88  MOVE.W    A0,(A6)
        b       move_w_mem_mem_14
        extsh   data, a1                                // 3C89  MOVE.W    A1,(A6)
        b       move_w_mem_mem_14
        extsh   data, a2                                // 3C8A  MOVE.W    A2,(A6)
        b       move_w_mem_mem_14
        extsh   data, a3                                // 3C8B  MOVE.W    A3,(A6)
        b       move_w_mem_mem_14
        extsh   data, a4                                // 3C8C  MOVE.W    A4,(A6)
        b       move_w_mem_mem_14
        extsh   data, a5                                // 3C8D  MOVE.W    A5,(A6)
        b       move_w_mem_mem_14
        extsh   data, a6                                // 3C8E  MOVE.W    A6,(A6)
        b       move_w_mem_mem_14
        extsh   data, a7                                // 3C8F  MOVE.W    A7,(A6)
        b       move_w_mem_mem_14
        lha     data, 0(a0)                             // 3C90  MOVE.W    (A0),(A6)
        b       move_w_mem_mem_14
        lha     data, 0(a1)                             // 3C91  MOVE.W    (A1),(A6)
        b       move_w_mem_mem_14
        lha     data, 0(a2)                             // 3C92  MOVE.W    (A2),(A6)
        b       move_w_mem_mem_14
        lha     data, 0(a3)                             // 3C93  MOVE.W    (A3),(A6)
        b       move_w_mem_mem_14
        lha     data, 0(a4)                             // 3C94  MOVE.W    (A4),(A6)
        b       move_w_mem_mem_14
        lha     data, 0(a5)                             // 3C95  MOVE.W    (A5),(A6)
        b       move_w_mem_mem_14
        lha     data, 0(a6)                             // 3C96  MOVE.W    (A6),(A6)
        b       test_data
        lha     data, 0(a7)                             // 3C97  MOVE.W    (A7),(A6)
        b       move_w_mem_mem_14
        ori     rtn_addr, code_ptr, move_w_mem_mem_14 - cb  // 3C98  MOVE.W    (A0)+,(A6)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_14 - cb  // 3C99  MOVE.W    (A1)+,(A6)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_14 - cb  // 3C9A  MOVE.W    (A2)+,(A6)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_14 - cb  // 3C9B  MOVE.W    (A3)+,(A6)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_14 - cb  // 3C9C  MOVE.W    (A4)+,(A6)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_14 - cb  // 3C9D  MOVE.W    (A5)+,(A6)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_14 - cb  // 3C9E  MOVE.W    (A6)+,(A6)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_14 - cb  // 3C9F  MOVE.W    (A7)+,(A6)
        b       fea_w_37
        lhau    data, -2(a0)                            // 3CA0  MOVE.W    -(A0),(A6)
        b       move_w_mem_mem_14
        lhau    data, -2(a1)                            // 3CA1  MOVE.W    -(A1),(A6)
        b       move_w_mem_mem_14
        lhau    data, -2(a2)                            // 3CA2  MOVE.W    -(A2),(A6)
        b       move_w_mem_mem_14
        lhau    data, -2(a3)                            // 3CA3  MOVE.W    -(A3),(A6)
        b       move_w_mem_mem_14
        lhau    data, -2(a4)                            // 3CA4  MOVE.W    -(A4),(A6)
        b       move_w_mem_mem_14
        lhau    data, -2(a5)                            // 3CA5  MOVE.W    -(A5),(A6)
        b       move_w_mem_mem_14
        lhau    data, -2(a6)                            // 3CA6  MOVE.W    -(A6),(A6)
        b       test_data
        lhau    data, -2(a7)                            // 3CA7  MOVE.W    -(A7),(A6)
        b       move_w_mem_mem_14
        lhax    data, a0, prefetch_data                 // 3CA8  MOVE.W    (d16,A0),(A6)
        b       move_w_mem_mem_13
        lhax    data, a1, prefetch_data                 // 3CA9  MOVE.W    (d16,A1),(A6)
        b       move_w_mem_mem_13
        lhax    data, a2, prefetch_data                 // 3CAA  MOVE.W    (d16,A2),(A6)
        b       move_w_mem_mem_13
        lhax    data, a3, prefetch_data                 // 3CAB  MOVE.W    (d16,A3),(A6)
        b       move_w_mem_mem_13
        lhax    data, a4, prefetch_data                 // 3CAC  MOVE.W    (d16,A4),(A6)
        b       move_w_mem_mem_13
        lhax    data, a5, prefetch_data                 // 3CAD  MOVE.W    (d16,A5),(A6)
        b       move_w_mem_mem_13
        lhax    data, a6, prefetch_data                 // 3CAE  MOVE.W    (d16,A6),(A6)
        b       move_w_mem_mem_13
        lhax    data, a7, prefetch_data                 // 3CAF  MOVE.W    (d16,A7),(A6)
        b       move_w_mem_mem_13
        ori     rtn_addr, code_ptr, move_w_mem_mem_14 - cb  // 3CB0  MOVE.W    (d8,A0,Xn),(A6)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_14 - cb  // 3CB1  MOVE.W    (d8,A1,Xn),(A6)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_14 - cb  // 3CB2  MOVE.W    (d8,A2,Xn),(A6)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_14 - cb  // 3CB3  MOVE.W    (d8,A3,Xn),(A6)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_14 - cb  // 3CB4  MOVE.W    (d8,A4,Xn),(A6)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_14 - cb  // 3CB5  MOVE.W    (d8,A5,Xn),(A6)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_14 - cb  // 3CB6  MOVE.W    (d8,A6,Xn),(A6)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_14 - cb  // 3CB7  MOVE.W    (d8,A7,Xn),(A6)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3CB8  MOVE.W    (xxx).W,(A6)
        b       move_w_mem_mem_13
        ori     rtn_addr, code_ptr, move_w_mem_mem_14 - cb  // 3CB9  MOVE.W    (xxx).L,(A6)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 3CBA  MOVE.W    (d16,PC),(A6)
        b       move_w_mem_mem_13
        ori     rtn_addr, code_ptr, move_w_mem_mem_14 - cb  // 3CBB  MOVE.W    (d8,PC,Xn),(A6)
        b       fea_w_73
        sth     prefetch_data, 0(a6)                    // 3CBC  MOVE.W    #<data>,(A6)
        b       move_w_imm_any
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3CBD  MOVE.W    <ea 7.5>,(A6)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3CBE  MOVE.W    <ea 7.6>,(A6)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3CBF  MOVE.W    <ea 7.7>,(A6)   (illegal)
        b       take_illegal_instruction

// ---- $3CC0-$3CFF --------------------------------------------------------
        extsh   data, d0                                // 3CC0  MOVE.W    D0,(A6)+
        b       move_w_mem_mem_51
        extsh   data, d1                                // 3CC1  MOVE.W    D1,(A6)+
        b       move_w_mem_mem_51
        extsh   data, d2                                // 3CC2  MOVE.W    D2,(A6)+
        b       move_w_mem_mem_51
        extsh   data, d3                                // 3CC3  MOVE.W    D3,(A6)+
        b       move_w_mem_mem_51
        extsh   data, d4                                // 3CC4  MOVE.W    D4,(A6)+
        b       move_w_mem_mem_51
        extsh   data, d5                                // 3CC5  MOVE.W    D5,(A6)+
        b       move_w_mem_mem_51
        extsh   data, d6                                // 3CC6  MOVE.W    D6,(A6)+
        b       move_w_mem_mem_51
        extsh   data, d7                                // 3CC7  MOVE.W    D7,(A6)+
        b       move_w_mem_mem_51
        extsh   data, a0                                // 3CC8  MOVE.W    A0,(A6)+
        b       move_w_mem_mem_51
        extsh   data, a1                                // 3CC9  MOVE.W    A1,(A6)+
        b       move_w_mem_mem_51
        extsh   data, a2                                // 3CCA  MOVE.W    A2,(A6)+
        b       move_w_mem_mem_51
        extsh   data, a3                                // 3CCB  MOVE.W    A3,(A6)+
        b       move_w_mem_mem_51
        extsh   data, a4                                // 3CCC  MOVE.W    A4,(A6)+
        b       move_w_mem_mem_51
        extsh   data, a5                                // 3CCD  MOVE.W    A5,(A6)+
        b       move_w_mem_mem_51
        extsh   data, a6                                // 3CCE  MOVE.W    A6,(A6)+
        b       move_w_mem_mem_51
        extsh   data, a7                                // 3CCF  MOVE.W    A7,(A6)+
        b       move_w_mem_mem_51
        lha     data, 0(a0)                             // 3CD0  MOVE.W    (A0),(A6)+
        b       move_w_mem_mem_51
        lha     data, 0(a1)                             // 3CD1  MOVE.W    (A1),(A6)+
        b       move_w_mem_mem_51
        lha     data, 0(a2)                             // 3CD2  MOVE.W    (A2),(A6)+
        b       move_w_mem_mem_51
        lha     data, 0(a3)                             // 3CD3  MOVE.W    (A3),(A6)+
        b       move_w_mem_mem_51
        lha     data, 0(a4)                             // 3CD4  MOVE.W    (A4),(A6)+
        b       move_w_mem_mem_51
        lha     data, 0(a5)                             // 3CD5  MOVE.W    (A5),(A6)+
        b       move_w_mem_mem_51
        lha     data, 0(a6)                             // 3CD6  MOVE.W    (A6),(A6)+
        b       move_w_mem_mem_51
        lha     data, 0(a7)                             // 3CD7  MOVE.W    (A7),(A6)+
        b       move_w_mem_mem_51
        ori     rtn_addr, code_ptr, move_w_mem_mem_51 - cb  // 3CD8  MOVE.W    (A0)+,(A6)+
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_51 - cb  // 3CD9  MOVE.W    (A1)+,(A6)+
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_51 - cb  // 3CDA  MOVE.W    (A2)+,(A6)+
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_51 - cb  // 3CDB  MOVE.W    (A3)+,(A6)+
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_51 - cb  // 3CDC  MOVE.W    (A4)+,(A6)+
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_51 - cb  // 3CDD  MOVE.W    (A5)+,(A6)+
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_51 - cb  // 3CDE  MOVE.W    (A6)+,(A6)+
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_51 - cb  // 3CDF  MOVE.W    (A7)+,(A6)+
        b       fea_w_37
        lhau    data, -2(a0)                            // 3CE0  MOVE.W    -(A0),(A6)+
        b       move_w_mem_mem_51
        lhau    data, -2(a1)                            // 3CE1  MOVE.W    -(A1),(A6)+
        b       move_w_mem_mem_51
        lhau    data, -2(a2)                            // 3CE2  MOVE.W    -(A2),(A6)+
        b       move_w_mem_mem_51
        lhau    data, -2(a3)                            // 3CE3  MOVE.W    -(A3),(A6)+
        b       move_w_mem_mem_51
        lhau    data, -2(a4)                            // 3CE4  MOVE.W    -(A4),(A6)+
        b       move_w_mem_mem_51
        lhau    data, -2(a5)                            // 3CE5  MOVE.W    -(A5),(A6)+
        b       move_w_mem_mem_51
        lha     data, -2(a6)                            // 3CE6  MOVE.W    -(A6),(A6)+
        b       test_data
        lhau    data, -2(a7)                            // 3CE7  MOVE.W    -(A7),(A6)+
        b       move_w_mem_mem_51
        lhax    data, a0, prefetch_data                 // 3CE8  MOVE.W    (d16,A0),(A6)+
        b       move_w_ea_mem_19
        lhax    data, a1, prefetch_data                 // 3CE9  MOVE.W    (d16,A1),(A6)+
        b       move_w_ea_mem_19
        lhax    data, a2, prefetch_data                 // 3CEA  MOVE.W    (d16,A2),(A6)+
        b       move_w_ea_mem_19
        lhax    data, a3, prefetch_data                 // 3CEB  MOVE.W    (d16,A3),(A6)+
        b       move_w_ea_mem_19
        lhax    data, a4, prefetch_data                 // 3CEC  MOVE.W    (d16,A4),(A6)+
        b       move_w_ea_mem_19
        lhax    data, a5, prefetch_data                 // 3CED  MOVE.W    (d16,A5),(A6)+
        b       move_w_ea_mem_19
        lhax    data, a6, prefetch_data                 // 3CEE  MOVE.W    (d16,A6),(A6)+
        b       move_w_ea_mem_19
        lhax    data, a7, prefetch_data                 // 3CEF  MOVE.W    (d16,A7),(A6)+
        b       move_w_ea_mem_19
        ori     rtn_addr, code_ptr, move_w_mem_mem_51 - cb  // 3CF0  MOVE.W    (d8,A0,Xn),(A6)+
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_51 - cb  // 3CF1  MOVE.W    (d8,A1,Xn),(A6)+
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_51 - cb  // 3CF2  MOVE.W    (d8,A2,Xn),(A6)+
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_51 - cb  // 3CF3  MOVE.W    (d8,A3,Xn),(A6)+
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_51 - cb  // 3CF4  MOVE.W    (d8,A4,Xn),(A6)+
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_51 - cb  // 3CF5  MOVE.W    (d8,A5,Xn),(A6)+
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_51 - cb  // 3CF6  MOVE.W    (d8,A6,Xn),(A6)+
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_51 - cb  // 3CF7  MOVE.W    (d8,A7,Xn),(A6)+
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3CF8  MOVE.W    (xxx).W,(A6)+
        b       move_w_ea_mem_19
        ori     rtn_addr, code_ptr, move_w_mem_mem_51 - cb  // 3CF9  MOVE.W    (xxx).L,(A6)+
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 3CFA  MOVE.W    (d16,PC),(A6)+
        b       move_w_ea_mem_19
        ori     rtn_addr, code_ptr, move_w_mem_mem_51 - cb  // 3CFB  MOVE.W    (d8,PC,Xn),(A6)+
        b       fea_w_73
        extsh   data, prefetch_data                     // 3CFC  MOVE.W    #<data>,(A6)+
        b       move_w_ea_mem_19
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3CFD  MOVE.W    <ea 7.5>,(A6)+   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3CFE  MOVE.W    <ea 7.6>,(A6)+   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3CFF  MOVE.W    <ea 7.7>,(A6)+   (illegal)
        b       take_illegal_instruction

// ---- $3D00-$3D3F --------------------------------------------------------
        extsh   data, d0                                // 3D00  MOVE.W    D0,-(A6)
        b       move_w_mem_mem_30
        extsh   data, d1                                // 3D01  MOVE.W    D1,-(A6)
        b       move_w_mem_mem_30
        extsh   data, d2                                // 3D02  MOVE.W    D2,-(A6)
        b       move_w_mem_mem_30
        extsh   data, d3                                // 3D03  MOVE.W    D3,-(A6)
        b       move_w_mem_mem_30
        extsh   data, d4                                // 3D04  MOVE.W    D4,-(A6)
        b       move_w_mem_mem_30
        extsh   data, d5                                // 3D05  MOVE.W    D5,-(A6)
        b       move_w_mem_mem_30
        extsh   data, d6                                // 3D06  MOVE.W    D6,-(A6)
        b       move_w_mem_mem_30
        extsh   data, d7                                // 3D07  MOVE.W    D7,-(A6)
        b       move_w_mem_mem_30
        extsh   data, a0                                // 3D08  MOVE.W    A0,-(A6)
        b       move_w_mem_mem_30
        extsh   data, a1                                // 3D09  MOVE.W    A1,-(A6)
        b       move_w_mem_mem_30
        extsh   data, a2                                // 3D0A  MOVE.W    A2,-(A6)
        b       move_w_mem_mem_30
        extsh   data, a3                                // 3D0B  MOVE.W    A3,-(A6)
        b       move_w_mem_mem_30
        extsh   data, a4                                // 3D0C  MOVE.W    A4,-(A6)
        b       move_w_mem_mem_30
        extsh   data, a5                                // 3D0D  MOVE.W    A5,-(A6)
        b       move_w_mem_mem_30
        extsh   data, a6                                // 3D0E  MOVE.W    A6,-(A6)
        b       move_w_mem_mem_30
        extsh   data, a7                                // 3D0F  MOVE.W    A7,-(A6)
        b       move_w_mem_mem_30
        lha     data, 0(a0)                             // 3D10  MOVE.W    (A0),-(A6)
        b       move_w_mem_mem_30
        lha     data, 0(a1)                             // 3D11  MOVE.W    (A1),-(A6)
        b       move_w_mem_mem_30
        lha     data, 0(a2)                             // 3D12  MOVE.W    (A2),-(A6)
        b       move_w_mem_mem_30
        lha     data, 0(a3)                             // 3D13  MOVE.W    (A3),-(A6)
        b       move_w_mem_mem_30
        lha     data, 0(a4)                             // 3D14  MOVE.W    (A4),-(A6)
        b       move_w_mem_mem_30
        lha     data, 0(a5)                             // 3D15  MOVE.W    (A5),-(A6)
        b       move_w_mem_mem_30
        lha     data, 0(a6)                             // 3D16  MOVE.W    (A6),-(A6)
        b       move_w_mem_mem_30
        lha     data, 0(a7)                             // 3D17  MOVE.W    (A7),-(A6)
        b       move_w_mem_mem_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_30 - cb  // 3D18  MOVE.W    (A0)+,-(A6)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_30 - cb  // 3D19  MOVE.W    (A1)+,-(A6)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_30 - cb  // 3D1A  MOVE.W    (A2)+,-(A6)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_30 - cb  // 3D1B  MOVE.W    (A3)+,-(A6)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_30 - cb  // 3D1C  MOVE.W    (A4)+,-(A6)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_30 - cb  // 3D1D  MOVE.W    (A5)+,-(A6)
        b       fea_w_35
        lha     data, 0(a6)                             // 3D1E  MOVE.W    (A6)+,-(A6)
        b       test_data
        ori     rtn_addr, code_ptr, move_w_mem_mem_30 - cb  // 3D1F  MOVE.W    (A7)+,-(A6)
        b       fea_w_37
        lhau    data, -2(a0)                            // 3D20  MOVE.W    -(A0),-(A6)
        b       move_w_mem_mem_30
        lhau    data, -2(a1)                            // 3D21  MOVE.W    -(A1),-(A6)
        b       move_w_mem_mem_30
        lhau    data, -2(a2)                            // 3D22  MOVE.W    -(A2),-(A6)
        b       move_w_mem_mem_30
        lhau    data, -2(a3)                            // 3D23  MOVE.W    -(A3),-(A6)
        b       move_w_mem_mem_30
        lhau    data, -2(a4)                            // 3D24  MOVE.W    -(A4),-(A6)
        b       move_w_mem_mem_30
        lhau    data, -2(a5)                            // 3D25  MOVE.W    -(A5),-(A6)
        b       move_w_mem_mem_30
        lhau    data, -2(a6)                            // 3D26  MOVE.W    -(A6),-(A6)
        b       move_w_mem_mem_30
        lhau    data, -2(a7)                            // 3D27  MOVE.W    -(A7),-(A6)
        b       move_w_mem_mem_30
        lhax    data, a0, prefetch_data                 // 3D28  MOVE.W    (d16,A0),-(A6)
        b       move_w_mem_mem_29
        lhax    data, a1, prefetch_data                 // 3D29  MOVE.W    (d16,A1),-(A6)
        b       move_w_mem_mem_29
        lhax    data, a2, prefetch_data                 // 3D2A  MOVE.W    (d16,A2),-(A6)
        b       move_w_mem_mem_29
        lhax    data, a3, prefetch_data                 // 3D2B  MOVE.W    (d16,A3),-(A6)
        b       move_w_mem_mem_29
        lhax    data, a4, prefetch_data                 // 3D2C  MOVE.W    (d16,A4),-(A6)
        b       move_w_mem_mem_29
        lhax    data, a5, prefetch_data                 // 3D2D  MOVE.W    (d16,A5),-(A6)
        b       move_w_mem_mem_29
        lhax    data, a6, prefetch_data                 // 3D2E  MOVE.W    (d16,A6),-(A6)
        b       move_w_mem_mem_29
        lhax    data, a7, prefetch_data                 // 3D2F  MOVE.W    (d16,A7),-(A6)
        b       move_w_mem_mem_29
        ori     rtn_addr, code_ptr, move_w_mem_mem_30 - cb  // 3D30  MOVE.W    (d8,A0,Xn),-(A6)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_30 - cb  // 3D31  MOVE.W    (d8,A1,Xn),-(A6)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_30 - cb  // 3D32  MOVE.W    (d8,A2,Xn),-(A6)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_30 - cb  // 3D33  MOVE.W    (d8,A3,Xn),-(A6)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_30 - cb  // 3D34  MOVE.W    (d8,A4,Xn),-(A6)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_30 - cb  // 3D35  MOVE.W    (d8,A5,Xn),-(A6)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_30 - cb  // 3D36  MOVE.W    (d8,A6,Xn),-(A6)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_30 - cb  // 3D37  MOVE.W    (d8,A7,Xn),-(A6)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3D38  MOVE.W    (xxx).W,-(A6)
        b       move_w_mem_mem_29
        ori     rtn_addr, code_ptr, move_w_mem_mem_30 - cb  // 3D39  MOVE.W    (xxx).L,-(A6)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 3D3A  MOVE.W    (d16,PC),-(A6)
        b       move_w_mem_mem_29
        ori     rtn_addr, code_ptr, move_w_mem_mem_30 - cb  // 3D3B  MOVE.W    (d8,PC,Xn),-(A6)
        b       fea_w_73
        sthu    prefetch_data, -2(a6)                   // 3D3C  MOVE.W    #<data>,-(A6)
        b       move_w_imm_any
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3D3D  MOVE.W    <ea 7.5>,-(A6)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3D3E  MOVE.W    <ea 7.6>,-(A6)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3D3F  MOVE.W    <ea 7.7>,-(A6)   (illegal)
        b       take_illegal_instruction

// ---- $3D40-$3D7F --------------------------------------------------------
        sthx    d0, a6, prefetch_data                   // 3D40  MOVE.W    D0,(d16,A6)
        b       move_w_d0_mem
        extsh   data, d1                                // 3D41  MOVE.W    D1,(d16,A6)
        b       move_w_mem_mem_52
        extsh   data, d2                                // 3D42  MOVE.W    D2,(d16,A6)
        b       move_w_mem_mem_52
        extsh   data, d3                                // 3D43  MOVE.W    D3,(d16,A6)
        b       move_w_mem_mem_52
        extsh   data, d4                                // 3D44  MOVE.W    D4,(d16,A6)
        b       move_w_mem_mem_52
        extsh   data, d5                                // 3D45  MOVE.W    D5,(d16,A6)
        b       move_w_mem_mem_52
        extsh   data, d6                                // 3D46  MOVE.W    D6,(d16,A6)
        b       move_w_mem_mem_52
        extsh   data, d7                                // 3D47  MOVE.W    D7,(d16,A6)
        b       move_w_mem_mem_52
        extsh   data, a0                                // 3D48  MOVE.W    A0,(d16,A6)
        b       move_w_mem_mem_52
        extsh   data, a1                                // 3D49  MOVE.W    A1,(d16,A6)
        b       move_w_mem_mem_52
        extsh   data, a2                                // 3D4A  MOVE.W    A2,(d16,A6)
        b       move_w_mem_mem_52
        extsh   data, a3                                // 3D4B  MOVE.W    A3,(d16,A6)
        b       move_w_mem_mem_52
        extsh   data, a4                                // 3D4C  MOVE.W    A4,(d16,A6)
        b       move_w_mem_mem_52
        extsh   data, a5                                // 3D4D  MOVE.W    A5,(d16,A6)
        b       move_w_mem_mem_52
        extsh   data, a6                                // 3D4E  MOVE.W    A6,(d16,A6)
        b       move_w_mem_mem_52
        extsh   data, a7                                // 3D4F  MOVE.W    A7,(d16,A6)
        b       move_w_mem_mem_52
        lha     data, 0(a0)                             // 3D50  MOVE.W    (A0),(d16,A6)
        b       move_w_mem_mem_52
        lha     data, 0(a1)                             // 3D51  MOVE.W    (A1),(d16,A6)
        b       move_w_mem_mem_52
        lha     data, 0(a2)                             // 3D52  MOVE.W    (A2),(d16,A6)
        b       move_w_mem_mem_52
        lha     data, 0(a3)                             // 3D53  MOVE.W    (A3),(d16,A6)
        b       move_w_mem_mem_52
        lha     data, 0(a4)                             // 3D54  MOVE.W    (A4),(d16,A6)
        b       move_w_mem_mem_52
        lha     data, 0(a5)                             // 3D55  MOVE.W    (A5),(d16,A6)
        b       move_w_mem_mem_52
        lha     data, 0(a6)                             // 3D56  MOVE.W    (A6),(d16,A6)
        b       move_w_mem_mem_52
        lha     data, 0(a7)                             // 3D57  MOVE.W    (A7),(d16,A6)
        b       move_w_mem_mem_52
        ori     rtn_addr, code_ptr, move_w_mem_mem_52 - cb  // 3D58  MOVE.W    (A0)+,(d16,A6)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_52 - cb  // 3D59  MOVE.W    (A1)+,(d16,A6)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_52 - cb  // 3D5A  MOVE.W    (A2)+,(d16,A6)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_52 - cb  // 3D5B  MOVE.W    (A3)+,(d16,A6)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_52 - cb  // 3D5C  MOVE.W    (A4)+,(d16,A6)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_52 - cb  // 3D5D  MOVE.W    (A5)+,(d16,A6)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_52 - cb  // 3D5E  MOVE.W    (A6)+,(d16,A6)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_52 - cb  // 3D5F  MOVE.W    (A7)+,(d16,A6)
        b       fea_w_37
        lhau    data, -2(a0)                            // 3D60  MOVE.W    -(A0),(d16,A6)
        b       move_w_mem_mem_52
        lhau    data, -2(a1)                            // 3D61  MOVE.W    -(A1),(d16,A6)
        b       move_w_mem_mem_52
        lhau    data, -2(a2)                            // 3D62  MOVE.W    -(A2),(d16,A6)
        b       move_w_mem_mem_52
        lhau    data, -2(a3)                            // 3D63  MOVE.W    -(A3),(d16,A6)
        b       move_w_mem_mem_52
        lhau    data, -2(a4)                            // 3D64  MOVE.W    -(A4),(d16,A6)
        b       move_w_mem_mem_52
        lhau    data, -2(a5)                            // 3D65  MOVE.W    -(A5),(d16,A6)
        b       move_w_mem_mem_52
        lhau    data, -2(a6)                            // 3D66  MOVE.W    -(A6),(d16,A6)
        b       move_w_mem_mem_52
        lhau    data, -2(a7)                            // 3D67  MOVE.W    -(A7),(d16,A6)
        b       move_w_mem_mem_52
        lhax    data, a0, prefetch_data                 // 3D68  MOVE.W    (d16,A0),(d16,A6)
        b       move_w_ea_mem_20
        lhax    data, a1, prefetch_data                 // 3D69  MOVE.W    (d16,A1),(d16,A6)
        b       move_w_ea_mem_20
        lhax    data, a2, prefetch_data                 // 3D6A  MOVE.W    (d16,A2),(d16,A6)
        b       move_w_ea_mem_20
        lhax    data, a3, prefetch_data                 // 3D6B  MOVE.W    (d16,A3),(d16,A6)
        b       move_w_ea_mem_20
        lhax    data, a4, prefetch_data                 // 3D6C  MOVE.W    (d16,A4),(d16,A6)
        b       move_w_ea_mem_20
        lhax    data, a5, prefetch_data                 // 3D6D  MOVE.W    (d16,A5),(d16,A6)
        b       move_w_ea_mem_20
        lhax    data, a6, prefetch_data                 // 3D6E  MOVE.W    (d16,A6),(d16,A6)
        b       move_w_ea_mem_20
        lhax    data, a7, prefetch_data                 // 3D6F  MOVE.W    (d16,A7),(d16,A6)
        b       move_w_ea_mem_20
        ori     rtn_addr, code_ptr, move_w_mem_mem_52 - cb  // 3D70  MOVE.W    (d8,A0,Xn),(d16,A6)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_52 - cb  // 3D71  MOVE.W    (d8,A1,Xn),(d16,A6)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_52 - cb  // 3D72  MOVE.W    (d8,A2,Xn),(d16,A6)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_52 - cb  // 3D73  MOVE.W    (d8,A3,Xn),(d16,A6)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_52 - cb  // 3D74  MOVE.W    (d8,A4,Xn),(d16,A6)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_52 - cb  // 3D75  MOVE.W    (d8,A5,Xn),(d16,A6)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_52 - cb  // 3D76  MOVE.W    (d8,A6,Xn),(d16,A6)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_52 - cb  // 3D77  MOVE.W    (d8,A7,Xn),(d16,A6)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3D78  MOVE.W    (xxx).W,(d16,A6)
        b       move_w_ea_mem_20
        ori     rtn_addr, code_ptr, move_w_mem_mem_52 - cb  // 3D79  MOVE.W    (xxx).L,(d16,A6)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 3D7A  MOVE.W    (d16,PC),(d16,A6)
        b       move_w_ea_mem_20
        ori     rtn_addr, code_ptr, move_w_mem_mem_52 - cb  // 3D7B  MOVE.W    (d8,PC,Xn),(d16,A6)
        b       fea_w_73
        extsh   data, prefetch_data                     // 3D7C  MOVE.W    #<data>,(d16,A6)
        b       move_w_ea_mem_20
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3D7D  MOVE.W    <ea 7.5>,(d16,A6)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3D7E  MOVE.W    <ea 7.6>,(d16,A6)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3D7F  MOVE.W    <ea 7.7>,(d16,A6)   (illegal)
        b       take_illegal_instruction

// ---- $3D80-$3DBF --------------------------------------------------------
        extsh   data, d0                                // 3D80  MOVE.W    D0,(d8,A6,Xn)
        b       move_w_mem_mem_53
        extsh   data, d1                                // 3D81  MOVE.W    D1,(d8,A6,Xn)
        b       move_w_mem_mem_53
        extsh   data, d2                                // 3D82  MOVE.W    D2,(d8,A6,Xn)
        b       move_w_mem_mem_53
        extsh   data, d3                                // 3D83  MOVE.W    D3,(d8,A6,Xn)
        b       move_w_mem_mem_53
        extsh   data, d4                                // 3D84  MOVE.W    D4,(d8,A6,Xn)
        b       move_w_mem_mem_53
        extsh   data, d5                                // 3D85  MOVE.W    D5,(d8,A6,Xn)
        b       move_w_mem_mem_53
        extsh   data, d6                                // 3D86  MOVE.W    D6,(d8,A6,Xn)
        b       move_w_mem_mem_53
        extsh   data, d7                                // 3D87  MOVE.W    D7,(d8,A6,Xn)
        b       move_w_mem_mem_53
        extsh   data, a0                                // 3D88  MOVE.W    A0,(d8,A6,Xn)
        b       move_w_mem_mem_53
        extsh   data, a1                                // 3D89  MOVE.W    A1,(d8,A6,Xn)
        b       move_w_mem_mem_53
        extsh   data, a2                                // 3D8A  MOVE.W    A2,(d8,A6,Xn)
        b       move_w_mem_mem_53
        extsh   data, a3                                // 3D8B  MOVE.W    A3,(d8,A6,Xn)
        b       move_w_mem_mem_53
        extsh   data, a4                                // 3D8C  MOVE.W    A4,(d8,A6,Xn)
        b       move_w_mem_mem_53
        extsh   data, a5                                // 3D8D  MOVE.W    A5,(d8,A6,Xn)
        b       move_w_mem_mem_53
        extsh   data, a6                                // 3D8E  MOVE.W    A6,(d8,A6,Xn)
        b       move_w_mem_mem_53
        extsh   data, a7                                // 3D8F  MOVE.W    A7,(d8,A6,Xn)
        b       move_w_mem_mem_53
        lha     data, 0(a0)                             // 3D90  MOVE.W    (A0),(d8,A6,Xn)
        b       move_w_mem_mem_53
        lha     data, 0(a1)                             // 3D91  MOVE.W    (A1),(d8,A6,Xn)
        b       move_w_mem_mem_53
        lha     data, 0(a2)                             // 3D92  MOVE.W    (A2),(d8,A6,Xn)
        b       move_w_mem_mem_53
        lha     data, 0(a3)                             // 3D93  MOVE.W    (A3),(d8,A6,Xn)
        b       move_w_mem_mem_53
        lha     data, 0(a4)                             // 3D94  MOVE.W    (A4),(d8,A6,Xn)
        b       move_w_mem_mem_53
        lha     data, 0(a5)                             // 3D95  MOVE.W    (A5),(d8,A6,Xn)
        b       move_w_mem_mem_53
        lha     data, 0(a6)                             // 3D96  MOVE.W    (A6),(d8,A6,Xn)
        b       move_w_mem_mem_53
        lha     data, 0(a7)                             // 3D97  MOVE.W    (A7),(d8,A6,Xn)
        b       move_w_mem_mem_53
        ori     rtn_addr, code_ptr, move_w_mem_mem_53 - cb  // 3D98  MOVE.W    (A0)+,(d8,A6,Xn)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_53 - cb  // 3D99  MOVE.W    (A1)+,(d8,A6,Xn)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_53 - cb  // 3D9A  MOVE.W    (A2)+,(d8,A6,Xn)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_53 - cb  // 3D9B  MOVE.W    (A3)+,(d8,A6,Xn)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_53 - cb  // 3D9C  MOVE.W    (A4)+,(d8,A6,Xn)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_53 - cb  // 3D9D  MOVE.W    (A5)+,(d8,A6,Xn)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_53 - cb  // 3D9E  MOVE.W    (A6)+,(d8,A6,Xn)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_53 - cb  // 3D9F  MOVE.W    (A7)+,(d8,A6,Xn)
        b       fea_w_37
        lhau    data, -2(a0)                            // 3DA0  MOVE.W    -(A0),(d8,A6,Xn)
        b       move_w_mem_mem_53
        lhau    data, -2(a1)                            // 3DA1  MOVE.W    -(A1),(d8,A6,Xn)
        b       move_w_mem_mem_53
        lhau    data, -2(a2)                            // 3DA2  MOVE.W    -(A2),(d8,A6,Xn)
        b       move_w_mem_mem_53
        lhau    data, -2(a3)                            // 3DA3  MOVE.W    -(A3),(d8,A6,Xn)
        b       move_w_mem_mem_53
        lhau    data, -2(a4)                            // 3DA4  MOVE.W    -(A4),(d8,A6,Xn)
        b       move_w_mem_mem_53
        lhau    data, -2(a5)                            // 3DA5  MOVE.W    -(A5),(d8,A6,Xn)
        b       move_w_mem_mem_53
        lhau    data, -2(a6)                            // 3DA6  MOVE.W    -(A6),(d8,A6,Xn)
        b       move_w_mem_mem_53
        lhau    data, -2(a7)                            // 3DA7  MOVE.W    -(A7),(d8,A6,Xn)
        b       move_w_mem_mem_53
        lhax    data, a0, prefetch_data                 // 3DA8  MOVE.W    (d16,A0),(d8,A6,Xn)
        b       move_w_ea_mem_21
        lhax    data, a1, prefetch_data                 // 3DA9  MOVE.W    (d16,A1),(d8,A6,Xn)
        b       move_w_ea_mem_21
        lhax    data, a2, prefetch_data                 // 3DAA  MOVE.W    (d16,A2),(d8,A6,Xn)
        b       move_w_ea_mem_21
        lhax    data, a3, prefetch_data                 // 3DAB  MOVE.W    (d16,A3),(d8,A6,Xn)
        b       move_w_ea_mem_21
        lhax    data, a4, prefetch_data                 // 3DAC  MOVE.W    (d16,A4),(d8,A6,Xn)
        b       move_w_ea_mem_21
        lhax    data, a5, prefetch_data                 // 3DAD  MOVE.W    (d16,A5),(d8,A6,Xn)
        b       move_w_ea_mem_21
        lhax    data, a6, prefetch_data                 // 3DAE  MOVE.W    (d16,A6),(d8,A6,Xn)
        b       move_w_ea_mem_21
        lhax    data, a7, prefetch_data                 // 3DAF  MOVE.W    (d16,A7),(d8,A6,Xn)
        b       move_w_ea_mem_21
        ori     rtn_addr, code_ptr, move_w_mem_mem_53 - cb  // 3DB0  MOVE.W    (d8,A0,Xn),(d8,A6,Xn)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_53 - cb  // 3DB1  MOVE.W    (d8,A1,Xn),(d8,A6,Xn)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_53 - cb  // 3DB2  MOVE.W    (d8,A2,Xn),(d8,A6,Xn)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_53 - cb  // 3DB3  MOVE.W    (d8,A3,Xn),(d8,A6,Xn)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_53 - cb  // 3DB4  MOVE.W    (d8,A4,Xn),(d8,A6,Xn)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_53 - cb  // 3DB5  MOVE.W    (d8,A5,Xn),(d8,A6,Xn)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_53 - cb  // 3DB6  MOVE.W    (d8,A6,Xn),(d8,A6,Xn)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_53 - cb  // 3DB7  MOVE.W    (d8,A7,Xn),(d8,A6,Xn)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3DB8  MOVE.W    (xxx).W,(d8,A6,Xn)
        b       move_w_ea_mem_21
        ori     rtn_addr, code_ptr, move_w_mem_mem_53 - cb  // 3DB9  MOVE.W    (xxx).L,(d8,A6,Xn)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 3DBA  MOVE.W    (d16,PC),(d8,A6,Xn)
        b       move_w_ea_mem_21
        ori     rtn_addr, code_ptr, move_w_mem_mem_53 - cb  // 3DBB  MOVE.W    (d8,PC,Xn),(d8,A6,Xn)
        b       fea_w_73
        extsh   data, prefetch_data                     // 3DBC  MOVE.W    #<data>,(d8,A6,Xn)
        b       move_w_ea_mem_21
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DBD  MOVE.W    <ea 7.5>,(d8,A6,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DBE  MOVE.W    <ea 7.6>,(d8,A6,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DBF  MOVE.W    <ea 7.7>,(d8,A6,Xn)   (illegal)
        b       take_illegal_instruction

// ---- $3DC0-$3DFF --------------------------------------------------------
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DC0  MOVE.W    D0,<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DC1  MOVE.W    D1,<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DC2  MOVE.W    D2,<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DC3  MOVE.W    D3,<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DC4  MOVE.W    D4,<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DC5  MOVE.W    D5,<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DC6  MOVE.W    D6,<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DC7  MOVE.W    D7,<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DC8  MOVE.W    A0,<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DC9  MOVE.W    A1,<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DCA  MOVE.W    A2,<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DCB  MOVE.W    A3,<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DCC  MOVE.W    A4,<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DCD  MOVE.W    A5,<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DCE  MOVE.W    A6,<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DCF  MOVE.W    A7,<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DD0  MOVE.W    (A0),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DD1  MOVE.W    (A1),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DD2  MOVE.W    (A2),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DD3  MOVE.W    (A3),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DD4  MOVE.W    (A4),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DD5  MOVE.W    (A5),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DD6  MOVE.W    (A6),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DD7  MOVE.W    (A7),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DD8  MOVE.W    (A0)+,<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DD9  MOVE.W    (A1)+,<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DDA  MOVE.W    (A2)+,<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DDB  MOVE.W    (A3)+,<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DDC  MOVE.W    (A4)+,<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DDD  MOVE.W    (A5)+,<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DDE  MOVE.W    (A6)+,<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DDF  MOVE.W    (A7)+,<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DE0  MOVE.W    -(A0),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DE1  MOVE.W    -(A1),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DE2  MOVE.W    -(A2),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DE3  MOVE.W    -(A3),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DE4  MOVE.W    -(A4),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DE5  MOVE.W    -(A5),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DE6  MOVE.W    -(A6),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DE7  MOVE.W    -(A7),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DE8  MOVE.W    (d16,A0),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DE9  MOVE.W    (d16,A1),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DEA  MOVE.W    (d16,A2),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DEB  MOVE.W    (d16,A3),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DEC  MOVE.W    (d16,A4),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DED  MOVE.W    (d16,A5),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DEE  MOVE.W    (d16,A6),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DEF  MOVE.W    (d16,A7),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DF0  MOVE.W    (d8,A0,Xn),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DF1  MOVE.W    (d8,A1,Xn),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DF2  MOVE.W    (d8,A2,Xn),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DF3  MOVE.W    (d8,A3,Xn),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DF4  MOVE.W    (d8,A4,Xn),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DF5  MOVE.W    (d8,A5,Xn),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DF6  MOVE.W    (d8,A6,Xn),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DF7  MOVE.W    (d8,A7,Xn),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DF8  MOVE.W    (xxx).W,<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DF9  MOVE.W    (xxx).L,<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DFA  MOVE.W    (d16,PC),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DFB  MOVE.W    (d8,PC,Xn),<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DFC  MOVE.W    #<data>,<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DFD  MOVE.W    <ea 7.5>,<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DFE  MOVE.W    <ea 7.6>,<ea 7.6>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3DFF  MOVE.W    <ea 7.7>,<ea 7.6>   (illegal)
        b       take_illegal_instruction

// ---- $3E00-$3E3F --------------------------------------------------------
        rlwimi  d7, d0, 0, 16, 31                       // 3E00  MOVE.W    D0,D7
        b       move_w_reg_d7
        rlwimi  d7, d1, 0, 16, 31                       // 3E01  MOVE.W    D1,D7
        b       move_w_reg_d7
        rlwimi  d7, d2, 0, 16, 31                       // 3E02  MOVE.W    D2,D7
        b       move_w_reg_d7
        rlwimi  d7, d3, 0, 16, 31                       // 3E03  MOVE.W    D3,D7
        b       move_w_reg_d7
        rlwimi  d7, d4, 0, 16, 31                       // 3E04  MOVE.W    D4,D7
        b       move_w_reg_d7
        rlwimi  d7, d5, 0, 16, 31                       // 3E05  MOVE.W    D5,D7
        b       move_w_reg_d7
        rlwimi  d7, d6, 0, 16, 31                       // 3E06  MOVE.W    D6,D7
        b       move_w_reg_d7
        slwi.   data, d7, 16                            // 3E07  MOVE.W    D7,D7
        b       update_vc_zero
        rlwimi  d7, a0, 0, 16, 31                       // 3E08  MOVE.W    A0,D7
        b       move_w_reg_d7
        rlwimi  d7, a1, 0, 16, 31                       // 3E09  MOVE.W    A1,D7
        b       move_w_reg_d7
        rlwimi  d7, a2, 0, 16, 31                       // 3E0A  MOVE.W    A2,D7
        b       move_w_reg_d7
        rlwimi  d7, a3, 0, 16, 31                       // 3E0B  MOVE.W    A3,D7
        b       move_w_reg_d7
        rlwimi  d7, a4, 0, 16, 31                       // 3E0C  MOVE.W    A4,D7
        b       move_w_reg_d7
        rlwimi  d7, a5, 0, 16, 31                       // 3E0D  MOVE.W    A5,D7
        b       move_w_reg_d7
        rlwimi  d7, a6, 0, 16, 31                       // 3E0E  MOVE.W    A6,D7
        b       move_w_reg_d7
        rlwimi  d7, a7, 0, 16, 31                       // 3E0F  MOVE.W    A7,D7
        b       move_w_reg_d7
        lha     data, 0(a0)                             // 3E10  MOVE.W    (A0),D7
        b       move_w_mem_d7_2
        lha     data, 0(a1)                             // 3E11  MOVE.W    (A1),D7
        b       move_w_mem_d7_2
        lha     data, 0(a2)                             // 3E12  MOVE.W    (A2),D7
        b       move_w_mem_d7_2
        lha     data, 0(a3)                             // 3E13  MOVE.W    (A3),D7
        b       move_w_mem_d7_2
        lha     data, 0(a4)                             // 3E14  MOVE.W    (A4),D7
        b       move_w_mem_d7_2
        lha     data, 0(a5)                             // 3E15  MOVE.W    (A5),D7
        b       move_w_mem_d7_2
        lha     data, 0(a6)                             // 3E16  MOVE.W    (A6),D7
        b       move_w_mem_d7_2
        lha     data, 0(a7)                             // 3E17  MOVE.W    (A7),D7
        b       move_w_mem_d7_2
        ori     rtn_addr, code_ptr, move_w_mem_d7_2 - cb  // 3E18  MOVE.W    (A0)+,D7
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_d7_2 - cb  // 3E19  MOVE.W    (A1)+,D7
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_d7_2 - cb  // 3E1A  MOVE.W    (A2)+,D7
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_d7_2 - cb  // 3E1B  MOVE.W    (A3)+,D7
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_d7_2 - cb  // 3E1C  MOVE.W    (A4)+,D7
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_d7_2 - cb  // 3E1D  MOVE.W    (A5)+,D7
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_d7_2 - cb  // 3E1E  MOVE.W    (A6)+,D7
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_d7_2 - cb  // 3E1F  MOVE.W    (A7)+,D7
        b       fea_w_37
        lhau    data, -2(a0)                            // 3E20  MOVE.W    -(A0),D7
        b       move_w_mem_d7_2
        lhau    data, -2(a1)                            // 3E21  MOVE.W    -(A1),D7
        b       move_w_mem_d7_2
        lhau    data, -2(a2)                            // 3E22  MOVE.W    -(A2),D7
        b       move_w_mem_d7_2
        lhau    data, -2(a3)                            // 3E23  MOVE.W    -(A3),D7
        b       move_w_mem_d7_2
        lhau    data, -2(a4)                            // 3E24  MOVE.W    -(A4),D7
        b       move_w_mem_d7_2
        lhau    data, -2(a5)                            // 3E25  MOVE.W    -(A5),D7
        b       move_w_mem_d7_2
        lhau    data, -2(a6)                            // 3E26  MOVE.W    -(A6),D7
        b       move_w_mem_d7_2
        lhau    data, -2(a7)                            // 3E27  MOVE.W    -(A7),D7
        b       move_w_mem_d7_2
        lhax    data, a0, prefetch_data                 // 3E28  MOVE.W    (d16,A0),D7
        b       move_w_mem_d7
        lhax    data, a1, prefetch_data                 // 3E29  MOVE.W    (d16,A1),D7
        b       move_w_mem_d7
        lhax    data, a2, prefetch_data                 // 3E2A  MOVE.W    (d16,A2),D7
        b       move_w_mem_d7
        lhax    data, a3, prefetch_data                 // 3E2B  MOVE.W    (d16,A3),D7
        b       move_w_mem_d7
        lhax    data, a4, prefetch_data                 // 3E2C  MOVE.W    (d16,A4),D7
        b       move_w_mem_d7
        lhax    data, a5, prefetch_data                 // 3E2D  MOVE.W    (d16,A5),D7
        b       move_w_mem_d7
        lhax    data, a6, prefetch_data                 // 3E2E  MOVE.W    (d16,A6),D7
        b       move_w_mem_d7
        lhax    data, a7, prefetch_data                 // 3E2F  MOVE.W    (d16,A7),D7
        b       move_w_mem_d7
        ori     rtn_addr, code_ptr, move_w_mem_d7_2 - cb  // 3E30  MOVE.W    (d8,A0,Xn),D7
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_d7_2 - cb  // 3E31  MOVE.W    (d8,A1,Xn),D7
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_d7_2 - cb  // 3E32  MOVE.W    (d8,A2,Xn),D7
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_d7_2 - cb  // 3E33  MOVE.W    (d8,A3,Xn),D7
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_d7_2 - cb  // 3E34  MOVE.W    (d8,A4,Xn),D7
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_d7_2 - cb  // 3E35  MOVE.W    (d8,A5,Xn),D7
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_d7_2 - cb  // 3E36  MOVE.W    (d8,A6,Xn),D7
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_d7_2 - cb  // 3E37  MOVE.W    (d8,A7,Xn),D7
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3E38  MOVE.W    (xxx).W,D7
        b       move_w_mem_d7
        ori     rtn_addr, code_ptr, move_w_mem_d7_2 - cb  // 3E39  MOVE.W    (xxx).L,D7
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 3E3A  MOVE.W    (d16,PC),D7
        b       move_w_mem_d7
        ori     rtn_addr, code_ptr, move_w_mem_d7_2 - cb  // 3E3B  MOVE.W    (d8,PC,Xn),D7
        b       fea_w_73
        rlwimi  d7, prefetch_data, 0, 16, 31            // 3E3C  MOVE.W    #<data>,D7
        b       move_w_imm_any
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3E3D  MOVE.W    <ea 7.5>,D7   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3E3E  MOVE.W    <ea 7.6>,D7   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3E3F  MOVE.W    <ea 7.7>,D7   (illegal)
        b       take_illegal_instruction

// ---- $3E40-$3E7F --------------------------------------------------------
        extsh   a7, d0                                  // 3E40  MOVEA.W   D0,A7
        b       fetch
        extsh   a7, d1                                  // 3E41  MOVEA.W   D1,A7
        b       fetch
        extsh   a7, d2                                  // 3E42  MOVEA.W   D2,A7
        b       fetch
        extsh   a7, d3                                  // 3E43  MOVEA.W   D3,A7
        b       fetch
        extsh   a7, d4                                  // 3E44  MOVEA.W   D4,A7
        b       fetch
        extsh   a7, d5                                  // 3E45  MOVEA.W   D5,A7
        b       fetch
        extsh   a7, d6                                  // 3E46  MOVEA.W   D6,A7
        b       fetch
        extsh   a7, d7                                  // 3E47  MOVEA.W   D7,A7
        b       fetch
        extsh   a7, a0                                  // 3E48  MOVEA.W   A0,A7
        b       fetch
        extsh   a7, a1                                  // 3E49  MOVEA.W   A1,A7
        b       fetch
        extsh   a7, a2                                  // 3E4A  MOVEA.W   A2,A7
        b       fetch
        extsh   a7, a3                                  // 3E4B  MOVEA.W   A3,A7
        b       fetch
        extsh   a7, a4                                  // 3E4C  MOVEA.W   A4,A7
        b       fetch
        extsh   a7, a5                                  // 3E4D  MOVEA.W   A5,A7
        b       fetch
        extsh   a7, a6                                  // 3E4E  MOVEA.W   A6,A7
        b       fetch
        extsh   a7, a7                                  // 3E4F  MOVEA.W   A7,A7
        b       fetch
        lha     a7, 0(a0)                               // 3E50  MOVEA.W   (A0),A7
        b       fetch
        lha     a7, 0(a1)                               // 3E51  MOVEA.W   (A1),A7
        b       fetch
        lha     a7, 0(a2)                               // 3E52  MOVEA.W   (A2),A7
        b       fetch
        lha     a7, 0(a3)                               // 3E53  MOVEA.W   (A3),A7
        b       fetch
        lha     a7, 0(a4)                               // 3E54  MOVEA.W   (A4),A7
        b       fetch
        lha     a7, 0(a5)                               // 3E55  MOVEA.W   (A5),A7
        b       fetch
        lha     a7, 0(a6)                               // 3E56  MOVEA.W   (A6),A7
        b       fetch
        lha     a7, 0(a7)                               // 3E57  MOVEA.W   (A7),A7
        b       fetch
        ori     rtn_addr, code_ptr, movea_mem_a7 - cb   // 3E58  MOVEA.W   (A0)+,A7
        b       fea_w_30
        ori     rtn_addr, code_ptr, movea_mem_a7 - cb   // 3E59  MOVEA.W   (A1)+,A7
        b       fea_w_31
        ori     rtn_addr, code_ptr, movea_mem_a7 - cb   // 3E5A  MOVEA.W   (A2)+,A7
        b       fea_w_32
        ori     rtn_addr, code_ptr, movea_mem_a7 - cb   // 3E5B  MOVEA.W   (A3)+,A7
        b       fea_w_33
        ori     rtn_addr, code_ptr, movea_mem_a7 - cb   // 3E5C  MOVEA.W   (A4)+,A7
        b       fea_w_34
        ori     rtn_addr, code_ptr, movea_mem_a7 - cb   // 3E5D  MOVEA.W   (A5)+,A7
        b       fea_w_35
        ori     rtn_addr, code_ptr, movea_mem_a7 - cb   // 3E5E  MOVEA.W   (A6)+,A7
        b       fea_w_36
        lha     a7, 0(a7)                               // 3E5F  MOVEA.W   (A7)+,A7
        b       fetch
        lhau    a7, -2(a0)                              // 3E60  MOVEA.W   -(A0),A7
        b       fetch
        lhau    a7, -2(a1)                              // 3E61  MOVEA.W   -(A1),A7
        b       fetch
        lhau    a7, -2(a2)                              // 3E62  MOVEA.W   -(A2),A7
        b       fetch
        lhau    a7, -2(a3)                              // 3E63  MOVEA.W   -(A3),A7
        b       fetch
        lhau    a7, -2(a4)                              // 3E64  MOVEA.W   -(A4),A7
        b       fetch
        lhau    a7, -2(a5)                              // 3E65  MOVEA.W   -(A5),A7
        b       fetch
        lhau    a7, -2(a6)                              // 3E66  MOVEA.W   -(A6),A7
        b       fetch
        lha     a7, -2(a7)                              // 3E67  MOVEA.W   -(A7),A7
        b       fetch
        lhax    a7, a0, prefetch_data                   // 3E68  MOVEA.W   (d16,A0),A7
        b       fetch_skip_word
        lhax    a7, a1, prefetch_data                   // 3E69  MOVEA.W   (d16,A1),A7
        b       fetch_skip_word
        lhax    a7, a2, prefetch_data                   // 3E6A  MOVEA.W   (d16,A2),A7
        b       fetch_skip_word
        lhax    a7, a3, prefetch_data                   // 3E6B  MOVEA.W   (d16,A3),A7
        b       fetch_skip_word
        lhax    a7, a4, prefetch_data                   // 3E6C  MOVEA.W   (d16,A4),A7
        b       fetch_skip_word
        lhax    a7, a5, prefetch_data                   // 3E6D  MOVEA.W   (d16,A5),A7
        b       fetch_skip_word
        lhax    a7, a6, prefetch_data                   // 3E6E  MOVEA.W   (d16,A6),A7
        b       fetch_skip_word
        lhax    a7, a7, prefetch_data                   // 3E6F  MOVEA.W   (d16,A7),A7
        b       fetch_skip_word
        ori     rtn_addr, code_ptr, movea_mem_a7 - cb   // 3E70  MOVEA.W   (d8,A0,Xn),A7
        b       fea_w_60
        ori     rtn_addr, code_ptr, movea_mem_a7 - cb   // 3E71  MOVEA.W   (d8,A1,Xn),A7
        b       fea_w_61
        ori     rtn_addr, code_ptr, movea_mem_a7 - cb   // 3E72  MOVEA.W   (d8,A2,Xn),A7
        b       fea_w_62
        ori     rtn_addr, code_ptr, movea_mem_a7 - cb   // 3E73  MOVEA.W   (d8,A3,Xn),A7
        b       fea_w_63
        ori     rtn_addr, code_ptr, movea_mem_a7 - cb   // 3E74  MOVEA.W   (d8,A4,Xn),A7
        b       fea_w_64
        ori     rtn_addr, code_ptr, movea_mem_a7 - cb   // 3E75  MOVEA.W   (d8,A5,Xn),A7
        b       fea_w_65
        ori     rtn_addr, code_ptr, movea_mem_a7 - cb   // 3E76  MOVEA.W   (d8,A6,Xn),A7
        b       fea_w_66
        ori     rtn_addr, code_ptr, movea_mem_a7 - cb   // 3E77  MOVEA.W   (d8,A7,Xn),A7
        b       fea_w_67
        lha     a7, 0(prefetch_data)                    // 3E78  MOVEA.W   (xxx).W,A7
        b       fetch_skip_word
        ori     rtn_addr, code_ptr, movea_mem_a7 - cb   // 3E79  MOVEA.W   (xxx).L,A7
        b       fea_w_71
        lhax    a7, pc, prefetch_data                   // 3E7A  MOVEA.W   (d16,PC),A7
        b       fetch_skip_word
        ori     rtn_addr, code_ptr, movea_mem_a7 - cb   // 3E7B  MOVEA.W   (d8,PC,Xn),A7
        b       fea_w_73
        mr      a7, prefetch_data                       // 3E7C  MOVEA.W   #<data>,A7
        b       fetch_skip_word
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3E7D  MOVEA.W   <ea 7.5>,A7   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3E7E  MOVEA.W   <ea 7.6>,A7   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3E7F  MOVEA.W   <ea 7.7>,A7   (illegal)
        b       take_illegal_instruction

// ---- $3E80-$3EBF --------------------------------------------------------
        extsh   data, d0                                // 3E80  MOVE.W    D0,(A7)
        b       move_w_mem_mem_16
        extsh   data, d1                                // 3E81  MOVE.W    D1,(A7)
        b       move_w_mem_mem_16
        extsh   data, d2                                // 3E82  MOVE.W    D2,(A7)
        b       move_w_mem_mem_16
        extsh   data, d3                                // 3E83  MOVE.W    D3,(A7)
        b       move_w_mem_mem_16
        extsh   data, d4                                // 3E84  MOVE.W    D4,(A7)
        b       move_w_mem_mem_16
        extsh   data, d5                                // 3E85  MOVE.W    D5,(A7)
        b       move_w_mem_mem_16
        extsh   data, d6                                // 3E86  MOVE.W    D6,(A7)
        b       move_w_mem_mem_16
        extsh   data, d7                                // 3E87  MOVE.W    D7,(A7)
        b       move_w_mem_mem_16
        extsh   data, a0                                // 3E88  MOVE.W    A0,(A7)
        b       move_w_mem_mem_16
        extsh   data, a1                                // 3E89  MOVE.W    A1,(A7)
        b       move_w_mem_mem_16
        extsh   data, a2                                // 3E8A  MOVE.W    A2,(A7)
        b       move_w_mem_mem_16
        extsh   data, a3                                // 3E8B  MOVE.W    A3,(A7)
        b       move_w_mem_mem_16
        extsh   data, a4                                // 3E8C  MOVE.W    A4,(A7)
        b       move_w_mem_mem_16
        extsh   data, a5                                // 3E8D  MOVE.W    A5,(A7)
        b       move_w_mem_mem_16
        extsh   data, a6                                // 3E8E  MOVE.W    A6,(A7)
        b       move_w_mem_mem_16
        extsh   data, a7                                // 3E8F  MOVE.W    A7,(A7)
        b       move_w_mem_mem_16
        lha     data, 0(a0)                             // 3E90  MOVE.W    (A0),(A7)
        b       move_w_mem_mem_16
        lha     data, 0(a1)                             // 3E91  MOVE.W    (A1),(A7)
        b       move_w_mem_mem_16
        lha     data, 0(a2)                             // 3E92  MOVE.W    (A2),(A7)
        b       move_w_mem_mem_16
        lha     data, 0(a3)                             // 3E93  MOVE.W    (A3),(A7)
        b       move_w_mem_mem_16
        lha     data, 0(a4)                             // 3E94  MOVE.W    (A4),(A7)
        b       move_w_mem_mem_16
        lha     data, 0(a5)                             // 3E95  MOVE.W    (A5),(A7)
        b       move_w_mem_mem_16
        lha     data, 0(a6)                             // 3E96  MOVE.W    (A6),(A7)
        b       move_w_mem_mem_16
        lha     data, 0(a7)                             // 3E97  MOVE.W    (A7),(A7)
        b       test_data
        ori     rtn_addr, code_ptr, move_w_mem_mem_16 - cb  // 3E98  MOVE.W    (A0)+,(A7)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_16 - cb  // 3E99  MOVE.W    (A1)+,(A7)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_16 - cb  // 3E9A  MOVE.W    (A2)+,(A7)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_16 - cb  // 3E9B  MOVE.W    (A3)+,(A7)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_16 - cb  // 3E9C  MOVE.W    (A4)+,(A7)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_16 - cb  // 3E9D  MOVE.W    (A5)+,(A7)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_16 - cb  // 3E9E  MOVE.W    (A6)+,(A7)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_16 - cb  // 3E9F  MOVE.W    (A7)+,(A7)
        b       fea_w_37
        lhau    data, -2(a0)                            // 3EA0  MOVE.W    -(A0),(A7)
        b       move_w_mem_mem_16
        lhau    data, -2(a1)                            // 3EA1  MOVE.W    -(A1),(A7)
        b       move_w_mem_mem_16
        lhau    data, -2(a2)                            // 3EA2  MOVE.W    -(A2),(A7)
        b       move_w_mem_mem_16
        lhau    data, -2(a3)                            // 3EA3  MOVE.W    -(A3),(A7)
        b       move_w_mem_mem_16
        lhau    data, -2(a4)                            // 3EA4  MOVE.W    -(A4),(A7)
        b       move_w_mem_mem_16
        lhau    data, -2(a5)                            // 3EA5  MOVE.W    -(A5),(A7)
        b       move_w_mem_mem_16
        lhau    data, -2(a6)                            // 3EA6  MOVE.W    -(A6),(A7)
        b       move_w_mem_mem_16
        lhau    data, -2(a7)                            // 3EA7  MOVE.W    -(A7),(A7)
        b       test_data
        lhax    data, a0, prefetch_data                 // 3EA8  MOVE.W    (d16,A0),(A7)
        b       move_w_mem_mem_15
        lhax    data, a1, prefetch_data                 // 3EA9  MOVE.W    (d16,A1),(A7)
        b       move_w_mem_mem_15
        lhax    data, a2, prefetch_data                 // 3EAA  MOVE.W    (d16,A2),(A7)
        b       move_w_mem_mem_15
        lhax    data, a3, prefetch_data                 // 3EAB  MOVE.W    (d16,A3),(A7)
        b       move_w_mem_mem_15
        lhax    data, a4, prefetch_data                 // 3EAC  MOVE.W    (d16,A4),(A7)
        b       move_w_mem_mem_15
        lhax    data, a5, prefetch_data                 // 3EAD  MOVE.W    (d16,A5),(A7)
        b       move_w_mem_mem_15
        lhax    data, a6, prefetch_data                 // 3EAE  MOVE.W    (d16,A6),(A7)
        b       move_w_mem_mem_15
        lhax    data, a7, prefetch_data                 // 3EAF  MOVE.W    (d16,A7),(A7)
        b       move_w_mem_mem_15
        ori     rtn_addr, code_ptr, move_w_mem_mem_16 - cb  // 3EB0  MOVE.W    (d8,A0,Xn),(A7)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_16 - cb  // 3EB1  MOVE.W    (d8,A1,Xn),(A7)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_16 - cb  // 3EB2  MOVE.W    (d8,A2,Xn),(A7)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_16 - cb  // 3EB3  MOVE.W    (d8,A3,Xn),(A7)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_16 - cb  // 3EB4  MOVE.W    (d8,A4,Xn),(A7)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_16 - cb  // 3EB5  MOVE.W    (d8,A5,Xn),(A7)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_16 - cb  // 3EB6  MOVE.W    (d8,A6,Xn),(A7)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_16 - cb  // 3EB7  MOVE.W    (d8,A7,Xn),(A7)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3EB8  MOVE.W    (xxx).W,(A7)
        b       move_w_mem_mem_15
        ori     rtn_addr, code_ptr, move_w_mem_mem_16 - cb  // 3EB9  MOVE.W    (xxx).L,(A7)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 3EBA  MOVE.W    (d16,PC),(A7)
        b       move_w_mem_mem_15
        ori     rtn_addr, code_ptr, move_w_mem_mem_16 - cb  // 3EBB  MOVE.W    (d8,PC,Xn),(A7)
        b       fea_w_73
        sth     prefetch_data, 0(a7)                    // 3EBC  MOVE.W    #<data>,(A7)
        b       move_w_imm_any
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3EBD  MOVE.W    <ea 7.5>,(A7)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3EBE  MOVE.W    <ea 7.6>,(A7)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3EBF  MOVE.W    <ea 7.7>,(A7)   (illegal)
        b       take_illegal_instruction

// ---- $3EC0-$3EFF --------------------------------------------------------
        extsh   data, d0                                // 3EC0  MOVE.W    D0,(A7)+
        b       move_w_mem_mem_54
        extsh   data, d1                                // 3EC1  MOVE.W    D1,(A7)+
        b       move_w_mem_mem_54
        extsh   data, d2                                // 3EC2  MOVE.W    D2,(A7)+
        b       move_w_mem_mem_54
        extsh   data, d3                                // 3EC3  MOVE.W    D3,(A7)+
        b       move_w_mem_mem_54
        extsh   data, d4                                // 3EC4  MOVE.W    D4,(A7)+
        b       move_w_mem_mem_54
        extsh   data, d5                                // 3EC5  MOVE.W    D5,(A7)+
        b       move_w_mem_mem_54
        extsh   data, d6                                // 3EC6  MOVE.W    D6,(A7)+
        b       move_w_mem_mem_54
        extsh   data, d7                                // 3EC7  MOVE.W    D7,(A7)+
        b       move_w_mem_mem_54
        extsh   data, a0                                // 3EC8  MOVE.W    A0,(A7)+
        b       move_w_mem_mem_54
        extsh   data, a1                                // 3EC9  MOVE.W    A1,(A7)+
        b       move_w_mem_mem_54
        extsh   data, a2                                // 3ECA  MOVE.W    A2,(A7)+
        b       move_w_mem_mem_54
        extsh   data, a3                                // 3ECB  MOVE.W    A3,(A7)+
        b       move_w_mem_mem_54
        extsh   data, a4                                // 3ECC  MOVE.W    A4,(A7)+
        b       move_w_mem_mem_54
        extsh   data, a5                                // 3ECD  MOVE.W    A5,(A7)+
        b       move_w_mem_mem_54
        extsh   data, a6                                // 3ECE  MOVE.W    A6,(A7)+
        b       move_w_mem_mem_54
        extsh   data, a7                                // 3ECF  MOVE.W    A7,(A7)+
        b       move_w_mem_mem_54
        lha     data, 0(a0)                             // 3ED0  MOVE.W    (A0),(A7)+
        b       move_w_mem_mem_54
        lha     data, 0(a1)                             // 3ED1  MOVE.W    (A1),(A7)+
        b       move_w_mem_mem_54
        lha     data, 0(a2)                             // 3ED2  MOVE.W    (A2),(A7)+
        b       move_w_mem_mem_54
        lha     data, 0(a3)                             // 3ED3  MOVE.W    (A3),(A7)+
        b       move_w_mem_mem_54
        lha     data, 0(a4)                             // 3ED4  MOVE.W    (A4),(A7)+
        b       move_w_mem_mem_54
        lha     data, 0(a5)                             // 3ED5  MOVE.W    (A5),(A7)+
        b       move_w_mem_mem_54
        lha     data, 0(a6)                             // 3ED6  MOVE.W    (A6),(A7)+
        b       move_w_mem_mem_54
        lha     data, 0(a7)                             // 3ED7  MOVE.W    (A7),(A7)+
        b       move_w_mem_mem_54
        ori     rtn_addr, code_ptr, move_w_mem_mem_54 - cb  // 3ED8  MOVE.W    (A0)+,(A7)+
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_54 - cb  // 3ED9  MOVE.W    (A1)+,(A7)+
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_54 - cb  // 3EDA  MOVE.W    (A2)+,(A7)+
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_54 - cb  // 3EDB  MOVE.W    (A3)+,(A7)+
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_54 - cb  // 3EDC  MOVE.W    (A4)+,(A7)+
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_54 - cb  // 3EDD  MOVE.W    (A5)+,(A7)+
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_54 - cb  // 3EDE  MOVE.W    (A6)+,(A7)+
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_54 - cb  // 3EDF  MOVE.W    (A7)+,(A7)+
        b       fea_w_37
        lhau    data, -2(a0)                            // 3EE0  MOVE.W    -(A0),(A7)+
        b       move_w_mem_mem_54
        lhau    data, -2(a1)                            // 3EE1  MOVE.W    -(A1),(A7)+
        b       move_w_mem_mem_54
        lhau    data, -2(a2)                            // 3EE2  MOVE.W    -(A2),(A7)+
        b       move_w_mem_mem_54
        lhau    data, -2(a3)                            // 3EE3  MOVE.W    -(A3),(A7)+
        b       move_w_mem_mem_54
        lhau    data, -2(a4)                            // 3EE4  MOVE.W    -(A4),(A7)+
        b       move_w_mem_mem_54
        lhau    data, -2(a5)                            // 3EE5  MOVE.W    -(A5),(A7)+
        b       move_w_mem_mem_54
        lhau    data, -2(a6)                            // 3EE6  MOVE.W    -(A6),(A7)+
        b       move_w_mem_mem_54
        lha     data, -2(a7)                            // 3EE7  MOVE.W    -(A7),(A7)+
        b       test_data
        lhax    data, a0, prefetch_data                 // 3EE8  MOVE.W    (d16,A0),(A7)+
        b       move_w_ea_mem_22
        lhax    data, a1, prefetch_data                 // 3EE9  MOVE.W    (d16,A1),(A7)+
        b       move_w_ea_mem_22
        lhax    data, a2, prefetch_data                 // 3EEA  MOVE.W    (d16,A2),(A7)+
        b       move_w_ea_mem_22
        lhax    data, a3, prefetch_data                 // 3EEB  MOVE.W    (d16,A3),(A7)+
        b       move_w_ea_mem_22
        lhax    data, a4, prefetch_data                 // 3EEC  MOVE.W    (d16,A4),(A7)+
        b       move_w_ea_mem_22
        lhax    data, a5, prefetch_data                 // 3EED  MOVE.W    (d16,A5),(A7)+
        b       move_w_ea_mem_22
        lhax    data, a6, prefetch_data                 // 3EEE  MOVE.W    (d16,A6),(A7)+
        b       move_w_ea_mem_22
        lhax    data, a7, prefetch_data                 // 3EEF  MOVE.W    (d16,A7),(A7)+
        b       move_w_ea_mem_22
        ori     rtn_addr, code_ptr, move_w_mem_mem_54 - cb  // 3EF0  MOVE.W    (d8,A0,Xn),(A7)+
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_54 - cb  // 3EF1  MOVE.W    (d8,A1,Xn),(A7)+
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_54 - cb  // 3EF2  MOVE.W    (d8,A2,Xn),(A7)+
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_54 - cb  // 3EF3  MOVE.W    (d8,A3,Xn),(A7)+
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_54 - cb  // 3EF4  MOVE.W    (d8,A4,Xn),(A7)+
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_54 - cb  // 3EF5  MOVE.W    (d8,A5,Xn),(A7)+
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_54 - cb  // 3EF6  MOVE.W    (d8,A6,Xn),(A7)+
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_54 - cb  // 3EF7  MOVE.W    (d8,A7,Xn),(A7)+
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3EF8  MOVE.W    (xxx).W,(A7)+
        b       move_w_ea_mem_22
        ori     rtn_addr, code_ptr, move_w_mem_mem_54 - cb  // 3EF9  MOVE.W    (xxx).L,(A7)+
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 3EFA  MOVE.W    (d16,PC),(A7)+
        b       move_w_ea_mem_22
        ori     rtn_addr, code_ptr, move_w_mem_mem_54 - cb  // 3EFB  MOVE.W    (d8,PC,Xn),(A7)+
        b       fea_w_73
        extsh   data, prefetch_data                     // 3EFC  MOVE.W    #<data>,(A7)+
        b       move_w_ea_mem_22
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3EFD  MOVE.W    <ea 7.5>,(A7)+   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3EFE  MOVE.W    <ea 7.6>,(A7)+   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3EFF  MOVE.W    <ea 7.7>,(A7)+   (illegal)
        b       take_illegal_instruction

// ---- $3F00-$3F3F --------------------------------------------------------
        extsh   data, d0                                // 3F00  MOVE.W    D0,-(A7)
        b       move_w_mem_mem_32
        extsh   data, d1                                // 3F01  MOVE.W    D1,-(A7)
        b       move_w_mem_mem_32
        extsh   data, d2                                // 3F02  MOVE.W    D2,-(A7)
        b       move_w_mem_mem_32
        extsh   data, d3                                // 3F03  MOVE.W    D3,-(A7)
        b       move_w_mem_mem_32
        extsh   data, d4                                // 3F04  MOVE.W    D4,-(A7)
        b       move_w_mem_mem_32
        extsh   data, d5                                // 3F05  MOVE.W    D5,-(A7)
        b       move_w_mem_mem_32
        extsh   data, d6                                // 3F06  MOVE.W    D6,-(A7)
        b       move_w_mem_mem_32
        extsh   data, d7                                // 3F07  MOVE.W    D7,-(A7)
        b       move_w_mem_mem_32
        extsh   data, a0                                // 3F08  MOVE.W    A0,-(A7)
        b       move_w_mem_mem_32
        extsh   data, a1                                // 3F09  MOVE.W    A1,-(A7)
        b       move_w_mem_mem_32
        extsh   data, a2                                // 3F0A  MOVE.W    A2,-(A7)
        b       move_w_mem_mem_32
        extsh   data, a3                                // 3F0B  MOVE.W    A3,-(A7)
        b       move_w_mem_mem_32
        extsh   data, a4                                // 3F0C  MOVE.W    A4,-(A7)
        b       move_w_mem_mem_32
        extsh   data, a5                                // 3F0D  MOVE.W    A5,-(A7)
        b       move_w_mem_mem_32
        extsh   data, a6                                // 3F0E  MOVE.W    A6,-(A7)
        b       move_w_mem_mem_32
        extsh   data, a7                                // 3F0F  MOVE.W    A7,-(A7)
        b       move_w_mem_mem_32
        lha     data, 0(a0)                             // 3F10  MOVE.W    (A0),-(A7)
        b       move_w_mem_mem_32
        lha     data, 0(a1)                             // 3F11  MOVE.W    (A1),-(A7)
        b       move_w_mem_mem_32
        lha     data, 0(a2)                             // 3F12  MOVE.W    (A2),-(A7)
        b       move_w_mem_mem_32
        lha     data, 0(a3)                             // 3F13  MOVE.W    (A3),-(A7)
        b       move_w_mem_mem_32
        lha     data, 0(a4)                             // 3F14  MOVE.W    (A4),-(A7)
        b       move_w_mem_mem_32
        lha     data, 0(a5)                             // 3F15  MOVE.W    (A5),-(A7)
        b       move_w_mem_mem_32
        lha     data, 0(a6)                             // 3F16  MOVE.W    (A6),-(A7)
        b       move_w_mem_mem_32
        lha     data, 0(a7)                             // 3F17  MOVE.W    (A7),-(A7)
        b       move_w_mem_mem_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_32 - cb  // 3F18  MOVE.W    (A0)+,-(A7)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_32 - cb  // 3F19  MOVE.W    (A1)+,-(A7)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_32 - cb  // 3F1A  MOVE.W    (A2)+,-(A7)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_32 - cb  // 3F1B  MOVE.W    (A3)+,-(A7)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_32 - cb  // 3F1C  MOVE.W    (A4)+,-(A7)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_32 - cb  // 3F1D  MOVE.W    (A5)+,-(A7)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_32 - cb  // 3F1E  MOVE.W    (A6)+,-(A7)
        b       fea_w_36
        lha     data, 0(a7)                             // 3F1F  MOVE.W    (A7)+,-(A7)
        b       test_data
        lhau    data, -2(a0)                            // 3F20  MOVE.W    -(A0),-(A7)
        b       move_w_mem_mem_32
        lhau    data, -2(a1)                            // 3F21  MOVE.W    -(A1),-(A7)
        b       move_w_mem_mem_32
        lhau    data, -2(a2)                            // 3F22  MOVE.W    -(A2),-(A7)
        b       move_w_mem_mem_32
        lhau    data, -2(a3)                            // 3F23  MOVE.W    -(A3),-(A7)
        b       move_w_mem_mem_32
        lhau    data, -2(a4)                            // 3F24  MOVE.W    -(A4),-(A7)
        b       move_w_mem_mem_32
        lhau    data, -2(a5)                            // 3F25  MOVE.W    -(A5),-(A7)
        b       move_w_mem_mem_32
        lhau    data, -2(a6)                            // 3F26  MOVE.W    -(A6),-(A7)
        b       move_w_mem_mem_32
        lhau    data, -2(a7)                            // 3F27  MOVE.W    -(A7),-(A7)
        b       move_w_mem_mem_32
        lhax    data, a0, prefetch_data                 // 3F28  MOVE.W    (d16,A0),-(A7)
        b       move_w_mem_mem_31
        lhax    data, a1, prefetch_data                 // 3F29  MOVE.W    (d16,A1),-(A7)
        b       move_w_mem_mem_31
        lhax    data, a2, prefetch_data                 // 3F2A  MOVE.W    (d16,A2),-(A7)
        b       move_w_mem_mem_31
        lhax    data, a3, prefetch_data                 // 3F2B  MOVE.W    (d16,A3),-(A7)
        b       move_w_mem_mem_31
        lhax    data, a4, prefetch_data                 // 3F2C  MOVE.W    (d16,A4),-(A7)
        b       move_w_mem_mem_31
        lhax    data, a5, prefetch_data                 // 3F2D  MOVE.W    (d16,A5),-(A7)
        b       move_w_mem_mem_31
        lhax    data, a6, prefetch_data                 // 3F2E  MOVE.W    (d16,A6),-(A7)
        b       move_w_mem_mem_31
        lhax    data, a7, prefetch_data                 // 3F2F  MOVE.W    (d16,A7),-(A7)
        b       move_w_mem_mem_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_32 - cb  // 3F30  MOVE.W    (d8,A0,Xn),-(A7)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_32 - cb  // 3F31  MOVE.W    (d8,A1,Xn),-(A7)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_32 - cb  // 3F32  MOVE.W    (d8,A2,Xn),-(A7)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_32 - cb  // 3F33  MOVE.W    (d8,A3,Xn),-(A7)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_32 - cb  // 3F34  MOVE.W    (d8,A4,Xn),-(A7)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_32 - cb  // 3F35  MOVE.W    (d8,A5,Xn),-(A7)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_32 - cb  // 3F36  MOVE.W    (d8,A6,Xn),-(A7)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_32 - cb  // 3F37  MOVE.W    (d8,A7,Xn),-(A7)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3F38  MOVE.W    (xxx).W,-(A7)
        b       move_w_mem_mem_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_32 - cb  // 3F39  MOVE.W    (xxx).L,-(A7)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 3F3A  MOVE.W    (d16,PC),-(A7)
        b       move_w_mem_mem_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_32 - cb  // 3F3B  MOVE.W    (d8,PC,Xn),-(A7)
        b       fea_w_73
        sthu    prefetch_data, -2(a7)                   // 3F3C  MOVE.W    #<data>,-(A7)
        b       move_w_imm_any
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3F3D  MOVE.W    <ea 7.5>,-(A7)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3F3E  MOVE.W    <ea 7.6>,-(A7)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3F3F  MOVE.W    <ea 7.7>,-(A7)   (illegal)
        b       take_illegal_instruction

// ---- $3F40-$3F7F --------------------------------------------------------
        sthx    d0, a7, prefetch_data                   // 3F40  MOVE.W    D0,(d16,A7)
        b       move_w_d0_mem
        extsh   data, d1                                // 3F41  MOVE.W    D1,(d16,A7)
        b       move_w_mem_mem_55
        extsh   data, d2                                // 3F42  MOVE.W    D2,(d16,A7)
        b       move_w_mem_mem_55
        extsh   data, d3                                // 3F43  MOVE.W    D3,(d16,A7)
        b       move_w_mem_mem_55
        extsh   data, d4                                // 3F44  MOVE.W    D4,(d16,A7)
        b       move_w_mem_mem_55
        extsh   data, d5                                // 3F45  MOVE.W    D5,(d16,A7)
        b       move_w_mem_mem_55
        extsh   data, d6                                // 3F46  MOVE.W    D6,(d16,A7)
        b       move_w_mem_mem_55
        extsh   data, d7                                // 3F47  MOVE.W    D7,(d16,A7)
        b       move_w_mem_mem_55
        extsh   data, a0                                // 3F48  MOVE.W    A0,(d16,A7)
        b       move_w_mem_mem_55
        extsh   data, a1                                // 3F49  MOVE.W    A1,(d16,A7)
        b       move_w_mem_mem_55
        extsh   data, a2                                // 3F4A  MOVE.W    A2,(d16,A7)
        b       move_w_mem_mem_55
        extsh   data, a3                                // 3F4B  MOVE.W    A3,(d16,A7)
        b       move_w_mem_mem_55
        extsh   data, a4                                // 3F4C  MOVE.W    A4,(d16,A7)
        b       move_w_mem_mem_55
        extsh   data, a5                                // 3F4D  MOVE.W    A5,(d16,A7)
        b       move_w_mem_mem_55
        extsh   data, a6                                // 3F4E  MOVE.W    A6,(d16,A7)
        b       move_w_mem_mem_55
        extsh   data, a7                                // 3F4F  MOVE.W    A7,(d16,A7)
        b       move_w_mem_mem_55
        lha     data, 0(a0)                             // 3F50  MOVE.W    (A0),(d16,A7)
        b       move_w_mem_mem_55
        lha     data, 0(a1)                             // 3F51  MOVE.W    (A1),(d16,A7)
        b       move_w_mem_mem_55
        lha     data, 0(a2)                             // 3F52  MOVE.W    (A2),(d16,A7)
        b       move_w_mem_mem_55
        lha     data, 0(a3)                             // 3F53  MOVE.W    (A3),(d16,A7)
        b       move_w_mem_mem_55
        lha     data, 0(a4)                             // 3F54  MOVE.W    (A4),(d16,A7)
        b       move_w_mem_mem_55
        lha     data, 0(a5)                             // 3F55  MOVE.W    (A5),(d16,A7)
        b       move_w_mem_mem_55
        lha     data, 0(a6)                             // 3F56  MOVE.W    (A6),(d16,A7)
        b       move_w_mem_mem_55
        lha     data, 0(a7)                             // 3F57  MOVE.W    (A7),(d16,A7)
        b       move_w_mem_mem_55
        ori     rtn_addr, code_ptr, move_w_mem_mem_55 - cb  // 3F58  MOVE.W    (A0)+,(d16,A7)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_55 - cb  // 3F59  MOVE.W    (A1)+,(d16,A7)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_55 - cb  // 3F5A  MOVE.W    (A2)+,(d16,A7)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_55 - cb  // 3F5B  MOVE.W    (A3)+,(d16,A7)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_55 - cb  // 3F5C  MOVE.W    (A4)+,(d16,A7)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_55 - cb  // 3F5D  MOVE.W    (A5)+,(d16,A7)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_55 - cb  // 3F5E  MOVE.W    (A6)+,(d16,A7)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_55 - cb  // 3F5F  MOVE.W    (A7)+,(d16,A7)
        b       fea_w_37
        lhau    data, -2(a0)                            // 3F60  MOVE.W    -(A0),(d16,A7)
        b       move_w_mem_mem_55
        lhau    data, -2(a1)                            // 3F61  MOVE.W    -(A1),(d16,A7)
        b       move_w_mem_mem_55
        lhau    data, -2(a2)                            // 3F62  MOVE.W    -(A2),(d16,A7)
        b       move_w_mem_mem_55
        lhau    data, -2(a3)                            // 3F63  MOVE.W    -(A3),(d16,A7)
        b       move_w_mem_mem_55
        lhau    data, -2(a4)                            // 3F64  MOVE.W    -(A4),(d16,A7)
        b       move_w_mem_mem_55
        lhau    data, -2(a5)                            // 3F65  MOVE.W    -(A5),(d16,A7)
        b       move_w_mem_mem_55
        lhau    data, -2(a6)                            // 3F66  MOVE.W    -(A6),(d16,A7)
        b       move_w_mem_mem_55
        lhau    data, -2(a7)                            // 3F67  MOVE.W    -(A7),(d16,A7)
        b       move_w_mem_mem_55
        lhax    data, a0, prefetch_data                 // 3F68  MOVE.W    (d16,A0),(d16,A7)
        b       move_w_ea_mem_23
        lhax    data, a1, prefetch_data                 // 3F69  MOVE.W    (d16,A1),(d16,A7)
        b       move_w_ea_mem_23
        lhax    data, a2, prefetch_data                 // 3F6A  MOVE.W    (d16,A2),(d16,A7)
        b       move_w_ea_mem_23
        lhax    data, a3, prefetch_data                 // 3F6B  MOVE.W    (d16,A3),(d16,A7)
        b       move_w_ea_mem_23
        lhax    data, a4, prefetch_data                 // 3F6C  MOVE.W    (d16,A4),(d16,A7)
        b       move_w_ea_mem_23
        lhax    data, a5, prefetch_data                 // 3F6D  MOVE.W    (d16,A5),(d16,A7)
        b       move_w_ea_mem_23
        lhax    data, a6, prefetch_data                 // 3F6E  MOVE.W    (d16,A6),(d16,A7)
        b       move_w_ea_mem_23
        lhax    data, a7, prefetch_data                 // 3F6F  MOVE.W    (d16,A7),(d16,A7)
        b       move_w_ea_mem_23
        ori     rtn_addr, code_ptr, move_w_mem_mem_55 - cb  // 3F70  MOVE.W    (d8,A0,Xn),(d16,A7)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_55 - cb  // 3F71  MOVE.W    (d8,A1,Xn),(d16,A7)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_55 - cb  // 3F72  MOVE.W    (d8,A2,Xn),(d16,A7)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_55 - cb  // 3F73  MOVE.W    (d8,A3,Xn),(d16,A7)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_55 - cb  // 3F74  MOVE.W    (d8,A4,Xn),(d16,A7)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_55 - cb  // 3F75  MOVE.W    (d8,A5,Xn),(d16,A7)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_55 - cb  // 3F76  MOVE.W    (d8,A6,Xn),(d16,A7)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_55 - cb  // 3F77  MOVE.W    (d8,A7,Xn),(d16,A7)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3F78  MOVE.W    (xxx).W,(d16,A7)
        b       move_w_ea_mem_23
        ori     rtn_addr, code_ptr, move_w_mem_mem_55 - cb  // 3F79  MOVE.W    (xxx).L,(d16,A7)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 3F7A  MOVE.W    (d16,PC),(d16,A7)
        b       move_w_ea_mem_23
        ori     rtn_addr, code_ptr, move_w_mem_mem_55 - cb  // 3F7B  MOVE.W    (d8,PC,Xn),(d16,A7)
        b       fea_w_73
        extsh   data, prefetch_data                     // 3F7C  MOVE.W    #<data>,(d16,A7)
        b       move_w_ea_mem_23
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3F7D  MOVE.W    <ea 7.5>,(d16,A7)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3F7E  MOVE.W    <ea 7.6>,(d16,A7)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3F7F  MOVE.W    <ea 7.7>,(d16,A7)   (illegal)
        b       take_illegal_instruction

// ---- $3F80-$3FBF --------------------------------------------------------
        extsh   data, d0                                // 3F80  MOVE.W    D0,(d8,A7,Xn)
        b       move_w_mem_mem_56
        extsh   data, d1                                // 3F81  MOVE.W    D1,(d8,A7,Xn)
        b       move_w_mem_mem_56
        extsh   data, d2                                // 3F82  MOVE.W    D2,(d8,A7,Xn)
        b       move_w_mem_mem_56
        extsh   data, d3                                // 3F83  MOVE.W    D3,(d8,A7,Xn)
        b       move_w_mem_mem_56
        extsh   data, d4                                // 3F84  MOVE.W    D4,(d8,A7,Xn)
        b       move_w_mem_mem_56
        extsh   data, d5                                // 3F85  MOVE.W    D5,(d8,A7,Xn)
        b       move_w_mem_mem_56
        extsh   data, d6                                // 3F86  MOVE.W    D6,(d8,A7,Xn)
        b       move_w_mem_mem_56
        extsh   data, d7                                // 3F87  MOVE.W    D7,(d8,A7,Xn)
        b       move_w_mem_mem_56
        extsh   data, a0                                // 3F88  MOVE.W    A0,(d8,A7,Xn)
        b       move_w_mem_mem_56
        extsh   data, a1                                // 3F89  MOVE.W    A1,(d8,A7,Xn)
        b       move_w_mem_mem_56
        extsh   data, a2                                // 3F8A  MOVE.W    A2,(d8,A7,Xn)
        b       move_w_mem_mem_56
        extsh   data, a3                                // 3F8B  MOVE.W    A3,(d8,A7,Xn)
        b       move_w_mem_mem_56
        extsh   data, a4                                // 3F8C  MOVE.W    A4,(d8,A7,Xn)
        b       move_w_mem_mem_56
        extsh   data, a5                                // 3F8D  MOVE.W    A5,(d8,A7,Xn)
        b       move_w_mem_mem_56
        extsh   data, a6                                // 3F8E  MOVE.W    A6,(d8,A7,Xn)
        b       move_w_mem_mem_56
        extsh   data, a7                                // 3F8F  MOVE.W    A7,(d8,A7,Xn)
        b       move_w_mem_mem_56
        lha     data, 0(a0)                             // 3F90  MOVE.W    (A0),(d8,A7,Xn)
        b       move_w_mem_mem_56
        lha     data, 0(a1)                             // 3F91  MOVE.W    (A1),(d8,A7,Xn)
        b       move_w_mem_mem_56
        lha     data, 0(a2)                             // 3F92  MOVE.W    (A2),(d8,A7,Xn)
        b       move_w_mem_mem_56
        lha     data, 0(a3)                             // 3F93  MOVE.W    (A3),(d8,A7,Xn)
        b       move_w_mem_mem_56
        lha     data, 0(a4)                             // 3F94  MOVE.W    (A4),(d8,A7,Xn)
        b       move_w_mem_mem_56
        lha     data, 0(a5)                             // 3F95  MOVE.W    (A5),(d8,A7,Xn)
        b       move_w_mem_mem_56
        lha     data, 0(a6)                             // 3F96  MOVE.W    (A6),(d8,A7,Xn)
        b       move_w_mem_mem_56
        lha     data, 0(a7)                             // 3F97  MOVE.W    (A7),(d8,A7,Xn)
        b       move_w_mem_mem_56
        ori     rtn_addr, code_ptr, move_w_mem_mem_56 - cb  // 3F98  MOVE.W    (A0)+,(d8,A7,Xn)
        b       fea_w_30
        ori     rtn_addr, code_ptr, move_w_mem_mem_56 - cb  // 3F99  MOVE.W    (A1)+,(d8,A7,Xn)
        b       fea_w_31
        ori     rtn_addr, code_ptr, move_w_mem_mem_56 - cb  // 3F9A  MOVE.W    (A2)+,(d8,A7,Xn)
        b       fea_w_32
        ori     rtn_addr, code_ptr, move_w_mem_mem_56 - cb  // 3F9B  MOVE.W    (A3)+,(d8,A7,Xn)
        b       fea_w_33
        ori     rtn_addr, code_ptr, move_w_mem_mem_56 - cb  // 3F9C  MOVE.W    (A4)+,(d8,A7,Xn)
        b       fea_w_34
        ori     rtn_addr, code_ptr, move_w_mem_mem_56 - cb  // 3F9D  MOVE.W    (A5)+,(d8,A7,Xn)
        b       fea_w_35
        ori     rtn_addr, code_ptr, move_w_mem_mem_56 - cb  // 3F9E  MOVE.W    (A6)+,(d8,A7,Xn)
        b       fea_w_36
        ori     rtn_addr, code_ptr, move_w_mem_mem_56 - cb  // 3F9F  MOVE.W    (A7)+,(d8,A7,Xn)
        b       fea_w_37
        lhau    data, -2(a0)                            // 3FA0  MOVE.W    -(A0),(d8,A7,Xn)
        b       move_w_mem_mem_56
        lhau    data, -2(a1)                            // 3FA1  MOVE.W    -(A1),(d8,A7,Xn)
        b       move_w_mem_mem_56
        lhau    data, -2(a2)                            // 3FA2  MOVE.W    -(A2),(d8,A7,Xn)
        b       move_w_mem_mem_56
        lhau    data, -2(a3)                            // 3FA3  MOVE.W    -(A3),(d8,A7,Xn)
        b       move_w_mem_mem_56
        lhau    data, -2(a4)                            // 3FA4  MOVE.W    -(A4),(d8,A7,Xn)
        b       move_w_mem_mem_56
        lhau    data, -2(a5)                            // 3FA5  MOVE.W    -(A5),(d8,A7,Xn)
        b       move_w_mem_mem_56
        lhau    data, -2(a6)                            // 3FA6  MOVE.W    -(A6),(d8,A7,Xn)
        b       move_w_mem_mem_56
        lhau    data, -2(a7)                            // 3FA7  MOVE.W    -(A7),(d8,A7,Xn)
        b       move_w_mem_mem_56
        lhax    data, a0, prefetch_data                 // 3FA8  MOVE.W    (d16,A0),(d8,A7,Xn)
        b       move_w_ea_mem_24
        lhax    data, a1, prefetch_data                 // 3FA9  MOVE.W    (d16,A1),(d8,A7,Xn)
        b       move_w_ea_mem_24
        lhax    data, a2, prefetch_data                 // 3FAA  MOVE.W    (d16,A2),(d8,A7,Xn)
        b       move_w_ea_mem_24
        lhax    data, a3, prefetch_data                 // 3FAB  MOVE.W    (d16,A3),(d8,A7,Xn)
        b       move_w_ea_mem_24
        lhax    data, a4, prefetch_data                 // 3FAC  MOVE.W    (d16,A4),(d8,A7,Xn)
        b       move_w_ea_mem_24
        lhax    data, a5, prefetch_data                 // 3FAD  MOVE.W    (d16,A5),(d8,A7,Xn)
        b       move_w_ea_mem_24
        lhax    data, a6, prefetch_data                 // 3FAE  MOVE.W    (d16,A6),(d8,A7,Xn)
        b       move_w_ea_mem_24
        lhax    data, a7, prefetch_data                 // 3FAF  MOVE.W    (d16,A7),(d8,A7,Xn)
        b       move_w_ea_mem_24
        ori     rtn_addr, code_ptr, move_w_mem_mem_56 - cb  // 3FB0  MOVE.W    (d8,A0,Xn),(d8,A7,Xn)
        b       fea_w_60
        ori     rtn_addr, code_ptr, move_w_mem_mem_56 - cb  // 3FB1  MOVE.W    (d8,A1,Xn),(d8,A7,Xn)
        b       fea_w_61
        ori     rtn_addr, code_ptr, move_w_mem_mem_56 - cb  // 3FB2  MOVE.W    (d8,A2,Xn),(d8,A7,Xn)
        b       fea_w_62
        ori     rtn_addr, code_ptr, move_w_mem_mem_56 - cb  // 3FB3  MOVE.W    (d8,A3,Xn),(d8,A7,Xn)
        b       fea_w_63
        ori     rtn_addr, code_ptr, move_w_mem_mem_56 - cb  // 3FB4  MOVE.W    (d8,A4,Xn),(d8,A7,Xn)
        b       fea_w_64
        ori     rtn_addr, code_ptr, move_w_mem_mem_56 - cb  // 3FB5  MOVE.W    (d8,A5,Xn),(d8,A7,Xn)
        b       fea_w_65
        ori     rtn_addr, code_ptr, move_w_mem_mem_56 - cb  // 3FB6  MOVE.W    (d8,A6,Xn),(d8,A7,Xn)
        b       fea_w_66
        ori     rtn_addr, code_ptr, move_w_mem_mem_56 - cb  // 3FB7  MOVE.W    (d8,A7,Xn),(d8,A7,Xn)
        b       fea_w_67
        lha     data, 0(prefetch_data)                  // 3FB8  MOVE.W    (xxx).W,(d8,A7,Xn)
        b       move_w_ea_mem_24
        ori     rtn_addr, code_ptr, move_w_mem_mem_56 - cb  // 3FB9  MOVE.W    (xxx).L,(d8,A7,Xn)
        b       fea_w_71
        lhax    data, pc, prefetch_data                 // 3FBA  MOVE.W    (d16,PC),(d8,A7,Xn)
        b       move_w_ea_mem_24
        ori     rtn_addr, code_ptr, move_w_mem_mem_56 - cb  // 3FBB  MOVE.W    (d8,PC,Xn),(d8,A7,Xn)
        b       fea_w_73
        extsh   data, prefetch_data                     // 3FBC  MOVE.W    #<data>,(d8,A7,Xn)
        b       move_w_ea_mem_24
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FBD  MOVE.W    <ea 7.5>,(d8,A7,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FBE  MOVE.W    <ea 7.6>,(d8,A7,Xn)   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FBF  MOVE.W    <ea 7.7>,(d8,A7,Xn)   (illegal)
        b       take_illegal_instruction

// ---- $3FC0-$3FFF --------------------------------------------------------
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FC0  MOVE.W    D0,<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FC1  MOVE.W    D1,<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FC2  MOVE.W    D2,<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FC3  MOVE.W    D3,<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FC4  MOVE.W    D4,<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FC5  MOVE.W    D5,<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FC6  MOVE.W    D6,<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FC7  MOVE.W    D7,<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FC8  MOVE.W    A0,<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FC9  MOVE.W    A1,<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FCA  MOVE.W    A2,<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FCB  MOVE.W    A3,<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FCC  MOVE.W    A4,<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FCD  MOVE.W    A5,<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FCE  MOVE.W    A6,<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FCF  MOVE.W    A7,<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FD0  MOVE.W    (A0),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FD1  MOVE.W    (A1),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FD2  MOVE.W    (A2),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FD3  MOVE.W    (A3),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FD4  MOVE.W    (A4),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FD5  MOVE.W    (A5),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FD6  MOVE.W    (A6),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FD7  MOVE.W    (A7),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FD8  MOVE.W    (A0)+,<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FD9  MOVE.W    (A1)+,<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FDA  MOVE.W    (A2)+,<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FDB  MOVE.W    (A3)+,<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FDC  MOVE.W    (A4)+,<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FDD  MOVE.W    (A5)+,<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FDE  MOVE.W    (A6)+,<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FDF  MOVE.W    (A7)+,<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FE0  MOVE.W    -(A0),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FE1  MOVE.W    -(A1),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FE2  MOVE.W    -(A2),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FE3  MOVE.W    -(A3),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FE4  MOVE.W    -(A4),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FE5  MOVE.W    -(A5),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FE6  MOVE.W    -(A6),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FE7  MOVE.W    -(A7),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FE8  MOVE.W    (d16,A0),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FE9  MOVE.W    (d16,A1),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FEA  MOVE.W    (d16,A2),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FEB  MOVE.W    (d16,A3),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FEC  MOVE.W    (d16,A4),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FED  MOVE.W    (d16,A5),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FEE  MOVE.W    (d16,A6),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FEF  MOVE.W    (d16,A7),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FF0  MOVE.W    (d8,A0,Xn),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FF1  MOVE.W    (d8,A1,Xn),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FF2  MOVE.W    (d8,A2,Xn),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FF3  MOVE.W    (d8,A3,Xn),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FF4  MOVE.W    (d8,A4,Xn),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FF5  MOVE.W    (d8,A5,Xn),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FF6  MOVE.W    (d8,A6,Xn),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FF7  MOVE.W    (d8,A7,Xn),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FF8  MOVE.W    (xxx).W,<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FF9  MOVE.W    (xxx).L,<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FFA  MOVE.W    (d16,PC),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FFB  MOVE.W    (d8,PC,Xn),<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FFC  MOVE.W    #<data>,<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FFD  MOVE.W    <ea 7.5>,<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FFE  MOVE.W    <ea 7.6>,<ea 7.7>   (illegal)
        b       take_illegal_instruction
        lwz     rtn_addr, illegal_handler(EmulatorStatePtr)  // 3FFF  MOVE.W    <ea 7.7>,<ea 7.7>   (illegal)
        b       take_illegal_instruction
