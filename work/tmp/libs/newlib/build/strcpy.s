	.text
	.file	"strcpy.bc"
	.globl	$strcpy
	.type	$strcpy,@function
$strcpy:                                //  @strcpy
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	or x3, x10, x11
	andi x3, x3, 3
	beqz x3, LBB0_2
LBB0_1:
	add x3, x0, x10
	jalr x0, LBB0_6 ( x0 )
LBB0_2:                                 //  %if.then
	ori x28, x0, -16843009 & 0xfff
	slli x28, x28, 20
	lw x5, 0 ( x11 )
	lui x4, -16843009 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x4, x28
	ori x28, x0, -2139062144 & 0xfff
	slli x28, x28, 20
	add x3, x3, x5
	not x9, x5
	lui x7, -2139062144 >> 12 & 0xfffff
	srli x28, x28, 20
	and x3, x3, x9
	or x9, x7, x28
	and x3, x9, x3
	beqz x3, LBB0_4
LBB0_3:
	add x3, x0, x10
	jalr x0, LBB0_6 ( x0 )
LBB0_4:                                 //  %while.body.preheader
	add x3, x0, x10
LBB0_5:                                 //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	ori x28, x0, -16843009 & 0xfff
	slli x28, x28, 20
	lw x9, 4 ( x11 )
	srli x28, x28, 20
	or x12, x4, x28
	ori x28, x0, -2139062144 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	add x12, x12, x9
	not x13, x9
	and x12, x12, x13
	or x13, x7, x28
	and x12, x13, x12
	sw x5, 0 ( x3 )
	addi x3, x3, 4
	addi x11, x11, 4
	add x5, x0, x9
	beqz x12, LBB0_5
LBB0_6:                                 //  %while.cond6
                                        //  =>This Inner Loop Header: Depth=1
	lbu x4, 0 ( x11 )
	addi x5, x3, 1
	addi x11, x11, 1
	sb x4, 0 ( x3 )
	add x3, x0, x5
	bgtu x4, x0, LBB0_6
LBB0_7:                                 //  %while.end11
	ret
$func_end0:
	.size	$strcpy, ($func_end0)-($strcpy)
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
