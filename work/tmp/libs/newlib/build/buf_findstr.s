	.text
	.file	"buf_findstr.bc"
	.globl	$_buf_findstr
	.type	$_buf_findstr,@function
$_buf_findstr:                          //  @_buf_findstr
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	add x3, x0, x10
	lw x4, 0 ( x12 )
	add x10, x0, x0
	add x5, x0, x10
	beqz x4, LBB0_14
LBB0_1:                                 //  %for.body.lr.ph
	lw x7, 0 ( x11 )
	lb x5, 0 ( x3 )
	add x9, x0, x0
	addi x13, x7, 1
	andi x14, x5, 255
	add x5, x0, x9
LBB0_2:                                 //  %for.body
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_5 Depth 2
	add x15, x5, x7
	lbu x15, 0 ( x15 )
	nop
	bne x14, x15, LBB0_11
LBB0_3:                                 //  %while.cond.preheader
                                        //    in Loop: Header=BB0_2 Depth=1
	beqz x14, LBB0_10
LBB0_4:                                 //  %while.body.preheader
                                        //    in Loop: Header=BB0_2 Depth=1
	add x15, x0, x9
LBB0_5:                                 //  %while.body
                                        //    Parent Loop BB0_2 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x16, x15, x3
	lbu x16, 1 ( x16 )
	nop
	beqz x16, LBB0_9
LBB0_6:                                 //  %while.body.land.rhs_crit_edge
                                        //    in Loop: Header=BB0_5 Depth=2
	add x17, x15, x13
	add x17, x5, x17
	lbu x17, 0 ( x17 )
	addi x15, x15, 1
	beq x16, x17, LBB0_5
LBB0_7:                                 //  %while.end
                                        //    in Loop: Header=BB0_2 Depth=1
	add x16, x15, x3
	lbu x16, 0 ( x16 )
	nop
	bgtu x16, x0, LBB0_11
LBB0_8:                                 //  %while.end.if.then19.loopexit84_crit_edge
	add x5, x15, x5
	jalr x0, LBB0_10 ( x0 )
LBB0_9:                                 //  %if.then19.loopexit
	add x3, x15, x5
	addi x5, x3, 1
LBB0_10:                                //  %if.then19
	add x3, x5, x7
	sw x3, 0 ( x11 )
	sub x3, x4, x5
	slti x10, x0, 1
	sw x3, 0 ( x12 )
	ret
LBB0_11:                                //  %for.inc
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x5, x5, 1
	bgtu x4, x5, LBB0_2
LBB0_12:                                //  %for.end
	beq x5, x4, LBB0_14
LBB0_13:
	add x10, x0, x0
	ret
LBB0_14:                                //  %if.then25
	lw x3, 0 ( x11 )
	nop
	add x3, x5, x3
	sw x3, 0 ( x11 )
	add x3, x0, x10
	sw x3, 0 ( x12 )
	ret
$func_end0:
	.size	$_buf_findstr, ($func_end0)-($_buf_findstr)
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
