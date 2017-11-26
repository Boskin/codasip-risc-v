	.text
	.file	"sf_frexp.bc"
	.globl	$frexpf
	.type	$frexpf,@function
$frexpf:                                //  @frexpf
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -16
$cfi2:
	.cfi_adjust_cfa_offset 16
	sw x1, 12 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 4 ( x2 )                 //  4-byte Folded Spill
	add x8, x0, x11
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 2139095038 & 0xfff
	slli x28, x28, 20
	and x1, x1, x10
	lui x3, 2139095038 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x1, -1
	or x3, x3, x28
	sw x0, 0 ( x8 )
	bgtu x4, x3, LBB0_5
LBB0_1:                                 //  %if.end
	ori x28, x0, 8388607 & 0xfff
	slli x28, x28, 20
	lui x3, 8388607 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	bgeu x3, x1, LBB0_3
LBB0_2:
	add x4, x0, x0
	jalr x0, LBB0_4 ( x0 )
LBB0_3:                                 //  %if.then3
	addi x1, x0, -25
	sw x1, 0 ( x8 )
	lui x11, 1275068416>>12 &0xfffff
	call $__mulsf3
	addi x4, x0, -25
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	or x1, x1, x28
	and x1, x1, x10
LBB0_4:                                 //  %if.end11
	ori x28, x0, -2139095041 & 0xfff
	slli x28, x28, 20
	srli x1, x1, 23
	lui x3, -2139095041 >> 12 & 0xfffff
	srli x28, x28, 20
	add x1, x4, x1
	or x3, x3, x28
	addi x1, x1, -126
	and x3, x3, x10
	lui x4, 1056964608>>12 &0xfffff
	sw x1, 0 ( x8 )
	or x10, x4, x3
LBB0_5:                                 //  %cleanup
	lw x8, 4 ( x2 )                 //  4-byte Folded Reload
	lw x1, 12 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 16
$cfi5:
	.cfi_adjust_cfa_offset -16
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$frexpf, ($func_end0)-($frexpf)
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
