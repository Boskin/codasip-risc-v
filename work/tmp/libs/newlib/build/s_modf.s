	.text
	.file	"s_modf.bc"
	.globl	$modf
	.type	$modf,@function
$modf:                                  //  @modf
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
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
	srli x1, x11, 20
	andi x3, x1, 2047
	addi x1, x3, -1023
	addi x4, x0, 19
	bgt x1, x4, LBB0_6
LBB0_1:                                 //  %if.then
	addi x4, x0, 1022
	bgtu x3, x4, LBB0_3
LBB0_2:                                 //  %do.body4
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x1, x1, x11
	sw x1, 4 ( x12 )
	sw x0, 0 ( x12 )
	jalr x0, LBB0_10 ( x0 )
LBB0_3:                                 //  %if.else
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	lui x3, 1048575 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	srl x1, x3, x1
	and x3, x11, x1
	or x3, x10, x3
	bgtu x3, x0, LBB0_5
LBB0_4:                                 //  %if.then16
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x10, 0 ( x12 )
	sw x11, 4 ( x12 )
	and x11, x1, x11
	add x10, x0, x0
	jalr x0, LBB0_10 ( x0 )
LBB0_5:                                 //  %do.body34
	not x1, x1
	and x13, x1, x11
	sw x13, 4 ( x12 )
	sw x0, 0 ( x12 )
	add x12, x0, x0
	jalr x0, LBB0_9 ( x0 )
LBB0_6:                                 //  %if.else45
	slti x1, x1, 52
	beqz x1, LBB0_4
LBB0_7:                                 //  %if.else66
	addi x1, x3, -1043
	not x3, x0
	srl x1, x3, x1
	and x3, x10, x1
	beqz x3, LBB0_4
LBB0_8:                                 //  %do.body91
	not x1, x1
	and x1, x1, x10
	sw x1, 0 ( x12 )
	sw x11, 4 ( x12 )
	add x12, x0, x1
	add x13, x0, x11
LBB0_9:                                 //  %cleanup
	call $__subdf3
LBB0_10:                                //  %cleanup
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
	.size	$modf, ($func_end0)-($modf)
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
