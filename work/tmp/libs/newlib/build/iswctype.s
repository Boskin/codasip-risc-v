	.text
	.file	"iswctype.bc"
	.globl	$iswctype
	.type	$iswctype,@function
$iswctype:                              //  @iswctype
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -16
$cfi2:
	.cfi_adjust_cfa_offset 16
	sw x1, 12 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 4 ( x2 )                 //  4-byte Folded Spill
	add x8, x0, x10
	addi x10, x11, -1
	addi x1, x0, 11
	bgeu x1, x10, LBB0_2
LBB0_1:
	add x10, x0, x0
	jalr x0, LBB0_15 ( x0 )
LBB0_2:                                 //  %entry
	addi x11, x0, 4
	call $__mulsi3
	lui x1, JTI0_0 >> 12 & 0xfffff
	ori x28, x0, JTI0_0 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB0_3:                                 //  %sw.bb
	add x10, x0, x8
	call $iswalnum
	jalr x0, LBB0_15 ( x0 )
LBB0_4:                                 //  %sw.bb1
	add x10, x0, x8
	call $iswalpha
	jalr x0, LBB0_15 ( x0 )
LBB0_5:                                 //  %sw.bb3
	add x10, x0, x8
	call $iswblank
	jalr x0, LBB0_15 ( x0 )
LBB0_6:                                 //  %sw.bb5
	add x10, x0, x8
	call $iswcntrl
	jalr x0, LBB0_15 ( x0 )
LBB0_7:                                 //  %sw.bb7
	add x10, x0, x8
	call $iswdigit
	jalr x0, LBB0_15 ( x0 )
LBB0_8:                                 //  %sw.bb9
	add x10, x0, x8
	call $iswgraph
	jalr x0, LBB0_15 ( x0 )
LBB0_9:                                 //  %sw.bb11
	add x10, x0, x8
	call $iswlower
	jalr x0, LBB0_15 ( x0 )
LBB0_10:                                //  %sw.bb13
	add x10, x0, x8
	call $iswprint
	jalr x0, LBB0_15 ( x0 )
LBB0_11:                                //  %sw.bb15
	add x10, x0, x8
	call $iswpunct
	jalr x0, LBB0_15 ( x0 )
LBB0_12:                                //  %sw.bb17
	add x10, x0, x8
	call $iswspace
	jalr x0, LBB0_15 ( x0 )
LBB0_13:                                //  %sw.bb19
	add x10, x0, x8
	call $iswupper
	jalr x0, LBB0_15 ( x0 )
LBB0_14:                                //  %sw.bb21
	add x10, x0, x8
	call $iswxdigit
LBB0_15:                                //  %return
	lw x8, 4 ( x2 )                 //  4-byte Folded Reload
	lw x1, 12 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 16
$cfi5:
	.cfi_adjust_cfa_offset -16
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$iswctype, ($func_end0)-($iswctype)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	LBB0_3
	.long	LBB0_4
	.long	LBB0_5
	.long	LBB0_6
	.long	LBB0_7
	.long	LBB0_8
	.long	LBB0_9
	.long	LBB0_10
	.long	LBB0_11
	.long	LBB0_12
	.long	LBB0_13
	.long	LBB0_14


  .address_space 0
  .section .codasip_regmap, "g"
  .short 32
  .short 0
  .asciz "rf_xpr"
  .short 0
  .short 1
  .asciz "rf_xpr"
  .short 1
  .short 2
  .asciz "rf_xpr"
  .short 2
  .short 3
  .asciz "rf_xpr"
  .short 3
  .short 4
  .asciz "rf_xpr"
  .short 4
  .short 5
  .asciz "rf_xpr"
  .short 5
  .short 6
  .asciz "rf_xpr"
  .short 6
  .short 7
  .asciz "rf_xpr"
  .short 7
  .short 8
  .asciz "rf_xpr"
  .short 8
  .short 9
  .asciz "rf_xpr"
  .short 9
  .short 10
  .asciz "rf_xpr"
  .short 10
  .short 11
  .asciz "rf_xpr"
  .short 11
  .short 12
  .asciz "rf_xpr"
  .short 12
  .short 13
  .asciz "rf_xpr"
  .short 13
  .short 14
  .asciz "rf_xpr"
  .short 14
  .short 15
  .asciz "rf_xpr"
  .short 15
  .short 16
  .asciz "rf_xpr"
  .short 16
  .short 17
  .asciz "rf_xpr"
  .short 17
  .short 18
  .asciz "rf_xpr"
  .short 18
  .short 19
  .asciz "rf_xpr"
  .short 19
  .short 20
  .asciz "rf_xpr"
  .short 20
  .short 21
  .asciz "rf_xpr"
  .short 21
  .short 22
  .asciz "rf_xpr"
  .short 22
  .short 23
  .asciz "rf_xpr"
  .short 23
  .short 24
  .asciz "rf_xpr"
  .short 24
  .short 25
  .asciz "rf_xpr"
  .short 25
  .short 26
  .asciz "rf_xpr"
  .short 26
  .short 27
  .asciz "rf_xpr"
  .short 27
  .short 28
  .asciz "rf_xpr"
  .short 28
  .short 29
  .asciz "rf_xpr"
  .short 29
  .short 30
  .asciz "rf_xpr"
  .short 30
  .short 31
  .asciz "rf_xpr"
  .short 31
  .short 2
  .ident "      6.8.2-1.win.7.EVALUATION\n      Licensee: C51_657_727\n      Project: RISC_V5.ia\n      Date: 2017-11-25 23:37:30\n      Copyright (C) 2017 Codasip Ltd."
