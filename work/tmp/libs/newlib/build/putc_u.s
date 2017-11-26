	.text
	.file	"putc_u.bc"
	.globl	$_putc_unlocked_r
	.type	$_putc_unlocked_r,@function
$_putc_unlocked_r:                      //  @_putc_unlocked_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -8
$cfi2:
	.cfi_adjust_cfa_offset 8
	sw x1, 4 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	add x1, x0, x10
	lw x3, 8 ( x12 )
	nop
	addi x4, x3, -1
	sw x4, 8 ( x12 )
	andi x10, x11, 255
	bgt x3, x0, LBB0_3
LBB0_1:                                 //  %lor.lhs.false.i
	xori x4, x10, 10
	beqz x4, LBB0_4
LBB0_2:                                 //  %lor.lhs.false.i
	lw x4, 24 ( x12 )
	nop
	ble x3, x4, LBB0_4
LBB0_3:                                 //  %if.then.i
	lw x1, 0 ( x12 )
	nop
	addi x3, x1, 1
	sw x3, 0 ( x12 )
	sb x11, 0 ( x1 )
	jalr x0, LBB0_5 ( x0 )
LBB0_4:                                 //  %if.else.i
	add x10, x0, x1
	call $__swbuf_r
LBB0_5:                                 //  %__sputc_r.exit
	lw x1, 4 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 8
$cfi5:
	.cfi_adjust_cfa_offset -8
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$_putc_unlocked_r, ($func_end0)-($_putc_unlocked_r)
	.cfi_endproc

	.globl	$putc_unlocked
	.type	$putc_unlocked,@function
$putc_unlocked:                         //  @putc_unlocked
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -8
$cfi9:
	.cfi_adjust_cfa_offset 8
	sw x1, 4 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	add x1, x0, x11
	add x3, x0, x10
	lw x5, 8 ( x1 )
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x4, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	addi x7, x5, -1
	lw x4, 0 ( x4 )
	sw x7, 8 ( x1 )
	andi x10, x3, 255
	bgt x5, x0, LBB1_3
LBB1_1:                                 //  %lor.lhs.false.i
	xori x7, x10, 10
	beqz x7, LBB1_4
LBB1_2:                                 //  %lor.lhs.false.i
	lw x7, 24 ( x1 )
	nop
	ble x5, x7, LBB1_4
LBB1_3:                                 //  %if.then.i
	lw x4, 0 ( x1 )
	nop
	addi x5, x4, 1
	sw x5, 0 ( x1 )
	sb x3, 0 ( x4 )
	jalr x0, LBB1_5 ( x0 )
LBB1_4:                                 //  %if.else.i
	add x10, x0, x4
	add x11, x0, x3
	add x12, x0, x1
	call $__swbuf_r
LBB1_5:                                 //  %__sputc_r.exit
	lw x1, 4 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 8
$cfi12:
	.cfi_adjust_cfa_offset -8
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$putc_unlocked, ($func_end1)-($putc_unlocked)
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
