	.text
	.file	"wcsnlen.bc"
	.globl	$wcsnlen
	.type	$wcsnlen,@function
$wcsnlen:                               //  @wcsnlen
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
	beqz x11, LBB0_5
LBB0_1:                                 //  %entry
	lhu x4, 0 ( x10 )
	nop
	sltu x3, x0, x4
	andi x5, x3, 1
	add x3, x0, x10
	beqz x5, LBB0_5
LBB0_2:                                 //  %while.body.preheader
	seqz x5, x4
	add x4, x0, x10
LBB0_3:                                 //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	not x3, x5
	andi x3, x3, 1
	sub x11, x11, x3
	addi x3, x4, 2
	beqz x11, LBB0_5
LBB0_4:                                 //  %while.body
                                        //    in Loop: Header=BB0_3 Depth=1
	lhu x4, 2 ( x4 )
	nop
	sltu x7, x0, x4
	seqz x5, x4
	add x4, x0, x3
	bgtu x7, x0, LBB0_3
LBB0_5:                                 //  %while.end
	sub x3, x3, x10
	srai x10, x3, 1
	ret
$func_end0:
	.size	$wcsnlen, ($func_end0)-($wcsnlen)
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
