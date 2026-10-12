// LineA.S - offsets 70000-77FFF
//
// Names and comments are edited here.  After any change "make verify" must
// still report that the build is identical to Emulator.x.

// ---- $A000-$A03F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A000  A-LINE    $A000
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A001  A-LINE    $A001
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A002  A-LINE    $A002
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A003  A-LINE    $A003
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A004  A-LINE    $A004
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A005  A-LINE    $A005
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A006  A-LINE    $A006
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A007  A-LINE    $A007
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A008  A-LINE    $A008
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A009  A-LINE    $A009
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A00A  A-LINE    $A00A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A00B  A-LINE    $A00B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A00C  A-LINE    $A00C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A00D  A-LINE    $A00D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A00E  A-LINE    $A00E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A00F  A-LINE    $A00F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A010  A-LINE    $A010
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A011  A-LINE    $A011
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A012  A-LINE    $A012
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A013  A-LINE    $A013
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A014  A-LINE    $A014
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A015  A-LINE    $A015
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A016  A-LINE    $A016
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A017  A-LINE    $A017
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A018  A-LINE    $A018
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A019  A-LINE    $A019
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A01A  A-LINE    $A01A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A01B  A-LINE    $A01B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A01C  A-LINE    $A01C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A01D  A-LINE    $A01D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A01E  A-LINE    $A01E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A01F  A-LINE    $A01F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A020  A-LINE    $A020
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A021  A-LINE    $A021
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A022  A-LINE    $A022
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A023  A-LINE    $A023
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A024  A-LINE    $A024
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A025  A-LINE    $A025
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A026  A-LINE    $A026
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A027  A-LINE    $A027
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A028  A-LINE    $A028
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A029  A-LINE    $A029
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A02A  A-LINE    $A02A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A02B  A-LINE    $A02B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A02C  A-LINE    $A02C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A02D  A-LINE    $A02D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A02E  A-LINE    $A02E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A02F  A-LINE    $A02F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A030  A-LINE    $A030
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A031  A-LINE    $A031
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A032  A-LINE    $A032
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A033  A-LINE    $A033
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A034  A-LINE    $A034
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A035  A-LINE    $A035
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A036  A-LINE    $A036
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A037  A-LINE    $A037
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A038  A-LINE    $A038
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A039  A-LINE    $A039
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A03A  A-LINE    $A03A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A03B  A-LINE    $A03B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A03C  A-LINE    $A03C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A03D  A-LINE    $A03D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A03E  A-LINE    $A03E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A03F  A-LINE    $A03F
        b       aline_os_trap

// ---- $A040-$A07F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A040  A-LINE    $A040
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A041  A-LINE    $A041
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A042  A-LINE    $A042
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A043  A-LINE    $A043
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A044  A-LINE    $A044
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A045  A-LINE    $A045
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A046  A-LINE    $A046
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A047  A-LINE    $A047
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A048  A-LINE    $A048
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A049  A-LINE    $A049
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A04A  A-LINE    $A04A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A04B  A-LINE    $A04B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A04C  A-LINE    $A04C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A04D  A-LINE    $A04D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A04E  A-LINE    $A04E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A04F  A-LINE    $A04F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A050  A-LINE    $A050
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A051  A-LINE    $A051
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A052  A-LINE    $A052
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A053  A-LINE    $A053
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A054  A-LINE    $A054
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A055  A-LINE    $A055
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A056  A-LINE    $A056
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A057  A-LINE    $A057
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A058  A-LINE    $A058
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A059  A-LINE    $A059
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A05A  A-LINE    $A05A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A05B  A-LINE    $A05B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A05C  A-LINE    $A05C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A05D  A-LINE    $A05D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A05E  A-LINE    $A05E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A05F  A-LINE    $A05F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A060  A-LINE    $A060
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A061  A-LINE    $A061
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A062  A-LINE    $A062
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A063  A-LINE    $A063
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A064  A-LINE    $A064
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A065  A-LINE    $A065
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A066  A-LINE    $A066
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A067  A-LINE    $A067
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A068  A-LINE    $A068
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A069  A-LINE    $A069
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A06A  A-LINE    $A06A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A06B  A-LINE    $A06B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A06C  A-LINE    $A06C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A06D  A-LINE    $A06D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A06E  A-LINE    $A06E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A06F  A-LINE    $A06F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A070  A-LINE    $A070
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A071  A-LINE    $A071
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A072  A-LINE    $A072
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A073  A-LINE    $A073
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A074  A-LINE    $A074
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A075  A-LINE    $A075
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A076  A-LINE    $A076
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A077  A-LINE    $A077
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A078  A-LINE    $A078
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A079  A-LINE    $A079
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A07A  A-LINE    $A07A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A07B  A-LINE    $A07B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A07C  A-LINE    $A07C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A07D  A-LINE    $A07D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A07E  A-LINE    $A07E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A07F  A-LINE    $A07F
        b       aline_os_trap

// ---- $A080-$A0BF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A080  A-LINE    $A080
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A081  A-LINE    $A081
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A082  A-LINE    $A082
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A083  A-LINE    $A083
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A084  A-LINE    $A084
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A085  A-LINE    $A085
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A086  A-LINE    $A086
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A087  A-LINE    $A087
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A088  A-LINE    $A088
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A089  A-LINE    $A089
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A08A  A-LINE    $A08A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A08B  A-LINE    $A08B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A08C  A-LINE    $A08C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A08D  A-LINE    $A08D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A08E  A-LINE    $A08E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A08F  A-LINE    $A08F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A090  A-LINE    $A090
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A091  A-LINE    $A091
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A092  A-LINE    $A092
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A093  A-LINE    $A093
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A094  A-LINE    $A094
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A095  A-LINE    $A095
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A096  A-LINE    $A096
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A097  A-LINE    $A097
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A098  A-LINE    $A098
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A099  A-LINE    $A099
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A09A  A-LINE    $A09A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A09B  A-LINE    $A09B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A09C  A-LINE    $A09C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A09D  A-LINE    $A09D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A09E  A-LINE    $A09E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A09F  A-LINE    $A09F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0A0  A-LINE    $A0A0
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0A1  A-LINE    $A0A1
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0A2  A-LINE    $A0A2
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0A3  A-LINE    $A0A3
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0A4  A-LINE    $A0A4
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0A5  A-LINE    $A0A5
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0A6  A-LINE    $A0A6
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0A7  A-LINE    $A0A7
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0A8  A-LINE    $A0A8
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0A9  A-LINE    $A0A9
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0AA  A-LINE    $A0AA
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0AB  A-LINE    $A0AB
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0AC  A-LINE    $A0AC
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0AD  A-LINE    $A0AD
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0AE  A-LINE    $A0AE
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0AF  A-LINE    $A0AF
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0B0  A-LINE    $A0B0
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0B1  A-LINE    $A0B1
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0B2  A-LINE    $A0B2
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0B3  A-LINE    $A0B3
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0B4  A-LINE    $A0B4
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0B5  A-LINE    $A0B5
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0B6  A-LINE    $A0B6
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0B7  A-LINE    $A0B7
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0B8  A-LINE    $A0B8
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0B9  A-LINE    $A0B9
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0BA  A-LINE    $A0BA
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0BB  A-LINE    $A0BB
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0BC  A-LINE    $A0BC
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0BD  A-LINE    $A0BD
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0BE  A-LINE    $A0BE
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0BF  A-LINE    $A0BF
        b       aline_os_trap

// ---- $A0C0-$A0FF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0C0  A-LINE    $A0C0
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0C1  A-LINE    $A0C1
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0C2  A-LINE    $A0C2
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0C3  A-LINE    $A0C3
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0C4  A-LINE    $A0C4
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0C5  A-LINE    $A0C5
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0C6  A-LINE    $A0C6
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0C7  A-LINE    $A0C7
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0C8  A-LINE    $A0C8
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0C9  A-LINE    $A0C9
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0CA  A-LINE    $A0CA
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0CB  A-LINE    $A0CB
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0CC  A-LINE    $A0CC
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0CD  A-LINE    $A0CD
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0CE  A-LINE    $A0CE
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0CF  A-LINE    $A0CF
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0D0  A-LINE    $A0D0
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0D1  A-LINE    $A0D1
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0D2  A-LINE    $A0D2
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0D3  A-LINE    $A0D3
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0D4  A-LINE    $A0D4
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0D5  A-LINE    $A0D5
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0D6  A-LINE    $A0D6
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0D7  A-LINE    $A0D7
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0D8  A-LINE    $A0D8
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0D9  A-LINE    $A0D9
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0DA  A-LINE    $A0DA
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0DB  A-LINE    $A0DB
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0DC  A-LINE    $A0DC
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0DD  A-LINE    $A0DD
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0DE  A-LINE    $A0DE
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0DF  A-LINE    $A0DF
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0E0  A-LINE    $A0E0
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0E1  A-LINE    $A0E1
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0E2  A-LINE    $A0E2
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0E3  A-LINE    $A0E3
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0E4  A-LINE    $A0E4
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0E5  A-LINE    $A0E5
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0E6  A-LINE    $A0E6
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0E7  A-LINE    $A0E7
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0E8  A-LINE    $A0E8
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0E9  A-LINE    $A0E9
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0EA  A-LINE    $A0EA
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0EB  A-LINE    $A0EB
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0EC  A-LINE    $A0EC
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0ED  A-LINE    $A0ED
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0EE  A-LINE    $A0EE
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0EF  A-LINE    $A0EF
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0F0  A-LINE    $A0F0
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0F1  A-LINE    $A0F1
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0F2  A-LINE    $A0F2
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0F3  A-LINE    $A0F3
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0F4  A-LINE    $A0F4
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0F5  A-LINE    $A0F5
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0F6  A-LINE    $A0F6
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0F7  A-LINE    $A0F7
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0F8  A-LINE    $A0F8
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0F9  A-LINE    $A0F9
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0FA  A-LINE    $A0FA
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0FB  A-LINE    $A0FB
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0FC  A-LINE    $A0FC
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0FD  A-LINE    $A0FD
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0FE  A-LINE    $A0FE
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A0FF  A-LINE    $A0FF
        b       aline_os_trap

// ---- $A100-$A13F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A100  A-LINE    $A100
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A101  A-LINE    $A101
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A102  A-LINE    $A102
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A103  A-LINE    $A103
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A104  A-LINE    $A104
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A105  A-LINE    $A105
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A106  A-LINE    $A106
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A107  A-LINE    $A107
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A108  A-LINE    $A108
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A109  A-LINE    $A109
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A10A  A-LINE    $A10A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A10B  A-LINE    $A10B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A10C  A-LINE    $A10C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A10D  A-LINE    $A10D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A10E  A-LINE    $A10E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A10F  A-LINE    $A10F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A110  A-LINE    $A110
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A111  A-LINE    $A111
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A112  A-LINE    $A112
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A113  A-LINE    $A113
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A114  A-LINE    $A114
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A115  A-LINE    $A115
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A116  A-LINE    $A116
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A117  A-LINE    $A117
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A118  A-LINE    $A118
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A119  A-LINE    $A119
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A11A  A-LINE    $A11A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A11B  A-LINE    $A11B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A11C  A-LINE    $A11C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A11D  A-LINE    $A11D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A11E  A-LINE    $A11E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A11F  A-LINE    $A11F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A120  A-LINE    $A120
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A121  A-LINE    $A121
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A122  A-LINE    $A122
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A123  A-LINE    $A123
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A124  A-LINE    $A124
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A125  A-LINE    $A125
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A126  A-LINE    $A126
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A127  A-LINE    $A127
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A128  A-LINE    $A128
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A129  A-LINE    $A129
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A12A  A-LINE    $A12A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A12B  A-LINE    $A12B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A12C  A-LINE    $A12C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A12D  A-LINE    $A12D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A12E  A-LINE    $A12E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A12F  A-LINE    $A12F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A130  A-LINE    $A130
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A131  A-LINE    $A131
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A132  A-LINE    $A132
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A133  A-LINE    $A133
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A134  A-LINE    $A134
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A135  A-LINE    $A135
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A136  A-LINE    $A136
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A137  A-LINE    $A137
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A138  A-LINE    $A138
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A139  A-LINE    $A139
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A13A  A-LINE    $A13A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A13B  A-LINE    $A13B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A13C  A-LINE    $A13C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A13D  A-LINE    $A13D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A13E  A-LINE    $A13E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A13F  A-LINE    $A13F
        b       aline_os_trap_alt

// ---- $A140-$A17F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A140  A-LINE    $A140
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A141  A-LINE    $A141
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A142  A-LINE    $A142
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A143  A-LINE    $A143
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A144  A-LINE    $A144
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A145  A-LINE    $A145
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A146  A-LINE    $A146
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A147  A-LINE    $A147
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A148  A-LINE    $A148
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A149  A-LINE    $A149
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A14A  A-LINE    $A14A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A14B  A-LINE    $A14B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A14C  A-LINE    $A14C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A14D  A-LINE    $A14D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A14E  A-LINE    $A14E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A14F  A-LINE    $A14F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A150  A-LINE    $A150
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A151  A-LINE    $A151
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A152  A-LINE    $A152
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A153  A-LINE    $A153
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A154  A-LINE    $A154
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A155  A-LINE    $A155
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A156  A-LINE    $A156
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A157  A-LINE    $A157
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A158  A-LINE    $A158
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A159  A-LINE    $A159
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A15A  A-LINE    $A15A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A15B  A-LINE    $A15B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A15C  A-LINE    $A15C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A15D  A-LINE    $A15D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A15E  A-LINE    $A15E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A15F  A-LINE    $A15F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A160  A-LINE    $A160
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A161  A-LINE    $A161
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A162  A-LINE    $A162
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A163  A-LINE    $A163
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A164  A-LINE    $A164
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A165  A-LINE    $A165
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A166  A-LINE    $A166
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A167  A-LINE    $A167
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A168  A-LINE    $A168
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A169  A-LINE    $A169
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A16A  A-LINE    $A16A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A16B  A-LINE    $A16B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A16C  A-LINE    $A16C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A16D  A-LINE    $A16D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A16E  A-LINE    $A16E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A16F  A-LINE    $A16F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A170  A-LINE    $A170
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A171  A-LINE    $A171
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A172  A-LINE    $A172
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A173  A-LINE    $A173
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A174  A-LINE    $A174
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A175  A-LINE    $A175
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A176  A-LINE    $A176
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A177  A-LINE    $A177
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A178  A-LINE    $A178
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A179  A-LINE    $A179
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A17A  A-LINE    $A17A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A17B  A-LINE    $A17B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A17C  A-LINE    $A17C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A17D  A-LINE    $A17D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A17E  A-LINE    $A17E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A17F  A-LINE    $A17F
        b       aline_os_trap_alt

// ---- $A180-$A1BF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A180  A-LINE    $A180
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A181  A-LINE    $A181
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A182  A-LINE    $A182
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A183  A-LINE    $A183
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A184  A-LINE    $A184
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A185  A-LINE    $A185
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A186  A-LINE    $A186
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A187  A-LINE    $A187
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A188  A-LINE    $A188
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A189  A-LINE    $A189
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A18A  A-LINE    $A18A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A18B  A-LINE    $A18B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A18C  A-LINE    $A18C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A18D  A-LINE    $A18D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A18E  A-LINE    $A18E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A18F  A-LINE    $A18F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A190  A-LINE    $A190
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A191  A-LINE    $A191
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A192  A-LINE    $A192
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A193  A-LINE    $A193
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A194  A-LINE    $A194
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A195  A-LINE    $A195
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A196  A-LINE    $A196
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A197  A-LINE    $A197
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A198  A-LINE    $A198
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A199  A-LINE    $A199
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A19A  A-LINE    $A19A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A19B  A-LINE    $A19B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A19C  A-LINE    $A19C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A19D  A-LINE    $A19D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A19E  A-LINE    $A19E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A19F  A-LINE    $A19F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1A0  A-LINE    $A1A0
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1A1  A-LINE    $A1A1
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1A2  A-LINE    $A1A2
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1A3  A-LINE    $A1A3
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1A4  A-LINE    $A1A4
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1A5  A-LINE    $A1A5
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1A6  A-LINE    $A1A6
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1A7  A-LINE    $A1A7
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1A8  A-LINE    $A1A8
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1A9  A-LINE    $A1A9
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1AA  A-LINE    $A1AA
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1AB  A-LINE    $A1AB
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1AC  A-LINE    $A1AC
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1AD  A-LINE    $A1AD
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1AE  A-LINE    $A1AE
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1AF  A-LINE    $A1AF
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1B0  A-LINE    $A1B0
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1B1  A-LINE    $A1B1
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1B2  A-LINE    $A1B2
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1B3  A-LINE    $A1B3
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1B4  A-LINE    $A1B4
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1B5  A-LINE    $A1B5
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1B6  A-LINE    $A1B6
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1B7  A-LINE    $A1B7
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1B8  A-LINE    $A1B8
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1B9  A-LINE    $A1B9
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1BA  A-LINE    $A1BA
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1BB  A-LINE    $A1BB
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1BC  A-LINE    $A1BC
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1BD  A-LINE    $A1BD
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1BE  A-LINE    $A1BE
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1BF  A-LINE    $A1BF
        b       aline_os_trap_alt

// ---- $A1C0-$A1FF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1C0  A-LINE    $A1C0
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1C1  A-LINE    $A1C1
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1C2  A-LINE    $A1C2
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1C3  A-LINE    $A1C3
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1C4  A-LINE    $A1C4
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1C5  A-LINE    $A1C5
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1C6  A-LINE    $A1C6
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1C7  A-LINE    $A1C7
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1C8  A-LINE    $A1C8
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1C9  A-LINE    $A1C9
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1CA  A-LINE    $A1CA
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1CB  A-LINE    $A1CB
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1CC  A-LINE    $A1CC
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1CD  A-LINE    $A1CD
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1CE  A-LINE    $A1CE
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1CF  A-LINE    $A1CF
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1D0  A-LINE    $A1D0
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1D1  A-LINE    $A1D1
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1D2  A-LINE    $A1D2
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1D3  A-LINE    $A1D3
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1D4  A-LINE    $A1D4
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1D5  A-LINE    $A1D5
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1D6  A-LINE    $A1D6
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1D7  A-LINE    $A1D7
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1D8  A-LINE    $A1D8
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1D9  A-LINE    $A1D9
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1DA  A-LINE    $A1DA
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1DB  A-LINE    $A1DB
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1DC  A-LINE    $A1DC
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1DD  A-LINE    $A1DD
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1DE  A-LINE    $A1DE
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1DF  A-LINE    $A1DF
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1E0  A-LINE    $A1E0
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1E1  A-LINE    $A1E1
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1E2  A-LINE    $A1E2
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1E3  A-LINE    $A1E3
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1E4  A-LINE    $A1E4
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1E5  A-LINE    $A1E5
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1E6  A-LINE    $A1E6
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1E7  A-LINE    $A1E7
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1E8  A-LINE    $A1E8
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1E9  A-LINE    $A1E9
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1EA  A-LINE    $A1EA
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1EB  A-LINE    $A1EB
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1EC  A-LINE    $A1EC
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1ED  A-LINE    $A1ED
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1EE  A-LINE    $A1EE
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1EF  A-LINE    $A1EF
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1F0  A-LINE    $A1F0
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1F1  A-LINE    $A1F1
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1F2  A-LINE    $A1F2
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1F3  A-LINE    $A1F3
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1F4  A-LINE    $A1F4
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1F5  A-LINE    $A1F5
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1F6  A-LINE    $A1F6
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1F7  A-LINE    $A1F7
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1F8  A-LINE    $A1F8
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1F9  A-LINE    $A1F9
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1FA  A-LINE    $A1FA
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1FB  A-LINE    $A1FB
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1FC  A-LINE    $A1FC
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1FD  A-LINE    $A1FD
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1FE  A-LINE    $A1FE
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A1FF  A-LINE    $A1FF
        b       aline_os_trap_alt

// ---- $A200-$A23F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A200  A-LINE    $A200
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A201  A-LINE    $A201
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A202  A-LINE    $A202
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A203  A-LINE    $A203
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A204  A-LINE    $A204
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A205  A-LINE    $A205
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A206  A-LINE    $A206
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A207  A-LINE    $A207
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A208  A-LINE    $A208
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A209  A-LINE    $A209
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A20A  A-LINE    $A20A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A20B  A-LINE    $A20B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A20C  A-LINE    $A20C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A20D  A-LINE    $A20D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A20E  A-LINE    $A20E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A20F  A-LINE    $A20F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A210  A-LINE    $A210
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A211  A-LINE    $A211
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A212  A-LINE    $A212
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A213  A-LINE    $A213
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A214  A-LINE    $A214
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A215  A-LINE    $A215
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A216  A-LINE    $A216
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A217  A-LINE    $A217
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A218  A-LINE    $A218
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A219  A-LINE    $A219
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A21A  A-LINE    $A21A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A21B  A-LINE    $A21B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A21C  A-LINE    $A21C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A21D  A-LINE    $A21D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A21E  A-LINE    $A21E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A21F  A-LINE    $A21F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A220  A-LINE    $A220
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A221  A-LINE    $A221
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A222  A-LINE    $A222
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A223  A-LINE    $A223
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A224  A-LINE    $A224
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A225  A-LINE    $A225
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A226  A-LINE    $A226
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A227  A-LINE    $A227
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A228  A-LINE    $A228
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A229  A-LINE    $A229
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A22A  A-LINE    $A22A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A22B  A-LINE    $A22B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A22C  A-LINE    $A22C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A22D  A-LINE    $A22D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A22E  A-LINE    $A22E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A22F  A-LINE    $A22F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A230  A-LINE    $A230
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A231  A-LINE    $A231
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A232  A-LINE    $A232
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A233  A-LINE    $A233
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A234  A-LINE    $A234
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A235  A-LINE    $A235
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A236  A-LINE    $A236
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A237  A-LINE    $A237
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A238  A-LINE    $A238
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A239  A-LINE    $A239
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A23A  A-LINE    $A23A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A23B  A-LINE    $A23B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A23C  A-LINE    $A23C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A23D  A-LINE    $A23D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A23E  A-LINE    $A23E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A23F  A-LINE    $A23F
        b       aline_os_trap

// ---- $A240-$A27F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A240  A-LINE    $A240
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A241  A-LINE    $A241
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A242  A-LINE    $A242
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A243  A-LINE    $A243
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A244  A-LINE    $A244
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A245  A-LINE    $A245
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A246  A-LINE    $A246
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A247  A-LINE    $A247
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A248  A-LINE    $A248
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A249  A-LINE    $A249
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A24A  A-LINE    $A24A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A24B  A-LINE    $A24B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A24C  A-LINE    $A24C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A24D  A-LINE    $A24D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A24E  A-LINE    $A24E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A24F  A-LINE    $A24F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A250  A-LINE    $A250
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A251  A-LINE    $A251
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A252  A-LINE    $A252
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A253  A-LINE    $A253
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A254  A-LINE    $A254
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A255  A-LINE    $A255
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A256  A-LINE    $A256
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A257  A-LINE    $A257
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A258  A-LINE    $A258
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A259  A-LINE    $A259
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A25A  A-LINE    $A25A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A25B  A-LINE    $A25B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A25C  A-LINE    $A25C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A25D  A-LINE    $A25D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A25E  A-LINE    $A25E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A25F  A-LINE    $A25F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A260  A-LINE    $A260
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A261  A-LINE    $A261
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A262  A-LINE    $A262
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A263  A-LINE    $A263
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A264  A-LINE    $A264
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A265  A-LINE    $A265
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A266  A-LINE    $A266
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A267  A-LINE    $A267
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A268  A-LINE    $A268
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A269  A-LINE    $A269
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A26A  A-LINE    $A26A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A26B  A-LINE    $A26B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A26C  A-LINE    $A26C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A26D  A-LINE    $A26D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A26E  A-LINE    $A26E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A26F  A-LINE    $A26F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A270  A-LINE    $A270
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A271  A-LINE    $A271
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A272  A-LINE    $A272
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A273  A-LINE    $A273
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A274  A-LINE    $A274
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A275  A-LINE    $A275
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A276  A-LINE    $A276
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A277  A-LINE    $A277
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A278  A-LINE    $A278
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A279  A-LINE    $A279
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A27A  A-LINE    $A27A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A27B  A-LINE    $A27B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A27C  A-LINE    $A27C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A27D  A-LINE    $A27D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A27E  A-LINE    $A27E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A27F  A-LINE    $A27F
        b       aline_os_trap

// ---- $A280-$A2BF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A280  A-LINE    $A280
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A281  A-LINE    $A281
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A282  A-LINE    $A282
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A283  A-LINE    $A283
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A284  A-LINE    $A284
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A285  A-LINE    $A285
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A286  A-LINE    $A286
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A287  A-LINE    $A287
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A288  A-LINE    $A288
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A289  A-LINE    $A289
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A28A  A-LINE    $A28A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A28B  A-LINE    $A28B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A28C  A-LINE    $A28C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A28D  A-LINE    $A28D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A28E  A-LINE    $A28E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A28F  A-LINE    $A28F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A290  A-LINE    $A290
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A291  A-LINE    $A291
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A292  A-LINE    $A292
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A293  A-LINE    $A293
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A294  A-LINE    $A294
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A295  A-LINE    $A295
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A296  A-LINE    $A296
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A297  A-LINE    $A297
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A298  A-LINE    $A298
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A299  A-LINE    $A299
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A29A  A-LINE    $A29A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A29B  A-LINE    $A29B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A29C  A-LINE    $A29C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A29D  A-LINE    $A29D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A29E  A-LINE    $A29E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A29F  A-LINE    $A29F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2A0  A-LINE    $A2A0
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2A1  A-LINE    $A2A1
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2A2  A-LINE    $A2A2
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2A3  A-LINE    $A2A3
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2A4  A-LINE    $A2A4
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2A5  A-LINE    $A2A5
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2A6  A-LINE    $A2A6
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2A7  A-LINE    $A2A7
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2A8  A-LINE    $A2A8
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2A9  A-LINE    $A2A9
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2AA  A-LINE    $A2AA
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2AB  A-LINE    $A2AB
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2AC  A-LINE    $A2AC
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2AD  A-LINE    $A2AD
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2AE  A-LINE    $A2AE
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2AF  A-LINE    $A2AF
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2B0  A-LINE    $A2B0
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2B1  A-LINE    $A2B1
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2B2  A-LINE    $A2B2
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2B3  A-LINE    $A2B3
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2B4  A-LINE    $A2B4
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2B5  A-LINE    $A2B5
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2B6  A-LINE    $A2B6
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2B7  A-LINE    $A2B7
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2B8  A-LINE    $A2B8
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2B9  A-LINE    $A2B9
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2BA  A-LINE    $A2BA
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2BB  A-LINE    $A2BB
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2BC  A-LINE    $A2BC
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2BD  A-LINE    $A2BD
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2BE  A-LINE    $A2BE
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2BF  A-LINE    $A2BF
        b       aline_os_trap

// ---- $A2C0-$A2FF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2C0  A-LINE    $A2C0
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2C1  A-LINE    $A2C1
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2C2  A-LINE    $A2C2
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2C3  A-LINE    $A2C3
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2C4  A-LINE    $A2C4
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2C5  A-LINE    $A2C5
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2C6  A-LINE    $A2C6
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2C7  A-LINE    $A2C7
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2C8  A-LINE    $A2C8
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2C9  A-LINE    $A2C9
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2CA  A-LINE    $A2CA
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2CB  A-LINE    $A2CB
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2CC  A-LINE    $A2CC
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2CD  A-LINE    $A2CD
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2CE  A-LINE    $A2CE
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2CF  A-LINE    $A2CF
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2D0  A-LINE    $A2D0
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2D1  A-LINE    $A2D1
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2D2  A-LINE    $A2D2
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2D3  A-LINE    $A2D3
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2D4  A-LINE    $A2D4
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2D5  A-LINE    $A2D5
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2D6  A-LINE    $A2D6
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2D7  A-LINE    $A2D7
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2D8  A-LINE    $A2D8
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2D9  A-LINE    $A2D9
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2DA  A-LINE    $A2DA
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2DB  A-LINE    $A2DB
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2DC  A-LINE    $A2DC
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2DD  A-LINE    $A2DD
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2DE  A-LINE    $A2DE
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2DF  A-LINE    $A2DF
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2E0  A-LINE    $A2E0
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2E1  A-LINE    $A2E1
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2E2  A-LINE    $A2E2
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2E3  A-LINE    $A2E3
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2E4  A-LINE    $A2E4
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2E5  A-LINE    $A2E5
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2E6  A-LINE    $A2E6
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2E7  A-LINE    $A2E7
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2E8  A-LINE    $A2E8
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2E9  A-LINE    $A2E9
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2EA  A-LINE    $A2EA
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2EB  A-LINE    $A2EB
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2EC  A-LINE    $A2EC
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2ED  A-LINE    $A2ED
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2EE  A-LINE    $A2EE
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2EF  A-LINE    $A2EF
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2F0  A-LINE    $A2F0
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2F1  A-LINE    $A2F1
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2F2  A-LINE    $A2F2
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2F3  A-LINE    $A2F3
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2F4  A-LINE    $A2F4
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2F5  A-LINE    $A2F5
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2F6  A-LINE    $A2F6
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2F7  A-LINE    $A2F7
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2F8  A-LINE    $A2F8
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2F9  A-LINE    $A2F9
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2FA  A-LINE    $A2FA
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2FB  A-LINE    $A2FB
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2FC  A-LINE    $A2FC
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2FD  A-LINE    $A2FD
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2FE  A-LINE    $A2FE
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A2FF  A-LINE    $A2FF
        b       aline_os_trap

// ---- $A300-$A33F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A300  A-LINE    $A300
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A301  A-LINE    $A301
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A302  A-LINE    $A302
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A303  A-LINE    $A303
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A304  A-LINE    $A304
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A305  A-LINE    $A305
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A306  A-LINE    $A306
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A307  A-LINE    $A307
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A308  A-LINE    $A308
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A309  A-LINE    $A309
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A30A  A-LINE    $A30A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A30B  A-LINE    $A30B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A30C  A-LINE    $A30C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A30D  A-LINE    $A30D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A30E  A-LINE    $A30E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A30F  A-LINE    $A30F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A310  A-LINE    $A310
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A311  A-LINE    $A311
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A312  A-LINE    $A312
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A313  A-LINE    $A313
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A314  A-LINE    $A314
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A315  A-LINE    $A315
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A316  A-LINE    $A316
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A317  A-LINE    $A317
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A318  A-LINE    $A318
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A319  A-LINE    $A319
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A31A  A-LINE    $A31A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A31B  A-LINE    $A31B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A31C  A-LINE    $A31C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A31D  A-LINE    $A31D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A31E  A-LINE    $A31E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A31F  A-LINE    $A31F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A320  A-LINE    $A320
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A321  A-LINE    $A321
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A322  A-LINE    $A322
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A323  A-LINE    $A323
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A324  A-LINE    $A324
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A325  A-LINE    $A325
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A326  A-LINE    $A326
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A327  A-LINE    $A327
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A328  A-LINE    $A328
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A329  A-LINE    $A329
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A32A  A-LINE    $A32A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A32B  A-LINE    $A32B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A32C  A-LINE    $A32C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A32D  A-LINE    $A32D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A32E  A-LINE    $A32E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A32F  A-LINE    $A32F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A330  A-LINE    $A330
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A331  A-LINE    $A331
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A332  A-LINE    $A332
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A333  A-LINE    $A333
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A334  A-LINE    $A334
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A335  A-LINE    $A335
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A336  A-LINE    $A336
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A337  A-LINE    $A337
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A338  A-LINE    $A338
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A339  A-LINE    $A339
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A33A  A-LINE    $A33A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A33B  A-LINE    $A33B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A33C  A-LINE    $A33C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A33D  A-LINE    $A33D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A33E  A-LINE    $A33E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A33F  A-LINE    $A33F
        b       aline_os_trap_alt

// ---- $A340-$A37F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A340  A-LINE    $A340
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A341  A-LINE    $A341
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A342  A-LINE    $A342
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A343  A-LINE    $A343
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A344  A-LINE    $A344
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A345  A-LINE    $A345
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A346  A-LINE    $A346
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A347  A-LINE    $A347
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A348  A-LINE    $A348
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A349  A-LINE    $A349
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A34A  A-LINE    $A34A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A34B  A-LINE    $A34B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A34C  A-LINE    $A34C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A34D  A-LINE    $A34D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A34E  A-LINE    $A34E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A34F  A-LINE    $A34F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A350  A-LINE    $A350
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A351  A-LINE    $A351
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A352  A-LINE    $A352
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A353  A-LINE    $A353
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A354  A-LINE    $A354
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A355  A-LINE    $A355
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A356  A-LINE    $A356
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A357  A-LINE    $A357
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A358  A-LINE    $A358
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A359  A-LINE    $A359
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A35A  A-LINE    $A35A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A35B  A-LINE    $A35B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A35C  A-LINE    $A35C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A35D  A-LINE    $A35D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A35E  A-LINE    $A35E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A35F  A-LINE    $A35F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A360  A-LINE    $A360
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A361  A-LINE    $A361
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A362  A-LINE    $A362
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A363  A-LINE    $A363
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A364  A-LINE    $A364
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A365  A-LINE    $A365
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A366  A-LINE    $A366
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A367  A-LINE    $A367
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A368  A-LINE    $A368
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A369  A-LINE    $A369
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A36A  A-LINE    $A36A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A36B  A-LINE    $A36B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A36C  A-LINE    $A36C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A36D  A-LINE    $A36D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A36E  A-LINE    $A36E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A36F  A-LINE    $A36F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A370  A-LINE    $A370
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A371  A-LINE    $A371
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A372  A-LINE    $A372
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A373  A-LINE    $A373
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A374  A-LINE    $A374
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A375  A-LINE    $A375
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A376  A-LINE    $A376
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A377  A-LINE    $A377
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A378  A-LINE    $A378
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A379  A-LINE    $A379
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A37A  A-LINE    $A37A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A37B  A-LINE    $A37B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A37C  A-LINE    $A37C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A37D  A-LINE    $A37D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A37E  A-LINE    $A37E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A37F  A-LINE    $A37F
        b       aline_os_trap_alt

// ---- $A380-$A3BF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A380  A-LINE    $A380
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A381  A-LINE    $A381
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A382  A-LINE    $A382
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A383  A-LINE    $A383
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A384  A-LINE    $A384
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A385  A-LINE    $A385
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A386  A-LINE    $A386
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A387  A-LINE    $A387
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A388  A-LINE    $A388
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A389  A-LINE    $A389
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A38A  A-LINE    $A38A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A38B  A-LINE    $A38B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A38C  A-LINE    $A38C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A38D  A-LINE    $A38D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A38E  A-LINE    $A38E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A38F  A-LINE    $A38F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A390  A-LINE    $A390
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A391  A-LINE    $A391
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A392  A-LINE    $A392
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A393  A-LINE    $A393
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A394  A-LINE    $A394
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A395  A-LINE    $A395
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A396  A-LINE    $A396
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A397  A-LINE    $A397
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A398  A-LINE    $A398
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A399  A-LINE    $A399
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A39A  A-LINE    $A39A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A39B  A-LINE    $A39B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A39C  A-LINE    $A39C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A39D  A-LINE    $A39D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A39E  A-LINE    $A39E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A39F  A-LINE    $A39F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3A0  A-LINE    $A3A0
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3A1  A-LINE    $A3A1
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3A2  A-LINE    $A3A2
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3A3  A-LINE    $A3A3
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3A4  A-LINE    $A3A4
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3A5  A-LINE    $A3A5
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3A6  A-LINE    $A3A6
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3A7  A-LINE    $A3A7
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3A8  A-LINE    $A3A8
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3A9  A-LINE    $A3A9
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3AA  A-LINE    $A3AA
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3AB  A-LINE    $A3AB
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3AC  A-LINE    $A3AC
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3AD  A-LINE    $A3AD
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3AE  A-LINE    $A3AE
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3AF  A-LINE    $A3AF
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3B0  A-LINE    $A3B0
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3B1  A-LINE    $A3B1
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3B2  A-LINE    $A3B2
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3B3  A-LINE    $A3B3
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3B4  A-LINE    $A3B4
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3B5  A-LINE    $A3B5
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3B6  A-LINE    $A3B6
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3B7  A-LINE    $A3B7
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3B8  A-LINE    $A3B8
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3B9  A-LINE    $A3B9
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3BA  A-LINE    $A3BA
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3BB  A-LINE    $A3BB
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3BC  A-LINE    $A3BC
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3BD  A-LINE    $A3BD
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3BE  A-LINE    $A3BE
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3BF  A-LINE    $A3BF
        b       aline_os_trap_alt

// ---- $A3C0-$A3FF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3C0  A-LINE    $A3C0
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3C1  A-LINE    $A3C1
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3C2  A-LINE    $A3C2
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3C3  A-LINE    $A3C3
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3C4  A-LINE    $A3C4
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3C5  A-LINE    $A3C5
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3C6  A-LINE    $A3C6
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3C7  A-LINE    $A3C7
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3C8  A-LINE    $A3C8
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3C9  A-LINE    $A3C9
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3CA  A-LINE    $A3CA
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3CB  A-LINE    $A3CB
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3CC  A-LINE    $A3CC
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3CD  A-LINE    $A3CD
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3CE  A-LINE    $A3CE
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3CF  A-LINE    $A3CF
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3D0  A-LINE    $A3D0
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3D1  A-LINE    $A3D1
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3D2  A-LINE    $A3D2
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3D3  A-LINE    $A3D3
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3D4  A-LINE    $A3D4
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3D5  A-LINE    $A3D5
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3D6  A-LINE    $A3D6
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3D7  A-LINE    $A3D7
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3D8  A-LINE    $A3D8
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3D9  A-LINE    $A3D9
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3DA  A-LINE    $A3DA
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3DB  A-LINE    $A3DB
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3DC  A-LINE    $A3DC
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3DD  A-LINE    $A3DD
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3DE  A-LINE    $A3DE
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3DF  A-LINE    $A3DF
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3E0  A-LINE    $A3E0
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3E1  A-LINE    $A3E1
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3E2  A-LINE    $A3E2
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3E3  A-LINE    $A3E3
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3E4  A-LINE    $A3E4
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3E5  A-LINE    $A3E5
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3E6  A-LINE    $A3E6
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3E7  A-LINE    $A3E7
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3E8  A-LINE    $A3E8
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3E9  A-LINE    $A3E9
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3EA  A-LINE    $A3EA
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3EB  A-LINE    $A3EB
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3EC  A-LINE    $A3EC
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3ED  A-LINE    $A3ED
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3EE  A-LINE    $A3EE
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3EF  A-LINE    $A3EF
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3F0  A-LINE    $A3F0
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3F1  A-LINE    $A3F1
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3F2  A-LINE    $A3F2
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3F3  A-LINE    $A3F3
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3F4  A-LINE    $A3F4
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3F5  A-LINE    $A3F5
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3F6  A-LINE    $A3F6
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3F7  A-LINE    $A3F7
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3F8  A-LINE    $A3F8
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3F9  A-LINE    $A3F9
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3FA  A-LINE    $A3FA
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3FB  A-LINE    $A3FB
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3FC  A-LINE    $A3FC
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3FD  A-LINE    $A3FD
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3FE  A-LINE    $A3FE
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A3FF  A-LINE    $A3FF
        b       aline_os_trap_alt

// ---- $A400-$A43F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A400  A-LINE    $A400
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A401  A-LINE    $A401
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A402  A-LINE    $A402
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A403  A-LINE    $A403
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A404  A-LINE    $A404
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A405  A-LINE    $A405
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A406  A-LINE    $A406
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A407  A-LINE    $A407
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A408  A-LINE    $A408
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A409  A-LINE    $A409
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A40A  A-LINE    $A40A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A40B  A-LINE    $A40B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A40C  A-LINE    $A40C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A40D  A-LINE    $A40D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A40E  A-LINE    $A40E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A40F  A-LINE    $A40F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A410  A-LINE    $A410
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A411  A-LINE    $A411
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A412  A-LINE    $A412
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A413  A-LINE    $A413
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A414  A-LINE    $A414
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A415  A-LINE    $A415
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A416  A-LINE    $A416
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A417  A-LINE    $A417
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A418  A-LINE    $A418
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A419  A-LINE    $A419
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A41A  A-LINE    $A41A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A41B  A-LINE    $A41B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A41C  A-LINE    $A41C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A41D  A-LINE    $A41D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A41E  A-LINE    $A41E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A41F  A-LINE    $A41F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A420  A-LINE    $A420
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A421  A-LINE    $A421
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A422  A-LINE    $A422
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A423  A-LINE    $A423
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A424  A-LINE    $A424
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A425  A-LINE    $A425
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A426  A-LINE    $A426
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A427  A-LINE    $A427
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A428  A-LINE    $A428
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A429  A-LINE    $A429
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A42A  A-LINE    $A42A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A42B  A-LINE    $A42B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A42C  A-LINE    $A42C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A42D  A-LINE    $A42D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A42E  A-LINE    $A42E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A42F  A-LINE    $A42F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A430  A-LINE    $A430
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A431  A-LINE    $A431
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A432  A-LINE    $A432
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A433  A-LINE    $A433
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A434  A-LINE    $A434
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A435  A-LINE    $A435
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A436  A-LINE    $A436
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A437  A-LINE    $A437
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A438  A-LINE    $A438
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A439  A-LINE    $A439
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A43A  A-LINE    $A43A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A43B  A-LINE    $A43B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A43C  A-LINE    $A43C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A43D  A-LINE    $A43D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A43E  A-LINE    $A43E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A43F  A-LINE    $A43F
        b       aline_os_trap

// ---- $A440-$A47F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A440  A-LINE    $A440
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A441  A-LINE    $A441
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A442  A-LINE    $A442
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A443  A-LINE    $A443
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A444  A-LINE    $A444
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A445  A-LINE    $A445
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A446  A-LINE    $A446
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A447  A-LINE    $A447
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A448  A-LINE    $A448
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A449  A-LINE    $A449
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A44A  A-LINE    $A44A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A44B  A-LINE    $A44B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A44C  A-LINE    $A44C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A44D  A-LINE    $A44D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A44E  A-LINE    $A44E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A44F  A-LINE    $A44F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A450  A-LINE    $A450
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A451  A-LINE    $A451
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A452  A-LINE    $A452
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A453  A-LINE    $A453
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A454  A-LINE    $A454
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A455  A-LINE    $A455
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A456  A-LINE    $A456
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A457  A-LINE    $A457
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A458  A-LINE    $A458
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A459  A-LINE    $A459
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A45A  A-LINE    $A45A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A45B  A-LINE    $A45B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A45C  A-LINE    $A45C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A45D  A-LINE    $A45D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A45E  A-LINE    $A45E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A45F  A-LINE    $A45F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A460  A-LINE    $A460
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A461  A-LINE    $A461
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A462  A-LINE    $A462
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A463  A-LINE    $A463
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A464  A-LINE    $A464
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A465  A-LINE    $A465
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A466  A-LINE    $A466
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A467  A-LINE    $A467
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A468  A-LINE    $A468
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A469  A-LINE    $A469
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A46A  A-LINE    $A46A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A46B  A-LINE    $A46B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A46C  A-LINE    $A46C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A46D  A-LINE    $A46D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A46E  A-LINE    $A46E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A46F  A-LINE    $A46F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A470  A-LINE    $A470
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A471  A-LINE    $A471
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A472  A-LINE    $A472
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A473  A-LINE    $A473
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A474  A-LINE    $A474
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A475  A-LINE    $A475
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A476  A-LINE    $A476
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A477  A-LINE    $A477
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A478  A-LINE    $A478
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A479  A-LINE    $A479
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A47A  A-LINE    $A47A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A47B  A-LINE    $A47B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A47C  A-LINE    $A47C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A47D  A-LINE    $A47D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A47E  A-LINE    $A47E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A47F  A-LINE    $A47F
        b       aline_os_trap

// ---- $A480-$A4BF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A480  A-LINE    $A480
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A481  A-LINE    $A481
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A482  A-LINE    $A482
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A483  A-LINE    $A483
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A484  A-LINE    $A484
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A485  A-LINE    $A485
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A486  A-LINE    $A486
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A487  A-LINE    $A487
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A488  A-LINE    $A488
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A489  A-LINE    $A489
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A48A  A-LINE    $A48A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A48B  A-LINE    $A48B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A48C  A-LINE    $A48C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A48D  A-LINE    $A48D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A48E  A-LINE    $A48E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A48F  A-LINE    $A48F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A490  A-LINE    $A490
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A491  A-LINE    $A491
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A492  A-LINE    $A492
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A493  A-LINE    $A493
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A494  A-LINE    $A494
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A495  A-LINE    $A495
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A496  A-LINE    $A496
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A497  A-LINE    $A497
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A498  A-LINE    $A498
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A499  A-LINE    $A499
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A49A  A-LINE    $A49A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A49B  A-LINE    $A49B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A49C  A-LINE    $A49C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A49D  A-LINE    $A49D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A49E  A-LINE    $A49E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A49F  A-LINE    $A49F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4A0  A-LINE    $A4A0
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4A1  A-LINE    $A4A1
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4A2  A-LINE    $A4A2
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4A3  A-LINE    $A4A3
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4A4  A-LINE    $A4A4
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4A5  A-LINE    $A4A5
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4A6  A-LINE    $A4A6
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4A7  A-LINE    $A4A7
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4A8  A-LINE    $A4A8
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4A9  A-LINE    $A4A9
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4AA  A-LINE    $A4AA
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4AB  A-LINE    $A4AB
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4AC  A-LINE    $A4AC
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4AD  A-LINE    $A4AD
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4AE  A-LINE    $A4AE
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4AF  A-LINE    $A4AF
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4B0  A-LINE    $A4B0
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4B1  A-LINE    $A4B1
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4B2  A-LINE    $A4B2
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4B3  A-LINE    $A4B3
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4B4  A-LINE    $A4B4
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4B5  A-LINE    $A4B5
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4B6  A-LINE    $A4B6
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4B7  A-LINE    $A4B7
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4B8  A-LINE    $A4B8
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4B9  A-LINE    $A4B9
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4BA  A-LINE    $A4BA
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4BB  A-LINE    $A4BB
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4BC  A-LINE    $A4BC
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4BD  A-LINE    $A4BD
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4BE  A-LINE    $A4BE
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4BF  A-LINE    $A4BF
        b       aline_os_trap

// ---- $A4C0-$A4FF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4C0  A-LINE    $A4C0
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4C1  A-LINE    $A4C1
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4C2  A-LINE    $A4C2
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4C3  A-LINE    $A4C3
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4C4  A-LINE    $A4C4
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4C5  A-LINE    $A4C5
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4C6  A-LINE    $A4C6
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4C7  A-LINE    $A4C7
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4C8  A-LINE    $A4C8
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4C9  A-LINE    $A4C9
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4CA  A-LINE    $A4CA
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4CB  A-LINE    $A4CB
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4CC  A-LINE    $A4CC
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4CD  A-LINE    $A4CD
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4CE  A-LINE    $A4CE
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4CF  A-LINE    $A4CF
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4D0  A-LINE    $A4D0
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4D1  A-LINE    $A4D1
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4D2  A-LINE    $A4D2
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4D3  A-LINE    $A4D3
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4D4  A-LINE    $A4D4
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4D5  A-LINE    $A4D5
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4D6  A-LINE    $A4D6
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4D7  A-LINE    $A4D7
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4D8  A-LINE    $A4D8
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4D9  A-LINE    $A4D9
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4DA  A-LINE    $A4DA
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4DB  A-LINE    $A4DB
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4DC  A-LINE    $A4DC
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4DD  A-LINE    $A4DD
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4DE  A-LINE    $A4DE
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4DF  A-LINE    $A4DF
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4E0  A-LINE    $A4E0
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4E1  A-LINE    $A4E1
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4E2  A-LINE    $A4E2
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4E3  A-LINE    $A4E3
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4E4  A-LINE    $A4E4
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4E5  A-LINE    $A4E5
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4E6  A-LINE    $A4E6
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4E7  A-LINE    $A4E7
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4E8  A-LINE    $A4E8
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4E9  A-LINE    $A4E9
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4EA  A-LINE    $A4EA
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4EB  A-LINE    $A4EB
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4EC  A-LINE    $A4EC
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4ED  A-LINE    $A4ED
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4EE  A-LINE    $A4EE
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4EF  A-LINE    $A4EF
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4F0  A-LINE    $A4F0
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4F1  A-LINE    $A4F1
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4F2  A-LINE    $A4F2
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4F3  A-LINE    $A4F3
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4F4  A-LINE    $A4F4
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4F5  A-LINE    $A4F5
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4F6  A-LINE    $A4F6
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4F7  A-LINE    $A4F7
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4F8  A-LINE    $A4F8
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4F9  A-LINE    $A4F9
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4FA  A-LINE    $A4FA
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4FB  A-LINE    $A4FB
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4FC  A-LINE    $A4FC
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4FD  A-LINE    $A4FD
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4FE  A-LINE    $A4FE
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A4FF  A-LINE    $A4FF
        b       aline_os_trap

// ---- $A500-$A53F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A500  A-LINE    $A500
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A501  A-LINE    $A501
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A502  A-LINE    $A502
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A503  A-LINE    $A503
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A504  A-LINE    $A504
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A505  A-LINE    $A505
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A506  A-LINE    $A506
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A507  A-LINE    $A507
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A508  A-LINE    $A508
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A509  A-LINE    $A509
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A50A  A-LINE    $A50A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A50B  A-LINE    $A50B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A50C  A-LINE    $A50C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A50D  A-LINE    $A50D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A50E  A-LINE    $A50E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A50F  A-LINE    $A50F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A510  A-LINE    $A510
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A511  A-LINE    $A511
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A512  A-LINE    $A512
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A513  A-LINE    $A513
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A514  A-LINE    $A514
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A515  A-LINE    $A515
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A516  A-LINE    $A516
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A517  A-LINE    $A517
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A518  A-LINE    $A518
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A519  A-LINE    $A519
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A51A  A-LINE    $A51A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A51B  A-LINE    $A51B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A51C  A-LINE    $A51C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A51D  A-LINE    $A51D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A51E  A-LINE    $A51E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A51F  A-LINE    $A51F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A520  A-LINE    $A520
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A521  A-LINE    $A521
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A522  A-LINE    $A522
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A523  A-LINE    $A523
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A524  A-LINE    $A524
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A525  A-LINE    $A525
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A526  A-LINE    $A526
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A527  A-LINE    $A527
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A528  A-LINE    $A528
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A529  A-LINE    $A529
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A52A  A-LINE    $A52A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A52B  A-LINE    $A52B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A52C  A-LINE    $A52C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A52D  A-LINE    $A52D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A52E  A-LINE    $A52E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A52F  A-LINE    $A52F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A530  A-LINE    $A530
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A531  A-LINE    $A531
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A532  A-LINE    $A532
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A533  A-LINE    $A533
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A534  A-LINE    $A534
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A535  A-LINE    $A535
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A536  A-LINE    $A536
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A537  A-LINE    $A537
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A538  A-LINE    $A538
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A539  A-LINE    $A539
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A53A  A-LINE    $A53A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A53B  A-LINE    $A53B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A53C  A-LINE    $A53C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A53D  A-LINE    $A53D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A53E  A-LINE    $A53E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A53F  A-LINE    $A53F
        b       aline_os_trap_alt

// ---- $A540-$A57F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A540  A-LINE    $A540
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A541  A-LINE    $A541
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A542  A-LINE    $A542
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A543  A-LINE    $A543
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A544  A-LINE    $A544
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A545  A-LINE    $A545
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A546  A-LINE    $A546
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A547  A-LINE    $A547
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A548  A-LINE    $A548
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A549  A-LINE    $A549
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A54A  A-LINE    $A54A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A54B  A-LINE    $A54B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A54C  A-LINE    $A54C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A54D  A-LINE    $A54D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A54E  A-LINE    $A54E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A54F  A-LINE    $A54F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A550  A-LINE    $A550
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A551  A-LINE    $A551
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A552  A-LINE    $A552
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A553  A-LINE    $A553
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A554  A-LINE    $A554
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A555  A-LINE    $A555
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A556  A-LINE    $A556
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A557  A-LINE    $A557
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A558  A-LINE    $A558
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A559  A-LINE    $A559
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A55A  A-LINE    $A55A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A55B  A-LINE    $A55B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A55C  A-LINE    $A55C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A55D  A-LINE    $A55D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A55E  A-LINE    $A55E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A55F  A-LINE    $A55F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A560  A-LINE    $A560
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A561  A-LINE    $A561
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A562  A-LINE    $A562
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A563  A-LINE    $A563
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A564  A-LINE    $A564
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A565  A-LINE    $A565
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A566  A-LINE    $A566
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A567  A-LINE    $A567
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A568  A-LINE    $A568
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A569  A-LINE    $A569
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A56A  A-LINE    $A56A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A56B  A-LINE    $A56B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A56C  A-LINE    $A56C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A56D  A-LINE    $A56D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A56E  A-LINE    $A56E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A56F  A-LINE    $A56F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A570  A-LINE    $A570
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A571  A-LINE    $A571
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A572  A-LINE    $A572
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A573  A-LINE    $A573
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A574  A-LINE    $A574
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A575  A-LINE    $A575
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A576  A-LINE    $A576
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A577  A-LINE    $A577
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A578  A-LINE    $A578
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A579  A-LINE    $A579
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A57A  A-LINE    $A57A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A57B  A-LINE    $A57B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A57C  A-LINE    $A57C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A57D  A-LINE    $A57D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A57E  A-LINE    $A57E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A57F  A-LINE    $A57F
        b       aline_os_trap_alt

// ---- $A580-$A5BF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A580  A-LINE    $A580
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A581  A-LINE    $A581
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A582  A-LINE    $A582
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A583  A-LINE    $A583
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A584  A-LINE    $A584
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A585  A-LINE    $A585
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A586  A-LINE    $A586
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A587  A-LINE    $A587
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A588  A-LINE    $A588
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A589  A-LINE    $A589
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A58A  A-LINE    $A58A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A58B  A-LINE    $A58B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A58C  A-LINE    $A58C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A58D  A-LINE    $A58D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A58E  A-LINE    $A58E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A58F  A-LINE    $A58F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A590  A-LINE    $A590
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A591  A-LINE    $A591
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A592  A-LINE    $A592
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A593  A-LINE    $A593
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A594  A-LINE    $A594
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A595  A-LINE    $A595
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A596  A-LINE    $A596
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A597  A-LINE    $A597
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A598  A-LINE    $A598
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A599  A-LINE    $A599
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A59A  A-LINE    $A59A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A59B  A-LINE    $A59B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A59C  A-LINE    $A59C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A59D  A-LINE    $A59D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A59E  A-LINE    $A59E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A59F  A-LINE    $A59F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5A0  A-LINE    $A5A0
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5A1  A-LINE    $A5A1
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5A2  A-LINE    $A5A2
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5A3  A-LINE    $A5A3
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5A4  A-LINE    $A5A4
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5A5  A-LINE    $A5A5
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5A6  A-LINE    $A5A6
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5A7  A-LINE    $A5A7
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5A8  A-LINE    $A5A8
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5A9  A-LINE    $A5A9
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5AA  A-LINE    $A5AA
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5AB  A-LINE    $A5AB
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5AC  A-LINE    $A5AC
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5AD  A-LINE    $A5AD
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5AE  A-LINE    $A5AE
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5AF  A-LINE    $A5AF
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5B0  A-LINE    $A5B0
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5B1  A-LINE    $A5B1
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5B2  A-LINE    $A5B2
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5B3  A-LINE    $A5B3
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5B4  A-LINE    $A5B4
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5B5  A-LINE    $A5B5
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5B6  A-LINE    $A5B6
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5B7  A-LINE    $A5B7
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5B8  A-LINE    $A5B8
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5B9  A-LINE    $A5B9
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5BA  A-LINE    $A5BA
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5BB  A-LINE    $A5BB
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5BC  A-LINE    $A5BC
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5BD  A-LINE    $A5BD
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5BE  A-LINE    $A5BE
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5BF  A-LINE    $A5BF
        b       aline_os_trap_alt

// ---- $A5C0-$A5FF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5C0  A-LINE    $A5C0
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5C1  A-LINE    $A5C1
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5C2  A-LINE    $A5C2
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5C3  A-LINE    $A5C3
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5C4  A-LINE    $A5C4
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5C5  A-LINE    $A5C5
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5C6  A-LINE    $A5C6
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5C7  A-LINE    $A5C7
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5C8  A-LINE    $A5C8
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5C9  A-LINE    $A5C9
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5CA  A-LINE    $A5CA
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5CB  A-LINE    $A5CB
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5CC  A-LINE    $A5CC
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5CD  A-LINE    $A5CD
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5CE  A-LINE    $A5CE
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5CF  A-LINE    $A5CF
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5D0  A-LINE    $A5D0
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5D1  A-LINE    $A5D1
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5D2  A-LINE    $A5D2
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5D3  A-LINE    $A5D3
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5D4  A-LINE    $A5D4
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5D5  A-LINE    $A5D5
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5D6  A-LINE    $A5D6
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5D7  A-LINE    $A5D7
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5D8  A-LINE    $A5D8
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5D9  A-LINE    $A5D9
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5DA  A-LINE    $A5DA
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5DB  A-LINE    $A5DB
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5DC  A-LINE    $A5DC
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5DD  A-LINE    $A5DD
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5DE  A-LINE    $A5DE
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5DF  A-LINE    $A5DF
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5E0  A-LINE    $A5E0
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5E1  A-LINE    $A5E1
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5E2  A-LINE    $A5E2
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5E3  A-LINE    $A5E3
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5E4  A-LINE    $A5E4
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5E5  A-LINE    $A5E5
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5E6  A-LINE    $A5E6
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5E7  A-LINE    $A5E7
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5E8  A-LINE    $A5E8
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5E9  A-LINE    $A5E9
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5EA  A-LINE    $A5EA
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5EB  A-LINE    $A5EB
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5EC  A-LINE    $A5EC
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5ED  A-LINE    $A5ED
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5EE  A-LINE    $A5EE
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5EF  A-LINE    $A5EF
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5F0  A-LINE    $A5F0
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5F1  A-LINE    $A5F1
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5F2  A-LINE    $A5F2
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5F3  A-LINE    $A5F3
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5F4  A-LINE    $A5F4
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5F5  A-LINE    $A5F5
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5F6  A-LINE    $A5F6
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5F7  A-LINE    $A5F7
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5F8  A-LINE    $A5F8
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5F9  A-LINE    $A5F9
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5FA  A-LINE    $A5FA
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5FB  A-LINE    $A5FB
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5FC  A-LINE    $A5FC
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5FD  A-LINE    $A5FD
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5FE  A-LINE    $A5FE
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A5FF  A-LINE    $A5FF
        b       aline_os_trap_alt

// ---- $A600-$A63F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A600  A-LINE    $A600
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A601  A-LINE    $A601
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A602  A-LINE    $A602
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A603  A-LINE    $A603
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A604  A-LINE    $A604
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A605  A-LINE    $A605
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A606  A-LINE    $A606
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A607  A-LINE    $A607
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A608  A-LINE    $A608
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A609  A-LINE    $A609
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A60A  A-LINE    $A60A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A60B  A-LINE    $A60B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A60C  A-LINE    $A60C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A60D  A-LINE    $A60D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A60E  A-LINE    $A60E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A60F  A-LINE    $A60F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A610  A-LINE    $A610
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A611  A-LINE    $A611
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A612  A-LINE    $A612
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A613  A-LINE    $A613
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A614  A-LINE    $A614
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A615  A-LINE    $A615
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A616  A-LINE    $A616
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A617  A-LINE    $A617
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A618  A-LINE    $A618
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A619  A-LINE    $A619
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A61A  A-LINE    $A61A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A61B  A-LINE    $A61B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A61C  A-LINE    $A61C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A61D  A-LINE    $A61D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A61E  A-LINE    $A61E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A61F  A-LINE    $A61F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A620  A-LINE    $A620
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A621  A-LINE    $A621
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A622  A-LINE    $A622
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A623  A-LINE    $A623
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A624  A-LINE    $A624
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A625  A-LINE    $A625
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A626  A-LINE    $A626
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A627  A-LINE    $A627
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A628  A-LINE    $A628
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A629  A-LINE    $A629
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A62A  A-LINE    $A62A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A62B  A-LINE    $A62B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A62C  A-LINE    $A62C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A62D  A-LINE    $A62D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A62E  A-LINE    $A62E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A62F  A-LINE    $A62F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A630  A-LINE    $A630
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A631  A-LINE    $A631
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A632  A-LINE    $A632
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A633  A-LINE    $A633
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A634  A-LINE    $A634
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A635  A-LINE    $A635
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A636  A-LINE    $A636
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A637  A-LINE    $A637
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A638  A-LINE    $A638
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A639  A-LINE    $A639
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A63A  A-LINE    $A63A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A63B  A-LINE    $A63B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A63C  A-LINE    $A63C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A63D  A-LINE    $A63D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A63E  A-LINE    $A63E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A63F  A-LINE    $A63F
        b       aline_os_trap

// ---- $A640-$A67F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A640  A-LINE    $A640
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A641  A-LINE    $A641
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A642  A-LINE    $A642
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A643  A-LINE    $A643
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A644  A-LINE    $A644
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A645  A-LINE    $A645
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A646  A-LINE    $A646
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A647  A-LINE    $A647
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A648  A-LINE    $A648
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A649  A-LINE    $A649
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A64A  A-LINE    $A64A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A64B  A-LINE    $A64B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A64C  A-LINE    $A64C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A64D  A-LINE    $A64D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A64E  A-LINE    $A64E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A64F  A-LINE    $A64F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A650  A-LINE    $A650
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A651  A-LINE    $A651
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A652  A-LINE    $A652
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A653  A-LINE    $A653
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A654  A-LINE    $A654
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A655  A-LINE    $A655
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A656  A-LINE    $A656
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A657  A-LINE    $A657
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A658  A-LINE    $A658
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A659  A-LINE    $A659
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A65A  A-LINE    $A65A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A65B  A-LINE    $A65B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A65C  A-LINE    $A65C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A65D  A-LINE    $A65D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A65E  A-LINE    $A65E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A65F  A-LINE    $A65F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A660  A-LINE    $A660
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A661  A-LINE    $A661
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A662  A-LINE    $A662
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A663  A-LINE    $A663
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A664  A-LINE    $A664
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A665  A-LINE    $A665
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A666  A-LINE    $A666
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A667  A-LINE    $A667
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A668  A-LINE    $A668
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A669  A-LINE    $A669
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A66A  A-LINE    $A66A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A66B  A-LINE    $A66B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A66C  A-LINE    $A66C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A66D  A-LINE    $A66D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A66E  A-LINE    $A66E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A66F  A-LINE    $A66F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A670  A-LINE    $A670
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A671  A-LINE    $A671
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A672  A-LINE    $A672
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A673  A-LINE    $A673
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A674  A-LINE    $A674
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A675  A-LINE    $A675
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A676  A-LINE    $A676
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A677  A-LINE    $A677
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A678  A-LINE    $A678
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A679  A-LINE    $A679
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A67A  A-LINE    $A67A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A67B  A-LINE    $A67B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A67C  A-LINE    $A67C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A67D  A-LINE    $A67D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A67E  A-LINE    $A67E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A67F  A-LINE    $A67F
        b       aline_os_trap

// ---- $A680-$A6BF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A680  A-LINE    $A680
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A681  A-LINE    $A681
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A682  A-LINE    $A682
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A683  A-LINE    $A683
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A684  A-LINE    $A684
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A685  A-LINE    $A685
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A686  A-LINE    $A686
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A687  A-LINE    $A687
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A688  A-LINE    $A688
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A689  A-LINE    $A689
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A68A  A-LINE    $A68A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A68B  A-LINE    $A68B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A68C  A-LINE    $A68C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A68D  A-LINE    $A68D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A68E  A-LINE    $A68E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A68F  A-LINE    $A68F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A690  A-LINE    $A690
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A691  A-LINE    $A691
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A692  A-LINE    $A692
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A693  A-LINE    $A693
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A694  A-LINE    $A694
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A695  A-LINE    $A695
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A696  A-LINE    $A696
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A697  A-LINE    $A697
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A698  A-LINE    $A698
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A699  A-LINE    $A699
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A69A  A-LINE    $A69A
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A69B  A-LINE    $A69B
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A69C  A-LINE    $A69C
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A69D  A-LINE    $A69D
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A69E  A-LINE    $A69E
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A69F  A-LINE    $A69F
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6A0  A-LINE    $A6A0
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6A1  A-LINE    $A6A1
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6A2  A-LINE    $A6A2
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6A3  A-LINE    $A6A3
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6A4  A-LINE    $A6A4
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6A5  A-LINE    $A6A5
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6A6  A-LINE    $A6A6
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6A7  A-LINE    $A6A7
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6A8  A-LINE    $A6A8
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6A9  A-LINE    $A6A9
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6AA  A-LINE    $A6AA
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6AB  A-LINE    $A6AB
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6AC  A-LINE    $A6AC
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6AD  A-LINE    $A6AD
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6AE  A-LINE    $A6AE
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6AF  A-LINE    $A6AF
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6B0  A-LINE    $A6B0
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6B1  A-LINE    $A6B1
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6B2  A-LINE    $A6B2
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6B3  A-LINE    $A6B3
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6B4  A-LINE    $A6B4
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6B5  A-LINE    $A6B5
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6B6  A-LINE    $A6B6
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6B7  A-LINE    $A6B7
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6B8  A-LINE    $A6B8
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6B9  A-LINE    $A6B9
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6BA  A-LINE    $A6BA
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6BB  A-LINE    $A6BB
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6BC  A-LINE    $A6BC
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6BD  A-LINE    $A6BD
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6BE  A-LINE    $A6BE
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6BF  A-LINE    $A6BF
        b       aline_os_trap

// ---- $A6C0-$A6FF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6C0  A-LINE    $A6C0
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6C1  A-LINE    $A6C1
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6C2  A-LINE    $A6C2
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6C3  A-LINE    $A6C3
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6C4  A-LINE    $A6C4
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6C5  A-LINE    $A6C5
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6C6  A-LINE    $A6C6
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6C7  A-LINE    $A6C7
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6C8  A-LINE    $A6C8
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6C9  A-LINE    $A6C9
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6CA  A-LINE    $A6CA
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6CB  A-LINE    $A6CB
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6CC  A-LINE    $A6CC
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6CD  A-LINE    $A6CD
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6CE  A-LINE    $A6CE
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6CF  A-LINE    $A6CF
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6D0  A-LINE    $A6D0
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6D1  A-LINE    $A6D1
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6D2  A-LINE    $A6D2
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6D3  A-LINE    $A6D3
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6D4  A-LINE    $A6D4
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6D5  A-LINE    $A6D5
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6D6  A-LINE    $A6D6
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6D7  A-LINE    $A6D7
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6D8  A-LINE    $A6D8
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6D9  A-LINE    $A6D9
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6DA  A-LINE    $A6DA
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6DB  A-LINE    $A6DB
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6DC  A-LINE    $A6DC
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6DD  A-LINE    $A6DD
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6DE  A-LINE    $A6DE
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6DF  A-LINE    $A6DF
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6E0  A-LINE    $A6E0
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6E1  A-LINE    $A6E1
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6E2  A-LINE    $A6E2
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6E3  A-LINE    $A6E3
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6E4  A-LINE    $A6E4
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6E5  A-LINE    $A6E5
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6E6  A-LINE    $A6E6
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6E7  A-LINE    $A6E7
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6E8  A-LINE    $A6E8
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6E9  A-LINE    $A6E9
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6EA  A-LINE    $A6EA
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6EB  A-LINE    $A6EB
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6EC  A-LINE    $A6EC
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6ED  A-LINE    $A6ED
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6EE  A-LINE    $A6EE
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6EF  A-LINE    $A6EF
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6F0  A-LINE    $A6F0
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6F1  A-LINE    $A6F1
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6F2  A-LINE    $A6F2
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6F3  A-LINE    $A6F3
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6F4  A-LINE    $A6F4
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6F5  A-LINE    $A6F5
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6F6  A-LINE    $A6F6
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6F7  A-LINE    $A6F7
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6F8  A-LINE    $A6F8
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6F9  A-LINE    $A6F9
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6FA  A-LINE    $A6FA
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6FB  A-LINE    $A6FB
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6FC  A-LINE    $A6FC
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6FD  A-LINE    $A6FD
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6FE  A-LINE    $A6FE
        b       aline_os_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A6FF  A-LINE    $A6FF
        b       aline_os_trap

// ---- $A700-$A73F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A700  A-LINE    $A700
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A701  A-LINE    $A701
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A702  A-LINE    $A702
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A703  A-LINE    $A703
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A704  A-LINE    $A704
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A705  A-LINE    $A705
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A706  A-LINE    $A706
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A707  A-LINE    $A707
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A708  A-LINE    $A708
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A709  A-LINE    $A709
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A70A  A-LINE    $A70A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A70B  A-LINE    $A70B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A70C  A-LINE    $A70C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A70D  A-LINE    $A70D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A70E  A-LINE    $A70E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A70F  A-LINE    $A70F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A710  A-LINE    $A710
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A711  A-LINE    $A711
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A712  A-LINE    $A712
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A713  A-LINE    $A713
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A714  A-LINE    $A714
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A715  A-LINE    $A715
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A716  A-LINE    $A716
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A717  A-LINE    $A717
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A718  A-LINE    $A718
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A719  A-LINE    $A719
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A71A  A-LINE    $A71A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A71B  A-LINE    $A71B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A71C  A-LINE    $A71C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A71D  A-LINE    $A71D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A71E  A-LINE    $A71E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A71F  A-LINE    $A71F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A720  A-LINE    $A720
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A721  A-LINE    $A721
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A722  A-LINE    $A722
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A723  A-LINE    $A723
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A724  A-LINE    $A724
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A725  A-LINE    $A725
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A726  A-LINE    $A726
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A727  A-LINE    $A727
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A728  A-LINE    $A728
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A729  A-LINE    $A729
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A72A  A-LINE    $A72A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A72B  A-LINE    $A72B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A72C  A-LINE    $A72C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A72D  A-LINE    $A72D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A72E  A-LINE    $A72E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A72F  A-LINE    $A72F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A730  A-LINE    $A730
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A731  A-LINE    $A731
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A732  A-LINE    $A732
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A733  A-LINE    $A733
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A734  A-LINE    $A734
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A735  A-LINE    $A735
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A736  A-LINE    $A736
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A737  A-LINE    $A737
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A738  A-LINE    $A738
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A739  A-LINE    $A739
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A73A  A-LINE    $A73A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A73B  A-LINE    $A73B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A73C  A-LINE    $A73C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A73D  A-LINE    $A73D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A73E  A-LINE    $A73E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A73F  A-LINE    $A73F
        b       aline_os_trap_alt

// ---- $A740-$A77F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A740  A-LINE    $A740
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A741  A-LINE    $A741
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A742  A-LINE    $A742
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A743  A-LINE    $A743
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A744  A-LINE    $A744
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A745  A-LINE    $A745
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A746  A-LINE    $A746
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A747  A-LINE    $A747
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A748  A-LINE    $A748
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A749  A-LINE    $A749
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A74A  A-LINE    $A74A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A74B  A-LINE    $A74B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A74C  A-LINE    $A74C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A74D  A-LINE    $A74D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A74E  A-LINE    $A74E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A74F  A-LINE    $A74F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A750  A-LINE    $A750
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A751  A-LINE    $A751
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A752  A-LINE    $A752
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A753  A-LINE    $A753
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A754  A-LINE    $A754
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A755  A-LINE    $A755
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A756  A-LINE    $A756
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A757  A-LINE    $A757
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A758  A-LINE    $A758
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A759  A-LINE    $A759
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A75A  A-LINE    $A75A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A75B  A-LINE    $A75B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A75C  A-LINE    $A75C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A75D  A-LINE    $A75D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A75E  A-LINE    $A75E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A75F  A-LINE    $A75F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A760  A-LINE    $A760
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A761  A-LINE    $A761
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A762  A-LINE    $A762
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A763  A-LINE    $A763
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A764  A-LINE    $A764
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A765  A-LINE    $A765
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A766  A-LINE    $A766
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A767  A-LINE    $A767
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A768  A-LINE    $A768
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A769  A-LINE    $A769
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A76A  A-LINE    $A76A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A76B  A-LINE    $A76B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A76C  A-LINE    $A76C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A76D  A-LINE    $A76D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A76E  A-LINE    $A76E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A76F  A-LINE    $A76F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A770  A-LINE    $A770
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A771  A-LINE    $A771
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A772  A-LINE    $A772
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A773  A-LINE    $A773
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A774  A-LINE    $A774
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A775  A-LINE    $A775
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A776  A-LINE    $A776
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A777  A-LINE    $A777
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A778  A-LINE    $A778
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A779  A-LINE    $A779
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A77A  A-LINE    $A77A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A77B  A-LINE    $A77B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A77C  A-LINE    $A77C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A77D  A-LINE    $A77D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A77E  A-LINE    $A77E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A77F  A-LINE    $A77F
        b       aline_os_trap_alt

// ---- $A780-$A7BF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A780  A-LINE    $A780
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A781  A-LINE    $A781
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A782  A-LINE    $A782
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A783  A-LINE    $A783
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A784  A-LINE    $A784
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A785  A-LINE    $A785
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A786  A-LINE    $A786
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A787  A-LINE    $A787
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A788  A-LINE    $A788
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A789  A-LINE    $A789
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A78A  A-LINE    $A78A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A78B  A-LINE    $A78B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A78C  A-LINE    $A78C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A78D  A-LINE    $A78D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A78E  A-LINE    $A78E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A78F  A-LINE    $A78F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A790  A-LINE    $A790
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A791  A-LINE    $A791
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A792  A-LINE    $A792
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A793  A-LINE    $A793
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A794  A-LINE    $A794
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A795  A-LINE    $A795
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A796  A-LINE    $A796
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A797  A-LINE    $A797
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A798  A-LINE    $A798
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A799  A-LINE    $A799
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A79A  A-LINE    $A79A
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A79B  A-LINE    $A79B
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A79C  A-LINE    $A79C
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A79D  A-LINE    $A79D
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A79E  A-LINE    $A79E
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A79F  A-LINE    $A79F
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7A0  A-LINE    $A7A0
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7A1  A-LINE    $A7A1
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7A2  A-LINE    $A7A2
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7A3  A-LINE    $A7A3
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7A4  A-LINE    $A7A4
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7A5  A-LINE    $A7A5
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7A6  A-LINE    $A7A6
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7A7  A-LINE    $A7A7
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7A8  A-LINE    $A7A8
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7A9  A-LINE    $A7A9
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7AA  A-LINE    $A7AA
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7AB  A-LINE    $A7AB
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7AC  A-LINE    $A7AC
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7AD  A-LINE    $A7AD
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7AE  A-LINE    $A7AE
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7AF  A-LINE    $A7AF
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7B0  A-LINE    $A7B0
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7B1  A-LINE    $A7B1
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7B2  A-LINE    $A7B2
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7B3  A-LINE    $A7B3
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7B4  A-LINE    $A7B4
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7B5  A-LINE    $A7B5
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7B6  A-LINE    $A7B6
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7B7  A-LINE    $A7B7
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7B8  A-LINE    $A7B8
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7B9  A-LINE    $A7B9
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7BA  A-LINE    $A7BA
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7BB  A-LINE    $A7BB
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7BC  A-LINE    $A7BC
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7BD  A-LINE    $A7BD
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7BE  A-LINE    $A7BE
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7BF  A-LINE    $A7BF
        b       aline_os_trap_alt

// ---- $A7C0-$A7FF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7C0  A-LINE    $A7C0
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7C1  A-LINE    $A7C1
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7C2  A-LINE    $A7C2
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7C3  A-LINE    $A7C3
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7C4  A-LINE    $A7C4
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7C5  A-LINE    $A7C5
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7C6  A-LINE    $A7C6
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7C7  A-LINE    $A7C7
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7C8  A-LINE    $A7C8
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7C9  A-LINE    $A7C9
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7CA  A-LINE    $A7CA
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7CB  A-LINE    $A7CB
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7CC  A-LINE    $A7CC
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7CD  A-LINE    $A7CD
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7CE  A-LINE    $A7CE
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7CF  A-LINE    $A7CF
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7D0  A-LINE    $A7D0
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7D1  A-LINE    $A7D1
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7D2  A-LINE    $A7D2
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7D3  A-LINE    $A7D3
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7D4  A-LINE    $A7D4
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7D5  A-LINE    $A7D5
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7D6  A-LINE    $A7D6
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7D7  A-LINE    $A7D7
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7D8  A-LINE    $A7D8
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7D9  A-LINE    $A7D9
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7DA  A-LINE    $A7DA
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7DB  A-LINE    $A7DB
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7DC  A-LINE    $A7DC
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7DD  A-LINE    $A7DD
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7DE  A-LINE    $A7DE
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7DF  A-LINE    $A7DF
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7E0  A-LINE    $A7E0
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7E1  A-LINE    $A7E1
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7E2  A-LINE    $A7E2
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7E3  A-LINE    $A7E3
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7E4  A-LINE    $A7E4
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7E5  A-LINE    $A7E5
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7E6  A-LINE    $A7E6
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7E7  A-LINE    $A7E7
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7E8  A-LINE    $A7E8
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7E9  A-LINE    $A7E9
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7EA  A-LINE    $A7EA
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7EB  A-LINE    $A7EB
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7EC  A-LINE    $A7EC
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7ED  A-LINE    $A7ED
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7EE  A-LINE    $A7EE
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7EF  A-LINE    $A7EF
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7F0  A-LINE    $A7F0
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7F1  A-LINE    $A7F1
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7F2  A-LINE    $A7F2
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7F3  A-LINE    $A7F3
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7F4  A-LINE    $A7F4
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7F5  A-LINE    $A7F5
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7F6  A-LINE    $A7F6
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7F7  A-LINE    $A7F7
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7F8  A-LINE    $A7F8
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7F9  A-LINE    $A7F9
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7FA  A-LINE    $A7FA
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7FB  A-LINE    $A7FB
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7FC  A-LINE    $A7FC
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7FD  A-LINE    $A7FD
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7FE  A-LINE    $A7FE
        b       aline_os_trap_alt
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A7FF  A-LINE    $A7FF
        b       aline_os_trap_alt

// ---- $A800-$A83F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A800  A-LINE    $A800
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A801  A-LINE    $A801
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A802  A-LINE    $A802
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A803  A-LINE    $A803
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A804  A-LINE    $A804
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A805  A-LINE    $A805
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A806  A-LINE    $A806
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A807  A-LINE    $A807
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A808  A-LINE    $A808
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A809  A-LINE    $A809
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A80A  A-LINE    $A80A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A80B  A-LINE    $A80B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A80C  A-LINE    $A80C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A80D  A-LINE    $A80D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A80E  A-LINE    $A80E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A80F  A-LINE    $A80F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A810  A-LINE    $A810
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A811  A-LINE    $A811
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A812  A-LINE    $A812
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A813  A-LINE    $A813
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A814  A-LINE    $A814
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A815  A-LINE    $A815
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A816  A-LINE    $A816
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A817  A-LINE    $A817
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A818  A-LINE    $A818
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A819  A-LINE    $A819
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A81A  A-LINE    $A81A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A81B  A-LINE    $A81B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A81C  A-LINE    $A81C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A81D  A-LINE    $A81D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A81E  A-LINE    $A81E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A81F  A-LINE    $A81F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A820  A-LINE    $A820
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A821  A-LINE    $A821
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A822  A-LINE    $A822
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A823  A-LINE    $A823
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A824  A-LINE    $A824
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A825  A-LINE    $A825
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A826  A-LINE    $A826
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A827  A-LINE    $A827
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A828  A-LINE    $A828
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A829  A-LINE    $A829
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A82A  A-LINE    $A82A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A82B  A-LINE    $A82B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A82C  A-LINE    $A82C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A82D  A-LINE    $A82D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A82E  A-LINE    $A82E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A82F  A-LINE    $A82F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A830  A-LINE    $A830
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A831  A-LINE    $A831
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A832  A-LINE    $A832
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A833  A-LINE    $A833
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A834  A-LINE    $A834
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A835  A-LINE    $A835
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A836  A-LINE    $A836
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A837  A-LINE    $A837
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A838  A-LINE    $A838
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A839  A-LINE    $A839
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A83A  A-LINE    $A83A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A83B  A-LINE    $A83B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A83C  A-LINE    $A83C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A83D  A-LINE    $A83D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A83E  A-LINE    $A83E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A83F  A-LINE    $A83F
        b       aline_toolbox_trap

// ---- $A840-$A87F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A840  A-LINE    $A840
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A841  A-LINE    $A841
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A842  A-LINE    $A842
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A843  A-LINE    $A843
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A844  A-LINE    $A844
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A845  A-LINE    $A845
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A846  A-LINE    $A846
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A847  A-LINE    $A847
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A848  A-LINE    $A848
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A849  A-LINE    $A849
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A84A  A-LINE    $A84A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A84B  A-LINE    $A84B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A84C  A-LINE    $A84C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A84D  A-LINE    $A84D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A84E  A-LINE    $A84E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A84F  A-LINE    $A84F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A850  A-LINE    $A850
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A851  A-LINE    $A851
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A852  A-LINE    $A852
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A853  A-LINE    $A853
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A854  A-LINE    $A854
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A855  A-LINE    $A855
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A856  A-LINE    $A856
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A857  A-LINE    $A857
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A858  A-LINE    $A858
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A859  A-LINE    $A859
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A85A  A-LINE    $A85A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A85B  A-LINE    $A85B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A85C  A-LINE    $A85C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A85D  A-LINE    $A85D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A85E  A-LINE    $A85E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A85F  A-LINE    $A85F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A860  A-LINE    $A860
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A861  A-LINE    $A861
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A862  A-LINE    $A862
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A863  A-LINE    $A863
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A864  A-LINE    $A864
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A865  A-LINE    $A865
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A866  A-LINE    $A866
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A867  A-LINE    $A867
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A868  A-LINE    $A868
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A869  A-LINE    $A869
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A86A  A-LINE    $A86A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A86B  A-LINE    $A86B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A86C  A-LINE    $A86C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A86D  A-LINE    $A86D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A86E  A-LINE    $A86E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A86F  A-LINE    $A86F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A870  A-LINE    $A870
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A871  A-LINE    $A871
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A872  A-LINE    $A872
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A873  A-LINE    $A873
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A874  A-LINE    $A874
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A875  A-LINE    $A875
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A876  A-LINE    $A876
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A877  A-LINE    $A877
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A878  A-LINE    $A878
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A879  A-LINE    $A879
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A87A  A-LINE    $A87A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A87B  A-LINE    $A87B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A87C  A-LINE    $A87C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A87D  A-LINE    $A87D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A87E  A-LINE    $A87E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A87F  A-LINE    $A87F
        b       aline_toolbox_trap

// ---- $A880-$A8BF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A880  A-LINE    $A880
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A881  A-LINE    $A881
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A882  A-LINE    $A882
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A883  A-LINE    $A883
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A884  A-LINE    $A884
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A885  A-LINE    $A885
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A886  A-LINE    $A886
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A887  A-LINE    $A887
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A888  A-LINE    $A888
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A889  A-LINE    $A889
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A88A  A-LINE    $A88A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A88B  A-LINE    $A88B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A88C  A-LINE    $A88C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A88D  A-LINE    $A88D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A88E  A-LINE    $A88E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A88F  A-LINE    $A88F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A890  A-LINE    $A890
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A891  A-LINE    $A891
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A892  A-LINE    $A892
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A893  A-LINE    $A893
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A894  A-LINE    $A894
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A895  A-LINE    $A895
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A896  A-LINE    $A896
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A897  A-LINE    $A897
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A898  A-LINE    $A898
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A899  A-LINE    $A899
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A89A  A-LINE    $A89A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A89B  A-LINE    $A89B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A89C  A-LINE    $A89C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A89D  A-LINE    $A89D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A89E  A-LINE    $A89E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A89F  A-LINE    $A89F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8A0  A-LINE    $A8A0
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8A1  A-LINE    $A8A1
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8A2  A-LINE    $A8A2
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8A3  A-LINE    $A8A3
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8A4  A-LINE    $A8A4
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8A5  A-LINE    $A8A5
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8A6  A-LINE    $A8A6
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8A7  A-LINE    $A8A7
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8A8  A-LINE    $A8A8
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8A9  A-LINE    $A8A9
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8AA  A-LINE    $A8AA
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8AB  A-LINE    $A8AB
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8AC  A-LINE    $A8AC
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8AD  A-LINE    $A8AD
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8AE  A-LINE    $A8AE
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8AF  A-LINE    $A8AF
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8B0  A-LINE    $A8B0
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8B1  A-LINE    $A8B1
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8B2  A-LINE    $A8B2
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8B3  A-LINE    $A8B3
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8B4  A-LINE    $A8B4
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8B5  A-LINE    $A8B5
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8B6  A-LINE    $A8B6
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8B7  A-LINE    $A8B7
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8B8  A-LINE    $A8B8
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8B9  A-LINE    $A8B9
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8BA  A-LINE    $A8BA
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8BB  A-LINE    $A8BB
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8BC  A-LINE    $A8BC
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8BD  A-LINE    $A8BD
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8BE  A-LINE    $A8BE
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8BF  A-LINE    $A8BF
        b       aline_toolbox_trap

// ---- $A8C0-$A8FF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8C0  A-LINE    $A8C0
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8C1  A-LINE    $A8C1
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8C2  A-LINE    $A8C2
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8C3  A-LINE    $A8C3
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8C4  A-LINE    $A8C4
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8C5  A-LINE    $A8C5
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8C6  A-LINE    $A8C6
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8C7  A-LINE    $A8C7
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8C8  A-LINE    $A8C8
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8C9  A-LINE    $A8C9
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8CA  A-LINE    $A8CA
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8CB  A-LINE    $A8CB
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8CC  A-LINE    $A8CC
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8CD  A-LINE    $A8CD
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8CE  A-LINE    $A8CE
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8CF  A-LINE    $A8CF
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8D0  A-LINE    $A8D0
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8D1  A-LINE    $A8D1
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8D2  A-LINE    $A8D2
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8D3  A-LINE    $A8D3
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8D4  A-LINE    $A8D4
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8D5  A-LINE    $A8D5
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8D6  A-LINE    $A8D6
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8D7  A-LINE    $A8D7
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8D8  A-LINE    $A8D8
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8D9  A-LINE    $A8D9
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8DA  A-LINE    $A8DA
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8DB  A-LINE    $A8DB
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8DC  A-LINE    $A8DC
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8DD  A-LINE    $A8DD
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8DE  A-LINE    $A8DE
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8DF  A-LINE    $A8DF
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8E0  A-LINE    $A8E0
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8E1  A-LINE    $A8E1
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8E2  A-LINE    $A8E2
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8E3  A-LINE    $A8E3
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8E4  A-LINE    $A8E4
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8E5  A-LINE    $A8E5
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8E6  A-LINE    $A8E6
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8E7  A-LINE    $A8E7
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8E8  A-LINE    $A8E8
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8E9  A-LINE    $A8E9
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8EA  A-LINE    $A8EA
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8EB  A-LINE    $A8EB
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8EC  A-LINE    $A8EC
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8ED  A-LINE    $A8ED
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8EE  A-LINE    $A8EE
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8EF  A-LINE    $A8EF
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8F0  A-LINE    $A8F0
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8F1  A-LINE    $A8F1
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8F2  A-LINE    $A8F2
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8F3  A-LINE    $A8F3
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8F4  A-LINE    $A8F4
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8F5  A-LINE    $A8F5
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8F6  A-LINE    $A8F6
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8F7  A-LINE    $A8F7
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8F8  A-LINE    $A8F8
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8F9  A-LINE    $A8F9
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8FA  A-LINE    $A8FA
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8FB  A-LINE    $A8FB
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8FC  A-LINE    $A8FC
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8FD  A-LINE    $A8FD
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8FE  A-LINE    $A8FE
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A8FF  A-LINE    $A8FF
        b       aline_toolbox_trap

// ---- $A900-$A93F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A900  A-LINE    $A900
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A901  A-LINE    $A901
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A902  A-LINE    $A902
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A903  A-LINE    $A903
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A904  A-LINE    $A904
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A905  A-LINE    $A905
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A906  A-LINE    $A906
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A907  A-LINE    $A907
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A908  A-LINE    $A908
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A909  A-LINE    $A909
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A90A  A-LINE    $A90A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A90B  A-LINE    $A90B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A90C  A-LINE    $A90C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A90D  A-LINE    $A90D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A90E  A-LINE    $A90E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A90F  A-LINE    $A90F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A910  A-LINE    $A910
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A911  A-LINE    $A911
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A912  A-LINE    $A912
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A913  A-LINE    $A913
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A914  A-LINE    $A914
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A915  A-LINE    $A915
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A916  A-LINE    $A916
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A917  A-LINE    $A917
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A918  A-LINE    $A918
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A919  A-LINE    $A919
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A91A  A-LINE    $A91A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A91B  A-LINE    $A91B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A91C  A-LINE    $A91C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A91D  A-LINE    $A91D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A91E  A-LINE    $A91E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A91F  A-LINE    $A91F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A920  A-LINE    $A920
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A921  A-LINE    $A921
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A922  A-LINE    $A922
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A923  A-LINE    $A923
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A924  A-LINE    $A924
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A925  A-LINE    $A925
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A926  A-LINE    $A926
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A927  A-LINE    $A927
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A928  A-LINE    $A928
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A929  A-LINE    $A929
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A92A  A-LINE    $A92A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A92B  A-LINE    $A92B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A92C  A-LINE    $A92C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A92D  A-LINE    $A92D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A92E  A-LINE    $A92E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A92F  A-LINE    $A92F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A930  A-LINE    $A930
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A931  A-LINE    $A931
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A932  A-LINE    $A932
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A933  A-LINE    $A933
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A934  A-LINE    $A934
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A935  A-LINE    $A935
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A936  A-LINE    $A936
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A937  A-LINE    $A937
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A938  A-LINE    $A938
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A939  A-LINE    $A939
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A93A  A-LINE    $A93A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A93B  A-LINE    $A93B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A93C  A-LINE    $A93C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A93D  A-LINE    $A93D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A93E  A-LINE    $A93E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A93F  A-LINE    $A93F
        b       aline_toolbox_trap

// ---- $A940-$A97F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A940  A-LINE    $A940
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A941  A-LINE    $A941
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A942  A-LINE    $A942
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A943  A-LINE    $A943
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A944  A-LINE    $A944
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A945  A-LINE    $A945
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A946  A-LINE    $A946
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A947  A-LINE    $A947
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A948  A-LINE    $A948
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A949  A-LINE    $A949
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A94A  A-LINE    $A94A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A94B  A-LINE    $A94B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A94C  A-LINE    $A94C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A94D  A-LINE    $A94D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A94E  A-LINE    $A94E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A94F  A-LINE    $A94F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A950  A-LINE    $A950
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A951  A-LINE    $A951
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A952  A-LINE    $A952
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A953  A-LINE    $A953
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A954  A-LINE    $A954
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A955  A-LINE    $A955
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A956  A-LINE    $A956
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A957  A-LINE    $A957
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A958  A-LINE    $A958
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A959  A-LINE    $A959
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A95A  A-LINE    $A95A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A95B  A-LINE    $A95B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A95C  A-LINE    $A95C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A95D  A-LINE    $A95D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A95E  A-LINE    $A95E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A95F  A-LINE    $A95F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A960  A-LINE    $A960
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A961  A-LINE    $A961
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A962  A-LINE    $A962
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A963  A-LINE    $A963
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A964  A-LINE    $A964
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A965  A-LINE    $A965
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A966  A-LINE    $A966
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A967  A-LINE    $A967
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A968  A-LINE    $A968
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A969  A-LINE    $A969
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A96A  A-LINE    $A96A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A96B  A-LINE    $A96B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A96C  A-LINE    $A96C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A96D  A-LINE    $A96D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A96E  A-LINE    $A96E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A96F  A-LINE    $A96F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A970  A-LINE    $A970
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A971  A-LINE    $A971
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A972  A-LINE    $A972
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A973  A-LINE    $A973
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A974  A-LINE    $A974
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A975  A-LINE    $A975
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A976  A-LINE    $A976
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A977  A-LINE    $A977
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A978  A-LINE    $A978
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A979  A-LINE    $A979
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A97A  A-LINE    $A97A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A97B  A-LINE    $A97B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A97C  A-LINE    $A97C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A97D  A-LINE    $A97D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A97E  A-LINE    $A97E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A97F  A-LINE    $A97F
        b       aline_toolbox_trap

// ---- $A980-$A9BF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A980  A-LINE    $A980
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A981  A-LINE    $A981
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A982  A-LINE    $A982
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A983  A-LINE    $A983
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A984  A-LINE    $A984
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A985  A-LINE    $A985
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A986  A-LINE    $A986
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A987  A-LINE    $A987
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A988  A-LINE    $A988
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A989  A-LINE    $A989
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A98A  A-LINE    $A98A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A98B  A-LINE    $A98B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A98C  A-LINE    $A98C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A98D  A-LINE    $A98D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A98E  A-LINE    $A98E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A98F  A-LINE    $A98F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A990  A-LINE    $A990
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A991  A-LINE    $A991
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A992  A-LINE    $A992
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A993  A-LINE    $A993
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A994  A-LINE    $A994
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A995  A-LINE    $A995
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A996  A-LINE    $A996
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A997  A-LINE    $A997
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A998  A-LINE    $A998
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A999  A-LINE    $A999
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A99A  A-LINE    $A99A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A99B  A-LINE    $A99B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A99C  A-LINE    $A99C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A99D  A-LINE    $A99D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A99E  A-LINE    $A99E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A99F  A-LINE    $A99F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9A0  A-LINE    $A9A0
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9A1  A-LINE    $A9A1
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9A2  A-LINE    $A9A2
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9A3  A-LINE    $A9A3
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9A4  A-LINE    $A9A4
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9A5  A-LINE    $A9A5
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9A6  A-LINE    $A9A6
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9A7  A-LINE    $A9A7
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9A8  A-LINE    $A9A8
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9A9  A-LINE    $A9A9
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9AA  A-LINE    $A9AA
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9AB  A-LINE    $A9AB
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9AC  A-LINE    $A9AC
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9AD  A-LINE    $A9AD
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9AE  A-LINE    $A9AE
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9AF  A-LINE    $A9AF
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9B0  A-LINE    $A9B0
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9B1  A-LINE    $A9B1
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9B2  A-LINE    $A9B2
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9B3  A-LINE    $A9B3
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9B4  A-LINE    $A9B4
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9B5  A-LINE    $A9B5
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9B6  A-LINE    $A9B6
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9B7  A-LINE    $A9B7
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9B8  A-LINE    $A9B8
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9B9  A-LINE    $A9B9
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9BA  A-LINE    $A9BA
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9BB  A-LINE    $A9BB
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9BC  A-LINE    $A9BC
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9BD  A-LINE    $A9BD
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9BE  A-LINE    $A9BE
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9BF  A-LINE    $A9BF
        b       aline_toolbox_trap

// ---- $A9C0-$A9FF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9C0  A-LINE    $A9C0
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9C1  A-LINE    $A9C1
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9C2  A-LINE    $A9C2
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9C3  A-LINE    $A9C3
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9C4  A-LINE    $A9C4
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9C5  A-LINE    $A9C5
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9C6  A-LINE    $A9C6
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9C7  A-LINE    $A9C7
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9C8  A-LINE    $A9C8
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9C9  A-LINE    $A9C9
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9CA  A-LINE    $A9CA
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9CB  A-LINE    $A9CB
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9CC  A-LINE    $A9CC
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9CD  A-LINE    $A9CD
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9CE  A-LINE    $A9CE
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9CF  A-LINE    $A9CF
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9D0  A-LINE    $A9D0
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9D1  A-LINE    $A9D1
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9D2  A-LINE    $A9D2
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9D3  A-LINE    $A9D3
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9D4  A-LINE    $A9D4
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9D5  A-LINE    $A9D5
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9D6  A-LINE    $A9D6
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9D7  A-LINE    $A9D7
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9D8  A-LINE    $A9D8
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9D9  A-LINE    $A9D9
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9DA  A-LINE    $A9DA
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9DB  A-LINE    $A9DB
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9DC  A-LINE    $A9DC
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9DD  A-LINE    $A9DD
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9DE  A-LINE    $A9DE
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9DF  A-LINE    $A9DF
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9E0  A-LINE    $A9E0
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9E1  A-LINE    $A9E1
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9E2  A-LINE    $A9E2
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9E3  A-LINE    $A9E3
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9E4  A-LINE    $A9E4
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9E5  A-LINE    $A9E5
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9E6  A-LINE    $A9E6
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9E7  A-LINE    $A9E7
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9E8  A-LINE    $A9E8
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9E9  A-LINE    $A9E9
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9EA  A-LINE    $A9EA
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9EB  A-LINE    $A9EB
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9EC  A-LINE    $A9EC
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9ED  A-LINE    $A9ED
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9EE  A-LINE    $A9EE
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9EF  A-LINE    $A9EF
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9F0  A-LINE    $A9F0
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9F1  A-LINE    $A9F1
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9F2  A-LINE    $A9F2
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9F3  A-LINE    $A9F3
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9F4  A-LINE    $A9F4
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9F5  A-LINE    $A9F5
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9F6  A-LINE    $A9F6
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9F7  A-LINE    $A9F7
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9F8  A-LINE    $A9F8
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9F9  A-LINE    $A9F9
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9FA  A-LINE    $A9FA
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9FB  A-LINE    $A9FB
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9FC  A-LINE    $A9FC
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9FD  A-LINE    $A9FD
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9FE  A-LINE    $A9FE
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // A9FF  A-LINE    $A9FF
        b       aline_toolbox_trap

// ---- $AA00-$AA3F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA00  A-LINE    $AA00
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA01  A-LINE    $AA01
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA02  A-LINE    $AA02
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA03  A-LINE    $AA03
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA04  A-LINE    $AA04
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA05  A-LINE    $AA05
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA06  A-LINE    $AA06
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA07  A-LINE    $AA07
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA08  A-LINE    $AA08
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA09  A-LINE    $AA09
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA0A  A-LINE    $AA0A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA0B  A-LINE    $AA0B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA0C  A-LINE    $AA0C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA0D  A-LINE    $AA0D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA0E  A-LINE    $AA0E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA0F  A-LINE    $AA0F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA10  A-LINE    $AA10
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA11  A-LINE    $AA11
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA12  A-LINE    $AA12
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA13  A-LINE    $AA13
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA14  A-LINE    $AA14
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA15  A-LINE    $AA15
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA16  A-LINE    $AA16
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA17  A-LINE    $AA17
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA18  A-LINE    $AA18
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA19  A-LINE    $AA19
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA1A  A-LINE    $AA1A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA1B  A-LINE    $AA1B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA1C  A-LINE    $AA1C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA1D  A-LINE    $AA1D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA1E  A-LINE    $AA1E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA1F  A-LINE    $AA1F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA20  A-LINE    $AA20
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA21  A-LINE    $AA21
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA22  A-LINE    $AA22
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA23  A-LINE    $AA23
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA24  A-LINE    $AA24
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA25  A-LINE    $AA25
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA26  A-LINE    $AA26
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA27  A-LINE    $AA27
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA28  A-LINE    $AA28
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA29  A-LINE    $AA29
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA2A  A-LINE    $AA2A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA2B  A-LINE    $AA2B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA2C  A-LINE    $AA2C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA2D  A-LINE    $AA2D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA2E  A-LINE    $AA2E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA2F  A-LINE    $AA2F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA30  A-LINE    $AA30
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA31  A-LINE    $AA31
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA32  A-LINE    $AA32
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA33  A-LINE    $AA33
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA34  A-LINE    $AA34
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA35  A-LINE    $AA35
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA36  A-LINE    $AA36
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA37  A-LINE    $AA37
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA38  A-LINE    $AA38
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA39  A-LINE    $AA39
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA3A  A-LINE    $AA3A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA3B  A-LINE    $AA3B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA3C  A-LINE    $AA3C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA3D  A-LINE    $AA3D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA3E  A-LINE    $AA3E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA3F  A-LINE    $AA3F
        b       aline_toolbox_trap

// ---- $AA40-$AA7F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA40  A-LINE    $AA40
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA41  A-LINE    $AA41
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA42  A-LINE    $AA42
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA43  A-LINE    $AA43
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA44  A-LINE    $AA44
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA45  A-LINE    $AA45
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA46  A-LINE    $AA46
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA47  A-LINE    $AA47
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA48  A-LINE    $AA48
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA49  A-LINE    $AA49
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA4A  A-LINE    $AA4A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA4B  A-LINE    $AA4B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA4C  A-LINE    $AA4C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA4D  A-LINE    $AA4D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA4E  A-LINE    $AA4E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA4F  A-LINE    $AA4F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA50  A-LINE    $AA50
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA51  A-LINE    $AA51
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA52  A-LINE    $AA52
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA53  A-LINE    $AA53
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA54  A-LINE    $AA54
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA55  A-LINE    $AA55
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA56  A-LINE    $AA56
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA57  A-LINE    $AA57
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA58  A-LINE    $AA58
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA59  A-LINE    $AA59
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA5A  A-LINE    $AA5A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA5B  A-LINE    $AA5B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA5C  A-LINE    $AA5C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA5D  A-LINE    $AA5D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA5E  A-LINE    $AA5E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA5F  A-LINE    $AA5F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA60  A-LINE    $AA60
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA61  A-LINE    $AA61
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA62  A-LINE    $AA62
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA63  A-LINE    $AA63
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA64  A-LINE    $AA64
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA65  A-LINE    $AA65
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA66  A-LINE    $AA66
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA67  A-LINE    $AA67
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA68  A-LINE    $AA68
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA69  A-LINE    $AA69
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA6A  A-LINE    $AA6A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA6B  A-LINE    $AA6B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA6C  A-LINE    $AA6C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA6D  A-LINE    $AA6D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA6E  A-LINE    $AA6E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA6F  A-LINE    $AA6F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA70  A-LINE    $AA70
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA71  A-LINE    $AA71
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA72  A-LINE    $AA72
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA73  A-LINE    $AA73
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA74  A-LINE    $AA74
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA75  A-LINE    $AA75
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA76  A-LINE    $AA76
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA77  A-LINE    $AA77
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA78  A-LINE    $AA78
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA79  A-LINE    $AA79
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA7A  A-LINE    $AA7A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA7B  A-LINE    $AA7B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA7C  A-LINE    $AA7C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA7D  A-LINE    $AA7D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA7E  A-LINE    $AA7E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA7F  A-LINE    $AA7F
        b       aline_toolbox_trap

// ---- $AA80-$AABF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA80  A-LINE    $AA80
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA81  A-LINE    $AA81
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA82  A-LINE    $AA82
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA83  A-LINE    $AA83
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA84  A-LINE    $AA84
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA85  A-LINE    $AA85
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA86  A-LINE    $AA86
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA87  A-LINE    $AA87
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA88  A-LINE    $AA88
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA89  A-LINE    $AA89
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA8A  A-LINE    $AA8A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA8B  A-LINE    $AA8B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA8C  A-LINE    $AA8C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA8D  A-LINE    $AA8D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA8E  A-LINE    $AA8E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA8F  A-LINE    $AA8F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA90  A-LINE    $AA90
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA91  A-LINE    $AA91
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA92  A-LINE    $AA92
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA93  A-LINE    $AA93
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA94  A-LINE    $AA94
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA95  A-LINE    $AA95
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA96  A-LINE    $AA96
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA97  A-LINE    $AA97
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA98  A-LINE    $AA98
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA99  A-LINE    $AA99
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA9A  A-LINE    $AA9A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA9B  A-LINE    $AA9B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA9C  A-LINE    $AA9C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA9D  A-LINE    $AA9D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA9E  A-LINE    $AA9E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AA9F  A-LINE    $AA9F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAA0  A-LINE    $AAA0
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAA1  A-LINE    $AAA1
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAA2  A-LINE    $AAA2
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAA3  A-LINE    $AAA3
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAA4  A-LINE    $AAA4
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAA5  A-LINE    $AAA5
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAA6  A-LINE    $AAA6
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAA7  A-LINE    $AAA7
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAA8  A-LINE    $AAA8
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAA9  A-LINE    $AAA9
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAAA  A-LINE    $AAAA
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAAB  A-LINE    $AAAB
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAAC  A-LINE    $AAAC
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAAD  A-LINE    $AAAD
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAAE  A-LINE    $AAAE
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAAF  A-LINE    $AAAF
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAB0  A-LINE    $AAB0
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAB1  A-LINE    $AAB1
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAB2  A-LINE    $AAB2
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAB3  A-LINE    $AAB3
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAB4  A-LINE    $AAB4
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAB5  A-LINE    $AAB5
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAB6  A-LINE    $AAB6
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAB7  A-LINE    $AAB7
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAB8  A-LINE    $AAB8
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAB9  A-LINE    $AAB9
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AABA  A-LINE    $AABA
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AABB  A-LINE    $AABB
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AABC  A-LINE    $AABC
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AABD  A-LINE    $AABD
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AABE  A-LINE    $AABE
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AABF  A-LINE    $AABF
        b       aline_toolbox_trap

// ---- $AAC0-$AAFF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAC0  A-LINE    $AAC0
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAC1  A-LINE    $AAC1
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAC2  A-LINE    $AAC2
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAC3  A-LINE    $AAC3
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAC4  A-LINE    $AAC4
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAC5  A-LINE    $AAC5
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAC6  A-LINE    $AAC6
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAC7  A-LINE    $AAC7
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAC8  A-LINE    $AAC8
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAC9  A-LINE    $AAC9
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AACA  A-LINE    $AACA
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AACB  A-LINE    $AACB
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AACC  A-LINE    $AACC
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AACD  A-LINE    $AACD
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AACE  A-LINE    $AACE
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AACF  A-LINE    $AACF
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAD0  A-LINE    $AAD0
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAD1  A-LINE    $AAD1
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAD2  A-LINE    $AAD2
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAD3  A-LINE    $AAD3
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAD4  A-LINE    $AAD4
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAD5  A-LINE    $AAD5
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAD6  A-LINE    $AAD6
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAD7  A-LINE    $AAD7
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAD8  A-LINE    $AAD8
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAD9  A-LINE    $AAD9
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AADA  A-LINE    $AADA
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AADB  A-LINE    $AADB
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AADC  A-LINE    $AADC
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AADD  A-LINE    $AADD
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AADE  A-LINE    $AADE
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AADF  A-LINE    $AADF
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAE0  A-LINE    $AAE0
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAE1  A-LINE    $AAE1
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAE2  A-LINE    $AAE2
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAE3  A-LINE    $AAE3
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAE4  A-LINE    $AAE4
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAE5  A-LINE    $AAE5
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAE6  A-LINE    $AAE6
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAE7  A-LINE    $AAE7
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAE8  A-LINE    $AAE8
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAE9  A-LINE    $AAE9
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAEA  A-LINE    $AAEA
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAEB  A-LINE    $AAEB
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAEC  A-LINE    $AAEC
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAED  A-LINE    $AAED
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAEE  A-LINE    $AAEE
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAEF  A-LINE    $AAEF
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAF0  A-LINE    $AAF0
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAF1  A-LINE    $AAF1
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAF2  A-LINE    $AAF2
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAF3  A-LINE    $AAF3
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAF4  A-LINE    $AAF4
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAF5  A-LINE    $AAF5
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAF6  A-LINE    $AAF6
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAF7  A-LINE    $AAF7
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAF8  A-LINE    $AAF8
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAF9  A-LINE    $AAF9
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAFA  A-LINE    $AAFA
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAFB  A-LINE    $AAFB
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAFC  A-LINE    $AAFC
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAFD  A-LINE    $AAFD
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAFE  A-LINE    $AAFE
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AAFF  A-LINE    $AAFF
        b       aline_toolbox_trap

// ---- $AB00-$AB3F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB00  A-LINE    $AB00
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB01  A-LINE    $AB01
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB02  A-LINE    $AB02
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB03  A-LINE    $AB03
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB04  A-LINE    $AB04
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB05  A-LINE    $AB05
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB06  A-LINE    $AB06
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB07  A-LINE    $AB07
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB08  A-LINE    $AB08
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB09  A-LINE    $AB09
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB0A  A-LINE    $AB0A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB0B  A-LINE    $AB0B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB0C  A-LINE    $AB0C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB0D  A-LINE    $AB0D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB0E  A-LINE    $AB0E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB0F  A-LINE    $AB0F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB10  A-LINE    $AB10
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB11  A-LINE    $AB11
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB12  A-LINE    $AB12
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB13  A-LINE    $AB13
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB14  A-LINE    $AB14
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB15  A-LINE    $AB15
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB16  A-LINE    $AB16
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB17  A-LINE    $AB17
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB18  A-LINE    $AB18
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB19  A-LINE    $AB19
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB1A  A-LINE    $AB1A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB1B  A-LINE    $AB1B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB1C  A-LINE    $AB1C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB1D  A-LINE    $AB1D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB1E  A-LINE    $AB1E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB1F  A-LINE    $AB1F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB20  A-LINE    $AB20
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB21  A-LINE    $AB21
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB22  A-LINE    $AB22
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB23  A-LINE    $AB23
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB24  A-LINE    $AB24
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB25  A-LINE    $AB25
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB26  A-LINE    $AB26
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB27  A-LINE    $AB27
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB28  A-LINE    $AB28
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB29  A-LINE    $AB29
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB2A  A-LINE    $AB2A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB2B  A-LINE    $AB2B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB2C  A-LINE    $AB2C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB2D  A-LINE    $AB2D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB2E  A-LINE    $AB2E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB2F  A-LINE    $AB2F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB30  A-LINE    $AB30
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB31  A-LINE    $AB31
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB32  A-LINE    $AB32
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB33  A-LINE    $AB33
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB34  A-LINE    $AB34
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB35  A-LINE    $AB35
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB36  A-LINE    $AB36
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB37  A-LINE    $AB37
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB38  A-LINE    $AB38
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB39  A-LINE    $AB39
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB3A  A-LINE    $AB3A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB3B  A-LINE    $AB3B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB3C  A-LINE    $AB3C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB3D  A-LINE    $AB3D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB3E  A-LINE    $AB3E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB3F  A-LINE    $AB3F
        b       aline_toolbox_trap

// ---- $AB40-$AB7F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB40  A-LINE    $AB40
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB41  A-LINE    $AB41
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB42  A-LINE    $AB42
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB43  A-LINE    $AB43
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB44  A-LINE    $AB44
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB45  A-LINE    $AB45
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB46  A-LINE    $AB46
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB47  A-LINE    $AB47
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB48  A-LINE    $AB48
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB49  A-LINE    $AB49
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB4A  A-LINE    $AB4A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB4B  A-LINE    $AB4B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB4C  A-LINE    $AB4C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB4D  A-LINE    $AB4D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB4E  A-LINE    $AB4E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB4F  A-LINE    $AB4F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB50  A-LINE    $AB50
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB51  A-LINE    $AB51
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB52  A-LINE    $AB52
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB53  A-LINE    $AB53
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB54  A-LINE    $AB54
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB55  A-LINE    $AB55
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB56  A-LINE    $AB56
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB57  A-LINE    $AB57
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB58  A-LINE    $AB58
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB59  A-LINE    $AB59
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB5A  A-LINE    $AB5A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB5B  A-LINE    $AB5B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB5C  A-LINE    $AB5C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB5D  A-LINE    $AB5D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB5E  A-LINE    $AB5E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB5F  A-LINE    $AB5F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB60  A-LINE    $AB60
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB61  A-LINE    $AB61
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB62  A-LINE    $AB62
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB63  A-LINE    $AB63
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB64  A-LINE    $AB64
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB65  A-LINE    $AB65
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB66  A-LINE    $AB66
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB67  A-LINE    $AB67
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB68  A-LINE    $AB68
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB69  A-LINE    $AB69
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB6A  A-LINE    $AB6A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB6B  A-LINE    $AB6B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB6C  A-LINE    $AB6C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB6D  A-LINE    $AB6D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB6E  A-LINE    $AB6E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB6F  A-LINE    $AB6F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB70  A-LINE    $AB70
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB71  A-LINE    $AB71
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB72  A-LINE    $AB72
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB73  A-LINE    $AB73
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB74  A-LINE    $AB74
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB75  A-LINE    $AB75
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB76  A-LINE    $AB76
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB77  A-LINE    $AB77
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB78  A-LINE    $AB78
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB79  A-LINE    $AB79
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB7A  A-LINE    $AB7A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB7B  A-LINE    $AB7B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB7C  A-LINE    $AB7C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB7D  A-LINE    $AB7D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB7E  A-LINE    $AB7E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB7F  A-LINE    $AB7F
        b       aline_toolbox_trap

// ---- $AB80-$ABBF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB80  A-LINE    $AB80
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB81  A-LINE    $AB81
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB82  A-LINE    $AB82
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB83  A-LINE    $AB83
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB84  A-LINE    $AB84
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB85  A-LINE    $AB85
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB86  A-LINE    $AB86
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB87  A-LINE    $AB87
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB88  A-LINE    $AB88
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB89  A-LINE    $AB89
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB8A  A-LINE    $AB8A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB8B  A-LINE    $AB8B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB8C  A-LINE    $AB8C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB8D  A-LINE    $AB8D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB8E  A-LINE    $AB8E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB8F  A-LINE    $AB8F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB90  A-LINE    $AB90
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB91  A-LINE    $AB91
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB92  A-LINE    $AB92
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB93  A-LINE    $AB93
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB94  A-LINE    $AB94
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB95  A-LINE    $AB95
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB96  A-LINE    $AB96
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB97  A-LINE    $AB97
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB98  A-LINE    $AB98
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB99  A-LINE    $AB99
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB9A  A-LINE    $AB9A
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB9B  A-LINE    $AB9B
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB9C  A-LINE    $AB9C
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB9D  A-LINE    $AB9D
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB9E  A-LINE    $AB9E
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AB9F  A-LINE    $AB9F
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABA0  A-LINE    $ABA0
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABA1  A-LINE    $ABA1
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABA2  A-LINE    $ABA2
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABA3  A-LINE    $ABA3
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABA4  A-LINE    $ABA4
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABA5  A-LINE    $ABA5
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABA6  A-LINE    $ABA6
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABA7  A-LINE    $ABA7
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABA8  A-LINE    $ABA8
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABA9  A-LINE    $ABA9
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABAA  A-LINE    $ABAA
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABAB  A-LINE    $ABAB
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABAC  A-LINE    $ABAC
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABAD  A-LINE    $ABAD
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABAE  A-LINE    $ABAE
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABAF  A-LINE    $ABAF
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABB0  A-LINE    $ABB0
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABB1  A-LINE    $ABB1
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABB2  A-LINE    $ABB2
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABB3  A-LINE    $ABB3
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABB4  A-LINE    $ABB4
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABB5  A-LINE    $ABB5
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABB6  A-LINE    $ABB6
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABB7  A-LINE    $ABB7
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABB8  A-LINE    $ABB8
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABB9  A-LINE    $ABB9
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABBA  A-LINE    $ABBA
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABBB  A-LINE    $ABBB
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABBC  A-LINE    $ABBC
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABBD  A-LINE    $ABBD
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABBE  A-LINE    $ABBE
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABBF  A-LINE    $ABBF
        b       aline_toolbox_trap

// ---- $ABC0-$ABFF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABC0  A-LINE    $ABC0
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABC1  A-LINE    $ABC1
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABC2  A-LINE    $ABC2
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABC3  A-LINE    $ABC3
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABC4  A-LINE    $ABC4
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABC5  A-LINE    $ABC5
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABC6  A-LINE    $ABC6
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABC7  A-LINE    $ABC7
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABC8  A-LINE    $ABC8
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABC9  A-LINE    $ABC9
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABCA  A-LINE    $ABCA
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABCB  A-LINE    $ABCB
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABCC  A-LINE    $ABCC
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABCD  A-LINE    $ABCD
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABCE  A-LINE    $ABCE
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABCF  A-LINE    $ABCF
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABD0  A-LINE    $ABD0
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABD1  A-LINE    $ABD1
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABD2  A-LINE    $ABD2
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABD3  A-LINE    $ABD3
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABD4  A-LINE    $ABD4
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABD5  A-LINE    $ABD5
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABD6  A-LINE    $ABD6
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABD7  A-LINE    $ABD7
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABD8  A-LINE    $ABD8
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABD9  A-LINE    $ABD9
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABDA  A-LINE    $ABDA
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABDB  A-LINE    $ABDB
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABDC  A-LINE    $ABDC
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABDD  A-LINE    $ABDD
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABDE  A-LINE    $ABDE
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABDF  A-LINE    $ABDF
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABE0  A-LINE    $ABE0
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABE1  A-LINE    $ABE1
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABE2  A-LINE    $ABE2
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABE3  A-LINE    $ABE3
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABE4  A-LINE    $ABE4
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABE5  A-LINE    $ABE5
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABE6  A-LINE    $ABE6
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABE7  A-LINE    $ABE7
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABE8  A-LINE    $ABE8
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABE9  A-LINE    $ABE9
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABEA  A-LINE    $ABEA
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABEB  A-LINE    $ABEB
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABEC  A-LINE    $ABEC
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABED  A-LINE    $ABED
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABEE  A-LINE    $ABEE
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABEF  A-LINE    $ABEF
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABF0  A-LINE    $ABF0
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABF1  A-LINE    $ABF1
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABF2  A-LINE    $ABF2
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABF3  A-LINE    $ABF3
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABF4  A-LINE    $ABF4
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABF5  A-LINE    $ABF5
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABF6  A-LINE    $ABF6
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABF7  A-LINE    $ABF7
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABF8  A-LINE    $ABF8
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABF9  A-LINE    $ABF9
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABFA  A-LINE    $ABFA
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABFB  A-LINE    $ABFB
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABFC  A-LINE    $ABFC
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABFD  A-LINE    $ABFD
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABFE  A-LINE    $ABFE
        b       aline_toolbox_trap
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ABFF  A-LINE    $ABFF
        b       aline_toolbox_trap

// ---- $AC00-$AC3F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC00  A-LINE    $AC00
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC01  A-LINE    $AC01
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC02  A-LINE    $AC02
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC03  A-LINE    $AC03
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC04  A-LINE    $AC04
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC05  A-LINE    $AC05
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC06  A-LINE    $AC06
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC07  A-LINE    $AC07
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC08  A-LINE    $AC08
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC09  A-LINE    $AC09
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC0A  A-LINE    $AC0A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC0B  A-LINE    $AC0B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC0C  A-LINE    $AC0C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC0D  A-LINE    $AC0D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC0E  A-LINE    $AC0E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC0F  A-LINE    $AC0F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC10  A-LINE    $AC10
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC11  A-LINE    $AC11
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC12  A-LINE    $AC12
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC13  A-LINE    $AC13
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC14  A-LINE    $AC14
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC15  A-LINE    $AC15
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC16  A-LINE    $AC16
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC17  A-LINE    $AC17
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC18  A-LINE    $AC18
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC19  A-LINE    $AC19
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC1A  A-LINE    $AC1A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC1B  A-LINE    $AC1B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC1C  A-LINE    $AC1C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC1D  A-LINE    $AC1D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC1E  A-LINE    $AC1E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC1F  A-LINE    $AC1F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC20  A-LINE    $AC20
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC21  A-LINE    $AC21
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC22  A-LINE    $AC22
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC23  A-LINE    $AC23
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC24  A-LINE    $AC24
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC25  A-LINE    $AC25
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC26  A-LINE    $AC26
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC27  A-LINE    $AC27
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC28  A-LINE    $AC28
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC29  A-LINE    $AC29
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC2A  A-LINE    $AC2A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC2B  A-LINE    $AC2B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC2C  A-LINE    $AC2C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC2D  A-LINE    $AC2D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC2E  A-LINE    $AC2E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC2F  A-LINE    $AC2F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC30  A-LINE    $AC30
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC31  A-LINE    $AC31
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC32  A-LINE    $AC32
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC33  A-LINE    $AC33
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC34  A-LINE    $AC34
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC35  A-LINE    $AC35
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC36  A-LINE    $AC36
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC37  A-LINE    $AC37
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC38  A-LINE    $AC38
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC39  A-LINE    $AC39
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC3A  A-LINE    $AC3A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC3B  A-LINE    $AC3B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC3C  A-LINE    $AC3C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC3D  A-LINE    $AC3D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC3E  A-LINE    $AC3E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC3F  A-LINE    $AC3F
        b       aline_toolbox_trap_autopop

// ---- $AC40-$AC7F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC40  A-LINE    $AC40
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC41  A-LINE    $AC41
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC42  A-LINE    $AC42
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC43  A-LINE    $AC43
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC44  A-LINE    $AC44
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC45  A-LINE    $AC45
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC46  A-LINE    $AC46
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC47  A-LINE    $AC47
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC48  A-LINE    $AC48
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC49  A-LINE    $AC49
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC4A  A-LINE    $AC4A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC4B  A-LINE    $AC4B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC4C  A-LINE    $AC4C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC4D  A-LINE    $AC4D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC4E  A-LINE    $AC4E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC4F  A-LINE    $AC4F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC50  A-LINE    $AC50
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC51  A-LINE    $AC51
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC52  A-LINE    $AC52
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC53  A-LINE    $AC53
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC54  A-LINE    $AC54
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC55  A-LINE    $AC55
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC56  A-LINE    $AC56
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC57  A-LINE    $AC57
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC58  A-LINE    $AC58
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC59  A-LINE    $AC59
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC5A  A-LINE    $AC5A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC5B  A-LINE    $AC5B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC5C  A-LINE    $AC5C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC5D  A-LINE    $AC5D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC5E  A-LINE    $AC5E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC5F  A-LINE    $AC5F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC60  A-LINE    $AC60
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC61  A-LINE    $AC61
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC62  A-LINE    $AC62
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC63  A-LINE    $AC63
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC64  A-LINE    $AC64
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC65  A-LINE    $AC65
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC66  A-LINE    $AC66
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC67  A-LINE    $AC67
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC68  A-LINE    $AC68
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC69  A-LINE    $AC69
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC6A  A-LINE    $AC6A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC6B  A-LINE    $AC6B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC6C  A-LINE    $AC6C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC6D  A-LINE    $AC6D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC6E  A-LINE    $AC6E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC6F  A-LINE    $AC6F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC70  A-LINE    $AC70
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC71  A-LINE    $AC71
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC72  A-LINE    $AC72
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC73  A-LINE    $AC73
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC74  A-LINE    $AC74
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC75  A-LINE    $AC75
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC76  A-LINE    $AC76
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC77  A-LINE    $AC77
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC78  A-LINE    $AC78
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC79  A-LINE    $AC79
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC7A  A-LINE    $AC7A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC7B  A-LINE    $AC7B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC7C  A-LINE    $AC7C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC7D  A-LINE    $AC7D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC7E  A-LINE    $AC7E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC7F  A-LINE    $AC7F
        b       aline_toolbox_trap_autopop

// ---- $AC80-$ACBF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC80  A-LINE    $AC80
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC81  A-LINE    $AC81
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC82  A-LINE    $AC82
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC83  A-LINE    $AC83
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC84  A-LINE    $AC84
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC85  A-LINE    $AC85
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC86  A-LINE    $AC86
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC87  A-LINE    $AC87
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC88  A-LINE    $AC88
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC89  A-LINE    $AC89
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC8A  A-LINE    $AC8A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC8B  A-LINE    $AC8B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC8C  A-LINE    $AC8C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC8D  A-LINE    $AC8D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC8E  A-LINE    $AC8E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC8F  A-LINE    $AC8F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC90  A-LINE    $AC90
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC91  A-LINE    $AC91
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC92  A-LINE    $AC92
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC93  A-LINE    $AC93
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC94  A-LINE    $AC94
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC95  A-LINE    $AC95
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC96  A-LINE    $AC96
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC97  A-LINE    $AC97
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC98  A-LINE    $AC98
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC99  A-LINE    $AC99
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC9A  A-LINE    $AC9A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC9B  A-LINE    $AC9B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC9C  A-LINE    $AC9C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC9D  A-LINE    $AC9D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC9E  A-LINE    $AC9E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AC9F  A-LINE    $AC9F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACA0  A-LINE    $ACA0
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACA1  A-LINE    $ACA1
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACA2  A-LINE    $ACA2
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACA3  A-LINE    $ACA3
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACA4  A-LINE    $ACA4
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACA5  A-LINE    $ACA5
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACA6  A-LINE    $ACA6
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACA7  A-LINE    $ACA7
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACA8  A-LINE    $ACA8
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACA9  A-LINE    $ACA9
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACAA  A-LINE    $ACAA
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACAB  A-LINE    $ACAB
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACAC  A-LINE    $ACAC
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACAD  A-LINE    $ACAD
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACAE  A-LINE    $ACAE
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACAF  A-LINE    $ACAF
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACB0  A-LINE    $ACB0
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACB1  A-LINE    $ACB1
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACB2  A-LINE    $ACB2
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACB3  A-LINE    $ACB3
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACB4  A-LINE    $ACB4
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACB5  A-LINE    $ACB5
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACB6  A-LINE    $ACB6
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACB7  A-LINE    $ACB7
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACB8  A-LINE    $ACB8
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACB9  A-LINE    $ACB9
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACBA  A-LINE    $ACBA
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACBB  A-LINE    $ACBB
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACBC  A-LINE    $ACBC
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACBD  A-LINE    $ACBD
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACBE  A-LINE    $ACBE
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACBF  A-LINE    $ACBF
        b       aline_toolbox_trap_autopop

// ---- $ACC0-$ACFF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACC0  A-LINE    $ACC0
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACC1  A-LINE    $ACC1
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACC2  A-LINE    $ACC2
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACC3  A-LINE    $ACC3
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACC4  A-LINE    $ACC4
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACC5  A-LINE    $ACC5
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACC6  A-LINE    $ACC6
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACC7  A-LINE    $ACC7
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACC8  A-LINE    $ACC8
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACC9  A-LINE    $ACC9
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACCA  A-LINE    $ACCA
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACCB  A-LINE    $ACCB
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACCC  A-LINE    $ACCC
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACCD  A-LINE    $ACCD
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACCE  A-LINE    $ACCE
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACCF  A-LINE    $ACCF
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACD0  A-LINE    $ACD0
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACD1  A-LINE    $ACD1
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACD2  A-LINE    $ACD2
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACD3  A-LINE    $ACD3
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACD4  A-LINE    $ACD4
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACD5  A-LINE    $ACD5
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACD6  A-LINE    $ACD6
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACD7  A-LINE    $ACD7
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACD8  A-LINE    $ACD8
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACD9  A-LINE    $ACD9
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACDA  A-LINE    $ACDA
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACDB  A-LINE    $ACDB
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACDC  A-LINE    $ACDC
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACDD  A-LINE    $ACDD
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACDE  A-LINE    $ACDE
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACDF  A-LINE    $ACDF
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACE0  A-LINE    $ACE0
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACE1  A-LINE    $ACE1
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACE2  A-LINE    $ACE2
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACE3  A-LINE    $ACE3
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACE4  A-LINE    $ACE4
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACE5  A-LINE    $ACE5
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACE6  A-LINE    $ACE6
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACE7  A-LINE    $ACE7
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACE8  A-LINE    $ACE8
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACE9  A-LINE    $ACE9
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACEA  A-LINE    $ACEA
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACEB  A-LINE    $ACEB
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACEC  A-LINE    $ACEC
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACED  A-LINE    $ACED
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACEE  A-LINE    $ACEE
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACEF  A-LINE    $ACEF
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACF0  A-LINE    $ACF0
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACF1  A-LINE    $ACF1
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACF2  A-LINE    $ACF2
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACF3  A-LINE    $ACF3
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACF4  A-LINE    $ACF4
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACF5  A-LINE    $ACF5
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACF6  A-LINE    $ACF6
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACF7  A-LINE    $ACF7
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACF8  A-LINE    $ACF8
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACF9  A-LINE    $ACF9
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACFA  A-LINE    $ACFA
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACFB  A-LINE    $ACFB
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACFC  A-LINE    $ACFC
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACFD  A-LINE    $ACFD
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACFE  A-LINE    $ACFE
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ACFF  A-LINE    $ACFF
        b       aline_toolbox_trap_autopop

// ---- $AD00-$AD3F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD00  A-LINE    $AD00
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD01  A-LINE    $AD01
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD02  A-LINE    $AD02
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD03  A-LINE    $AD03
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD04  A-LINE    $AD04
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD05  A-LINE    $AD05
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD06  A-LINE    $AD06
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD07  A-LINE    $AD07
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD08  A-LINE    $AD08
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD09  A-LINE    $AD09
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD0A  A-LINE    $AD0A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD0B  A-LINE    $AD0B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD0C  A-LINE    $AD0C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD0D  A-LINE    $AD0D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD0E  A-LINE    $AD0E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD0F  A-LINE    $AD0F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD10  A-LINE    $AD10
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD11  A-LINE    $AD11
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD12  A-LINE    $AD12
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD13  A-LINE    $AD13
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD14  A-LINE    $AD14
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD15  A-LINE    $AD15
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD16  A-LINE    $AD16
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD17  A-LINE    $AD17
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD18  A-LINE    $AD18
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD19  A-LINE    $AD19
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD1A  A-LINE    $AD1A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD1B  A-LINE    $AD1B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD1C  A-LINE    $AD1C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD1D  A-LINE    $AD1D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD1E  A-LINE    $AD1E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD1F  A-LINE    $AD1F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD20  A-LINE    $AD20
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD21  A-LINE    $AD21
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD22  A-LINE    $AD22
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD23  A-LINE    $AD23
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD24  A-LINE    $AD24
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD25  A-LINE    $AD25
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD26  A-LINE    $AD26
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD27  A-LINE    $AD27
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD28  A-LINE    $AD28
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD29  A-LINE    $AD29
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD2A  A-LINE    $AD2A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD2B  A-LINE    $AD2B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD2C  A-LINE    $AD2C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD2D  A-LINE    $AD2D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD2E  A-LINE    $AD2E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD2F  A-LINE    $AD2F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD30  A-LINE    $AD30
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD31  A-LINE    $AD31
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD32  A-LINE    $AD32
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD33  A-LINE    $AD33
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD34  A-LINE    $AD34
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD35  A-LINE    $AD35
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD36  A-LINE    $AD36
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD37  A-LINE    $AD37
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD38  A-LINE    $AD38
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD39  A-LINE    $AD39
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD3A  A-LINE    $AD3A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD3B  A-LINE    $AD3B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD3C  A-LINE    $AD3C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD3D  A-LINE    $AD3D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD3E  A-LINE    $AD3E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD3F  A-LINE    $AD3F
        b       aline_toolbox_trap_autopop

// ---- $AD40-$AD7F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD40  A-LINE    $AD40
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD41  A-LINE    $AD41
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD42  A-LINE    $AD42
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD43  A-LINE    $AD43
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD44  A-LINE    $AD44
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD45  A-LINE    $AD45
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD46  A-LINE    $AD46
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD47  A-LINE    $AD47
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD48  A-LINE    $AD48
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD49  A-LINE    $AD49
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD4A  A-LINE    $AD4A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD4B  A-LINE    $AD4B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD4C  A-LINE    $AD4C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD4D  A-LINE    $AD4D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD4E  A-LINE    $AD4E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD4F  A-LINE    $AD4F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD50  A-LINE    $AD50
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD51  A-LINE    $AD51
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD52  A-LINE    $AD52
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD53  A-LINE    $AD53
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD54  A-LINE    $AD54
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD55  A-LINE    $AD55
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD56  A-LINE    $AD56
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD57  A-LINE    $AD57
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD58  A-LINE    $AD58
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD59  A-LINE    $AD59
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD5A  A-LINE    $AD5A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD5B  A-LINE    $AD5B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD5C  A-LINE    $AD5C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD5D  A-LINE    $AD5D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD5E  A-LINE    $AD5E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD5F  A-LINE    $AD5F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD60  A-LINE    $AD60
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD61  A-LINE    $AD61
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD62  A-LINE    $AD62
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD63  A-LINE    $AD63
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD64  A-LINE    $AD64
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD65  A-LINE    $AD65
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD66  A-LINE    $AD66
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD67  A-LINE    $AD67
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD68  A-LINE    $AD68
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD69  A-LINE    $AD69
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD6A  A-LINE    $AD6A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD6B  A-LINE    $AD6B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD6C  A-LINE    $AD6C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD6D  A-LINE    $AD6D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD6E  A-LINE    $AD6E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD6F  A-LINE    $AD6F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD70  A-LINE    $AD70
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD71  A-LINE    $AD71
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD72  A-LINE    $AD72
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD73  A-LINE    $AD73
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD74  A-LINE    $AD74
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD75  A-LINE    $AD75
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD76  A-LINE    $AD76
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD77  A-LINE    $AD77
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD78  A-LINE    $AD78
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD79  A-LINE    $AD79
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD7A  A-LINE    $AD7A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD7B  A-LINE    $AD7B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD7C  A-LINE    $AD7C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD7D  A-LINE    $AD7D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD7E  A-LINE    $AD7E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD7F  A-LINE    $AD7F
        b       aline_toolbox_trap_autopop

// ---- $AD80-$ADBF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD80  A-LINE    $AD80
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD81  A-LINE    $AD81
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD82  A-LINE    $AD82
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD83  A-LINE    $AD83
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD84  A-LINE    $AD84
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD85  A-LINE    $AD85
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD86  A-LINE    $AD86
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD87  A-LINE    $AD87
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD88  A-LINE    $AD88
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD89  A-LINE    $AD89
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD8A  A-LINE    $AD8A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD8B  A-LINE    $AD8B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD8C  A-LINE    $AD8C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD8D  A-LINE    $AD8D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD8E  A-LINE    $AD8E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD8F  A-LINE    $AD8F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD90  A-LINE    $AD90
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD91  A-LINE    $AD91
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD92  A-LINE    $AD92
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD93  A-LINE    $AD93
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD94  A-LINE    $AD94
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD95  A-LINE    $AD95
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD96  A-LINE    $AD96
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD97  A-LINE    $AD97
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD98  A-LINE    $AD98
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD99  A-LINE    $AD99
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD9A  A-LINE    $AD9A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD9B  A-LINE    $AD9B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD9C  A-LINE    $AD9C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD9D  A-LINE    $AD9D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD9E  A-LINE    $AD9E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AD9F  A-LINE    $AD9F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADA0  A-LINE    $ADA0
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADA1  A-LINE    $ADA1
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADA2  A-LINE    $ADA2
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADA3  A-LINE    $ADA3
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADA4  A-LINE    $ADA4
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADA5  A-LINE    $ADA5
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADA6  A-LINE    $ADA6
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADA7  A-LINE    $ADA7
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADA8  A-LINE    $ADA8
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADA9  A-LINE    $ADA9
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADAA  A-LINE    $ADAA
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADAB  A-LINE    $ADAB
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADAC  A-LINE    $ADAC
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADAD  A-LINE    $ADAD
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADAE  A-LINE    $ADAE
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADAF  A-LINE    $ADAF
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADB0  A-LINE    $ADB0
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADB1  A-LINE    $ADB1
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADB2  A-LINE    $ADB2
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADB3  A-LINE    $ADB3
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADB4  A-LINE    $ADB4
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADB5  A-LINE    $ADB5
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADB6  A-LINE    $ADB6
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADB7  A-LINE    $ADB7
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADB8  A-LINE    $ADB8
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADB9  A-LINE    $ADB9
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADBA  A-LINE    $ADBA
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADBB  A-LINE    $ADBB
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADBC  A-LINE    $ADBC
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADBD  A-LINE    $ADBD
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADBE  A-LINE    $ADBE
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADBF  A-LINE    $ADBF
        b       aline_toolbox_trap_autopop

// ---- $ADC0-$ADFF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADC0  A-LINE    $ADC0
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADC1  A-LINE    $ADC1
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADC2  A-LINE    $ADC2
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADC3  A-LINE    $ADC3
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADC4  A-LINE    $ADC4
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADC5  A-LINE    $ADC5
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADC6  A-LINE    $ADC6
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADC7  A-LINE    $ADC7
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADC8  A-LINE    $ADC8
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADC9  A-LINE    $ADC9
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADCA  A-LINE    $ADCA
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADCB  A-LINE    $ADCB
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADCC  A-LINE    $ADCC
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADCD  A-LINE    $ADCD
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADCE  A-LINE    $ADCE
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADCF  A-LINE    $ADCF
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADD0  A-LINE    $ADD0
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADD1  A-LINE    $ADD1
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADD2  A-LINE    $ADD2
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADD3  A-LINE    $ADD3
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADD4  A-LINE    $ADD4
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADD5  A-LINE    $ADD5
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADD6  A-LINE    $ADD6
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADD7  A-LINE    $ADD7
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADD8  A-LINE    $ADD8
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADD9  A-LINE    $ADD9
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADDA  A-LINE    $ADDA
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADDB  A-LINE    $ADDB
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADDC  A-LINE    $ADDC
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADDD  A-LINE    $ADDD
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADDE  A-LINE    $ADDE
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADDF  A-LINE    $ADDF
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADE0  A-LINE    $ADE0
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADE1  A-LINE    $ADE1
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADE2  A-LINE    $ADE2
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADE3  A-LINE    $ADE3
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADE4  A-LINE    $ADE4
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADE5  A-LINE    $ADE5
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADE6  A-LINE    $ADE6
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADE7  A-LINE    $ADE7
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADE8  A-LINE    $ADE8
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADE9  A-LINE    $ADE9
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADEA  A-LINE    $ADEA
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADEB  A-LINE    $ADEB
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADEC  A-LINE    $ADEC
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADED  A-LINE    $ADED
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADEE  A-LINE    $ADEE
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADEF  A-LINE    $ADEF
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADF0  A-LINE    $ADF0
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADF1  A-LINE    $ADF1
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADF2  A-LINE    $ADF2
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADF3  A-LINE    $ADF3
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADF4  A-LINE    $ADF4
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADF5  A-LINE    $ADF5
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADF6  A-LINE    $ADF6
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADF7  A-LINE    $ADF7
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADF8  A-LINE    $ADF8
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADF9  A-LINE    $ADF9
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADFA  A-LINE    $ADFA
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADFB  A-LINE    $ADFB
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADFC  A-LINE    $ADFC
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADFD  A-LINE    $ADFD
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADFE  A-LINE    $ADFE
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // ADFF  A-LINE    $ADFF
        b       aline_toolbox_trap_autopop

// ---- $AE00-$AE3F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE00  A-LINE    $AE00
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE01  A-LINE    $AE01
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE02  A-LINE    $AE02
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE03  A-LINE    $AE03
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE04  A-LINE    $AE04
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE05  A-LINE    $AE05
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE06  A-LINE    $AE06
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE07  A-LINE    $AE07
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE08  A-LINE    $AE08
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE09  A-LINE    $AE09
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE0A  A-LINE    $AE0A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE0B  A-LINE    $AE0B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE0C  A-LINE    $AE0C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE0D  A-LINE    $AE0D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE0E  A-LINE    $AE0E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE0F  A-LINE    $AE0F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE10  A-LINE    $AE10
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE11  A-LINE    $AE11
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE12  A-LINE    $AE12
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE13  A-LINE    $AE13
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE14  A-LINE    $AE14
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE15  A-LINE    $AE15
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE16  A-LINE    $AE16
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE17  A-LINE    $AE17
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE18  A-LINE    $AE18
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE19  A-LINE    $AE19
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE1A  A-LINE    $AE1A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE1B  A-LINE    $AE1B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE1C  A-LINE    $AE1C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE1D  A-LINE    $AE1D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE1E  A-LINE    $AE1E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE1F  A-LINE    $AE1F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE20  A-LINE    $AE20
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE21  A-LINE    $AE21
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE22  A-LINE    $AE22
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE23  A-LINE    $AE23
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE24  A-LINE    $AE24
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE25  A-LINE    $AE25
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE26  A-LINE    $AE26
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE27  A-LINE    $AE27
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE28  A-LINE    $AE28
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE29  A-LINE    $AE29
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE2A  A-LINE    $AE2A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE2B  A-LINE    $AE2B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE2C  A-LINE    $AE2C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE2D  A-LINE    $AE2D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE2E  A-LINE    $AE2E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE2F  A-LINE    $AE2F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE30  A-LINE    $AE30
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE31  A-LINE    $AE31
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE32  A-LINE    $AE32
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE33  A-LINE    $AE33
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE34  A-LINE    $AE34
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE35  A-LINE    $AE35
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE36  A-LINE    $AE36
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE37  A-LINE    $AE37
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE38  A-LINE    $AE38
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE39  A-LINE    $AE39
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE3A  A-LINE    $AE3A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE3B  A-LINE    $AE3B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE3C  A-LINE    $AE3C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE3D  A-LINE    $AE3D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE3E  A-LINE    $AE3E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE3F  A-LINE    $AE3F
        b       aline_toolbox_trap_autopop

// ---- $AE40-$AE7F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE40  A-LINE    $AE40
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE41  A-LINE    $AE41
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE42  A-LINE    $AE42
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE43  A-LINE    $AE43
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE44  A-LINE    $AE44
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE45  A-LINE    $AE45
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE46  A-LINE    $AE46
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE47  A-LINE    $AE47
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE48  A-LINE    $AE48
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE49  A-LINE    $AE49
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE4A  A-LINE    $AE4A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE4B  A-LINE    $AE4B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE4C  A-LINE    $AE4C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE4D  A-LINE    $AE4D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE4E  A-LINE    $AE4E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE4F  A-LINE    $AE4F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE50  A-LINE    $AE50
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE51  A-LINE    $AE51
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE52  A-LINE    $AE52
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE53  A-LINE    $AE53
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE54  A-LINE    $AE54
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE55  A-LINE    $AE55
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE56  A-LINE    $AE56
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE57  A-LINE    $AE57
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE58  A-LINE    $AE58
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE59  A-LINE    $AE59
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE5A  A-LINE    $AE5A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE5B  A-LINE    $AE5B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE5C  A-LINE    $AE5C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE5D  A-LINE    $AE5D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE5E  A-LINE    $AE5E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE5F  A-LINE    $AE5F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE60  A-LINE    $AE60
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE61  A-LINE    $AE61
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE62  A-LINE    $AE62
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE63  A-LINE    $AE63
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE64  A-LINE    $AE64
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE65  A-LINE    $AE65
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE66  A-LINE    $AE66
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE67  A-LINE    $AE67
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE68  A-LINE    $AE68
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE69  A-LINE    $AE69
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE6A  A-LINE    $AE6A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE6B  A-LINE    $AE6B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE6C  A-LINE    $AE6C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE6D  A-LINE    $AE6D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE6E  A-LINE    $AE6E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE6F  A-LINE    $AE6F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE70  A-LINE    $AE70
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE71  A-LINE    $AE71
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE72  A-LINE    $AE72
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE73  A-LINE    $AE73
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE74  A-LINE    $AE74
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE75  A-LINE    $AE75
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE76  A-LINE    $AE76
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE77  A-LINE    $AE77
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE78  A-LINE    $AE78
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE79  A-LINE    $AE79
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE7A  A-LINE    $AE7A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE7B  A-LINE    $AE7B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE7C  A-LINE    $AE7C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE7D  A-LINE    $AE7D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE7E  A-LINE    $AE7E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE7F  A-LINE    $AE7F
        b       aline_toolbox_trap_autopop

// ---- $AE80-$AEBF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE80  A-LINE    $AE80
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE81  A-LINE    $AE81
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE82  A-LINE    $AE82
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE83  A-LINE    $AE83
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE84  A-LINE    $AE84
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE85  A-LINE    $AE85
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE86  A-LINE    $AE86
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE87  A-LINE    $AE87
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE88  A-LINE    $AE88
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE89  A-LINE    $AE89
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE8A  A-LINE    $AE8A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE8B  A-LINE    $AE8B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE8C  A-LINE    $AE8C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE8D  A-LINE    $AE8D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE8E  A-LINE    $AE8E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE8F  A-LINE    $AE8F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE90  A-LINE    $AE90
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE91  A-LINE    $AE91
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE92  A-LINE    $AE92
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE93  A-LINE    $AE93
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE94  A-LINE    $AE94
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE95  A-LINE    $AE95
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE96  A-LINE    $AE96
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE97  A-LINE    $AE97
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE98  A-LINE    $AE98
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE99  A-LINE    $AE99
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE9A  A-LINE    $AE9A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE9B  A-LINE    $AE9B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE9C  A-LINE    $AE9C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE9D  A-LINE    $AE9D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE9E  A-LINE    $AE9E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AE9F  A-LINE    $AE9F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEA0  A-LINE    $AEA0
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEA1  A-LINE    $AEA1
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEA2  A-LINE    $AEA2
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEA3  A-LINE    $AEA3
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEA4  A-LINE    $AEA4
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEA5  A-LINE    $AEA5
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEA6  A-LINE    $AEA6
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEA7  A-LINE    $AEA7
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEA8  A-LINE    $AEA8
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEA9  A-LINE    $AEA9
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEAA  A-LINE    $AEAA
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEAB  A-LINE    $AEAB
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEAC  A-LINE    $AEAC
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEAD  A-LINE    $AEAD
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEAE  A-LINE    $AEAE
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEAF  A-LINE    $AEAF
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEB0  A-LINE    $AEB0
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEB1  A-LINE    $AEB1
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEB2  A-LINE    $AEB2
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEB3  A-LINE    $AEB3
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEB4  A-LINE    $AEB4
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEB5  A-LINE    $AEB5
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEB6  A-LINE    $AEB6
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEB7  A-LINE    $AEB7
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEB8  A-LINE    $AEB8
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEB9  A-LINE    $AEB9
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEBA  A-LINE    $AEBA
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEBB  A-LINE    $AEBB
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEBC  A-LINE    $AEBC
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEBD  A-LINE    $AEBD
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEBE  A-LINE    $AEBE
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEBF  A-LINE    $AEBF
        b       aline_toolbox_trap_autopop

// ---- $AEC0-$AEFF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEC0  A-LINE    $AEC0
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEC1  A-LINE    $AEC1
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEC2  A-LINE    $AEC2
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEC3  A-LINE    $AEC3
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEC4  A-LINE    $AEC4
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEC5  A-LINE    $AEC5
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEC6  A-LINE    $AEC6
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEC7  A-LINE    $AEC7
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEC8  A-LINE    $AEC8
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEC9  A-LINE    $AEC9
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AECA  A-LINE    $AECA
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AECB  A-LINE    $AECB
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AECC  A-LINE    $AECC
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AECD  A-LINE    $AECD
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AECE  A-LINE    $AECE
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AECF  A-LINE    $AECF
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AED0  A-LINE    $AED0
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AED1  A-LINE    $AED1
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AED2  A-LINE    $AED2
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AED3  A-LINE    $AED3
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AED4  A-LINE    $AED4
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AED5  A-LINE    $AED5
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AED6  A-LINE    $AED6
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AED7  A-LINE    $AED7
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AED8  A-LINE    $AED8
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AED9  A-LINE    $AED9
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEDA  A-LINE    $AEDA
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEDB  A-LINE    $AEDB
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEDC  A-LINE    $AEDC
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEDD  A-LINE    $AEDD
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEDE  A-LINE    $AEDE
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEDF  A-LINE    $AEDF
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEE0  A-LINE    $AEE0
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEE1  A-LINE    $AEE1
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEE2  A-LINE    $AEE2
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEE3  A-LINE    $AEE3
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEE4  A-LINE    $AEE4
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEE5  A-LINE    $AEE5
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEE6  A-LINE    $AEE6
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEE7  A-LINE    $AEE7
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEE8  A-LINE    $AEE8
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEE9  A-LINE    $AEE9
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEEA  A-LINE    $AEEA
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEEB  A-LINE    $AEEB
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEEC  A-LINE    $AEEC
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEED  A-LINE    $AEED
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEEE  A-LINE    $AEEE
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEEF  A-LINE    $AEEF
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEF0  A-LINE    $AEF0
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEF1  A-LINE    $AEF1
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEF2  A-LINE    $AEF2
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEF3  A-LINE    $AEF3
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEF4  A-LINE    $AEF4
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEF5  A-LINE    $AEF5
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEF6  A-LINE    $AEF6
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEF7  A-LINE    $AEF7
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEF8  A-LINE    $AEF8
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEF9  A-LINE    $AEF9
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEFA  A-LINE    $AEFA
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEFB  A-LINE    $AEFB
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEFC  A-LINE    $AEFC
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEFD  A-LINE    $AEFD
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEFE  A-LINE    $AEFE
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AEFF  A-LINE    $AEFF
        b       aline_toolbox_trap_autopop

// ---- $AF00-$AF3F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF00  A-LINE    $AF00
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF01  A-LINE    $AF01
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF02  A-LINE    $AF02
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF03  A-LINE    $AF03
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF04  A-LINE    $AF04
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF05  A-LINE    $AF05
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF06  A-LINE    $AF06
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF07  A-LINE    $AF07
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF08  A-LINE    $AF08
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF09  A-LINE    $AF09
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF0A  A-LINE    $AF0A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF0B  A-LINE    $AF0B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF0C  A-LINE    $AF0C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF0D  A-LINE    $AF0D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF0E  A-LINE    $AF0E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF0F  A-LINE    $AF0F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF10  A-LINE    $AF10
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF11  A-LINE    $AF11
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF12  A-LINE    $AF12
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF13  A-LINE    $AF13
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF14  A-LINE    $AF14
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF15  A-LINE    $AF15
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF16  A-LINE    $AF16
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF17  A-LINE    $AF17
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF18  A-LINE    $AF18
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF19  A-LINE    $AF19
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF1A  A-LINE    $AF1A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF1B  A-LINE    $AF1B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF1C  A-LINE    $AF1C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF1D  A-LINE    $AF1D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF1E  A-LINE    $AF1E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF1F  A-LINE    $AF1F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF20  A-LINE    $AF20
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF21  A-LINE    $AF21
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF22  A-LINE    $AF22
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF23  A-LINE    $AF23
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF24  A-LINE    $AF24
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF25  A-LINE    $AF25
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF26  A-LINE    $AF26
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF27  A-LINE    $AF27
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF28  A-LINE    $AF28
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF29  A-LINE    $AF29
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF2A  A-LINE    $AF2A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF2B  A-LINE    $AF2B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF2C  A-LINE    $AF2C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF2D  A-LINE    $AF2D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF2E  A-LINE    $AF2E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF2F  A-LINE    $AF2F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF30  A-LINE    $AF30
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF31  A-LINE    $AF31
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF32  A-LINE    $AF32
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF33  A-LINE    $AF33
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF34  A-LINE    $AF34
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF35  A-LINE    $AF35
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF36  A-LINE    $AF36
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF37  A-LINE    $AF37
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF38  A-LINE    $AF38
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF39  A-LINE    $AF39
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF3A  A-LINE    $AF3A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF3B  A-LINE    $AF3B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF3C  A-LINE    $AF3C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF3D  A-LINE    $AF3D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF3E  A-LINE    $AF3E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF3F  A-LINE    $AF3F
        b       aline_toolbox_trap_autopop

// ---- $AF40-$AF7F --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF40  A-LINE    $AF40
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF41  A-LINE    $AF41
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF42  A-LINE    $AF42
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF43  A-LINE    $AF43
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF44  A-LINE    $AF44
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF45  A-LINE    $AF45
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF46  A-LINE    $AF46
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF47  A-LINE    $AF47
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF48  A-LINE    $AF48
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF49  A-LINE    $AF49
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF4A  A-LINE    $AF4A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF4B  A-LINE    $AF4B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF4C  A-LINE    $AF4C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF4D  A-LINE    $AF4D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF4E  A-LINE    $AF4E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF4F  A-LINE    $AF4F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF50  A-LINE    $AF50
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF51  A-LINE    $AF51
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF52  A-LINE    $AF52
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF53  A-LINE    $AF53
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF54  A-LINE    $AF54
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF55  A-LINE    $AF55
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF56  A-LINE    $AF56
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF57  A-LINE    $AF57
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF58  A-LINE    $AF58
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF59  A-LINE    $AF59
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF5A  A-LINE    $AF5A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF5B  A-LINE    $AF5B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF5C  A-LINE    $AF5C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF5D  A-LINE    $AF5D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF5E  A-LINE    $AF5E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF5F  A-LINE    $AF5F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF60  A-LINE    $AF60
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF61  A-LINE    $AF61
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF62  A-LINE    $AF62
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF63  A-LINE    $AF63
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF64  A-LINE    $AF64
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF65  A-LINE    $AF65
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF66  A-LINE    $AF66
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF67  A-LINE    $AF67
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF68  A-LINE    $AF68
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF69  A-LINE    $AF69
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF6A  A-LINE    $AF6A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF6B  A-LINE    $AF6B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF6C  A-LINE    $AF6C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF6D  A-LINE    $AF6D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF6E  A-LINE    $AF6E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF6F  A-LINE    $AF6F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF70  A-LINE    $AF70
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF71  A-LINE    $AF71
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF72  A-LINE    $AF72
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF73  A-LINE    $AF73
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF74  A-LINE    $AF74
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF75  A-LINE    $AF75
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF76  A-LINE    $AF76
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF77  A-LINE    $AF77
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF78  A-LINE    $AF78
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF79  A-LINE    $AF79
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF7A  A-LINE    $AF7A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF7B  A-LINE    $AF7B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF7C  A-LINE    $AF7C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF7D  A-LINE    $AF7D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF7E  A-LINE    $AF7E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF7F  A-LINE    $AF7F
        b       aline_toolbox_trap_autopop

// ---- $AF80-$AFBF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF80  A-LINE    $AF80
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF81  A-LINE    $AF81
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF82  A-LINE    $AF82
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF83  A-LINE    $AF83
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF84  A-LINE    $AF84
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF85  A-LINE    $AF85
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF86  A-LINE    $AF86
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF87  A-LINE    $AF87
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF88  A-LINE    $AF88
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF89  A-LINE    $AF89
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF8A  A-LINE    $AF8A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF8B  A-LINE    $AF8B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF8C  A-LINE    $AF8C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF8D  A-LINE    $AF8D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF8E  A-LINE    $AF8E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF8F  A-LINE    $AF8F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF90  A-LINE    $AF90
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF91  A-LINE    $AF91
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF92  A-LINE    $AF92
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF93  A-LINE    $AF93
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF94  A-LINE    $AF94
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF95  A-LINE    $AF95
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF96  A-LINE    $AF96
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF97  A-LINE    $AF97
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF98  A-LINE    $AF98
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF99  A-LINE    $AF99
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF9A  A-LINE    $AF9A
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF9B  A-LINE    $AF9B
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF9C  A-LINE    $AF9C
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF9D  A-LINE    $AF9D
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF9E  A-LINE    $AF9E
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AF9F  A-LINE    $AF9F
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFA0  A-LINE    $AFA0
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFA1  A-LINE    $AFA1
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFA2  A-LINE    $AFA2
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFA3  A-LINE    $AFA3
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFA4  A-LINE    $AFA4
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFA5  A-LINE    $AFA5
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFA6  A-LINE    $AFA6
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFA7  A-LINE    $AFA7
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFA8  A-LINE    $AFA8
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFA9  A-LINE    $AFA9
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFAA  A-LINE    $AFAA
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFAB  A-LINE    $AFAB
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFAC  A-LINE    $AFAC
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFAD  A-LINE    $AFAD
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFAE  A-LINE    $AFAE
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFAF  A-LINE    $AFAF
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFB0  A-LINE    $AFB0
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFB1  A-LINE    $AFB1
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFB2  A-LINE    $AFB2
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFB3  A-LINE    $AFB3
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFB4  A-LINE    $AFB4
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFB5  A-LINE    $AFB5
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFB6  A-LINE    $AFB6
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFB7  A-LINE    $AFB7
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFB8  A-LINE    $AFB8
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFB9  A-LINE    $AFB9
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFBA  A-LINE    $AFBA
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFBB  A-LINE    $AFBB
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFBC  A-LINE    $AFBC
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFBD  A-LINE    $AFBD
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFBE  A-LINE    $AFBE
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFBF  A-LINE    $AFBF
        b       aline_toolbox_trap_autopop

// ---- $AFC0-$AFFF --------------------------------------------------------
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFC0  A-LINE    $AFC0
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFC1  A-LINE    $AFC1
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFC2  A-LINE    $AFC2
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFC3  A-LINE    $AFC3
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFC4  A-LINE    $AFC4
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFC5  A-LINE    $AFC5
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFC6  A-LINE    $AFC6
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFC7  A-LINE    $AFC7
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFC8  A-LINE    $AFC8
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFC9  A-LINE    $AFC9
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFCA  A-LINE    $AFCA
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFCB  A-LINE    $AFCB
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFCC  A-LINE    $AFCC
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFCD  A-LINE    $AFCD
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFCE  A-LINE    $AFCE
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFCF  A-LINE    $AFCF
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFD0  A-LINE    $AFD0
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFD1  A-LINE    $AFD1
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFD2  A-LINE    $AFD2
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFD3  A-LINE    $AFD3
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFD4  A-LINE    $AFD4
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFD5  A-LINE    $AFD5
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFD6  A-LINE    $AFD6
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFD7  A-LINE    $AFD7
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFD8  A-LINE    $AFD8
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFD9  A-LINE    $AFD9
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFDA  A-LINE    $AFDA
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFDB  A-LINE    $AFDB
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFDC  A-LINE    $AFDC
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFDD  A-LINE    $AFDD
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFDE  A-LINE    $AFDE
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFDF  A-LINE    $AFDF
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFE0  A-LINE    $AFE0
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFE1  A-LINE    $AFE1
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFE2  A-LINE    $AFE2
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFE3  A-LINE    $AFE3
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFE4  A-LINE    $AFE4
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFE5  A-LINE    $AFE5
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFE6  A-LINE    $AFE6
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFE7  A-LINE    $AFE7
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFE8  A-LINE    $AFE8
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFE9  A-LINE    $AFE9
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFEA  A-LINE    $AFEA
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFEB  A-LINE    $AFEB
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFEC  A-LINE    $AFEC
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFED  A-LINE    $AFED
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFEE  A-LINE    $AFEE
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFEF  A-LINE    $AFEF
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFF0  A-LINE    $AFF0
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFF1  A-LINE    $AFF1
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFF2  A-LINE    $AFF2
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFF3  A-LINE    $AFF3
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFF4  A-LINE    $AFF4
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFF5  A-LINE    $AFF5
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFF6  A-LINE    $AFF6
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFF7  A-LINE    $AFF7
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFF8  A-LINE    $AFF8
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFF9  A-LINE    $AFF9
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFFA  A-LINE    $AFFA
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFFB  A-LINE    $AFFB
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFFC  A-LINE    $AFFC
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFFD  A-LINE    $AFFD
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFFE  A-LINE    $AFFE
        b       aline_toolbox_trap_autopop
        lwz     addr, expected_aline_vector(EmulatorStatePtr)  // AFFF  A-LINE    $AFFF
        b       aline_toolbox_trap_autopop
