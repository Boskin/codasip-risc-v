	.text
	.file	"wcsrchr.bc"
	.globl	$wcsrchr
	.type	$wcsrchr,@function
$wcsrchr:                               //  @wcsrchr
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x4, x10, -2
LBB0_1:                                 //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lhu x3, 2 ( x4 )
	addi x4, x4, 2
	bgtu x3, x0, LBB0_1
LBB0_2:                                 //  %while.cond1.preheader
	add x3, x0, x0
	bgtu x10, x4, LBB0_9
LBB0_3:                                 //  %while.body2.preheader
	bgtu x11, x0, LBB0_5
LBB0_4:
	add x3, x0, x4
	add x10, x0, x3
	ret
LBB0_5:                                 //  %if.end.preheader
	addi x4, x4, -2
	lui x5, 65535 >> 12 & 0xfffff
LBB0_6:                                 //  %if.end
                                        //  =>This Inner Loop Header: Depth=1
	bgtu x10, x4, LBB0_9
LBB0_7:                                 //  %if.end.while.body2_crit_edge
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lhu x7, 0 ( x4 )
	srli x28, x28, 20
	or x9, x5, x28
	and x9, x9, x11
	addi x4, x4, -2
	bne x7, x9, LBB0_6
LBB0_8:                                 //  %if.end.while.body2_crit_edge.cleanup.loopexit_crit_edge
	addi x3, x4, 2
LBB0_9:                                 //  %cleanup
	add x10, x0, x3
	ret
$func_end0:
	.size	$wcsrchr, ($func_end0)-($wcsrchr)
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