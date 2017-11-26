	.text
	.file	"s_fpclassify.bc"
	.globl	$__fpclassifyd
	.type	$__fpclassifyd,@function
$__fpclassifyd:                         //  @__fpclassifyd
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	add x3, x0, x10
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x4, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x7, x3, x11
	or x5, x4, x28
	addi x10, x0, 2
	beqz x7, LBB0_8
LBB0_1:                                 //  %entry
	xor x5, x5, x11
	seqz x5, x5
	seqz x3, x3
	and x5, x5, x3
	bgtu x5, x0, LBB0_8
LBB0_2:                                 //  %if.else
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x5, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x7, x5, x28
	ori x28, x0, -1048576 & 0xfff
	slli x28, x28, 20
	lui x5, -1048576 >> 12 & 0xfffff
	srli x28, x28, 20
	and x7, x7, x11
	or x9, x5, x28
	add x7, x9, x7
	lui x9, 2145386496>>12 &0xfffff
	bgeu x7, x9, LBB0_4
LBB0_3:
	addi x10, x0, 4
	ret
LBB0_4:                                 //  %if.else16
	lui x7, 1048576>>12 &0xfffff
	addi x10, x0, 3
	bgtu x7, x11, LBB0_8
LBB0_5:                                 //  %lor.lhs.false20
	bgez x11, LBB0_7
LBB0_6:                                 //  %lor.lhs.false20
	lui x7, -2146435072 >> 12 & 0xfffff
	ori x28, x0, -2146435072 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x7, x7, x28
	bgtu x7, x11, LBB0_8
LBB0_7:                                 //  %if.else25
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	ori x28, x0, -1048576 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x11
	or x5, x5, x28
	xor x4, x5, x4
	seqz x4, x4
	and x3, x4, x3
	andi x10, x3, 1
LBB0_8:                                 //  %cleanup
	ret
$func_end0:
	.size	$__fpclassifyd, ($func_end0)-($__fpclassifyd)
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
