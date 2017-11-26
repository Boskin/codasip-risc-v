	.text
	.file	"sccl.bc"
	.globl	$__sccl
	.type	$__sccl,@function
$__sccl:                                //  @__sccl
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	lbu x7, 0 ( x11 )
	add x5, x0, x0
	xori x3, x7, 94
	beqz x3, LBB0_2
LBB0_1:
	addi x4, x11, 1
	add x3, x0, x5
	jalr x0, LBB0_3 ( x0 )
LBB0_2:                                 //  %if.then
	slti x3, x0, 1
	addi x4, x11, 2
	lb x7, 1 ( x11 )
LBB0_3:                                 //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	addi x9, x5, 1
	add x5, x5, x10
	xori x11, x9, 256
	sb x3, 0 ( x5 )
	add x5, x0, x9
	bgtu x11, x0, LBB0_3
LBB0_4:                                 //  %for.end
	andi x5, x7, 255
	bgtu x5, x0, LBB0_6
LBB0_5:                                 //  %if.then9
	addi x3, x4, -1
	add x10, x0, x3
	ret
LBB0_6:                                 //  %if.end10
	xori x5, x3, 1
	addi x9, x0, 45
LBB0_7:                                 //  %for.cond11
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_9 Depth 2
                                        //        Child Loop BB0_15 Depth 3
	andi x11, x7, 255
	add x3, x11, x10
	sb x5, 0 ( x3 )
	jalr x0, LBB0_9 ( x0 )
LBB0_8:                                 //  %doswitch.loopexit
                                        //    in Loop: Header=BB0_9 Depth=2
	addi x4, x4, 2
LBB0_9:                                 //  %doswitch
                                        //    Parent Loop BB0_7 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_15 Depth 3
	lbu x7, 0 ( x4 )
	addi x3, x4, 1
	xori x12, x7, 45
	beqz x12, LBB0_12
LBB0_10:                                //  %doswitch
                                        //    in Loop: Header=BB0_7 Depth=1
	beqz x7, LBB0_16
LBB0_11:                                //  %doswitch
                                        //    in Loop: Header=BB0_7 Depth=1
	xori x11, x7, 93
	add x4, x0, x3
	bgtu x11, x0, LBB0_7
	jalr x0, LBB0_17 ( x0 )
LBB0_12:                                //  %sw.bb17
                                        //    in Loop: Header=BB0_9 Depth=2
	lbu x7, 0 ( x3 )
	nop
	xori x12, x7, 93
	bgtu x12, x0, LBB0_14
LBB0_13:                                //    in Loop: Header=BB0_7 Depth=1
	add x4, x0, x3
	add x7, x0, x9
	jalr x0, LBB0_7 ( x0 )
LBB0_14:                                //  %sw.bb17
                                        //    in Loop: Header=BB0_9 Depth=2
	bgt x11, x7, LBB0_13
LBB0_15:                                //  %do.body
                                        //    Parent Loop BB0_7 Depth=1
                                        //      Parent Loop BB0_9 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x3, x11, x10
	addi x11, x11, 1
	sb x5, 1 ( x3 )
	bgt x7, x11, LBB0_15
	j LBB0_8
LBB0_16:                                //  %cleanup.loopexit
	add x3, x0, x4
LBB0_17:                                //  %cleanup
	add x10, x0, x3
	ret
$func_end0:
	.size	$__sccl, ($func_end0)-($__sccl)
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
