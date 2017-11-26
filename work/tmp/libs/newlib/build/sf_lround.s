	.text
	.file	"sf_lround.bc"
	.globl	$lroundf
	.type	$lroundf,@function
$lroundf:                               //  @lroundf
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -8
$cfi2:
	.cfi_adjust_cfa_offset 8
	sw x1, 4 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	ori x28, x0, 8388607 & 0xfff
	srli x1, x10, 23
	slli x28, x28, 20
	andi x3, x1, 255
	lui x1, 8388607 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x3, -127
	addi x7, x0, 30
	or x5, x1, x28
	bgt x4, x7, LBB0_6
LBB0_1:                                 //  %if.then
	srai x1, x10, 31
	addi x7, x0, 126
	ori x1, x1, 1
	bgtu x3, x7, LBB0_4
LBB0_2:                                 //  %if.then5
	not x3, x0
	ble x3, x4, LBB0_10
LBB0_3:
	add x1, x0, x0
	jalr x0, LBB0_10 ( x0 )
LBB0_4:                                 //  %if.else
	and x5, x5, x10
	lui x7, 8388608>>12 &0xfffff
	slti x9, x4, 23
	or x5, x7, x5
	bgtu x9, x0, LBB0_7
LBB0_5:                                 //  %if.then9
	addi x3, x3, -150
	sll x10, x5, x3
	jalr x0, LBB0_8 ( x0 )
LBB0_6:                                 //  %if.else16
	call $__fixsfsi
	jalr x0, LBB0_9 ( x0 )
LBB0_7:                                 //  %if.else11
	lui x7, 4194304>>12 &0xfffff
	addi x9, x0, 150
	srl x4, x7, x4
	sub x3, x9, x3
	add x4, x5, x4
	srl x10, x4, x3
LBB0_8:                                 //  %if.end17
	add x11, x0, x1
	call $__mulsi3
LBB0_9:                                 //  %cleanup
	add x1, x0, x10
LBB0_10:                                //  %cleanup
	add x10, x0, x1
	lw x1, 4 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 8
$cfi5:
	.cfi_adjust_cfa_offset -8
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$lroundf, ($func_end0)-($lroundf)
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
