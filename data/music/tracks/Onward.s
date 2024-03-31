        .include "MPlayDef.s"

        .equ    Onward_grp, voicegroup000
        .equ    Onward_pri, 0
        .equ    Onward_rev, 0
        .equ    Onward_key, 0

        .section .rodata
        .global Onward
        .align  2

@****************** Track 0 (Midi-Chn.0) ******************@

Onward_0:
        .byte   KEYSH , Onward_key+0
@ 000   ----------------------------------------
        .byte   TEMPO , 120/2
Onward_0_LOOP:
        .byte           VOICE , 49
        .byte           VOL   , 55
        .byte           N68   , Dn3 , v080 , gtp3
        .byte   W72
        .byte           N17   , Fs3
        .byte   W18
        .byte           N05
        .byte   W06
@ 001   ----------------------------------------
        .byte           N68   , Dn3 , v080 , gtp3
        .byte   W96
@ 002   ----------------------------------------
        .byte                   Dn3
        .byte   W96
@ 003   ----------------------------------------
Onward_0_3:
        .byte           N44   , Dn3 , v080 , gtp3
        .byte   W48
        .byte                   Cn3
        .byte   W48
        .byte   PEND
@ 004   ----------------------------------------
        .byte           N68   , Dn3 , v080 , gtp3
        .byte   W72
        .byte           N17   , Fs3
        .byte   W18
        .byte           N05
        .byte   W06
@ 005   ----------------------------------------
        .byte           N68   , Dn3 , v080 , gtp3
        .byte   W96
@ 006   ----------------------------------------
        .byte                   Dn3
        .byte   W96
@ 007   ----------------------------------------
        .byte   PATT
         .word  Onward_0_3
@ 008   ----------------------------------------
        .byte   W96
@ 009   ----------------------------------------
        .byte   W96
@ 010   ----------------------------------------
        .byte   W96
@ 011   ----------------------------------------
        .byte   W96
@ 012   ----------------------------------------
        .byte   W96
@ 013   ----------------------------------------
        .byte   W96
@ 014   ----------------------------------------
        .byte   W96
@ 015   ----------------------------------------
        .byte   W96
@ 016   ----------------------------------------
Onward_0_16:
        .byte           N11   , Bn1 , v080
        .byte   W12
        .byte           N05
        .byte   W06
        .byte                   Cn2
        .byte   W06
        .byte           N32   , Dn2 , v080 , gtp3
        .byte   W36
        .byte           N05   , Bn1
        .byte   W06
        .byte                   Cn2
        .byte   W06
        .byte           N11   , Dn2
        .byte   W12
        .byte                   Dn2
        .byte   W12
        .byte   PEND
@ 017   ----------------------------------------
Onward_0_17:
        .byte           N17   , Dn2 , v080
        .byte   W18
        .byte           N05   , Cn2
        .byte   W06
        .byte           N44   , En2 , v080 , gtp3
        .byte   W72
        .byte   PEND
@ 018   ----------------------------------------
Onward_0_18:
        .byte           N11   , Bn1 , v080
        .byte   W12
        .byte           N05
        .byte   W06
        .byte                   Cn2
        .byte   W06
        .byte           N32   , Dn2 , v080 , gtp3
        .byte   W36
        .byte           N05
        .byte   W06
        .byte                   Dn2
        .byte   W06
        .byte           N11
        .byte   W12
        .byte                   Dn2
        .byte   W12
        .byte   PEND
@ 019   ----------------------------------------
Onward_0_19:
        .byte           N17   , Dn2 , v080
        .byte   W18
        .byte           N05   , Ds2
        .byte   W06
        .byte           N44   , Fn2 , v080 , gtp3
        .byte   W72
        .byte   PEND
@ 020   ----------------------------------------
        .byte   PATT
         .word  Onward_0_16
@ 021   ----------------------------------------
        .byte   PATT
         .word  Onward_0_17
@ 022   ----------------------------------------
        .byte   PATT
         .word  Onward_0_18
@ 023   ----------------------------------------
        .byte   PATT
         .word  Onward_0_19
@ 024   ----------------------------------------
        .byte   W96
@ 025   ----------------------------------------
        .byte   W96
@ 026   ----------------------------------------
        .byte   W96
@ 027   ----------------------------------------
        .byte   W96
@ 028   ----------------------------------------
        .byte   W96
@ 029   ----------------------------------------
        .byte   W96
@ 030   ----------------------------------------
        .byte   W96
@ 031   ----------------------------------------
        .byte   W96
@ 032   ----------------------------------------
        .byte   GOTO
         .word  Onward_0_LOOP
        .byte   FINE

@****************** Track 1 (Midi-Chn.1) ******************@

Onward_1:
        .byte   KEYSH , Onward_key+0
@ 000   ----------------------------------------
Onward_1_LOOP:
        .byte           VOICE , 48
        .byte           VOL   , 55
        .byte           N68   , Fs3 , v080 , gtp3
        .byte   W72
        .byte           N17   , An3
        .byte   W18
        .byte           N05
        .byte   W06
@ 001   ----------------------------------------
        .byte           N68   , Gn3 , v080 , gtp3
        .byte   W96
@ 002   ----------------------------------------
Onward_1_2:
        .byte           N68   , Gn3 , v080 , gtp3
        .byte   W90
        .byte           N05
        .byte   W06
        .byte   PEND
@ 003   ----------------------------------------
Onward_1_3:
        .byte           N44   , Gn3 , v080 , gtp3
        .byte   W48
        .byte                   Fs3
        .byte   W48
        .byte   PEND
@ 004   ----------------------------------------
Onward_1_4:
        .byte           N68   , Fs3 , v080 , gtp3
        .byte   W72
        .byte           N17   , An3
        .byte   W18
        .byte           N05
        .byte   W06
        .byte   PEND
@ 005   ----------------------------------------
        .byte           N68   , Gn3 , v080 , gtp3
        .byte   W96
@ 006   ----------------------------------------
Onward_1_6:
        .byte           N80   , Gn3 , v080 , gtp3
        .byte   W90
        .byte           N05   , An3
        .byte   W06
        .byte   PEND
@ 007   ----------------------------------------
        .byte   PATT
         .word  Onward_1_3
@ 008   ----------------------------------------
Onward_1_8:
        .byte           N11   , Gn3 , v080
        .byte   W12
        .byte           N05   , Dn3
        .byte   W06
        .byte                   Cn3
        .byte   W06
        .byte           N32   , Bn2 , v080 , gtp3
        .byte   W36
        .byte           N05
        .byte   W06
        .byte                   Cn3
        .byte   W06
        .byte           N11   , Dn3
        .byte   W12
        .byte                   Gn3
        .byte   W12
        .byte   PEND
@ 009   ----------------------------------------
Onward_1_9:
        .byte           N17   , Gn3 , v080
        .byte   W18
        .byte           N05   , Fn3
        .byte   W06
        .byte           N44   , Fn3 , v080 , gtp3
        .byte   W72
        .byte   PEND
@ 010   ----------------------------------------
        .byte   PATT
         .word  Onward_1_8
@ 011   ----------------------------------------
Onward_1_11:
        .byte           N17   , Bn3 , v080
        .byte   W18
        .byte           N05   , Cn4
        .byte   W06
        .byte           N44   , An3 , v080 , gtp3
        .byte   W72
        .byte   PEND
@ 012   ----------------------------------------
        .byte   PATT
         .word  Onward_1_8
@ 013   ----------------------------------------
        .byte   PATT
         .word  Onward_1_9
@ 014   ----------------------------------------
        .byte   PATT
         .word  Onward_1_8
@ 015   ----------------------------------------
        .byte   PATT
         .word  Onward_1_11
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
Onward_1_24:
        .byte   W12
        .byte           N05   , Gn4 , v080
        .byte   W06
        .byte                   Gn4
        .byte   W06
        .byte           N11
        .byte   W12
        .byte           N05   , Bn4
        .byte   W06
        .byte                   Bn4
        .byte   W06
        .byte           N11
        .byte   W12
        .byte           N05   , An4
        .byte   W06
        .byte                   An4
        .byte   W06
        .byte           N11
        .byte   W12
        .byte                   Gn4
        .byte   W12
        .byte   PEND
@ 025   ----------------------------------------
        .byte   PATT
         .word  Onward_1_24
@ 026   ----------------------------------------
        .byte   PATT
         .word  Onward_1_24
@ 027   ----------------------------------------
        .byte   PATT
         .word  Onward_1_24
@ 028   ----------------------------------------
        .byte           N68   , Gn3 , v080 , gtp3
        .byte   W72
        .byte           N11   , Dn3
        .byte   W12
        .byte                   Cn3
        .byte   W12
@ 029   ----------------------------------------
        .byte           N92   , Bn2 , v080 , gtp3
        .byte   W96
@ 030   ----------------------------------------
        .byte   W24
        .byte           N11
        .byte   W12
        .byte                   Cn3
        .byte   W12
        .byte           N23   , Dn3
        .byte   W24
        .byte                   Gn3
        .byte   W24
@ 031   ----------------------------------------
        .byte   PATT
         .word  Onward_1_3
@ 032   ----------------------------------------
        .byte   GOTO
         .word  Onward_1_LOOP
        .byte   FINE

@****************** Track 2 (Midi-Chn.2) ******************@

Onward_2:
        .byte   KEYSH , Onward_key+0
@ 000   ----------------------------------------
Onward_2_LOOP:
        .byte           VOICE , 51
        .byte           VOL   , 25
        .byte   W96
@ 001   ----------------------------------------
        .byte   W96
@ 002   ----------------------------------------
        .byte   W96
@ 003   ----------------------------------------
        .byte   W96
@ 004   ----------------------------------------
        .byte   W96
@ 005   ----------------------------------------
        .byte   W96
@ 006   ----------------------------------------
        .byte   W96
@ 007   ----------------------------------------
        .byte   W96
@ 008   ----------------------------------------
        .byte   W96
@ 009   ----------------------------------------
        .byte   W96
@ 010   ----------------------------------------
        .byte   W96
@ 011   ----------------------------------------
        .byte   W96
@ 012   ----------------------------------------
        .byte   W96
@ 013   ----------------------------------------
        .byte   W96
@ 014   ----------------------------------------
        .byte   W96
@ 015   ----------------------------------------
        .byte   W96
@ 016   ----------------------------------------
        .byte   W96
@ 017   ----------------------------------------
        .byte   W96
@ 018   ----------------------------------------
        .byte   W96
@ 019   ----------------------------------------
        .byte   W96
@ 020   ----------------------------------------
Onward_2_20:
        .byte           N11   , Gn4 , v080
        .byte   W12
        .byte                   Gn4
        .byte   W12
        .byte                   Gn4
        .byte   W12
        .byte                   Gn4
        .byte   W12
        .byte                   Gn4
        .byte   W12
        .byte                   Gn4
        .byte   W12
        .byte                   Gn4
        .byte   W12
        .byte                   Gn4
        .byte   W12
        .byte   PEND
@ 021   ----------------------------------------
        .byte                   Gn4
        .byte   W12
        .byte                   Fn4
        .byte   W12
        .byte                   Fn4
        .byte   W12
        .byte                   Fn4
        .byte   W12
        .byte                   Fn4
        .byte   W12
        .byte                   Fn4
        .byte   W12
        .byte                   Fn4
        .byte   W12
        .byte                   Fn4
        .byte   W12
@ 022   ----------------------------------------
        .byte   PATT
         .word  Onward_2_20
@ 023   ----------------------------------------
        .byte           N11   , Gn4 , v080
        .byte   W12
        .byte                   Fn4
        .byte   W12
        .byte                   Fn4
        .byte   W12
        .byte                   Fn4
        .byte   W12
        .byte                   Fn4
        .byte   W12
        .byte                   Fn4
        .byte   W12
        .byte                   Fn4
        .byte   W12
        .byte           N05
        .byte   W12
@ 024   ----------------------------------------
        .byte   W96
@ 025   ----------------------------------------
        .byte   W96
@ 026   ----------------------------------------
        .byte   W96
@ 027   ----------------------------------------
        .byte   W96
@ 028   ----------------------------------------
        .byte   W96
@ 029   ----------------------------------------
        .byte   W96
@ 030   ----------------------------------------
        .byte   W96
@ 031   ----------------------------------------
        .byte   W96
@ 032   ----------------------------------------
        .byte   GOTO
         .word  Onward_2_LOOP
        .byte   FINE

@****************** Track 3 (Midi-Chn.3) ******************@

Onward_3:
        .byte   KEYSH , Onward_key+0
@ 000   ----------------------------------------
Onward_3_LOOP:
        .byte           VOICE , 121
        .byte           VOL   , 70
        .byte   W12
        .byte           N24   , En1 , v080
        .byte   W24
        .byte                   En1
        .byte   W24
        .byte                   En1
        .byte   W24
        .byte                   En1
        .byte   W12
@ 001   ----------------------------------------
Onward_3_1:
        .byte   W12
        .byte           N24   , En1 , v080
        .byte   W24
        .byte                   En1
        .byte   W24
        .byte                   En1
        .byte   W24
        .byte                   En1
        .byte   W12
        .byte   PEND
@ 002   ----------------------------------------
        .byte   PATT
         .word  Onward_3_1
@ 003   ----------------------------------------
        .byte   PATT
         .word  Onward_3_1
@ 004   ----------------------------------------
        .byte   PATT
         .word  Onward_3_1
@ 005   ----------------------------------------
        .byte   PATT
         .word  Onward_3_1
@ 006   ----------------------------------------
        .byte   PATT
         .word  Onward_3_1
@ 007   ----------------------------------------
        .byte   PATT
         .word  Onward_3_1
@ 008   ----------------------------------------
        .byte   PATT
         .word  Onward_3_1
@ 009   ----------------------------------------
        .byte   PATT
         .word  Onward_3_1
@ 010   ----------------------------------------
        .byte   PATT
         .word  Onward_3_1
@ 011   ----------------------------------------
        .byte   PATT
         .word  Onward_3_1
@ 012   ----------------------------------------
        .byte   PATT
         .word  Onward_3_1
@ 013   ----------------------------------------
        .byte   PATT
         .word  Onward_3_1
@ 014   ----------------------------------------
        .byte   PATT
         .word  Onward_3_1
@ 015   ----------------------------------------
        .byte   PATT
         .word  Onward_3_1
@ 016   ----------------------------------------
        .byte   PATT
         .word  Onward_3_1
@ 017   ----------------------------------------
        .byte   PATT
         .word  Onward_3_1
@ 018   ----------------------------------------
        .byte   PATT
         .word  Onward_3_1
@ 019   ----------------------------------------
        .byte   PATT
         .word  Onward_3_1
@ 020   ----------------------------------------
        .byte   PATT
         .word  Onward_3_1
@ 021   ----------------------------------------
        .byte   PATT
         .word  Onward_3_1
@ 022   ----------------------------------------
        .byte   PATT
         .word  Onward_3_1
@ 023   ----------------------------------------
        .byte   PATT
         .word  Onward_3_1
@ 024   ----------------------------------------
Onward_3_24:
        .byte   W12
        .byte           N24   , En1 , v080
        .byte   W06
        .byte           N06   , Dn1
        .byte   W06
        .byte           N18
        .byte   W12
        .byte           N24   , En1
        .byte   W06
        .byte           N06   , Dn1
        .byte   W06
        .byte           N18
        .byte   W12
        .byte           N24   , En1
        .byte   W06
        .byte           N06   , Dn1
        .byte   W06
        .byte           N42
        .byte   W12
        .byte           N24   , En1
        .byte   W12
        .byte   PEND
@ 025   ----------------------------------------
        .byte   PATT
         .word  Onward_3_24
@ 026   ----------------------------------------
        .byte   PATT
         .word  Onward_3_24
@ 027   ----------------------------------------
        .byte   PATT
         .word  Onward_3_24
@ 028   ----------------------------------------
        .byte   PATT
         .word  Onward_3_24
@ 029   ----------------------------------------
        .byte   PATT
         .word  Onward_3_24
@ 030   ----------------------------------------
        .byte   PATT
         .word  Onward_3_24
@ 031   ----------------------------------------
        .byte   W12
        .byte           N24   , En1 , v080
        .byte   W06
        .byte           N06   , Dn1
        .byte   W06
        .byte           N18
        .byte   W12
        .byte           N24   , En1
        .byte   W06
        .byte           N06   , Dn1
        .byte   W06
        .byte           N18
        .byte   W12
        .byte           N24   , En1
        .byte   W06
        .byte           N06   , Dn1
        .byte   W30
@ 032   ----------------------------------------
        .byte   GOTO
         .word  Onward_3_LOOP
        .byte   FINE

@****************** Track 4 (Midi-Chn.6) ******************@

Onward_4:
        .byte   KEYSH , Onward_key+0
@ 000   ----------------------------------------
Onward_4_LOOP:
        .byte           VOICE , 39
        .byte           VOL   , 100
        .byte           N11   , Cn1 , v080
        .byte   W24
        .byte                   Cn1
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
Onward_4_3:
        .byte           N11   , An0 , v080
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
         .word  Onward_4_3
@ 008   ----------------------------------------
Onward_4_8:
        .byte           N17   , Dn1 , v080
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
Onward_4_9:
        .byte           N17   , Cn1 , v080
        .byte   W18
        .byte           N05
        .byte   W18
        .byte           N11
        .byte   W24
        .byte                   Cn1
        .byte   W12
        .byte                   Cn1
        .byte   W24
        .byte   PEND
@ 010   ----------------------------------------
        .byte   PATT
         .word  Onward_4_8
@ 011   ----------------------------------------
        .byte           N17   , Fn1 , v080
        .byte   W18
        .byte           N05
        .byte   W18
        .byte           N11
        .byte   W24
        .byte                   En1
        .byte   W12
        .byte                   Dn1
        .byte   W24
@ 012   ----------------------------------------
Onward_4_12:
        .byte           N17   , Dn1 , v080
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
        .byte   PATT
         .word  Onward_4_9
@ 014   ----------------------------------------
        .byte   PATT
         .word  Onward_4_12
@ 015   ----------------------------------------
        .byte           N17   , An1 , v080
        .byte   W18
        .byte           N05
        .byte   W18
        .byte           N11
        .byte   W24
        .byte                   Fn1
        .byte   W12
        .byte                   Fn1
        .byte   W24
@ 016   ----------------------------------------
Onward_4_16:
        .byte           N11   , Gn1 , v080
        .byte   W12
        .byte           N05   , Dn1
        .byte   W06
        .byte                   Cn1
        .byte   W06
        .byte           N32   , Bn0 , v080 , gtp3
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
Onward_4_17:
        .byte           N17   , Gn1 , v080
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
         .word  Onward_4_16
@ 019   ----------------------------------------
        .byte           N17   , Bn1 , v080
        .byte   W18
        .byte           N05   , Cn2
        .byte   W06
        .byte           N44   , An1 , v080 , gtp3
        .byte   W72
@ 020   ----------------------------------------
        .byte   PATT
         .word  Onward_4_16
@ 021   ----------------------------------------
        .byte   PATT
         .word  Onward_4_17
@ 022   ----------------------------------------
        .byte   PATT
         .word  Onward_4_16
@ 023   ----------------------------------------
        .byte           N17   , Bn1 , v080
        .byte   W18
        .byte           N05   , Cn2
        .byte   W06
        .byte           N44   , Dn2 , v080 , gtp3
        .byte   W72
@ 024   ----------------------------------------
Onward_4_24:
        .byte   W12
        .byte           N05   , Gn1 , v080
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
        .byte   PEND
@ 025   ----------------------------------------
Onward_4_25:
        .byte   W12
        .byte           N05   , Fn1 , v080
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
        .byte   PEND
@ 026   ----------------------------------------
Onward_4_26:
        .byte   W12
        .byte           N05   , En1 , v080
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
        .byte   PEND
@ 027   ----------------------------------------
Onward_4_27:
        .byte   W12
        .byte           N05   , Ds1 , v080
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
        .byte   PEND
@ 028   ----------------------------------------
        .byte   PATT
         .word  Onward_4_24
@ 029   ----------------------------------------
        .byte   PATT
         .word  Onward_4_25
@ 030   ----------------------------------------
        .byte   PATT
         .word  Onward_4_26
@ 031   ----------------------------------------
        .byte   PATT
         .word  Onward_4_27
@ 032   ----------------------------------------
        .byte   GOTO
         .word  Onward_4_LOOP
        .byte   FINE

@***************** Track 5 (Midi-Chn.10) ******************@

Onward_5:
        .byte   KEYSH , Onward_key+0
@ 000   ----------------------------------------
Onward_5_LOOP:
        .byte           VOICE , 61
        .byte           VOL   , 50
        .byte           N68   , Fs3 , v080 , gtp3
        .byte   W72
        .byte           N17   , An3
        .byte   W18
        .byte           N05
        .byte   W06
@ 001   ----------------------------------------
        .byte           N68   , Gn3 , v080 , gtp3
        .byte   W96
@ 002   ----------------------------------------
        .byte   PATT
         .word  Onward_1_2
@ 003   ----------------------------------------
        .byte   PATT
         .word  Onward_1_3
@ 004   ----------------------------------------
        .byte   PATT
         .word  Onward_1_4
@ 005   ----------------------------------------
        .byte           N68   , Gn3 , v080 , gtp3
        .byte   W96
@ 006   ----------------------------------------
        .byte   PATT
         .word  Onward_1_6
@ 007   ----------------------------------------
        .byte   PATT
         .word  Onward_1_3
@ 008   ----------------------------------------
        .byte   W96
@ 009   ----------------------------------------
        .byte   W96
@ 010   ----------------------------------------
        .byte   W96
@ 011   ----------------------------------------
        .byte   W96
@ 012   ----------------------------------------
        .byte   PATT
         .word  Onward_1_8
@ 013   ----------------------------------------
        .byte   PATT
         .word  Onward_1_9
@ 014   ----------------------------------------
        .byte   PATT
         .word  Onward_1_8
@ 015   ----------------------------------------
        .byte           N17   , Bn3 , v080
        .byte   W18
        .byte           N05   , Cn4
        .byte   W06
        .byte           N44   , Dn4 , v080 , gtp3
        .byte   W72
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
        .byte   W96
@ 025   ----------------------------------------
        .byte   W96
@ 026   ----------------------------------------
        .byte   W96
@ 027   ----------------------------------------
        .byte   W96
@ 028   ----------------------------------------
Onward_5_28:
        .byte   W12
        .byte           N11   , Gn4 , v080
        .byte   W12
        .byte                   Gn4
        .byte   W12
        .byte                   Bn4
        .byte   W12
        .byte                   Bn4
        .byte   W12
        .byte                   An4
        .byte   W12
        .byte                   An4
        .byte   W12
        .byte                   Gn4
        .byte   W12
        .byte   PEND
@ 029   ----------------------------------------
        .byte   PATT
         .word  Onward_5_28
@ 030   ----------------------------------------
        .byte   PATT
         .word  Onward_5_28
@ 031   ----------------------------------------
        .byte   PATT
         .word  Onward_5_28
@ 032   ----------------------------------------
        .byte   GOTO
         .word  Onward_5_LOOP
        .byte   FINE


@********************** End of Song ***********************@

        .align  2
Onward:
        .byte   6                       @ Num Tracks
        .byte   0                       @ Unknown
        .byte   Onward_pri              @ Priority
        .byte   Onward_rev              @ Reverb

        .word   Onward_grp             

        .word   Onward_0
        .word   Onward_1
        .word   Onward_2
        .word   Onward_3
        .word   Onward_4
        .word   Onward_5

        .end
