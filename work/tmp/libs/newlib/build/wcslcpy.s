	.text
	.file	"wcslcpy.bc"
	.globl	$wcslcpy
	.type	$wcslcpy,@function
$wcslcpy:                               //  @wcslcpy
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	add x3, x0, x11
	beqz x12, LBB0_7
LBB0_1:                                 //  %land.lhs.true
	xori x3, x12, 1
	bgtu x3, x0, LBB0_3
LBB0_2:
	add x3, x0, x11
	jalr x0, LBB0_6 ( x0 )
LBB0_3:                                 //  %do.body.preheader
	slti x3, x0, 1
	sub x4, x3, x12
	add x3, x0, x11
LBB0_4:                                 //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lhu x5, 0 ( x3 )
	nop
	sh x5, 0 ( x10 )
	beqz x5, LBB0_8
LBB0_5:                                 //  %do.cond
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x4, x4, 1
	addi x10, x10, 2
	addi x3, x3, 2
	bgtu x4, x0, LBB0_4
LBB0_6:                                 //  %if.then15
	sh x0, 0 ( x10 )
LBB0_7:                                 //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lhu x4, 0 ( x3 )
	addi x3, x3, 2
	bgtu x4, x0, LBB0_7
	jalr x0, LBB0_9 ( x0 )
LBB0_8:                                 //  %if.end18.loopexit48
	addi x3, x3, 2
LBB0_9:                                 //  %if.end18
	sub x3, x3, x11
	srai x3, x3, 1
	addi x10, x3, -1
	ret
$func_end0:
	.size	$wcslcpy, ($func_end0)-($wcslcpy)
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