@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_654_grp, bank_026
	.equ	seq_654_pri, 127
	.equ	seq_654_rev, 0
	.equ	seq_654_mvl, 127
	.equ	seq_654_key, 0

	.section .rodata
	.global	seq_654
	.align	2

@*********************** Track 01 ***********************@

seq_654_0:
	.byte	KEYSH , seq_654_key+0
	.byte	TEMPO , 200/2
	.byte		VOICE , 17
	.byte		VOL   , 127*seq_654_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 10
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N07   , Dn2 , v120
	.byte		N08   , Gs2 
	.byte	W05
	.byte		BEND  , c_v+22
	.byte	W01
	.byte		        c_v+21
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		N42   , En2 , v020
	.byte	W01
	.byte		        Gn2 , v032
	.byte	W18
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		VOL   , 125*seq_654_mvl/mxv
	.byte		BEND  , c_v+7
	.byte	W01
	.byte		        c_v+13
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		VOL   , 123*seq_654_mvl/mxv
	.byte		BEND  , c_v+25
	.byte	W01
	.byte		VOL   , 122*seq_654_mvl/mxv
	.byte	W01
	.byte		        120*seq_654_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 117*seq_654_mvl/mxv
	.byte	W01
	.byte		        110*seq_654_mvl/mxv
	.byte	W01
	.byte		        106*seq_654_mvl/mxv
	.byte	W01
	.byte		        102*seq_654_mvl/mxv
	.byte	W01
	.byte		        97*seq_654_mvl/mxv
	.byte	W01
	.byte		        92*seq_654_mvl/mxv
	.byte	W01
	.byte		        86*seq_654_mvl/mxv
	.byte	W01
	.byte		        79*seq_654_mvl/mxv
	.byte	W01
	.byte		        73*seq_654_mvl/mxv
	.byte	W01
	.byte		        65*seq_654_mvl/mxv
	.byte	W01
	.byte		        58*seq_654_mvl/mxv
	.byte	W01
	.byte		        49*seq_654_mvl/mxv
	.byte	W01
	.byte		        41*seq_654_mvl/mxv
	.byte	W01
	.byte		        31*seq_654_mvl/mxv
	.byte	W01
	.byte		        22*seq_654_mvl/mxv
	.byte	W01
	.byte		        12*seq_654_mvl/mxv
	.byte	W01
	.byte		MOD   , 60
	.byte		VOL   , 1*seq_654_mvl/mxv
	.byte	W01
	.byte	FINE

@******************************************************@

	.align	2

seq_654:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_654_pri	@ Priority
	.byte	seq_654_rev	@ Reverb

	.word	seq_654_grp

	.word	seq_654_0

	.end