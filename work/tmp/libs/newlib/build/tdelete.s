	.text
	.file	"tdelete.bc"
	.globl	$tdelete
	.type	$tdelete,@function
$tdelete:                               //  @tdelete
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
	sw x12, 16 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x0
	beqz x8, LBB0_18
LBB0_1:                                 //  %lor.lhs.false
	lw x1, 0 ( x8 )
	nop
	beqz x1, LBB0_18
LBB0_2:                                 //  %while.cond.preheader
	add x3, x0, x1
LBB0_3:                                 //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	lw x11, 0 ( x1 )
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	lw x3, 0 ( x8 )
	beqz x10, LBB0_9
LBB0_4:                                 //  %while.body
                                        //    in Loop: Header=BB0_3 Depth=1
	add x1, x0, x0
	ble x1, x10, LBB0_6
LBB0_5:                                 //    in Loop: Header=BB0_3 Depth=1
	addi x8, x3, 4
	jalr x0, LBB0_7 ( x0 )
LBB0_6:                                 //  %while.body
                                        //    in Loop: Header=BB0_3 Depth=1
	addi x8, x3, 8
LBB0_7:                                 //  %while.body
                                        //    in Loop: Header=BB0_3 Depth=1
	lw x1, 0 ( x8 )
	nop
	bgtu x1, x0, LBB0_3
LBB0_8:
	add x10, x0, x0
	jalr x0, LBB0_18 ( x0 )
LBB0_9:                                 //  %while.end
	lw x4, 4 ( x3 )
	lw x7, 8 ( x3 )
	beqz x4, LBB0_16
LBB0_10:                                //  %if.else
	bgtu x7, x0, LBB0_12
LBB0_11:
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_17 ( x0 )
LBB0_12:                                //  %if.then13
	lw x1, 4 ( x7 )
	nop
	bgtu x1, x0, LBB0_14
LBB0_13:                                //  %if.then16
	sw x4, 4 ( x7 )
	jalr x0, LBB0_16 ( x0 )
LBB0_14:                                //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	add x3, x0, x7
	add x7, x0, x1
	lw x1, 4 ( x7 )
	nop
	bgtu x1, x0, LBB0_14
LBB0_15:                                //  %for.end
	lw x1, 8 ( x7 )
	nop
	sw x1, 4 ( x3 )
	lw x1, 0 ( x8 )
	nop
	lw x1, 4 ( x1 )
	nop
	sw x1, 4 ( x7 )
	lw x1, 0 ( x8 )
	nop
	lw x1, 8 ( x1 )
	nop
	sw x1, 8 ( x7 )
LBB0_16:                                //  %if.end31
	sw x7, 16 ( x2 )                //  4-byte Folded Spill
LBB0_17:                                //  %if.end31
	lw x10, 0 ( x8 )
	nop
	call $free
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x8 )
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
LBB0_18:                                //  %cleanup
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
	.size	$tdelete, ($func_end0)-($tdelete)
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
