	.text
	.file	"gets.bc"
	.globl	$_gets_r
	.type	$_gets_r,@function
$_gets_r:                               //  @_gets_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi2:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x4, x0, x10
	lw x8, 4 ( x4 )
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	sw x4, 8 ( x2 )                 //  4-byte Folded Spill
	beqz x4, LBB0_3
LBB0_1:                                 //  %land.lhs.true
	lw x1, 56 ( x4 )
	nop
	bgtu x1, x0, LBB0_3
LBB0_2:                                 //  %if.then
	add x10, x0, x4
	call $__sinit
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
LBB0_3:                                 //  %while.cond.preheader
	add x5, x0, x0
LBB0_4:                                 //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x1, 4 ( x8 )
	nop
	addi x3, x1, -1
	sw x3, 4 ( x8 )
	bgt x1, x0, LBB0_6
LBB0_5:                                 //  %cond.true8
                                        //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, x4
	add x11, x0, x8
	sw x5, 16 ( x2 )                //  4-byte Folded Spill
	call $__srget_r
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_7 ( x0 )
LBB0_6:                                 //  %cond.false9
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x1, 0 ( x8 )
	nop
	addi x3, x1, 1
	sw x3, 0 ( x8 )
	lbu x10, 0 ( x1 )
	nop
LBB0_7:                                 //  %cond.end11
                                        //    in Loop: Header=BB0_4 Depth=1
	xori x1, x10, 10
	beqz x1, LBB0_12
LBB0_8:                                 //  %cond.end11
                                        //    in Loop: Header=BB0_4 Depth=1
	xori x1, x10, -1
	bgtu x1, x0, LBB0_11
LBB0_9:                                 //  %if.then16
	bgtu x5, x0, LBB0_12
LBB0_10:
	add x11, x0, x0
	jalr x0, LBB0_13 ( x0 )
LBB0_11:                                //  %if.else32
                                        //    in Loop: Header=BB0_4 Depth=1
	add x1, x5, x11
	sb x10, 0 ( x1 )
	addi x5, x5, 1
	jalr x0, LBB0_4 ( x0 )
LBB0_12:                                //  %while.end
	add x1, x5, x11
	sb x0, 0 ( x1 )
LBB0_13:                                //  %cleanup
	add x10, x0, x11
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi5:
	.cfi_adjust_cfa_offset -32
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$_gets_r, ($func_end0)-($_gets_r)
	.cfi_endproc

	.globl	$gets
	.type	$gets,@function
$gets:                                  //  @gets
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi9:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x4, x0, x10
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x5, 0 ( x1 )
	nop
	lw x8, 4 ( x5 )
	sw x4, 12 ( x2 )                //  4-byte Folded Spill
	sw x5, 8 ( x2 )                 //  4-byte Folded Spill
	beqz x5, LBB1_3
LBB1_1:                                 //  %land.lhs.true.i
	lw x1, 56 ( x5 )
	nop
	bgtu x1, x0, LBB1_3
LBB1_2:                                 //  %if.then.i
	add x10, x0, x5
	call $__sinit
	lw x5, 8 ( x2 )                 //  4-byte Folded Reload
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
LBB1_3:                                 //  %while.cond.preheader.i
	add x7, x0, x0
LBB1_4:                                 //  %while.cond.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x1, 4 ( x8 )
	nop
	addi x3, x1, -1
	sw x3, 4 ( x8 )
	bgt x1, x0, LBB1_6
LBB1_5:                                 //  %cond.true8.i
                                        //    in Loop: Header=BB1_4 Depth=1
	add x10, x0, x5
	add x11, x0, x8
	sw x7, 16 ( x2 )                //  4-byte Folded Spill
	call $__srget_r
	lw x7, 16 ( x2 )                //  4-byte Folded Reload
	lw x5, 8 ( x2 )                 //  4-byte Folded Reload
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_7 ( x0 )
LBB1_6:                                 //  %cond.false9.i
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x1, 0 ( x8 )
	nop
	addi x3, x1, 1
	sw x3, 0 ( x8 )
	lbu x10, 0 ( x1 )
	nop
LBB1_7:                                 //  %cond.end11.i
                                        //    in Loop: Header=BB1_4 Depth=1
	xori x1, x10, 10
	beqz x1, LBB1_12
LBB1_8:                                 //  %cond.end11.i
                                        //    in Loop: Header=BB1_4 Depth=1
	xori x1, x10, -1
	bgtu x1, x0, LBB1_11
LBB1_9:                                 //  %if.then16.i
	bgtu x7, x0, LBB1_12
LBB1_10:
	add x4, x0, x0
	jalr x0, LBB1_13 ( x0 )
LBB1_11:                                //  %if.else32.i
                                        //    in Loop: Header=BB1_4 Depth=1
	add x1, x7, x4
	sb x10, 0 ( x1 )
	addi x7, x7, 1
	jalr x0, LBB1_4 ( x0 )
LBB1_12:                                //  %while.end.i
	add x1, x7, x4
	sb x0, 0 ( x1 )
LBB1_13:                                //  %_gets_r.exit
	add x10, x0, x4
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi12:
	.cfi_adjust_cfa_offset -32
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$gets, ($func_end1)-($gets)
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
