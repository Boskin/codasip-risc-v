	.text
	.file	"lcong48.bc"
	.globl	$_lcong48_r
	.type	$_lcong48_r,@function
$_lcong48_r:                            //  @_lcong48_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	lh x3, 0 ( x11 )
	nop
	sh x3, 172 ( x10 )
	lh x3, 2 ( x11 )
	nop
	sh x3, 174 ( x10 )
	lh x3, 4 ( x11 )
	nop
	sh x3, 176 ( x10 )
	lh x3, 6 ( x11 )
	nop
	sh x3, 178 ( x10 )
	lh x3, 8 ( x11 )
	nop
	sh x3, 180 ( x10 )
	lh x3, 10 ( x11 )
	nop
	sh x3, 182 ( x10 )
	lh x3, 12 ( x11 )
	nop
	sh x3, 184 ( x10 )
	ret
$func_end0:
	.size	$_lcong48_r, ($func_end0)-($_lcong48_r)
	.cfi_endproc

	.globl	$lcong48
	.type	$lcong48,@function
$lcong48:                               //  @lcong48
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
	lw x3, 0 ( x3 )
	lh x4, 0 ( x10 )
	nop
	sh x4, 172 ( x3 )
	lh x4, 2 ( x10 )
	nop
	sh x4, 174 ( x3 )
	lh x4, 4 ( x10 )
	nop
	sh x4, 176 ( x3 )
	lh x4, 6 ( x10 )
	nop
	sh x4, 178 ( x3 )
	lh x4, 8 ( x10 )
	nop
	sh x4, 180 ( x3 )
	lh x4, 10 ( x10 )
	nop
	sh x4, 182 ( x3 )
	lh x4, 12 ( x10 )
	nop
	sh x4, 184 ( x3 )
	ret
$func_end1:
	.size	$lcong48, ($func_end1)-($lcong48)
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
