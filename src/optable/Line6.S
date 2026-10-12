// Line6.S - offsets 50000-57FFF
//
// Names and comments are edited here.  After any change "make verify" must
// still report that the build is identical to Emulator.x.

// ---- $6000-$603F --------------------------------------------------------
        lhaux   prefetch_data, pc, prefetch_data        // 6000  BRA.W     <label>
        b       jmp_bra_mem
        addi    addr, pc, 1                             // 6001  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 2(pc)                    // 6002  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 3                             // 6003  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 4(pc)                    // 6004  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 5                             // 6005  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 6(pc)                    // 6006  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 7                             // 6007  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 8(pc)                    // 6008  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 9                             // 6009  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 10(pc)                   // 600A  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 11                            // 600B  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 12(pc)                   // 600C  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 13                            // 600D  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 14(pc)                   // 600E  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 15                            // 600F  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 16(pc)                   // 6010  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 17                            // 6011  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 18(pc)                   // 6012  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 19                            // 6013  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 20(pc)                   // 6014  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 21                            // 6015  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 22(pc)                   // 6016  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 23                            // 6017  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 24(pc)                   // 6018  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 25                            // 6019  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 26(pc)                   // 601A  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 27                            // 601B  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 28(pc)                   // 601C  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 29                            // 601D  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 30(pc)                   // 601E  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 31                            // 601F  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 32(pc)                   // 6020  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 33                            // 6021  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 34(pc)                   // 6022  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 35                            // 6023  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 36(pc)                   // 6024  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 37                            // 6025  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 38(pc)                   // 6026  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 39                            // 6027  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 40(pc)                   // 6028  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 41                            // 6029  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 42(pc)                   // 602A  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 43                            // 602B  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 44(pc)                   // 602C  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 45                            // 602D  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 46(pc)                   // 602E  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 47                            // 602F  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 48(pc)                   // 6030  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 49                            // 6031  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 50(pc)                   // 6032  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 51                            // 6033  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 52(pc)                   // 6034  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 53                            // 6035  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 54(pc)                   // 6036  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 55                            // 6037  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 56(pc)                   // 6038  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 57                            // 6039  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 58(pc)                   // 603A  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 59                            // 603B  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 60(pc)                   // 603C  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 61                            // 603D  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 62(pc)                   // 603E  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 63                            // 603F  BRA.S     <label>
        b       bra_s_2

// ---- $6040-$607F --------------------------------------------------------
        lhau    prefetch_data, 64(pc)                   // 6040  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 65                            // 6041  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 66(pc)                   // 6042  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 67                            // 6043  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 68(pc)                   // 6044  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 69                            // 6045  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 70(pc)                   // 6046  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 71                            // 6047  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 72(pc)                   // 6048  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 73                            // 6049  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 74(pc)                   // 604A  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 75                            // 604B  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 76(pc)                   // 604C  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 77                            // 604D  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 78(pc)                   // 604E  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 79                            // 604F  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 80(pc)                   // 6050  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 81                            // 6051  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 82(pc)                   // 6052  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 83                            // 6053  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 84(pc)                   // 6054  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 85                            // 6055  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 86(pc)                   // 6056  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 87                            // 6057  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 88(pc)                   // 6058  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 89                            // 6059  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 90(pc)                   // 605A  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 91                            // 605B  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 92(pc)                   // 605C  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 93                            // 605D  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 94(pc)                   // 605E  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 95                            // 605F  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 96(pc)                   // 6060  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 97                            // 6061  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 98(pc)                   // 6062  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 99                            // 6063  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 100(pc)                  // 6064  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 101                           // 6065  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 102(pc)                  // 6066  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 103                           // 6067  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 104(pc)                  // 6068  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 105                           // 6069  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 106(pc)                  // 606A  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 107                           // 606B  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 108(pc)                  // 606C  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 109                           // 606D  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 110(pc)                  // 606E  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 111                           // 606F  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 112(pc)                  // 6070  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 113                           // 6071  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 114(pc)                  // 6072  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 115                           // 6073  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 116(pc)                  // 6074  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 117                           // 6075  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 118(pc)                  // 6076  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 119                           // 6077  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 120(pc)                  // 6078  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 121                           // 6079  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 122(pc)                  // 607A  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 123                           // 607B  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 124(pc)                  // 607C  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 125                           // 607D  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, 126(pc)                  // 607E  BRA.S     <label>
        b       bra_s
        addi    addr, pc, 127                           // 607F  BRA.S     <label>
        b       bra_s_2

// ---- $6080-$60BF --------------------------------------------------------
        lhau    prefetch_data, -128(pc)                 // 6080  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -127                          // 6081  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -126(pc)                 // 6082  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -125                          // 6083  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -124(pc)                 // 6084  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -123                          // 6085  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -122(pc)                 // 6086  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -121                          // 6087  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -120(pc)                 // 6088  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -119                          // 6089  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -118(pc)                 // 608A  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -117                          // 608B  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -116(pc)                 // 608C  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -115                          // 608D  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -114(pc)                 // 608E  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -113                          // 608F  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -112(pc)                 // 6090  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -111                          // 6091  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -110(pc)                 // 6092  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -109                          // 6093  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -108(pc)                 // 6094  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -107                          // 6095  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -106(pc)                 // 6096  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -105                          // 6097  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -104(pc)                 // 6098  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -103                          // 6099  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -102(pc)                 // 609A  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -101                          // 609B  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -100(pc)                 // 609C  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -99                           // 609D  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -98(pc)                  // 609E  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -97                           // 609F  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -96(pc)                  // 60A0  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -95                           // 60A1  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -94(pc)                  // 60A2  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -93                           // 60A3  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -92(pc)                  // 60A4  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -91                           // 60A5  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -90(pc)                  // 60A6  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -89                           // 60A7  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -88(pc)                  // 60A8  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -87                           // 60A9  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -86(pc)                  // 60AA  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -85                           // 60AB  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -84(pc)                  // 60AC  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -83                           // 60AD  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -82(pc)                  // 60AE  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -81                           // 60AF  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -80(pc)                  // 60B0  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -79                           // 60B1  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -78(pc)                  // 60B2  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -77                           // 60B3  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -76(pc)                  // 60B4  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -75                           // 60B5  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -74(pc)                  // 60B6  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -73                           // 60B7  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -72(pc)                  // 60B8  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -71                           // 60B9  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -70(pc)                  // 60BA  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -69                           // 60BB  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -68(pc)                  // 60BC  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -67                           // 60BD  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -66(pc)                  // 60BE  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -65                           // 60BF  BRA.S     <label>
        b       bra_s_2

// ---- $60C0-$60FF --------------------------------------------------------
        lhau    prefetch_data, -64(pc)                  // 60C0  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -63                           // 60C1  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -62(pc)                  // 60C2  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -61                           // 60C3  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -60(pc)                  // 60C4  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -59                           // 60C5  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -58(pc)                  // 60C6  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -57                           // 60C7  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -56(pc)                  // 60C8  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -55                           // 60C9  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -54(pc)                  // 60CA  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -53                           // 60CB  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -52(pc)                  // 60CC  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -51                           // 60CD  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -50(pc)                  // 60CE  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -49                           // 60CF  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -48(pc)                  // 60D0  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -47                           // 60D1  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -46(pc)                  // 60D2  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -45                           // 60D3  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -44(pc)                  // 60D4  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -43                           // 60D5  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -42(pc)                  // 60D6  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -41                           // 60D7  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -40(pc)                  // 60D8  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -39                           // 60D9  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -38(pc)                  // 60DA  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -37                           // 60DB  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -36(pc)                  // 60DC  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -35                           // 60DD  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -34(pc)                  // 60DE  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -33                           // 60DF  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -32(pc)                  // 60E0  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -31                           // 60E1  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -30(pc)                  // 60E2  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -29                           // 60E3  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -28(pc)                  // 60E4  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -27                           // 60E5  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -26(pc)                  // 60E6  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -25                           // 60E7  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -24(pc)                  // 60E8  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -23                           // 60E9  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -22(pc)                  // 60EA  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -21                           // 60EB  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -20(pc)                  // 60EC  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -19                           // 60ED  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -18(pc)                  // 60EE  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -17                           // 60EF  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -16(pc)                  // 60F0  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -15                           // 60F1  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -14(pc)                  // 60F2  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -13                           // 60F3  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -12(pc)                  // 60F4  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -11                           // 60F5  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -10(pc)                  // 60F6  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -9                            // 60F7  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -8(pc)                   // 60F8  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -7                            // 60F9  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -6(pc)                   // 60FA  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -5                            // 60FB  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -4(pc)                   // 60FC  BRA.S     <label>
        b       bra_s
        addi    addr, pc, -3                            // 60FD  BRA.S     <label>
        b       bra_s_2
        lhau    prefetch_data, -2(pc)                   // 60FE  BRA.S     <label>
        b       bra_s
        lwz     data, 0(pc)                             // 60FF  BRA.L     <label>
        b       bra_l

// ---- $6100-$613F --------------------------------------------------------
        lhax    data, pc, prefetch_data                 // 6100  BSR.W     <label>
        b       jsr_bsr_mem
        addi    addr, pc, 1                             // 6101  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 2                             // 6102  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 3                             // 6103  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 4                             // 6104  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 5                             // 6105  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 6                             // 6106  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 7                             // 6107  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 8                             // 6108  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 9                             // 6109  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 10                            // 610A  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 11                            // 610B  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 12                            // 610C  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 13                            // 610D  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 14                            // 610E  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 15                            // 610F  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 16                            // 6110  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 17                            // 6111  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 18                            // 6112  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 19                            // 6113  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 20                            // 6114  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 21                            // 6115  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 22                            // 6116  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 23                            // 6117  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 24                            // 6118  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 25                            // 6119  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 26                            // 611A  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 27                            // 611B  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 28                            // 611C  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 29                            // 611D  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 30                            // 611E  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 31                            // 611F  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 32                            // 6120  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 33                            // 6121  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 34                            // 6122  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 35                            // 6123  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 36                            // 6124  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 37                            // 6125  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 38                            // 6126  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 39                            // 6127  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 40                            // 6128  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 41                            // 6129  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 42                            // 612A  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 43                            // 612B  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 44                            // 612C  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 45                            // 612D  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 46                            // 612E  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 47                            // 612F  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 48                            // 6130  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 49                            // 6131  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 50                            // 6132  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 51                            // 6133  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 52                            // 6134  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 53                            // 6135  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 54                            // 6136  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 55                            // 6137  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 56                            // 6138  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 57                            // 6139  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 58                            // 613A  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 59                            // 613B  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 60                            // 613C  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 61                            // 613D  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 62                            // 613E  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 63                            // 613F  BSR.S     <label>
        b       bsr_s_2

// ---- $6140-$617F --------------------------------------------------------
        addi    addr, pc, 64                            // 6140  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 65                            // 6141  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 66                            // 6142  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 67                            // 6143  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 68                            // 6144  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 69                            // 6145  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 70                            // 6146  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 71                            // 6147  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 72                            // 6148  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 73                            // 6149  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 74                            // 614A  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 75                            // 614B  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 76                            // 614C  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 77                            // 614D  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 78                            // 614E  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 79                            // 614F  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 80                            // 6150  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 81                            // 6151  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 82                            // 6152  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 83                            // 6153  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 84                            // 6154  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 85                            // 6155  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 86                            // 6156  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 87                            // 6157  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 88                            // 6158  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 89                            // 6159  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 90                            // 615A  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 91                            // 615B  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 92                            // 615C  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 93                            // 615D  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 94                            // 615E  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 95                            // 615F  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 96                            // 6160  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 97                            // 6161  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 98                            // 6162  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 99                            // 6163  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 100                           // 6164  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 101                           // 6165  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 102                           // 6166  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 103                           // 6167  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 104                           // 6168  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 105                           // 6169  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 106                           // 616A  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 107                           // 616B  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 108                           // 616C  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 109                           // 616D  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 110                           // 616E  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 111                           // 616F  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 112                           // 6170  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 113                           // 6171  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 114                           // 6172  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 115                           // 6173  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 116                           // 6174  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 117                           // 6175  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 118                           // 6176  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 119                           // 6177  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 120                           // 6178  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 121                           // 6179  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 122                           // 617A  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 123                           // 617B  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 124                           // 617C  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 125                           // 617D  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, 126                           // 617E  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, 127                           // 617F  BSR.S     <label>
        b       bsr_s_2

// ---- $6180-$61BF --------------------------------------------------------
        addi    addr, pc, -128                          // 6180  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -127                          // 6181  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -126                          // 6182  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -125                          // 6183  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -124                          // 6184  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -123                          // 6185  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -122                          // 6186  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -121                          // 6187  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -120                          // 6188  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -119                          // 6189  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -118                          // 618A  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -117                          // 618B  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -116                          // 618C  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -115                          // 618D  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -114                          // 618E  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -113                          // 618F  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -112                          // 6190  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -111                          // 6191  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -110                          // 6192  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -109                          // 6193  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -108                          // 6194  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -107                          // 6195  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -106                          // 6196  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -105                          // 6197  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -104                          // 6198  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -103                          // 6199  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -102                          // 619A  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -101                          // 619B  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -100                          // 619C  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -99                           // 619D  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -98                           // 619E  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -97                           // 619F  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -96                           // 61A0  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -95                           // 61A1  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -94                           // 61A2  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -93                           // 61A3  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -92                           // 61A4  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -91                           // 61A5  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -90                           // 61A6  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -89                           // 61A7  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -88                           // 61A8  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -87                           // 61A9  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -86                           // 61AA  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -85                           // 61AB  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -84                           // 61AC  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -83                           // 61AD  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -82                           // 61AE  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -81                           // 61AF  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -80                           // 61B0  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -79                           // 61B1  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -78                           // 61B2  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -77                           // 61B3  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -76                           // 61B4  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -75                           // 61B5  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -74                           // 61B6  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -73                           // 61B7  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -72                           // 61B8  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -71                           // 61B9  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -70                           // 61BA  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -69                           // 61BB  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -68                           // 61BC  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -67                           // 61BD  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -66                           // 61BE  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -65                           // 61BF  BSR.S     <label>
        b       bsr_s_2

// ---- $61C0-$61FF --------------------------------------------------------
        addi    addr, pc, -64                           // 61C0  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -63                           // 61C1  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -62                           // 61C2  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -61                           // 61C3  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -60                           // 61C4  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -59                           // 61C5  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -58                           // 61C6  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -57                           // 61C7  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -56                           // 61C8  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -55                           // 61C9  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -54                           // 61CA  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -53                           // 61CB  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -52                           // 61CC  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -51                           // 61CD  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -50                           // 61CE  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -49                           // 61CF  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -48                           // 61D0  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -47                           // 61D1  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -46                           // 61D2  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -45                           // 61D3  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -44                           // 61D4  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -43                           // 61D5  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -42                           // 61D6  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -41                           // 61D7  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -40                           // 61D8  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -39                           // 61D9  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -38                           // 61DA  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -37                           // 61DB  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -36                           // 61DC  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -35                           // 61DD  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -34                           // 61DE  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -33                           // 61DF  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -32                           // 61E0  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -31                           // 61E1  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -30                           // 61E2  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -29                           // 61E3  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -28                           // 61E4  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -27                           // 61E5  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -26                           // 61E6  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -25                           // 61E7  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -24                           // 61E8  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -23                           // 61E9  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -22                           // 61EA  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -21                           // 61EB  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -20                           // 61EC  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -19                           // 61ED  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -18                           // 61EE  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -17                           // 61EF  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -16                           // 61F0  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -15                           // 61F1  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -14                           // 61F2  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -13                           // 61F3  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -12                           // 61F4  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -11                           // 61F5  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -10                           // 61F6  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -9                            // 61F7  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -8                            // 61F8  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -7                            // 61F9  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -6                            // 61FA  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -5                            // 61FB  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -4                            // 61FC  BSR.S     <label>
        b       bsr_s
        addi    addr, pc, -3                            // 61FD  BSR.S     <label>
        b       bsr_s_2
        addi    addr, pc, -2                            // 61FE  BSR.S     <label>
        b       bsr_s
        lwz     data, 0(pc)                             // 61FF  BSR.L     <label>
        b       bsr_l

// ---- $6200-$623F --------------------------------------------------------
        lha     immed_data, 2(pc)                       // 6200  BHI.W     <label>
        b       bhi_w
        addi    addr, pc, 1                             // 6201  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 2                             // 6202  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 3                             // 6203  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 4                             // 6204  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 5                             // 6205  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 6                             // 6206  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 7                             // 6207  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 8                             // 6208  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 9                             // 6209  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 10                            // 620A  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 11                            // 620B  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 12                            // 620C  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 13                            // 620D  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 14                            // 620E  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 15                            // 620F  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 16                            // 6210  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 17                            // 6211  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 18                            // 6212  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 19                            // 6213  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 20                            // 6214  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 21                            // 6215  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 22                            // 6216  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 23                            // 6217  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 24                            // 6218  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 25                            // 6219  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 26                            // 621A  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 27                            // 621B  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 28                            // 621C  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 29                            // 621D  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 30                            // 621E  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 31                            // 621F  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 32                            // 6220  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 33                            // 6221  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 34                            // 6222  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 35                            // 6223  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 36                            // 6224  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 37                            // 6225  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 38                            // 6226  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 39                            // 6227  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 40                            // 6228  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 41                            // 6229  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 42                            // 622A  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 43                            // 622B  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 44                            // 622C  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 45                            // 622D  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 46                            // 622E  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 47                            // 622F  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 48                            // 6230  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 49                            // 6231  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 50                            // 6232  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 51                            // 6233  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 52                            // 6234  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 53                            // 6235  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 54                            // 6236  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 55                            // 6237  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 56                            // 6238  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 57                            // 6239  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 58                            // 623A  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 59                            // 623B  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 60                            // 623C  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 61                            // 623D  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 62                            // 623E  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 63                            // 623F  BHI.S     <label>
        b       bcc_s_2

// ---- $6240-$627F --------------------------------------------------------
        addi    addr, pc, 64                            // 6240  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 65                            // 6241  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 66                            // 6242  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 67                            // 6243  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 68                            // 6244  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 69                            // 6245  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 70                            // 6246  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 71                            // 6247  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 72                            // 6248  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 73                            // 6249  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 74                            // 624A  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 75                            // 624B  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 76                            // 624C  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 77                            // 624D  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 78                            // 624E  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 79                            // 624F  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 80                            // 6250  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 81                            // 6251  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 82                            // 6252  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 83                            // 6253  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 84                            // 6254  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 85                            // 6255  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 86                            // 6256  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 87                            // 6257  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 88                            // 6258  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 89                            // 6259  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 90                            // 625A  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 91                            // 625B  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 92                            // 625C  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 93                            // 625D  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 94                            // 625E  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 95                            // 625F  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 96                            // 6260  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 97                            // 6261  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 98                            // 6262  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 99                            // 6263  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 100                           // 6264  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 101                           // 6265  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 102                           // 6266  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 103                           // 6267  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 104                           // 6268  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 105                           // 6269  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 106                           // 626A  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 107                           // 626B  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 108                           // 626C  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 109                           // 626D  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 110                           // 626E  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 111                           // 626F  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 112                           // 6270  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 113                           // 6271  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 114                           // 6272  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 115                           // 6273  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 116                           // 6274  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 117                           // 6275  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 118                           // 6276  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 119                           // 6277  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 120                           // 6278  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 121                           // 6279  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 122                           // 627A  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 123                           // 627B  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 124                           // 627C  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 125                           // 627D  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 126                           // 627E  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, 127                           // 627F  BHI.S     <label>
        b       bcc_s_2

// ---- $6280-$62BF --------------------------------------------------------
        addi    addr, pc, -128                          // 6280  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -127                          // 6281  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -126                          // 6282  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -125                          // 6283  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -124                          // 6284  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -123                          // 6285  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -122                          // 6286  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -121                          // 6287  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -120                          // 6288  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -119                          // 6289  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -118                          // 628A  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -117                          // 628B  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -116                          // 628C  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -115                          // 628D  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -114                          // 628E  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -113                          // 628F  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -112                          // 6290  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -111                          // 6291  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -110                          // 6292  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -109                          // 6293  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -108                          // 6294  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -107                          // 6295  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -106                          // 6296  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -105                          // 6297  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -104                          // 6298  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -103                          // 6299  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -102                          // 629A  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -101                          // 629B  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -100                          // 629C  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -99                           // 629D  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -98                           // 629E  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -97                           // 629F  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -96                           // 62A0  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -95                           // 62A1  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -94                           // 62A2  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -93                           // 62A3  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -92                           // 62A4  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -91                           // 62A5  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -90                           // 62A6  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -89                           // 62A7  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -88                           // 62A8  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -87                           // 62A9  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -86                           // 62AA  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -85                           // 62AB  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -84                           // 62AC  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -83                           // 62AD  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -82                           // 62AE  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -81                           // 62AF  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -80                           // 62B0  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -79                           // 62B1  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -78                           // 62B2  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -77                           // 62B3  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -76                           // 62B4  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -75                           // 62B5  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -74                           // 62B6  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -73                           // 62B7  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -72                           // 62B8  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -71                           // 62B9  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -70                           // 62BA  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -69                           // 62BB  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -68                           // 62BC  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -67                           // 62BD  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -66                           // 62BE  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -65                           // 62BF  BHI.S     <label>
        b       bcc_s_2

// ---- $62C0-$62FF --------------------------------------------------------
        addi    addr, pc, -64                           // 62C0  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -63                           // 62C1  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -62                           // 62C2  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -61                           // 62C3  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -60                           // 62C4  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -59                           // 62C5  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -58                           // 62C6  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -57                           // 62C7  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -56                           // 62C8  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -55                           // 62C9  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -54                           // 62CA  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -53                           // 62CB  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -52                           // 62CC  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -51                           // 62CD  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -50                           // 62CE  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -49                           // 62CF  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -48                           // 62D0  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -47                           // 62D1  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -46                           // 62D2  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -45                           // 62D3  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -44                           // 62D4  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -43                           // 62D5  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -42                           // 62D6  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -41                           // 62D7  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -40                           // 62D8  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -39                           // 62D9  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -38                           // 62DA  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -37                           // 62DB  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -36                           // 62DC  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -35                           // 62DD  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -34                           // 62DE  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -33                           // 62DF  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -32                           // 62E0  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -31                           // 62E1  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -30                           // 62E2  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -29                           // 62E3  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -28                           // 62E4  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -27                           // 62E5  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -26                           // 62E6  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -25                           // 62E7  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -24                           // 62E8  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -23                           // 62E9  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -22                           // 62EA  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -21                           // 62EB  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -20                           // 62EC  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -19                           // 62ED  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -18                           // 62EE  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -17                           // 62EF  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -16                           // 62F0  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -15                           // 62F1  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -14                           // 62F2  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -13                           // 62F3  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -12                           // 62F4  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -11                           // 62F5  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -10                           // 62F6  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -9                            // 62F7  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -8                            // 62F8  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -7                            // 62F9  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -6                            // 62FA  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -5                            // 62FB  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -4                            // 62FC  BHI.S     <label>
        b       bhi_s
        addi    addr, pc, -3                            // 62FD  BHI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -2                            // 62FE  BHI.S     <label>
        b       bhi_s
        lha     immed_data, 4(pc)                       // 62FF  BHI.L     <label>
        b       bhi_l

// ---- $6300-$633F --------------------------------------------------------
        lha     immed_data, 2(pc)                       // 6300  BLS.W     <label>
        b       bls_w
        addi    addr, pc, 1                             // 6301  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 2                             // 6302  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 3                             // 6303  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 4                             // 6304  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 5                             // 6305  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 6                             // 6306  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 7                             // 6307  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 8                             // 6308  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 9                             // 6309  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 10                            // 630A  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 11                            // 630B  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 12                            // 630C  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 13                            // 630D  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 14                            // 630E  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 15                            // 630F  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 16                            // 6310  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 17                            // 6311  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 18                            // 6312  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 19                            // 6313  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 20                            // 6314  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 21                            // 6315  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 22                            // 6316  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 23                            // 6317  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 24                            // 6318  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 25                            // 6319  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 26                            // 631A  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 27                            // 631B  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 28                            // 631C  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 29                            // 631D  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 30                            // 631E  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 31                            // 631F  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 32                            // 6320  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 33                            // 6321  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 34                            // 6322  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 35                            // 6323  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 36                            // 6324  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 37                            // 6325  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 38                            // 6326  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 39                            // 6327  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 40                            // 6328  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 41                            // 6329  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 42                            // 632A  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 43                            // 632B  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 44                            // 632C  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 45                            // 632D  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 46                            // 632E  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 47                            // 632F  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 48                            // 6330  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 49                            // 6331  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 50                            // 6332  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 51                            // 6333  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 52                            // 6334  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 53                            // 6335  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 54                            // 6336  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 55                            // 6337  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 56                            // 6338  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 57                            // 6339  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 58                            // 633A  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 59                            // 633B  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 60                            // 633C  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 61                            // 633D  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 62                            // 633E  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 63                            // 633F  BLS.S     <label>
        b       bcc_s_2

// ---- $6340-$637F --------------------------------------------------------
        addi    addr, pc, 64                            // 6340  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 65                            // 6341  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 66                            // 6342  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 67                            // 6343  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 68                            // 6344  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 69                            // 6345  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 70                            // 6346  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 71                            // 6347  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 72                            // 6348  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 73                            // 6349  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 74                            // 634A  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 75                            // 634B  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 76                            // 634C  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 77                            // 634D  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 78                            // 634E  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 79                            // 634F  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 80                            // 6350  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 81                            // 6351  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 82                            // 6352  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 83                            // 6353  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 84                            // 6354  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 85                            // 6355  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 86                            // 6356  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 87                            // 6357  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 88                            // 6358  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 89                            // 6359  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 90                            // 635A  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 91                            // 635B  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 92                            // 635C  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 93                            // 635D  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 94                            // 635E  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 95                            // 635F  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 96                            // 6360  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 97                            // 6361  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 98                            // 6362  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 99                            // 6363  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 100                           // 6364  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 101                           // 6365  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 102                           // 6366  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 103                           // 6367  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 104                           // 6368  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 105                           // 6369  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 106                           // 636A  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 107                           // 636B  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 108                           // 636C  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 109                           // 636D  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 110                           // 636E  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 111                           // 636F  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 112                           // 6370  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 113                           // 6371  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 114                           // 6372  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 115                           // 6373  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 116                           // 6374  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 117                           // 6375  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 118                           // 6376  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 119                           // 6377  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 120                           // 6378  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 121                           // 6379  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 122                           // 637A  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 123                           // 637B  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 124                           // 637C  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 125                           // 637D  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 126                           // 637E  BLS.S     <label>
        b       bls_s
        addi    addr, pc, 127                           // 637F  BLS.S     <label>
        b       bcc_s_2

// ---- $6380-$63BF --------------------------------------------------------
        addi    addr, pc, -128                          // 6380  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -127                          // 6381  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -126                          // 6382  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -125                          // 6383  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -124                          // 6384  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -123                          // 6385  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -122                          // 6386  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -121                          // 6387  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -120                          // 6388  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -119                          // 6389  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -118                          // 638A  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -117                          // 638B  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -116                          // 638C  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -115                          // 638D  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -114                          // 638E  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -113                          // 638F  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -112                          // 6390  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -111                          // 6391  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -110                          // 6392  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -109                          // 6393  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -108                          // 6394  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -107                          // 6395  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -106                          // 6396  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -105                          // 6397  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -104                          // 6398  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -103                          // 6399  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -102                          // 639A  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -101                          // 639B  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -100                          // 639C  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -99                           // 639D  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -98                           // 639E  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -97                           // 639F  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -96                           // 63A0  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -95                           // 63A1  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -94                           // 63A2  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -93                           // 63A3  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -92                           // 63A4  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -91                           // 63A5  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -90                           // 63A6  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -89                           // 63A7  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -88                           // 63A8  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -87                           // 63A9  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -86                           // 63AA  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -85                           // 63AB  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -84                           // 63AC  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -83                           // 63AD  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -82                           // 63AE  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -81                           // 63AF  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -80                           // 63B0  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -79                           // 63B1  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -78                           // 63B2  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -77                           // 63B3  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -76                           // 63B4  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -75                           // 63B5  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -74                           // 63B6  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -73                           // 63B7  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -72                           // 63B8  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -71                           // 63B9  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -70                           // 63BA  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -69                           // 63BB  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -68                           // 63BC  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -67                           // 63BD  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -66                           // 63BE  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -65                           // 63BF  BLS.S     <label>
        b       bcc_s_2

// ---- $63C0-$63FF --------------------------------------------------------
        addi    addr, pc, -64                           // 63C0  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -63                           // 63C1  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -62                           // 63C2  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -61                           // 63C3  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -60                           // 63C4  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -59                           // 63C5  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -58                           // 63C6  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -57                           // 63C7  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -56                           // 63C8  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -55                           // 63C9  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -54                           // 63CA  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -53                           // 63CB  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -52                           // 63CC  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -51                           // 63CD  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -50                           // 63CE  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -49                           // 63CF  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -48                           // 63D0  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -47                           // 63D1  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -46                           // 63D2  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -45                           // 63D3  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -44                           // 63D4  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -43                           // 63D5  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -42                           // 63D6  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -41                           // 63D7  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -40                           // 63D8  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -39                           // 63D9  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -38                           // 63DA  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -37                           // 63DB  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -36                           // 63DC  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -35                           // 63DD  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -34                           // 63DE  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -33                           // 63DF  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -32                           // 63E0  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -31                           // 63E1  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -30                           // 63E2  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -29                           // 63E3  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -28                           // 63E4  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -27                           // 63E5  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -26                           // 63E6  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -25                           // 63E7  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -24                           // 63E8  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -23                           // 63E9  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -22                           // 63EA  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -21                           // 63EB  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -20                           // 63EC  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -19                           // 63ED  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -18                           // 63EE  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -17                           // 63EF  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -16                           // 63F0  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -15                           // 63F1  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -14                           // 63F2  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -13                           // 63F3  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -12                           // 63F4  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -11                           // 63F5  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -10                           // 63F6  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -9                            // 63F7  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -8                            // 63F8  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -7                            // 63F9  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -6                            // 63FA  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -5                            // 63FB  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -4                            // 63FC  BLS.S     <label>
        b       bls_s
        addi    addr, pc, -3                            // 63FD  BLS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -2                            // 63FE  BLS.S     <label>
        b       bls_s
        lha     immed_data, 4(pc)                       // 63FF  BLS.L     <label>
        b       bls_l

// ---- $6400-$643F --------------------------------------------------------
        lha     immed_data, 2(pc)                       // 6400  BCC.W     <label>
        b       bcc_w
        addi    addr, pc, 1                             // 6401  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 2                             // 6402  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 3                             // 6403  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 4                             // 6404  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 5                             // 6405  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 6                             // 6406  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 7                             // 6407  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 8                             // 6408  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 9                             // 6409  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 10                            // 640A  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 11                            // 640B  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 12                            // 640C  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 13                            // 640D  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 14                            // 640E  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 15                            // 640F  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 16                            // 6410  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 17                            // 6411  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 18                            // 6412  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 19                            // 6413  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 20                            // 6414  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 21                            // 6415  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 22                            // 6416  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 23                            // 6417  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 24                            // 6418  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 25                            // 6419  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 26                            // 641A  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 27                            // 641B  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 28                            // 641C  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 29                            // 641D  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 30                            // 641E  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 31                            // 641F  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 32                            // 6420  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 33                            // 6421  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 34                            // 6422  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 35                            // 6423  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 36                            // 6424  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 37                            // 6425  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 38                            // 6426  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 39                            // 6427  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 40                            // 6428  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 41                            // 6429  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 42                            // 642A  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 43                            // 642B  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 44                            // 642C  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 45                            // 642D  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 46                            // 642E  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 47                            // 642F  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 48                            // 6430  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 49                            // 6431  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 50                            // 6432  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 51                            // 6433  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 52                            // 6434  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 53                            // 6435  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 54                            // 6436  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 55                            // 6437  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 56                            // 6438  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 57                            // 6439  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 58                            // 643A  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 59                            // 643B  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 60                            // 643C  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 61                            // 643D  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 62                            // 643E  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 63                            // 643F  BCC.S     <label>
        b       bcc_s_2

// ---- $6440-$647F --------------------------------------------------------
        addi    addr, pc, 64                            // 6440  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 65                            // 6441  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 66                            // 6442  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 67                            // 6443  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 68                            // 6444  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 69                            // 6445  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 70                            // 6446  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 71                            // 6447  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 72                            // 6448  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 73                            // 6449  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 74                            // 644A  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 75                            // 644B  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 76                            // 644C  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 77                            // 644D  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 78                            // 644E  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 79                            // 644F  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 80                            // 6450  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 81                            // 6451  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 82                            // 6452  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 83                            // 6453  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 84                            // 6454  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 85                            // 6455  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 86                            // 6456  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 87                            // 6457  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 88                            // 6458  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 89                            // 6459  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 90                            // 645A  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 91                            // 645B  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 92                            // 645C  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 93                            // 645D  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 94                            // 645E  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 95                            // 645F  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 96                            // 6460  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 97                            // 6461  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 98                            // 6462  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 99                            // 6463  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 100                           // 6464  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 101                           // 6465  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 102                           // 6466  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 103                           // 6467  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 104                           // 6468  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 105                           // 6469  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 106                           // 646A  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 107                           // 646B  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 108                           // 646C  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 109                           // 646D  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 110                           // 646E  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 111                           // 646F  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 112                           // 6470  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 113                           // 6471  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 114                           // 6472  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 115                           // 6473  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 116                           // 6474  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 117                           // 6475  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 118                           // 6476  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 119                           // 6477  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 120                           // 6478  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 121                           // 6479  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 122                           // 647A  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 123                           // 647B  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 124                           // 647C  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 125                           // 647D  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 126                           // 647E  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, 127                           // 647F  BCC.S     <label>
        b       bcc_s_2

// ---- $6480-$64BF --------------------------------------------------------
        addi    addr, pc, -128                          // 6480  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -127                          // 6481  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -126                          // 6482  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -125                          // 6483  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -124                          // 6484  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -123                          // 6485  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -122                          // 6486  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -121                          // 6487  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -120                          // 6488  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -119                          // 6489  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -118                          // 648A  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -117                          // 648B  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -116                          // 648C  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -115                          // 648D  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -114                          // 648E  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -113                          // 648F  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -112                          // 6490  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -111                          // 6491  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -110                          // 6492  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -109                          // 6493  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -108                          // 6494  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -107                          // 6495  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -106                          // 6496  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -105                          // 6497  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -104                          // 6498  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -103                          // 6499  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -102                          // 649A  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -101                          // 649B  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -100                          // 649C  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -99                           // 649D  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -98                           // 649E  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -97                           // 649F  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -96                           // 64A0  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -95                           // 64A1  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -94                           // 64A2  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -93                           // 64A3  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -92                           // 64A4  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -91                           // 64A5  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -90                           // 64A6  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -89                           // 64A7  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -88                           // 64A8  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -87                           // 64A9  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -86                           // 64AA  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -85                           // 64AB  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -84                           // 64AC  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -83                           // 64AD  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -82                           // 64AE  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -81                           // 64AF  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -80                           // 64B0  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -79                           // 64B1  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -78                           // 64B2  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -77                           // 64B3  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -76                           // 64B4  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -75                           // 64B5  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -74                           // 64B6  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -73                           // 64B7  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -72                           // 64B8  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -71                           // 64B9  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -70                           // 64BA  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -69                           // 64BB  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -68                           // 64BC  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -67                           // 64BD  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -66                           // 64BE  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -65                           // 64BF  BCC.S     <label>
        b       bcc_s_2

// ---- $64C0-$64FF --------------------------------------------------------
        addi    addr, pc, -64                           // 64C0  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -63                           // 64C1  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -62                           // 64C2  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -61                           // 64C3  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -60                           // 64C4  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -59                           // 64C5  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -58                           // 64C6  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -57                           // 64C7  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -56                           // 64C8  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -55                           // 64C9  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -54                           // 64CA  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -53                           // 64CB  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -52                           // 64CC  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -51                           // 64CD  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -50                           // 64CE  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -49                           // 64CF  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -48                           // 64D0  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -47                           // 64D1  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -46                           // 64D2  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -45                           // 64D3  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -44                           // 64D4  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -43                           // 64D5  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -42                           // 64D6  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -41                           // 64D7  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -40                           // 64D8  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -39                           // 64D9  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -38                           // 64DA  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -37                           // 64DB  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -36                           // 64DC  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -35                           // 64DD  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -34                           // 64DE  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -33                           // 64DF  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -32                           // 64E0  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -31                           // 64E1  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -30                           // 64E2  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -29                           // 64E3  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -28                           // 64E4  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -27                           // 64E5  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -26                           // 64E6  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -25                           // 64E7  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -24                           // 64E8  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -23                           // 64E9  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -22                           // 64EA  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -21                           // 64EB  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -20                           // 64EC  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -19                           // 64ED  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -18                           // 64EE  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -17                           // 64EF  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -16                           // 64F0  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -15                           // 64F1  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -14                           // 64F2  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -13                           // 64F3  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -12                           // 64F4  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -11                           // 64F5  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -10                           // 64F6  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -9                            // 64F7  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -8                            // 64F8  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -7                            // 64F9  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -6                            // 64FA  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -5                            // 64FB  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -4                            // 64FC  BCC.S     <label>
        b       bcc_s
        addi    addr, pc, -3                            // 64FD  BCC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -2                            // 64FE  BCC.S     <label>
        b       bcc_s
        lha     immed_data, 4(pc)                       // 64FF  BCC.L     <label>
        b       bcc_l

// ---- $6500-$653F --------------------------------------------------------
        lha     immed_data, 2(pc)                       // 6500  BCS.W     <label>
        b       bcs_w
        addi    addr, pc, 1                             // 6501  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 2                             // 6502  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 3                             // 6503  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 4                             // 6504  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 5                             // 6505  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 6                             // 6506  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 7                             // 6507  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 8                             // 6508  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 9                             // 6509  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 10                            // 650A  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 11                            // 650B  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 12                            // 650C  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 13                            // 650D  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 14                            // 650E  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 15                            // 650F  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 16                            // 6510  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 17                            // 6511  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 18                            // 6512  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 19                            // 6513  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 20                            // 6514  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 21                            // 6515  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 22                            // 6516  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 23                            // 6517  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 24                            // 6518  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 25                            // 6519  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 26                            // 651A  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 27                            // 651B  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 28                            // 651C  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 29                            // 651D  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 30                            // 651E  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 31                            // 651F  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 32                            // 6520  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 33                            // 6521  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 34                            // 6522  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 35                            // 6523  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 36                            // 6524  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 37                            // 6525  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 38                            // 6526  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 39                            // 6527  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 40                            // 6528  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 41                            // 6529  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 42                            // 652A  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 43                            // 652B  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 44                            // 652C  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 45                            // 652D  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 46                            // 652E  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 47                            // 652F  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 48                            // 6530  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 49                            // 6531  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 50                            // 6532  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 51                            // 6533  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 52                            // 6534  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 53                            // 6535  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 54                            // 6536  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 55                            // 6537  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 56                            // 6538  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 57                            // 6539  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 58                            // 653A  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 59                            // 653B  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 60                            // 653C  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 61                            // 653D  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 62                            // 653E  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 63                            // 653F  BCS.S     <label>
        b       bcc_s_2

// ---- $6540-$657F --------------------------------------------------------
        addi    addr, pc, 64                            // 6540  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 65                            // 6541  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 66                            // 6542  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 67                            // 6543  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 68                            // 6544  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 69                            // 6545  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 70                            // 6546  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 71                            // 6547  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 72                            // 6548  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 73                            // 6549  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 74                            // 654A  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 75                            // 654B  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 76                            // 654C  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 77                            // 654D  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 78                            // 654E  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 79                            // 654F  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 80                            // 6550  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 81                            // 6551  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 82                            // 6552  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 83                            // 6553  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 84                            // 6554  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 85                            // 6555  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 86                            // 6556  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 87                            // 6557  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 88                            // 6558  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 89                            // 6559  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 90                            // 655A  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 91                            // 655B  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 92                            // 655C  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 93                            // 655D  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 94                            // 655E  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 95                            // 655F  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 96                            // 6560  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 97                            // 6561  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 98                            // 6562  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 99                            // 6563  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 100                           // 6564  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 101                           // 6565  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 102                           // 6566  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 103                           // 6567  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 104                           // 6568  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 105                           // 6569  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 106                           // 656A  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 107                           // 656B  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 108                           // 656C  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 109                           // 656D  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 110                           // 656E  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 111                           // 656F  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 112                           // 6570  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 113                           // 6571  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 114                           // 6572  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 115                           // 6573  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 116                           // 6574  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 117                           // 6575  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 118                           // 6576  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 119                           // 6577  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 120                           // 6578  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 121                           // 6579  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 122                           // 657A  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 123                           // 657B  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 124                           // 657C  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 125                           // 657D  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 126                           // 657E  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, 127                           // 657F  BCS.S     <label>
        b       bcc_s_2

// ---- $6580-$65BF --------------------------------------------------------
        addi    addr, pc, -128                          // 6580  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -127                          // 6581  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -126                          // 6582  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -125                          // 6583  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -124                          // 6584  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -123                          // 6585  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -122                          // 6586  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -121                          // 6587  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -120                          // 6588  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -119                          // 6589  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -118                          // 658A  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -117                          // 658B  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -116                          // 658C  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -115                          // 658D  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -114                          // 658E  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -113                          // 658F  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -112                          // 6590  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -111                          // 6591  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -110                          // 6592  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -109                          // 6593  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -108                          // 6594  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -107                          // 6595  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -106                          // 6596  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -105                          // 6597  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -104                          // 6598  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -103                          // 6599  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -102                          // 659A  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -101                          // 659B  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -100                          // 659C  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -99                           // 659D  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -98                           // 659E  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -97                           // 659F  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -96                           // 65A0  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -95                           // 65A1  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -94                           // 65A2  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -93                           // 65A3  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -92                           // 65A4  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -91                           // 65A5  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -90                           // 65A6  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -89                           // 65A7  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -88                           // 65A8  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -87                           // 65A9  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -86                           // 65AA  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -85                           // 65AB  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -84                           // 65AC  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -83                           // 65AD  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -82                           // 65AE  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -81                           // 65AF  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -80                           // 65B0  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -79                           // 65B1  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -78                           // 65B2  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -77                           // 65B3  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -76                           // 65B4  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -75                           // 65B5  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -74                           // 65B6  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -73                           // 65B7  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -72                           // 65B8  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -71                           // 65B9  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -70                           // 65BA  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -69                           // 65BB  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -68                           // 65BC  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -67                           // 65BD  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -66                           // 65BE  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -65                           // 65BF  BCS.S     <label>
        b       bcc_s_2

// ---- $65C0-$65FF --------------------------------------------------------
        addi    addr, pc, -64                           // 65C0  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -63                           // 65C1  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -62                           // 65C2  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -61                           // 65C3  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -60                           // 65C4  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -59                           // 65C5  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -58                           // 65C6  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -57                           // 65C7  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -56                           // 65C8  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -55                           // 65C9  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -54                           // 65CA  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -53                           // 65CB  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -52                           // 65CC  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -51                           // 65CD  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -50                           // 65CE  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -49                           // 65CF  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -48                           // 65D0  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -47                           // 65D1  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -46                           // 65D2  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -45                           // 65D3  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -44                           // 65D4  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -43                           // 65D5  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -42                           // 65D6  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -41                           // 65D7  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -40                           // 65D8  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -39                           // 65D9  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -38                           // 65DA  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -37                           // 65DB  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -36                           // 65DC  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -35                           // 65DD  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -34                           // 65DE  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -33                           // 65DF  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -32                           // 65E0  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -31                           // 65E1  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -30                           // 65E2  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -29                           // 65E3  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -28                           // 65E4  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -27                           // 65E5  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -26                           // 65E6  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -25                           // 65E7  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -24                           // 65E8  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -23                           // 65E9  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -22                           // 65EA  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -21                           // 65EB  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -20                           // 65EC  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -19                           // 65ED  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -18                           // 65EE  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -17                           // 65EF  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -16                           // 65F0  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -15                           // 65F1  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -14                           // 65F2  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -13                           // 65F3  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -12                           // 65F4  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -11                           // 65F5  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -10                           // 65F6  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -9                            // 65F7  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -8                            // 65F8  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -7                            // 65F9  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -6                            // 65FA  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -5                            // 65FB  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -4                            // 65FC  BCS.S     <label>
        b       bcs_s
        addi    addr, pc, -3                            // 65FD  BCS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -2                            // 65FE  BCS.S     <label>
        b       bcs_s
        lha     immed_data, 4(pc)                       // 65FF  BCS.L     <label>
        b       bcs_l

// ---- $6600-$663F --------------------------------------------------------
        lha     immed_data, 2(pc)                       // 6600  BNE.W     <label>
        b       bne_w
        addi    addr, pc, 1                             // 6601  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 2                             // 6602  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 3                             // 6603  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 4                             // 6604  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 5                             // 6605  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 6                             // 6606  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 7                             // 6607  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 8                             // 6608  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 9                             // 6609  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 10                            // 660A  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 11                            // 660B  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 12                            // 660C  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 13                            // 660D  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 14                            // 660E  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 15                            // 660F  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 16                            // 6610  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 17                            // 6611  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 18                            // 6612  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 19                            // 6613  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 20                            // 6614  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 21                            // 6615  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 22                            // 6616  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 23                            // 6617  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 24                            // 6618  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 25                            // 6619  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 26                            // 661A  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 27                            // 661B  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 28                            // 661C  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 29                            // 661D  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 30                            // 661E  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 31                            // 661F  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 32                            // 6620  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 33                            // 6621  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 34                            // 6622  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 35                            // 6623  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 36                            // 6624  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 37                            // 6625  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 38                            // 6626  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 39                            // 6627  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 40                            // 6628  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 41                            // 6629  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 42                            // 662A  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 43                            // 662B  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 44                            // 662C  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 45                            // 662D  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 46                            // 662E  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 47                            // 662F  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 48                            // 6630  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 49                            // 6631  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 50                            // 6632  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 51                            // 6633  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 52                            // 6634  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 53                            // 6635  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 54                            // 6636  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 55                            // 6637  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 56                            // 6638  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 57                            // 6639  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 58                            // 663A  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 59                            // 663B  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 60                            // 663C  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 61                            // 663D  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 62                            // 663E  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 63                            // 663F  BNE.S     <label>
        b       bcc_s_2

// ---- $6640-$667F --------------------------------------------------------
        addi    addr, pc, 64                            // 6640  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 65                            // 6641  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 66                            // 6642  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 67                            // 6643  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 68                            // 6644  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 69                            // 6645  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 70                            // 6646  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 71                            // 6647  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 72                            // 6648  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 73                            // 6649  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 74                            // 664A  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 75                            // 664B  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 76                            // 664C  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 77                            // 664D  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 78                            // 664E  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 79                            // 664F  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 80                            // 6650  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 81                            // 6651  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 82                            // 6652  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 83                            // 6653  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 84                            // 6654  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 85                            // 6655  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 86                            // 6656  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 87                            // 6657  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 88                            // 6658  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 89                            // 6659  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 90                            // 665A  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 91                            // 665B  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 92                            // 665C  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 93                            // 665D  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 94                            // 665E  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 95                            // 665F  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 96                            // 6660  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 97                            // 6661  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 98                            // 6662  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 99                            // 6663  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 100                           // 6664  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 101                           // 6665  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 102                           // 6666  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 103                           // 6667  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 104                           // 6668  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 105                           // 6669  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 106                           // 666A  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 107                           // 666B  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 108                           // 666C  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 109                           // 666D  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 110                           // 666E  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 111                           // 666F  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 112                           // 6670  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 113                           // 6671  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 114                           // 6672  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 115                           // 6673  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 116                           // 6674  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 117                           // 6675  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 118                           // 6676  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 119                           // 6677  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 120                           // 6678  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 121                           // 6679  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 122                           // 667A  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 123                           // 667B  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 124                           // 667C  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 125                           // 667D  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 126                           // 667E  BNE.S     <label>
        b       bne_s
        addi    addr, pc, 127                           // 667F  BNE.S     <label>
        b       bcc_s_2

// ---- $6680-$66BF --------------------------------------------------------
        addi    addr, pc, -128                          // 6680  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -127                          // 6681  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -126                          // 6682  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -125                          // 6683  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -124                          // 6684  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -123                          // 6685  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -122                          // 6686  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -121                          // 6687  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -120                          // 6688  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -119                          // 6689  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -118                          // 668A  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -117                          // 668B  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -116                          // 668C  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -115                          // 668D  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -114                          // 668E  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -113                          // 668F  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -112                          // 6690  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -111                          // 6691  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -110                          // 6692  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -109                          // 6693  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -108                          // 6694  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -107                          // 6695  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -106                          // 6696  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -105                          // 6697  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -104                          // 6698  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -103                          // 6699  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -102                          // 669A  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -101                          // 669B  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -100                          // 669C  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -99                           // 669D  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -98                           // 669E  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -97                           // 669F  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -96                           // 66A0  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -95                           // 66A1  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -94                           // 66A2  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -93                           // 66A3  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -92                           // 66A4  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -91                           // 66A5  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -90                           // 66A6  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -89                           // 66A7  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -88                           // 66A8  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -87                           // 66A9  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -86                           // 66AA  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -85                           // 66AB  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -84                           // 66AC  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -83                           // 66AD  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -82                           // 66AE  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -81                           // 66AF  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -80                           // 66B0  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -79                           // 66B1  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -78                           // 66B2  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -77                           // 66B3  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -76                           // 66B4  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -75                           // 66B5  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -74                           // 66B6  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -73                           // 66B7  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -72                           // 66B8  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -71                           // 66B9  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -70                           // 66BA  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -69                           // 66BB  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -68                           // 66BC  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -67                           // 66BD  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -66                           // 66BE  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -65                           // 66BF  BNE.S     <label>
        b       bcc_s_2

// ---- $66C0-$66FF --------------------------------------------------------
        addi    addr, pc, -64                           // 66C0  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -63                           // 66C1  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -62                           // 66C2  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -61                           // 66C3  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -60                           // 66C4  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -59                           // 66C5  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -58                           // 66C6  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -57                           // 66C7  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -56                           // 66C8  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -55                           // 66C9  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -54                           // 66CA  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -53                           // 66CB  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -52                           // 66CC  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -51                           // 66CD  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -50                           // 66CE  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -49                           // 66CF  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -48                           // 66D0  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -47                           // 66D1  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -46                           // 66D2  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -45                           // 66D3  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -44                           // 66D4  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -43                           // 66D5  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -42                           // 66D6  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -41                           // 66D7  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -40                           // 66D8  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -39                           // 66D9  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -38                           // 66DA  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -37                           // 66DB  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -36                           // 66DC  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -35                           // 66DD  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -34                           // 66DE  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -33                           // 66DF  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -32                           // 66E0  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -31                           // 66E1  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -30                           // 66E2  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -29                           // 66E3  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -28                           // 66E4  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -27                           // 66E5  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -26                           // 66E6  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -25                           // 66E7  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -24                           // 66E8  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -23                           // 66E9  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -22                           // 66EA  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -21                           // 66EB  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -20                           // 66EC  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -19                           // 66ED  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -18                           // 66EE  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -17                           // 66EF  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -16                           // 66F0  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -15                           // 66F1  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -14                           // 66F2  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -13                           // 66F3  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -12                           // 66F4  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -11                           // 66F5  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -10                           // 66F6  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -9                            // 66F7  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -8                            // 66F8  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -7                            // 66F9  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -6                            // 66FA  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -5                            // 66FB  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -4                            // 66FC  BNE.S     <label>
        b       bne_s
        addi    addr, pc, -3                            // 66FD  BNE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -2                            // 66FE  BNE.S     <label>
        b       bne_s
        lha     immed_data, 4(pc)                       // 66FF  BNE.L     <label>
        b       bne_l

// ---- $6700-$673F --------------------------------------------------------
        lha     immed_data, 2(pc)                       // 6700  BEQ.W     <label>
        b       beq_w
        addi    addr, pc, 1                             // 6701  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 2                             // 6702  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 3                             // 6703  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 4                             // 6704  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 5                             // 6705  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 6                             // 6706  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 7                             // 6707  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 8                             // 6708  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 9                             // 6709  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 10                            // 670A  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 11                            // 670B  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 12                            // 670C  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 13                            // 670D  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 14                            // 670E  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 15                            // 670F  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 16                            // 6710  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 17                            // 6711  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 18                            // 6712  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 19                            // 6713  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 20                            // 6714  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 21                            // 6715  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 22                            // 6716  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 23                            // 6717  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 24                            // 6718  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 25                            // 6719  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 26                            // 671A  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 27                            // 671B  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 28                            // 671C  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 29                            // 671D  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 30                            // 671E  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 31                            // 671F  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 32                            // 6720  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 33                            // 6721  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 34                            // 6722  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 35                            // 6723  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 36                            // 6724  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 37                            // 6725  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 38                            // 6726  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 39                            // 6727  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 40                            // 6728  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 41                            // 6729  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 42                            // 672A  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 43                            // 672B  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 44                            // 672C  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 45                            // 672D  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 46                            // 672E  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 47                            // 672F  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 48                            // 6730  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 49                            // 6731  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 50                            // 6732  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 51                            // 6733  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 52                            // 6734  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 53                            // 6735  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 54                            // 6736  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 55                            // 6737  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 56                            // 6738  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 57                            // 6739  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 58                            // 673A  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 59                            // 673B  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 60                            // 673C  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 61                            // 673D  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 62                            // 673E  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 63                            // 673F  BEQ.S     <label>
        b       bcc_s_2

// ---- $6740-$677F --------------------------------------------------------
        addi    addr, pc, 64                            // 6740  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 65                            // 6741  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 66                            // 6742  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 67                            // 6743  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 68                            // 6744  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 69                            // 6745  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 70                            // 6746  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 71                            // 6747  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 72                            // 6748  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 73                            // 6749  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 74                            // 674A  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 75                            // 674B  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 76                            // 674C  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 77                            // 674D  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 78                            // 674E  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 79                            // 674F  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 80                            // 6750  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 81                            // 6751  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 82                            // 6752  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 83                            // 6753  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 84                            // 6754  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 85                            // 6755  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 86                            // 6756  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 87                            // 6757  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 88                            // 6758  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 89                            // 6759  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 90                            // 675A  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 91                            // 675B  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 92                            // 675C  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 93                            // 675D  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 94                            // 675E  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 95                            // 675F  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 96                            // 6760  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 97                            // 6761  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 98                            // 6762  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 99                            // 6763  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 100                           // 6764  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 101                           // 6765  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 102                           // 6766  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 103                           // 6767  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 104                           // 6768  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 105                           // 6769  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 106                           // 676A  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 107                           // 676B  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 108                           // 676C  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 109                           // 676D  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 110                           // 676E  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 111                           // 676F  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 112                           // 6770  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 113                           // 6771  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 114                           // 6772  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 115                           // 6773  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 116                           // 6774  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 117                           // 6775  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 118                           // 6776  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 119                           // 6777  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 120                           // 6778  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 121                           // 6779  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 122                           // 677A  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 123                           // 677B  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 124                           // 677C  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 125                           // 677D  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, 126                           // 677E  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, 127                           // 677F  BEQ.S     <label>
        b       bcc_s_2

// ---- $6780-$67BF --------------------------------------------------------
        addi    addr, pc, -128                          // 6780  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -127                          // 6781  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -126                          // 6782  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -125                          // 6783  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -124                          // 6784  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -123                          // 6785  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -122                          // 6786  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -121                          // 6787  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -120                          // 6788  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -119                          // 6789  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -118                          // 678A  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -117                          // 678B  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -116                          // 678C  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -115                          // 678D  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -114                          // 678E  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -113                          // 678F  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -112                          // 6790  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -111                          // 6791  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -110                          // 6792  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -109                          // 6793  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -108                          // 6794  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -107                          // 6795  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -106                          // 6796  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -105                          // 6797  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -104                          // 6798  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -103                          // 6799  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -102                          // 679A  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -101                          // 679B  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -100                          // 679C  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -99                           // 679D  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -98                           // 679E  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -97                           // 679F  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -96                           // 67A0  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -95                           // 67A1  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -94                           // 67A2  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -93                           // 67A3  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -92                           // 67A4  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -91                           // 67A5  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -90                           // 67A6  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -89                           // 67A7  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -88                           // 67A8  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -87                           // 67A9  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -86                           // 67AA  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -85                           // 67AB  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -84                           // 67AC  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -83                           // 67AD  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -82                           // 67AE  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -81                           // 67AF  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -80                           // 67B0  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -79                           // 67B1  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -78                           // 67B2  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -77                           // 67B3  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -76                           // 67B4  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -75                           // 67B5  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -74                           // 67B6  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -73                           // 67B7  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -72                           // 67B8  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -71                           // 67B9  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -70                           // 67BA  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -69                           // 67BB  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -68                           // 67BC  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -67                           // 67BD  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -66                           // 67BE  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -65                           // 67BF  BEQ.S     <label>
        b       bcc_s_2

// ---- $67C0-$67FF --------------------------------------------------------
        addi    addr, pc, -64                           // 67C0  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -63                           // 67C1  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -62                           // 67C2  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -61                           // 67C3  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -60                           // 67C4  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -59                           // 67C5  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -58                           // 67C6  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -57                           // 67C7  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -56                           // 67C8  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -55                           // 67C9  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -54                           // 67CA  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -53                           // 67CB  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -52                           // 67CC  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -51                           // 67CD  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -50                           // 67CE  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -49                           // 67CF  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -48                           // 67D0  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -47                           // 67D1  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -46                           // 67D2  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -45                           // 67D3  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -44                           // 67D4  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -43                           // 67D5  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -42                           // 67D6  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -41                           // 67D7  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -40                           // 67D8  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -39                           // 67D9  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -38                           // 67DA  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -37                           // 67DB  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -36                           // 67DC  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -35                           // 67DD  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -34                           // 67DE  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -33                           // 67DF  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -32                           // 67E0  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -31                           // 67E1  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -30                           // 67E2  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -29                           // 67E3  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -28                           // 67E4  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -27                           // 67E5  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -26                           // 67E6  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -25                           // 67E7  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -24                           // 67E8  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -23                           // 67E9  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -22                           // 67EA  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -21                           // 67EB  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -20                           // 67EC  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -19                           // 67ED  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -18                           // 67EE  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -17                           // 67EF  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -16                           // 67F0  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -15                           // 67F1  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -14                           // 67F2  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -13                           // 67F3  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -12                           // 67F4  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -11                           // 67F5  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -10                           // 67F6  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -9                            // 67F7  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -8                            // 67F8  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -7                            // 67F9  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -6                            // 67FA  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -5                            // 67FB  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -4                            // 67FC  BEQ.S     <label>
        b       beq_s
        addi    addr, pc, -3                            // 67FD  BEQ.S     <label>
        b       bcc_s_2
        addi    addr, pc, -2                            // 67FE  BEQ.S     <label>
        b       beq_s
        lha     immed_data, 4(pc)                       // 67FF  BEQ.L     <label>
        b       beq_l

// ---- $6800-$683F --------------------------------------------------------
        lha     immed_data, 2(pc)                       // 6800  BVC.W     <label>
        b       bvc_w
        addi    addr, pc, 1                             // 6801  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 2                             // 6802  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 3                             // 6803  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 4                             // 6804  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 5                             // 6805  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 6                             // 6806  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 7                             // 6807  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 8                             // 6808  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 9                             // 6809  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 10                            // 680A  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 11                            // 680B  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 12                            // 680C  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 13                            // 680D  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 14                            // 680E  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 15                            // 680F  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 16                            // 6810  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 17                            // 6811  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 18                            // 6812  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 19                            // 6813  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 20                            // 6814  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 21                            // 6815  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 22                            // 6816  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 23                            // 6817  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 24                            // 6818  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 25                            // 6819  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 26                            // 681A  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 27                            // 681B  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 28                            // 681C  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 29                            // 681D  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 30                            // 681E  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 31                            // 681F  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 32                            // 6820  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 33                            // 6821  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 34                            // 6822  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 35                            // 6823  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 36                            // 6824  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 37                            // 6825  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 38                            // 6826  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 39                            // 6827  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 40                            // 6828  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 41                            // 6829  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 42                            // 682A  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 43                            // 682B  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 44                            // 682C  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 45                            // 682D  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 46                            // 682E  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 47                            // 682F  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 48                            // 6830  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 49                            // 6831  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 50                            // 6832  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 51                            // 6833  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 52                            // 6834  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 53                            // 6835  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 54                            // 6836  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 55                            // 6837  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 56                            // 6838  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 57                            // 6839  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 58                            // 683A  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 59                            // 683B  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 60                            // 683C  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 61                            // 683D  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 62                            // 683E  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 63                            // 683F  BVC.S     <label>
        b       bcc_s_2

// ---- $6840-$687F --------------------------------------------------------
        addi    addr, pc, 64                            // 6840  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 65                            // 6841  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 66                            // 6842  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 67                            // 6843  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 68                            // 6844  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 69                            // 6845  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 70                            // 6846  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 71                            // 6847  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 72                            // 6848  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 73                            // 6849  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 74                            // 684A  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 75                            // 684B  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 76                            // 684C  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 77                            // 684D  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 78                            // 684E  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 79                            // 684F  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 80                            // 6850  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 81                            // 6851  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 82                            // 6852  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 83                            // 6853  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 84                            // 6854  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 85                            // 6855  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 86                            // 6856  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 87                            // 6857  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 88                            // 6858  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 89                            // 6859  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 90                            // 685A  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 91                            // 685B  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 92                            // 685C  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 93                            // 685D  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 94                            // 685E  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 95                            // 685F  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 96                            // 6860  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 97                            // 6861  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 98                            // 6862  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 99                            // 6863  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 100                           // 6864  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 101                           // 6865  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 102                           // 6866  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 103                           // 6867  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 104                           // 6868  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 105                           // 6869  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 106                           // 686A  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 107                           // 686B  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 108                           // 686C  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 109                           // 686D  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 110                           // 686E  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 111                           // 686F  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 112                           // 6870  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 113                           // 6871  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 114                           // 6872  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 115                           // 6873  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 116                           // 6874  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 117                           // 6875  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 118                           // 6876  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 119                           // 6877  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 120                           // 6878  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 121                           // 6879  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 122                           // 687A  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 123                           // 687B  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 124                           // 687C  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 125                           // 687D  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, 126                           // 687E  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, 127                           // 687F  BVC.S     <label>
        b       bcc_s_2

// ---- $6880-$68BF --------------------------------------------------------
        addi    addr, pc, -128                          // 6880  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -127                          // 6881  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -126                          // 6882  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -125                          // 6883  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -124                          // 6884  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -123                          // 6885  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -122                          // 6886  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -121                          // 6887  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -120                          // 6888  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -119                          // 6889  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -118                          // 688A  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -117                          // 688B  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -116                          // 688C  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -115                          // 688D  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -114                          // 688E  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -113                          // 688F  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -112                          // 6890  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -111                          // 6891  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -110                          // 6892  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -109                          // 6893  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -108                          // 6894  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -107                          // 6895  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -106                          // 6896  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -105                          // 6897  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -104                          // 6898  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -103                          // 6899  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -102                          // 689A  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -101                          // 689B  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -100                          // 689C  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -99                           // 689D  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -98                           // 689E  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -97                           // 689F  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -96                           // 68A0  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -95                           // 68A1  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -94                           // 68A2  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -93                           // 68A3  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -92                           // 68A4  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -91                           // 68A5  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -90                           // 68A6  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -89                           // 68A7  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -88                           // 68A8  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -87                           // 68A9  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -86                           // 68AA  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -85                           // 68AB  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -84                           // 68AC  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -83                           // 68AD  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -82                           // 68AE  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -81                           // 68AF  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -80                           // 68B0  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -79                           // 68B1  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -78                           // 68B2  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -77                           // 68B3  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -76                           // 68B4  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -75                           // 68B5  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -74                           // 68B6  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -73                           // 68B7  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -72                           // 68B8  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -71                           // 68B9  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -70                           // 68BA  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -69                           // 68BB  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -68                           // 68BC  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -67                           // 68BD  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -66                           // 68BE  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -65                           // 68BF  BVC.S     <label>
        b       bcc_s_2

// ---- $68C0-$68FF --------------------------------------------------------
        addi    addr, pc, -64                           // 68C0  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -63                           // 68C1  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -62                           // 68C2  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -61                           // 68C3  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -60                           // 68C4  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -59                           // 68C5  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -58                           // 68C6  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -57                           // 68C7  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -56                           // 68C8  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -55                           // 68C9  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -54                           // 68CA  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -53                           // 68CB  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -52                           // 68CC  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -51                           // 68CD  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -50                           // 68CE  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -49                           // 68CF  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -48                           // 68D0  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -47                           // 68D1  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -46                           // 68D2  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -45                           // 68D3  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -44                           // 68D4  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -43                           // 68D5  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -42                           // 68D6  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -41                           // 68D7  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -40                           // 68D8  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -39                           // 68D9  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -38                           // 68DA  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -37                           // 68DB  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -36                           // 68DC  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -35                           // 68DD  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -34                           // 68DE  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -33                           // 68DF  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -32                           // 68E0  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -31                           // 68E1  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -30                           // 68E2  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -29                           // 68E3  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -28                           // 68E4  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -27                           // 68E5  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -26                           // 68E6  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -25                           // 68E7  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -24                           // 68E8  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -23                           // 68E9  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -22                           // 68EA  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -21                           // 68EB  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -20                           // 68EC  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -19                           // 68ED  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -18                           // 68EE  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -17                           // 68EF  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -16                           // 68F0  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -15                           // 68F1  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -14                           // 68F2  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -13                           // 68F3  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -12                           // 68F4  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -11                           // 68F5  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -10                           // 68F6  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -9                            // 68F7  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -8                            // 68F8  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -7                            // 68F9  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -6                            // 68FA  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -5                            // 68FB  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -4                            // 68FC  BVC.S     <label>
        b       bvc_s
        addi    addr, pc, -3                            // 68FD  BVC.S     <label>
        b       bcc_s_2
        addi    addr, pc, -2                            // 68FE  BVC.S     <label>
        b       bvc_s
        lha     immed_data, 4(pc)                       // 68FF  BVC.L     <label>
        b       bvc_l

// ---- $6900-$693F --------------------------------------------------------
        lha     immed_data, 2(pc)                       // 6900  BVS.W     <label>
        b       bvs_w
        addi    addr, pc, 1                             // 6901  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 2                             // 6902  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 3                             // 6903  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 4                             // 6904  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 5                             // 6905  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 6                             // 6906  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 7                             // 6907  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 8                             // 6908  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 9                             // 6909  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 10                            // 690A  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 11                            // 690B  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 12                            // 690C  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 13                            // 690D  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 14                            // 690E  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 15                            // 690F  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 16                            // 6910  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 17                            // 6911  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 18                            // 6912  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 19                            // 6913  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 20                            // 6914  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 21                            // 6915  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 22                            // 6916  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 23                            // 6917  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 24                            // 6918  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 25                            // 6919  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 26                            // 691A  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 27                            // 691B  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 28                            // 691C  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 29                            // 691D  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 30                            // 691E  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 31                            // 691F  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 32                            // 6920  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 33                            // 6921  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 34                            // 6922  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 35                            // 6923  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 36                            // 6924  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 37                            // 6925  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 38                            // 6926  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 39                            // 6927  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 40                            // 6928  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 41                            // 6929  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 42                            // 692A  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 43                            // 692B  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 44                            // 692C  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 45                            // 692D  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 46                            // 692E  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 47                            // 692F  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 48                            // 6930  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 49                            // 6931  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 50                            // 6932  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 51                            // 6933  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 52                            // 6934  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 53                            // 6935  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 54                            // 6936  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 55                            // 6937  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 56                            // 6938  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 57                            // 6939  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 58                            // 693A  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 59                            // 693B  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 60                            // 693C  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 61                            // 693D  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 62                            // 693E  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 63                            // 693F  BVS.S     <label>
        b       bcc_s_2

// ---- $6940-$697F --------------------------------------------------------
        addi    addr, pc, 64                            // 6940  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 65                            // 6941  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 66                            // 6942  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 67                            // 6943  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 68                            // 6944  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 69                            // 6945  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 70                            // 6946  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 71                            // 6947  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 72                            // 6948  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 73                            // 6949  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 74                            // 694A  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 75                            // 694B  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 76                            // 694C  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 77                            // 694D  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 78                            // 694E  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 79                            // 694F  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 80                            // 6950  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 81                            // 6951  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 82                            // 6952  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 83                            // 6953  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 84                            // 6954  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 85                            // 6955  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 86                            // 6956  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 87                            // 6957  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 88                            // 6958  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 89                            // 6959  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 90                            // 695A  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 91                            // 695B  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 92                            // 695C  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 93                            // 695D  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 94                            // 695E  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 95                            // 695F  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 96                            // 6960  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 97                            // 6961  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 98                            // 6962  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 99                            // 6963  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 100                           // 6964  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 101                           // 6965  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 102                           // 6966  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 103                           // 6967  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 104                           // 6968  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 105                           // 6969  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 106                           // 696A  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 107                           // 696B  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 108                           // 696C  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 109                           // 696D  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 110                           // 696E  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 111                           // 696F  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 112                           // 6970  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 113                           // 6971  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 114                           // 6972  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 115                           // 6973  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 116                           // 6974  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 117                           // 6975  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 118                           // 6976  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 119                           // 6977  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 120                           // 6978  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 121                           // 6979  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 122                           // 697A  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 123                           // 697B  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 124                           // 697C  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 125                           // 697D  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, 126                           // 697E  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, 127                           // 697F  BVS.S     <label>
        b       bcc_s_2

// ---- $6980-$69BF --------------------------------------------------------
        addi    addr, pc, -128                          // 6980  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -127                          // 6981  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -126                          // 6982  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -125                          // 6983  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -124                          // 6984  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -123                          // 6985  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -122                          // 6986  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -121                          // 6987  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -120                          // 6988  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -119                          // 6989  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -118                          // 698A  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -117                          // 698B  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -116                          // 698C  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -115                          // 698D  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -114                          // 698E  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -113                          // 698F  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -112                          // 6990  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -111                          // 6991  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -110                          // 6992  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -109                          // 6993  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -108                          // 6994  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -107                          // 6995  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -106                          // 6996  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -105                          // 6997  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -104                          // 6998  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -103                          // 6999  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -102                          // 699A  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -101                          // 699B  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -100                          // 699C  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -99                           // 699D  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -98                           // 699E  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -97                           // 699F  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -96                           // 69A0  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -95                           // 69A1  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -94                           // 69A2  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -93                           // 69A3  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -92                           // 69A4  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -91                           // 69A5  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -90                           // 69A6  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -89                           // 69A7  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -88                           // 69A8  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -87                           // 69A9  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -86                           // 69AA  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -85                           // 69AB  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -84                           // 69AC  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -83                           // 69AD  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -82                           // 69AE  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -81                           // 69AF  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -80                           // 69B0  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -79                           // 69B1  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -78                           // 69B2  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -77                           // 69B3  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -76                           // 69B4  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -75                           // 69B5  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -74                           // 69B6  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -73                           // 69B7  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -72                           // 69B8  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -71                           // 69B9  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -70                           // 69BA  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -69                           // 69BB  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -68                           // 69BC  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -67                           // 69BD  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -66                           // 69BE  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -65                           // 69BF  BVS.S     <label>
        b       bcc_s_2

// ---- $69C0-$69FF --------------------------------------------------------
        addi    addr, pc, -64                           // 69C0  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -63                           // 69C1  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -62                           // 69C2  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -61                           // 69C3  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -60                           // 69C4  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -59                           // 69C5  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -58                           // 69C6  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -57                           // 69C7  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -56                           // 69C8  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -55                           // 69C9  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -54                           // 69CA  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -53                           // 69CB  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -52                           // 69CC  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -51                           // 69CD  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -50                           // 69CE  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -49                           // 69CF  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -48                           // 69D0  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -47                           // 69D1  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -46                           // 69D2  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -45                           // 69D3  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -44                           // 69D4  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -43                           // 69D5  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -42                           // 69D6  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -41                           // 69D7  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -40                           // 69D8  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -39                           // 69D9  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -38                           // 69DA  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -37                           // 69DB  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -36                           // 69DC  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -35                           // 69DD  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -34                           // 69DE  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -33                           // 69DF  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -32                           // 69E0  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -31                           // 69E1  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -30                           // 69E2  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -29                           // 69E3  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -28                           // 69E4  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -27                           // 69E5  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -26                           // 69E6  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -25                           // 69E7  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -24                           // 69E8  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -23                           // 69E9  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -22                           // 69EA  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -21                           // 69EB  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -20                           // 69EC  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -19                           // 69ED  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -18                           // 69EE  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -17                           // 69EF  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -16                           // 69F0  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -15                           // 69F1  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -14                           // 69F2  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -13                           // 69F3  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -12                           // 69F4  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -11                           // 69F5  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -10                           // 69F6  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -9                            // 69F7  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -8                            // 69F8  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -7                            // 69F9  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -6                            // 69FA  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -5                            // 69FB  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -4                            // 69FC  BVS.S     <label>
        b       bvs_s
        addi    addr, pc, -3                            // 69FD  BVS.S     <label>
        b       bcc_s_2
        addi    addr, pc, -2                            // 69FE  BVS.S     <label>
        b       bvs_s
        lha     immed_data, 4(pc)                       // 69FF  BVS.L     <label>
        b       bvs_l

// ---- $6A00-$6A3F --------------------------------------------------------
        lha     immed_data, 2(pc)                       // 6A00  BPL.W     <label>
        b       bpl_w
        addi    addr, pc, 1                             // 6A01  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 2                             // 6A02  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 3                             // 6A03  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 4                             // 6A04  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 5                             // 6A05  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 6                             // 6A06  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 7                             // 6A07  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 8                             // 6A08  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 9                             // 6A09  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 10                            // 6A0A  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 11                            // 6A0B  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 12                            // 6A0C  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 13                            // 6A0D  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 14                            // 6A0E  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 15                            // 6A0F  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 16                            // 6A10  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 17                            // 6A11  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 18                            // 6A12  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 19                            // 6A13  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 20                            // 6A14  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 21                            // 6A15  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 22                            // 6A16  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 23                            // 6A17  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 24                            // 6A18  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 25                            // 6A19  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 26                            // 6A1A  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 27                            // 6A1B  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 28                            // 6A1C  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 29                            // 6A1D  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 30                            // 6A1E  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 31                            // 6A1F  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 32                            // 6A20  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 33                            // 6A21  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 34                            // 6A22  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 35                            // 6A23  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 36                            // 6A24  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 37                            // 6A25  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 38                            // 6A26  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 39                            // 6A27  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 40                            // 6A28  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 41                            // 6A29  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 42                            // 6A2A  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 43                            // 6A2B  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 44                            // 6A2C  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 45                            // 6A2D  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 46                            // 6A2E  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 47                            // 6A2F  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 48                            // 6A30  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 49                            // 6A31  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 50                            // 6A32  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 51                            // 6A33  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 52                            // 6A34  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 53                            // 6A35  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 54                            // 6A36  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 55                            // 6A37  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 56                            // 6A38  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 57                            // 6A39  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 58                            // 6A3A  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 59                            // 6A3B  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 60                            // 6A3C  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 61                            // 6A3D  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 62                            // 6A3E  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 63                            // 6A3F  BPL.S     <label>
        b       bcc_s_2

// ---- $6A40-$6A7F --------------------------------------------------------
        addi    addr, pc, 64                            // 6A40  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 65                            // 6A41  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 66                            // 6A42  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 67                            // 6A43  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 68                            // 6A44  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 69                            // 6A45  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 70                            // 6A46  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 71                            // 6A47  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 72                            // 6A48  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 73                            // 6A49  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 74                            // 6A4A  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 75                            // 6A4B  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 76                            // 6A4C  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 77                            // 6A4D  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 78                            // 6A4E  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 79                            // 6A4F  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 80                            // 6A50  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 81                            // 6A51  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 82                            // 6A52  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 83                            // 6A53  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 84                            // 6A54  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 85                            // 6A55  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 86                            // 6A56  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 87                            // 6A57  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 88                            // 6A58  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 89                            // 6A59  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 90                            // 6A5A  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 91                            // 6A5B  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 92                            // 6A5C  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 93                            // 6A5D  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 94                            // 6A5E  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 95                            // 6A5F  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 96                            // 6A60  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 97                            // 6A61  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 98                            // 6A62  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 99                            // 6A63  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 100                           // 6A64  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 101                           // 6A65  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 102                           // 6A66  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 103                           // 6A67  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 104                           // 6A68  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 105                           // 6A69  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 106                           // 6A6A  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 107                           // 6A6B  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 108                           // 6A6C  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 109                           // 6A6D  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 110                           // 6A6E  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 111                           // 6A6F  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 112                           // 6A70  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 113                           // 6A71  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 114                           // 6A72  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 115                           // 6A73  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 116                           // 6A74  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 117                           // 6A75  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 118                           // 6A76  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 119                           // 6A77  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 120                           // 6A78  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 121                           // 6A79  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 122                           // 6A7A  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 123                           // 6A7B  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 124                           // 6A7C  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 125                           // 6A7D  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, 126                           // 6A7E  BPL.S     <label>
        b       bpl_s
        addi    addr, pc, 127                           // 6A7F  BPL.S     <label>
        b       bcc_s_2

// ---- $6A80-$6ABF --------------------------------------------------------
        addi    addr, pc, -128                          // 6A80  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -127                          // 6A81  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -126                          // 6A82  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -125                          // 6A83  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -124                          // 6A84  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -123                          // 6A85  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -122                          // 6A86  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -121                          // 6A87  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -120                          // 6A88  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -119                          // 6A89  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -118                          // 6A8A  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -117                          // 6A8B  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -116                          // 6A8C  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -115                          // 6A8D  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -114                          // 6A8E  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -113                          // 6A8F  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -112                          // 6A90  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -111                          // 6A91  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -110                          // 6A92  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -109                          // 6A93  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -108                          // 6A94  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -107                          // 6A95  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -106                          // 6A96  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -105                          // 6A97  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -104                          // 6A98  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -103                          // 6A99  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -102                          // 6A9A  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -101                          // 6A9B  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -100                          // 6A9C  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -99                           // 6A9D  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -98                           // 6A9E  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -97                           // 6A9F  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -96                           // 6AA0  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -95                           // 6AA1  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -94                           // 6AA2  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -93                           // 6AA3  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -92                           // 6AA4  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -91                           // 6AA5  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -90                           // 6AA6  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -89                           // 6AA7  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -88                           // 6AA8  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -87                           // 6AA9  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -86                           // 6AAA  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -85                           // 6AAB  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -84                           // 6AAC  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -83                           // 6AAD  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -82                           // 6AAE  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -81                           // 6AAF  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -80                           // 6AB0  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -79                           // 6AB1  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -78                           // 6AB2  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -77                           // 6AB3  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -76                           // 6AB4  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -75                           // 6AB5  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -74                           // 6AB6  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -73                           // 6AB7  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -72                           // 6AB8  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -71                           // 6AB9  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -70                           // 6ABA  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -69                           // 6ABB  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -68                           // 6ABC  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -67                           // 6ABD  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -66                           // 6ABE  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -65                           // 6ABF  BPL.S     <label>
        b       bcc_s_2

// ---- $6AC0-$6AFF --------------------------------------------------------
        addi    addr, pc, -64                           // 6AC0  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -63                           // 6AC1  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -62                           // 6AC2  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -61                           // 6AC3  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -60                           // 6AC4  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -59                           // 6AC5  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -58                           // 6AC6  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -57                           // 6AC7  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -56                           // 6AC8  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -55                           // 6AC9  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -54                           // 6ACA  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -53                           // 6ACB  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -52                           // 6ACC  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -51                           // 6ACD  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -50                           // 6ACE  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -49                           // 6ACF  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -48                           // 6AD0  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -47                           // 6AD1  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -46                           // 6AD2  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -45                           // 6AD3  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -44                           // 6AD4  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -43                           // 6AD5  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -42                           // 6AD6  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -41                           // 6AD7  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -40                           // 6AD8  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -39                           // 6AD9  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -38                           // 6ADA  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -37                           // 6ADB  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -36                           // 6ADC  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -35                           // 6ADD  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -34                           // 6ADE  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -33                           // 6ADF  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -32                           // 6AE0  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -31                           // 6AE1  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -30                           // 6AE2  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -29                           // 6AE3  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -28                           // 6AE4  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -27                           // 6AE5  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -26                           // 6AE6  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -25                           // 6AE7  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -24                           // 6AE8  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -23                           // 6AE9  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -22                           // 6AEA  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -21                           // 6AEB  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -20                           // 6AEC  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -19                           // 6AED  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -18                           // 6AEE  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -17                           // 6AEF  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -16                           // 6AF0  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -15                           // 6AF1  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -14                           // 6AF2  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -13                           // 6AF3  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -12                           // 6AF4  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -11                           // 6AF5  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -10                           // 6AF6  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -9                            // 6AF7  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -8                            // 6AF8  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -7                            // 6AF9  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -6                            // 6AFA  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -5                            // 6AFB  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -4                            // 6AFC  BPL.S     <label>
        b       bpl_s_2
        addi    addr, pc, -3                            // 6AFD  BPL.S     <label>
        b       bcc_s_2
        addi    addr, pc, -2                            // 6AFE  BPL.S     <label>
        b       bpl_s_2
        lha     immed_data, 4(pc)                       // 6AFF  BPL.L     <label>
        b       bpl_l

// ---- $6B00-$6B3F --------------------------------------------------------
        lha     immed_data, 2(pc)                       // 6B00  BMI.W     <label>
        b       bmi_w
        addi    addr, pc, 1                             // 6B01  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 2                             // 6B02  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 3                             // 6B03  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 4                             // 6B04  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 5                             // 6B05  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 6                             // 6B06  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 7                             // 6B07  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 8                             // 6B08  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 9                             // 6B09  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 10                            // 6B0A  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 11                            // 6B0B  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 12                            // 6B0C  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 13                            // 6B0D  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 14                            // 6B0E  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 15                            // 6B0F  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 16                            // 6B10  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 17                            // 6B11  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 18                            // 6B12  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 19                            // 6B13  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 20                            // 6B14  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 21                            // 6B15  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 22                            // 6B16  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 23                            // 6B17  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 24                            // 6B18  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 25                            // 6B19  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 26                            // 6B1A  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 27                            // 6B1B  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 28                            // 6B1C  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 29                            // 6B1D  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 30                            // 6B1E  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 31                            // 6B1F  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 32                            // 6B20  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 33                            // 6B21  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 34                            // 6B22  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 35                            // 6B23  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 36                            // 6B24  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 37                            // 6B25  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 38                            // 6B26  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 39                            // 6B27  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 40                            // 6B28  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 41                            // 6B29  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 42                            // 6B2A  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 43                            // 6B2B  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 44                            // 6B2C  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 45                            // 6B2D  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 46                            // 6B2E  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 47                            // 6B2F  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 48                            // 6B30  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 49                            // 6B31  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 50                            // 6B32  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 51                            // 6B33  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 52                            // 6B34  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 53                            // 6B35  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 54                            // 6B36  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 55                            // 6B37  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 56                            // 6B38  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 57                            // 6B39  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 58                            // 6B3A  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 59                            // 6B3B  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 60                            // 6B3C  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 61                            // 6B3D  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 62                            // 6B3E  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 63                            // 6B3F  BMI.S     <label>
        b       bcc_s_2

// ---- $6B40-$6B7F --------------------------------------------------------
        addi    addr, pc, 64                            // 6B40  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 65                            // 6B41  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 66                            // 6B42  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 67                            // 6B43  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 68                            // 6B44  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 69                            // 6B45  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 70                            // 6B46  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 71                            // 6B47  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 72                            // 6B48  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 73                            // 6B49  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 74                            // 6B4A  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 75                            // 6B4B  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 76                            // 6B4C  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 77                            // 6B4D  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 78                            // 6B4E  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 79                            // 6B4F  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 80                            // 6B50  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 81                            // 6B51  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 82                            // 6B52  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 83                            // 6B53  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 84                            // 6B54  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 85                            // 6B55  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 86                            // 6B56  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 87                            // 6B57  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 88                            // 6B58  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 89                            // 6B59  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 90                            // 6B5A  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 91                            // 6B5B  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 92                            // 6B5C  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 93                            // 6B5D  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 94                            // 6B5E  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 95                            // 6B5F  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 96                            // 6B60  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 97                            // 6B61  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 98                            // 6B62  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 99                            // 6B63  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 100                           // 6B64  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 101                           // 6B65  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 102                           // 6B66  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 103                           // 6B67  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 104                           // 6B68  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 105                           // 6B69  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 106                           // 6B6A  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 107                           // 6B6B  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 108                           // 6B6C  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 109                           // 6B6D  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 110                           // 6B6E  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 111                           // 6B6F  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 112                           // 6B70  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 113                           // 6B71  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 114                           // 6B72  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 115                           // 6B73  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 116                           // 6B74  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 117                           // 6B75  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 118                           // 6B76  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 119                           // 6B77  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 120                           // 6B78  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 121                           // 6B79  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 122                           // 6B7A  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 123                           // 6B7B  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 124                           // 6B7C  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 125                           // 6B7D  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, 126                           // 6B7E  BMI.S     <label>
        b       bmi_s
        addi    addr, pc, 127                           // 6B7F  BMI.S     <label>
        b       bcc_s_2

// ---- $6B80-$6BBF --------------------------------------------------------
        addi    addr, pc, -128                          // 6B80  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -127                          // 6B81  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -126                          // 6B82  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -125                          // 6B83  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -124                          // 6B84  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -123                          // 6B85  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -122                          // 6B86  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -121                          // 6B87  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -120                          // 6B88  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -119                          // 6B89  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -118                          // 6B8A  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -117                          // 6B8B  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -116                          // 6B8C  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -115                          // 6B8D  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -114                          // 6B8E  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -113                          // 6B8F  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -112                          // 6B90  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -111                          // 6B91  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -110                          // 6B92  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -109                          // 6B93  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -108                          // 6B94  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -107                          // 6B95  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -106                          // 6B96  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -105                          // 6B97  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -104                          // 6B98  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -103                          // 6B99  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -102                          // 6B9A  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -101                          // 6B9B  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -100                          // 6B9C  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -99                           // 6B9D  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -98                           // 6B9E  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -97                           // 6B9F  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -96                           // 6BA0  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -95                           // 6BA1  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -94                           // 6BA2  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -93                           // 6BA3  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -92                           // 6BA4  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -91                           // 6BA5  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -90                           // 6BA6  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -89                           // 6BA7  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -88                           // 6BA8  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -87                           // 6BA9  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -86                           // 6BAA  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -85                           // 6BAB  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -84                           // 6BAC  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -83                           // 6BAD  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -82                           // 6BAE  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -81                           // 6BAF  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -80                           // 6BB0  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -79                           // 6BB1  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -78                           // 6BB2  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -77                           // 6BB3  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -76                           // 6BB4  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -75                           // 6BB5  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -74                           // 6BB6  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -73                           // 6BB7  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -72                           // 6BB8  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -71                           // 6BB9  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -70                           // 6BBA  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -69                           // 6BBB  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -68                           // 6BBC  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -67                           // 6BBD  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -66                           // 6BBE  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -65                           // 6BBF  BMI.S     <label>
        b       bcc_s_2

// ---- $6BC0-$6BFF --------------------------------------------------------
        addi    addr, pc, -64                           // 6BC0  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -63                           // 6BC1  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -62                           // 6BC2  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -61                           // 6BC3  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -60                           // 6BC4  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -59                           // 6BC5  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -58                           // 6BC6  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -57                           // 6BC7  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -56                           // 6BC8  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -55                           // 6BC9  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -54                           // 6BCA  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -53                           // 6BCB  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -52                           // 6BCC  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -51                           // 6BCD  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -50                           // 6BCE  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -49                           // 6BCF  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -48                           // 6BD0  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -47                           // 6BD1  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -46                           // 6BD2  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -45                           // 6BD3  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -44                           // 6BD4  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -43                           // 6BD5  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -42                           // 6BD6  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -41                           // 6BD7  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -40                           // 6BD8  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -39                           // 6BD9  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -38                           // 6BDA  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -37                           // 6BDB  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -36                           // 6BDC  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -35                           // 6BDD  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -34                           // 6BDE  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -33                           // 6BDF  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -32                           // 6BE0  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -31                           // 6BE1  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -30                           // 6BE2  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -29                           // 6BE3  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -28                           // 6BE4  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -27                           // 6BE5  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -26                           // 6BE6  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -25                           // 6BE7  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -24                           // 6BE8  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -23                           // 6BE9  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -22                           // 6BEA  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -21                           // 6BEB  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -20                           // 6BEC  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -19                           // 6BED  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -18                           // 6BEE  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -17                           // 6BEF  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -16                           // 6BF0  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -15                           // 6BF1  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -14                           // 6BF2  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -13                           // 6BF3  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -12                           // 6BF4  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -11                           // 6BF5  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -10                           // 6BF6  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -9                            // 6BF7  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -8                            // 6BF8  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -7                            // 6BF9  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -6                            // 6BFA  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -5                            // 6BFB  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -4                            // 6BFC  BMI.S     <label>
        b       bmi_s_2
        addi    addr, pc, -3                            // 6BFD  BMI.S     <label>
        b       bcc_s_2
        addi    addr, pc, -2                            // 6BFE  BMI.S     <label>
        b       bmi_s_2
        lha     immed_data, 4(pc)                       // 6BFF  BMI.L     <label>
        b       bmi_l

// ---- $6C00-$6C3F --------------------------------------------------------
        lha     immed_data, 2(pc)                       // 6C00  BGE.W     <label>
        b       bge_w
        addi    addr, pc, 1                             // 6C01  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 2                             // 6C02  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 3                             // 6C03  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 4                             // 6C04  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 5                             // 6C05  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 6                             // 6C06  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 7                             // 6C07  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 8                             // 6C08  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 9                             // 6C09  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 10                            // 6C0A  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 11                            // 6C0B  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 12                            // 6C0C  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 13                            // 6C0D  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 14                            // 6C0E  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 15                            // 6C0F  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 16                            // 6C10  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 17                            // 6C11  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 18                            // 6C12  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 19                            // 6C13  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 20                            // 6C14  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 21                            // 6C15  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 22                            // 6C16  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 23                            // 6C17  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 24                            // 6C18  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 25                            // 6C19  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 26                            // 6C1A  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 27                            // 6C1B  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 28                            // 6C1C  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 29                            // 6C1D  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 30                            // 6C1E  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 31                            // 6C1F  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 32                            // 6C20  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 33                            // 6C21  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 34                            // 6C22  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 35                            // 6C23  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 36                            // 6C24  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 37                            // 6C25  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 38                            // 6C26  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 39                            // 6C27  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 40                            // 6C28  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 41                            // 6C29  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 42                            // 6C2A  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 43                            // 6C2B  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 44                            // 6C2C  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 45                            // 6C2D  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 46                            // 6C2E  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 47                            // 6C2F  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 48                            // 6C30  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 49                            // 6C31  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 50                            // 6C32  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 51                            // 6C33  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 52                            // 6C34  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 53                            // 6C35  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 54                            // 6C36  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 55                            // 6C37  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 56                            // 6C38  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 57                            // 6C39  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 58                            // 6C3A  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 59                            // 6C3B  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 60                            // 6C3C  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 61                            // 6C3D  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 62                            // 6C3E  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 63                            // 6C3F  BGE.S     <label>
        b       bcc_s_2

// ---- $6C40-$6C7F --------------------------------------------------------
        addi    addr, pc, 64                            // 6C40  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 65                            // 6C41  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 66                            // 6C42  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 67                            // 6C43  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 68                            // 6C44  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 69                            // 6C45  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 70                            // 6C46  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 71                            // 6C47  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 72                            // 6C48  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 73                            // 6C49  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 74                            // 6C4A  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 75                            // 6C4B  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 76                            // 6C4C  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 77                            // 6C4D  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 78                            // 6C4E  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 79                            // 6C4F  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 80                            // 6C50  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 81                            // 6C51  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 82                            // 6C52  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 83                            // 6C53  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 84                            // 6C54  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 85                            // 6C55  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 86                            // 6C56  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 87                            // 6C57  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 88                            // 6C58  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 89                            // 6C59  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 90                            // 6C5A  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 91                            // 6C5B  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 92                            // 6C5C  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 93                            // 6C5D  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 94                            // 6C5E  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 95                            // 6C5F  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 96                            // 6C60  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 97                            // 6C61  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 98                            // 6C62  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 99                            // 6C63  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 100                           // 6C64  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 101                           // 6C65  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 102                           // 6C66  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 103                           // 6C67  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 104                           // 6C68  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 105                           // 6C69  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 106                           // 6C6A  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 107                           // 6C6B  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 108                           // 6C6C  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 109                           // 6C6D  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 110                           // 6C6E  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 111                           // 6C6F  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 112                           // 6C70  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 113                           // 6C71  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 114                           // 6C72  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 115                           // 6C73  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 116                           // 6C74  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 117                           // 6C75  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 118                           // 6C76  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 119                           // 6C77  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 120                           // 6C78  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 121                           // 6C79  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 122                           // 6C7A  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 123                           // 6C7B  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 124                           // 6C7C  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 125                           // 6C7D  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 126                           // 6C7E  BGE.S     <label>
        b       bge_s
        addi    addr, pc, 127                           // 6C7F  BGE.S     <label>
        b       bcc_s_2

// ---- $6C80-$6CBF --------------------------------------------------------
        addi    addr, pc, -128                          // 6C80  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -127                          // 6C81  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -126                          // 6C82  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -125                          // 6C83  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -124                          // 6C84  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -123                          // 6C85  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -122                          // 6C86  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -121                          // 6C87  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -120                          // 6C88  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -119                          // 6C89  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -118                          // 6C8A  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -117                          // 6C8B  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -116                          // 6C8C  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -115                          // 6C8D  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -114                          // 6C8E  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -113                          // 6C8F  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -112                          // 6C90  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -111                          // 6C91  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -110                          // 6C92  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -109                          // 6C93  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -108                          // 6C94  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -107                          // 6C95  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -106                          // 6C96  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -105                          // 6C97  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -104                          // 6C98  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -103                          // 6C99  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -102                          // 6C9A  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -101                          // 6C9B  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -100                          // 6C9C  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -99                           // 6C9D  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -98                           // 6C9E  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -97                           // 6C9F  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -96                           // 6CA0  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -95                           // 6CA1  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -94                           // 6CA2  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -93                           // 6CA3  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -92                           // 6CA4  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -91                           // 6CA5  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -90                           // 6CA6  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -89                           // 6CA7  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -88                           // 6CA8  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -87                           // 6CA9  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -86                           // 6CAA  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -85                           // 6CAB  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -84                           // 6CAC  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -83                           // 6CAD  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -82                           // 6CAE  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -81                           // 6CAF  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -80                           // 6CB0  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -79                           // 6CB1  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -78                           // 6CB2  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -77                           // 6CB3  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -76                           // 6CB4  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -75                           // 6CB5  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -74                           // 6CB6  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -73                           // 6CB7  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -72                           // 6CB8  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -71                           // 6CB9  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -70                           // 6CBA  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -69                           // 6CBB  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -68                           // 6CBC  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -67                           // 6CBD  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -66                           // 6CBE  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -65                           // 6CBF  BGE.S     <label>
        b       bcc_s_2

// ---- $6CC0-$6CFF --------------------------------------------------------
        addi    addr, pc, -64                           // 6CC0  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -63                           // 6CC1  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -62                           // 6CC2  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -61                           // 6CC3  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -60                           // 6CC4  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -59                           // 6CC5  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -58                           // 6CC6  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -57                           // 6CC7  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -56                           // 6CC8  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -55                           // 6CC9  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -54                           // 6CCA  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -53                           // 6CCB  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -52                           // 6CCC  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -51                           // 6CCD  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -50                           // 6CCE  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -49                           // 6CCF  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -48                           // 6CD0  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -47                           // 6CD1  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -46                           // 6CD2  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -45                           // 6CD3  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -44                           // 6CD4  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -43                           // 6CD5  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -42                           // 6CD6  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -41                           // 6CD7  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -40                           // 6CD8  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -39                           // 6CD9  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -38                           // 6CDA  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -37                           // 6CDB  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -36                           // 6CDC  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -35                           // 6CDD  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -34                           // 6CDE  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -33                           // 6CDF  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -32                           // 6CE0  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -31                           // 6CE1  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -30                           // 6CE2  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -29                           // 6CE3  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -28                           // 6CE4  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -27                           // 6CE5  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -26                           // 6CE6  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -25                           // 6CE7  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -24                           // 6CE8  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -23                           // 6CE9  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -22                           // 6CEA  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -21                           // 6CEB  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -20                           // 6CEC  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -19                           // 6CED  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -18                           // 6CEE  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -17                           // 6CEF  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -16                           // 6CF0  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -15                           // 6CF1  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -14                           // 6CF2  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -13                           // 6CF3  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -12                           // 6CF4  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -11                           // 6CF5  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -10                           // 6CF6  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -9                            // 6CF7  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -8                            // 6CF8  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -7                            // 6CF9  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -6                            // 6CFA  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -5                            // 6CFB  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -4                            // 6CFC  BGE.S     <label>
        b       bge_s
        addi    addr, pc, -3                            // 6CFD  BGE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -2                            // 6CFE  BGE.S     <label>
        b       bge_s
        lha     immed_data, 4(pc)                       // 6CFF  BGE.L     <label>
        b       bge_l

// ---- $6D00-$6D3F --------------------------------------------------------
        lha     immed_data, 2(pc)                       // 6D00  BLT.W     <label>
        b       blt_w
        addi    addr, pc, 1                             // 6D01  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 2                             // 6D02  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 3                             // 6D03  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 4                             // 6D04  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 5                             // 6D05  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 6                             // 6D06  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 7                             // 6D07  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 8                             // 6D08  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 9                             // 6D09  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 10                            // 6D0A  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 11                            // 6D0B  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 12                            // 6D0C  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 13                            // 6D0D  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 14                            // 6D0E  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 15                            // 6D0F  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 16                            // 6D10  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 17                            // 6D11  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 18                            // 6D12  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 19                            // 6D13  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 20                            // 6D14  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 21                            // 6D15  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 22                            // 6D16  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 23                            // 6D17  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 24                            // 6D18  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 25                            // 6D19  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 26                            // 6D1A  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 27                            // 6D1B  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 28                            // 6D1C  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 29                            // 6D1D  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 30                            // 6D1E  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 31                            // 6D1F  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 32                            // 6D20  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 33                            // 6D21  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 34                            // 6D22  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 35                            // 6D23  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 36                            // 6D24  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 37                            // 6D25  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 38                            // 6D26  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 39                            // 6D27  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 40                            // 6D28  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 41                            // 6D29  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 42                            // 6D2A  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 43                            // 6D2B  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 44                            // 6D2C  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 45                            // 6D2D  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 46                            // 6D2E  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 47                            // 6D2F  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 48                            // 6D30  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 49                            // 6D31  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 50                            // 6D32  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 51                            // 6D33  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 52                            // 6D34  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 53                            // 6D35  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 54                            // 6D36  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 55                            // 6D37  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 56                            // 6D38  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 57                            // 6D39  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 58                            // 6D3A  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 59                            // 6D3B  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 60                            // 6D3C  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 61                            // 6D3D  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 62                            // 6D3E  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 63                            // 6D3F  BLT.S     <label>
        b       bcc_s_2

// ---- $6D40-$6D7F --------------------------------------------------------
        addi    addr, pc, 64                            // 6D40  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 65                            // 6D41  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 66                            // 6D42  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 67                            // 6D43  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 68                            // 6D44  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 69                            // 6D45  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 70                            // 6D46  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 71                            // 6D47  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 72                            // 6D48  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 73                            // 6D49  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 74                            // 6D4A  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 75                            // 6D4B  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 76                            // 6D4C  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 77                            // 6D4D  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 78                            // 6D4E  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 79                            // 6D4F  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 80                            // 6D50  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 81                            // 6D51  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 82                            // 6D52  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 83                            // 6D53  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 84                            // 6D54  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 85                            // 6D55  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 86                            // 6D56  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 87                            // 6D57  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 88                            // 6D58  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 89                            // 6D59  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 90                            // 6D5A  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 91                            // 6D5B  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 92                            // 6D5C  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 93                            // 6D5D  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 94                            // 6D5E  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 95                            // 6D5F  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 96                            // 6D60  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 97                            // 6D61  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 98                            // 6D62  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 99                            // 6D63  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 100                           // 6D64  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 101                           // 6D65  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 102                           // 6D66  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 103                           // 6D67  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 104                           // 6D68  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 105                           // 6D69  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 106                           // 6D6A  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 107                           // 6D6B  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 108                           // 6D6C  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 109                           // 6D6D  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 110                           // 6D6E  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 111                           // 6D6F  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 112                           // 6D70  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 113                           // 6D71  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 114                           // 6D72  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 115                           // 6D73  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 116                           // 6D74  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 117                           // 6D75  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 118                           // 6D76  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 119                           // 6D77  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 120                           // 6D78  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 121                           // 6D79  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 122                           // 6D7A  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 123                           // 6D7B  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 124                           // 6D7C  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 125                           // 6D7D  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 126                           // 6D7E  BLT.S     <label>
        b       blt_s
        addi    addr, pc, 127                           // 6D7F  BLT.S     <label>
        b       bcc_s_2

// ---- $6D80-$6DBF --------------------------------------------------------
        addi    addr, pc, -128                          // 6D80  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -127                          // 6D81  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -126                          // 6D82  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -125                          // 6D83  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -124                          // 6D84  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -123                          // 6D85  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -122                          // 6D86  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -121                          // 6D87  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -120                          // 6D88  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -119                          // 6D89  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -118                          // 6D8A  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -117                          // 6D8B  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -116                          // 6D8C  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -115                          // 6D8D  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -114                          // 6D8E  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -113                          // 6D8F  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -112                          // 6D90  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -111                          // 6D91  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -110                          // 6D92  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -109                          // 6D93  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -108                          // 6D94  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -107                          // 6D95  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -106                          // 6D96  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -105                          // 6D97  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -104                          // 6D98  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -103                          // 6D99  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -102                          // 6D9A  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -101                          // 6D9B  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -100                          // 6D9C  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -99                           // 6D9D  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -98                           // 6D9E  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -97                           // 6D9F  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -96                           // 6DA0  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -95                           // 6DA1  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -94                           // 6DA2  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -93                           // 6DA3  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -92                           // 6DA4  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -91                           // 6DA5  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -90                           // 6DA6  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -89                           // 6DA7  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -88                           // 6DA8  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -87                           // 6DA9  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -86                           // 6DAA  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -85                           // 6DAB  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -84                           // 6DAC  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -83                           // 6DAD  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -82                           // 6DAE  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -81                           // 6DAF  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -80                           // 6DB0  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -79                           // 6DB1  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -78                           // 6DB2  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -77                           // 6DB3  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -76                           // 6DB4  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -75                           // 6DB5  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -74                           // 6DB6  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -73                           // 6DB7  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -72                           // 6DB8  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -71                           // 6DB9  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -70                           // 6DBA  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -69                           // 6DBB  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -68                           // 6DBC  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -67                           // 6DBD  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -66                           // 6DBE  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -65                           // 6DBF  BLT.S     <label>
        b       bcc_s_2

// ---- $6DC0-$6DFF --------------------------------------------------------
        addi    addr, pc, -64                           // 6DC0  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -63                           // 6DC1  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -62                           // 6DC2  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -61                           // 6DC3  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -60                           // 6DC4  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -59                           // 6DC5  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -58                           // 6DC6  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -57                           // 6DC7  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -56                           // 6DC8  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -55                           // 6DC9  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -54                           // 6DCA  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -53                           // 6DCB  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -52                           // 6DCC  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -51                           // 6DCD  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -50                           // 6DCE  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -49                           // 6DCF  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -48                           // 6DD0  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -47                           // 6DD1  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -46                           // 6DD2  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -45                           // 6DD3  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -44                           // 6DD4  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -43                           // 6DD5  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -42                           // 6DD6  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -41                           // 6DD7  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -40                           // 6DD8  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -39                           // 6DD9  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -38                           // 6DDA  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -37                           // 6DDB  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -36                           // 6DDC  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -35                           // 6DDD  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -34                           // 6DDE  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -33                           // 6DDF  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -32                           // 6DE0  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -31                           // 6DE1  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -30                           // 6DE2  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -29                           // 6DE3  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -28                           // 6DE4  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -27                           // 6DE5  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -26                           // 6DE6  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -25                           // 6DE7  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -24                           // 6DE8  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -23                           // 6DE9  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -22                           // 6DEA  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -21                           // 6DEB  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -20                           // 6DEC  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -19                           // 6DED  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -18                           // 6DEE  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -17                           // 6DEF  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -16                           // 6DF0  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -15                           // 6DF1  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -14                           // 6DF2  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -13                           // 6DF3  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -12                           // 6DF4  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -11                           // 6DF5  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -10                           // 6DF6  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -9                            // 6DF7  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -8                            // 6DF8  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -7                            // 6DF9  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -6                            // 6DFA  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -5                            // 6DFB  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -4                            // 6DFC  BLT.S     <label>
        b       blt_s
        addi    addr, pc, -3                            // 6DFD  BLT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -2                            // 6DFE  BLT.S     <label>
        b       blt_s
        lha     immed_data, 4(pc)                       // 6DFF  BLT.L     <label>
        b       blt_l

// ---- $6E00-$6E3F --------------------------------------------------------
        lha     immed_data, 2(pc)                       // 6E00  BGT.W     <label>
        b       bgt_w
        addi    addr, pc, 1                             // 6E01  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 2                             // 6E02  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 3                             // 6E03  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 4                             // 6E04  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 5                             // 6E05  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 6                             // 6E06  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 7                             // 6E07  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 8                             // 6E08  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 9                             // 6E09  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 10                            // 6E0A  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 11                            // 6E0B  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 12                            // 6E0C  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 13                            // 6E0D  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 14                            // 6E0E  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 15                            // 6E0F  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 16                            // 6E10  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 17                            // 6E11  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 18                            // 6E12  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 19                            // 6E13  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 20                            // 6E14  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 21                            // 6E15  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 22                            // 6E16  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 23                            // 6E17  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 24                            // 6E18  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 25                            // 6E19  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 26                            // 6E1A  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 27                            // 6E1B  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 28                            // 6E1C  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 29                            // 6E1D  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 30                            // 6E1E  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 31                            // 6E1F  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 32                            // 6E20  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 33                            // 6E21  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 34                            // 6E22  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 35                            // 6E23  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 36                            // 6E24  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 37                            // 6E25  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 38                            // 6E26  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 39                            // 6E27  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 40                            // 6E28  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 41                            // 6E29  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 42                            // 6E2A  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 43                            // 6E2B  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 44                            // 6E2C  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 45                            // 6E2D  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 46                            // 6E2E  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 47                            // 6E2F  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 48                            // 6E30  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 49                            // 6E31  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 50                            // 6E32  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 51                            // 6E33  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 52                            // 6E34  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 53                            // 6E35  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 54                            // 6E36  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 55                            // 6E37  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 56                            // 6E38  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 57                            // 6E39  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 58                            // 6E3A  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 59                            // 6E3B  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 60                            // 6E3C  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 61                            // 6E3D  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 62                            // 6E3E  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 63                            // 6E3F  BGT.S     <label>
        b       bcc_s_2

// ---- $6E40-$6E7F --------------------------------------------------------
        addi    addr, pc, 64                            // 6E40  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 65                            // 6E41  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 66                            // 6E42  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 67                            // 6E43  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 68                            // 6E44  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 69                            // 6E45  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 70                            // 6E46  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 71                            // 6E47  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 72                            // 6E48  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 73                            // 6E49  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 74                            // 6E4A  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 75                            // 6E4B  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 76                            // 6E4C  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 77                            // 6E4D  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 78                            // 6E4E  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 79                            // 6E4F  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 80                            // 6E50  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 81                            // 6E51  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 82                            // 6E52  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 83                            // 6E53  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 84                            // 6E54  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 85                            // 6E55  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 86                            // 6E56  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 87                            // 6E57  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 88                            // 6E58  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 89                            // 6E59  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 90                            // 6E5A  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 91                            // 6E5B  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 92                            // 6E5C  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 93                            // 6E5D  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 94                            // 6E5E  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 95                            // 6E5F  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 96                            // 6E60  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 97                            // 6E61  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 98                            // 6E62  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 99                            // 6E63  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 100                           // 6E64  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 101                           // 6E65  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 102                           // 6E66  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 103                           // 6E67  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 104                           // 6E68  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 105                           // 6E69  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 106                           // 6E6A  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 107                           // 6E6B  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 108                           // 6E6C  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 109                           // 6E6D  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 110                           // 6E6E  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 111                           // 6E6F  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 112                           // 6E70  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 113                           // 6E71  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 114                           // 6E72  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 115                           // 6E73  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 116                           // 6E74  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 117                           // 6E75  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 118                           // 6E76  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 119                           // 6E77  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 120                           // 6E78  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 121                           // 6E79  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 122                           // 6E7A  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 123                           // 6E7B  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 124                           // 6E7C  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 125                           // 6E7D  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, 126                           // 6E7E  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, 127                           // 6E7F  BGT.S     <label>
        b       bcc_s_2

// ---- $6E80-$6EBF --------------------------------------------------------
        addi    addr, pc, -128                          // 6E80  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -127                          // 6E81  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -126                          // 6E82  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -125                          // 6E83  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -124                          // 6E84  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -123                          // 6E85  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -122                          // 6E86  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -121                          // 6E87  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -120                          // 6E88  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -119                          // 6E89  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -118                          // 6E8A  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -117                          // 6E8B  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -116                          // 6E8C  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -115                          // 6E8D  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -114                          // 6E8E  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -113                          // 6E8F  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -112                          // 6E90  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -111                          // 6E91  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -110                          // 6E92  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -109                          // 6E93  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -108                          // 6E94  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -107                          // 6E95  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -106                          // 6E96  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -105                          // 6E97  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -104                          // 6E98  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -103                          // 6E99  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -102                          // 6E9A  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -101                          // 6E9B  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -100                          // 6E9C  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -99                           // 6E9D  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -98                           // 6E9E  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -97                           // 6E9F  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -96                           // 6EA0  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -95                           // 6EA1  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -94                           // 6EA2  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -93                           // 6EA3  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -92                           // 6EA4  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -91                           // 6EA5  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -90                           // 6EA6  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -89                           // 6EA7  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -88                           // 6EA8  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -87                           // 6EA9  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -86                           // 6EAA  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -85                           // 6EAB  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -84                           // 6EAC  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -83                           // 6EAD  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -82                           // 6EAE  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -81                           // 6EAF  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -80                           // 6EB0  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -79                           // 6EB1  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -78                           // 6EB2  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -77                           // 6EB3  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -76                           // 6EB4  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -75                           // 6EB5  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -74                           // 6EB6  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -73                           // 6EB7  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -72                           // 6EB8  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -71                           // 6EB9  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -70                           // 6EBA  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -69                           // 6EBB  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -68                           // 6EBC  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -67                           // 6EBD  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -66                           // 6EBE  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -65                           // 6EBF  BGT.S     <label>
        b       bcc_s_2

// ---- $6EC0-$6EFF --------------------------------------------------------
        addi    addr, pc, -64                           // 6EC0  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -63                           // 6EC1  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -62                           // 6EC2  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -61                           // 6EC3  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -60                           // 6EC4  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -59                           // 6EC5  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -58                           // 6EC6  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -57                           // 6EC7  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -56                           // 6EC8  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -55                           // 6EC9  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -54                           // 6ECA  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -53                           // 6ECB  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -52                           // 6ECC  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -51                           // 6ECD  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -50                           // 6ECE  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -49                           // 6ECF  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -48                           // 6ED0  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -47                           // 6ED1  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -46                           // 6ED2  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -45                           // 6ED3  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -44                           // 6ED4  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -43                           // 6ED5  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -42                           // 6ED6  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -41                           // 6ED7  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -40                           // 6ED8  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -39                           // 6ED9  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -38                           // 6EDA  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -37                           // 6EDB  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -36                           // 6EDC  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -35                           // 6EDD  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -34                           // 6EDE  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -33                           // 6EDF  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -32                           // 6EE0  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -31                           // 6EE1  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -30                           // 6EE2  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -29                           // 6EE3  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -28                           // 6EE4  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -27                           // 6EE5  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -26                           // 6EE6  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -25                           // 6EE7  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -24                           // 6EE8  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -23                           // 6EE9  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -22                           // 6EEA  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -21                           // 6EEB  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -20                           // 6EEC  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -19                           // 6EED  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -18                           // 6EEE  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -17                           // 6EEF  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -16                           // 6EF0  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -15                           // 6EF1  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -14                           // 6EF2  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -13                           // 6EF3  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -12                           // 6EF4  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -11                           // 6EF5  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -10                           // 6EF6  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -9                            // 6EF7  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -8                            // 6EF8  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -7                            // 6EF9  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -6                            // 6EFA  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -5                            // 6EFB  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -4                            // 6EFC  BGT.S     <label>
        b       bgt_s
        addi    addr, pc, -3                            // 6EFD  BGT.S     <label>
        b       bcc_s_2
        addi    addr, pc, -2                            // 6EFE  BGT.S     <label>
        b       bgt_s
        lha     immed_data, 4(pc)                       // 6EFF  BGT.L     <label>
        b       bgt_l

// ---- $6F00-$6F3F --------------------------------------------------------
        lha     immed_data, 2(pc)                       // 6F00  BLE.W     <label>
        b       ble_w
        addi    addr, pc, 1                             // 6F01  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 2                             // 6F02  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 3                             // 6F03  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 4                             // 6F04  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 5                             // 6F05  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 6                             // 6F06  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 7                             // 6F07  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 8                             // 6F08  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 9                             // 6F09  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 10                            // 6F0A  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 11                            // 6F0B  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 12                            // 6F0C  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 13                            // 6F0D  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 14                            // 6F0E  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 15                            // 6F0F  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 16                            // 6F10  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 17                            // 6F11  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 18                            // 6F12  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 19                            // 6F13  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 20                            // 6F14  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 21                            // 6F15  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 22                            // 6F16  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 23                            // 6F17  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 24                            // 6F18  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 25                            // 6F19  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 26                            // 6F1A  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 27                            // 6F1B  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 28                            // 6F1C  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 29                            // 6F1D  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 30                            // 6F1E  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 31                            // 6F1F  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 32                            // 6F20  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 33                            // 6F21  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 34                            // 6F22  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 35                            // 6F23  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 36                            // 6F24  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 37                            // 6F25  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 38                            // 6F26  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 39                            // 6F27  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 40                            // 6F28  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 41                            // 6F29  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 42                            // 6F2A  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 43                            // 6F2B  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 44                            // 6F2C  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 45                            // 6F2D  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 46                            // 6F2E  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 47                            // 6F2F  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 48                            // 6F30  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 49                            // 6F31  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 50                            // 6F32  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 51                            // 6F33  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 52                            // 6F34  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 53                            // 6F35  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 54                            // 6F36  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 55                            // 6F37  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 56                            // 6F38  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 57                            // 6F39  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 58                            // 6F3A  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 59                            // 6F3B  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 60                            // 6F3C  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 61                            // 6F3D  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 62                            // 6F3E  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 63                            // 6F3F  BLE.S     <label>
        b       bcc_s_2

// ---- $6F40-$6F7F --------------------------------------------------------
        addi    addr, pc, 64                            // 6F40  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 65                            // 6F41  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 66                            // 6F42  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 67                            // 6F43  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 68                            // 6F44  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 69                            // 6F45  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 70                            // 6F46  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 71                            // 6F47  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 72                            // 6F48  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 73                            // 6F49  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 74                            // 6F4A  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 75                            // 6F4B  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 76                            // 6F4C  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 77                            // 6F4D  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 78                            // 6F4E  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 79                            // 6F4F  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 80                            // 6F50  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 81                            // 6F51  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 82                            // 6F52  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 83                            // 6F53  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 84                            // 6F54  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 85                            // 6F55  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 86                            // 6F56  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 87                            // 6F57  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 88                            // 6F58  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 89                            // 6F59  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 90                            // 6F5A  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 91                            // 6F5B  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 92                            // 6F5C  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 93                            // 6F5D  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 94                            // 6F5E  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 95                            // 6F5F  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 96                            // 6F60  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 97                            // 6F61  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 98                            // 6F62  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 99                            // 6F63  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 100                           // 6F64  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 101                           // 6F65  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 102                           // 6F66  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 103                           // 6F67  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 104                           // 6F68  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 105                           // 6F69  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 106                           // 6F6A  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 107                           // 6F6B  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 108                           // 6F6C  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 109                           // 6F6D  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 110                           // 6F6E  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 111                           // 6F6F  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 112                           // 6F70  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 113                           // 6F71  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 114                           // 6F72  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 115                           // 6F73  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 116                           // 6F74  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 117                           // 6F75  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 118                           // 6F76  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 119                           // 6F77  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 120                           // 6F78  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 121                           // 6F79  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 122                           // 6F7A  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 123                           // 6F7B  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 124                           // 6F7C  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 125                           // 6F7D  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, 126                           // 6F7E  BLE.S     <label>
        b       ble_s
        addi    addr, pc, 127                           // 6F7F  BLE.S     <label>
        b       bcc_s_2

// ---- $6F80-$6FBF --------------------------------------------------------
        addi    addr, pc, -128                          // 6F80  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -127                          // 6F81  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -126                          // 6F82  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -125                          // 6F83  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -124                          // 6F84  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -123                          // 6F85  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -122                          // 6F86  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -121                          // 6F87  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -120                          // 6F88  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -119                          // 6F89  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -118                          // 6F8A  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -117                          // 6F8B  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -116                          // 6F8C  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -115                          // 6F8D  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -114                          // 6F8E  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -113                          // 6F8F  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -112                          // 6F90  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -111                          // 6F91  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -110                          // 6F92  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -109                          // 6F93  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -108                          // 6F94  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -107                          // 6F95  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -106                          // 6F96  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -105                          // 6F97  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -104                          // 6F98  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -103                          // 6F99  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -102                          // 6F9A  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -101                          // 6F9B  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -100                          // 6F9C  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -99                           // 6F9D  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -98                           // 6F9E  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -97                           // 6F9F  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -96                           // 6FA0  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -95                           // 6FA1  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -94                           // 6FA2  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -93                           // 6FA3  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -92                           // 6FA4  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -91                           // 6FA5  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -90                           // 6FA6  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -89                           // 6FA7  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -88                           // 6FA8  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -87                           // 6FA9  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -86                           // 6FAA  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -85                           // 6FAB  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -84                           // 6FAC  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -83                           // 6FAD  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -82                           // 6FAE  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -81                           // 6FAF  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -80                           // 6FB0  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -79                           // 6FB1  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -78                           // 6FB2  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -77                           // 6FB3  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -76                           // 6FB4  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -75                           // 6FB5  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -74                           // 6FB6  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -73                           // 6FB7  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -72                           // 6FB8  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -71                           // 6FB9  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -70                           // 6FBA  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -69                           // 6FBB  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -68                           // 6FBC  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -67                           // 6FBD  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -66                           // 6FBE  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -65                           // 6FBF  BLE.S     <label>
        b       bcc_s_2

// ---- $6FC0-$6FFF --------------------------------------------------------
        addi    addr, pc, -64                           // 6FC0  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -63                           // 6FC1  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -62                           // 6FC2  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -61                           // 6FC3  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -60                           // 6FC4  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -59                           // 6FC5  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -58                           // 6FC6  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -57                           // 6FC7  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -56                           // 6FC8  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -55                           // 6FC9  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -54                           // 6FCA  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -53                           // 6FCB  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -52                           // 6FCC  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -51                           // 6FCD  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -50                           // 6FCE  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -49                           // 6FCF  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -48                           // 6FD0  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -47                           // 6FD1  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -46                           // 6FD2  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -45                           // 6FD3  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -44                           // 6FD4  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -43                           // 6FD5  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -42                           // 6FD6  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -41                           // 6FD7  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -40                           // 6FD8  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -39                           // 6FD9  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -38                           // 6FDA  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -37                           // 6FDB  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -36                           // 6FDC  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -35                           // 6FDD  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -34                           // 6FDE  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -33                           // 6FDF  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -32                           // 6FE0  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -31                           // 6FE1  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -30                           // 6FE2  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -29                           // 6FE3  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -28                           // 6FE4  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -27                           // 6FE5  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -26                           // 6FE6  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -25                           // 6FE7  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -24                           // 6FE8  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -23                           // 6FE9  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -22                           // 6FEA  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -21                           // 6FEB  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -20                           // 6FEC  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -19                           // 6FED  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -18                           // 6FEE  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -17                           // 6FEF  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -16                           // 6FF0  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -15                           // 6FF1  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -14                           // 6FF2  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -13                           // 6FF3  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -12                           // 6FF4  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -11                           // 6FF5  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -10                           // 6FF6  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -9                            // 6FF7  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -8                            // 6FF8  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -7                            // 6FF9  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -6                            // 6FFA  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -5                            // 6FFB  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -4                            // 6FFC  BLE.S     <label>
        b       ble_s
        addi    addr, pc, -3                            // 6FFD  BLE.S     <label>
        b       bcc_s_2
        addi    addr, pc, -2                            // 6FFE  BLE.S     <label>
        b       ble_s
        lha     immed_data, 4(pc)                       // 6FFF  BLE.L     <label>
        b       ble_l
