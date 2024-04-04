        .include "MPlayDef.s"

        .equ    onward_s_grp, voicegroup000
        .equ    onward_s_pri, 0
        .equ    onward_s_rev, 0
        .equ    onward_s_key, 0

        .section .rodata
        .global onward_s
        .align  2

@****************** Track 0 (Midi-Chn.0) ******************@

onward_s_0:
        .byte   KEYSH , onward_s_key+0
@ 000   ----------------------------------------
        .byte   TEMPO , 120/2
onward_s_0_LOOP:
        .byte           VOICE , 41
        .byte           PAN   , c_v+11
        .byte           VOL   , 49
        .byte           N68   , Fs3 , v100 , gtp2
        .byte   W24
        .byte           VOL   , 50
        .byte   W03
        .byte                   51
        .byte   W03
        .byte                   52
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   54
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   51
        .byte   W03
        .byte                   50
        .byte   W03
        .byte                   49
        .byte   W03
        .byte                   50
        .byte   W03
        .byte                   51
        .byte   W03
        .byte                   52
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   34
        .byte   W06
        .byte                   60
        .byte           N16   , An3
        .byte   W18
        .byte           VOL   , 53
        .byte           N04
        .byte   W03
        .byte           VOL   , 57
        .byte   W03
@ 001   ----------------------------------------
onward_s_0_1:
        .byte           N84   , Gn3 , v100
        .byte   W24
        .byte           VOL   , 59
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   52
        .byte   W03
        .byte                   51
        .byte   W03
        .byte                   50
        .byte   W03
        .byte                   49
        .byte   W03
        .byte                   47
        .byte   W03
        .byte                   48
        .byte   W03
        .byte                   49
        .byte   W03
        .byte                   50
        .byte   W03
        .byte                   51
        .byte   W03
        .byte                   52
        .byte   W03
        .byte                   53
        .byte   W06
        .byte                   34
        .byte   W24
        .byte   PEND
@ 002   ----------------------------------------
        .byte                   60
        .byte           N84
        .byte   W24
        .byte           VOL   , 59
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   52
        .byte   W03
        .byte                   51
        .byte   W03
        .byte                   50
        .byte   W03
        .byte                   49
        .byte   W03
        .byte                   47
        .byte   W03
        .byte                   48
        .byte   W03
        .byte                   49
        .byte   W03
        .byte                   50
        .byte   W03
        .byte                   51
        .byte   W03
        .byte                   52
        .byte   W03
        .byte                   53
        .byte   W06
        .byte                   34
        .byte   W18
        .byte                   53
        .byte           N05
        .byte   W03
        .byte           VOL   , 57
        .byte   W03
@ 003   ----------------------------------------
        .byte                   60
        .byte           N44   , Gn3 , v100 , gtp2
        .byte   W12
        .byte           VOL   , 59
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   51
        .byte   W06
        .byte                   50
        .byte   W03
        .byte                   49
        .byte   W09
        .byte                   42
        .byte   W06
        .byte                   60
        .byte           N44   , Fs3 , v100 , gtp3
        .byte   W12
        .byte           VOL   , 59
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   51
        .byte   W06
        .byte                   50
        .byte   W03
        .byte                   49
        .byte   W09
        .byte                   42
        .byte   W06
@ 004   ----------------------------------------
        .byte                   60
        .byte           N68   , Fs3 , v100 , gtp2
        .byte   W24
        .byte           VOL   , 59
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   56
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   54
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   52
        .byte   W03
        .byte                   51
        .byte   W03
        .byte                   50
        .byte   W03
        .byte                   49
        .byte   W03
        .byte                   50
        .byte   W03
        .byte                   51
        .byte   W03
        .byte                   52
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   34
        .byte   W06
        .byte                   60
        .byte           N16   , An3
        .byte   W18
        .byte           VOL   , 53
        .byte           N04
        .byte   W03
        .byte           VOL   , 57
        .byte   W03
@ 005   ----------------------------------------
        .byte   PATT
         .word  onward_s_0_1
@ 006   ----------------------------------------
        .byte           VOL   , 60
        .byte           N84   , Gn3 , v100
        .byte   W24
        .byte           VOL   , 59
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   52
        .byte   W03
        .byte                   51
        .byte   W03
        .byte                   50
        .byte   W03
        .byte                   49
        .byte   W03
        .byte                   47
        .byte   W03
        .byte                   48
        .byte   W03
        .byte                   49
        .byte   W03
        .byte                   50
        .byte   W03
        .byte                   51
        .byte   W03
        .byte                   52
        .byte   W03
        .byte                   53
        .byte   W06
        .byte                   34
        .byte   W18
        .byte                   53
        .byte           N04   , An3
        .byte   W03
        .byte           VOL   , 57
        .byte   W03
@ 007   ----------------------------------------
        .byte                   60
        .byte           N44   , Gn3 , v100 , gtp3
        .byte   W12
        .byte           VOL   , 59
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   51
        .byte   W06
        .byte                   50
        .byte   W03
        .byte                   49
        .byte   W09
        .byte                   42
        .byte   W06
        .byte                   60
        .byte           N44   , Fs3 , v100 , gtp3
        .byte   W12
        .byte           VOL   , 59
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   51
        .byte   W06
        .byte                   50
        .byte   W03
        .byte                   49
        .byte   W09
        .byte                   42
        .byte   W06
@ 008   ----------------------------------------
        .byte           VOICE , 68
        .byte           VOL   , 60
        .byte           N08   , Gn4 , v112
        .byte   W06
        .byte           VOL   , 34
        .byte   W06
        .byte                   60
        .byte           N04   , Dn4
        .byte   W06
        .byte                   Cn4
        .byte   W06
        .byte           VOL   , 53
        .byte           N32   , Bn3 , v112 , gtp2
        .byte   W03
        .byte           VOL   , 45
        .byte   W03
        .byte                   49
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   59
        .byte   W03
        .byte                   60
        .byte   W12
        .byte                   34
        .byte   W06
        .byte                   60
        .byte           N04
        .byte   W06
        .byte                   Cn4
        .byte   W06
        .byte           N10   , Dn4
        .byte   W12
        .byte                   Gn4
        .byte   W12
@ 009   ----------------------------------------
        .byte           N16
        .byte   W18
        .byte           N04   , Fn4
        .byte   W06
        .byte           VOL   , 53
        .byte           N60
        .byte   W03
        .byte           VOL   , 51
        .byte   W03
        .byte                   49
        .byte   W03
        .byte                   48
        .byte   W03
        .byte                   49
        .byte   W03
        .byte                   50
        .byte   W03
        .byte                   51
        .byte   W03
        .byte                   52
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   54
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   56
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   58
        .byte   W03
        .byte                   59
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   34
        .byte   W18
@ 010   ----------------------------------------
        .byte                   60
        .byte           N08   , Gn4
        .byte   W06
        .byte           VOL   , 34
        .byte   W06
        .byte                   60
        .byte           N04   , Dn4
        .byte   W06
        .byte                   Cn4
        .byte   W06
        .byte           VOL   , 53
        .byte           N32   , Bn3 , v112 , gtp2
        .byte   W03
        .byte           VOL   , 45
        .byte   W03
        .byte                   49
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   59
        .byte   W03
        .byte                   60
        .byte   W12
        .byte                   34
        .byte   W06
        .byte                   60
        .byte           N04
        .byte   W06
        .byte                   Cn4
        .byte   W06
        .byte           N10   , Dn4
        .byte   W12
        .byte                   Gn4
        .byte   W12
@ 011   ----------------------------------------
        .byte           N16   , Bn4
        .byte   W06
        .byte           VOL   , 57
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   49
        .byte   W06
        .byte                   57
        .byte           N05   , Cn5
        .byte   W06
        .byte           VOL   , 53
        .byte           N60   , An4
        .byte   W03
        .byte           VOL   , 51
        .byte   W03
        .byte                   49
        .byte   W03
        .byte                   48
        .byte   W03
        .byte                   49
        .byte   W03
        .byte                   50
        .byte   W03
        .byte                   51
        .byte   W03
        .byte                   52
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   54
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   56
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   58
        .byte   W03
        .byte                   59
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   34
        .byte   W18
@ 012   ----------------------------------------
onward_s_0_12:
        .byte           VOL   , 60
        .byte           N08   , Gn4 , v108
        .byte   W06
        .byte           VOL   , 34
        .byte   W06
        .byte                   60
        .byte           N04   , Dn4
        .byte   W06
        .byte                   Cn4
        .byte   W06
        .byte           VOL   , 53
        .byte           N32   , Bn3 , v108 , gtp2
        .byte   W03
        .byte           VOL   , 45
        .byte   W03
        .byte                   49
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   59
        .byte   W03
        .byte                   60
        .byte   W12
        .byte                   34
        .byte   W06
        .byte                   60
        .byte           N04
        .byte   W06
        .byte                   Cn4
        .byte   W06
        .byte           N10   , Dn4
        .byte   W12
        .byte                   Gn4
        .byte   W12
        .byte   PEND
@ 013   ----------------------------------------
        .byte           N16
        .byte   W18
        .byte           N04   , Fn4
        .byte   W06
        .byte           VOL   , 53
        .byte           N60
        .byte   W03
        .byte           VOL   , 51
        .byte   W03
        .byte                   49
        .byte   W03
        .byte                   48
        .byte   W03
        .byte                   49
        .byte   W03
        .byte                   50
        .byte   W03
        .byte                   51
        .byte   W03
        .byte                   52
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   54
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   56
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   58
        .byte   W03
        .byte                   59
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   34
        .byte   W18
@ 014   ----------------------------------------
        .byte   PATT
         .word  onward_s_0_12
@ 015   ----------------------------------------
        .byte           N16   , Bn4 , v108
        .byte   W06
        .byte           VOL   , 57
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   49
        .byte   W06
        .byte                   57
        .byte           N05   , Cn5
        .byte   W06
        .byte           VOL   , 60
        .byte           N68   , An4 , v108 , gtp1
        .byte   W03
        .byte           VOL   , 59
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   51
        .byte   W03
        .byte                   49
        .byte   W03
        .byte                   47
        .byte   W03
        .byte                   45
        .byte   W03
        .byte                   46
        .byte   W03
        .byte                   47
        .byte   W03
        .byte                   48
        .byte   W03
        .byte                   49
        .byte   W03
        .byte                   50
        .byte   W03
        .byte                   51
        .byte   W03
        .byte                   52
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   59
        .byte   W03
        .byte                   34
        .byte   W12
@ 016   ----------------------------------------
        .byte                   60
        .byte   W96
@ 017   ----------------------------------------
        .byte   W96
@ 018   ----------------------------------------
        .byte   W96
@ 019   ----------------------------------------
        .byte   W96
@ 020   ----------------------------------------
        .byte   W96
@ 021   ----------------------------------------
        .byte   W96
@ 022   ----------------------------------------
        .byte   W96
@ 023   ----------------------------------------
        .byte   W96
@ 024   ----------------------------------------
        .byte           VOICE , 59
        .byte   W12
        .byte                   75
        .byte           N04   , Gn4 , v112
        .byte   W06
        .byte                   Gn4
        .byte   W06
        .byte           N10
        .byte   W06
        .byte           VOL   , 38
        .byte   W06
        .byte                   60
        .byte           N04   , Bn4
        .byte   W06
        .byte                   Bn4
        .byte   W06
        .byte           N10
        .byte   W09
        .byte           VOL   , 45
        .byte   W03
        .byte                   60
        .byte           N04   , An4
        .byte   W06
        .byte                   An4
        .byte   W06
        .byte           N10
        .byte   W09
        .byte           VOL   , 38
        .byte   W03
        .byte                   60
        .byte           N15   , Gn4
        .byte   W06
        .byte           VOL   , 38
        .byte   W06
@ 025   ----------------------------------------
        .byte                   34
        .byte   W12
        .byte                   60
        .byte           N04
        .byte   W06
        .byte                   Gn4
        .byte   W06
        .byte           N10
        .byte   W06
        .byte           VOL   , 38
        .byte   W06
        .byte                   60
        .byte           N04   , Bn4
        .byte   W06
        .byte                   Bn4
        .byte   W06
        .byte           N10
        .byte   W09
        .byte           VOL   , 45
        .byte   W03
        .byte                   60
        .byte           N04   , An4
        .byte   W06
        .byte                   An4
        .byte   W06
        .byte           N10
        .byte   W09
        .byte           VOL   , 38
        .byte   W03
        .byte                   60
        .byte           N15   , Gn4
        .byte   W06
        .byte           VOL   , 38
        .byte   W06
@ 026   ----------------------------------------
        .byte   W12
        .byte                   60
        .byte           N04
        .byte   W06
        .byte                   Gn4
        .byte   W06
        .byte           N10
        .byte   W06
        .byte           VOL   , 38
        .byte   W06
        .byte                   60
        .byte           N04   , Bn4
        .byte   W06
        .byte                   Bn4
        .byte   W06
        .byte           N10
        .byte   W09
        .byte           VOL   , 45
        .byte   W03
        .byte                   60
        .byte           N04   , An4
        .byte   W06
        .byte                   An4
        .byte   W06
        .byte           N10
        .byte   W09
        .byte           VOL   , 38
        .byte   W03
        .byte                   60
        .byte           N15   , Gn4
        .byte   W06
        .byte           VOL   , 38
        .byte   W06
@ 027   ----------------------------------------
        .byte                   34
        .byte   W12
        .byte                   60
        .byte           N04
        .byte   W06
        .byte                   Gn4
        .byte   W06
        .byte           N10
        .byte   W06
        .byte           VOL   , 38
        .byte   W06
        .byte                   60
        .byte           N04   , Bn4
        .byte   W06
        .byte                   Bn4
        .byte   W06
        .byte           N10
        .byte   W09
        .byte           VOL   , 45
        .byte   W03
        .byte                   60
        .byte           N04   , An4
        .byte   W06
        .byte                   An4
        .byte   W06
        .byte           N10
        .byte   W09
        .byte           VOL   , 38
        .byte   W03
        .byte                   57
        .byte           N10   , Gn4
        .byte   W06
        .byte           VOL   , 45
        .byte   W06
@ 028   ----------------------------------------
        .byte                   57
        .byte           VOICE , 40
        .byte           N68   , Gn3 , v090 , gtp3
        .byte   W03
        .byte           VOL   , 53
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   56
        .byte   W03
        .byte                   59
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   60
        .byte   W48
        .byte                   57
        .byte           N10   , Dn3
        .byte   W12
        .byte                   Cn3
        .byte   W12
@ 029   ----------------------------------------
        .byte           VOL   , 60
        .byte           TIE   , Bn2
        .byte   W24
        .byte           VOL   , 59
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   51
        .byte   W03
        .byte                   50
        .byte   W03
        .byte                   49
        .byte   W03
        .byte                   48
        .byte   W03
        .byte                   47
        .byte   W03
        .byte                   46
        .byte   W03
        .byte                   45
        .byte   W18
        .byte                   46
        .byte   W06
        .byte                   47
        .byte   W06
        .byte                   48
        .byte   W03
        .byte                   49
        .byte   W03
        .byte                   51
        .byte   W03
        .byte                   53
        .byte   W03
@ 030   ----------------------------------------
        .byte                   34
        .byte   W06
        .byte           EOT
        .byte   W18
        .byte           VOL   , 60
        .byte           N11
        .byte   W12
        .byte                   Cn3
        .byte   W12
        .byte           N23   , Dn3
        .byte   W24
        .byte                   Gn3
        .byte   W24
@ 031   ----------------------------------------
        .byte           N44   , Gn3 , v090 , gtp3
        .byte   W12
        .byte           VOL   , 59
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   53
        .byte   W24
        .byte   W03
        .byte                   60
        .byte           N44   , Fs3 , v090 , gtp3
        .byte   W06
        .byte           VOL   , 59
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   51
        .byte   W03
        .byte                   49
        .byte   W09
        .byte                   50
        .byte   W03
        .byte                   51
        .byte   W03
        .byte                   52
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   57
        .byte   W03
@ 032   ----------------------------------------
        .byte           VOICE , 41
        .byte           VOL   , 49
        .byte   GOTO
         .word  onward_s_0_LOOP
        .byte   W72
        .byte   FINE

@****************** Track 1 (Midi-Chn.1) ******************@

onward_s_1:
        .byte   KEYSH , onward_s_key+0
@ 000   ----------------------------------------
onward_s_1_LOOP:
        .byte           VOICE , 2
        .byte           PAN   , c_v-10
        .byte           VOL   , 38
        .byte           N11   , Cn1 , v112
        .byte   W24
        .byte                   Cn1 , v127
        .byte   W24
        .byte                   Cn1
        .byte   W24
        .byte                   Cn1
        .byte   W24
@ 001   ----------------------------------------
        .byte                   Bn0
        .byte   W24
        .byte                   Bn0
        .byte   W24
        .byte                   Bn0
        .byte   W24
        .byte                   Bn0
        .byte   W24
@ 002   ----------------------------------------
        .byte                   As0
        .byte   W24
        .byte                   As0
        .byte   W24
        .byte                   As0
        .byte   W24
        .byte                   As0
        .byte   W24
@ 003   ----------------------------------------
onward_s_1_3:
        .byte           N11   , An0 , v127
        .byte   W24
        .byte                   An0
        .byte   W24
        .byte                   Dn1
        .byte   W24
        .byte                   Dn1
        .byte   W24
        .byte   PEND
@ 004   ----------------------------------------
        .byte                   Cn1
        .byte   W12
        .byte                   An1
        .byte   W12
        .byte                   Cn1
        .byte   W12
        .byte                   An1
        .byte   W12
        .byte                   Cn1
        .byte   W12
        .byte                   An1
        .byte   W12
        .byte                   Cn1
        .byte   W12
        .byte                   An1
        .byte   W12
@ 005   ----------------------------------------
        .byte                   Bn0
        .byte   W12
        .byte                   Gn1
        .byte   W12
        .byte                   Bn0
        .byte   W12
        .byte                   Gn1
        .byte   W12
        .byte                   Bn0
        .byte   W12
        .byte                   Gn1
        .byte   W12
        .byte                   Bn0
        .byte   W12
        .byte                   Gn1
        .byte   W12
@ 006   ----------------------------------------
        .byte                   As0
        .byte   W12
        .byte                   Gn1
        .byte   W12
        .byte                   As0
        .byte   W12
        .byte                   Gn1
        .byte   W12
        .byte                   As0
        .byte   W12
        .byte                   Gn1
        .byte   W12
        .byte                   As0
        .byte   W12
        .byte                   Gn1
        .byte   W12
@ 007   ----------------------------------------
        .byte   PATT
         .word  onward_s_1_3
@ 008   ----------------------------------------
onward_s_1_8:
        .byte           N17   , Dn1 , v127
        .byte   W18
        .byte           N05
        .byte   W18
        .byte           N11
        .byte   W24
        .byte                   Dn1
        .byte   W12
        .byte                   Dn1
        .byte   W24
        .byte   PEND
@ 009   ----------------------------------------
        .byte           N17   , Cn1
        .byte   W18
        .byte           N05
        .byte   W18
        .byte           N11
        .byte   W24
        .byte                   Cn1
        .byte   W12
        .byte                   Cn1
        .byte   W24
@ 010   ----------------------------------------
        .byte   PATT
         .word  onward_s_1_8
@ 011   ----------------------------------------
        .byte           N17   , Fn1 , v127
        .byte   W18
        .byte           N05
        .byte   W18
        .byte           N11
        .byte   W24
        .byte                   En1
        .byte   W12
        .byte           N17   , Dn1
        .byte   W24
@ 012   ----------------------------------------
onward_s_1_12:
        .byte           N17   , Dn1 , v124
        .byte   W18
        .byte           N05   , Gn1
        .byte   W18
        .byte           N11   , Dn1
        .byte   W24
        .byte                   Dn1
        .byte   W12
        .byte                   Gn1
        .byte   W24
        .byte   PEND
@ 013   ----------------------------------------
        .byte           N17   , Cn1
        .byte   W18
        .byte           N05
        .byte   W18
        .byte           N11
        .byte   W24
        .byte                   Cn1
        .byte   W12
        .byte                   Cn1
        .byte   W24
@ 014   ----------------------------------------
        .byte   PATT
         .word  onward_s_1_12
@ 015   ----------------------------------------
        .byte           N17   , An1 , v124
        .byte   W18
        .byte           N05
        .byte   W18
        .byte           N11
        .byte   W24
        .byte                   Fn1
        .byte   W12
        .byte           N17
        .byte   W24
@ 016   ----------------------------------------
onward_s_1_16:
        .byte           N11   , Gn1 , v127
        .byte   W12
        .byte           N05   , Dn1
        .byte   W06
        .byte                   Cn1
        .byte   W06
        .byte           N32   , Bn0 , v127 , gtp3
        .byte   W36
        .byte           N05
        .byte   W06
        .byte                   Cn1
        .byte   W06
        .byte           N11   , Dn1
        .byte   W12
        .byte                   Gn1
        .byte   W12
        .byte   PEND
@ 017   ----------------------------------------
onward_s_1_17:
        .byte           N17   , Gn1 , v127
        .byte   W18
        .byte           N05   , Fn1
        .byte   W06
        .byte           N23
        .byte   W36
        .byte           N11   , Dn1
        .byte   W12
        .byte                   Cn1
        .byte   W12
        .byte                   Bn0
        .byte   W12
        .byte   PEND
@ 018   ----------------------------------------
        .byte   PATT
         .word  onward_s_1_16
@ 019   ----------------------------------------
        .byte           N17   , Bn1 , v127
        .byte   W18
        .byte           N05   , Cn2
        .byte   W06
        .byte           N44   , An1 , v127 , gtp3
        .byte   W72
@ 020   ----------------------------------------
        .byte   PATT
         .word  onward_s_1_16
@ 021   ----------------------------------------
        .byte   PATT
         .word  onward_s_1_17
@ 022   ----------------------------------------
        .byte   PATT
         .word  onward_s_1_16
@ 023   ----------------------------------------
        .byte           N17   , Bn1 , v127
        .byte   W18
        .byte           N05   , Cn2
        .byte   W06
        .byte           N44   , Dn2 , v127 , gtp3
        .byte   W72
@ 024   ----------------------------------------
        .byte   W12
        .byte           N05   , Gn1
        .byte   W06
        .byte                   Gn1
        .byte   W06
        .byte           N11
        .byte   W12
        .byte           N05
        .byte   W06
        .byte                   Gn1
        .byte   W06
        .byte           N11
        .byte   W12
        .byte           N05
        .byte   W06
        .byte                   Gn1
        .byte   W06
        .byte           N11
        .byte   W12
        .byte                   Fn1
        .byte   W12
@ 025   ----------------------------------------
        .byte   W12
        .byte           N05
        .byte   W06
        .byte                   Fn1
        .byte   W06
        .byte           N11
        .byte   W12
        .byte           N05
        .byte   W06
        .byte                   Fn1
        .byte   W06
        .byte           N11
        .byte   W12
        .byte           N05
        .byte   W06
        .byte                   Fn1
        .byte   W06
        .byte           N11
        .byte   W12
        .byte                   En1
        .byte   W12
@ 026   ----------------------------------------
        .byte   W12
        .byte           N05
        .byte   W06
        .byte                   En1
        .byte   W06
        .byte           N11
        .byte   W12
        .byte           N05
        .byte   W06
        .byte                   En1
        .byte   W06
        .byte           N11
        .byte   W12
        .byte           N05
        .byte   W06
        .byte                   En1
        .byte   W06
        .byte           N11
        .byte   W12
        .byte                   Ds1
        .byte   W12
@ 027   ----------------------------------------
        .byte   W12
        .byte           N05
        .byte   W06
        .byte                   Ds1
        .byte   W06
        .byte           N11
        .byte   W12
        .byte           N05
        .byte   W06
        .byte                   Ds1
        .byte   W06
        .byte           N11
        .byte   W12
        .byte           N05
        .byte   W06
        .byte                   Ds1
        .byte   W06
        .byte           N11
        .byte   W12
        .byte                   Fn1
        .byte   W12
@ 028   ----------------------------------------
        .byte   W12
        .byte           N05   , Gn1 , v120
        .byte   W06
        .byte                   Gn1
        .byte   W06
        .byte           N11
        .byte   W12
        .byte           N05
        .byte   W06
        .byte                   Gn1
        .byte   W06
        .byte           N11
        .byte   W12
        .byte           N05
        .byte   W06
        .byte                   Gn1
        .byte   W06
        .byte           N11
        .byte   W12
        .byte                   Fn1
        .byte   W12
@ 029   ----------------------------------------
        .byte   W12
        .byte           N05
        .byte   W06
        .byte                   Fn1
        .byte   W06
        .byte           N11
        .byte   W12
        .byte           N05
        .byte   W06
        .byte                   Fn1
        .byte   W06
        .byte           N11
        .byte   W12
        .byte           N05
        .byte   W06
        .byte                   Fn1
        .byte   W06
        .byte           N11
        .byte   W12
        .byte                   En1
        .byte   W12
@ 030   ----------------------------------------
        .byte   W12
        .byte           N05
        .byte   W06
        .byte                   En1
        .byte   W06
        .byte           N11
        .byte   W12
        .byte           N05
        .byte   W06
        .byte                   En1
        .byte   W06
        .byte           N11
        .byte   W12
        .byte           N05
        .byte   W06
        .byte                   En1
        .byte   W06
        .byte           N11
        .byte   W12
        .byte                   Ds1
        .byte   W12
@ 031   ----------------------------------------
        .byte   W12
        .byte           N05
        .byte   W06
        .byte                   Ds1
        .byte   W06
        .byte           N11
        .byte   W12
        .byte           N05
        .byte   W06
        .byte                   Ds1
        .byte   W06
        .byte           N11
        .byte   W12
        .byte           N05
        .byte   W06
        .byte                   Ds1
        .byte   W06
        .byte           N11
        .byte   W12
        .byte                   Fn1
        .byte   W12
@ 032   ----------------------------------------
        .byte   GOTO
         .word  onward_s_1_LOOP
        .byte   W72
        .byte   FINE

@****************** Track 2 (Midi-Chn.2) ******************@

onward_s_2:
        .byte   KEYSH , onward_s_key+0
@ 000   ----------------------------------------
onward_s_2_LOOP:
        .byte           VOICE , 65
        .byte           PAN   , c_v-16
        .byte           VOL   , 62
        .byte           N68   , Fs3 , v086 , gtp2
        .byte   W12
        .byte           VOL   , 61
        .byte   W03
        .byte                   60
        .byte   W03
        .byte                   59
        .byte   W03
        .byte                   58
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   56
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   54
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   51
        .byte   W21
        .byte                   35
        .byte   W12
        .byte                   62
        .byte           N15   , An3
        .byte   W03
        .byte           VOL   , 55
        .byte   W03
        .byte                   59
        .byte   W03
        .byte                   58
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   56
        .byte   W03
        .byte                   55
        .byte           N05
        .byte   W03
        .byte           VOL   , 53
        .byte   W03
@ 001   ----------------------------------------
onward_s_2_1:
        .byte           VOL   , 62
        .byte           N72   , Gn3 , v086
        .byte   W12
        .byte           VOL   , 61
        .byte   W03
        .byte                   60
        .byte   W03
        .byte                   59
        .byte   W03
        .byte                   58
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   56
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   54
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   51
        .byte   W21
        .byte                   35
        .byte   W36
        .byte   PEND
@ 002   ----------------------------------------
        .byte                   62
        .byte           N68   , Gn3 , v086 , gtp3
        .byte   W12
        .byte           VOL   , 61
        .byte   W03
        .byte                   60
        .byte   W03
        .byte                   59
        .byte   W03
        .byte                   58
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   56
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   54
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   51
        .byte   W21
        .byte                   35
        .byte   W30
        .byte                   47
        .byte           N04
        .byte   W03
        .byte           VOL   , 55
        .byte   W03
@ 003   ----------------------------------------
        .byte                   62
        .byte           N44   , Gn3 , v086 , gtp2
        .byte   W18
        .byte           VOL   , 61
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   59
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   55
        .byte   W12
        .byte                   47
        .byte   W06
        .byte                   62
        .byte           N44   , Fs3 , v086 , gtp2
        .byte   W18
        .byte           VOL   , 61
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   59
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   55
        .byte   W12
        .byte                   47
        .byte   W06
@ 004   ----------------------------------------
        .byte                   62
        .byte           N68   , Fs3 , v086 , gtp2
        .byte   W12
        .byte           VOL   , 61
        .byte   W03
        .byte                   60
        .byte   W03
        .byte                   59
        .byte   W03
        .byte                   58
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   56
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   54
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   51
        .byte   W21
        .byte                   35
        .byte   W12
        .byte                   55
        .byte           N15   , An3
        .byte   W06
        .byte           VOL   , 59
        .byte   W03
        .byte                   58
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   56
        .byte   W03
        .byte                   55
        .byte           N05
        .byte   W03
        .byte           VOL   , 53
        .byte   W03
@ 005   ----------------------------------------
        .byte   PATT
         .word  onward_s_2_1
@ 006   ----------------------------------------
        .byte           VOL   , 62
        .byte           N80   , Gn3 , v086 , gtp3
        .byte   W12
        .byte           VOL   , 61
        .byte   W03
        .byte                   60
        .byte   W03
        .byte                   59
        .byte   W03
        .byte                   58
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   56
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   54
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   51
        .byte   W21
        .byte                   35
        .byte   W30
        .byte                   47
        .byte           N04   , An3
        .byte   W03
        .byte           VOL   , 55
        .byte   W03
@ 007   ----------------------------------------
        .byte                   62
        .byte           N44   , Gn3 , v086 , gtp3
        .byte   W18
        .byte           VOL   , 61
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   59
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   55
        .byte   W12
        .byte                   47
        .byte   W06
        .byte                   62
        .byte           N44   , Fs3 , v086 , gtp3
        .byte   W18
        .byte           VOL   , 61
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   59
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   55
        .byte   W12
        .byte                   47
        .byte   W06
@ 008   ----------------------------------------
        .byte   W96
@ 009   ----------------------------------------
        .byte   W96
@ 010   ----------------------------------------
        .byte   W96
@ 011   ----------------------------------------
        .byte   W96
@ 012   ----------------------------------------
onward_s_2_12:
        .byte           VOL   , 62
        .byte           N10   , Gn3 , v096
        .byte   W09
        .byte           VOL   , 35
        .byte   W03
        .byte                   62
        .byte           N04   , Dn3
        .byte   W06
        .byte                   Cn3
        .byte   W06
        .byte           N32   , Bn2 , v096 , gtp2
        .byte   W12
        .byte           VOL   , 61
        .byte   W03
        .byte                   59
        .byte   W09
        .byte                   35
        .byte   W12
        .byte                   62
        .byte           N04
        .byte   W06
        .byte                   Cn3
        .byte   W06
        .byte           N10   , Dn3
        .byte   W12
        .byte                   Gn3
        .byte   W12
        .byte   PEND
@ 013   ----------------------------------------
        .byte           N16
        .byte   W12
        .byte           VOL   , 35
        .byte   W06
        .byte                   55
        .byte           N04   , Fn3
        .byte   W03
        .byte           VOL   , 57
        .byte   W03
        .byte                   62
        .byte           N54
        .byte   W18
        .byte           VOL   , 61
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   59
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   55
        .byte   W12
        .byte                   47
        .byte   W06
        .byte                   35
        .byte   W24
@ 014   ----------------------------------------
        .byte   PATT
         .word  onward_s_2_12
@ 015   ----------------------------------------
        .byte           N16   , Bn3 , v096
        .byte   W12
        .byte           VOL   , 35
        .byte   W06
        .byte                   55
        .byte           N04   , Cn4
        .byte   W03
        .byte           VOL   , 57
        .byte   W03
        .byte                   62
        .byte           N68   , Dn4 , v096 , gtp2
        .byte   W03
        .byte           VOL   , 61
        .byte   W03
        .byte                   59
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   51
        .byte   W03
        .byte                   47
        .byte   W03
        .byte                   43
        .byte   W03
        .byte                   38
        .byte   W03
        .byte                   39
        .byte   W03
        .byte                   40
        .byte   W03
        .byte                   41
        .byte   W03
        .byte                   42
        .byte   W03
        .byte                   43
        .byte   W03
        .byte                   45
        .byte   W03
        .byte                   47
        .byte   W03
        .byte                   49
        .byte   W03
        .byte                   51
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   59
        .byte   W03
        .byte                   35
        .byte   W06
@ 016   ----------------------------------------
        .byte           VOICE , 46
        .byte           N04   , Gn2 , v108
        .byte   W06
        .byte                   Dn3
        .byte   W06
        .byte           PAN   , c_v-8
        .byte           N04   , Gn3
        .byte   W06
        .byte                   Bn3
        .byte   W06
        .byte           PAN   , c_v+0
        .byte           N04   , Dn4
        .byte   W06
        .byte                   Bn3
        .byte   W06
        .byte           PAN   , c_v-8
        .byte           N04   , Gn3
        .byte   W06
        .byte                   Dn3
        .byte   W06
        .byte           PAN   , c_v-16
        .byte           N04   , Gn2
        .byte   W06
        .byte                   Dn3
        .byte   W06
        .byte           PAN   , c_v-8
        .byte           N04   , Gn3
        .byte   W06
        .byte                   Bn3
        .byte   W06
        .byte           PAN   , c_v+0
        .byte           N04   , Dn4
        .byte   W06
        .byte                   Bn3
        .byte   W06
        .byte           PAN   , c_v-8
        .byte           N04   , Gn3
        .byte   W06
        .byte                   Dn3
        .byte   W06
@ 017   ----------------------------------------
onward_s_2_17:
        .byte           PAN   , c_v-16
        .byte           N04   , Fn2 , v108
        .byte   W06
        .byte                   An2
        .byte   W06
        .byte           PAN   , c_v-12
        .byte           N04   , Cn3
        .byte   W06
        .byte           PAN   , c_v-8
        .byte           N04   , Fn3
        .byte   W06
        .byte           PAN   , c_v-4
        .byte           N04   , An3
        .byte   W06
        .byte           PAN   , c_v+0
        .byte           N04   , Cn4
        .byte   W06
        .byte           PAN   , c_v+4
        .byte           N04   , Fn4
        .byte   W06
        .byte           PAN   , c_v+8
        .byte           N04   , An4
        .byte   W06
        .byte           PAN   , c_v+12
        .byte           N04   , Fn4
        .byte   W06
        .byte           PAN   , c_v+8
        .byte           N04   , Cn4
        .byte   W06
        .byte           PAN   , c_v+4
        .byte           N04   , An3
        .byte   W06
        .byte           PAN   , c_v+0
        .byte           N04   , Fn3
        .byte   W06
        .byte           PAN   , c_v-4
        .byte           N04   , Cn3
        .byte   W06
        .byte           PAN   , c_v-8
        .byte           N04   , An2
        .byte   W06
        .byte           PAN   , c_v-16
        .byte           N04   , Fn2
        .byte   W06
        .byte                   Cn2
        .byte   W06
        .byte   PEND
@ 018   ----------------------------------------
onward_s_2_18:
        .byte           N04   , Gn2 , v108
        .byte   W06
        .byte                   Dn3
        .byte   W06
        .byte           PAN   , c_v-8
        .byte           N04   , Gn3
        .byte   W06
        .byte                   Bn3
        .byte   W06
        .byte           PAN   , c_v+0
        .byte           N04   , Dn4
        .byte   W06
        .byte                   Bn3
        .byte   W06
        .byte           PAN   , c_v-8
        .byte           N04   , Gn3
        .byte   W06
        .byte                   Dn3
        .byte   W06
        .byte           PAN   , c_v-16
        .byte           N04   , Gn2
        .byte   W06
        .byte                   Dn3
        .byte   W06
        .byte           PAN   , c_v-8
        .byte           N04   , Gn3
        .byte   W06
        .byte                   Bn3
        .byte   W06
        .byte           PAN   , c_v+0
        .byte           N04   , Dn4
        .byte   W06
        .byte                   Bn3
        .byte   W06
        .byte           PAN   , c_v-8
        .byte           N04   , Gn3
        .byte   W06
        .byte                   Dn3
        .byte   W06
        .byte   PEND
@ 019   ----------------------------------------
        .byte           PAN   , c_v-16
        .byte           N04   , Fn2
        .byte   W06
        .byte                   An2
        .byte   W06
        .byte           PAN   , c_v-12
        .byte           N04   , Cn3
        .byte   W06
        .byte           PAN   , c_v-8
        .byte           N04   , Fn3
        .byte   W06
        .byte           PAN   , c_v-4
        .byte           N04   , An3
        .byte   W06
        .byte           PAN   , c_v+0
        .byte           N04   , Cn4
        .byte   W06
        .byte           PAN   , c_v+4
        .byte           N04   , Fn4
        .byte   W06
        .byte           PAN   , c_v+8
        .byte           N04   , An4
        .byte   W06
        .byte           PAN   , c_v+16
        .byte           N04   , Cn5
        .byte   W06
        .byte                   An4
        .byte   W06
        .byte           PAN   , c_v+12
        .byte           N04   , Fn4
        .byte   W06
        .byte           PAN   , c_v+4
        .byte           N04   , Cn4
        .byte   W06
        .byte                   Fn4
        .byte   W06
        .byte                   Cn4
        .byte   W06
        .byte           PAN   , c_v+0
        .byte           N04   , An3
        .byte   W06
        .byte           PAN   , c_v-4
        .byte           N04   , Fn3
        .byte   W06
@ 020   ----------------------------------------
        .byte           PAN   , c_v-16
        .byte           N04   , Gn2
        .byte   W06
        .byte                   Dn3
        .byte   W06
        .byte           PAN   , c_v-8
        .byte           N04   , Gn3
        .byte   W06
        .byte                   Bn3
        .byte   W06
        .byte           PAN   , c_v+0
        .byte           N04   , Dn4
        .byte   W06
        .byte                   Bn3
        .byte   W06
        .byte           PAN   , c_v-8
        .byte           N04   , Gn3
        .byte   W06
        .byte                   Dn3
        .byte   W06
        .byte           PAN   , c_v-16
        .byte           N04   , Gn2
        .byte   W06
        .byte                   Dn3
        .byte   W06
        .byte           PAN   , c_v-8
        .byte           N04   , Gn3
        .byte   W06
        .byte                   Bn3
        .byte   W06
        .byte           PAN   , c_v+0
        .byte           N04   , Dn4
        .byte   W06
        .byte                   Bn3
        .byte   W06
        .byte           PAN   , c_v-8
        .byte           N04   , Gn3
        .byte   W06
        .byte                   Dn3
        .byte   W06
@ 021   ----------------------------------------
        .byte   PATT
         .word  onward_s_2_17
@ 022   ----------------------------------------
        .byte   PATT
         .word  onward_s_2_18
@ 023   ----------------------------------------
        .byte           PAN   , c_v-16
        .byte           N04   , Fn2 , v108
        .byte   W06
        .byte                   An2
        .byte   W06
        .byte           PAN   , c_v-12
        .byte           N04   , Cn3
        .byte   W06
        .byte           PAN   , c_v-8
        .byte           N04   , Fn3
        .byte   W06
        .byte           PAN   , c_v-4
        .byte           N04   , An3
        .byte   W06
        .byte           PAN   , c_v+0
        .byte           N04   , Cn4
        .byte   W06
        .byte           PAN   , c_v+4
        .byte           N04   , Fn4
        .byte   W06
        .byte           PAN   , c_v+8
        .byte           N04   , An4
        .byte   W06
        .byte           PAN   , c_v+16
        .byte           N04   , Cn5
        .byte   W06
        .byte           PAN   , c_v+12
        .byte           N04   , An4
        .byte   W06
        .byte           PAN   , c_v+8
        .byte           N04   , Fn4
        .byte   W06
        .byte                   Cn4
        .byte   W06
        .byte           PAN   , c_v-8
        .byte           N04   , Fn3
        .byte   W06
        .byte           PAN   , c_v+8
        .byte           N04   , An3
        .byte   W06
        .byte           PAN   , c_v+12
        .byte           N04   , Cn4
        .byte   W06
        .byte           PAN   , c_v+16
        .byte           N04   , Fn4
        .byte   W06
@ 024   ----------------------------------------
        .byte           PAN   , c_v+8
        .byte           VOL   , 41
        .byte           VOICE , 42
        .byte           TIE   , Gn5 , v048
        .byte   W03
        .byte           VOL   , 42
        .byte   W03
        .byte                   43
        .byte   W06
        .byte                   44
        .byte   W12
        .byte                   45
        .byte   W12
        .byte                   46
        .byte   W12
        .byte                   47
        .byte   W03
        .byte                   48
        .byte   W03
        .byte                   49
        .byte   W03
        .byte                   50
        .byte   W03
        .byte                   51
        .byte   W03
        .byte                   52
        .byte   W03
        .byte                   53
        .byte   W03
        .byte                   54
        .byte   W03
        .byte                   55
        .byte   W03
        .byte                   56
        .byte   W03
        .byte                   57
        .byte   W03
        .byte                   58
        .byte   W03
        .byte                   59
        .byte   W03
        .byte                   60
        .byte   W03
        .byte                   61
        .byte   W03
        .byte                   62
        .byte   W03
@ 025   ----------------------------------------
        .byte   W12
        .byte                   61
        .byte   W12
        .byte                   60
        .byte   W12
        .byte                   59
        .byte   W12
        .byte                   58
        .byte   W12
        .byte                   57
        .byte   W12
        .byte                   56
        .byte   W06
        .byte                   55
        .byte   W06
        .byte                   54
        .byte   W12
@ 026   ----------------------------------------
        .byte                   53
        .byte   W12
        .byte                   52
        .byte   W12
        .byte                   51
        .byte   W12
        .byte                   50
        .byte   W12
        .byte                   49
        .byte   W12
        .byte                   48
        .byte   W12
        .byte                   47
        .byte   W24
@ 027   ----------------------------------------
        .byte   W06
        .byte                   46
        .byte   W24
        .byte                   45
        .byte   W12
        .byte                   44
        .byte   W12
        .byte                   43
        .byte   W06
        .byte                   42
        .byte   W06
        .byte                   41
        .byte   W06
        .byte                   40
        .byte   W03
        .byte                   39
        .byte   W03
        .byte                   37
        .byte   W03
        .byte                   31
        .byte   W03
        .byte                   27
        .byte   W03
        .byte                   23
        .byte   W03
        .byte                   20
        .byte   W03
        .byte                   16
        .byte   W03
@ 028   ----------------------------------------
        .byte           VOICE , 56
        .byte   W06
        .byte           EOT
        .byte   W06
        .byte           PAN   , c_v-16
        .byte           VOL   , 62
        .byte           N04   , Gn4 , v127
        .byte   W05
        .byte           N05
        .byte   W07
        .byte           N11
        .byte   W12
        .byte           N04   , Bn4
        .byte   W05
        .byte           N05
        .byte   W07
        .byte           N10
        .byte   W09
        .byte           VOL   , 35
        .byte   W03
        .byte                   62
        .byte           N10   , An4
        .byte   W09
        .byte           VOL   , 35
        .byte   W03
        .byte                   62
        .byte           N10
        .byte   W12
        .byte           N21   , Gn4
        .byte   W12
@ 029   ----------------------------------------
        .byte           VOL   , 35
        .byte   W12
        .byte                   62
        .byte           N04
        .byte   W05
        .byte           N05
        .byte   W07
        .byte           N11
        .byte   W12
        .byte           N04   , Bn4
        .byte   W05
        .byte           N05
        .byte   W07
        .byte           N10
        .byte   W09
        .byte           VOL   , 35
        .byte   W03
        .byte                   62
        .byte           N11   , An4
        .byte   W09
        .byte           VOL   , 35
        .byte   W03
        .byte                   62
        .byte           N10
        .byte   W12
        .byte           N21   , Gn4
        .byte   W12
@ 030   ----------------------------------------
        .byte           VOL   , 35
        .byte   W12
        .byte                   62
        .byte           N04
        .byte   W05
        .byte           N05
        .byte   W07
        .byte           N11
        .byte   W12
        .byte           N04   , Bn4
        .byte   W05
        .byte           N05
        .byte   W07
        .byte           N10
        .byte   W09
        .byte           VOL   , 35
        .byte   W03
        .byte                   62
        .byte           N10   , An4
        .byte   W09
        .byte           VOL   , 35
        .byte   W03
        .byte                   62
        .byte           N10
        .byte   W12
        .byte           N21   , Gn4
        .byte   W12
@ 031   ----------------------------------------
        .byte           VOL   , 35
        .byte   W12
        .byte                   62
        .byte           N04
        .byte   W05
        .byte           N05
        .byte   W07
        .byte           N11
        .byte   W12
        .byte           N04   , Bn4
        .byte   W05
        .byte           N05
        .byte   W07
        .byte           N10
        .byte   W09
        .byte           VOL   , 35
        .byte   W03
        .byte                   62
        .byte           N10   , An4
        .byte   W09
        .byte           VOL   , 35
        .byte   W03
        .byte                   62
        .byte           N10
        .byte   W12
        .byte           N12   , Gn4
        .byte   W12
@ 032   ----------------------------------------
        .byte           VOICE , 65
        .byte   GOTO
         .word  onward_s_2_LOOP
        .byte   W72
        .byte   FINE

@****************** Track 3 (Midi-Chn.3) ******************@

onward_s_3:
        .byte   KEYSH , onward_s_key+0
@ 000   ----------------------------------------
onward_s_3_LOOP:
        .byte           VOICE , 51
        .byte           PAN   , c_v+22
        .byte           VOL   , 31
        .byte           N78   , Fs2 , v092 , gtp1
        .byte   W12
        .byte           VOL   , 32
        .byte   W03
        .byte                   33
        .byte   W03
        .byte                   34
        .byte   W06
        .byte                   35
        .byte   W48
        .byte                   22
        .byte   W12
        .byte                   34
        .byte           N10   , Fs2 , v100
        .byte   W09
        .byte           VOL   , 22
        .byte   W03
@ 001   ----------------------------------------
onward_s_3_1:
        .byte           VOL   , 31
        .byte           N90   , Gn2 , v100 , gtp1
        .byte   W03
        .byte           VOL   , 32
        .byte   W03
        .byte                   34
        .byte   W03
        .byte                   36
        .byte   W03
        .byte                   37
        .byte   W12
        .byte                   36
        .byte   W03
        .byte                   35
        .byte   W06
        .byte                   34
        .byte   W24
        .byte                   33
        .byte   W03
        .byte                   32
        .byte   W06
        .byte                   31
        .byte   W09
        .byte                   30
        .byte   W03
        .byte                   29
        .byte   W06
        .byte                   22
        .byte   W12
        .byte   PEND
@ 002   ----------------------------------------
        .byte   PATT
         .word  onward_s_3_1
@ 003   ----------------------------------------
onward_s_3_3:
        .byte           VOL   , 31
        .byte           N44   , Gn2 , v100 , gtp2
        .byte   W03
        .byte           VOL   , 34
        .byte   W03
        .byte                   36
        .byte   W03
        .byte                   37
        .byte   W03
        .byte                   38
        .byte   W12
        .byte                   37
        .byte   W03
        .byte                   36
        .byte   W15
        .byte                   22
        .byte   W06
        .byte                   31
        .byte           N44   , Fs2 , v100 , gtp2
        .byte   W03
        .byte           VOL   , 34
        .byte   W03
        .byte                   36
        .byte   W03
        .byte                   37
        .byte   W03
        .byte                   38
        .byte   W12
        .byte                   37
        .byte   W03
        .byte                   36
        .byte   W15
        .byte                   22
        .byte   W06
        .byte   PEND
@ 004   ----------------------------------------
        .byte                   31
        .byte           N78   , Fs2 , v092 , gtp1
        .byte   W03
        .byte           VOL   , 36
        .byte   W03
        .byte                   38
        .byte   W06
        .byte                   37
        .byte   W06
        .byte                   36
        .byte   W03
        .byte                   35
        .byte   W48
        .byte   W03
        .byte                   22
        .byte   W12
        .byte                   34
        .byte           N10   , Fs2 , v100
        .byte   W09
        .byte           VOL   , 22
        .byte   W03
@ 005   ----------------------------------------
        .byte   PATT
         .word  onward_s_3_1
@ 006   ----------------------------------------
        .byte   PATT
         .word  onward_s_3_1
@ 007   ----------------------------------------
        .byte   PATT
         .word  onward_s_3_3
@ 008   ----------------------------------------
onward_s_3_8:
        .byte           VOL   , 31
        .byte           N10   , Dn2 , v100
        .byte   W06
        .byte           VOL   , 22
        .byte   W06
        .byte                   38
        .byte           N10
        .byte   W06
        .byte           VOL   , 22
        .byte   W06
        .byte                   19
        .byte           N06
        .byte   W12
        .byte           VOL   , 31
        .byte           N10
        .byte   W03
        .byte           VOL   , 34
        .byte   W03
        .byte                   22
        .byte   W06
        .byte                   38
        .byte           N10
        .byte   W06
        .byte           VOL   , 22
        .byte   W06
        .byte                   38
        .byte           N10
        .byte   W06
        .byte           VOL   , 22
        .byte   W06
        .byte                   17
        .byte           N06
        .byte   W12
        .byte           VOL   , 34
        .byte           N10
        .byte   W06
        .byte           VOL   , 22
        .byte   W06
        .byte   PEND
@ 009   ----------------------------------------
onward_s_3_9:
        .byte           VOL   , 31
        .byte           N10   , Cn2 , v100
        .byte   W06
        .byte           VOL   , 22
        .byte   W06
        .byte                   38
        .byte           N10
        .byte   W06
        .byte           VOL   , 22
        .byte   W06
        .byte                   19
        .byte           N06
        .byte   W12
        .byte           VOL   , 31
        .byte           N10
        .byte   W03
        .byte           VOL   , 34
        .byte   W03
        .byte                   22
        .byte   W06
        .byte                   38
        .byte           N10
        .byte   W06
        .byte           VOL   , 22
        .byte   W06
        .byte                   38
        .byte           N10
        .byte   W06
        .byte           VOL   , 22
        .byte   W06
        .byte                   17
        .byte           N06
        .byte   W12
        .byte           VOL   , 34
        .byte           N10
        .byte   W06
        .byte           VOL   , 22
        .byte   W06
        .byte   PEND
@ 010   ----------------------------------------
        .byte   PATT
         .word  onward_s_3_8
@ 011   ----------------------------------------
onward_s_3_11:
        .byte           VOL   , 31
        .byte           N10   , Fn2 , v100
        .byte   W06
        .byte           VOL   , 22
        .byte   W06
        .byte                   38
        .byte           N10
        .byte   W06
        .byte           VOL   , 22
        .byte   W06
        .byte                   19
        .byte           N06
        .byte   W12
        .byte           VOL   , 31
        .byte           N10
        .byte   W03
        .byte           VOL   , 34
        .byte   W03
        .byte                   22
        .byte   W06
        .byte                   38
        .byte           N10
        .byte   W06
        .byte           VOL   , 22
        .byte   W06
        .byte                   38
        .byte           N10
        .byte   W06
        .byte           VOL   , 22
        .byte   W06
        .byte                   17
        .byte           N06
        .byte   W12
        .byte           VOL   , 34
        .byte           N10
        .byte   W06
        .byte           VOL   , 22
        .byte   W06
        .byte   PEND
@ 012   ----------------------------------------
        .byte   PATT
         .word  onward_s_3_8
@ 013   ----------------------------------------
        .byte   PATT
         .word  onward_s_3_9
@ 014   ----------------------------------------
        .byte   PATT
         .word  onward_s_3_8
@ 015   ----------------------------------------
        .byte   PATT
         .word  onward_s_3_11
@ 016   ----------------------------------------
onward_s_3_16:
        .byte           VOL   , 38
        .byte           N10   , Bn1 , v120
        .byte   W09
        .byte           VOL   , 22
        .byte   W03
        .byte                   38
        .byte           N04
        .byte   W06
        .byte                   Cn2
        .byte   W03
        .byte           VOL   , 34
        .byte   W03
        .byte                   36
        .byte           N32   , Dn2 , v120 , gtp2
        .byte   W03
        .byte           VOL   , 37
        .byte   W03
        .byte                   38
        .byte   W21
        .byte                   22
        .byte   W09
        .byte                   38
        .byte           N04   , Bn1
        .byte   W06
        .byte                   Cn2
        .byte   W06
        .byte           N10   , Dn2
        .byte   W12
        .byte                   Dn2
        .byte   W09
        .byte           VOL   , 22
        .byte   W03
        .byte   PEND
@ 017   ----------------------------------------
onward_s_3_17:
        .byte           VOL   , 38
        .byte           N16   , Dn2 , v120
        .byte   W15
        .byte           VOL   , 22
        .byte   W03
        .byte                   38
        .byte           N04   , Cn2
        .byte   W03
        .byte           VOL   , 34
        .byte   W03
        .byte                   36
        .byte           N66   , En2
        .byte   W03
        .byte           VOL   , 37
        .byte   W03
        .byte                   38
        .byte   W18
        .byte                   37
        .byte   W03
        .byte                   36
        .byte   W03
        .byte                   35
        .byte   W03
        .byte                   34
        .byte   W15
        .byte                   22
        .byte   W06
        .byte                   17
        .byte   W18
        .byte   PEND
@ 018   ----------------------------------------
onward_s_3_18:
        .byte           VOL   , 38
        .byte           N10   , Bn1 , v120
        .byte   W09
        .byte           VOL   , 22
        .byte   W03
        .byte                   38
        .byte           N04
        .byte   W06
        .byte                   Cn2
        .byte   W03
        .byte           VOL   , 34
        .byte   W03
        .byte                   36
        .byte           N32   , Dn2 , v120 , gtp2
        .byte   W03
        .byte           VOL   , 37
        .byte   W03
        .byte                   38
        .byte   W21
        .byte                   22
        .byte   W09
        .byte                   38
        .byte           N04
        .byte   W06
        .byte                   Dn2
        .byte   W06
        .byte           N10
        .byte   W12
        .byte                   Dn2
        .byte   W09
        .byte           VOL   , 22
        .byte   W03
        .byte   PEND
@ 019   ----------------------------------------
        .byte                   38
        .byte           N16
        .byte   W15
        .byte           VOL   , 22
        .byte   W03
        .byte                   38
        .byte           N04   , En2
        .byte   W03
        .byte           VOL   , 34
        .byte   W03
        .byte                   36
        .byte           N66   , Fn2
        .byte   W03
        .byte           VOL   , 37
        .byte   W03
        .byte                   38
        .byte   W18
        .byte                   37
        .byte   W03
        .byte                   36
        .byte   W03
        .byte                   35
        .byte   W03
        .byte                   34
        .byte   W15
        .byte                   22
        .byte   W06
        .byte                   17
        .byte   W18
@ 020   ----------------------------------------
        .byte   PATT
         .word  onward_s_3_16
@ 021   ----------------------------------------
        .byte   PATT
         .word  onward_s_3_17
@ 022   ----------------------------------------
        .byte   PATT
         .word  onward_s_3_18
@ 023   ----------------------------------------
        .byte           VOL   , 38
        .byte           N16   , Dn2 , v120
        .byte   W15
        .byte           VOL   , 22
        .byte   W03
        .byte                   38
        .byte           N04   , En2
        .byte   W03
        .byte           VOL   , 34
        .byte   W03
        .byte                   36
        .byte           N72   , Fn2
        .byte   W03
        .byte           VOL   , 37
        .byte   W03
        .byte                   38
        .byte   W09
        .byte                   37
        .byte   W03
        .byte                   36
        .byte   W03
        .byte                   34
        .byte   W03
        .byte                   32
        .byte   W03
        .byte                   31
        .byte   W03
        .byte                   29
        .byte   W03
        .byte                   26
        .byte   W06
        .byte                   25
        .byte   W06
        .byte                   24
        .byte   W03
        .byte                   25
        .byte   W03
        .byte                   26
        .byte   W03
        .byte                   28
        .byte   W03
        .byte                   29
        .byte   W03
        .byte                   31
        .byte   W03
        .byte                   34
        .byte   W03
        .byte                   36
        .byte   W03
        .byte                   38
        .byte   W03
@ 024   ----------------------------------------
        .byte           N10   , Gn2 , v100
        .byte   W09
        .byte           VOL   , 22
        .byte   W03
        .byte           N12
        .byte   W24
        .byte           VOL   , 29
        .byte           N04
        .byte   W03
        .byte           VOL   , 31
        .byte   W03
        .byte                   34
        .byte           N04   , Gn2 , v090
        .byte   W03
        .byte           VOL   , 36
        .byte   W03
        .byte                   38
        .byte           N10   , Gn2 , v100
        .byte   W09
        .byte           VOL   , 22
        .byte   W03
        .byte           N12
        .byte   W24
        .byte           VOL   , 29
        .byte           N10
        .byte   W03
        .byte           VOL   , 34
        .byte   W03
        .byte                   22
        .byte   W06
@ 025   ----------------------------------------
        .byte                   38
        .byte           N10   , Fn2
        .byte   W09
        .byte           VOL   , 22
        .byte   W03
        .byte           N12
        .byte   W24
        .byte           VOL   , 29
        .byte           N04
        .byte   W03
        .byte           VOL   , 31
        .byte   W03
        .byte                   34
        .byte           N04   , Fn2 , v090
        .byte   W03
        .byte           VOL   , 36
        .byte   W03
        .byte                   38
        .byte           N10   , Fn2 , v100
        .byte   W09
        .byte           VOL   , 22
        .byte   W03
        .byte           N12
        .byte   W24
        .byte           VOL   , 29
        .byte           N10
        .byte   W03
        .byte           VOL   , 34
        .byte   W03
        .byte                   22
        .byte   W06
@ 026   ----------------------------------------
        .byte                   38
        .byte           N10   , Gn2
        .byte   W09
        .byte           VOL   , 22
        .byte   W03
        .byte           N12
        .byte   W24
        .byte           VOL   , 29
        .byte           N04
        .byte   W03
        .byte           VOL   , 31
        .byte   W03
        .byte                   34
        .byte           N04   , Gn2 , v090
        .byte   W03
        .byte           VOL   , 36
        .byte   W03
        .byte                   38
        .byte           N10   , Gn2 , v100
        .byte   W09
        .byte           VOL   , 22
        .byte   W03
        .byte           N12
        .byte   W24
        .byte           VOL   , 29
        .byte           N10   , Fn2
        .byte   W03
        .byte           VOL   , 34
        .byte   W03
        .byte                   22
        .byte   W06
@ 027   ----------------------------------------
        .byte                   38
        .byte           N10   , Ds2
        .byte   W09
        .byte           VOL   , 22
        .byte   W03
        .byte           N12
        .byte   W24
        .byte           VOL   , 29
        .byte           N04
        .byte   W03
        .byte           VOL   , 31
        .byte   W03
        .byte                   34
        .byte           N04   , Ds2 , v090
        .byte   W03
        .byte           VOL   , 36
        .byte   W03
        .byte                   38
        .byte           N10   , Ds2 , v100
        .byte   W09
        .byte           VOL   , 22
        .byte   W03
        .byte           N12
        .byte   W24
        .byte           VOL   , 29
        .byte           N05
        .byte   W03
        .byte           VOL   , 34
        .byte   W02
        .byte           N05   , Fn2
        .byte   W01
        .byte           VOL   , 22
        .byte   W06
@ 028   ----------------------------------------
        .byte                   38
        .byte           N10   , Gn2 , v092
        .byte   W09
        .byte           VOL   , 22
        .byte   W03
        .byte           N12
        .byte   W24
        .byte           VOL   , 29
        .byte           N04
        .byte   W03
        .byte           VOL   , 31
        .byte   W03
        .byte                   34
        .byte           N04
        .byte   W03
        .byte           VOL   , 36
        .byte   W03
        .byte                   38
        .byte           N10
        .byte   W09
        .byte           VOL   , 22
        .byte   W03
        .byte           N12
        .byte   W24
        .byte           VOL   , 29
        .byte           N10
        .byte   W03
        .byte           VOL   , 34
        .byte   W03
        .byte                   22
        .byte   W06
@ 029   ----------------------------------------
        .byte                   38
        .byte           N10   , Fn2
        .byte   W09
        .byte           VOL   , 22
        .byte   W03
        .byte           N12
        .byte   W24
        .byte           VOL   , 29
        .byte           N04
        .byte   W03
        .byte           VOL   , 31
        .byte   W03
        .byte                   34
        .byte           N04
        .byte   W03
        .byte           VOL   , 36
        .byte   W03
        .byte                   38
        .byte           N10
        .byte   W09
        .byte           VOL   , 22
        .byte   W03
        .byte           N12
        .byte   W24
        .byte           VOL   , 29
        .byte           N10
        .byte   W03
        .byte           VOL   , 34
        .byte   W03
        .byte                   22
        .byte   W06
@ 030   ----------------------------------------
        .byte                   38
        .byte           N10   , Gn2
        .byte   W09
        .byte           VOL   , 22
        .byte   W03
        .byte           N12
        .byte   W24
        .byte           VOL   , 29
        .byte           N04
        .byte   W03
        .byte           VOL   , 31
        .byte   W03
        .byte                   34
        .byte           N04
        .byte   W03
        .byte           VOL   , 36
        .byte   W03
        .byte                   38
        .byte           N10
        .byte   W09
        .byte           VOL   , 22
        .byte   W03
        .byte           N12
        .byte   W24
        .byte           VOL   , 29
        .byte           N10   , Fn2
        .byte   W03
        .byte           VOL   , 34
        .byte   W03
        .byte                   22
        .byte   W06
@ 031   ----------------------------------------
        .byte                   38
        .byte           N10   , Ds2
        .byte   W09
        .byte           VOL   , 22
        .byte   W03
        .byte           N12
        .byte   W24
        .byte           VOL   , 29
        .byte           N04
        .byte   W03
        .byte           VOL   , 31
        .byte   W03
        .byte                   34
        .byte           N04   , Fn2
        .byte   W03
        .byte           VOL   , 36
        .byte   W03
        .byte                   38
        .byte           N16   , Gn2
        .byte   W12
        .byte           VOL   , 22
        .byte   W06
        .byte           N04
        .byte   W06
        .byte           VOL   , 34
        .byte           N24   , An2
        .byte   W03
        .byte           VOL   , 31
        .byte   W03
        .byte                   29
        .byte   W06
        .byte                   31
        .byte   W03
        .byte                   34
        .byte   W03
        .byte                   36
        .byte   W03
        .byte                   38
        .byte   W03
@ 032   ----------------------------------------
        .byte                   31
        .byte   GOTO
         .word  onward_s_3_LOOP
        .byte   W72
        .byte   FINE

@****************** Track 4 (Midi-Chn.4) ******************@

onward_s_4:
        .byte   KEYSH , onward_s_key+0
@ 000   ----------------------------------------
onward_s_4_LOOP:
        .byte           VOICE , 47
        .byte           PAN   , c_v-4
        .byte           VOL   , 45
        .byte           N48   , Gn2 , v100
        .byte   W96
@ 001   ----------------------------------------
        .byte   W96
@ 002   ----------------------------------------
        .byte   W96
@ 003   ----------------------------------------
onward_s_4_3:
        .byte   W84
        .byte           N11   , Dn3 , v100
        .byte   W12
        .byte   PEND
@ 004   ----------------------------------------
        .byte           N48   , Gn2
        .byte   W96
@ 005   ----------------------------------------
        .byte   W96
@ 006   ----------------------------------------
        .byte   W96
@ 007   ----------------------------------------
        .byte                   Gn1
        .byte   W48
        .byte           N03   , Dn3 , v024
        .byte   W03
        .byte                   Dn3 , v032
        .byte   W03
        .byte                   Dn3 , v040
        .byte   W03
        .byte                   Dn3 , v048
        .byte   W03
        .byte                   Dn3 , v052
        .byte   W03
        .byte                   Dn3 , v056
        .byte   W03
        .byte                   Dn3 , v060
        .byte   W03
        .byte                   Dn3
        .byte   W03
        .byte                   Dn3
        .byte   W03
        .byte                   Dn3 , v058
        .byte   W03
        .byte                   Dn3 , v056
        .byte   W03
        .byte                   Dn3 , v052
        .byte   W03
        .byte           N11   , Dn3 , v100
        .byte   W12
@ 008   ----------------------------------------
onward_s_4_8:
        .byte           N18   , Gn2 , v100
        .byte   W24
        .byte                   Dn2 , v080
        .byte   W24
        .byte                   Gn2 , v100
        .byte   W24
        .byte                   Dn2 , v080
        .byte   W24
        .byte   PEND
@ 009   ----------------------------------------
        .byte   PATT
         .word  onward_s_4_8
@ 010   ----------------------------------------
onward_s_4_10:
        .byte           N18   , Gn2 , v100
        .byte   W24
        .byte                   Dn2 , v080
        .byte   W24
        .byte                   Gn2 , v100
        .byte   W24
        .byte           N12   , Dn2 , v080
        .byte   W12
        .byte                   Gn2 , v100
        .byte   W12
        .byte   PEND
@ 011   ----------------------------------------
        .byte           N18   , An2
        .byte   W24
        .byte                   Dn2 , v080
        .byte   W24
        .byte                   An2 , v100
        .byte   W24
        .byte                   Dn2 , v080
        .byte   W24
@ 012   ----------------------------------------
        .byte   PATT
         .word  onward_s_4_8
@ 013   ----------------------------------------
        .byte   PATT
         .word  onward_s_4_8
@ 014   ----------------------------------------
        .byte   PATT
         .word  onward_s_4_10
@ 015   ----------------------------------------
        .byte           N18   , An2 , v100
        .byte   W24
        .byte                   Dn2 , v080
        .byte   W24
        .byte                   An2 , v100
        .byte   W24
        .byte           N05   , Dn2 , v080
        .byte   W06
        .byte           N03   , Dn2 , v032
        .byte   W03
        .byte                   Dn2 , v040
        .byte   W03
        .byte                   Dn2 , v048
        .byte   W03
        .byte                   Dn2 , v052
        .byte   W03
        .byte                   Dn2 , v056
        .byte   W03
        .byte                   Dn2 , v064
        .byte   W03
@ 016   ----------------------------------------
        .byte           N48   , Gn2 , v100
        .byte   W96
@ 017   ----------------------------------------
        .byte   W96
@ 018   ----------------------------------------
        .byte   W96
@ 019   ----------------------------------------
        .byte   PATT
         .word  onward_s_4_3
@ 020   ----------------------------------------
        .byte           N48   , Gn2 , v100
        .byte   W96
@ 021   ----------------------------------------
        .byte   W96
@ 022   ----------------------------------------
        .byte   W96
@ 023   ----------------------------------------
        .byte   W48
        .byte           N03   , Dn3 , v024
        .byte   W03
        .byte                   Dn3 , v032
        .byte   W03
        .byte                   Dn3 , v040
        .byte   W03
        .byte                   Dn3 , v048
        .byte   W03
        .byte                   Dn3 , v052
        .byte   W03
        .byte                   Dn3 , v056
        .byte   W03
        .byte                   Dn3 , v060
        .byte   W03
        .byte                   Dn3
        .byte   W03
        .byte                   Dn3
        .byte   W03
        .byte                   Dn3 , v058
        .byte   W03
        .byte                   Dn3 , v056
        .byte   W03
        .byte                   Dn3 , v052
        .byte   W03
        .byte           N11   , Dn3 , v100
        .byte   W12
@ 024   ----------------------------------------
        .byte           N48   , Gn2
        .byte   W96
@ 025   ----------------------------------------
        .byte                   Gn2
        .byte   W84
        .byte           N11   , Dn3
        .byte   W12
@ 026   ----------------------------------------
        .byte           N48   , Gn2
        .byte   W60
        .byte           N12   , Dn2
        .byte   W12
        .byte                   Dn3
        .byte   W12
        .byte                   Dn2
        .byte   W12
@ 027   ----------------------------------------
        .byte           N48   , Gn2
        .byte   W96
@ 028   ----------------------------------------
onward_s_4_28:
        .byte           N24   , Gn2 , v100
        .byte   W24
        .byte                   Dn2
        .byte   W24
        .byte                   Gn2
        .byte   W24
        .byte                   Dn2
        .byte   W24
        .byte   PEND
@ 029   ----------------------------------------
        .byte                   Gn2
        .byte   W24
        .byte                   Dn2
        .byte   W24
        .byte                   Gn2
        .byte   W24
        .byte           N12   , Dn2
        .byte   W12
        .byte                   Gn2
        .byte   W12
@ 030   ----------------------------------------
        .byte   PATT
         .word  onward_s_4_28
@ 031   ----------------------------------------
        .byte           N24   , Gn2 , v100
        .byte   W24
        .byte                   Dn2
        .byte   W24
        .byte                   Gn2
        .byte   W24
        .byte           N05   , Gn2 , v088
        .byte   W06
        .byte           N03   , Gn2 , v056
        .byte   W03
        .byte                   Gn2 , v064
        .byte   W03
        .byte                   Gn2 , v072
        .byte   W03
        .byte                   Gn2 , v080
        .byte   W03
        .byte                   Gn2 , v084
        .byte   W03
        .byte                   Gn2 , v088
        .byte   W03
@ 032   ----------------------------------------
        .byte   GOTO
         .word  onward_s_4_LOOP
        .byte   W72
        .byte   FINE

@****************** Track 5 (Midi-Chn.5) ******************@

onward_s_5:
        .byte   KEYSH , onward_s_key+0
@ 000   ----------------------------------------
onward_s_5_LOOP:
        .byte           VOICE , 49
        .byte           PAN   , c_v+27
        .byte           VOL   , 31
        .byte           N68   , Dn3 , v090 , gtp3
        .byte   W03
        .byte           VOL   , 34
        .byte   W03
        .byte                   35
        .byte   W03
        .byte                   36
        .byte   W03
        .byte                   37
        .byte   W03
        .byte                   38
        .byte   W03
        .byte                   39
        .byte   W06
        .byte                   40
        .byte   W48
        .byte           N16   , Fs3 , v100
        .byte   W09
        .byte           VOL   , 26
        .byte   W09
        .byte                   36
        .byte           N05
        .byte   W06
@ 001   ----------------------------------------
onward_s_5_1:
        .byte           VOL   , 41
        .byte           N80   , Dn3 , v100 , gtp3
        .byte   W24
        .byte           VOL   , 40
        .byte   W06
        .byte                   39
        .byte   W42
        .byte                   23
        .byte   W24
        .byte   PEND
@ 002   ----------------------------------------
onward_s_5_2:
        .byte           VOL   , 41
        .byte           N80   , Dn3 , v100 , gtp3
        .byte   W24
        .byte           VOL   , 40
        .byte   W06
        .byte                   39
        .byte   W42
        .byte                   23
        .byte   W18
        .byte                   36
        .byte           N04
        .byte   W06
        .byte   PEND
@ 003   ----------------------------------------
        .byte           VOL   , 41
        .byte           N44   , Dn3 , v100 , gtp3
        .byte   W48
        .byte                   Cn3
        .byte   W48
@ 004   ----------------------------------------
        .byte           N68   , Dn3 , v090 , gtp3
        .byte   W24
        .byte           VOL   , 40
        .byte   W06
        .byte                   39
        .byte   W42
        .byte           N16   , Fs3 , v100
        .byte   W09
        .byte           VOL   , 26
        .byte   W09
        .byte                   36
        .byte           N05
        .byte   W06
@ 005   ----------------------------------------
        .byte   PATT
         .word  onward_s_5_1
@ 006   ----------------------------------------
        .byte   PATT
         .word  onward_s_5_2
@ 007   ----------------------------------------
        .byte           VOL   , 41
        .byte           N44   , Dn3 , v100 , gtp2
        .byte   W24
        .byte           VOL   , 40
        .byte   W06
        .byte                   39
        .byte   W18
        .byte                   41
        .byte           N44   , Cn3 , v100 , gtp3
        .byte   W24
        .byte           VOL   , 40
        .byte   W06
        .byte                   39
        .byte   W18
@ 008   ----------------------------------------
        .byte                   34
        .byte   W12
        .byte           VOICE , 57
        .byte           VOL   , 41
        .byte           N04   , Gn3 , v076
        .byte   W06
        .byte           N09
        .byte   W06
        .byte           VOL   , 23
        .byte   W12
        .byte                   41
        .byte           N12
        .byte   W06
        .byte           VOL   , 23
        .byte   W18
        .byte                   41
        .byte           N12
        .byte   W06
        .byte           VOL   , 23
        .byte   W18
        .byte                   41
        .byte           N10
        .byte   W06
        .byte           VOL   , 23
        .byte   W06
@ 009   ----------------------------------------
onward_s_5_9:
        .byte   W12
        .byte           VOL   , 41
        .byte           N04   , Fn3 , v076
        .byte   W06
        .byte           N09
        .byte   W06
        .byte           VOL   , 23
        .byte   W12
        .byte                   41
        .byte           N12
        .byte   W06
        .byte           VOL   , 23
        .byte   W18
        .byte                   41
        .byte           N12
        .byte   W06
        .byte           VOL   , 23
        .byte   W18
        .byte                   41
        .byte           N10
        .byte   W06
        .byte           VOL   , 23
        .byte   W06
        .byte   PEND
@ 010   ----------------------------------------
        .byte   W12
        .byte                   41
        .byte           N04   , Gn3
        .byte   W06
        .byte           N09
        .byte   W06
        .byte           VOL   , 23
        .byte   W12
        .byte                   41
        .byte           N12
        .byte   W06
        .byte           VOL   , 23
        .byte   W18
        .byte                   41
        .byte           N12
        .byte   W06
        .byte           VOL   , 23
        .byte   W18
        .byte                   41
        .byte           N10
        .byte   W06
        .byte           VOL   , 23
        .byte   W06
@ 011   ----------------------------------------
        .byte   PATT
         .word  onward_s_5_9
@ 012   ----------------------------------------
onward_s_5_12:
        .byte   W12
        .byte           VOL   , 41
        .byte           N04   , Gn3 , v072
        .byte   W06
        .byte           N09
        .byte   W06
        .byte           VOL   , 23
        .byte   W12
        .byte                   41
        .byte           N12
        .byte   W06
        .byte           VOL   , 23
        .byte   W18
        .byte                   41
        .byte           N12
        .byte   W06
        .byte           VOL   , 23
        .byte   W18
        .byte                   41
        .byte           N10
        .byte   W06
        .byte           VOL   , 23
        .byte   W06
        .byte   PEND
@ 013   ----------------------------------------
onward_s_5_13:
        .byte   W12
        .byte           VOL   , 41
        .byte           N04   , Fn3 , v072
        .byte   W06
        .byte           N09
        .byte   W06
        .byte           VOL   , 23
        .byte   W12
        .byte                   41
        .byte           N12
        .byte   W06
        .byte           VOL   , 23
        .byte   W18
        .byte                   41
        .byte           N12
        .byte   W06
        .byte           VOL   , 23
        .byte   W18
        .byte                   41
        .byte           N10
        .byte   W06
        .byte           VOL   , 23
        .byte   W06
        .byte   PEND
@ 014   ----------------------------------------
        .byte   PATT
         .word  onward_s_5_12
@ 015   ----------------------------------------
        .byte   PATT
         .word  onward_s_5_13
@ 016   ----------------------------------------
        .byte           VOICE , 73
        .byte           MOD   , 1
        .byte           VOL   , 41
        .byte           N09   , Gn4 , v108
        .byte   W06
        .byte           VOL   , 23
        .byte   W06
        .byte                   41
        .byte           N12
        .byte   W03
        .byte           BEND  , c_v+63
        .byte   W03
        .byte                   c_v+0
        .byte   W03
        .byte           VOL   , 23
        .byte   W03
        .byte                   41
        .byte           N09
        .byte   W06
        .byte           VOL   , 23
        .byte   W06
        .byte           MOD   , 7
        .byte           VOL   , 41
        .byte           N10
        .byte   W09
        .byte           VOL   , 23
        .byte   W03
        .byte           MOD   , 1
        .byte           VOL   , 41
        .byte           N12
        .byte   W03
        .byte           BEND  , c_v+63
        .byte   W03
        .byte                   c_v+0
        .byte   W03
        .byte           VOL   , 23
        .byte   W03
        .byte                   41
        .byte           N09
        .byte   W06
        .byte           VOL   , 23
        .byte   W06
        .byte                   41
        .byte           MOD   , 7
        .byte           N09   , Gn4 , v098
        .byte   W06
        .byte           VOL   , 23
        .byte   W06
        .byte                   41
        .byte           MOD   , 1
        .byte           N10   , Gn4 , v108
        .byte   W09
        .byte           VOL   , 23
        .byte   W03
@ 017   ----------------------------------------
onward_s_5_17:
        .byte           VOL   , 41
        .byte           N09   , Gn4 , v108
        .byte   W06
        .byte           VOL   , 23
        .byte   W06
        .byte                   41
        .byte           N12   , Fn4
        .byte   W03
        .byte           BEND  , c_v+63
        .byte   W03
        .byte                   c_v+0
        .byte   W03
        .byte           VOL   , 23
        .byte   W03
        .byte                   41
        .byte           N09
        .byte   W06
        .byte           VOL   , 23
        .byte   W06
        .byte           MOD   , 7
        .byte           VOL   , 41
        .byte           N10
        .byte   W09
        .byte           VOL   , 23
        .byte   W03
        .byte           MOD   , 1
        .byte           VOL   , 41
        .byte           N12
        .byte   W03
        .byte           BEND  , c_v+63
        .byte   W03
        .byte                   c_v+0
        .byte   W03
        .byte           VOL   , 23
        .byte   W03
        .byte                   41
        .byte           N09
        .byte   W06
        .byte           VOL   , 23
        .byte   W06
        .byte                   41
        .byte           MOD   , 7
        .byte           N09   , Fn4 , v098
        .byte   W06
        .byte           VOL   , 23
        .byte   W06
        .byte                   41
        .byte           MOD   , 1
        .byte           N04   , Fn4 , v108
        .byte   W05
        .byte                   Fs4
        .byte   W04
        .byte           BEND  , c_v+9
        .byte   W03
        .byte   PEND
@ 018   ----------------------------------------
onward_s_5_18:
        .byte           BEND  , c_v+0
        .byte           N09   , Gn4 , v108
        .byte   W06
        .byte           VOL   , 23
        .byte   W06
        .byte                   41
        .byte           N12
        .byte   W03
        .byte           BEND  , c_v+63
        .byte   W03
        .byte                   c_v+0
        .byte   W03
        .byte           VOL   , 23
        .byte   W03
        .byte                   41
        .byte           N09
        .byte   W06
        .byte           VOL   , 23
        .byte   W06
        .byte           MOD   , 7
        .byte           VOL   , 41
        .byte           N10
        .byte   W09
        .byte           VOL   , 23
        .byte   W03
        .byte           MOD   , 1
        .byte           VOL   , 41
        .byte           N12
        .byte   W03
        .byte           BEND  , c_v+63
        .byte   W03
        .byte                   c_v+0
        .byte   W03
        .byte           VOL   , 23
        .byte   W03
        .byte                   41
        .byte           N09
        .byte   W06
        .byte           VOL   , 23
        .byte   W06
        .byte                   41
        .byte           MOD   , 7
        .byte           N09   , Gn4 , v098
        .byte   W06
        .byte           VOL   , 23
        .byte   W06
        .byte                   41
        .byte           MOD   , 1
        .byte           N10   , Gn4 , v108
        .byte   W09
        .byte           VOL   , 23
        .byte   W03
        .byte   PEND
@ 019   ----------------------------------------
        .byte   PATT
         .word  onward_s_5_17
@ 020   ----------------------------------------
        .byte   PATT
         .word  onward_s_5_18
@ 021   ----------------------------------------
        .byte   PATT
         .word  onward_s_5_17
@ 022   ----------------------------------------
        .byte   PATT
         .word  onward_s_5_18
@ 023   ----------------------------------------
        .byte           VOL   , 41
        .byte           N09   , Gn4 , v108
        .byte   W06
        .byte           VOL   , 23
        .byte   W06
        .byte                   41
        .byte           N12   , An4
        .byte   W03
        .byte           BEND  , c_v+63
        .byte   W03
        .byte                   c_v+0
        .byte   W03
        .byte           VOL   , 23
        .byte   W03
        .byte                   41
        .byte           N09
        .byte   W06
        .byte           VOL   , 23
        .byte   W06
        .byte           MOD   , 7
        .byte           VOL   , 41
        .byte           N10
        .byte   W09
        .byte           VOL   , 23
        .byte   W03
        .byte           MOD   , 1
        .byte           VOL   , 41
        .byte           N12
        .byte   W03
        .byte           BEND  , c_v+63
        .byte   W03
        .byte                   c_v+0
        .byte   W03
        .byte           VOL   , 23
        .byte   W03
        .byte                   41
        .byte           N09
        .byte   W06
        .byte           VOL   , 23
        .byte   W06
        .byte                   41
        .byte           N24   , An4 , v098
        .byte   W03
        .byte           VOL   , 40
        .byte           BEND  , c_v+63
        .byte   W03
        .byte           VOL   , 37
        .byte           BEND  , c_v+6
        .byte   W03
        .byte           VOL   , 36
        .byte           BEND  , c_v+63
        .byte   W03
        .byte           VOL   , 37
        .byte           BEND  , c_v+6
        .byte   W03
        .byte           VOL   , 39
        .byte           BEND  , c_v+63
        .byte   W03
        .byte           VOL   , 40
        .byte           BEND  , c_v+0
        .byte   W03
        .byte           VOL   , 41
        .byte           BEND  , c_v+63
        .byte   W03
@ 024   ----------------------------------------
        .byte           VOL   , 26
        .byte           BEND  , c_v+0
        .byte   W12
        .byte           VOICE , 57
        .byte           VOL   , 41
        .byte           N12   , Gn3 , v100
        .byte           N12   , Dn3 , v064
        .byte   W06
        .byte           VOL   , 26
        .byte   W18
        .byte                   41
        .byte           N12   , Gn3 , v100
        .byte           N12   , Dn3 , v064
        .byte   W06
        .byte           VOL   , 26
        .byte   W18
        .byte                   41
        .byte           N12   , Gn3 , v100
        .byte           N12   , Dn3 , v064
        .byte   W06
        .byte           VOL   , 26
        .byte   W18
        .byte                   34
        .byte           N04   , Gn3 , v100
        .byte           N04   , Dn3 , v064
        .byte   W03
        .byte           VOL   , 36
        .byte   W03
        .byte                   37
        .byte           N04   , Gn3 , v100
        .byte           N04   , Dn3 , v064
        .byte   W03
        .byte           VOL   , 39
        .byte   W03
@ 025   ----------------------------------------
        .byte           N09   , Gn3 , v100
        .byte           N09   , Dn3 , v064
        .byte   W06
        .byte           VOL   , 23
        .byte   W06
        .byte                   41
        .byte           N12   , Gn3 , v100
        .byte           N12   , Dn3 , v064
        .byte   W06
        .byte           VOL   , 26
        .byte   W18
        .byte                   41
        .byte           N12   , Gn3 , v100
        .byte           N12   , Dn3 , v064
        .byte   W06
        .byte           VOL   , 26
        .byte   W18
        .byte                   41
        .byte           N12   , Gn3 , v100
        .byte           N12   , Dn3 , v064
        .byte   W06
        .byte           VOL   , 26
        .byte   W18
        .byte                   41
        .byte           N12   , Gn3 , v100
        .byte           N12   , Dn3 , v064
        .byte   W06
        .byte           VOL   , 26
        .byte   W06
@ 026   ----------------------------------------
        .byte   W12
        .byte                   41
        .byte           N12   , Gn3 , v100
        .byte           N12   , Dn3 , v064
        .byte   W06
        .byte           VOL   , 26
        .byte   W18
        .byte                   41
        .byte           N12   , Gn3 , v100
        .byte           N12   , Dn3 , v064
        .byte   W06
        .byte           VOL   , 26
        .byte   W18
        .byte                   41
        .byte           N12   , Gn3 , v100
        .byte           N12   , Dn3 , v064
        .byte   W06
        .byte           VOL   , 26
        .byte   W18
        .byte                   34
        .byte           N04   , Gn3 , v100
        .byte           N04   , Dn3 , v064
        .byte   W03
        .byte           VOL   , 36
        .byte   W03
        .byte                   37
        .byte           N04   , Gn3 , v100
        .byte           N04   , Dn3 , v064
        .byte   W03
        .byte           VOL   , 39
        .byte   W03
@ 027   ----------------------------------------
        .byte           N09   , Gn3 , v080
        .byte           N09   , Dn3 , v064
        .byte   W06
        .byte           VOL   , 23
        .byte   W06
        .byte                   41
        .byte           N12   , Gn3 , v100
        .byte           N12   , Dn3 , v064
        .byte   W06
        .byte           VOL   , 26
        .byte   W18
        .byte                   41
        .byte           N12   , Gn3 , v100
        .byte           N12   , Dn3 , v064
        .byte   W06
        .byte           VOL   , 26
        .byte   W18
        .byte                   41
        .byte           N12   , Gn3 , v100
        .byte           N12   , Dn3 , v064
        .byte   W06
        .byte           VOL   , 26
        .byte   W18
        .byte                   41
        .byte           N12   , Gn3 , v100
        .byte           N12   , Dn3 , v064
        .byte   W06
        .byte           VOL   , 26
        .byte   W06
@ 028   ----------------------------------------
onward_s_5_28:
        .byte   W12
        .byte           VOL   , 41
        .byte           N12   , Gn3 , v096
        .byte           N12   , Dn3 , v060
        .byte   W06
        .byte           VOL   , 26
        .byte   W18
        .byte                   41
        .byte           N12   , Gn3 , v096
        .byte           N12   , Dn3 , v060
        .byte   W06
        .byte           VOL   , 26
        .byte   W18
        .byte                   41
        .byte           N12   , Gn3 , v096
        .byte           N12   , Dn3 , v060
        .byte   W06
        .byte           VOL   , 26
        .byte   W18
        .byte                   34
        .byte           N04   , Gn3 , v096
        .byte           N04   , Dn3 , v060
        .byte   W03
        .byte           VOL   , 36
        .byte   W03
        .byte                   37
        .byte           N04   , Gn3 , v096
        .byte           N04   , Dn3 , v060
        .byte   W03
        .byte           VOL   , 39
        .byte   W03
        .byte   PEND
@ 029   ----------------------------------------
        .byte           N09   , Gn3 , v076
        .byte           N09   , Dn3 , v060
        .byte   W06
        .byte           VOL   , 23
        .byte   W06
        .byte                   41
        .byte           N12   , Gn3 , v096
        .byte           N12   , Dn3 , v060
        .byte   W06
        .byte           VOL   , 26
        .byte   W18
        .byte                   41
        .byte           N12   , Gn3 , v096
        .byte           N12   , Dn3 , v060
        .byte   W06
        .byte           VOL   , 26
        .byte   W18
        .byte                   41
        .byte           N12   , Gn3 , v096
        .byte           N12   , Dn3 , v060
        .byte   W06
        .byte           VOL   , 26
        .byte   W18
        .byte                   41
        .byte           N12   , Gn3 , v096
        .byte           N12   , Dn3 , v060
        .byte   W06
        .byte           VOL   , 26
        .byte   W06
@ 030   ----------------------------------------
        .byte   PATT
         .word  onward_s_5_28
@ 031   ----------------------------------------
        .byte           N09   , Gn3 , v076
        .byte           N09   , Dn3 , v060
        .byte   W06
        .byte           VOL   , 23
        .byte   W06
        .byte                   41
        .byte           N12   , Gn3 , v096
        .byte           N12   , Dn3 , v060
        .byte   W06
        .byte           VOL   , 26
        .byte   W18
        .byte                   41
        .byte           N12   , Gn3 , v096
        .byte           N12   , Dn3 , v060
        .byte   W06
        .byte           VOL   , 26
        .byte   W18
        .byte                   41
        .byte           N12   , Gn3 , v100
        .byte           N12   , Dn3 , v068
        .byte   W06
        .byte           VOL   , 26
        .byte   W06
        .byte                   39
        .byte           N24
        .byte           N24   , Fs3 , v108
        .byte   W03
        .byte           VOL   , 36
        .byte   W03
        .byte                   26
        .byte   W03
        .byte                   28
        .byte   W03
        .byte                   30
        .byte   W03
        .byte                   31
        .byte   W03
        .byte                   34
        .byte   W03
        .byte                   36
        .byte   W03
@ 032   ----------------------------------------
        .byte           VOICE , 49
        .byte           VOL   , 31
        .byte           MOD   , 0
        .byte   GOTO
         .word  onward_s_5_LOOP
        .byte   W72
        .byte   FINE

@****************** Track 6 (Midi-Chn.6) ******************@

onward_s_6:
        .byte   KEYSH , onward_s_key+0
@ 000   ----------------------------------------
onward_s_6_LOOP:
        .byte           VOICE , 63
        .byte           PAN   , c_v+14
        .byte           VOL   , 34
        .byte   W12
        .byte           N15   , Cn2 , v090
        .byte   W09
        .byte           VOL   , 19
        .byte   W15
        .byte                   34
        .byte           N15
        .byte   W09
        .byte           VOL   , 19
        .byte   W15
        .byte                   34
        .byte           N15
        .byte   W09
        .byte           VOL   , 19
        .byte   W15
        .byte                   34
        .byte           N15
        .byte   W09
        .byte           VOL   , 19
        .byte   W03
@ 001   ----------------------------------------
onward_s_6_1:
        .byte   W12
        .byte           VOL   , 34
        .byte           N15   , Bn1 , v090
        .byte   W09
        .byte           VOL   , 19
        .byte   W15
        .byte                   34
        .byte           N15
        .byte   W09
        .byte           VOL   , 19
        .byte   W15
        .byte                   34
        .byte           N15
        .byte   W09
        .byte           VOL   , 19
        .byte   W15
        .byte                   34
        .byte           N15
        .byte   W09
        .byte           VOL   , 19
        .byte   W03
        .byte   PEND
@ 002   ----------------------------------------
onward_s_6_2:
        .byte   W12
        .byte           VOL   , 34
        .byte           N15   , As1 , v090
        .byte   W09
        .byte           VOL   , 19
        .byte   W15
        .byte                   34
        .byte           N15
        .byte   W09
        .byte           VOL   , 19
        .byte   W15
        .byte                   34
        .byte           N15
        .byte   W09
        .byte           VOL   , 19
        .byte   W15
        .byte                   34
        .byte           N15
        .byte   W09
        .byte           VOL   , 19
        .byte   W03
        .byte   PEND
@ 003   ----------------------------------------
        .byte   W12
        .byte                   34
        .byte           N15   , An1
        .byte   W09
        .byte           VOL   , 19
        .byte   W15
        .byte                   34
        .byte           N15
        .byte   W09
        .byte           VOL   , 19
        .byte   W15
        .byte                   34
        .byte           N15   , Dn2
        .byte   W09
        .byte           VOL   , 19
        .byte   W15
        .byte                   34
        .byte           N15
        .byte   W09
        .byte           VOL   , 19
        .byte   W03
@ 004   ----------------------------------------
        .byte   W12
        .byte                   34
        .byte           N15   , Cn2
        .byte   W09
        .byte           VOL   , 19
        .byte   W15
        .byte                   34
        .byte           N15
        .byte   W09
        .byte           VOL   , 19
        .byte   W15
        .byte                   34
        .byte           N15
        .byte   W09
        .byte           VOL   , 19
        .byte   W15
        .byte                   34
        .byte           N15
        .byte   W09
        .byte           VOL   , 19
        .byte   W03
@ 005   ----------------------------------------
        .byte   PATT
         .word  onward_s_6_1
@ 006   ----------------------------------------
        .byte   PATT
         .word  onward_s_6_2
@ 007   ----------------------------------------
        .byte   W12
        .byte           VOL   , 34
        .byte           N15   , An1 , v090
        .byte   W09
        .byte           VOL   , 19
        .byte   W15
        .byte                   34
        .byte           N15
        .byte   W09
        .byte           VOL   , 19
        .byte   W15
        .byte                   34
        .byte           N15   , Dn2
        .byte   W09
        .byte           VOL   , 19
        .byte   W15
        .byte                   34
        .byte           N11
        .byte   W12
@ 008   ----------------------------------------
onward_s_6_8:
        .byte           N09   , Bn1 , v100
        .byte   W06
        .byte           VOL   , 19
        .byte   W06
        .byte                   34
        .byte           N09
        .byte   W06
        .byte           VOL   , 19
        .byte   W18
        .byte                   34
        .byte           N09
        .byte   W06
        .byte           VOL   , 19
        .byte   W06
        .byte                   34
        .byte           N11
        .byte   W09
        .byte           VOL   , 19
        .byte   W03
        .byte                   34
        .byte           N12
        .byte   W06
        .byte           VOL   , 19
        .byte   W18
        .byte                   34
        .byte           N04   , Cn2
        .byte   W06
        .byte                   Dn2
        .byte   W06
        .byte   PEND
@ 009   ----------------------------------------
onward_s_6_9:
        .byte           N09   , Fn2 , v100
        .byte   W06
        .byte           VOL   , 19
        .byte   W06
        .byte                   34
        .byte           N09
        .byte   W06
        .byte           VOL   , 19
        .byte   W18
        .byte                   34
        .byte           N09
        .byte   W06
        .byte           VOL   , 19
        .byte   W06
        .byte                   34
        .byte           N11
        .byte   W09
        .byte           VOL   , 19
        .byte   W03
        .byte                   34
        .byte           N12
        .byte   W06
        .byte           VOL   , 19
        .byte   W18
        .byte                   34
        .byte           N10   , Cn2
        .byte   W09
        .byte           VOL   , 19
        .byte   W03
        .byte   PEND
@ 010   ----------------------------------------
onward_s_6_10:
        .byte           VOL   , 34
        .byte           N09   , Bn1 , v100
        .byte   W06
        .byte           VOL   , 19
        .byte   W06
        .byte                   34
        .byte           N09
        .byte   W06
        .byte           VOL   , 19
        .byte   W18
        .byte                   34
        .byte           N09
        .byte   W06
        .byte           VOL   , 19
        .byte   W06
        .byte                   34
        .byte           N11
        .byte   W09
        .byte           VOL   , 19
        .byte   W03
        .byte                   34
        .byte           N12
        .byte   W06
        .byte           VOL   , 19
        .byte   W18
        .byte                   34
        .byte           N04   , Fn2
        .byte   W06
        .byte                   Gn2
        .byte   W06
        .byte   PEND
@ 011   ----------------------------------------
        .byte           N09   , An2
        .byte   W06
        .byte           VOL   , 19
        .byte   W06
        .byte                   34
        .byte           N09
        .byte   W06
        .byte           VOL   , 19
        .byte   W18
        .byte                   34
        .byte           N09
        .byte   W06
        .byte           VOL   , 19
        .byte   W06
        .byte                   34
        .byte           N11
        .byte   W09
        .byte           VOL   , 19
        .byte   W03
        .byte                   34
        .byte           N12
        .byte   W06
        .byte           VOL   , 19
        .byte   W18
        .byte                   34
        .byte           N04   , Cn2
        .byte   W06
        .byte           N06   , Gn1
        .byte   W06
@ 012   ----------------------------------------
        .byte   PATT
         .word  onward_s_6_8
@ 013   ----------------------------------------
        .byte   PATT
         .word  onward_s_6_9
@ 014   ----------------------------------------
        .byte   PATT
         .word  onward_s_6_10
@ 015   ----------------------------------------
        .byte           N09   , An2 , v100
        .byte   W06
        .byte           VOL   , 19
        .byte   W06
        .byte                   34
        .byte           N09
        .byte   W06
        .byte           VOL   , 19
        .byte   W18
        .byte                   34
        .byte           N09
        .byte   W06
        .byte           VOL   , 19
        .byte   W06
        .byte                   34
        .byte           N11
        .byte   W09
        .byte           VOL   , 19
        .byte   W03
        .byte                   34
        .byte           N12
        .byte   W06
        .byte           VOL   , 19
        .byte   W18
        .byte                   34
        .byte           N04
        .byte   W06
        .byte                   An2 , v080
        .byte   W06
@ 016   ----------------------------------------
        .byte   W96
@ 017   ----------------------------------------
        .byte   W96
@ 018   ----------------------------------------
        .byte   W96
@ 019   ----------------------------------------
        .byte   W96
@ 020   ----------------------------------------
        .byte   W96
@ 021   ----------------------------------------
        .byte   W96
@ 022   ----------------------------------------
        .byte   W96
@ 023   ----------------------------------------
        .byte   W96
@ 024   ----------------------------------------
        .byte           VOL   , 26
        .byte           N90   , Gn1 , v110
        .byte   W03
        .byte           VOL   , 28
        .byte   W03
        .byte                   30
        .byte   W03
        .byte                   31
        .byte   W03
        .byte                   32
        .byte   W03
        .byte                   33
        .byte   W03
        .byte                   34
        .byte   W06
        .byte                   33
        .byte   W03
        .byte                   32
        .byte   W03
        .byte                   31
        .byte   W03
        .byte                   30
        .byte   W03
        .byte                   29
        .byte   W03
        .byte                   28
        .byte   W03
        .byte                   27
        .byte   W03
        .byte                   26
        .byte   W24
        .byte   W03
        .byte                   24
        .byte   W03
        .byte                   19
        .byte   W21
@ 025   ----------------------------------------
        .byte                   26
        .byte           N90   , Fn1
        .byte   W03
        .byte           VOL   , 28
        .byte   W03
        .byte                   30
        .byte   W03
        .byte                   31
        .byte   W03
        .byte                   32
        .byte   W03
        .byte                   33
        .byte   W03
        .byte                   34
        .byte   W06
        .byte                   33
        .byte   W03
        .byte                   32
        .byte   W03
        .byte                   31
        .byte   W03
        .byte                   30
        .byte   W03
        .byte                   29
        .byte   W03
        .byte                   28
        .byte   W03
        .byte                   27
        .byte   W03
        .byte                   26
        .byte   W24
        .byte   W03
        .byte                   24
        .byte   W03
        .byte                   19
        .byte   W21
@ 026   ----------------------------------------
        .byte                   26
        .byte           N72   , En1
        .byte   W03
        .byte           VOL   , 28
        .byte   W03
        .byte                   30
        .byte   W03
        .byte                   31
        .byte   W03
        .byte                   32
        .byte   W03
        .byte                   33
        .byte   W03
        .byte                   34
        .byte   W06
        .byte                   33
        .byte   W03
        .byte                   32
        .byte   W03
        .byte                   31
        .byte   W03
        .byte                   30
        .byte   W03
        .byte                   29
        .byte   W03
        .byte                   28
        .byte   W03
        .byte                   27
        .byte   W03
        .byte                   26
        .byte   W36
        .byte   W03
        .byte                   28
        .byte           N09   , Ds1
        .byte   W03
        .byte           VOL   , 30
        .byte   W03
        .byte                   32
        .byte   W03
        .byte                   34
        .byte   W03
@ 027   ----------------------------------------
        .byte                   26
        .byte           N90
        .byte   W03
        .byte           VOL   , 28
        .byte   W03
        .byte                   30
        .byte   W03
        .byte                   31
        .byte   W03
        .byte                   32
        .byte   W03
        .byte                   33
        .byte   W03
        .byte                   34
        .byte   W06
        .byte                   33
        .byte   W03
        .byte                   32
        .byte   W03
        .byte                   31
        .byte   W03
        .byte                   30
        .byte   W03
        .byte                   29
        .byte   W03
        .byte                   28
        .byte   W03
        .byte                   27
        .byte   W03
        .byte                   26
        .byte   W24
        .byte   W03
        .byte                   24
        .byte   W03
        .byte                   19
        .byte   W21
@ 028   ----------------------------------------
        .byte                   26
        .byte           N90   , Gn1 , v106
        .byte   W03
        .byte           VOL   , 28
        .byte   W03
        .byte                   30
        .byte   W03
        .byte                   31
        .byte   W03
        .byte                   32
        .byte   W03
        .byte                   33
        .byte   W03
        .byte                   34
        .byte   W06
        .byte                   33
        .byte   W03
        .byte                   32
        .byte   W03
        .byte                   31
        .byte   W03
        .byte                   30
        .byte   W03
        .byte                   29
        .byte   W03
        .byte                   28
        .byte   W03
        .byte                   27
        .byte   W03
        .byte                   26
        .byte   W24
        .byte   W03
        .byte                   24
        .byte   W03
        .byte                   19
        .byte   W21
@ 029   ----------------------------------------
        .byte                   26
        .byte           N90   , Fn1
        .byte   W03
        .byte           VOL   , 28
        .byte   W03
        .byte                   30
        .byte   W03
        .byte                   31
        .byte   W03
        .byte                   32
        .byte   W03
        .byte                   33
        .byte   W03
        .byte                   34
        .byte   W06
        .byte                   33
        .byte   W03
        .byte                   32
        .byte   W03
        .byte                   31
        .byte   W03
        .byte                   30
        .byte   W03
        .byte                   29
        .byte   W03
        .byte                   28
        .byte   W03
        .byte                   27
        .byte   W03
        .byte                   26
        .byte   W24
        .byte   W03
        .byte                   24
        .byte   W03
        .byte                   19
        .byte   W21
@ 030   ----------------------------------------
        .byte                   26
        .byte           N72   , En1
        .byte   W03
        .byte           VOL   , 28
        .byte   W03
        .byte                   30
        .byte   W03
        .byte                   31
        .byte   W03
        .byte                   32
        .byte   W03
        .byte                   33
        .byte   W03
        .byte                   34
        .byte   W06
        .byte                   33
        .byte   W03
        .byte                   32
        .byte   W03
        .byte                   31
        .byte   W03
        .byte                   30
        .byte   W03
        .byte                   29
        .byte   W03
        .byte                   28
        .byte   W03
        .byte                   27
        .byte   W03
        .byte                   26
        .byte   W36
        .byte   W03
        .byte                   28
        .byte           N09   , Ds1
        .byte   W03
        .byte           VOL   , 30
        .byte   W03
        .byte                   32
        .byte   W03
        .byte                   34
        .byte   W03
@ 031   ----------------------------------------
        .byte                   26
        .byte           N90
        .byte   W03
        .byte           VOL   , 28
        .byte   W03
        .byte                   30
        .byte   W03
        .byte                   31
        .byte   W03
        .byte                   32
        .byte   W03
        .byte                   33
        .byte   W03
        .byte                   34
        .byte   W06
        .byte                   33
        .byte   W03
        .byte                   32
        .byte   W03
        .byte                   31
        .byte   W03
        .byte                   30
        .byte   W03
        .byte                   29
        .byte   W03
        .byte                   28
        .byte   W03
        .byte                   27
        .byte   W03
        .byte                   26
        .byte   W24
        .byte   W03
        .byte                   24
        .byte   W03
        .byte                   19
        .byte   W21
@ 032   ----------------------------------------
        .byte                   34
        .byte   GOTO
         .word  onward_s_6_LOOP
        .byte   W72
        .byte   FINE

@****************** Track 7 (Midi-Chn.7) ******************@

onward_s_7:
        .byte   KEYSH , onward_s_key+0
@ 000   ----------------------------------------
onward_s_7_LOOP:
        .byte           VOICE , 127
        .byte           VOL   , 50
        .byte           N24   , Cs2 , v090
        .byte   W12
        .byte           N06   , Dn1 , v100
        .byte   W12
        .byte                   Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
        .byte                   Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
        .byte                   Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
@ 001   ----------------------------------------
onward_s_7_1:
        .byte           N06   , Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
        .byte                   Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
        .byte                   Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
        .byte                   Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte           N04   , Ds2 , v043
        .byte   W06
        .byte                   Ds2 , v050
        .byte   W06
        .byte   PEND
@ 002   ----------------------------------------
        .byte           N12   , Dn1 , v040
        .byte           N10   , Ds2 , v050
        .byte   W12
        .byte           N06   , Dn1 , v100
        .byte           N10   , Ds2 , v028
        .byte   W12
        .byte           N06   , Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
        .byte                   Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
        .byte                   Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
@ 003   ----------------------------------------
onward_s_7_3:
        .byte           N06   , Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
        .byte                   Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
        .byte                   Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
        .byte                   Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
        .byte   PEND
@ 004   ----------------------------------------
        .byte           N24   , Cs2 , v090
        .byte   W12
        .byte           N06   , Dn1 , v100
        .byte   W12
        .byte                   Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
        .byte                   Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
        .byte                   Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
@ 005   ----------------------------------------
        .byte   PATT
         .word  onward_s_7_1
@ 006   ----------------------------------------
onward_s_7_6:
        .byte           N06   , Dn1 , v040
        .byte           N10   , Ds2 , v050
        .byte   W12
        .byte           N06   , Dn1 , v100
        .byte           N10   , Ds2 , v028
        .byte   W12
        .byte           N06   , Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
        .byte                   Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
        .byte                   Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
        .byte   PEND
@ 007   ----------------------------------------
        .byte                   Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
        .byte                   Dn1 , v040
        .byte           TIE   , En2 , v092
        .byte   W12
        .byte           N06   , Dn1 , v100
        .byte   W12
        .byte                   Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
        .byte                   Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
@ 008   ----------------------------------------
        .byte                   Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
        .byte                   Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
        .byte                   Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
        .byte           EOT   , En2
        .byte           N06   , Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
@ 009   ----------------------------------------
        .byte   PATT
         .word  onward_s_7_3
@ 010   ----------------------------------------
        .byte   PATT
         .word  onward_s_7_3
@ 011   ----------------------------------------
        .byte   PATT
         .word  onward_s_7_1
@ 012   ----------------------------------------
        .byte   PATT
         .word  onward_s_7_6
@ 013   ----------------------------------------
        .byte   PATT
         .word  onward_s_7_3
@ 014   ----------------------------------------
        .byte   PATT
         .word  onward_s_7_3
@ 015   ----------------------------------------
        .byte           N06   , Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
        .byte                   Dn1 , v040
        .byte           N72   , En2 , v100
        .byte   W12
        .byte           N06   , Dn1
        .byte   W12
        .byte                   Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
        .byte                   Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
@ 016   ----------------------------------------
onward_s_7_16:
        .byte           N06   , Dn1 , v040
        .byte           N48   , Cs2 , v090
        .byte   W12
        .byte           N06   , Dn1 , v100
        .byte   W12
        .byte                   Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
        .byte                   Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
        .byte                   Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
        .byte   PEND
@ 017   ----------------------------------------
        .byte   PATT
         .word  onward_s_7_3
@ 018   ----------------------------------------
        .byte   PATT
         .word  onward_s_7_3
@ 019   ----------------------------------------
        .byte   PATT
         .word  onward_s_7_3
@ 020   ----------------------------------------
        .byte   PATT
         .word  onward_s_7_16
@ 021   ----------------------------------------
        .byte   PATT
         .word  onward_s_7_3
@ 022   ----------------------------------------
        .byte   PATT
         .word  onward_s_7_3
@ 023   ----------------------------------------
        .byte           N06   , Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
        .byte                   Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
        .byte                   Dn1 , v040
        .byte   W12
        .byte                   Dn1 , v100
        .byte   W12
        .byte           VOL   , 44
        .byte           N24   , Ds1
        .byte   W03
        .byte           VOL   , 31
        .byte   W03
        .byte                   35
        .byte   W03
        .byte                   38
        .byte   W03
        .byte                   39
        .byte   W03
        .byte                   41
        .byte   W03
        .byte                   44
        .byte   W03
        .byte                   47
        .byte   W03
@ 024   ----------------------------------------
        .byte                   50
        .byte           N04   , Dn1
        .byte           N72   , An2
        .byte   W06
        .byte           N04   , Dn1 , v056
        .byte   W06
        .byte           VOL   , 38
        .byte           N12   , Ds1 , v100
        .byte   W03
        .byte           VOL   , 41
        .byte   W03
        .byte                   44
        .byte   W03
        .byte                   47
        .byte   W03
        .byte                   50
        .byte           N04   , Dn1
        .byte   W06
        .byte                   Dn1 , v056
        .byte   W06
        .byte           VOL   , 38
        .byte           N12   , Ds1 , v100
        .byte   W03
        .byte           VOL   , 41
        .byte   W03
        .byte                   44
        .byte   W03
        .byte                   47
        .byte   W03
        .byte                   50
        .byte           N04   , Dn1
        .byte   W06
        .byte                   Dn1 , v056
        .byte   W06
        .byte                   Dn1 , v100
        .byte   W06
        .byte                   Dn1
        .byte   W06
        .byte                   Dn1
        .byte   W06
        .byte                   Dn1 , v056
        .byte   W06
        .byte           VOL   , 38
        .byte           N12   , Ds1 , v100
        .byte   W03
        .byte           VOL   , 41
        .byte   W03
        .byte                   44
        .byte   W03
        .byte                   47
        .byte   W03
@ 025   ----------------------------------------
onward_s_7_25:
        .byte           VOL   , 50
        .byte           N04   , Dn1 , v100
        .byte           N24   , Cs2
        .byte   W06
        .byte           N04   , Dn1 , v056
        .byte   W06
        .byte           VOL   , 38
        .byte           N12   , Ds1 , v100
        .byte   W03
        .byte           VOL   , 41
        .byte   W03
        .byte                   44
        .byte   W03
        .byte                   47
        .byte   W03
        .byte                   50
        .byte           N04   , Dn1
        .byte   W06
        .byte                   Dn1 , v056
        .byte   W06
        .byte           VOL   , 38
        .byte           N12   , Ds1 , v100
        .byte   W03
        .byte           VOL   , 41
        .byte   W03
        .byte                   44
        .byte   W03
        .byte                   47
        .byte   W03
        .byte                   50
        .byte           N04   , Dn1
        .byte   W06
        .byte                   Dn1 , v056
        .byte   W06
        .byte                   Dn1 , v100
        .byte   W06
        .byte                   Dn1
        .byte   W06
        .byte                   Dn1
        .byte   W06
        .byte                   Dn1 , v056
        .byte   W06
        .byte           VOL   , 38
        .byte           N12   , Ds1 , v100
        .byte   W03
        .byte           VOL   , 41
        .byte   W03
        .byte                   44
        .byte   W03
        .byte                   47
        .byte   W03
        .byte   PEND
@ 026   ----------------------------------------
        .byte   PATT
         .word  onward_s_7_25
@ 027   ----------------------------------------
        .byte           VOL   , 50
        .byte           N04   , Dn1 , v100
        .byte           N24   , Cs2
        .byte   W06
        .byte           N04   , Dn1 , v056
        .byte   W06
        .byte           VOL   , 38
        .byte           N12   , Ds1 , v100
        .byte   W03
        .byte           VOL   , 41
        .byte   W03
        .byte                   44
        .byte   W03
        .byte                   47
        .byte   W03
        .byte                   50
        .byte           N04   , Dn1
        .byte           N68   , En2 , v100 , gtp2
        .byte   W06
        .byte           N04   , Dn1 , v056
        .byte   W06
        .byte           VOL   , 38
        .byte           N12   , Ds1 , v100
        .byte   W03
        .byte           VOL   , 41
        .byte   W03
        .byte                   44
        .byte   W03
        .byte                   47
        .byte   W03
        .byte                   50
        .byte           N04   , Dn1
        .byte   W06
        .byte                   Dn1 , v056
        .byte   W06
        .byte                   Dn1 , v100
        .byte   W06
        .byte                   Dn1
        .byte   W06
        .byte                   Dn1
        .byte   W06
        .byte                   Dn1 , v056
        .byte   W06
        .byte           VOL   , 38
        .byte           N12   , Ds1 , v100
        .byte   W03
        .byte           VOL   , 41
        .byte   W03
        .byte                   44
        .byte   W03
        .byte                   47
        .byte   W03
@ 028   ----------------------------------------
        .byte                   50
        .byte           N04   , Dn1
        .byte           N72   , An2
        .byte   W06
        .byte           N04   , Dn1 , v056
        .byte   W06
        .byte           VOL   , 38
        .byte           N12   , Ds1 , v100
        .byte   W03
        .byte           VOL   , 41
        .byte   W03
        .byte                   44
        .byte   W03
        .byte                   47
        .byte   W03
        .byte                   50
        .byte           N04   , Dn1
        .byte   W06
        .byte                   Dn1 , v056
        .byte   W06
        .byte           VOL   , 38
        .byte           N12   , Ds1 , v100
        .byte   W03
        .byte           VOL   , 41
        .byte   W03
        .byte                   44
        .byte   W03
        .byte                   47
        .byte   W03
        .byte                   50
        .byte           N04   , Dn1
        .byte   W06
        .byte                   Dn1 , v088
        .byte   W06
        .byte                   Dn1
        .byte   W06
        .byte                   Dn1
        .byte   W06
        .byte                   Dn1 , v100
        .byte   W06
        .byte                   Dn1 , v056
        .byte   W06
        .byte           VOL   , 38
        .byte           N12   , Ds1 , v100
        .byte   W03
        .byte           VOL   , 41
        .byte   W03
        .byte                   44
        .byte   W03
        .byte                   47
        .byte   W03
@ 029   ----------------------------------------
onward_s_7_29:
        .byte           VOL   , 50
        .byte           N04   , Dn1 , v100
        .byte           N24   , Cs2
        .byte   W06
        .byte           N04   , Dn1 , v056
        .byte   W06
        .byte           VOL   , 38
        .byte           N12   , Ds1 , v100
        .byte   W03
        .byte           VOL   , 41
        .byte   W03
        .byte                   44
        .byte   W03
        .byte                   47
        .byte   W03
        .byte                   50
        .byte           N04   , Dn1
        .byte   W06
        .byte                   Dn1 , v056
        .byte   W06
        .byte           VOL   , 38
        .byte           N12   , Ds1 , v100
        .byte   W03
        .byte           VOL   , 41
        .byte   W03
        .byte                   44
        .byte   W03
        .byte                   47
        .byte   W03
        .byte                   50
        .byte           N04   , Dn1
        .byte   W06
        .byte                   Dn1 , v088
        .byte   W06
        .byte                   Dn1
        .byte   W06
        .byte                   Dn1
        .byte   W06
        .byte                   Dn1 , v100
        .byte   W06
        .byte                   Dn1 , v056
        .byte   W06
        .byte           VOL   , 38
        .byte           N12   , Ds1 , v100
        .byte   W03
        .byte           VOL   , 41
        .byte   W03
        .byte                   44
        .byte   W03
        .byte                   47
        .byte   W03
        .byte   PEND
@ 030   ----------------------------------------
        .byte   PATT
         .word  onward_s_7_29
@ 031   ----------------------------------------
        .byte           VOL   , 50
        .byte           N04   , Dn1 , v100
        .byte           N24   , Cs2
        .byte   W06
        .byte           N04   , Dn1 , v056
        .byte   W06
        .byte           VOL   , 38
        .byte           N12   , Ds1 , v100
        .byte   W03
        .byte           VOL   , 41
        .byte   W03
        .byte                   44
        .byte   W03
        .byte                   47
        .byte   W03
        .byte                   50
        .byte           N04   , Dn1
        .byte           N68   , En2 , v100 , gtp2
        .byte   W06
        .byte           N04   , Dn1 , v056
        .byte   W06
        .byte           VOL   , 38
        .byte           N12   , Ds1 , v100
        .byte   W03
        .byte           VOL   , 41
        .byte   W03
        .byte                   44
        .byte   W03
        .byte                   47
        .byte   W03
        .byte                   50
        .byte           N04   , Dn1
        .byte   W06
        .byte                   Dn1 , v088
        .byte   W06
        .byte                   Dn1
        .byte   W06
        .byte                   Dn1
        .byte   W06
        .byte                   Dn1 , v100
        .byte   W06
        .byte                   Dn1
        .byte   W06
        .byte           VOL   , 38
        .byte           N12   , Ds1
        .byte   W03
        .byte           VOL   , 41
        .byte   W03
        .byte                   44
        .byte   W03
        .byte                   47
        .byte   W03
@ 032   ----------------------------------------
        .byte                   50
        .byte   GOTO
         .word  onward_s_7_LOOP
        .byte   W72
        .byte   FINE


@********************** End of Song ***********************@

        .align  2
Onward:
        .byte   8                       @ Num Tracks
        .byte   0                       @ Unknown
        .byte   onward_s_pri            @ Priority
        .byte   onward_s_rev            @ Reverb

        .word   onward_s_grp           

        .word   onward_s_0
        .word   onward_s_1
        .word   onward_s_2
        .word   onward_s_3
        .word   onward_s_4
        .word   onward_s_5
        .word   onward_s_6
        .word   onward_s_7

        .end
