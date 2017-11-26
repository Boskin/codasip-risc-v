	.text
	.file	"strncat.bc"
	.globl	$strncat
	.type	$strncat,@function
$strncat:                               //  @strncat
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	andi x4, x10, 3
	add x3, x0, x10
	bgtu x4, x0, LBB0_3
LBB0_1:                                 //  %if.then
	addi x3, x10, -4
	lui x4, -16843009 >> 12 & 0xfffff
	lui x5, -2139062144 >> 12 & 0xfffff
LBB0_2:                                 //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	ori x28, x0, -16843009 & 0xfff
	slli x28, x28, 20
	lw x7, 4 ( x3 )
	srli x28, x28, 20
	or x9, x4, x28
	ori x28, x0, -2139062144 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	add x9, x9, x7
	not x7, x7
	and x7, x9, x7
	or x9, x5, x28
	and x7, x9, x7
	addi x3, x3, 4
	beqz x7, LBB0_2
LBB0_3:                                 //  %while.cond3.preheader
	addi x3, x3, -1
LBB0_4:                                 //  %while.cond3
                                        //  =>This Inner Loop Header: Depth=1
	lbu x4, 1 ( x3 )
	addi x3, x3, 1
	bgtu x4, x0, LBB0_4
LBB0_5:                                 //  %while.cond8.preheader
	beqz x12, LBB0_10
LBB0_6:                                 //  %land.rhs.preheader
	add x4, x0, x0
LBB0_7:                                 //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	add x5, x4, x11
	lbu x5, 0 ( x5 )
	add x7, x4, x3
	sb x5, 0 ( x7 )
	beqz x5, LBB0_10
LBB0_8:                                 //  %while.body13
                                        //    in Loop: Header=BB0_7 Depth=1
	addi x4, x4, 1
	bne x12, x4, LBB0_7
LBB0_9:                                 //  %while.cond8.backedge.thread
	add x3, x4, x3
	sb x0, 0 ( x3 )
LBB0_10:                                //  %while.end18
	ret
$func_end0:
	.size	$strncat, ($func_end0)-($strncat)
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
