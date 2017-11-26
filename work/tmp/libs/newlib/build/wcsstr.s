	.text
	.file	"wcsstr.bc"
	.globl	$wcsstr
	.type	$wcsstr,@function
$wcsstr:                                //  @wcsstr
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi2:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	lhu x1, 0 ( x11 )
	nop
	bgtu x1, x0, LBB0_2
LBB0_1:
	add x10, x0, x8
	jalr x0, LBB0_16 ( x0 )
LBB0_2:                                 //  %if.end
	add x10, x0, x8
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	call $wcslen
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $wcslen
	add x1, x0, x10
	add x10, x0, x0
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	bgtu x1, x3, LBB0_16
LBB0_3:                                 //  %while.cond.preheader
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	lhu x4, 0 ( x8 )
	nop
	beqz x4, LBB0_16
LBB0_4:                                 //  %while.cond5.preheader.lr.ph
	add x9, x0, x1
	lhu x1, 0 ( x9 )
	nop
	bgtu x1, x0, LBB0_6
LBB0_5:
	add x10, x0, x8
	jalr x0, LBB0_16 ( x0 )
LBB0_6:                                 //  %while.cond5.preheader.preheader
	lui x3, 65535 >> 12 & 0xfffff
	add x10, x0, x0
LBB0_7:                                 //  %while.cond5.preheader
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_9 Depth 2
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x3, x28
	and x5, x5, x4
	add x4, x0, x9
	bne x5, x1, LBB0_13
LBB0_8:                                 //  %if.end12.preheader
                                        //    in Loop: Header=BB0_7 Depth=1
	add x4, x0, x10
LBB0_9:                                 //  %if.end12
                                        //    Parent Loop BB0_7 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x5, x4, x9
	lhu x5, 2 ( x5 )
	nop
	bgtu x5, x0, LBB0_11
LBB0_10:
	add x10, x0, x8
	jalr x0, LBB0_16 ( x0 )
LBB0_11:                                //  %if.end12.while.body7_crit_edge
                                        //    in Loop: Header=BB0_9 Depth=2
	add x7, x4, x8
	lhu x7, 2 ( x7 )
	addi x4, x4, 2
	beq x7, x5, LBB0_9
LBB0_12:                                //  %while.end.loopexit
                                        //    in Loop: Header=BB0_7 Depth=1
	add x4, x4, x9
LBB0_13:                                //  %while.end
                                        //    in Loop: Header=BB0_7 Depth=1
	lhu x4, 0 ( x4 )
	nop
	bgtu x4, x0, LBB0_15
LBB0_14:
	add x10, x0, x8
	jalr x0, LBB0_16 ( x0 )
LBB0_15:                                //  %if.end16
                                        //    in Loop: Header=BB0_7 Depth=1
	lhu x4, 2 ( x8 )
	addi x8, x8, 2
	bgtu x4, x0, LBB0_7
LBB0_16:                                //  %cleanup
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi5:
	.cfi_adjust_cfa_offset -24
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$wcsstr, ($func_end0)-($wcsstr)
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
