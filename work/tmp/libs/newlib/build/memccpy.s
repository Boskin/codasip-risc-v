	.text
	.file	"memccpy.bc"
	.globl	$memccpy
	.type	$memccpy,@function
$memccpy:                               //  @memccpy
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	sltiu x3, x13, 4
	bgtu x3, x0, LBB0_5
LBB0_1:                                 //  %land.lhs.true
	or x3, x10, x11
	andi x3, x3, 3
	bgtu x3, x0, LBB0_5
LBB0_2:                                 //  %while.body.preheader
	slli x3, x12, 24
	srai x3, x3, 24
	slli x4, x12, 8
	add x4, x3, x4
	slli x4, x4, 8
	add x4, x3, x4
	slli x4, x4, 8
	add x3, x3, x4
	lui x4, -16843009 >> 12 & 0xfffff
	lui x5, -2139062144 >> 12 & 0xfffff
	addi x7, x0, 3
LBB0_3:                                 //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	ori x28, x0, -16843009 & 0xfff
	lw x9, 0 ( x11 )
	slli x28, x28, 20
	srli x28, x28, 20
	or x14, x4, x28
	ori x28, x0, -2139062144 & 0xfff
	xor x15, x3, x9
	slli x28, x28, 20
	srli x28, x28, 20
	add x14, x14, x15
	not x15, x15
	and x14, x14, x15
	or x15, x5, x28
	and x14, x15, x14
	bgtu x14, x0, LBB0_5
LBB0_4:                                 //  %cleanup
                                        //    in Loop: Header=BB0_3 Depth=1
	addi x13, x13, -4
	sw x9, 0 ( x10 )
	addi x10, x10, 4
	addi x11, x11, 4
	bgtu x13, x7, LBB0_3
LBB0_5:                                 //  %while.cond16.preheader
	slli x3, x12, 24
	srai x5, x3, 24
	add x4, x0, x0
LBB0_6:                                 //  %while.cond16
                                        //  =>This Inner Loop Header: Depth=1
	bgtu x13, x0, LBB0_8
LBB0_7:
	add x3, x0, x4
	add x10, x0, x3
	ret
LBB0_8:                                 //  %while.body18
                                        //    in Loop: Header=BB0_6 Depth=1
	lb x7, 0 ( x11 )
	addi x3, x10, 1
	addi x11, x11, 1
	addi x13, x13, -1
	sb x7, 0 ( x10 )
	add x10, x0, x3
	bne x7, x5, LBB0_6
LBB0_9:                                 //  %while.end27
	add x10, x0, x3
	ret
$func_end0:
	.size	$memccpy, ($func_end0)-($memccpy)
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
