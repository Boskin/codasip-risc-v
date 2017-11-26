	.text
	.file	"seed48.bc"
	.globl	$_seed48_r
	.type	$_seed48_r,@function
$_seed48_r:                             //  @_seed48_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	ori x28, x0, $_seed48_r.sseed & 0xfff
	slli x28, x28, 20
	lui x3, $_seed48_r.sseed >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $_seed48_r.sseed+2 & 0xfff
	slli x28, x28, 20
	lui x4, $_seed48_r.sseed+2 >> 12 & 0xfffff
	srli x28, x28, 20
	lh x5, 172 ( x10 )
	or x4, x4, x28
	ori x28, x0, $_seed48_r.sseed+4 & 0xfff
	lh x7, 174 ( x10 )
	lh x9, 176 ( x10 )
	slli x28, x28, 20
	lui x12, $_seed48_r.sseed+4 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x12, x28
	sh x5, 0 ( x3 )
	sh x7, 0 ( x4 )
	sh x9, 0 ( x12 )
	lh x4, 0 ( x11 )
	ori x28, x0, 58989 & 0xfff
	slli x28, x28, 20
	lui x5, 58989 >> 12 & 0xfffff
	sh x4, 172 ( x10 )
	lh x4, 2 ( x11 )
	srli x28, x28, 20
	or x5, x5, x28
	ori x28, x0, 57068 & 0xfff
	sh x4, 174 ( x10 )
	lh x4, 4 ( x11 )
	slli x28, x28, 20
	lui x7, 57068 >> 12 & 0xfffff
	srli x28, x28, 20
	or x7, x7, x28
	addi x9, x0, 5
	addi x11, x0, 11
	sh x4, 176 ( x10 )
	sh x5, 178 ( x10 )
	sh x7, 180 ( x10 )
	sh x9, 182 ( x10 )
	sh x11, 184 ( x10 )
	add x10, x0, x3
	ret
$func_end0:
	.size	$_seed48_r, ($func_end0)-($_seed48_r)
	.cfi_endproc

	.globl	$seed48
	.type	$seed48,@function
$seed48:                                //  @seed48
	.cfi_startproc
  .codasip_retval_regs 10
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
	ori x28, x0, $_seed48_r.sseed & 0xfff
	slli x28, x28, 20
	lw x4, 0 ( x3 )
	lui x3, $_seed48_r.sseed >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $_seed48_r.sseed+2 & 0xfff
	slli x28, x28, 20
	lui x5, $_seed48_r.sseed+2 >> 12 & 0xfffff
	srli x28, x28, 20
	lh x7, 172 ( x4 )
	or x5, x5, x28
	ori x28, x0, $_seed48_r.sseed+4 & 0xfff
	lh x9, 174 ( x4 )
	lh x11, 176 ( x4 )
	slli x28, x28, 20
	lui x12, $_seed48_r.sseed+4 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x12, x28
	sh x7, 0 ( x3 )
	sh x9, 0 ( x5 )
	sh x11, 0 ( x12 )
	lh x5, 0 ( x10 )
	ori x28, x0, 58989 & 0xfff
	slli x28, x28, 20
	lui x7, 58989 >> 12 & 0xfffff
	sh x5, 172 ( x4 )
	lh x5, 2 ( x10 )
	srli x28, x28, 20
	or x7, x7, x28
	ori x28, x0, 57068 & 0xfff
	sh x5, 174 ( x4 )
	lh x5, 4 ( x10 )
	slli x28, x28, 20
	lui x9, 57068 >> 12 & 0xfffff
	srli x28, x28, 20
	or x9, x9, x28
	addi x10, x0, 5
	addi x11, x0, 11
	sh x5, 176 ( x4 )
	sh x7, 178 ( x4 )
	sh x9, 180 ( x4 )
	sh x10, 182 ( x4 )
	sh x11, 184 ( x4 )
	add x10, x0, x3
	ret
$func_end1:
	.size	$seed48, ($func_end1)-($seed48)
	.cfi_endproc

	.address_space	0	
	.type	$_seed48_r.sseed,@object //  @_seed48_r.sseed
	.local	$_seed48_r.sseed
	.comm	$_seed48_r.sseed,6,2
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
