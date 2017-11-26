	.text
	.file	"srand48.bc"
	.globl	$_srand48_r
	.type	$_srand48_r,@function
$_srand48_r:                            //  @_srand48_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	ori x28, x0, 13070 & 0xfff
	slli x28, x28, 20
	lui x3, 13070 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, 58989 & 0xfff
	slli x28, x28, 20
	lui x4, 58989 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	ori x28, x0, 57068 & 0xfff
	slli x28, x28, 20
	lui x5, 57068 >> 12 & 0xfffff
	srli x28, x28, 20
	srli x7, x11, 16
	or x5, x5, x28
	addi x9, x0, 5
	addi x12, x0, 11
	sh x3, 172 ( x10 )
	sh x11, 174 ( x10 )
	sh x7, 176 ( x10 )
	sh x4, 178 ( x10 )
	sh x5, 180 ( x10 )
	sh x9, 182 ( x10 )
	sh x12, 184 ( x10 )
	ret
$func_end0:
	.size	$_srand48_r, ($func_end0)-($_srand48_r)
	.cfi_endproc

	.globl	$srand48
	.type	$srand48,@function
$srand48:                               //  @srand48
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi2:
	.cfi_def_cfa 2, 0
$cfi3:
	.cfi_val_offset 2, 0
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x3, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, 13070 & 0xfff
	slli x28, x28, 20
	lui x4, 13070 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	ori x28, x0, 58989 & 0xfff
	slli x28, x28, 20
	lui x5, 58989 >> 12 & 0xfffff
	srli x28, x28, 20
	lw x3, 0 ( x3 )
	or x5, x5, x28
	ori x28, x0, 57068 & 0xfff
	slli x28, x28, 20
	lui x7, 57068 >> 12 & 0xfffff
	srli x28, x28, 20
	srli x9, x10, 16
	or x7, x7, x28
	addi x11, x0, 5
	addi x12, x0, 11
	sh x4, 172 ( x3 )
	sh x10, 174 ( x3 )
	sh x9, 176 ( x3 )
	sh x5, 178 ( x3 )
	sh x7, 180 ( x3 )
	sh x11, 182 ( x3 )
	sh x12, 184 ( x3 )
	ret
$func_end1:
	.size	$srand48, ($func_end1)-($srand48)
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
