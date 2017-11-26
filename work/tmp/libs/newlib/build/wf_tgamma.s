	.text
	.file	"wf_tgamma.bc"
	.globl	$tgammaf
	.type	$tgammaf,@function
$tgammaf:                               //  @tgammaf
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi2:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	addi x11, x2, 16
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	call $__ieee754_gammaf_r
	add x8, x0, x10
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	add x11, x0, x8
	call $__subsf3
	add x4, x0, x10
	lw x1, 16 ( x2 )
	add x3, x0, x0
	bgt x3, x1, LBB0_2
LBB0_1:                                 //  %entry
	add x4, x0, x8
LBB0_2:                                 //  %entry
	lui x1, $__fdlib_version >> 12 & 0xfffff
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	xori x1, x1, -1
	beqz x1, LBB0_11
LBB0_3:                                 //  %if.end3
	add x8, x0, x4
	add x10, x0, x4
	call $finitef
	beqz x10, LBB0_5
LBB0_4:
	add x4, x0, x8
	jalr x0, LBB0_11 ( x0 )
LBB0_5:                                 //  %land.lhs.true
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $finitef
	add x4, x0, x8
	beqz x10, LBB0_11
LBB0_6:                                 //  %if.then7
	add x11, x0, x0
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	call $__lesf2
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	call $floorf
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	call $__extendsfdf2
	add x1, x0, x8
	add x8, x0, x10
	add x3, x0, x11
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bgt x4, x0, LBB0_9
LBB0_7:                                 //  %if.then7
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x1
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
	call $__nesf2
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_9
LBB0_8:                                 //  %if.then12
	addi x14, x0, 141
	jalr x0, LBB0_10 ( x0 )
LBB0_9:                                 //  %if.else
	addi x14, x0, 140
LBB0_10:                                //  %cleanup
	add x10, x0, x8
	add x11, x0, x3
	add x12, x0, x8
	add x13, x0, x3
	call $__kernel_standard
	call $__truncdfsf2
	add x4, x0, x10
LBB0_11:                                //  %cleanup
	add x10, x0, x4
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi5:
	.cfi_adjust_cfa_offset -32
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$tgammaf, ($func_end0)-($tgammaf)
	.cfi_endproc

	.address_space	0	

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
