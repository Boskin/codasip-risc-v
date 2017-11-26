	.text
	.file	"tsearch.bc"
	.globl	$tsearch
	.type	$tsearch,@function
$tsearch:                               //  @tsearch
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
	sw x12, 4 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	beqz x8, LBB0_8
LBB0_1:                                 //  %while.cond.preheader
                                        //  =>This Inner Loop Header: Depth=1
	lw x1, 0 ( x8 )
	nop
	beqz x1, LBB0_6
LBB0_2:                                 //  %while.body
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x11, 0 ( x1 )
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	call_reg x1
	beqz x10, LBB0_9
LBB0_3:                                 //  %cleanup.thread
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 0 ( x8 )
	add x3, x0, x0
	ble x3, x10, LBB0_5
LBB0_4:                                 //    in Loop: Header=BB0_1 Depth=1
	addi x8, x1, 4
	jalr x0, LBB0_1 ( x0 )
LBB0_5:                                 //  %cleanup.thread
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x8, x1, 8
	jalr x0, LBB0_1 ( x0 )
LBB0_6:                                 //  %while.end
	addi x10, x0, 12
	call $malloc
	add x1, x0, x0
	beqz x10, LBB0_8
LBB0_7:                                 //  %if.then8
	sw x10, 0 ( x8 )
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 0 ( x10 )
	sw x0, 8 ( x10 )
	sw x0, 4 ( x10 )
	add x1, x0, x10
LBB0_8:                                 //  %cleanup13
	add x10, x0, x1
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
LBB0_9:                                 //  %cleanup
	lw x1, 0 ( x8 )
	jalr x0, LBB0_8 ( x0 )
$func_end0:
	.size	$tsearch, ($func_end0)-($tsearch)
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
