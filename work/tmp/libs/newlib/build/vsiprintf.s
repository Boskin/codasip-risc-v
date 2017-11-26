	.text
	.file	"vsiprintf.bc"
	.globl	$vsiprintf
	.type	$vsiprintf,@function
$vsiprintf:                             //  @vsiprintf
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
	add x1, x0, x12
	add x3, x0, x11
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x4, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lw x4, 0 ( x4 )
	lui x5, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x5, x28
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	addi x11, x2, 8
	lui x7, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x9, x0, 520
	or x7, x7, x28
	sh x9, 12 ( x11 )
	sw x10, 8 ( x2 )
	sw x10, 16 ( x11 )
	sw x5, 8 ( x11 )
	sw x5, 28 ( x2 )
	sh x7, 14 ( x11 )
	add x10, x0, x4
	add x12, x0, x3
	add x13, x0, x1
	call $_svfiprintf_r
	lw x1, 8 ( x2 )
	nop
	sb x0, 0 ( x1 )
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
	.size	$vsiprintf, ($func_end0)-($vsiprintf)
	.cfi_endproc

	.globl	$_vsiprintf_r
	.type	$_vsiprintf_r,@function
$_vsiprintf_r:                          //  @_vsiprintf_r
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
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	addi x1, x2, 8
	lui x4, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x5, x0, 520
	or x4, x4, x28
	sh x5, 12 ( x1 )
	sw x11, 8 ( x2 )
	sw x11, 16 ( x1 )
	sw x3, 8 ( x1 )
	sw x3, 28 ( x2 )
	sh x4, 14 ( x1 )
	add x11, x0, x1
	call $_svfiprintf_r
	lw x1, 8 ( x2 )
	nop
	sb x0, 0 ( x1 )
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
	.size	$_vsiprintf_r, ($func_end1)-($_vsiprintf_r)
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
