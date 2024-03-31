	.include "MPlayDef.s"

	.equ	song37_grp, voicegroup000
	.equ	song37_pri, 0
	.equ	song37_rev, 0
	.equ	song37_mvl, 127
	.equ	song37_key, 0
	.equ	song37_tbs, 1
	.equ	song37_exg, 0
	.equ	song37_cmp, 1

	.section .rodata
	.global	song37
	.align	2


@**************** Track 1 (Midi-Chn.0) ****************@

song37_001:
@ 000   ----------------------------------------
 .byte   KEYSH , song37_key+0
 .byte   TEMPO , 64*song37_tbs/2
 .byte   VOICE , 57
 .byte   VOL , 56*song37_mvl/mxv
 .byte   PAN , c_v+25
 .byte   W06
Label_0_0143B63F:
 .byte   N02 ,Gn2 ,v096
 .byte   W06
 .byte   N03 ,Gn2 ,v104
 .byte   W12
 .byte   Gn2 ,v096
 .byte   W12
 .byte   Fn2
 .byte   W12
 .byte   Fn2 ,v092
 .byte   W06
 .byte   N02 ,Gn2 ,v096
 .byte   W06
 .byte   N03 ,Gn2 ,v104
 .byte   W12
 .byte   Gn2 ,v096
 .byte   W12
 .byte   As2
 .byte   W12
@ 001   ----------------------------------------
Label_0_0143B65C:
 .byte   N03 ,As2 ,v092
 .byte   W06
 .byte   N02 ,Gn2 ,v096
 .byte   W06
 .byte   N03 ,Gn2 ,v104
 .byte   W12
 .byte   Gn2 ,v096
 .byte   W12
 .byte   Fn2
 .byte   W12
 .byte   Fn2 ,v092
 .byte   W06
 .byte   N02 ,Gn2 ,v096
 .byte   W06
 .byte   N03 ,Gn2 ,v104
 .byte   W12
 .byte   Gn2 ,v096
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   PEND 
 .byte   PATT
  .word Label_0_0143B65C
 .byte   PATT
  .word Label_0_0143B65C
@ 002   ----------------------------------------
Label_0_0143B688:
 .byte   N03 ,As2 ,v092
 .byte   W06
 .byte   VOICE , 57
 .byte   VOL , 56*song37_mvl/mxv
 .byte   PAN , c_v-25
 .byte   N11 ,Gs2 ,v096
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   Gn2
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   N11
 .byte   W06
 .byte   PEND 
@ 003   ----------------------------------------
Label_0_0143B6A1:
 .byte   W06
 .byte   N11 ,Fn2 ,v096
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   Ds2
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   Gs2 ,v100
 .byte   W06
 .byte   PEND 
@ 004   ----------------------------------------
Label_0_0143B6B2:
 .byte   W06
 .byte   VOICE , 57
 .byte   VOL , 61*song37_mvl/mxv
 .byte   PAN , c_v-25
 .byte   N11 ,Gn2 ,v104
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Fn2
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W06
 .byte   PEND 
@ 005   ----------------------------------------
Label_0_0143B6CC:
 .byte   W06
 .byte   N11 ,Gn2 ,v104
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Fn2
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N05 ,Fn2 ,v108
 .byte   W12
 .byte   PEND 
@ 006   ----------------------------------------
Label_0_0143B6E0:
 .byte   N05 ,Fn2 ,v108
 .byte   W06
 .byte   N11 ,Gn2 ,v104
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Fn2
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W06
 .byte   PEND 
 .byte   PATT
  .word Label_0_0143B6CC
@ 007   ----------------------------------------
Label_0_0143B6FC:
 .byte   N05 ,Fn2 ,v108
 .byte   W06
 .byte   N11 ,En2
 .byte   W12
 .byte   En2 ,v104
 .byte   W12
 .byte   En2 ,v112
 .byte   W12
 .byte   En2 ,v108
 .byte   W12
 .byte   En2 ,v120
 .byte   W12
 .byte   En2 ,v112
 .byte   W12
 .byte   N05 ,En2 ,v124
 .byte   W12
 .byte   Gs2 ,v120
 .byte   W06
 .byte   PEND 
@ 008   ----------------------------------------
 .byte   PAN , c_v+34
 .byte   N02 ,Gs2 ,v060
 .byte   W03
 .byte   PAN , c_v-49
 .byte   N01 ,Gs2 ,v052
 .byte   W03
 .byte   PAN , c_v-25
 .byte   N11 ,Fn2 ,v112
 .byte   W12
 .byte   Fn2 ,v108
 .byte   W12
 .byte   Fn2 ,v112
 .byte   W12
 .byte   Fn2 ,v104
 .byte   W12
 .byte   Gn2 ,v108
 .byte   W12
 .byte   Gn2 ,v104
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Gn2 ,v100
 .byte   W06
@ 009   ----------------------------------------
Label_0_0143B740:
 .byte   W06
 .byte   N11 ,As2 ,v104
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N05
 .byte   W12
 .byte   N11 ,Gs2
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   PEND 
@ 010   ----------------------------------------
Label_0_0143B755:
 .byte   W06
 .byte   N11 ,Gn2 ,v104
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N05
 .byte   W12
 .byte   PEND 
@ 011   ----------------------------------------
 .byte   Gn2 ,v112
 .byte   W06
 .byte   GOTO
  .word Label_0_0143B63F
@ 012   ----------------------------------------
 .byte   VOICE , 57
 .byte   VOL , 56*song37_mvl/mxv
 .byte   PAN , c_v+25
 .byte   N02 ,Gn2 ,v096
 .byte   W06
 .byte   N03 ,Gn2 ,v104
 .byte   W12
 .byte   Gn2 ,v096
 .byte   W12
 .byte   Fn2
 .byte   W12
 .byte   Fn2 ,v092
 .byte   W06
 .byte   N02 ,Gn2 ,v096
 .byte   W06
 .byte   N03 ,Gn2 ,v104
 .byte   W12
 .byte   Gn2 ,v096
 .byte   W12
 .byte   As2
 .byte   W12
 .byte   PATT
  .word Label_0_0143B65C
 .byte   PATT
  .word Label_0_0143B65C
 .byte   PATT
  .word Label_0_0143B65C
 .byte   PATT
  .word Label_0_0143B688
 .byte   PATT
  .word Label_0_0143B6A1
 .byte   PATT
  .word Label_0_0143B6B2
 .byte   PATT
  .word Label_0_0143B6CC
 .byte   PATT
  .word Label_0_0143B6E0
 .byte   PATT
  .word Label_0_0143B6CC
 .byte   PATT
  .word Label_0_0143B6FC
@ 013   ----------------------------------------
 .byte   PAN , c_v+34
 .byte   N02 ,Gs2 ,v060
 .byte   W04
 .byte   PAN , c_v-49
 .byte   N01 ,Gs2 ,v052
 .byte   W02
 .byte   PAN , c_v-25
 .byte   N11 ,Fn2 ,v112
 .byte   W12
 .byte   Fn2 ,v108
 .byte   W12
 .byte   Fn2 ,v112
 .byte   W12
 .byte   Fn2 ,v104
 .byte   W12
 .byte   Gn2 ,v108
 .byte   W12
 .byte   Gn2 ,v104
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Gn2 ,v100
 .byte   W06
 .byte   PATT
  .word Label_0_0143B740
 .byte   PATT
  .word Label_0_0143B755
@ 014   ----------------------------------------
 .byte   N05 ,Gn2 ,v112
 .byte   W05
 .byte   FINE

@**************** Track 2 (Midi-Chn.1) ****************@

song37_002:
@ 000   ----------------------------------------
 .byte   KEYSH , song37_key+0
 .byte   VOICE , 57
 .byte   VOL , 56*song37_mvl/mxv
 .byte   PAN , c_v-25
 .byte   W06
Label_1_0143B805:
 .byte   N02 ,Dn3 ,v096
 .byte   W06
 .byte   N03 ,Dn3 ,v104
 .byte   W12
 .byte   Dn3 ,v096
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   Cn3 ,v092
 .byte   W06
 .byte   N02 ,Dn3 ,v096
 .byte   W06
 .byte   N03 ,Dn3 ,v104
 .byte   W12
 .byte   Dn3 ,v096
 .byte   W12
 .byte   Fn3
 .byte   W12
@ 001   ----------------------------------------
Label_1_0143B822:
 .byte   N03 ,Fn3 ,v092
 .byte   W06
 .byte   N02 ,Dn3 ,v096
 .byte   W06
 .byte   N03 ,Dn3 ,v104
 .byte   W12
 .byte   Dn3 ,v096
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   Cn3 ,v092
 .byte   W06
 .byte   N02 ,Dn3 ,v096
 .byte   W06
 .byte   N03 ,Dn3 ,v104
 .byte   W12
 .byte   Dn3 ,v096
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   PEND 
 .byte   PATT
  .word Label_1_0143B822
 .byte   PATT
  .word Label_1_0143B822
@ 002   ----------------------------------------
Label_1_0143B84E:
 .byte   N03 ,Fn3 ,v092
 .byte   W06
 .byte   N11 ,Ds3 ,v096
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   Dn3
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   N11
 .byte   W06
 .byte   PEND 
@ 003   ----------------------------------------
Label_1_0143B861:
 .byte   W06
 .byte   N11 ,Cn3 ,v096
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   N11
 .byte   W12
 .byte   As2
 .byte   W18
 .byte   N11
 .byte   W18
 .byte   Ds3 ,v100
 .byte   W06
 .byte   PEND 
@ 004   ----------------------------------------
Label_1_0143B872:
 .byte   W06
 .byte   VOICE , 57
 .byte   VOL , 63*song37_mvl/mxv
 .byte   PAN , c_v+25
 .byte   N11 ,Dn3 ,v104
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W06
 .byte   PEND 
@ 005   ----------------------------------------
Label_1_0143B88C:
 .byte   W06
 .byte   N11 ,Dn3 ,v104
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N05 ,Cn3 ,v108
 .byte   W12
 .byte   PEND 
@ 006   ----------------------------------------
Label_1_0143B8A0:
 .byte   N05 ,Cn3 ,v108
 .byte   W06
 .byte   N11 ,Dn3 ,v104
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W06
 .byte   PEND 
 .byte   PATT
  .word Label_1_0143B88C
@ 007   ----------------------------------------
Label_1_0143B8BC:
 .byte   N05 ,Cn3 ,v108
 .byte   W06
 .byte   N11 ,Bn2
 .byte   W12
 .byte   Bn2 ,v104
 .byte   W12
 .byte   Bn2 ,v112
 .byte   W12
 .byte   Bn2 ,v108
 .byte   W12
 .byte   Bn2 ,v120
 .byte   W12
 .byte   Bn2 ,v112
 .byte   W12
 .byte   N05 ,Bn2 ,v124
 .byte   W12
 .byte   En3 ,v120
 .byte   W06
 .byte   PEND 
@ 008   ----------------------------------------
 .byte   PAN , c_v-34
 .byte   N02 ,En3 ,v060
 .byte   W03
 .byte   PAN , c_v+49
 .byte   N01 ,En3 ,v052
 .byte   W03
 .byte   PAN , c_v+25
 .byte   N11 ,Cn3 ,v112
 .byte   W12
 .byte   Cn3 ,v108
 .byte   W12
 .byte   Cn3 ,v112
 .byte   W12
 .byte   Cn3 ,v104
 .byte   W12
 .byte   Dn3 ,v108
 .byte   W12
 .byte   Dn3 ,v104
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Dn3 ,v100
 .byte   W06
@ 009   ----------------------------------------
Label_1_0143B900:
 .byte   W06
 .byte   N11 ,Fn3 ,v104
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N05
 .byte   W12
 .byte   N11 ,Ds3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N05
 .byte   W06
 .byte   PEND 
@ 010   ----------------------------------------
Label_1_0143B915:
 .byte   W06
 .byte   N11 ,Dn3 ,v104
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N05
 .byte   W12
 .byte   PEND 
@ 011   ----------------------------------------
 .byte   Dn3 ,v112
 .byte   W06
 .byte   GOTO
  .word Label_1_0143B805
@ 012   ----------------------------------------
 .byte   VOICE , 57
 .byte   VOL , 56*song37_mvl/mxv
 .byte   PAN , c_v-25
 .byte   N02 ,Dn3 ,v096
 .byte   W06
 .byte   N03 ,Dn3 ,v104
 .byte   W12
 .byte   Dn3 ,v096
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   Cn3 ,v092
 .byte   W06
 .byte   N02 ,Dn3 ,v096
 .byte   W06
 .byte   N03 ,Dn3 ,v104
 .byte   W12
 .byte   Dn3 ,v096
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   PATT
  .word Label_1_0143B822
 .byte   PATT
  .word Label_1_0143B822
 .byte   PATT
  .word Label_1_0143B822
 .byte   PATT
  .word Label_1_0143B84E
 .byte   PATT
  .word Label_1_0143B861
 .byte   PATT
  .word Label_1_0143B872
 .byte   PATT
  .word Label_1_0143B88C
 .byte   PATT
  .word Label_1_0143B8A0
 .byte   PATT
  .word Label_1_0143B88C
 .byte   PATT
  .word Label_1_0143B8BC
@ 013   ----------------------------------------
 .byte   PAN , c_v-34
 .byte   N02 ,En3 ,v060
 .byte   W04
 .byte   PAN , c_v+49
 .byte   N01 ,En3 ,v052
 .byte   W02
 .byte   PAN , c_v+25
 .byte   N11 ,Cn3 ,v112
 .byte   W12
 .byte   Cn3 ,v108
 .byte   W12
 .byte   Cn3 ,v112
 .byte   W12
 .byte   Cn3 ,v104
 .byte   W12
 .byte   Dn3 ,v108
 .byte   W12
 .byte   Dn3 ,v104
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Dn3 ,v100
 .byte   W06
 .byte   PATT
  .word Label_1_0143B900
 .byte   PATT
  .word Label_1_0143B915
@ 014   ----------------------------------------
 .byte   N05 ,Dn3 ,v112
 .byte   W05
 .byte   FINE

@**************** Track 3 (Midi-Chn.2) ****************@

song37_003:
@ 000   ----------------------------------------
 .byte   KEYSH , song37_key+0
 .byte   VOICE , 41
 .byte   VOL , 50*song37_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W06
Label_2_0143B9C5:
 .byte   N03 ,Gn3 ,v108
 .byte   W04
 .byte   Bn3 ,v096
 .byte   W04
 .byte   Dn4
 .byte   W04
 .byte   N11 ,Gn4 ,v104
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   N07 ,Cn4
 .byte   W09
 .byte   N02 ,En4
 .byte   W03
 .byte   N44 ,Dn4
 .byte   W42
@ 001   ----------------------------------------
Label_2_0143B9DD:
 .byte   W06
 .byte   N03 ,Gn3 ,v108
 .byte   W04
 .byte   Bn3 ,v096
 .byte   W04
 .byte   Dn4
 .byte   W04
 .byte   N11 ,Gn4 ,v104
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   N03 ,An4
 .byte   W04
 .byte   Fn4 ,v096
 .byte   W04
 .byte   An4
 .byte   W04
 .byte   N44 ,Gn4 ,v108
 .byte   W42
 .byte   PEND 
@ 002   ----------------------------------------
Label_2_0143B9FA:
 .byte   W06
 .byte   N03 ,Gn3 ,v108
 .byte   W04
 .byte   Bn3 ,v096
 .byte   W04
 .byte   Dn4
 .byte   W04
 .byte   N11 ,Gn4 ,v104
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   N07 ,Cn4
 .byte   W09
 .byte   N02 ,En4
 .byte   W03
 .byte   N44 ,Dn4
 .byte   W42
 .byte   PEND 
 .byte   PATT
  .word Label_2_0143B9DD
@ 003   ----------------------------------------
 .byte   W06
 .byte   VOL , 43*song37_mvl/mxv
 .byte   N03 ,Dn5 ,v104
 .byte   W06
 .byte   N02 ,Gn4 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W06
 .byte   N03 ,Dn5 ,v104
 .byte   W06
 .byte   N02 ,Gn4 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W06
 .byte   N03 ,Dn5 ,v104
 .byte   W06
 .byte   Gn4 ,v092
 .byte   W06
 .byte   Dn5 ,v104
 .byte   W06
 .byte   N02 ,Gn4 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W06
 .byte   N03 ,Dn5 ,v104
 .byte   W06
 .byte   N02 ,Gn4 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W06
 .byte   N03 ,Dn5 ,v104
 .byte   W06
@ 004   ----------------------------------------
 .byte   Gn5 ,v092
 .byte   W06
 .byte   Gn5 ,v104
 .byte   W06
 .byte   N02 ,Cn5 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W06
 .byte   N03 ,Gn5 ,v104
 .byte   W06
 .byte   N02 ,Cn5 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W06
 .byte   N03 ,Gn5 ,v104
 .byte   W06
 .byte   Cn5 ,v092
 .byte   W06
 .byte   Gn5 ,v104
 .byte   W06
 .byte   N02 ,Cn5 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W06
 .byte   N03 ,Gn5 ,v104
 .byte   W06
 .byte   N02 ,Cn5 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W06
 .byte   N03 ,Gn5 ,v104
 .byte   W06
@ 005   ----------------------------------------
 .byte   Cn5 ,v092
 .byte   W06
 .byte   VOICE , 41
 .byte   VOL , 33*song37_mvl/mxv
 .byte   PAN , c_v+0
 .byte   N23 ,Gn5 ,v100
 .byte   W24
 .byte   N03 ,Gn4 ,v108
 .byte   W04
 .byte   An4 ,v096
 .byte   W04
 .byte   Bn4
 .byte   W04
 .byte   N11 ,Cn5 ,v104
 .byte   W12
 .byte   Dn5
 .byte   W12
 .byte   Gn5
 .byte   W12
 .byte   An5
 .byte   W12
 .byte   N07 ,Fn5
 .byte   W06
@ 006   ----------------------------------------
Label_2_0143BAB5:
 .byte   W03
 .byte   N02 ,Gn5 ,v104
 .byte   W03
 .byte   N23 ,Dn5
 .byte   W24
 .byte   N03 ,Cn5 ,v108
 .byte   W04
 .byte   Bn4 ,v096
 .byte   W04
 .byte   An4
 .byte   W04
 .byte   N11 ,Cn5 ,v104
 .byte   W12
 .byte   Bn4
 .byte   W12
 .byte   N03 ,Bn4 ,v108
 .byte   W04
 .byte   An4 ,v096
 .byte   W04
 .byte   Gn4
 .byte   W04
 .byte   N11 ,Dn4 ,v104
 .byte   W12
 .byte   An4
 .byte   W06
 .byte   PEND 
@ 007   ----------------------------------------
Label_2_0143BADC:
 .byte   W06
 .byte   N23 ,Gn4 ,v104
 .byte   W24
 .byte   N03 ,Gn4 ,v108
 .byte   W04
 .byte   An4 ,v096
 .byte   W04
 .byte   Bn4
 .byte   W04
 .byte   N11 ,Cn5 ,v104
 .byte   W12
 .byte   Dn5
 .byte   W12
 .byte   Gn5
 .byte   W12
 .byte   An5
 .byte   W12
 .byte   N07 ,Fn5
 .byte   W06
 .byte   PEND 
 .byte   PATT
  .word Label_2_0143BAB5
@ 008   ----------------------------------------
 .byte   W06
 .byte   VOICE , 41
 .byte   VOL , 50*song37_mvl/mxv
 .byte   PAN , c_v+0
 .byte   N06 ,Gs4 ,v108
 .byte   W07
 .byte   PAN , c_v+14
 .byte   N04 ,Gs4 ,v040
 .byte   W05
 .byte   PAN , c_v+0
 .byte   N02 ,Gs4 ,v104
 .byte   W04
 .byte   Gs4 ,v092
 .byte   W04
 .byte   N02
 .byte   W04
 .byte   N06 ,An4 ,v112
 .byte   W07
 .byte   PAN , c_v-14
 .byte   N04 ,An4 ,v040
 .byte   W05
 .byte   PAN , c_v+0
 .byte   N02 ,An4 ,v108
 .byte   W04
 .byte   An4 ,v096
 .byte   W04
 .byte   N02
 .byte   W04
 .byte   N04 ,Bn4 ,v116
 .byte   W05
 .byte   PAN , c_v+14
 .byte   N02 ,Bn4 ,v044
 .byte   W04
 .byte   PAN , c_v+0
 .byte   N01 ,Bn4 ,v100
 .byte   W03
 .byte   N02 ,Bn4 ,v112
 .byte   W04
 .byte   Bn4 ,v100
 .byte   W04
 .byte   N02
 .byte   W04
 .byte   N11 ,En5
 .byte   W12
 .byte   Bn4 ,v108
 .byte   W06
@ 009   ----------------------------------------
Label_2_0143BB4D:
 .byte   W06
 .byte   N03 ,Dn5 ,v112
 .byte   W04
 .byte   Cn5 ,v100
 .byte   W04
 .byte   Bn4
 .byte   W04
 .byte   N11 ,Cn5 ,v104
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   Cn5
 .byte   W12
 .byte   N03 ,Cn5 ,v112
 .byte   W04
 .byte   Bn4 ,v096
 .byte   W04
 .byte   An4
 .byte   W04
 .byte   N11 ,Bn4 ,v104
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Bn4
 .byte   W06
 .byte   PEND 
@ 010   ----------------------------------------
Label_2_0143BB71:
 .byte   W06
 .byte   N03 ,An4 ,v108
 .byte   W04
 .byte   Gn4 ,v096
 .byte   W04
 .byte   Fn4
 .byte   W04
 .byte   N11 ,Gn4 ,v104
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Cn5
 .byte   W12
 .byte   Gs4
 .byte   W12
 .byte   N03 ,Gs4 ,v108
 .byte   W04
 .byte   Gn4 ,v096
 .byte   W04
 .byte   Fn4
 .byte   W04
 .byte   N10 ,Gn4 ,v104
 .byte   W12
 .byte   Cn4
 .byte   W06
 .byte   PEND 
@ 011   ----------------------------------------
Label_2_0143BB95:
 .byte   W06
 .byte   N44 ,Dn4 ,v096
 .byte   W48
 .byte   Gn4 ,v104
 .byte   W42
 .byte   PEND 
@ 012   ----------------------------------------
 .byte   W06
 .byte   GOTO
  .word Label_2_0143B9C5
@ 013   ----------------------------------------
 .byte   N03 ,Gn3 ,v108
 .byte   W04
 .byte   Bn3 ,v096
 .byte   W04
 .byte   Dn4
 .byte   W04
 .byte   N11 ,Gn4 ,v104
 .byte   W12
 .byte   Fn4
 .byte   W12
 .byte   N07 ,Cn4
 .byte   W09
 .byte   N02 ,En4
 .byte   W03
 .byte   N44 ,Dn4
 .byte   W42
 .byte   PATT
  .word Label_2_0143B9DD
 .byte   PATT
  .word Label_2_0143B9FA
 .byte   PATT
  .word Label_2_0143B9DD
@ 014   ----------------------------------------
 .byte   W06
 .byte   VOL , 43*song37_mvl/mxv
 .byte   N03 ,Dn5 ,v104
 .byte   W07
 .byte   N02 ,Gn4 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W05
 .byte   N03 ,Dn5 ,v104
 .byte   W07
 .byte   N02 ,Gn4 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W05
 .byte   N03 ,Dn5 ,v104
 .byte   W07
 .byte   Gn4 ,v092
 .byte   W05
 .byte   Dn5 ,v104
 .byte   W07
 .byte   N02 ,Gn4 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W05
 .byte   N03 ,Dn5 ,v104
 .byte   W07
 .byte   N02 ,Gn4 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W05
 .byte   N03 ,Dn5 ,v104
 .byte   W06
@ 015   ----------------------------------------
 .byte   W01
 .byte   Gn5 ,v092
 .byte   W05
 .byte   Gn5 ,v104
 .byte   W07
 .byte   N02 ,Cn5 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W05
 .byte   N03 ,Gn5 ,v104
 .byte   W07
 .byte   N02 ,Cn5 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W05
 .byte   N03 ,Gn5 ,v104
 .byte   W07
 .byte   Cn5 ,v092
 .byte   W05
 .byte   Gn5 ,v104
 .byte   W07
 .byte   N02 ,Cn5 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W05
 .byte   N03 ,Gn5 ,v104
 .byte   W07
 .byte   N02 ,Cn5 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W05
 .byte   N03 ,Gn5 ,v104
 .byte   W06
@ 016   ----------------------------------------
 .byte   W01
 .byte   Cn5 ,v092
 .byte   W05
 .byte   VOICE , 41
 .byte   VOL , 33*song37_mvl/mxv
 .byte   PAN , c_v+0
 .byte   N23 ,Gn5 ,v100
 .byte   W24
 .byte   N03 ,Gn4 ,v108
 .byte   W04
 .byte   An4 ,v096
 .byte   W04
 .byte   Bn4
 .byte   W04
 .byte   N11 ,Cn5 ,v104
 .byte   W12
 .byte   Dn5
 .byte   W12
 .byte   Gn5
 .byte   W12
 .byte   An5
 .byte   W12
 .byte   N07 ,Fn5
 .byte   W06
 .byte   PATT
  .word Label_2_0143BAB5
 .byte   PATT
  .word Label_2_0143BADC
 .byte   PATT
  .word Label_2_0143BAB5
@ 017   ----------------------------------------
 .byte   W06
 .byte   VOICE , 41
 .byte   VOL , 50*song37_mvl/mxv
 .byte   PAN , c_v+0
 .byte   N06 ,Gs4 ,v108
 .byte   W07
 .byte   PAN , c_v+14
 .byte   N04 ,Gs4 ,v040
 .byte   W05
 .byte   PAN , c_v+0
 .byte   N02 ,Gs4 ,v104
 .byte   W04
 .byte   Gs4 ,v092
 .byte   W04
 .byte   N02
 .byte   W04
 .byte   N06 ,An4 ,v112
 .byte   W07
 .byte   PAN , c_v-14
 .byte   N04 ,An4 ,v040
 .byte   W05
 .byte   PAN , c_v+0
 .byte   N02 ,An4 ,v108
 .byte   W04
 .byte   An4 ,v096
 .byte   W04
 .byte   N02
 .byte   W04
 .byte   N04 ,Bn4 ,v116
 .byte   W06
 .byte   PAN , c_v+14
 .byte   N02 ,Bn4 ,v044
 .byte   W03
 .byte   PAN , c_v+0
 .byte   N01 ,Bn4 ,v100
 .byte   W03
 .byte   N02 ,Bn4 ,v112
 .byte   W04
 .byte   Bn4 ,v100
 .byte   W04
 .byte   N02
 .byte   W04
 .byte   N11 ,En5
 .byte   W12
 .byte   Bn4 ,v108
 .byte   W06
 .byte   PATT
  .word Label_2_0143BB4D
 .byte   PATT
  .word Label_2_0143BB71
 .byte   PATT
  .word Label_2_0143BB95
@ 018   ----------------------------------------
 .byte   W05
 .byte   FINE

@**************** Track 4 (Midi-Chn.3) ****************@

song37_004:
@ 000   ----------------------------------------
 .byte   KEYSH , song37_key+0
 .byte   VOICE , 34
 .byte   VOL , 68*song37_mvl/mxv
 .byte   PAN , c_v+14
 .byte   W06
Label_3_0143BCE5:
 .byte   N05 ,Gn2 ,v100
 .byte   W06
 .byte   Gn2 ,v112
 .byte   W12
 .byte   Dn2 ,v104
 .byte   W12
 .byte   Fn2 ,v108
 .byte   W12
 .byte   Dn2 ,v096
 .byte   W06
 .byte   Gn2 ,v100
 .byte   W06
 .byte   Gn2 ,v112
 .byte   W12
 .byte   Dn2 ,v104
 .byte   W12
 .byte   Fn2 ,v108
 .byte   W12
@ 001   ----------------------------------------
Label_3_0143BD01:
 .byte   N05 ,Dn2 ,v096
 .byte   W06
 .byte   Gn2 ,v100
 .byte   W06
 .byte   Gn2 ,v112
 .byte   W12
 .byte   Dn2 ,v104
 .byte   W12
 .byte   Fn2 ,v108
 .byte   W12
 .byte   Dn2 ,v096
 .byte   W06
 .byte   Gn2 ,v100
 .byte   W06
 .byte   Gn2 ,v112
 .byte   W12
 .byte   Dn2 ,v104
 .byte   W12
 .byte   Fn2 ,v108
 .byte   W12
 .byte   PEND 
 .byte   PATT
  .word Label_3_0143BD01
 .byte   PATT
  .word Label_3_0143BD01
@ 002   ----------------------------------------
 .byte   N05 ,Dn2 ,v096
 .byte   W06
 .byte   N11 ,Gs2 ,v108
 .byte   W12
 .byte   N04 ,Ds2 ,v092
 .byte   W06
 .byte   N05 ,Gs2 ,v104
 .byte   W12
 .byte   N04 ,Ds2 ,v092
 .byte   W06
 .byte   N05 ,Gs2 ,v100
 .byte   W06
 .byte   N04 ,Ds2 ,v092
 .byte   W06
 .byte   N11 ,Gn2 ,v112
 .byte   W12
 .byte   N04 ,Dn2 ,v092
 .byte   W06
 .byte   N05 ,Gn2 ,v104
 .byte   W12
 .byte   N04 ,Dn2 ,v096
 .byte   W06
 .byte   N05 ,Gn2 ,v100
 .byte   W06
@ 003   ----------------------------------------
 .byte   N04 ,Dn2 ,v096
 .byte   W06
 .byte   N11 ,Fn2 ,v112
 .byte   W12
 .byte   N04 ,Cn2 ,v092
 .byte   W06
 .byte   N05 ,Fn2 ,v104
 .byte   W12
 .byte   N04 ,Cn2 ,v096
 .byte   W06
 .byte   N05 ,Fn2 ,v104
 .byte   W06
 .byte   N04 ,Cn2 ,v096
 .byte   W06
 .byte   N11 ,Ds2 ,v112
 .byte   W12
 .byte   N04 ,As1 ,v096
 .byte   W06
 .byte   N05 ,Ds2 ,v108
 .byte   W12
 .byte   N04 ,As1 ,v096
 .byte   W06
 .byte   N05 ,Ds2 ,v104
 .byte   W06
@ 004   ----------------------------------------
 .byte   As1 ,v096
 .byte   W06
 .byte   VOICE , 109
 .byte   VOL , 56*song37_mvl/mxv
 .byte   PAN , c_v+0
 .byte   N11 ,Gn3 ,v104
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W06
@ 005   ----------------------------------------
Label_3_0143BDA6:
 .byte   W06
 .byte   N11 ,Gn3 ,v104
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N05
 .byte   W12
 .byte   PEND 
@ 006   ----------------------------------------
 .byte   N05
 .byte   W06
 .byte   N11 ,Gn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W06
 .byte   PATT
  .word Label_3_0143BDA6
@ 007   ----------------------------------------
 .byte   N05 ,Fn3 ,v104
 .byte   W06
 .byte   N11 ,En3 ,v108
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   En3 ,v112
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   En3 ,v120
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W06
@ 008   ----------------------------------------
 .byte   W06
 .byte   Fn3 ,v112
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Gn3 ,v108
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W06
@ 009   ----------------------------------------
 .byte   W06
 .byte   As3 ,v104
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W06
@ 010   ----------------------------------------
 .byte   W06
 .byte   Gn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N05
 .byte   W12
@ 011   ----------------------------------------
 .byte   N04 ,Gn3 ,v112
 .byte   W06
 .byte   GOTO
  .word Label_3_0143BCE5
@ 012   ----------------------------------------
 .byte   VOICE , 34
 .byte   VOL , 68*song37_mvl/mxv
 .byte   PAN , c_v+14
 .byte   N05 ,Gn2 ,v100
 .byte   W06
 .byte   Gn2 ,v112
 .byte   W12
 .byte   Dn2 ,v104
 .byte   W12
 .byte   Fn2 ,v108
 .byte   W12
 .byte   Dn2 ,v096
 .byte   W06
 .byte   Gn2 ,v100
 .byte   W06
 .byte   Gn2 ,v112
 .byte   W12
 .byte   Dn2 ,v104
 .byte   W12
 .byte   Fn2 ,v108
 .byte   W12
 .byte   PATT
  .word Label_3_0143BD01
 .byte   PATT
  .word Label_3_0143BD01
 .byte   PATT
  .word Label_3_0143BD01
@ 013   ----------------------------------------
 .byte   N05 ,Dn2 ,v096
 .byte   W06
 .byte   N11 ,Gs2 ,v108
 .byte   W13
 .byte   N04 ,Ds2 ,v092
 .byte   W05
 .byte   N05 ,Gs2 ,v104
 .byte   W13
 .byte   N04 ,Ds2 ,v092
 .byte   W05
 .byte   N05 ,Gs2 ,v100
 .byte   W07
 .byte   N04 ,Ds2 ,v092
 .byte   W05
 .byte   N11 ,Gn2 ,v112
 .byte   W13
 .byte   N04 ,Dn2 ,v092
 .byte   W05
 .byte   N05 ,Gn2 ,v104
 .byte   W13
 .byte   N04 ,Dn2 ,v096
 .byte   W05
 .byte   N05 ,Gn2 ,v100
 .byte   W06
@ 014   ----------------------------------------
 .byte   W01
 .byte   N04 ,Dn2 ,v096
 .byte   W05
 .byte   N11 ,Fn2 ,v112
 .byte   W13
 .byte   N04 ,Cn2 ,v092
 .byte   W05
 .byte   N05 ,Fn2 ,v104
 .byte   W13
 .byte   N04 ,Cn2 ,v096
 .byte   W05
 .byte   N05 ,Fn2 ,v104
 .byte   W07
 .byte   N04 ,Cn2 ,v096
 .byte   W05
 .byte   N11 ,Ds2 ,v112
 .byte   W13
 .byte   N04 ,As1 ,v096
 .byte   W05
 .byte   N05 ,Ds2 ,v108
 .byte   W13
 .byte   N04 ,As1 ,v096
 .byte   W05
 .byte   N05 ,Ds2 ,v104
 .byte   W06
@ 015   ----------------------------------------
 .byte   W01
 .byte   As1 ,v096
 .byte   W06
 .byte   VOICE , 109
 .byte   VOL , 56*song37_mvl/mxv
 .byte   PAN , c_v+0
 .byte   N11 ,Gn3 ,v104
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W05
@ 016   ----------------------------------------
Label_3_0143BED3:
 .byte   W07
 .byte   N11 ,Gn3 ,v104
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N05
 .byte   W11
 .byte   PEND 
@ 017   ----------------------------------------
 .byte   W01
 .byte   N05
 .byte   W06
 .byte   N11 ,Gn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W05
 .byte   PATT
  .word Label_3_0143BED3
@ 018   ----------------------------------------
 .byte   W01
 .byte   N05 ,Fn3 ,v104
 .byte   W06
 .byte   N11 ,En3 ,v108
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   En3 ,v112
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   En3 ,v120
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W05
@ 019   ----------------------------------------
 .byte   W07
 .byte   Fn3 ,v112
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Gn3 ,v108
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W05
@ 020   ----------------------------------------
 .byte   W07
 .byte   As3 ,v104
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W05
@ 021   ----------------------------------------
 .byte   W07
 .byte   Gn3
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W12
 .byte   N11
 .byte   W18
 .byte   N05
 .byte   W11
@ 022   ----------------------------------------
 .byte   W01
 .byte   N04 ,Gn3 ,v112
 .byte   W04
 .byte   FINE

@**************** Track 5 (Midi-Chn.4) ****************@

song37_005:
@ 000   ----------------------------------------
 .byte   KEYSH , song37_key+0
 .byte   VOICE , 57
 .byte   VOL , 56*song37_mvl/mxv
 .byte   PAN , c_v-25
 .byte   W06
Label_4_0143BF5D:
 .byte   N02 ,Bn2 ,v096
 .byte   W06
 .byte   N03 ,Bn2 ,v104
 .byte   W12
 .byte   Bn2 ,v096
 .byte   W12
 .byte   An2
 .byte   W12
 .byte   An2 ,v092
 .byte   W06
 .byte   N02 ,Bn2 ,v096
 .byte   W06
 .byte   N03 ,Bn2 ,v104
 .byte   W12
 .byte   Bn2 ,v096
 .byte   W12
 .byte   Dn3
 .byte   W12
@ 001   ----------------------------------------
Label_4_0143BF7A:
 .byte   N03 ,Dn3 ,v092
 .byte   W06
 .byte   N02 ,Bn2 ,v096
 .byte   W06
 .byte   N03 ,Bn2 ,v104
 .byte   W12
 .byte   Bn2 ,v096
 .byte   W12
 .byte   An2
 .byte   W12
 .byte   An2 ,v092
 .byte   W06
 .byte   N02 ,Bn2 ,v096
 .byte   W06
 .byte   N03 ,Bn2 ,v104
 .byte   W12
 .byte   Bn2 ,v096
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   PEND 
 .byte   PATT
  .word Label_4_0143BF7A
 .byte   PATT
  .word Label_4_0143BF7A
@ 002   ----------------------------------------
 .byte   N03 ,Dn3 ,v092
 .byte   W06
 .byte   VOICE , 41
 .byte   VOL , 60*song37_mvl/mxv
 .byte   PAN , c_v+14
 .byte   N03 ,Gn3 ,v104
 .byte   W06
 .byte   N02 ,Dn3 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W06
 .byte   N03 ,Gn3 ,v104
 .byte   W06
 .byte   N02 ,Dn3 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W06
 .byte   N03 ,Gn3 ,v104
 .byte   W06
 .byte   Dn3 ,v092
 .byte   W06
 .byte   Gn3 ,v104
 .byte   W06
 .byte   N02 ,Dn3 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W06
 .byte   N03 ,Gn3 ,v104
 .byte   W06
 .byte   N02 ,Dn3 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W06
 .byte   N03 ,Gn3 ,v104
 .byte   W06
@ 003   ----------------------------------------
 .byte   Dn4 ,v092
 .byte   W06
 .byte   Cn4 ,v104
 .byte   W06
 .byte   N02 ,Gn3 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W06
 .byte   N03 ,Cn4 ,v104
 .byte   W06
 .byte   N02 ,Gn3 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W06
 .byte   N03 ,Cn4 ,v104
 .byte   W06
 .byte   Gn3 ,v092
 .byte   W06
 .byte   Cn4 ,v104
 .byte   W06
 .byte   N02 ,Gn3 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W06
 .byte   N03 ,Cn4 ,v104
 .byte   W06
 .byte   N02 ,Gn3 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W06
 .byte   N03 ,Cn4 ,v104
 .byte   W06
@ 004   ----------------------------------------
 .byte   Gn3 ,v092
 .byte   W06
 .byte   N23 ,Bn3 ,v104
 .byte   W24
 .byte   VOICE , 60
 .byte   VOL , 56*song37_mvl/mxv
 .byte   PAN , c_v-25
 .byte   N03 ,Dn3 ,v108
 .byte   W04
 .byte   Gn3 ,v096
 .byte   W04
 .byte   Bn3
 .byte   W04
 .byte   N10 ,Dn4 ,v104
 .byte   W12
 .byte   N11 ,An3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   N07 ,An3
 .byte   W06
@ 005   ----------------------------------------
Label_4_0143C04A:
 .byte   W03
 .byte   N02 ,Bn3 ,v104
 .byte   W03
 .byte   N22 ,Gn3
 .byte   W24
 .byte   N03 ,En3 ,v108
 .byte   W04
 .byte   Dn3 ,v096
 .byte   W04
 .byte   Cn3
 .byte   W04
 .byte   N11 ,En3 ,v104
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   N03 ,Dn3 ,v108
 .byte   W04
 .byte   Cn3 ,v096
 .byte   W04
 .byte   Bn2
 .byte   W04
 .byte   N11 ,An2 ,v104
 .byte   W12
 .byte   Dn3
 .byte   W06
 .byte   PEND 
@ 006   ----------------------------------------
Label_4_0143C071:
 .byte   W06
 .byte   N22 ,Bn2 ,v104
 .byte   W24
 .byte   N03 ,Dn3 ,v108
 .byte   W04
 .byte   Gn3 ,v096
 .byte   W04
 .byte   Bn3
 .byte   W04
 .byte   N11 ,Dn4 ,v104
 .byte   W12
 .byte   An3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   N07 ,An3
 .byte   W06
 .byte   PEND 
 .byte   PATT
  .word Label_4_0143C04A
@ 007   ----------------------------------------
Label_4_0143C092:
 .byte   W06
 .byte   VOL , 60*song37_mvl/mxv
 .byte   N07 ,Bn2 ,v108
 .byte   W12
 .byte   N02 ,Bn2 ,v104
 .byte   W04
 .byte   Bn2 ,v092
 .byte   W04
 .byte   N02
 .byte   W04
 .byte   N07 ,Cn3 ,v112
 .byte   W12
 .byte   N02 ,Cn3 ,v108
 .byte   W04
 .byte   Cn3 ,v096
 .byte   W04
 .byte   N02
 .byte   W04
 .byte   N05 ,Dn3 ,v116
 .byte   W09
 .byte   N01 ,Dn3 ,v100
 .byte   W03
 .byte   N02 ,Dn3 ,v112
 .byte   W04
 .byte   Dn3 ,v100
 .byte   W04
 .byte   N02
 .byte   W04
 .byte   N11 ,Bn2 ,v108
 .byte   W12
 .byte   Gs2
 .byte   W06
 .byte   PEND 
@ 008   ----------------------------------------
Label_4_0143C0C7:
 .byte   W06
 .byte   VOL , 60*song37_mvl/mxv
 .byte   N23 ,Fn2 ,v104
 .byte   W24
 .byte   N03 ,Dn3 ,v112
 .byte   W04
 .byte   Cn3 ,v100
 .byte   W04
 .byte   Bn2
 .byte   W04
 .byte   N11 ,Cn3 ,v104
 .byte   W12
 .byte   N23 ,Gn2
 .byte   W24
 .byte   N03 ,Cn3 ,v112
 .byte   W04
 .byte   Bn2 ,v096
 .byte   W04
 .byte   An2
 .byte   W04
 .byte   N11 ,Gn2 ,v104
 .byte   W06
 .byte   PEND 
@ 009   ----------------------------------------
Label_4_0143C0EC:
 .byte   W06
 .byte   VOL , 60*song37_mvl/mxv
 .byte   N23 ,Fn2 ,v104
 .byte   W24
 .byte   N03 ,An2 ,v108
 .byte   W04
 .byte   Gn2 ,v096
 .byte   W04
 .byte   Fn2
 .byte   W04
 .byte   N11 ,Gn2 ,v104
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   N03 ,As2 ,v108
 .byte   W04
 .byte   Gs2 ,v096
 .byte   W04
 .byte   Gn2
 .byte   W04
 .byte   N11 ,As2 ,v104
 .byte   W12
 .byte   Ds2
 .byte   W06
 .byte   PEND 
@ 010   ----------------------------------------
Label_4_0143C112:
 .byte   W06
 .byte   N44 ,Gn2 ,v100
 .byte   W48
 .byte   Dn3 ,v108
 .byte   W42
 .byte   PEND 
@ 011   ----------------------------------------
 .byte   W06
 .byte   GOTO
  .word Label_4_0143BF5D
@ 012   ----------------------------------------
 .byte   VOICE , 57
 .byte   VOL , 56*song37_mvl/mxv
 .byte   PAN , c_v-25
 .byte   N02 ,Bn2 ,v096
 .byte   W06
 .byte   N03 ,Bn2 ,v104
 .byte   W12
 .byte   Bn2 ,v096
 .byte   W12
 .byte   An2
 .byte   W12
 .byte   An2 ,v092
 .byte   W06
 .byte   N02 ,Bn2 ,v096
 .byte   W06
 .byte   N03 ,Bn2 ,v104
 .byte   W12
 .byte   Bn2 ,v096
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   PATT
  .word Label_4_0143BF7A
 .byte   PATT
  .word Label_4_0143BF7A
 .byte   PATT
  .word Label_4_0143BF7A
@ 013   ----------------------------------------
 .byte   N03 ,Dn3 ,v092
 .byte   W06
 .byte   VOICE , 41
 .byte   VOL , 60*song37_mvl/mxv
 .byte   PAN , c_v+14
 .byte   N03 ,Gn3 ,v104
 .byte   W07
 .byte   N02 ,Dn3 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W05
 .byte   N03 ,Gn3 ,v104
 .byte   W07
 .byte   N02 ,Dn3 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W05
 .byte   N03 ,Gn3 ,v104
 .byte   W07
 .byte   Dn3 ,v092
 .byte   W05
 .byte   Gn3 ,v104
 .byte   W07
 .byte   N02 ,Dn3 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W05
 .byte   N03 ,Gn3 ,v104
 .byte   W07
 .byte   N02 ,Dn3 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W05
 .byte   N03 ,Gn3 ,v104
 .byte   W06
@ 014   ----------------------------------------
 .byte   W01
 .byte   Dn4 ,v092
 .byte   W05
 .byte   Cn4 ,v104
 .byte   W07
 .byte   N02 ,Gn3 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W05
 .byte   N03 ,Cn4 ,v104
 .byte   W07
 .byte   N02 ,Gn3 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W05
 .byte   N03 ,Cn4 ,v104
 .byte   W07
 .byte   Gn3 ,v092
 .byte   W05
 .byte   Cn4 ,v104
 .byte   W07
 .byte   N02 ,Gn3 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W05
 .byte   N03 ,Cn4 ,v104
 .byte   W07
 .byte   N02 ,Gn3 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W05
 .byte   N03 ,Cn4 ,v104
 .byte   W06
@ 015   ----------------------------------------
 .byte   W01
 .byte   Gn3 ,v092
 .byte   W05
 .byte   N23 ,Bn3 ,v104
 .byte   W24
 .byte   VOICE , 60
 .byte   VOL , 56*song37_mvl/mxv
 .byte   PAN , c_v-25
 .byte   N03 ,Dn3 ,v108
 .byte   W04
 .byte   Gn3 ,v096
 .byte   W04
 .byte   Bn3
 .byte   W04
 .byte   N10 ,Dn4 ,v104
 .byte   W12
 .byte   N11 ,An3
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   N07 ,An3
 .byte   W06
 .byte   PATT
  .word Label_4_0143C04A
 .byte   PATT
  .word Label_4_0143C071
 .byte   PATT
  .word Label_4_0143C04A
 .byte   PATT
  .word Label_4_0143C092
 .byte   PATT
  .word Label_4_0143C0C7
 .byte   PATT
  .word Label_4_0143C0EC
 .byte   PATT
  .word Label_4_0143C112
@ 016   ----------------------------------------
 .byte   W05
 .byte   FINE

@**************** Track 6 (Midi-Chn.5) ****************@

song37_006:
@ 000   ----------------------------------------
 .byte   KEYSH , song37_key+0
 .byte   VOICE , 41
 .byte   VOL , 60*song37_mvl/mxv
 .byte   PAN , c_v+0
 .byte   W06
Label_5_0143C229:
 .byte   N03 ,Gn2 ,v108
 .byte   W04
 .byte   Bn2 ,v096
 .byte   W04
 .byte   Dn3
 .byte   W04
 .byte   N11 ,Gn3 ,v104
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   N07 ,Cn3
 .byte   W09
 .byte   N02 ,En3
 .byte   W03
 .byte   N44 ,Dn3
 .byte   W42
@ 001   ----------------------------------------
Label_5_0143C241:
 .byte   W06
 .byte   N03 ,Gn2 ,v108
 .byte   W04
 .byte   Bn2 ,v096
 .byte   W04
 .byte   Dn3
 .byte   W04
 .byte   N11 ,Gn3 ,v104
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   N03 ,An3
 .byte   W04
 .byte   Fn3 ,v096
 .byte   W04
 .byte   An3
 .byte   W04
 .byte   N44 ,Gn3 ,v108
 .byte   W42
 .byte   PEND 
@ 002   ----------------------------------------
Label_5_0143C25E:
 .byte   W06
 .byte   N03 ,Gn2 ,v108
 .byte   W04
 .byte   Bn2 ,v096
 .byte   W04
 .byte   Dn3
 .byte   W04
 .byte   N11 ,Gn3 ,v104
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   N07 ,Cn3
 .byte   W09
 .byte   N02 ,En3
 .byte   W03
 .byte   N44 ,Dn3
 .byte   W42
 .byte   PEND 
 .byte   PATT
  .word Label_5_0143C241
@ 003   ----------------------------------------
 .byte   W06
 .byte   VOICE , 41
 .byte   VOL , 62*song37_mvl/mxv
 .byte   PAN , c_v+14
 .byte   N03 ,Dn4 ,v104
 .byte   W06
 .byte   N02 ,Gn3 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W06
 .byte   N03 ,Dn4 ,v104
 .byte   W06
 .byte   N02 ,Gn3 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W06
 .byte   N03 ,Dn4 ,v104
 .byte   W06
 .byte   Gn3 ,v092
 .byte   W06
 .byte   Dn4 ,v104
 .byte   W06
 .byte   N02 ,Gn3 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W06
 .byte   N03 ,Dn4 ,v104
 .byte   W06
 .byte   N02 ,Gn3 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W06
 .byte   N03 ,Dn4 ,v104
 .byte   W06
@ 004   ----------------------------------------
 .byte   Gn4 ,v092
 .byte   W06
 .byte   Gn4 ,v104
 .byte   W06
 .byte   N02 ,Cn4 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W06
 .byte   N03 ,Gn4 ,v104
 .byte   W06
 .byte   N02 ,Cn4 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W06
 .byte   N03 ,Gn4 ,v104
 .byte   W06
 .byte   Cn4 ,v092
 .byte   W06
 .byte   Gn4 ,v104
 .byte   W06
 .byte   N02 ,Cn4 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W06
 .byte   N03 ,Gn4 ,v104
 .byte   W06
 .byte   N02 ,Cn4 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W06
 .byte   N03 ,Gn4 ,v104
 .byte   W06
@ 005   ----------------------------------------
 .byte   Cn4 ,v092
 .byte   W06
 .byte   VOICE , 41
 .byte   VOL , 60*song37_mvl/mxv
 .byte   PAN , c_v+0
 .byte   N23 ,Gn4 ,v100
 .byte   W24
 .byte   N03 ,Gn3 ,v108
 .byte   W04
 .byte   An3 ,v096
 .byte   W04
 .byte   Bn3
 .byte   W04
 .byte   N11 ,Cn4 ,v104
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   N07 ,Fn4
 .byte   W06
@ 006   ----------------------------------------
Label_5_0143C31D:
 .byte   W03
 .byte   N02 ,Gn4 ,v104
 .byte   W03
 .byte   N23 ,Dn4
 .byte   W24
 .byte   N03 ,Cn4 ,v108
 .byte   W04
 .byte   Bn3 ,v096
 .byte   W04
 .byte   An3
 .byte   W04
 .byte   N11 ,Cn4 ,v104
 .byte   W12
 .byte   Bn3
 .byte   W12
 .byte   N03 ,Bn3 ,v108
 .byte   W04
 .byte   An3 ,v096
 .byte   W04
 .byte   Gn3
 .byte   W04
 .byte   N11 ,Dn3 ,v104
 .byte   W12
 .byte   An3
 .byte   W06
 .byte   PEND 
@ 007   ----------------------------------------
Label_5_0143C344:
 .byte   W06
 .byte   N23 ,Gn3 ,v104
 .byte   W24
 .byte   N03 ,Gn3 ,v108
 .byte   W04
 .byte   An3 ,v096
 .byte   W04
 .byte   Bn3
 .byte   W04
 .byte   N11 ,Cn4 ,v104
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   N07 ,Fn4
 .byte   W06
 .byte   PEND 
 .byte   PATT
  .word Label_5_0143C31D
@ 008   ----------------------------------------
 .byte   W06
 .byte   N06 ,Gs3 ,v108
 .byte   W07
 .byte   PAN , c_v+14
 .byte   N04 ,Gs3 ,v040
 .byte   W05
 .byte   PAN , c_v+0
 .byte   N02 ,Gs3 ,v104
 .byte   W04
 .byte   Gs3 ,v092
 .byte   W04
 .byte   N02
 .byte   W04
 .byte   N06 ,An3 ,v112
 .byte   W07
 .byte   PAN , c_v-14
 .byte   N04 ,An3 ,v040
 .byte   W05
 .byte   PAN , c_v+0
 .byte   N02 ,An3 ,v108
 .byte   W04
 .byte   An3 ,v096
 .byte   W04
 .byte   N02
 .byte   W04
 .byte   N04 ,Bn3 ,v116
 .byte   W05
 .byte   PAN , c_v+14
 .byte   N02 ,Bn3 ,v044
 .byte   W04
 .byte   PAN , c_v+0
 .byte   N01 ,Bn3 ,v100
 .byte   W03
 .byte   N02 ,Bn3 ,v112
 .byte   W04
 .byte   Bn3 ,v100
 .byte   W04
 .byte   N02
 .byte   W04
 .byte   N11 ,En4
 .byte   W12
 .byte   Bn3 ,v108
 .byte   W06
@ 009   ----------------------------------------
Label_5_0143C3AF:
 .byte   W06
 .byte   N03 ,Dn4 ,v112
 .byte   W04
 .byte   Cn4 ,v100
 .byte   W04
 .byte   Bn3
 .byte   W04
 .byte   N11 ,Cn4 ,v104
 .byte   W12
 .byte   Cn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   N03 ,Cn4 ,v112
 .byte   W04
 .byte   Bn3 ,v096
 .byte   W04
 .byte   An3
 .byte   W04
 .byte   N11 ,Bn3 ,v104
 .byte   W12
 .byte   Bn2
 .byte   W12
 .byte   Bn3
 .byte   W06
 .byte   PEND 
@ 010   ----------------------------------------
Label_5_0143C3D3:
 .byte   W06
 .byte   N03 ,An3 ,v108
 .byte   W04
 .byte   Gn3 ,v096
 .byte   W04
 .byte   Fn3
 .byte   W04
 .byte   N11 ,Gn3 ,v104
 .byte   W12
 .byte   Dn3
 .byte   W12
 .byte   Cn4
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   N03 ,Gs3 ,v108
 .byte   W04
 .byte   Gn3 ,v096
 .byte   W04
 .byte   Fn3
 .byte   W04
 .byte   N10 ,Gn3 ,v104
 .byte   W12
 .byte   Cn3
 .byte   W06
 .byte   PEND 
@ 011   ----------------------------------------
Label_5_0143C3F7:
 .byte   W06
 .byte   N44 ,Dn3 ,v096
 .byte   W48
 .byte   Gn3 ,v104
 .byte   W42
 .byte   PEND 
@ 012   ----------------------------------------
 .byte   W06
 .byte   GOTO
  .word Label_5_0143C229
@ 013   ----------------------------------------
 .byte   N03 ,Gn2 ,v108
 .byte   W04
 .byte   Bn2 ,v096
 .byte   W04
 .byte   Dn3
 .byte   W04
 .byte   N11 ,Gn3 ,v104
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   N07 ,Cn3
 .byte   W09
 .byte   N02 ,En3
 .byte   W03
 .byte   N44 ,Dn3
 .byte   W42
 .byte   PATT
  .word Label_5_0143C241
 .byte   PATT
  .word Label_5_0143C25E
 .byte   PATT
  .word Label_5_0143C241
@ 014   ----------------------------------------
 .byte   W06
 .byte   VOICE , 41
 .byte   VOL , 62*song37_mvl/mxv
 .byte   PAN , c_v+14
 .byte   N03 ,Dn4 ,v104
 .byte   W07
 .byte   N02 ,Gn3 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W05
 .byte   N03 ,Dn4 ,v104
 .byte   W07
 .byte   N02 ,Gn3 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W05
 .byte   N03 ,Dn4 ,v104
 .byte   W07
 .byte   Gn3 ,v092
 .byte   W05
 .byte   Dn4 ,v104
 .byte   W07
 .byte   N02 ,Gn3 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W05
 .byte   N03 ,Dn4 ,v104
 .byte   W07
 .byte   N02 ,Gn3 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W05
 .byte   N03 ,Dn4 ,v104
 .byte   W06
@ 015   ----------------------------------------
 .byte   W01
 .byte   Gn4 ,v092
 .byte   W05
 .byte   Gn4 ,v104
 .byte   W07
 .byte   N02 ,Cn4 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W05
 .byte   N03 ,Gn4 ,v104
 .byte   W07
 .byte   N02 ,Cn4 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W05
 .byte   N03 ,Gn4 ,v104
 .byte   W07
 .byte   Cn4 ,v092
 .byte   W05
 .byte   Gn4 ,v104
 .byte   W07
 .byte   N02 ,Cn4 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W05
 .byte   N03 ,Gn4 ,v104
 .byte   W07
 .byte   N02 ,Cn4 ,v092
 .byte   W03
 .byte   N02
 .byte   W03
 .byte   N04
 .byte   W05
 .byte   N03 ,Gn4 ,v104
 .byte   W06
@ 016   ----------------------------------------
 .byte   W01
 .byte   Cn4 ,v092
 .byte   W05
 .byte   VOICE , 41
 .byte   VOL , 60*song37_mvl/mxv
 .byte   PAN , c_v+0
 .byte   N23 ,Gn4 ,v100
 .byte   W24
 .byte   N03 ,Gn3 ,v108
 .byte   W04
 .byte   An3 ,v096
 .byte   W04
 .byte   Bn3
 .byte   W04
 .byte   N11 ,Cn4 ,v104
 .byte   W12
 .byte   Dn4
 .byte   W12
 .byte   Gn4
 .byte   W12
 .byte   An4
 .byte   W12
 .byte   N07 ,Fn4
 .byte   W06
 .byte   PATT
  .word Label_5_0143C31D
 .byte   PATT
  .word Label_5_0143C344
 .byte   PATT
  .word Label_5_0143C31D
@ 017   ----------------------------------------
 .byte   W06
 .byte   N06 ,Gs3 ,v108
 .byte   W07
 .byte   PAN , c_v+14
 .byte   N04 ,Gs3 ,v040
 .byte   W05
 .byte   PAN , c_v+0
 .byte   N02 ,Gs3 ,v104
 .byte   W04
 .byte   Gs3 ,v092
 .byte   W04
 .byte   N02
 .byte   W04
 .byte   N06 ,An3 ,v112
 .byte   W07
 .byte   PAN , c_v-14
 .byte   N04 ,An3 ,v040
 .byte   W05
 .byte   PAN , c_v+0
 .byte   N02 ,An3 ,v108
 .byte   W04
 .byte   An3 ,v096
 .byte   W04
 .byte   N02
 .byte   W04
 .byte   N04 ,Bn3 ,v116
 .byte   W06
 .byte   PAN , c_v+14
 .byte   N02 ,Bn3 ,v044
 .byte   W03
 .byte   PAN , c_v+0
 .byte   N01 ,Bn3 ,v100
 .byte   W03
 .byte   N02 ,Bn3 ,v112
 .byte   W04
 .byte   Bn3 ,v100
 .byte   W04
 .byte   N02
 .byte   W04
 .byte   N11 ,En4
 .byte   W12
 .byte   Bn3 ,v108
 .byte   W06
 .byte   PATT
  .word Label_5_0143C3AF
 .byte   PATT
  .word Label_5_0143C3D3
 .byte   PATT
  .word Label_5_0143C3F7
@ 018   ----------------------------------------
 .byte   W05
 .byte   FINE

@**************** Track 7 (Midi-Chn.6) ****************@

song37_007:
@ 000   ----------------------------------------
 .byte   VOL , 75*song37_mvl/mxv
 .byte   KEYSH , song37_key+0
 .byte   VOICE , 47
 .byte   W06
Label_6_0143C543:
 .byte   N05 ,Cn0 ,v104
 .byte   W06
 .byte   N01 ,Cn0 ,v096
 .byte   W02
 .byte   Cn0 ,v084
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N05 ,Cn0 ,v092
 .byte   W06
 .byte   Cn0 ,v096
 .byte   W06
 .byte   N01 ,Cn0 ,v092
 .byte   W02
 .byte   Cn0 ,v076
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N05 ,Cn0 ,v104
 .byte   W06
 .byte   Cn0 ,v096
 .byte   W06
 .byte   N01 ,Cs0 ,v072
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N05 ,Cn0 ,v104
 .byte   W06
 .byte   N01 ,Cn0 ,v096
 .byte   W02
 .byte   Cn0 ,v084
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N05 ,Cn0 ,v092
 .byte   W06
 .byte   Cn0 ,v096
 .byte   W06
 .byte   N01 ,Cn0 ,v092
 .byte   W02
 .byte   Cn0 ,v076
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N05 ,Cn0 ,v104
 .byte   W06
 .byte   Cn0 ,v096
 .byte   W06
@ 001   ----------------------------------------
Label_6_0143C593:
 .byte   N01 ,Cs0 ,v072
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N05 ,Cn0 ,v104
 .byte   W06
 .byte   N01 ,Cn0 ,v096
 .byte   W02
 .byte   Cn0 ,v084
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N05 ,Cn0 ,v092
 .byte   W06
 .byte   Cn0 ,v096
 .byte   W06
 .byte   N01 ,Cn0 ,v092
 .byte   W02
 .byte   Cn0 ,v076
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N05 ,Cn0 ,v104
 .byte   W06
 .byte   Cn0 ,v096
 .byte   W06
 .byte   N01 ,Cs0 ,v072
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N05 ,Cn0 ,v104
 .byte   W06
 .byte   N01 ,Cn0 ,v096
 .byte   W02
 .byte   Cn0 ,v084
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N05 ,Cn0 ,v092
 .byte   W06
 .byte   Cn0 ,v096
 .byte   W06
 .byte   N01 ,Cn0 ,v092
 .byte   W02
 .byte   Cn0 ,v076
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N05 ,Cn0 ,v104
 .byte   W06
 .byte   Cn0 ,v096
 .byte   W06
 .byte   PEND 
 .byte   PATT
  .word Label_6_0143C593
 .byte   PATT
  .word Label_6_0143C593
 .byte   PATT
  .word Label_6_0143C593
 .byte   PATT
  .word Label_6_0143C593
@ 002   ----------------------------------------
Label_6_0143C600:
 .byte   N01 ,Cs0 ,v072
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N05 ,Cn0 ,v104
 .byte   W06
 .byte   N02 ,Cn0 ,v092
 .byte   W03
 .byte   Cn0 ,v068
 .byte   W03
 .byte   N05 ,Cn0 ,v100
 .byte   W06
 .byte   N02 ,Cn0 ,v092
 .byte   W03
 .byte   Cn0 ,v064
 .byte   W03
 .byte   N05 ,Cn0 ,v104
 .byte   W06
 .byte   N02 ,Cn0 ,v088
 .byte   W03
 .byte   Cn0 ,v068
 .byte   W03
 .byte   N05 ,Cn0 ,v104
 .byte   W06
 .byte   N01 ,Cs0 ,v064
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   Cs0 ,v072
 .byte   W02
 .byte   N05 ,Cn0 ,v104
 .byte   W06
 .byte   N02 ,Cn0 ,v092
 .byte   W03
 .byte   Cn0 ,v068
 .byte   W03
 .byte   N05 ,Cn0 ,v100
 .byte   W06
 .byte   N02 ,Cn0 ,v092
 .byte   W03
 .byte   Cn0 ,v064
 .byte   W03
 .byte   N05 ,Cn0 ,v104
 .byte   W06
 .byte   N02 ,Cn0 ,v088
 .byte   W03
 .byte   Cn0 ,v068
 .byte   W03
 .byte   N05 ,Cn0 ,v104
 .byte   W06
 .byte   PEND 
@ 003   ----------------------------------------
Label_6_0143C65C:
 .byte   N01 ,Cs0 ,v064
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   Cs0 ,v072
 .byte   W02
 .byte   N05 ,Cn0 ,v104
 .byte   W06
 .byte   N02 ,Cn0 ,v092
 .byte   W03
 .byte   Cn0 ,v068
 .byte   W03
 .byte   N05 ,Cn0 ,v100
 .byte   W06
 .byte   N02 ,Cn0 ,v092
 .byte   W03
 .byte   Cn0 ,v064
 .byte   W03
 .byte   N05 ,Cn0 ,v104
 .byte   W06
 .byte   N02 ,Cn0 ,v088
 .byte   W03
 .byte   Cn0 ,v068
 .byte   W03
 .byte   N05 ,Cn0 ,v104
 .byte   W06
 .byte   N01 ,Cs0 ,v064
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   Cs0 ,v072
 .byte   W02
 .byte   N05 ,Cn0 ,v104
 .byte   W06
 .byte   N02 ,Cn0 ,v092
 .byte   W03
 .byte   Cn0 ,v068
 .byte   W03
 .byte   N05 ,Cn0 ,v100
 .byte   W06
 .byte   N02 ,Cn0 ,v092
 .byte   W03
 .byte   Cn0 ,v064
 .byte   W03
 .byte   N05 ,Cn0 ,v104
 .byte   W06
 .byte   N02 ,Cn0 ,v088
 .byte   W03
 .byte   Cn0 ,v068
 .byte   W03
 .byte   N05 ,Cn0 ,v104
 .byte   W06
 .byte   PEND 
 .byte   PATT
  .word Label_6_0143C65C
 .byte   PATT
  .word Label_6_0143C65C
 .byte   PATT
  .word Label_6_0143C65C
 .byte   PATT
  .word Label_6_0143C65C
 .byte   PATT
  .word Label_6_0143C65C
@ 004   ----------------------------------------
Label_6_0143C6D2:
 .byte   N01 ,Cs0 ,v064
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   Cs0 ,v072
 .byte   W02
 .byte   N05 ,Cn0 ,v104
 .byte   W06
 .byte   N02 ,Cn0 ,v092
 .byte   W03
 .byte   Cn0 ,v068
 .byte   W03
 .byte   N05 ,Cn0 ,v100
 .byte   W06
 .byte   N02 ,Cn0 ,v092
 .byte   W03
 .byte   Cn0 ,v064
 .byte   W03
 .byte   N05 ,Cn0 ,v104
 .byte   W06
 .byte   N02 ,Cn0 ,v088
 .byte   W03
 .byte   Cn0 ,v068
 .byte   W03
 .byte   N05 ,Cn0 ,v104
 .byte   W06
 .byte   N01 ,Cs0 ,v064
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   Cs0 ,v072
 .byte   W02
 .byte   N05 ,Cn0 ,v116
 .byte   W06
 .byte   N02 ,Cn0 ,v092
 .byte   W03
 .byte   Cn0 ,v068
 .byte   W03
 .byte   N05 ,Cn0 ,v116
 .byte   W06
 .byte   N02 ,Cn0 ,v092
 .byte   W03
 .byte   Cn0 ,v064
 .byte   W03
 .byte   N05 ,Cn0 ,v096
 .byte   W06
 .byte   N02 ,Cn0 ,v108
 .byte   W03
 .byte   Cn0 ,v068
 .byte   W03
 .byte   N05 ,Cn0 ,v104
 .byte   W06
 .byte   PEND 
@ 005   ----------------------------------------
 .byte   N01 ,Cs0 ,v064
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   Cs0 ,v072
 .byte   W02
 .byte   GOTO
  .word Label_6_0143C543
@ 006   ----------------------------------------
 .byte   N05 ,Cn0 ,v104
 .byte   W06
 .byte   N01 ,Cn0 ,v096
 .byte   W02
 .byte   Cn0 ,v084
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N05 ,Cn0 ,v092
 .byte   W06
 .byte   Cn0 ,v096
 .byte   W06
 .byte   N01 ,Cn0 ,v092
 .byte   W02
 .byte   Cn0 ,v076
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N05 ,Cn0 ,v104
 .byte   W06
 .byte   Cn0 ,v096
 .byte   W06
 .byte   N01 ,Cs0 ,v072
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N05 ,Cn0 ,v104
 .byte   W06
 .byte   N01 ,Cn0 ,v096
 .byte   W02
 .byte   Cn0 ,v084
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N05 ,Cn0 ,v092
 .byte   W06
 .byte   Cn0 ,v096
 .byte   W06
 .byte   N01 ,Cn0 ,v092
 .byte   W02
 .byte   Cn0 ,v076
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   N05 ,Cn0 ,v104
 .byte   W06
 .byte   Cn0 ,v096
 .byte   W06
 .byte   PATT
  .word Label_6_0143C593
 .byte   PATT
  .word Label_6_0143C593
 .byte   PATT
  .word Label_6_0143C593
 .byte   PATT
  .word Label_6_0143C593
 .byte   PATT
  .word Label_6_0143C593
 .byte   PATT
  .word Label_6_0143C600
 .byte   PATT
  .word Label_6_0143C65C
 .byte   PATT
  .word Label_6_0143C65C
 .byte   PATT
  .word Label_6_0143C65C
 .byte   PATT
  .word Label_6_0143C65C
 .byte   PATT
  .word Label_6_0143C65C
 .byte   PATT
  .word Label_6_0143C65C
 .byte   PATT
  .word Label_6_0143C6D2
@ 007   ----------------------------------------
 .byte   N01 ,Cs0 ,v064
 .byte   W02
 .byte   N01
 .byte   W02
 .byte   Cs0 ,v072
 .byte   W01
 .byte   FINE

@******************************************************@
	.align	2

March:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song37_pri	@ Priority
	.byte	song37_rev	@ Reverb.
    
	.word	song37_grp
    
	.word	song37_001
	.word	song37_002
	.word	song37_003
	.word	song37_004
	.word	song37_005
	.word	song37_006
	.word	song37_007

	.end
