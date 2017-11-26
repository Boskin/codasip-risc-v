	.text
	.file	"w_tgamma.bc"
	.globl	$tgamma
	.type	$tgamma,@function
$tgamma:                                //  @tgamma
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
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
	addi x12, x2, 16
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	sw x11, 4 ( x2 )                //  4-byte Folded Spill
	call $__ieee754_gamma_r
	add x3, x0, x10
	add x8, x0, x11
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	add x10, x0, x0
	or x11, x1, x28
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	add x12, x0, x3
	add x13, x0, x8
	call $__subdf3
	add x3, x0, x10
	add x4, x0, x0
	lw x1, 16 ( x2 )
	nop
	bgt x4, x1, LBB0_2
LBB0_1:                                 //  %entry
	add x11, x0, x8
LBB0_2:                                 //  %entry
	bgt x4, x1, LBB0_4
LBB0_3:                                 //  %entry
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
LBB0_4:                                 //  %entry
	lui x1, $__fdlib_version >> 12 & 0xfffff
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	xori x1, x1, -1
	beqz x1, LBB0_13
LBB0_5:                                 //  %if.end3
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	add x10, x0, x3
	add x8, x0, x11
	call $finite
	beqz x10, LBB0_7
LBB0_6:
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	add x11, x0, x8
	jalr x0, LBB0_13 ( x0 )
LBB0_7:                                 //  %land.lhs.true
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 4 ( x2 )                //  4-byte Folded Reload
	nop
	call $finite
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	add x11, x0, x8
	beqz x10, LBB0_13
LBB0_8:                                 //  %if.then7
	add x12, x0, x0
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x8, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x13, x0, x12
	call $__ledf2
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $floor
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bgt x1, x0, LBB0_11
LBB0_9:                                 //  %if.then7
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	call $__nedf2
	bgtu x10, x0, LBB0_11
LBB0_10:                                //  %if.then12
	addi x14, x0, 41
	jalr x0, LBB0_12 ( x0 )
LBB0_11:                                //  %if.else
	addi x14, x0, 40
LBB0_12:                                //  %cleanup
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x10
	add x13, x0, x8
	call $__kernel_standard
	add x3, x0, x10
LBB0_13:                                //  %cleanup
	add x10, x0, x3
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
	.size	$tgamma, ($func_end0)-($tgamma)
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
