	.text
	.file	"stpncpy.bc"
	.globl	$stpncpy
	.type	$stpncpy,@function
$stpncpy:                               //  @stpncpy
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
	bgtu x3, x0, LBB0_6
LBB0_1:                                 //  %entry
	or x4, x10, x11
	andi x4, x4, 3
	bgtu x4, x0, LBB0_6
LBB0_2:                                 //  %if.then
	bgtu x3, x0, LBB0_6
LBB0_3:                                 //  %land.rhs.preheader
	lui x3, -16843009 >> 12 & 0xfffff
	lui x4, -2139062144 >> 12 & 0xfffff
	addi x5, x0, 3
LBB0_4:                                 //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	ori x28, x0, -16843009 & 0xfff
	slli x28, x28, 20
	lw x7, 0 ( x11 )
	srli x28, x28, 20
	or x9, x3, x28
	ori x28, x0, -2139062144 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	add x9, x9, x7
	not x13, x7
	and x9, x9, x13
	or x13, x4, x28
	and x9, x13, x9
	bgtu x9, x0, LBB0_6
LBB0_5:                                 //  %while.body
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x12, x12, -4
	sw x7, 0 ( x10 )
	addi x10, x10, 4
	addi x11, x11, 4
	bgtu x12, x5, LBB0_4
LBB0_6:                                 //  %while.cond8.preheader
	add x5, x0, x0
LBB0_7:                                 //  %while.cond8
                                        //  =>This Inner Loop Header: Depth=1
	beq x12, x5, LBB0_13
LBB0_8:                                 //  %while.body10
                                        //    in Loop: Header=BB0_7 Depth=1
	add x3, x5, x11
	lbu x3, 0 ( x3 )
	add x4, x5, x10
	addi x5, x5, 1
	sb x3, 0 ( x4 )
	bgtu x3, x0, LBB0_7
LBB0_9:                                 //  %while.cond18.preheader
	add x4, x5, x10
	addi x3, x4, -1
	beq x12, x5, LBB0_14
LBB0_10:                                //  %while.body22.preheader
	slti x7, x0, 1
	sub x9, x7, x12
	sub x7, x12, x5
	add x9, x5, x9
	add x5, x5, x10
	add x10, x0, x0
LBB0_11:                                //  %while.body22
                                        //  =>This Inner Loop Header: Depth=1
	add x11, x10, x5
	add x12, x10, x9
	sb x0, 0 ( x11 )
	addi x10, x10, 1
	bgtu x12, x0, LBB0_11
LBB0_12:                                //  %while.end24.loopexit
	add x4, x7, x4
	jalr x0, LBB0_14 ( x0 )
LBB0_13:                                //  %while.end24.loopexit66
	add x4, x5, x10
	add x3, x0, x0
LBB0_14:                                //  %while.end24
	add x5, x0, x0
	bne x3, x5, LBB0_16
LBB0_15:                                //  %while.end24
	add x3, x0, x4
LBB0_16:                                //  %while.end24
	add x10, x0, x3
	ret
$func_end0:
	.size	$stpncpy, ($func_end0)-($stpncpy)
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
