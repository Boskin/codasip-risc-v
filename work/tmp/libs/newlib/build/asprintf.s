	.text
	.file	"asprintf.bc"
	.globl	$_asprintf_r
	.type	$_asprintf_r,@function
$_asprintf_r:                           //  @_asprintf_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -120
$cfi2:
	.cfi_adjust_cfa_offset 120
	sw x1, 116 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x11, x2, 4
	addi x3, x0, 648
	or x1, x1, x28
	addi x13, x2, 132
	sh x3, 12 ( x11 )
	sw x0, 4 ( x2 )
	sw x0, 16 ( x11 )
	sw x0, 8 ( x11 )
	sw x0, 24 ( x2 )
	sh x1, 14 ( x11 )
	sw x13, 108 ( x2 )
	lw x10, 120 ( x2 )
	lw x12, 128 ( x2 )
	nop
	call $_svfprintf_r
	bgt x0, x10, LBB0_2
LBB0_1:                                 //  %if.then
	lw x1, 4 ( x2 )
	lw x3, 124 ( x2 )
	sb x0, 0 ( x1 )
	lw x1, 20 ( x2 )
	nop
	sw x1, 0 ( x3 )
LBB0_2:                                 //  %if.end
	lw x1, 116 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 120
$cfi5:
	.cfi_adjust_cfa_offset -120
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$_asprintf_r, ($func_end0)-($_asprintf_r)
	.cfi_endproc

	.globl	$asprintf
	.type	$asprintf,@function
$asprintf:                              //  @asprintf
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -120
$cfi9:
	.cfi_adjust_cfa_offset 120
	sw x1, 116 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	addi x11, x2, 4
	addi x3, x0, 648
	addi x13, x2, 128
	lui x4, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	sh x3, 12 ( x11 )
	sw x0, 4 ( x2 )
	sw x0, 16 ( x11 )
	sw x0, 8 ( x11 )
	sw x0, 24 ( x2 )
	sh x1, 14 ( x11 )
	sw x13, 108 ( x2 )
	lw x10, 0 ( x4 )
	lw x12, 124 ( x2 )
	nop
	call $_svfprintf_r
	bgt x0, x10, LBB1_2
LBB1_1:                                 //  %if.then
	lw x1, 4 ( x2 )
	lw x3, 120 ( x2 )
	sb x0, 0 ( x1 )
	lw x1, 20 ( x2 )
	nop
	sw x1, 0 ( x3 )
LBB1_2:                                 //  %if.end
	lw x1, 116 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 120
$cfi12:
	.cfi_adjust_cfa_offset -120
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$asprintf, ($func_end1)-($asprintf)
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
