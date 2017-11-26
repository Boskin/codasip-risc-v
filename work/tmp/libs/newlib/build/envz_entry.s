	.text
	.file	"envz_entry.bc"
	.globl	$envz_entry
	.type	$envz_entry,@function
$envz_entry:                            //  @envz_entry
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
	add x8, x0, x12
	sw x10, 16 ( x2 )
	add x1, x0, x0
	sw x11, 12 ( x2 )
	beqz x11, LBB0_14
LBB0_1:
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
LBB0_2:                                 //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x0, x8
	addi x11, x2, 16
	addi x12, x2, 12
	call $_buf_findstr
	bgtu x10, x0, LBB0_5
LBB0_3:                                 //  %while.condthread-pre-split
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x1, 12 ( x2 )
	nop
	bgtu x1, x0, LBB0_2
LBB0_4:
	add x1, x0, x0
	jalr x0, LBB0_14 ( x0 )
LBB0_5:                                 //  %while.body
                                        //    in Loop: Header=BB0_2 Depth=1
	lw x1, 16 ( x2 )
	nop
	beqz x1, LBB0_3
LBB0_6:                                 //  %if.then3
                                        //    in Loop: Header=BB0_2 Depth=1
	lbu x3, 0 ( x1 )
	nop
	xori x4, x3, 61
	beqz x4, LBB0_8
LBB0_7:                                 //  %if.then3
                                        //    in Loop: Header=BB0_2 Depth=1
	bgtu x3, x0, LBB0_3
LBB0_8:                                 //  %while.cond9.preheader
	addi x3, x1, -1
	lw x7, 8 ( x2 )                 //  4-byte Folded Reload
LBB0_9:                                 //  %while.cond9
                                        //  =>This Inner Loop Header: Depth=1
	sw x3, 16 ( x2 )
	addi x1, x3, -1
	lbu x4, 0 ( x3 )
	beq x7, x3, LBB0_11
LBB0_10:                                //  %while.cond9
                                        //    in Loop: Header=BB0_9 Depth=1
	sltu x5, x0, x4
	add x3, x0, x1
	bgtu x5, x0, LBB0_9
LBB0_11:                                //  %while.end
	beqz x4, LBB0_13
LBB0_12:
	addi x1, x1, 1
	jalr x0, LBB0_14 ( x0 )
LBB0_13:                                //  %if.then20
	addi x1, x1, 2
	sw x1, 16 ( x2 )
LBB0_14:                                //  %cleanup
	add x10, x0, x1
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
	.size	$envz_entry, ($func_end0)-($envz_entry)
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
