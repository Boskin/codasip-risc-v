	.text
	.file	"putc.bc"
	.globl	$_putc_r
	.type	$_putc_r,@function
$_putc_r:                               //  @_putc_r
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
	add x8, x0, x12
	add x4, x0, x10
	beqz x4, LBB0_3
LBB0_1:                                 //  %land.lhs.true
	lw x1, 56 ( x4 )
	nop
	bgtu x1, x0, LBB0_3
LBB0_2:                                 //  %if.then
	add x10, x0, x4
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	sw x4, 4 ( x2 )                 //  4-byte Folded Spill
	call $__sinit
	lw x4, 4 ( x2 )                 //  4-byte Folded Reload
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
LBB0_3:                                 //  %if.end
	lw x1, 8 ( x8 )
	nop
	addi x3, x1, -1
	sw x3, 8 ( x8 )
	andi x10, x11, 255
	bgt x1, x0, LBB0_6
LBB0_4:                                 //  %lor.lhs.false.i
	xori x3, x10, 10
	beqz x3, LBB0_7
LBB0_5:                                 //  %lor.lhs.false.i
	lw x3, 24 ( x8 )
	nop
	ble x1, x3, LBB0_7
LBB0_6:                                 //  %if.then.i
	lw x1, 0 ( x8 )
	nop
	addi x3, x1, 1
	sw x3, 0 ( x8 )
	sb x11, 0 ( x1 )
	jalr x0, LBB0_8 ( x0 )
LBB0_7:                                 //  %if.else.i
	add x10, x0, x4
	add x12, x0, x8
	call $__swbuf_r
LBB0_8:                                 //  %__sputc_r.exit
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
$func_end0:
	.size	$_putc_r, ($func_end0)-($_putc_r)
	.cfi_endproc

	.globl	$putc
	.type	$putc,@function
$putc:                                  //  @putc
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi9:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	add x4, x0, x10
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x5, 0 ( x1 )
	nop
	beqz x5, LBB1_3
LBB1_1:                                 //  %land.lhs.true
	lw x1, 56 ( x5 )
	nop
	bgtu x1, x0, LBB1_3
LBB1_2:                                 //  %if.then
	add x10, x0, x5
	sw x4, 8 ( x2 )                 //  4-byte Folded Spill
	sw x5, 4 ( x2 )                 //  4-byte Folded Spill
	call $__sinit
	lw x5, 4 ( x2 )                 //  4-byte Folded Reload
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
LBB1_3:                                 //  %if.end
	lw x1, 8 ( x8 )
	nop
	addi x3, x1, -1
	sw x3, 8 ( x8 )
	andi x10, x4, 255
	bgt x1, x0, LBB1_6
LBB1_4:                                 //  %lor.lhs.false.i
	xori x3, x10, 10
	beqz x3, LBB1_7
LBB1_5:                                 //  %lor.lhs.false.i
	lw x3, 24 ( x8 )
	nop
	ble x1, x3, LBB1_7
LBB1_6:                                 //  %if.then.i
	lw x1, 0 ( x8 )
	nop
	addi x3, x1, 1
	sw x3, 0 ( x8 )
	sb x4, 0 ( x1 )
	jalr x0, LBB1_8 ( x0 )
LBB1_7:                                 //  %if.else.i
	add x10, x0, x5
	add x11, x0, x4
	add x12, x0, x8
	call $__swbuf_r
LBB1_8:                                 //  %__sputc_r.exit
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi12:
	.cfi_adjust_cfa_offset -24
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$putc, ($func_end1)-($putc)
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
