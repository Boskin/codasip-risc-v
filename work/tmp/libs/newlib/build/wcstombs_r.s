	.text
	.file	"wcstombs_r.bc"
	.globl	$_wcstombs_r
	.type	$_wcstombs_r,@function
$_wcstombs_r:                           //  @_wcstombs_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -56
$cfi2:
	.cfi_adjust_cfa_offset 56
	sw x1, 52 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	sw x14, 32 ( x2 )               //  4-byte Folded Spill
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	beqz x11, LBB0_3
LBB0_1:                                 //  %while.cond7.preheader
	bgtu x13, x0, LBB0_9
LBB0_2:
	add x10, x0, x0
	jalr x0, LBB0_25 ( x0 )
LBB0_3:                                 //  %while.cond.preheader
	lhu x3, 0 ( x12 )
	nop
	bgtu x3, x0, LBB0_5
LBB0_4:
	add x10, x0, x0
	jalr x0, LBB0_25 ( x0 )
LBB0_5:                                 //  %while.body.preheader
	add x10, x0, x0
	addi x8, x12, 2
LBB0_6:                                 //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, $__wctomb & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__wctomb >> 12 & 0xfffff
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	call $__locale_charset
	add x1, x0, x10
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	slli x3, x3, 16
	srai x12, x3, 16
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 36
	add x13, x0, x1
	lw x14, 32 ( x2 )               //  4-byte Folded Reload
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	xori x1, x10, -1
	bgtu x1, x0, LBB0_8
LBB0_7:
	not x10, x0
	jalr x0, LBB0_25 ( x0 )
LBB0_8:                                 //  %if.end
                                        //    in Loop: Header=BB0_6 Depth=1
	lhu x3, 0 ( x8 )
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x10
	add x10, x0, x1
	addi x8, x8, 2
	bgtu x3, x0, LBB0_6
	jalr x0, LBB0_25 ( x0 )
LBB0_9:
	sw x13, 4 ( x2 )                //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
LBB0_10:                                //  %while.body10
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_16 Depth 2
	sw x13, 12 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, $__wctomb & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__wctomb >> 12 & 0xfffff
	or x1, x1, x28
	sw x12, 16 ( x2 )               //  4-byte Folded Spill
	lh x3, 0 ( x12 )
	nop
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	lw x1, 0 ( x1 )
	nop
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	call $__locale_charset
	add x1, x0, x10
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 36
	lw x12, 20 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x1
	lw x14, 32 ( x2 )               //  4-byte Folded Reload
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	xori x1, x10, -1
	bgtu x1, x0, LBB0_12
LBB0_11:
	not x10, x0
	jalr x0, LBB0_25 ( x0 )
LBB0_12:                                //  %if.end17
                                        //    in Loop: Header=BB0_10 Depth=1
	add x1, x0, x10
	lw x13, 12 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x13, x10, LBB0_14
LBB0_13:                                //  %if.end17
                                        //    in Loop: Header=BB0_10 Depth=1
	add x1, x0, x13
LBB0_14:                                //  %if.end17
                                        //    in Loop: Header=BB0_10 Depth=1
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	addi x9, x2, 36
	ble x1, x0, LBB0_18
LBB0_15:                                //  %for.body.preheader
                                        //    in Loop: Header=BB0_10 Depth=1
	addi x3, x1, 1
	add x4, x0, x0
LBB0_16:                                //  %for.body
                                        //    Parent Loop BB0_10 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x5, x4, x9
	lb x5, 0 ( x5 )
	add x7, x4, x8
	addi x4, x4, 1
	sb x5, 0 ( x7 )
	bgt x1, x4, LBB0_16
LBB0_17:                                //  %for.end.loopexit
                                        //    in Loop: Header=BB0_10 Depth=1
	add x3, x3, x8
	addi x8, x3, -1
LBB0_18:                                //  %for.end
                                        //    in Loop: Header=BB0_10 Depth=1
	lhu x3, 0 ( x12 )
	nop
	bgtu x3, x0, LBB0_23
LBB0_19:                                //  %if.then26
	bgtu x10, x13, LBB0_21
LBB0_20:
	not x1, x0
	jalr x0, LBB0_22 ( x0 )
LBB0_21:                                //  %if.then26
	add x1, x0, x0
LBB0_22:                                //  %if.then26
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	add x10, x8, x1
	jalr x0, LBB0_25 ( x0 )
LBB0_23:                                //  %if.end29
                                        //    in Loop: Header=BB0_10 Depth=1
	sub x13, x13, x1
	addi x12, x12, 2
	bgtu x13, x0, LBB0_10
LBB0_24:
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
LBB0_25:                                //  %cleanup33
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 56
$cfi5:
	.cfi_adjust_cfa_offset -56
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$_wcstombs_r, ($func_end0)-($_wcstombs_r)
	.cfi_endproc

	.address_space	0	

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
