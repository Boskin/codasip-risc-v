	.text
	.file	"strtok_r.bc"
	.globl	$__strtok_r
	.type	$__strtok_r,@function
$__strtok_r:                            //  @__strtok_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	bgtu x10, x0, LBB0_3
LBB0_1:                                 //  %land.lhs.true
	lw x10, 0 ( x12 )
	nop
	bgtu x10, x0, LBB0_3
LBB0_2:
	add x10, x0, x0
	ret
LBB0_3:                                 //  %cont.preheader
	bgtu x13, x0, LBB0_9
LBB0_4:                                 //  %cont.us
	lb x4, 0 ( x10 )
	addi x3, x10, 1
	andi x5, x4, 255
	add x7, x0, x11
LBB0_5:                                 //  %for.cond.us
                                        //  =>This Inner Loop Header: Depth=1
	lbu x9, 0 ( x7 )
	nop
	beqz x9, LBB0_13
LBB0_6:                                 //  %for.body.us
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x7, x7, 1
	bne x5, x9, LBB0_5
LBB0_7:                                 //  %if.else
	sw x3, 0 ( x12 )
	sb x0, 0 ( x10 )
	ret
LBB0_9:                                 //  %cont
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_10 Depth 2
	addi x3, x10, 1
	lb x4, 0 ( x10 )
	add x5, x0, x11
LBB0_10:                                //  %for.cond
                                        //    Parent Loop BB0_9 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x7, 0 ( x5 )
	nop
	beqz x7, LBB0_13
LBB0_11:                                //  %for.body
                                        //    in Loop: Header=BB0_10 Depth=2
	andi x9, x4, 255
	addi x5, x5, 1
	bne x9, x7, LBB0_10
LBB0_12:                                //    in Loop: Header=BB0_9 Depth=1
	add x10, x0, x3
	jalr x0, LBB0_9 ( x0 )
LBB0_13:                                //  %for.end
	andi x4, x4, 255
	bgtu x4, x0, LBB0_15
LBB0_14:                                //  %if.then13
	sw x0, 0 ( x12 )
	add x10, x0, x0
	ret
LBB0_15:                                //  %for.cond16
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_16 Depth 2
	addi x4, x3, 1
	lb x5, 0 ( x3 )
	add x7, x0, x11
LBB0_16:                                //  %do.body
                                        //    Parent Loop BB0_15 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x9, 0 ( x7 )
	andi x13, x5, 255
	bne x9, x13, LBB0_21
LBB0_17:                                //  %if.then23
	bgtu x13, x0, LBB0_19
LBB0_18:
	add x4, x0, x0
	sw x4, 0 ( x12 )
	ret
LBB0_19:                                //  %if.else27
	sb x0, 0 ( x3 )
	sw x4, 0 ( x12 )
	ret
LBB0_21:                                //  %do.cond
                                        //    in Loop: Header=BB0_16 Depth=2
	addi x7, x7, 1
	bgtu x9, x0, LBB0_16
LBB0_22:                                //    in Loop: Header=BB0_15 Depth=1
	add x3, x0, x4
	jalr x0, LBB0_15 ( x0 )
$func_end0:
	.size	$__strtok_r, ($func_end0)-($__strtok_r)
	.cfi_endproc

	.globl	$strtok_r
	.type	$strtok_r,@function
$strtok_r:                              //  @strtok_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi2:
	.cfi_def_cfa 2, 0
$cfi3:
	.cfi_val_offset 2, 0
	bgtu x10, x0, LBB1_3
LBB1_1:                                 //  %land.lhs.true.i
	lw x10, 0 ( x12 )
	nop
	bgtu x10, x0, LBB1_3
LBB1_2:
	add x10, x0, x0
	ret
LBB1_3:                                 //  %cont.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_4 Depth 2
	addi x3, x10, 1
	lb x4, 0 ( x10 )
	add x5, x0, x11
LBB1_4:                                 //  %for.cond.i
                                        //    Parent Loop BB1_3 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x7, 0 ( x5 )
	nop
	beqz x7, LBB1_7
LBB1_5:                                 //  %for.body.i
                                        //    in Loop: Header=BB1_4 Depth=2
	andi x9, x4, 255
	addi x5, x5, 1
	bne x9, x7, LBB1_4
LBB1_6:                                 //    in Loop: Header=BB1_3 Depth=1
	add x10, x0, x3
	jalr x0, LBB1_3 ( x0 )
LBB1_7:                                 //  %for.end.i
	andi x5, x4, 255
	add x4, x0, x0
	bgtu x5, x0, LBB1_9
LBB1_8:
	add x10, x0, x4
	add x5, x0, x4
	sw x5, 0 ( x12 )
	ret
LBB1_9:                                 //  %for.cond16.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_10 Depth 2
	addi x5, x3, 1
	lb x7, 0 ( x3 )
	add x9, x0, x11
LBB1_10:                                //  %do.body.i
                                        //    Parent Loop BB1_9 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x13, 0 ( x9 )
	andi x14, x7, 255
	bne x13, x14, LBB1_13
LBB1_11:                                //  %if.then23.i
	bgtu x14, x0, LBB1_15
LBB1_12:
	add x5, x0, x4
	sw x5, 0 ( x12 )
	ret
LBB1_13:                                //  %do.cond.i
                                        //    in Loop: Header=BB1_10 Depth=2
	addi x9, x9, 1
	bgtu x13, x0, LBB1_10
LBB1_14:                                //    in Loop: Header=BB1_9 Depth=1
	add x3, x0, x5
	jalr x0, LBB1_9 ( x0 )
LBB1_15:                                //  %if.else27.i
	sb x0, 0 ( x3 )
	sw x5, 0 ( x12 )
	ret
$func_end1:
	.size	$strtok_r, ($func_end1)-($strtok_r)
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
