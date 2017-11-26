	.text
	.file	"strcspn.bc"
	.globl	$strcspn
	.type	$strcspn,@function
$strcspn:                               //  @strcspn
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	lbu x4, 0 ( x10 )
	add x3, x0, x10
	beqz x4, LBB0_10
LBB0_1:                                 //  %for.cond.preheader.lr.ph
	lbu x5, 0 ( x11 )
	nop
	beqz x5, LBB0_6
LBB0_2:                                 //  %for.cond.preheader.preheader
	addi x7, x11, 1
	add x3, x0, x10
LBB0_3:                                 //  %for.cond.preheader
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_4 Depth 2
	add x9, x0, x7
	add x11, x0, x5
LBB0_4:                                 //  %for.body
                                        //    Parent Loop BB0_3 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	andi x11, x11, 255
	andi x12, x4, 255
	beq x12, x11, LBB0_8
LBB0_5:                                 //  %for.inc
                                        //    in Loop: Header=BB0_4 Depth=2
	lbu x11, 0 ( x9 )
	addi x9, x9, 1
	bgtu x11, x0, LBB0_4
	jalr x0, LBB0_9 ( x0 )
LBB0_6:                                 //  %for.cond.preheader.us.preheader
	add x3, x0, x10
LBB0_7:                                 //  %for.cond.preheader.us
                                        //  =>This Inner Loop Header: Depth=1
	lbu x4, 1 ( x3 )
	addi x3, x3, 1
	bgtu x4, x0, LBB0_7
	jalr x0, LBB0_10 ( x0 )
LBB0_8:                                 //  %for.end
                                        //    in Loop: Header=BB0_3 Depth=1
	lbu x4, -1 ( x9 )
	nop
	bgtu x4, x0, LBB0_10
LBB0_9:                                 //  %if.end6
                                        //    in Loop: Header=BB0_3 Depth=1
	lbu x4, 1 ( x3 )
	addi x3, x3, 1
	bgtu x4, x0, LBB0_3
LBB0_10:                                //  %while.end
	sub x10, x3, x10
	ret
$func_end0:
	.size	$strcspn, ($func_end0)-($strcspn)
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
