	.include "MPlayDef.s"

	.equ	sfx_grp, voicegroup000
	.equ	sfx_pri, 0
	.equ	sfx_rev, 0
	.equ	sfx_mvl, 127
	.equ	sfx_key, 0
	.equ	sfx_tbs, 1
	.equ	sfx_exg, 0
	.equ	sfx_cmp, 1

	.section .rodata
	.global	sfx
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

sfx_1:
	.byte		VOL   , 127*sfx_mvl/mxv
	.byte	KEYSH , sfx_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 60*sfx_tbs/2
	.byte		VOICE , 0
	.byte		N24   , Cn3 , v064
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

sfx:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	sfx_pri	@ Priority
	.byte	sfx_rev	@ Reverb.

	.word	sfx_grp

	.word	sfx_1

	.end
