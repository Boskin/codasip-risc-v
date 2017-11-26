	.text
	.file	"memrchr.bc"
	.globl	$memrchr
	.type	$memrchr,@function
$memrchr:                               //  @memrchr
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
	add x9, x12, x3
	addi x5, x12, -4
	add x10, x0, x0
	andi x4, x11, 255
LBB0_1:                                 //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	add x7, x5, x3
	addi x11, x7, 4
	andi x11, x11, 3
	beqz x11, LBB0_5
LBB0_2:                                 //  %while.body
                                        //    in Loop: Header=BB0_1 Depth=1
	xori x11, x5, -4
	beqz x11, LBB0_17
LBB0_3:                                 //  %if.end
                                        //    in Loop: Header=BB0_1 Depth=1
	lbu x7, 3 ( x7 )
	addi x9, x9, -1
	addi x5, x5, -1
	bne x7, x4, LBB0_1
LBB0_4:                                 //  %if.end.cleanup.loopexit114_crit_edge
	add x3, x5, x3
	addi x10, x3, 4
	ret
LBB0_5:                                 //  %while.end
	addi x3, x5, 4
	bgeu x3, x5, LBB0_7
LBB0_6:
	addi x5, x7, 3
	jalr x0, LBB0_13 ( x0 )
LBB0_7:                                 //  %if.then11
	slli x3, x4, 8
	or x3, x4, x3
	slli x9, x3, 16
	or x9, x3, x9
	add x3, x0, x0
	lui x12, -16843009 >> 12 & 0xfffff
	lui x13, -2139062144 >> 12 & 0xfffff
	addi x14, x0, 3
LBB0_8:                                 //  %while.body26
                                        //  =>This Inner Loop Header: Depth=1
	add x11, x3, x7
	ori x28, x0, -16843009 & 0xfff
	lw x15, 0 ( x11 )
	slli x28, x28, 20
	srli x28, x28, 20
	or x16, x12, x28
	ori x28, x0, -2139062144 & 0xfff
	xor x15, x9, x15
	slli x28, x28, 20
	srli x28, x28, 20
	add x16, x16, x15
	not x15, x15
	and x15, x16, x15
	or x16, x13, x28
	and x15, x16, x15
	bgtu x15, x0, LBB0_11
LBB0_9:                                 //  %if.end32
                                        //    in Loop: Header=BB0_8 Depth=1
	add x11, x3, x5
	addi x3, x3, -4
	bgtu x11, x14, LBB0_8
LBB0_10:                                //  %while.end35split
	add x5, x3, x5
	add x11, x3, x7
	addi x3, x5, 4
	jalr x0, LBB0_12 ( x0 )
LBB0_11:                                //  %while.body26.while.end35_crit_edge
	add x3, x3, x5
	addi x3, x3, 4
LBB0_12:                                //  %while.end35
	addi x5, x11, 3
LBB0_13:                                //  %while.cond39.preheader
	beqz x3, LBB0_17
LBB0_14:                                //  %while.body42
                                        //  =>This Inner Loop Header: Depth=1
	lbu x7, 0 ( x5 )
	nop
	bne x7, x4, LBB0_16
LBB0_15:
	add x10, x0, x5
	ret
LBB0_16:                                //  %if.end48
                                        //    in Loop: Header=BB0_14 Depth=1
	addi x3, x3, -1
	addi x5, x5, -1
	bgtu x3, x0, LBB0_14
LBB0_17:                                //  %cleanup
	ret
$func_end0:
	.size	$memrchr, ($func_end0)-($memrchr)
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
