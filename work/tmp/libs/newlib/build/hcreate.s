	.text
	.file	"hcreate.bc"
	.globl	$hcreate
	.type	$hcreate,@function
$hcreate:                               //  @hcreate
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	ori x28, x0, $htab & 0xfff
	slli x28, x28, 20
	lui x3, $htab >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x3, x28
	j $hcreate_r
$func_end0:
	.size	$hcreate, ($func_end0)-($hcreate)
	.cfi_endproc

	.globl	$hdestroy
	.type	$hdestroy,@function
$hdestroy:                              //  @hdestroy
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi2:
	.cfi_def_cfa 2, 0
$cfi3:
	.cfi_val_offset 2, 0
	ori x28, x0, $htab & 0xfff
	slli x28, x28, 20
	lui x3, $htab >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x3, x28
	j $hdestroy_r
$func_end1:
	.size	$hdestroy, ($func_end1)-($hdestroy)
	.cfi_endproc

	.globl	$hsearch
	.type	$hsearch,@function
$hsearch:                               //  @hsearch
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi4:
	.cfi_def_cfa 2, 0
$cfi5:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi6:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi7:
	.cfi_offset 1, -4
	lw x1, 4 ( x10 )
	nop
	sw x1, 8 ( x2 )
	lw x1, 0 ( x10 )
	nop
	sw x1, 4 ( x2 )
	ori x28, x0, $htab & 0xfff
	slli x28, x28, 20
	lui x1, $htab >> 12 & 0xfffff
	srli x28, x28, 20
	addi x10, x2, 4
	addi x12, x2, 12
	or x13, x1, x28
	call $hsearch_r
	lw x10, 12 ( x2 )
	lw x1, 20 ( x2 )
$cfi8:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi9:
	.cfi_adjust_cfa_offset -24
$cfi10:
	.cfi_def_cfa 2, 0
	ret
$func_end2:
	.size	$hsearch, ($func_end2)-($hsearch)
	.cfi_endproc

	.address_space	0	
	.type	$htab,@object           //  @htab
	.local	$htab
	.comm	$htab,8,4

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
