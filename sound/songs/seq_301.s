@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_301_grp, bank_027
	.equ	seq_301_pri, 100
	.equ	seq_301_rev, 0
	.equ	seq_301_mvl, 127
	.equ	seq_301_key, 0

	.section .rodata
	.global	seq_301
	.align	2

@*********************** Track 01 ***********************@

seq_301_0:
	.byte	KEYSH , seq_301_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 60
	.byte		VOL   , 70*seq_301_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N02   , Cn5 , v100
	.byte	W02
	.byte	FINE

@******************************************************@

	.align	2

seq_301:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_301_pri	@ Priority
	.byte	seq_301_rev	@ Reverb

	.word	seq_301_grp

	.word	seq_301_0

	.end