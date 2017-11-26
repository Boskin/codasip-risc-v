	.text
	.file	"sf_round.bc"
	.globl	$roundf
	.type	$roundf,@function
$roundf:                                //  @roundf
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi2:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	srli x1, x8, 23
	andi x1, x1, 255
	addi x4, x1, -127
	addi x3, x0, 22
	bgt x4, x3, LBB0_7
LBB0_1:                                 //  %if.then
	addi x3, x0, 126
	bgtu x1, x3, LBB0_5
LBB0_2:                                 //  %if.then2
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	not x3, x0
	and x8, x1, x8
	bne x4, x3, LBB0_4
LBB0_3:
	lui x1, 1065353216>>12 &0xfffff
	or x8, x1, x8
LBB0_4:                                 //  %cleanup25
	add x10, x0, x8
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi5:
	.cfi_adjust_cfa_offset -24
$cfi6:
	.cfi_def_cfa 2, 0
	ret
LBB0_5:                                 //  %if.else
	ori x28, x0, 8388607 & 0xfff
	slli x28, x28, 20
	lui x1, 8388607 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	srl x1, x1, x4
	and x3, x8, x1
	beqz x3, LBB0_4
LBB0_6:                                 //  %cleanup.thread
	lui x3, 4194304>>12 &0xfffff
	srl x3, x3, x4
	add x3, x8, x3
	not x1, x1
	and x8, x1, x3
	jalr x0, LBB0_4 ( x0 )
LBB0_7:                                 //  %if.else14
	add x10, x0, x8
	add x11, x0, x8
	sw x4, 8 ( x2 )                 //  4-byte Folded Spill
	call $__addsf3
	addi x1, x0, 128
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	beq x3, x1, LBB0_9
LBB0_8:                                 //  %if.else14
	add x10, x0, x8
LBB0_9:                                 //  %if.else14
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi7:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi8:
	.cfi_adjust_cfa_offset -24
$cfi9:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$roundf, ($func_end0)-($roundf)
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
