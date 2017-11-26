	.text
	.file	"__exp10.bc"
	.globl	$__exp10
	.type	$__exp10,@function
$__exp10:                               //  @__exp10
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11, 10, 11, 10, 11
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
	addi x1, x0, 4
	bgeu x1, x10, LBB0_3
LBB0_1:                                 //  %if.else
	andi x1, x10, 1
	bgtu x1, x0, LBB0_4
LBB0_2:                                 //  %if.else2
	srli x10, x10, 1
	call $__exp10
	add x12, x0, x10
	add x13, x0, x11
	call $__muldf3
	lw x1, 4 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 8
$cfi5:
	.cfi_adjust_cfa_offset -8
$cfi6:
	.cfi_def_cfa 2, 0
	ret
LBB0_3:                                 //  %if.then
	ori x28, x0, $__exp10.powtab+4 & 0xfff
	slli x28, x28, 20
	lui x1, $__exp10.powtab+4 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $__exp10.powtab & 0xfff
	slli x28, x28, 20
	lui x3, $__exp10.powtab >> 12 & 0xfffff
	srli x28, x28, 20
	slli x4, x10, 3
	or x3, x3, x28
	add x1, x1, x4
	add x3, x3, x4
	lw x10, 0 ( x3 )
	lw x11, 0 ( x1 )
	lw x1, 4 ( x2 )
$cfi7:
	.cfi_same_value 1
	addi x2, x2, 8
$cfi8:
	.cfi_adjust_cfa_offset -8
$cfi9:
	.cfi_def_cfa 2, 0
	ret
LBB0_4:                                 //  %if.then1
	addi x10, x10, -1
	call $__exp10
	add x12, x0, x0
	lui x13, 1076101120>>12 &0xfffff
	call $__muldf3
	lw x1, 4 ( x2 )
$cfi10:
	.cfi_same_value 1
	addi x2, x2, 8
$cfi11:
	.cfi_adjust_cfa_offset -8
$cfi12:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__exp10, ($func_end0)-($__exp10)
	.cfi_endproc

	.address_space	0	
	.type	$__exp10.powtab,@object //  @__exp10.powtab
	.section	.rodata,"a",@progbits
	.p2align	3
$__exp10.powtab:
	.quad	4607182418800017408     //  double 1
	.quad	4621819117588971520     //  double 10
	.quad	4636737291354636288     //  double 100
	.quad	4652007308841189376     //  double 1000
	.quad	4666723172467343360     //  double 1.0E+4
	.size	$__exp10.powtab, 40


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
