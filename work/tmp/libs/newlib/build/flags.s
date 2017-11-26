	.text
	.file	"flags.bc"
	.globl	$__sflags
	.type	$__sflags,@function
$__sflags:                              //  @__sflags
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	lb x3, 0 ( x11 )
	nop
	xori x4, x3, 97
	beqz x4, LBB0_11
LBB0_1:                                 //  %entry
	xori x4, x3, 119
	beqz x4, LBB0_10
LBB0_2:                                 //  %entry
	xori x3, x3, 114
	bgtu x3, x0, LBB0_12
LBB0_3:
	add x3, x0, x0
	addi x10, x0, 4
	add x4, x0, x3
LBB0_4:                                 //  %while.cond.preheader
	lui x5, 2048 >> 12 & 0xfffff
	lui x7, 65536>>12 
LBB0_5:                                 //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lb x9, 1 ( x11 )
	nop
	beqz x9, LBB0_16
LBB0_6:                                 //  %while.body
                                        //    in Loop: Header=BB0_5 Depth=1
	xori x13, x9, 120
	addi x11, x11, 1
	beqz x13, LBB0_13
LBB0_7:                                 //  %while.body
                                        //    in Loop: Header=BB0_5 Depth=1
	xori x13, x9, 98
	beqz x13, LBB0_14
LBB0_8:                                 //  %while.body
                                        //    in Loop: Header=BB0_5 Depth=1
	xori x9, x9, 43
	bgtu x9, x0, LBB0_5
LBB0_9:                                 //  %sw.bb4
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x4, x4, -4
	ori x4, x4, 2
	andi x9, x10, -29
	ori x10, x9, 16
	jalr x0, LBB0_5 ( x0 )
LBB0_10:                                //  %sw.bb1
	addi x3, x0, 1536
	slti x4, x0, 1
	addi x10, x0, 8
	jalr x0, LBB0_4 ( x0 )
LBB0_11:                                //  %sw.bb2
	addi x3, x0, 520
	slti x4, x0, 1
	addi x10, x0, 264
	jalr x0, LBB0_4 ( x0 )
LBB0_12:                                //  %sw.default
	addi x3, x0, 22
	sw x3, 0 ( x10 )
	add x10, x0, x0
	ret
LBB0_13:                                //  %while.cond.outer28.backedge.loopexit
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, 2048 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x9, x5, x28
	or x4, x9, x4
	jalr x0, LBB0_5 ( x0 )
LBB0_14:                                //  %while.cond.outer28.backedge.loopexit53
                                        //    in Loop: Header=BB0_5 Depth=1
	add x9, x0, x7
	or x4, x9, x4
	jalr x0, LBB0_5 ( x0 )
LBB0_16:                                //  %while.end
	or x3, x4, x3
	sw x3, 0 ( x12 )
	ret
$func_end0:
	.size	$__sflags, ($func_end0)-($__sflags)
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
