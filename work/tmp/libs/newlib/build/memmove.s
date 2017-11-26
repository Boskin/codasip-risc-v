	.text
	.file	"memmove.bc"
	.globl	$memmove
	.type	$memmove,@function
$memmove:                               //  @memmove
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	bgeu x11, x10, LBB0_4
LBB0_1:                                 //  %land.lhs.true
	add x3, x12, x11
	bgeu x10, x3, LBB0_4
LBB0_2:                                 //  %if.then
	beqz x12, LBB0_7
LBB0_3:                                 //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x3, x12, x11
	lb x3, -1 ( x3 )
	add x4, x12, x10
	addi x12, x12, -1
	sb x3, -1 ( x4 )
	bgtu x12, x0, LBB0_3
	jalr x0, LBB0_7 ( x0 )
LBB0_4:                                 //  %if.else
	sltiu x3, x12, 16
	beqz x3, LBB0_8
LBB0_5:
	add x3, x0, x11
	add x4, x0, x10
LBB0_6:                                 //  %while.cond29.preheader
	bgtu x12, x0, LBB0_10
LBB0_7:                                 //  %if.end36
	ret
LBB0_8:                                 //  %land.lhs.true6
	or x3, x10, x11
	andi x3, x3, 3
	beqz x3, LBB0_15
LBB0_9:
	add x4, x0, x10
	add x3, x0, x11
LBB0_10:                                //  %while.body32
                                        //  =>This Inner Loop Header: Depth=1
	lb x5, 0 ( x3 )
	addi x12, x12, -1
	addi x7, x4, 1
	addi x3, x3, 1
	sb x5, 0 ( x4 )
	add x4, x0, x7
	bgtu x12, x0, LBB0_10
	jalr x0, LBB0_7 ( x0 )
LBB0_11:                                //  %while.cond22.preheader
	sltiu x5, x12, 4
	bgtu x5, x0, LBB0_6
LBB0_12:                                //  %while.body24.preheader
	add x5, x0, x0
	addi x7, x0, 3
LBB0_13:                                //  %while.body24
                                        //  =>This Inner Loop Header: Depth=1
	add x9, x5, x3
	lw x9, 0 ( x9 )
	add x11, x5, x4
	addi x12, x12, -4
	addi x5, x5, 4
	sw x9, 0 ( x11 )
	bgtu x12, x7, LBB0_13
LBB0_14:                                //  %while.end28.loopexit
	add x4, x5, x4
	add x3, x5, x3
	jalr x0, LBB0_6 ( x0 )
LBB0_15:                                //  %while.body12.preheader
	addi x5, x0, 15
	add x7, x0, x10
LBB0_16:                                //  %while.body12
                                        //  =>This Inner Loop Header: Depth=1
	lw x9, 0 ( x11 )
	addi x12, x12, -16
	addi x4, x7, 16
	addi x3, x11, 16
	sw x9, 0 ( x7 )
	lw x9, 4 ( x11 )
	nop
	sw x9, 4 ( x7 )
	lw x9, 8 ( x11 )
	nop
	sw x9, 8 ( x7 )
	lw x9, 12 ( x11 )
	nop
	sw x9, 12 ( x7 )
	add x11, x0, x3
	add x7, x0, x4
	bgtu x12, x5, LBB0_16
	j LBB0_11
$func_end0:
	.size	$memmove, ($func_end0)-($memmove)
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
