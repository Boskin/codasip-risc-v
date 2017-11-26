	.text
	.file	"sf_llround.bc"
	.globl	$llroundf
	.type	$llroundf,@function
$llroundf:                              //  @llroundf
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
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
	ori x28, x0, 8388607 & 0xfff
	srli x1, x10, 23
	slli x28, x28, 20
	andi x3, x1, 255
	lui x4, 8388607 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x1, x3, -127
	addi x5, x0, 62
	or x4, x4, x28
	bgt x1, x5, LBB0_8
LBB0_1:                                 //  %if.then
	srai x5, x10, 31
	addi x7, x0, 126
	ori x8, x5, 1
	bgtu x3, x7, LBB0_6
LBB0_2:                                 //  %if.then5
	not x3, x0
	add x10, x0, x0
	add x11, x0, x10
	bgt x3, x1, LBB0_4
LBB0_3:                                 //  %if.then5
	srai x11, x8, 31
LBB0_4:                                 //  %if.then5
	bgt x3, x1, LBB0_11
LBB0_5:                                 //  %if.then5
	add x10, x0, x8
	jalr x0, LBB0_11 ( x0 )
LBB0_6:                                 //  %if.else
	and x4, x4, x10
	lui x5, 8388608>>12 &0xfffff
	slti x7, x1, 23
	or x10, x5, x4
	bgtu x7, x0, LBB0_9
LBB0_7:                                 //  %if.then10
	addi x12, x3, -150
	add x11, x0, x0
	call $__ashldi3
	jalr x0, LBB0_10 ( x0 )
LBB0_8:                                 //  %if.else19
	call $__fixsfdi
	jalr x0, LBB0_11 ( x0 )
LBB0_9:                                 //  %if.else13
	lui x4, 4194304>>12 &0xfffff
	addi x5, x0, 150
	srl x1, x4, x1
	sub x3, x5, x3
	add x1, x10, x1
	srl x10, x1, x3
	add x11, x0, x0
LBB0_10:                                //  %if.end21
	srai x13, x8, 31
	add x12, x0, x8
	call $__muldi3
LBB0_11:                                //  %cleanup
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
	.size	$llroundf, ($func_end0)-($llroundf)
	.cfi_endproc


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
