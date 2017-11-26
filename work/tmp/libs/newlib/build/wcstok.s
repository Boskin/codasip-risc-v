	.text
	.file	"wcstok.bc"
	.globl	$wcstok
	.type	$wcstok,@function
$wcstok:                                //  @wcstok
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	bgtu x10, x0, LBB0_3
LBB0_1:                                 //  %land.lhs.true
	lw x10, 0 ( x12 )
	nop
	bgtu x10, x0, LBB0_3
LBB0_2:
	add x10, x0, x0
	ret
LBB0_3:                                 //  %cont.preheader
	lui x3, 65535 >> 12 & 0xfffff
LBB0_4:                                 //  %cont
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_5 Depth 2
	addi x4, x10, 2
	lh x5, 0 ( x10 )
	add x7, x0, x11
LBB0_5:                                 //  %for.cond
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lhu x9, 0 ( x7 )
	nop
	beqz x9, LBB0_8
LBB0_6:                                 //  %for.body
                                        //    in Loop: Header=BB0_5 Depth=2
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x3, x28
	and x13, x13, x5
	addi x7, x7, 2
	bne x13, x9, LBB0_5
LBB0_7:                                 //    in Loop: Header=BB0_4 Depth=1
	add x10, x0, x4
	jalr x0, LBB0_4 ( x0 )
LBB0_8:                                 //  %for.end
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x7, x3, x28
	and x7, x7, x5
	add x5, x0, x0
	bgtu x7, x0, LBB0_10
LBB0_9:
	add x10, x0, x5
	add x7, x0, x5
	sw x7, 0 ( x12 )
	ret
LBB0_10:                                //  %for.cond14
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_11 Depth 2
	addi x7, x4, 2
	lh x9, 0 ( x4 )
	add x13, x0, x11
LBB0_11:                                //  %do.body
                                        //    Parent Loop BB0_10 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lhu x14, 0 ( x13 )
	srli x28, x28, 20
	or x15, x3, x28
	and x15, x15, x9
	bne x14, x15, LBB0_14
LBB0_12:                                //  %if.then21
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	and x3, x3, x9
	bgtu x3, x0, LBB0_16
LBB0_13:
	add x7, x0, x5
	sw x7, 0 ( x12 )
	ret
LBB0_14:                                //  %do.cond
                                        //    in Loop: Header=BB0_11 Depth=2
	addi x13, x13, 2
	bgtu x14, x0, LBB0_11
LBB0_15:                                //    in Loop: Header=BB0_10 Depth=1
	add x4, x0, x7
	jalr x0, LBB0_10 ( x0 )
LBB0_16:                                //  %if.else
	sh x0, 0 ( x4 )
	sw x7, 0 ( x12 )
	ret
$func_end0:
	.size	$wcstok, ($func_end0)-($wcstok)
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
