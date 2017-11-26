	.text
	.file	"wcspbrk.bc"
	.globl	$wcspbrk
	.type	$wcspbrk,@function
$wcspbrk:                               //  @wcspbrk
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
	lhu x4, 0 ( x3 )
	add x10, x0, x0
	beqz x4, LBB0_10
LBB0_1:                                 //  %while.cond1.preheader.lr.ph
	lhu x5, 0 ( x11 )
	nop
	beqz x5, LBB0_4
LBB0_2:                                 //  %while.cond1.preheader.preheader
	addi x7, x11, 2
	lui x9, 65535 >> 12 & 0xfffff
LBB0_3:                                 //  %while.cond1.preheader
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_7 Depth 2
	add x12, x0, x5
	add x11, x0, x7
	jalr x0, LBB0_7 ( x0 )
LBB0_4:                                 //  %while.cond1.preheader.us.preheader
	addi x3, x3, 2
LBB0_5:                                 //  %while.cond1.preheader.us
                                        //  =>This Inner Loop Header: Depth=1
	lhu x4, 0 ( x3 )
	addi x3, x3, 2
	bgtu x4, x0, LBB0_5
	jalr x0, LBB0_10 ( x0 )
LBB0_6:                                 //  %while.cond1
                                        //    in Loop: Header=BB0_7 Depth=2
	lhu x12, 0 ( x11 )
	addi x11, x11, 2
	beqz x12, LBB0_9
LBB0_7:                                 //  %while.body3
                                        //    Parent Loop BB0_3 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x9, x28
	and x12, x13, x12
	and x13, x13, x4
	bne x13, x12, LBB0_6
LBB0_8:
	add x10, x0, x3
	ret
LBB0_9:                                 //  %while.end
                                        //    in Loop: Header=BB0_3 Depth=1
	lhu x4, 2 ( x3 )
	addi x3, x3, 2
	bgtu x4, x0, LBB0_3
LBB0_10:                                //  %cleanup
	ret
$func_end0:
	.size	$wcspbrk, ($func_end0)-($wcspbrk)
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
