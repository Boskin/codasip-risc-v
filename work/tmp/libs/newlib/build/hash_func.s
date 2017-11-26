	.text
	.file	"hash_func.bc"
	.type	$hash4,@function
$hash4:                                 //  @hash4
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
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
	bgtu x11, x0, LBB0_3
LBB0_1:
	add x4, x0, x0
LBB0_2:                                 //  %if.end
	add x10, x0, x4
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
LBB0_3:                                 //  %if.then
	andi x1, x11, 7
	addi x3, x11, 7
	addi x10, x1, -1
	addi x1, x0, 6
	add x4, x0, x0
	srli x3, x3, 3
	bgtu x10, x1, LBB0_5
LBB0_4:                                 //  %if.then
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	addi x11, x0, 4
	call $__mulsi3
	add x3, x0, x0
	lui x1, JTI0_0 >> 12 & 0xfffff
	ori x28, x0, JTI0_0 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB0_5:                                 //  %do.body
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	addi x11, x0, 33
	add x10, x0, x4
	call $__mulsi3
	lbu x1, 0 ( x8 )
	nop
	add x3, x10, x1
	addi x8, x8, 1
LBB0_6:                                 //  %sw.bb3
	addi x11, x0, 33
	add x10, x0, x3
	call $__mulsi3
	lbu x1, 0 ( x8 )
	nop
	add x3, x10, x1
	addi x8, x8, 1
LBB0_7:                                 //  %sw.bb9
	addi x11, x0, 33
	add x10, x0, x3
	call $__mulsi3
	lbu x1, 0 ( x8 )
	nop
	add x3, x10, x1
	addi x8, x8, 1
LBB0_8:                                 //  %sw.bb15
	addi x11, x0, 33
	add x10, x0, x3
	call $__mulsi3
	lbu x1, 0 ( x8 )
	nop
	add x3, x10, x1
	addi x8, x8, 1
LBB0_9:                                 //  %sw.bb21
	addi x11, x0, 33
	add x10, x0, x3
	call $__mulsi3
	lbu x1, 0 ( x8 )
	nop
	add x3, x10, x1
	addi x8, x8, 1
LBB0_10:                                //  %sw.bb27
	addi x11, x0, 33
	add x10, x0, x3
	call $__mulsi3
	lbu x1, 0 ( x8 )
	nop
	add x3, x10, x1
	addi x8, x8, 1
LBB0_11:                                //  %sw.bb33
	addi x11, x0, 33
	add x10, x0, x3
	call $__mulsi3
	lbu x1, 0 ( x8 )
	nop
	add x3, x10, x1
	addi x8, x8, 1
LBB0_12:                                //  %sw.bb39
	addi x11, x0, 33
	add x10, x0, x3
	call $__mulsi3
	lbu x1, 0 ( x8 )
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	addi x3, x3, -1
	add x4, x10, x1
	beqz x3, LBB0_2
LBB0_13:
	addi x8, x8, 1
	jalr x0, LBB0_5 ( x0 )
$func_end0:
	.size	$hash4, ($func_end0)-($hash4)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	LBB0_12
	.long	LBB0_11
	.long	LBB0_10
	.long	LBB0_9
	.long	LBB0_8
	.long	LBB0_7
	.long	LBB0_6

	.address_space	0	
	.type	$__default_hash,@object //  @__default_hash
	.data
	.globl	$__default_hash
	.p2align	2
$__default_hash:
	.long	($hash4)
	.size	$__default_hash, 4


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
