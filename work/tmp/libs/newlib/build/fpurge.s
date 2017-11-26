	.text
	.file	"fpurge.bc"
	.globl	$_fpurge_r
	.type	$_fpurge_r,@function
$_fpurge_r:                             //  @_fpurge_r
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
	add x8, x0, x11
	add x5, x0, x10
	beqz x5, LBB0_3
LBB0_1:                                 //  %land.lhs.true
	lw x1, 56 ( x5 )
	nop
	bgtu x1, x0, LBB0_3
LBB0_2:                                 //  %if.then
	add x10, x0, x5
	sw x5, 8 ( x2 )                 //  4-byte Folded Spill
	call $__sinit
	lw x5, 8 ( x2 )                 //  4-byte Folded Reload
LBB0_3:                                 //  %if.end
	lh x1, 12 ( x8 )
	nop
	bgtu x1, x0, LBB0_5
LBB0_4:                                 //  %if.then10
	addi x1, x0, 9
	sw x1, 0 ( x5 )
	not x10, x0
	jalr x0, LBB0_13 ( x0 )
LBB0_5:                                 //  %if.end23
	lw x3, 16 ( x8 )
	andi x4, x1, 8
	sw x3, 0 ( x8 )
	bgtu x4, x0, LBB0_10
LBB0_6:                                 //  %if.then26
	lw x11, 48 ( x8 )
	add x10, x0, x0
	sw x0, 4 ( x8 )
	beqz x11, LBB0_13
LBB0_7:                                 //  %if.then30
	addi x1, x8, 64
	beq x11, x1, LBB0_9
LBB0_8:                                 //  %if.then35
	add x10, x0, x5
	call $_free_r
	add x10, x0, x0
LBB0_9:                                 //  %if.end38
	sw x0, 48 ( x8 )
	jalr x0, LBB0_13 ( x0 )
LBB0_10:                                //  %if.else
	andi x3, x1, 3
	add x10, x0, x0
	add x1, x0, x10
	bgtu x3, x0, LBB0_12
LBB0_11:                                //  %cond.false45
	lw x1, 20 ( x8 )
	nop
LBB0_12:                                //  %cond.end47
	sw x1, 8 ( x8 )
LBB0_13:                                //  %cleanup
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
	.size	$_fpurge_r, ($func_end0)-($_fpurge_r)
	.cfi_endproc

	.globl	$fpurge
	.type	$fpurge,@function
$fpurge:                                //  @fpurge
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
	add x8, x0, x10
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x5, 0 ( x1 )
	nop
	beqz x5, LBB1_3
LBB1_1:                                 //  %land.lhs.true.i
	lw x1, 56 ( x5 )
	nop
	bgtu x1, x0, LBB1_3
LBB1_2:                                 //  %if.then.i
	add x10, x0, x5
	sw x5, 8 ( x2 )                 //  4-byte Folded Spill
	call $__sinit
	lw x5, 8 ( x2 )                 //  4-byte Folded Reload
LBB1_3:                                 //  %if.end.i
	lh x1, 12 ( x8 )
	nop
	bgtu x1, x0, LBB1_5
LBB1_4:                                 //  %if.then10.i
	addi x1, x0, 9
	sw x1, 0 ( x5 )
	not x10, x0
	jalr x0, LBB1_13 ( x0 )
LBB1_5:                                 //  %if.end23.i
	lw x3, 16 ( x8 )
	andi x4, x1, 8
	sw x3, 0 ( x8 )
	bgtu x4, x0, LBB1_10
LBB1_6:                                 //  %if.then26.i
	lw x11, 48 ( x8 )
	add x10, x0, x0
	sw x0, 4 ( x8 )
	beqz x11, LBB1_13
LBB1_7:                                 //  %if.then30.i
	addi x1, x8, 64
	beq x11, x1, LBB1_9
LBB1_8:                                 //  %if.then35.i
	add x10, x0, x5
	call $_free_r
	add x10, x0, x0
LBB1_9:                                 //  %if.end38.i
	sw x0, 48 ( x8 )
	jalr x0, LBB1_13 ( x0 )
LBB1_10:                                //  %if.else.i
	andi x3, x1, 3
	add x10, x0, x0
	add x1, x0, x10
	bgtu x3, x0, LBB1_12
LBB1_11:                                //  %cond.false45.i
	lw x1, 20 ( x8 )
	nop
LBB1_12:                                //  %cond.end47.i
	sw x1, 8 ( x8 )
LBB1_13:                                //  %_fpurge_r.exit
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
	.size	$fpurge, ($func_end1)-($fpurge)
	.cfi_endproc

	.globl	$__fpurge
	.type	$__fpurge,@function
$__fpurge:                              //  @__fpurge
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi14:
	.cfi_def_cfa 2, 0
$cfi15:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi16:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi17:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x10, 0 ( x1 )
	nop
	beqz x10, LBB2_3
LBB2_1:                                 //  %land.lhs.true.i
	lw x1, 56 ( x10 )
	nop
	bgtu x1, x0, LBB2_3
LBB2_2:                                 //  %if.then.i
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	call $__sinit
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
LBB2_3:                                 //  %if.end.i
	lh x1, 12 ( x8 )
	nop
	bgtu x1, x0, LBB2_5
LBB2_4:                                 //  %if.then10.i
	addi x1, x0, 9
	sw x1, 0 ( x10 )
	jalr x0, LBB2_14 ( x0 )
LBB2_5:                                 //  %if.end23.i
	lw x3, 16 ( x8 )
	andi x4, x1, 8
	sw x3, 0 ( x8 )
	bgtu x4, x0, LBB2_10
LBB2_6:                                 //  %if.then26.i
	lw x11, 48 ( x8 )
	sw x0, 4 ( x8 )
	beqz x11, LBB2_14
LBB2_7:                                 //  %if.then30.i
	addi x1, x8, 64
	beq x11, x1, LBB2_9
LBB2_8:                                 //  %if.then35.i
	call $_free_r
LBB2_9:                                 //  %if.end38.i
	sw x0, 48 ( x8 )
	jalr x0, LBB2_14 ( x0 )
LBB2_10:                                //  %if.else.i
	andi x1, x1, 3
	beqz x1, LBB2_12
LBB2_11:
	add x1, x0, x0
	jalr x0, LBB2_13 ( x0 )
LBB2_12:                                //  %cond.false45.i
	lw x1, 20 ( x8 )
	nop
LBB2_13:                                //  %cond.end47.i
	sw x1, 8 ( x8 )
LBB2_14:                                //  %_fpurge_r.exit
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi18:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi19:
	.cfi_adjust_cfa_offset -24
$cfi20:
	.cfi_def_cfa 2, 0
	ret
$func_end2:
	.size	$__fpurge, ($func_end2)-($__fpurge)
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
