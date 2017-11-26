	.text
	.file	"s_lround.bc"
	.globl	$lround
	.type	$lround,@function
$lround:                                //  @lround
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
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	srli x1, x11, 20
	lui x3, 1048575 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	andi x4, x1, 2047
	srai x1, x11, 31
	and x3, x3, x11
	lui x7, 1048576>>12 &0xfffff
	addi x5, x4, -1023
	addi x9, x0, 19
	or x3, x7, x3
	ori x1, x1, 1
	bgt x5, x9, LBB0_4
LBB0_1:                                 //  %if.then
	addi x7, x0, 1022
	bgtu x4, x7, LBB0_10
LBB0_2:                                 //  %if.then7
	not x3, x0
	ble x3, x5, LBB0_13
LBB0_3:
	add x1, x0, x0
	jalr x0, LBB0_13 ( x0 )
LBB0_4:                                 //  %if.else14
	addi x7, x0, 30
	bgtu x5, x7, LBB0_9
LBB0_5:                                 //  %if.else23
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x7, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x9, x0, 1075
	addi x5, x4, -1043
	or x7, x7, x28
	srl x7, x7, x5
	sub x9, x9, x4
	addi x11, x0, 32
	add x4, x10, x7
	bgeu x9, x11, LBB0_7
LBB0_6:
	srl x9, x4, x9
	jalr x0, LBB0_8 ( x0 )
LBB0_7:                                 //  %if.else23
	add x9, x0, x0
LBB0_8:                                 //  %if.else23
	sltu x4, x4, x7
	andi x4, x4, 1
	add x3, x3, x4
	sll x3, x3, x5
	or x10, x9, x3
	jalr x0, LBB0_11 ( x0 )
LBB0_9:                                 //  %if.else39
	call $__fixdfsi
	jalr x0, LBB0_12 ( x0 )
LBB0_10:                                //  %if.else10
	lui x7, 524288>>12 
	addi x9, x0, 1043
	srl x5, x7, x5
	sub x4, x9, x4
	add x3, x3, x5
	srl x10, x3, x4
LBB0_11:                                //  %if.end41
	add x11, x0, x1
	call $__mulsi3
LBB0_12:                                //  %cleanup
	add x1, x0, x10
LBB0_13:                                //  %cleanup
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
	.size	$lround, ($func_end0)-($lround)
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
