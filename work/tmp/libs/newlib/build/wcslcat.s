	.text
	.file	"wcslcat.bc"
	.globl	$wcslcat
	.type	$wcslcat,@function
$wcslcat:                               //  @wcslcat
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -16
$cfi2:
	.cfi_adjust_cfa_offset 16
	sw x1, 12 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 4 ( x2 )                 //  4-byte Folded Spill
	add x1, x0, x10
	beqz x12, LBB0_5
LBB0_1:                                 //  %entry
	lhu x3, 0 ( x10 )
	nop
	sltu x1, x0, x3
	andi x4, x1, 1
	add x1, x0, x10
	beqz x4, LBB0_5
LBB0_2:                                 //  %while.body.preheader
	seqz x5, x3
	add x3, x0, x12
	add x4, x0, x10
LBB0_3:                                 //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	not x1, x5
	andi x1, x1, 1
	sub x3, x3, x1
	addi x1, x4, 2
	beqz x3, LBB0_5
LBB0_4:                                 //  %while.body
                                        //    in Loop: Header=BB0_3 Depth=1
	lhu x4, 2 ( x4 )
	nop
	sltu x7, x0, x4
	seqz x5, x4
	add x4, x0, x1
	bgtu x7, x0, LBB0_3
LBB0_5:                                 //  %while.end
	sub x3, x1, x10
	srai x8, x3, 1
	sub x3, x12, x8
	beqz x3, LBB0_8
LBB0_6:                                 //  %while.cond6.preheader
	lhu x7, 0 ( x11 )
	nop
	bgtu x7, x0, LBB0_9
LBB0_7:
	add x4, x0, x11
	jalr x0, LBB0_14 ( x0 )
LBB0_8:                                 //  %if.then
	add x10, x0, x11
	call $wcslen
	jalr x0, LBB0_15 ( x0 )
LBB0_9:
	slti x5, x0, 1
	add x4, x0, x11
LBB0_10:                                //  %while.body10
                                        //  =>This Inner Loop Header: Depth=1
	xori x9, x3, 1
	bgtu x9, x0, LBB0_12
LBB0_11:                                //    in Loop: Header=BB0_10 Depth=1
	add x3, x0, x5
	jalr x0, LBB0_13 ( x0 )
LBB0_12:                                //  %if.then13
                                        //    in Loop: Header=BB0_10 Depth=1
	sh x7, 0 ( x1 )
	addi x3, x3, -1
	addi x1, x1, 2
LBB0_13:                                //  %if.end16
                                        //    in Loop: Header=BB0_10 Depth=1
	lhu x7, 2 ( x4 )
	addi x4, x4, 2
	bgtu x7, x0, LBB0_10
LBB0_14:                                //  %while.end18
	sub x3, x4, x11
	sh x0, 0 ( x1 )
	srai x10, x3, 1
LBB0_15:                                //  %cleanup
	add x10, x8, x10
	lw x8, 4 ( x2 )                 //  4-byte Folded Reload
	lw x1, 12 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 16
$cfi5:
	.cfi_adjust_cfa_offset -16
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$wcslcat, ($func_end0)-($wcslcat)
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
