	.text
	.file	"rand.bc"
	.globl	$srand
	.type	$srand,@function
$srand:                                 //  @srand
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x3, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	lw x3, 0 ( x3 )
	nop
	sw x10, 164 ( x3 )
	sw x0, 168 ( x3 )
	ret
$func_end0:
	.size	$srand, ($func_end0)-($srand)
	.cfi_endproc

	.globl	$rand
	.type	$rand,@function
$rand:                                  //  @rand
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi2:
	.cfi_def_cfa 2, 0
$cfi3:
	.cfi_val_offset 2, 0
	addi x2, x2, -16
$cfi4:
	.cfi_adjust_cfa_offset 16
	sw x1, 12 ( x2 )
$cfi5:
	.cfi_offset 1, -4
	sw x8, 4 ( x2 )                 //  4-byte Folded Spill
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x8, 0 ( x1 )
	ori x28, x0, 1284865837 & 0xfff
	slli x28, x28, 20
	lui x1, 1284865837 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1481765933 & 0xfff
	lw x10, 164 ( x8 )
	lw x11, 168 ( x8 )
	slli x28, x28, 20
	lui x1, 1481765933 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__muldi3
	addi x1, x10, 1
	add x4, x0, x0
	slti x3, x0, 1
	add x5, x0, x3
	bgtu x10, x1, LBB1_2
LBB1_1:                                 //  %entry
	add x5, x0, x4
LBB1_2:                                 //  %entry
	beq x1, x4, LBB1_4
LBB1_3:                                 //  %entry
	add x3, x0, x5
LBB1_4:                                 //  %entry
	sw x1, 164 ( x8 )
	add x1, x3, x11
	sw x1, 168 ( x8 )
	lui x3, 2147483647 >> 12 & 0xfffff
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	and x10, x3, x1
	lw x8, 4 ( x2 )                 //  4-byte Folded Reload
	lw x1, 12 ( x2 )
$cfi6:
	.cfi_same_value 1
	addi x2, x2, 16
$cfi7:
	.cfi_adjust_cfa_offset -16
$cfi8:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$rand, ($func_end1)-($rand)
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
