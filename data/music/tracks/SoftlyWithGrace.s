	.include "MPlayDef.s"

	.equ	song16_grp, voicegroup000
	.equ	song16_pri, 10
	.equ	song16_rev, 128
	.equ	song16_mvl, 127
	.equ	song16_key, 0
	.equ	song16_tbs, 1
	.equ	song16_exg, 0
	.equ	song16_cmp, 1

	.section .rodata
	.global	song16
	.align	2


@**************** Track 1 (Midi-Chn.0) ****************@

song16_001:
@  #01 @000   ----------------------------------------
 .byte   KEYSH , song16_key+0
 .byte   TEMPO , 136*song16_tbs/2
 .byte   W84
Label_AB08F9:
 .byte   W84
@  #01 @001   ----------------------------------------
 .byte   W84
 .byte   VOICE , 29
 .byte   BEND , c_v-2
 .byte   W84
@  #01 @002   ----------------------------------------
 .byte   VOL , 44*song16_mvl/mxv
 .byte   W01
 .byte   N24 ,As3 ,v100
 .byte   W11
 .byte   PAN , c_v+1
 .byte   W13
 .byte   N24 ,Fn4
 .byte   W24
 .byte   Ds4
 .byte   W24
 .byte   N12 ,Cn4
 .byte   W11
 .byte   W01
 .byte   N24 ,Cs4
 .byte   W24
@  #01 @003   ----------------------------------------
 .byte   N12 ,Cn4
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   Fs3
 .byte   W11
 .byte   W01
 .byte   N21 ,Fn3
 .byte   W24
 .byte   N24 ,Fn4
 .byte   W24
@  #01 @004   ----------------------------------------
 .byte   Ds4
 .byte   W24
 .byte   N12 ,Cn4
 .byte   W11
 .byte   W01
 .byte   N21 ,Cs4
 .byte   W24
 .byte   N12 ,Cn4
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   As3
 .byte   W12
@  #01 @005   ----------------------------------------
 .byte   Gs3
 .byte   W12
 .byte   Fn3
 .byte   W11
 .byte   W01
 .byte   N24 ,Gn3
 .byte   W24
 .byte   Dn4
 .byte   W24
 .byte   Ds4
 .byte   W24
@  #01 @006   ----------------------------------------
 .byte   N12 ,Cn4
 .byte   W11
 .byte   W01
 .byte   N24 ,Dn4
 .byte   W24
 .byte   N12 ,As3
 .byte   W12
 .byte   Gn3
 .byte   W12
 .byte   N24 ,Gs3
 .byte   W24
 .byte   N12 ,Fn3
 .byte   W11
 .byte   W01
@  #01 @007   ----------------------------------------
 .byte   N18 ,Gn3
 .byte   W24
 .byte   N24 ,Dn4
 .byte   W24
 .byte   Ds4
 .byte   W24
 .byte   N12 ,Cn4
 .byte   W11
 .byte   W01
 .byte   N24 ,Dn4
 .byte   W24
@  #01 @008   ----------------------------------------
 .byte   N32 ,As3
 .byte   W36
 .byte   N06 ,Gs3
 .byte   W06
 .byte   As3
 .byte   W06
 .byte   Cn4
 .byte   W06
 .byte   Cs4
 .byte   W05
Label_AB0972:
 .byte   W01
 .byte   N24 ,Fn4 ,v100
 .byte   W24
 .byte   N12 ,As3
 .byte   W12
@  #01 @009   ----------------------------------------
 .byte   Fn4
 .byte   W12
 .byte   Ds4
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   Cn4
 .byte   W11
 .byte   PEND 
 .byte   W01
 .byte   N24 ,Cs4
 .byte   W24
 .byte   N12 ,As3
 .byte   W12
 .byte   N06 ,Cs4
 .byte   W06
 .byte   Fn4
 .byte   W06
@  #01 @010   ----------------------------------------
 .byte   Gs4
 .byte   W06
 .byte   Fs4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Cs4
 .byte   W06
 .byte   Ds4
 .byte   W05
@  #01 @011   ----------------------------------------
 .byte   PATT
  .word Label_AB0972
@  #01 @012   ----------------------------------------
 .byte   W01
 .byte   N24 ,Cs4 ,v100
 .byte   W24
 .byte   N12 ,As3
 .byte   W12
 .byte   N06 ,Cs4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Gs4
 .byte   W06
 .byte   Gn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Fn4
 .byte   W06
 .byte   Ds4
 .byte   W06
 .byte   Cn4
 .byte   W05
 .byte   W01
 .byte   N32 ,Dn4
 .byte   W80
@  #01 @013   ----------------------------------------
 .byte   W03
 .byte   GOTO
  .word Label_AB08F9
 .byte   FINE

@**************** Track 2 (Midi-Chn.1) ****************@

song16_002:
@  #02 @000   ----------------------------------------
 .byte   KEYSH , song16_key+0
 .byte   VOICE , 33
 .byte   VOL , 42*song16_mvl/mxv
 .byte   PAN , c_v+0
 .byte   N11 ,Gn2 ,v112
 .byte   W12
 .byte   N05 ,Dn2 ,v104
 .byte   W06
 .byte   N11 ,Ds2
 .byte   W12
 .byte   As2 ,v092
 .byte   W12
 .byte   N10 ,An2 ,v088
 .byte   W12
 .byte   N05 ,Gn2 ,v092
 .byte   W06
 .byte   Fn2 ,v096
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   Gn2 ,v092
 .byte   W06
 .byte   N04 ,Fn2 ,v088
 .byte   W06
Label_AB09EE:
 .byte   N10 ,Gn2 ,v112
 .byte   W12
@  #02 @001   ----------------------------------------
 .byte   N05 ,Dn2 ,v108
 .byte   W06
 .byte   N11 ,Ds2 ,v100
 .byte   W12
 .byte   As2 ,v096
 .byte   W12
 .byte   N05 ,An2 ,v092
 .byte   W06
 .byte   Dn3 ,v096
 .byte   W06
 .byte   Cn3 ,v116
 .byte   W06
 .byte   As2 ,v096
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   N04 ,Dn2 ,v092
 .byte   W06
 .byte   PEND 
Label_AB0A13:
 .byte   N11 ,Gn2 ,v112
 .byte   W12
 .byte   N05 ,Dn2 ,v104
 .byte   W06
 .byte   N11 ,Ds2
 .byte   W12
@  #02 @002   ----------------------------------------
 .byte   As2 ,v092
 .byte   W12
 .byte   N10 ,An2 ,v088
 .byte   W12
 .byte   N05 ,Gn2 ,v092
 .byte   W06
 .byte   Fn2 ,v096
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   Gn2 ,v092
 .byte   W06
 .byte   N04 ,Fn2 ,v088
 .byte   W06
 .byte   PEND 
@  #02 @003   ----------------------------------------
 .byte   PATT
  .word Label_AB09EE
@  #02 @004   ----------------------------------------
Label_AB0A3B:
 .byte   N11 ,As2 ,v112
 .byte   W12
 .byte   N05 ,Fn2 ,v104
 .byte   W06
 .byte   N11 ,Fs2
 .byte   W12
 .byte   Cs3 ,v092
 .byte   W12
 .byte   N10 ,Cn3 ,v088
 .byte   W12
 .byte   N05 ,As2 ,v092
 .byte   W06
 .byte   Gs2 ,v096
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   As2 ,v092
 .byte   W06
 .byte   N04 ,Gs2 ,v088
 .byte   W06
 .byte   PEND 
Label_AB0A5E:
 .byte   N10 ,As2 ,v112
 .byte   W12
@  #02 @005   ----------------------------------------
 .byte   N05 ,Fn2 ,v108
 .byte   W06
 .byte   N11 ,Fs2 ,v100
 .byte   W12
 .byte   Cs3 ,v096
 .byte   W12
 .byte   N05 ,Cn3 ,v092
 .byte   W06
 .byte   Fn3 ,v096
 .byte   W06
 .byte   Ds3 ,v116
 .byte   W06
 .byte   Cs3 ,v096
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   N04 ,Fn2 ,v092
 .byte   W06
 .byte   PEND 
@  #02 @006   ----------------------------------------
 .byte   PATT
  .word Label_AB0A3B
@  #02 @007   ----------------------------------------
 .byte   PATT
  .word Label_AB0A5E
@  #02 @008   ----------------------------------------
 .byte   PATT
  .word Label_AB0A13
@  #02 @009   ----------------------------------------
 .byte   PATT
  .word Label_AB09EE
@  #02 @010   ----------------------------------------
 .byte   PATT
  .word Label_AB0A13
@  #02 @011   ----------------------------------------
 .byte   PATT
  .word Label_AB09EE
@  #02 @012   ----------------------------------------
 .byte   PATT
  .word Label_AB0A3B
@  #02 @013   ----------------------------------------
 .byte   PATT
  .word Label_AB0A5E
@  #02 @014   ----------------------------------------
 .byte   PATT
  .word Label_AB0A3B
@  #02 @015   ----------------------------------------
 .byte   PATT
  .word Label_AB0A5E
@  #02 @016   ----------------------------------------
 .byte   PATT
  .word Label_AB0A13
@  #02 @017   ----------------------------------------
 .byte   GOTO
  .word Label_AB09EE
 .byte   FINE

@**************** Track 3 (Midi-Chn.2) ****************@

song16_003:
@  #03 @000   ----------------------------------------
 .byte   KEYSH , song16_key+0
 .byte   VOICE , 127
 .byte   VOL , 38*song16_mvl/mxv
 .byte   W42
 .byte   N01 ,Cn2 ,v096
 .byte   W02
 .byte   Cn2 ,v084
 .byte   W02
 .byte   Cn2 ,v104
 .byte   W02
 .byte   N05 ,Cn2 ,v080
 .byte   W06
 .byte   Cn2 ,v100
 .byte   W06
 .byte   An1
 .byte   W06
 .byte   N05
 .byte   W06
 .byte   Fn1 ,v108
 .byte   W06
 .byte   Fn1 ,v112
 .byte   W06
Label_AB0AE2:
 .byte   N09 ,Cn1 ,v112
 .byte   N11 ,Cs2 ,v127
 .byte   W12
@  #03 @001   ----------------------------------------
 .byte   N05 ,Cn1 ,v108
 .byte   N05 ,Ds2 ,v127
 .byte   W06
 .byte   Ds2 ,v080
 .byte   W06
 .byte   Dn1 ,v127
 .byte   W06
 .byte   Ds2 ,v104
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N05 ,Ds2 ,v088
 .byte   W06
 .byte   Cn1 ,v100
 .byte   W06
 .byte   Ds2 ,v112
 .byte   W06
 .byte   N09 ,Cn1 ,v108
 .byte   N08 ,Ds2 ,v080
 .byte   W12
 .byte   N05 ,Dn1 ,v116
 .byte   N05 ,Ds2 ,v100
 .byte   W06
 .byte   N09 ,Dn1 ,v108
 .byte   N08 ,Ds2 ,v092
 .byte   W12
Label_AB0B1A:
 .byte   N10 ,Cn1 ,v120
 .byte   N08 ,Ds2 ,v127
 .byte   W12
 .byte   N05 ,Cn1 ,v084
 .byte   N05 ,Ds2 ,v127
 .byte   W06
 .byte   Ds2 ,v080
 .byte   W06
@  #03 @002   ----------------------------------------
 .byte   Dn1 ,v124
 .byte   W06
 .byte   Ds2 ,v104
 .byte   W06
 .byte   Cn1 ,v100
 .byte   N05 ,Ds2 ,v088
 .byte   W06
 .byte   Cn1 ,v104
 .byte   W06
 .byte   Ds2 ,v112
 .byte   W06
 .byte   N09 ,Cn1
 .byte   N08 ,Ds2 ,v080
 .byte   W12
 .byte   N05 ,Cn1 ,v108
 .byte   N05 ,Ds2 ,v100
 .byte   W06
 .byte   N09 ,Dn1 ,v116
 .byte   N08 ,Ds2 ,v092
 .byte   W12
 .byte   PEND 
Label_AB0B52:
 .byte   N10 ,Cn1 ,v120
 .byte   N08 ,Ds2 ,v127
 .byte   W12
 .byte   N05 ,Cn1 ,v112
 .byte   N05 ,Ds2 ,v127
 .byte   W06
 .byte   Ds2 ,v080
 .byte   W06
 .byte   Dn1 ,v124
 .byte   W06
 .byte   Ds2 ,v104
 .byte   W06
@  #03 @003   ----------------------------------------
 .byte   Cn1 ,v096
 .byte   N05 ,Ds2 ,v088
 .byte   W06
 .byte   Cn1 ,v096
 .byte   W06
 .byte   Ds2 ,v112
 .byte   W06
 .byte   N09 ,Cn1 ,v116
 .byte   N08 ,Ds2 ,v080
 .byte   W12
 .byte   N05 ,Cn1 ,v112
 .byte   N05 ,Ds2 ,v100
 .byte   W06
 .byte   N09 ,Dn1 ,v116
 .byte   N08 ,Ds2 ,v092
 .byte   W12
 .byte   PEND 
Label_AB0B8B:
 .byte   N09 ,Cn1 ,v116
 .byte   N08 ,Ds2 ,v127
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   Cn1 ,v112
 .byte   N05 ,Ds2 ,v080
 .byte   W06
 .byte   Dn1 ,v108
 .byte   W06
 .byte   Ds2 ,v104
 .byte   W06
 .byte   Cn1 ,v112
 .byte   N05 ,Ds2 ,v088
 .byte   W06
 .byte   Cn1 ,v104
 .byte   W06
@  #03 @004   ----------------------------------------
 .byte   Ds2 ,v112
 .byte   W06
 .byte   N09 ,Cn1 ,v116
 .byte   N08 ,Ds2 ,v080
 .byte   W12
 .byte   N05 ,Cn1 ,v116
 .byte   N05 ,Ds2 ,v100
 .byte   W06
 .byte   N09 ,Dn1 ,v116
 .byte   N08 ,Ds2 ,v092
 .byte   W12
 .byte   PEND 
Label_AB0BC2:
 .byte   N10 ,Cn1 ,v112
 .byte   N08 ,Ds2 ,v127
 .byte   W12
 .byte   N05 ,Cn1 ,v120
 .byte   N05 ,Ds2 ,v127
 .byte   W06
 .byte   Ds2 ,v080
 .byte   W06
 .byte   Dn1 ,v124
 .byte   W06
 .byte   Ds2 ,v104
 .byte   W06
 .byte   Cn1
 .byte   N05 ,Ds2 ,v088
 .byte   W06
 .byte   Cn1 ,v104
 .byte   W06
 .byte   Ds2 ,v112
 .byte   W06
 .byte   N09 ,Cn1 ,v127
 .byte   N08 ,Ds2 ,v080
 .byte   W12
@  #03 @005   ----------------------------------------
 .byte   N05 ,Dn1 ,v124
 .byte   N05 ,Ds2 ,v100
 .byte   W06
 .byte   Dn1
 .byte   N05 ,Ds2 ,v092
 .byte   W06
 .byte   Dn1 ,v116
 .byte   W06
 .byte   PEND 
Label_AB0BFB:
 .byte   N10 ,Cn1 ,v112
 .byte   N08 ,Ds2 ,v127
 .byte   W12
 .byte   N05 ,Cn1 ,v112
 .byte   N05 ,Ds2 ,v127
 .byte   W06
 .byte   Ds2 ,v080
 .byte   W06
 .byte   Dn1 ,v127
 .byte   W06
 .byte   Ds2 ,v104
 .byte   W06
 .byte   Cn1 ,v100
 .byte   N05 ,Ds2 ,v088
 .byte   W06
 .byte   Cn1 ,v080
 .byte   W06
 .byte   Ds2 ,v112
 .byte   W06
 .byte   N08 ,Cn1 ,v100
 .byte   N08 ,Ds2 ,v080
 .byte   W12
 .byte   N05 ,Cn1 ,v104
 .byte   N05 ,Ds2 ,v100
 .byte   W06
 .byte   N09 ,Dn1 ,v104
 .byte   N08 ,Ds2 ,v092
 .byte   W12
 .byte   PEND 
@  #03 @006   ----------------------------------------
Label_AB0C34:
 .byte   N09 ,Cn1 ,v112
 .byte   N08 ,Ds2 ,v127
 .byte   W12
 .byte   N05 ,Cn1 ,v108
 .byte   N05 ,Ds2 ,v127
 .byte   W06
 .byte   Ds2 ,v080
 .byte   W06
 .byte   Dn1 ,v127
 .byte   W06
 .byte   Ds2 ,v104
 .byte   W06
 .byte   Cn1 ,v096
 .byte   N05 ,Ds2 ,v088
 .byte   W06
 .byte   Cn1 ,v100
 .byte   W06
 .byte   Ds2 ,v112
 .byte   W06
 .byte   N09 ,Cn1 ,v108
 .byte   N08 ,Ds2 ,v080
 .byte   W12
 .byte   N05 ,Dn1 ,v116
 .byte   N05 ,Ds2 ,v100
 .byte   W06
 .byte   N09 ,Dn1 ,v108
 .byte   N08 ,Ds2 ,v092
 .byte   W12
 .byte   PEND 
@  #03 @007   ----------------------------------------
 .byte   PATT
  .word Label_AB0B1A
@  #03 @008   ----------------------------------------
 .byte   PATT
  .word Label_AB0B52
@  #03 @009   ----------------------------------------
 .byte   PATT
  .word Label_AB0B8B
@  #03 @010   ----------------------------------------
 .byte   PATT
  .word Label_AB0BC2
@  #03 @011   ----------------------------------------
 .byte   PATT
  .word Label_AB0BFB
@  #03 @012   ----------------------------------------
 .byte   PATT
  .word Label_AB0C34
@  #03 @013   ----------------------------------------
 .byte   PATT
  .word Label_AB0B1A
@  #03 @014   ----------------------------------------
 .byte   PATT
  .word Label_AB0B52
@  #03 @015   ----------------------------------------
 .byte   PATT
  .word Label_AB0B8B
@  #03 @016   ----------------------------------------
 .byte   GOTO
  .word Label_AB0AE2
 .byte   FINE

@**************** Track 4 (Midi-Chn.3) ****************@

song16_004:
@  #04 @000   ----------------------------------------
 .byte   KEYSH , song16_key+0
 .byte   VOICE , 19
 .byte   VOL , 17*song16_mvl/mxv
 .byte   PAN , c_v+6
 .byte   N84 ,An3 ,v080
 .byte   N84 ,An4
 .byte   W01
 .byte   VOL , 17*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 17*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 18*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 18*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 19*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 19*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 19*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 20*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 21*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 21*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 22*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 22*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 22*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 23*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 23*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 24*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 24*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 25*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 25*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 26*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 26*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 27*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 27*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 28*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 28*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 28*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 29*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 30*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 30*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 31*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 31*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 31*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 32*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 32*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 33*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 34*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 34*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 34*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 35*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 35*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 36*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 36*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 36*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 37*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 38*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 38*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 39*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 39*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 39*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 40*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 40*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 41*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 41*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 42*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 42*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 43*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 43*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 44*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 44*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 45*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 45*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 45*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 46*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 47*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 47*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 48*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 48*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 48*song16_mvl/mxv
 .byte   W01
 .byte   VOL , 49*song16_mvl/mxv
 .byte   W15
Label_AB0D39:
 .byte   VOICE , 13
 .byte   PAN , c_v-4
 .byte   N06 ,As2 ,v080
 .byte   W06
 .byte   An2
 .byte   W06
@  #04 @001   ----------------------------------------
 .byte   Gn2
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Gs2
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   Cn3
 .byte   W06
Label_AB0D5B:
 .byte   N06 ,As2 ,v080
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   An2
 .byte   W06
@  #04 @002   ----------------------------------------
 .byte   As2
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   PEND 
Label_AB0D7A:
 .byte   N06 ,As2 ,v080
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Cn3
 .byte   W06
@  #04 @003   ----------------------------------------
 .byte   Dn3
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Gs2
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   PEND 
 .byte   VOICE , 29
 .byte   VOL , 45*song16_mvl/mxv
 .byte   PAN , c_v-13
 .byte   N06 ,Cs3
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Cs3
 .byte   W06
@  #04 @004   ----------------------------------------
 .byte   Ds3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Cn3
 .byte   W06
Label_AB0DBC:
 .byte   N06 ,Cs3 ,v080
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Cs3
 .byte   W06
@  #04 @005   ----------------------------------------
 .byte   Bn2
 .byte   W06
 .byte   Fs3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   PEND 
Label_AB0DDB:
 .byte   N06 ,Cs3 ,v080
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   Fn3
 .byte   W06
@  #04 @006   ----------------------------------------
 .byte   Ds3
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   PEND 
Label_AB0DFA:
 .byte   N06 ,Cs3 ,v080
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Fn3
 .byte   W06
 .byte   Cs3
 .byte   W06
 .byte   Ds3
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   PEND 
@  #04 @007   ----------------------------------------
 .byte   PATT
  .word Label_AB0D5B
@  #04 @008   ----------------------------------------
 .byte   PATT
  .word Label_AB0D7A
@  #04 @009   ----------------------------------------
 .byte   PATT
  .word Label_AB0D5B
@  #04 @010   ----------------------------------------
 .byte   PATT
  .word Label_AB0D7A
@  #04 @011   ----------------------------------------
 .byte   PATT
  .word Label_AB0DDB
@  #04 @012   ----------------------------------------
 .byte   PATT
  .word Label_AB0DBC
@  #04 @013   ----------------------------------------
 .byte   PATT
  .word Label_AB0DDB
@  #04 @014   ----------------------------------------
 .byte   PATT
  .word Label_AB0DFA
@  #04 @015   ----------------------------------------
 .byte   VOICE , 19
 .byte   PAN , c_v+5
 .byte   N06 ,As2 ,v080
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   Gn2
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   As2
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   Cn3
 .byte   W06
 .byte   An2
 .byte   W06
 .byte   GOTO
  .word Label_AB0D39
 .byte   FINE

@**************** Track 5 (Midi-Chn.4) ****************@

song16_005:
@  #05 @000   ----------------------------------------
 .byte   KEYSH , song16_key+0
 .byte   VOICE , 19
 .byte   VOL , 46*song16_mvl/mxv
 .byte   PAN , c_v+12
 .byte   N80 ,Dn3 ,v072
 .byte   N80 ,Dn4
 .byte   W84
Label_AB0E77:
 .byte   N44 ,Dn3 ,v072
 .byte   N44 ,An3
 .byte   W48
@  #05 @001   ----------------------------------------
 .byte   N32 ,Ds3
 .byte   N32 ,Fn3
 .byte   W36
 .byte   N80 ,Dn3
 .byte   W84
@  #05 @002   ----------------------------------------
 .byte   N44
 .byte   W48
 .byte   N32 ,Ds3
 .byte   W36
 .byte   N80 ,Fn3
 .byte   W84
@  #05 @003   ----------------------------------------
 .byte   N44
 .byte   W48
 .byte   N32 ,Fs3
 .byte   W36
 .byte   N80 ,Fn3
 .byte   W84
@  #05 @004   ----------------------------------------
 .byte   N44
 .byte   W48
 .byte   N32 ,Ds3
 .byte   W36
 .byte   VOICE , 106
 .byte   VOL , 34*song16_mvl/mxv
 .byte   TIE ,Dn3 ,v104
 .byte   W84
@  #05 @005   ----------------------------------------
 .byte   W48
 .byte   EOT
 .byte   N36 ,Ds3
 .byte   W36
 .byte   TIE ,Dn3
 .byte   W84
@  #05 @006   ----------------------------------------
 .byte   W48
 .byte   EOT
 .byte   N36 ,Ds3
 .byte   W36
 .byte   TIE ,Fn3
 .byte   W84
@  #05 @007   ----------------------------------------
 .byte   W48
 .byte   EOT
 .byte   N36 ,Fs3
 .byte   W36
 .byte   TIE ,Fn3
 .byte   W84
@  #05 @008   ----------------------------------------
 .byte   W48
 .byte   EOT
 .byte   N36 ,Ds3
 .byte   W36
 .byte   VOICE , 19
 .byte   VOL , 46*song16_mvl/mxv
 .byte   N80 ,Dn3 ,v072
 .byte   N80 ,As3
 .byte   W84
@  #05 @009   ----------------------------------------
 .byte   GOTO
  .word Label_AB0E77
 .byte   FINE

@**************** Track 6 (Midi-Chn.5) ****************@

song16_006:
@  #06 @000   ----------------------------------------
 .byte   KEYSH , song16_key+0
 .byte   VOICE , 19
 .byte   VOL , 46*song16_mvl/mxv
 .byte   PAN , c_v-19
 .byte   N80 ,Gn2 ,v072
 .byte   W84
Label_AB0EDB:
 .byte   N44 ,Gn2 ,v072
 .byte   W48
@  #06 @001   ----------------------------------------
 .byte   N32 ,Gs2
 .byte   W36
 .byte   PEND 
 .byte   N80 ,Gn2
 .byte   W84
@  #06 @002   ----------------------------------------
 .byte   PATT
  .word Label_AB0EDB
@  #06 @003   ----------------------------------------
 .byte   N80 ,As2 ,v072
 .byte   W84
 .byte   N44
 .byte   W48
@  #06 @004   ----------------------------------------
 .byte   N32 ,Bn2
 .byte   W36
 .byte   N80 ,As2
 .byte   W84
@  #06 @005   ----------------------------------------
 .byte   N44
 .byte   W48
 .byte   N32 ,Gs2
 .byte   W36
 .byte   VOICE , 106
 .byte   VOL , 34*song16_mvl/mxv
 .byte   TIE ,Gn2 ,v104
 .byte   W84
@  #06 @006   ----------------------------------------
 .byte   W48
 .byte   EOT
 .byte   N36 ,Gs2
 .byte   W36
 .byte   TIE ,Gn2
 .byte   W84
@  #06 @007   ----------------------------------------
 .byte   W48
 .byte   EOT
 .byte   N36 ,Gs2
 .byte   W36
 .byte   TIE ,As2
 .byte   W84
@  #06 @008   ----------------------------------------
 .byte   W48
 .byte   EOT
 .byte   N36 ,Bn2
 .byte   W36
 .byte   TIE ,As2
 .byte   W84
@  #06 @009   ----------------------------------------
 .byte   W48
 .byte   EOT
 .byte   N36 ,Gs2
 .byte   W36
 .byte   VOICE , 19
 .byte   VOL , 46*song16_mvl/mxv
 .byte   N80 ,Gn2 ,v072
 .byte   W84
@  #06 @010   ----------------------------------------
 .byte   GOTO
  .word Label_AB0EDB
 .byte   FINE

@******************************************************@
	.align	2

SoftlyWithGrace:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song16_pri	@ Priority
	.byte	song16_rev	@ Reverb.
    
	.word	song16_grp
    
	.word	song16_001
	.word	song16_002
	.word	song16_003
	.word	song16_004
	.word	song16_005
	.word	song16_006

	.end
