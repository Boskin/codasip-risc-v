	.text
	.file	"mempcpy.bc"
	.globl	$mempcpy
	.type	$mempcpy,@function
$mempcpy:                               //  @mempcpy
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
	sltiu x4, x12, 16
	beqz x4, LBB0_7
LBB0_1:
	add x4, x0, x11
	add x10, x0, x3
LBB0_2:                                 //  %while.cond17.preheader
	beqz x12, LBB0_6
LBB0_3:                                 //  %while.body19.preheader
	add x3, x0, x12
	add x5, x0, x10
LBB0_4:                                 //  %while.body19
                                        //  =>This Inner Loop Header: Depth=1
	lb x7, 0 ( x4 )
	addi x3, x3, -1
	addi x9, x5, 1
	addi x4, x4, 1
	sb x7, 0 ( x5 )
	add x5, x0, x9
	bgtu x3, x0, LBB0_4
LBB0_5:                                 //  %while.end22.loopexit
	add x10, x12, x10
LBB0_6:                                 //  %while.end22
	ret
LBB0_7:                                 //  %land.lhs.true
	or x4, x3, x11
	andi x4, x4, 3
	beqz x4, LBB0_13
LBB0_8:
	add x10, x0, x3
	add x4, x0, x11
	jalr x0, LBB0_3 ( x0 )
LBB0_9:                                 //  %while.cond10.preheader
	sltiu x3, x12, 4
	bgtu x3, x0, LBB0_2
LBB0_10:                                //  %while.body12.preheader
	add x3, x0, x0
	addi x5, x0, 3
LBB0_11:                                //  %while.body12
                                        //  =>This Inner Loop Header: Depth=1
	add x7, x3, x4
	lw x7, 0 ( x7 )
	add x9, x3, x10
	addi x12, x12, -4
	addi x3, x3, 4
	sw x7, 0 ( x9 )
	bgtu x12, x5, LBB0_11
LBB0_12:                                //  %while.end16.loopexit
	add x10, x3, x10
	add x4, x3, x4
	jalr x0, LBB0_2 ( x0 )
LBB0_13:                                //  %while.body.preheader
	addi x5, x0, 15
LBB0_14:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x7, 0 ( x11 )
	addi x12, x12, -16
	addi x10, x3, 16
	addi x4, x11, 16
	sw x7, 0 ( x3 )
	lw x7, 4 ( x11 )
	nop
	sw x7, 4 ( x3 )
	lw x7, 8 ( x11 )
	nop
	sw x7, 8 ( x3 )
	lw x7, 12 ( x11 )
	nop
	sw x7, 12 ( x3 )
	add x11, x0, x4
	add x3, x0, x10
	bgtu x12, x5, LBB0_14
	j LBB0_9
$func_end0:
	.size	$mempcpy, ($func_end0)-($mempcpy)
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
