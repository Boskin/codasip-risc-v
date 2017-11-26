	.text
	.file	"strncpy.bc"
	.globl	$strncpy
	.type	$strncpy,@function
$strncpy:                               //  @strncpy
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	sltiu x3, x12, 4
	beqz x3, LBB0_2
LBB0_1:
	add x3, x0, x10
	jalr x0, LBB0_9 ( x0 )
LBB0_2:                                 //  %entry
	or x4, x10, x11
	andi x4, x4, 3
	beqz x4, LBB0_4
LBB0_3:
	add x3, x0, x10
	jalr x0, LBB0_9 ( x0 )
LBB0_4:                                 //  %if.then
	beqz x3, LBB0_6
LBB0_5:
	add x3, x0, x10
	jalr x0, LBB0_9 ( x0 )
LBB0_6:                                 //  %land.rhs.preheader
	lui x4, -16843009 >> 12 & 0xfffff
	lui x5, -2139062144 >> 12 & 0xfffff
	addi x7, x0, 3
	add x3, x0, x10
LBB0_7:                                 //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	ori x28, x0, -16843009 & 0xfff
	slli x28, x28, 20
	lw x9, 0 ( x11 )
	srli x28, x28, 20
	or x13, x4, x28
	ori x28, x0, -2139062144 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	add x13, x13, x9
	not x14, x9
	and x13, x13, x14
	or x14, x5, x28
	and x13, x14, x13
	bgtu x13, x0, LBB0_9
LBB0_8:                                 //  %while.body
                                        //    in Loop: Header=BB0_7 Depth=1
	addi x12, x12, -4
	sw x9, 0 ( x3 )
	addi x3, x3, 4
	addi x11, x11, 4
	bgtu x12, x7, LBB0_7
LBB0_9:                                 //  %while.cond8
	beqz x12, LBB0_16
LBB0_10:                                //  %while.body10.preheader
	addi x7, x12, -1
LBB0_11:                                //  %while.body10
                                        //  =>This Inner Loop Header: Depth=1
	lb x9, 0 ( x11 )
	addi x4, x7, -1
	addi x5, x3, 1
	sb x9, 0 ( x3 )
	beqz x7, LBB0_13
LBB0_12:                                //  %while.body10
                                        //    in Loop: Header=BB0_11 Depth=1
	addi x11, x11, 1
	andi x9, x9, 255
	add x3, x0, x5
	add x7, x0, x4
	bgtu x9, x0, LBB0_11
LBB0_13:                                //  %while.cond18.preheader
	xori x3, x4, -1
	beqz x3, LBB0_16
LBB0_14:                                //  %while.body22.preheader
	add x3, x0, x0
LBB0_15:                                //  %while.body22
                                        //  =>This Inner Loop Header: Depth=1
	add x7, x0, x3
	add x3, x7, x5
	sb x0, 0 ( x3 )
	addi x3, x7, 1
	bne x7, x4, LBB0_15
LBB0_16:                                //  %while.end24
	ret
$func_end0:
	.size	$strncpy, ($func_end0)-($strncpy)
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
