	.text
	.file	"ftello.bc"
	.globl	$_ftello_r
	.type	$_ftello_r,@function
$_ftello_r:                             //  @_ftello_r
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
	add x4, x0, x11
	add x8, x0, x10
	beqz x8, LBB0_3
LBB0_1:                                 //  %land.lhs.true
	lw x1, 56 ( x8 )
	nop
	bgtu x1, x0, LBB0_3
LBB0_2:                                 //  %if.then
	add x10, x0, x8
	sw x4, 8 ( x2 )                 //  4-byte Folded Spill
	call $__sinit
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	nop
LBB0_3:                                 //  %if.end
	lw x1, 40 ( x4 )
	nop
	bgtu x1, x0, LBB0_5
LBB0_4:                                 //  %if.then8
	addi x1, x0, 29
	sw x1, 0 ( x8 )
	not x10, x0
	jalr x0, LBB0_18 ( x0 )
LBB0_5:                                 //  %if.end21
	lhu x1, 12 ( x4 )
	nop
	andi x3, x1, 8
	beqz x3, LBB0_7
LBB0_6:                                 //  %if.then26
	add x10, x0, x8
	add x11, x0, x4
	sw x4, 8 ( x2 )                 //  4-byte Folded Spill
	call $_fflush_r
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	lh x1, 12 ( x4 )
LBB0_7:                                 //  %if.end27
	lui x3, 4096>>12 
	and x3, x3, x1
	beqz x3, LBB0_9
LBB0_8:                                 //  %if.then32
	lw x10, 80 ( x4 )
	jalr x0, LBB0_12 ( x0 )
LBB0_9:                                 //  %if.else
	lw x11, 28 ( x4 )
	lw x1, 40 ( x4 )
	add x12, x0, x0
	slti x13, x0, 1
	add x10, x0, x8
	add x8, x0, x4
	call_reg x1
	xori x1, x10, -1
	bgtu x1, x0, LBB0_11
LBB0_10:
	not x10, x0
	jalr x0, LBB0_18 ( x0 )
LBB0_11:                                //  %if.else.if.end51_crit_edge
	lh x1, 12 ( x8 )
	add x4, x0, x8
LBB0_12:                                //  %if.end51
	slli x1, x1, 16
	srai x1, x1, 16
	andi x3, x1, 4
	beqz x3, LBB0_15
LBB0_13:                                //  %if.then56
	lw x1, 4 ( x4 )
	lw x3, 48 ( x4 )
	sub x10, x10, x1
	beqz x3, LBB0_18
LBB0_14:                                //  %if.then59
	lw x1, 60 ( x4 )
	nop
	sub x10, x10, x1
	jalr x0, LBB0_18 ( x0 )
LBB0_15:                                //  %if.else62
	andi x1, x1, 8
	beqz x1, LBB0_18
LBB0_16:                                //  %land.lhs.true67
	lw x1, 0 ( x4 )
	nop
	beqz x1, LBB0_18
LBB0_17:                                //  %if.then70
	lw x3, 16 ( x4 )
	add x1, x10, x1
	sub x10, x1, x3
LBB0_18:                                //  %cleanup
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
	.size	$_ftello_r, ($func_end0)-($_ftello_r)
	.cfi_endproc

	.globl	$ftello
	.type	$ftello,@function
$ftello:                                //  @ftello
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x3, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	lw x3, 0 ( x3 )
	add x11, x0, x10
	add x10, x0, x3
	j $_ftello_r
$func_end1:
	.size	$ftello, ($func_end1)-($ftello)
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
