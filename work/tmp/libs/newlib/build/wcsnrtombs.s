	.text
	.file	"wcsnrtombs.bc"
	.globl	$_wcsnrtombs_r
	.type	$_wcsnrtombs_r,@function
$_wcsnrtombs_r:                         //  @_wcsnrtombs_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -80
$cfi2:
	.cfi_adjust_cfa_offset 80
	sw x1, 76 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 68 ( x2 )                //  4-byte Folded Spill
	sw x15, 32 ( x2 )               //  4-byte Folded Spill
	sw x12, 20 ( x2 )               //  4-byte Folded Spill
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	add x5, x0, x0
	bne x11, x5, LBB0_2
LBB0_1:
	not x14, x0
LBB0_2:                                 //  %entry
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 0 ( x1 )
	sw x14, 24 ( x2 )               //  4-byte Folded Spill
	sw x11, 4 ( x2 )                //  4-byte Folded Spill
	beqz x11, LBB0_14
LBB0_3:                                 //  %while.cond.outer.us.preheader
	add x5, x0, x0
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
LBB0_4:                                 //  %while.cond.outer.us
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_13 Depth 2
	bgeu x5, x14, LBB0_25
LBB0_5:                                 //  %land.rhs.lr.ph.land.rhs.lr.ph.split_crit_edge.us
                                        //    in Loop: Header=BB0_4 Depth=1
	beqz x13, LBB0_25
LBB0_6:                                 //  %while.body.us86
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x5, 52 ( x2 )                //  4-byte Folded Spill
	sw x13, 48 ( x2 )               //  4-byte Folded Spill
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
	lh x1, 0 ( x3 )
	nop
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $__wctomb & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__wctomb >> 12 & 0xfffff
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x8 )
	nop
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	lw x1, 0 ( x8 )
	nop
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	call $__locale_charset
	add x1, x0, x10
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 58
	lw x12, 40 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x1
	add x14, x0, x8
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	xori x1, x10, -1
	beqz x1, LBB0_17
LBB0_7:                                 //  %if.end7.us90
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x5, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x5, x10
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	nop
	bgeu x14, x1, LBB0_11
LBB0_8:                                 //  %if.else.us93
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x3, 0 ( x1 )
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_24 ( x0 )
LBB0_9:                                 //  %for.end.us.loopexit
                                        //    in Loop: Header=BB0_4 Depth=1
	add x9, x10, x9
	sw x9, 16 ( x2 )                //  4-byte Folded Spill
LBB0_10:                                //  %for.end.us
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	addi x13, x13, -1
	lw x4, 20 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 0 ( x4 )
	nop
	addi x3, x3, 2
	sw x3, 0 ( x4 )
	addi x3, x5, 2
	lhu x4, 0 ( x5 )
	add x5, x0, x1
	bgtu x4, x0, LBB0_4
	jalr x0, LBB0_20 ( x0 )
LBB0_11:                                //  %for.cond.preheader.us
                                        //    in Loop: Header=BB0_4 Depth=1
	ble x10, x0, LBB0_10
LBB0_12:                                //  %for.body.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x3, x2, 58
	add x4, x0, x10
	lw x9, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x5, x0, x9
LBB0_13:                                //  %for.body.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lb x7, 0 ( x3 )
	nop
	sb x7, 0 ( x5 )
	addi x3, x3, 1
	addi x5, x5, 1
	addi x4, x4, -1
	bgtu x4, x0, LBB0_13
	jalr x0, LBB0_9 ( x0 )
LBB0_14:                                //  %while.cond.outer
                                        //  =>This Inner Loop Header: Depth=1
	bgeu x5, x14, LBB0_25
LBB0_15:                                //  %land.rhs
                                        //    in Loop: Header=BB0_14 Depth=1
	beqz x13, LBB0_25
LBB0_16:                                //  %while.body
                                        //    in Loop: Header=BB0_14 Depth=1
	sw x5, 52 ( x2 )                //  4-byte Folded Spill
	sw x13, 48 ( x2 )               //  4-byte Folded Spill
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
	lh x1, 0 ( x3 )
	nop
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $__wctomb & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__wctomb >> 12 & 0xfffff
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x8 )
	nop
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	lw x1, 0 ( x8 )
	nop
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	call $__locale_charset
	add x1, x0, x10
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 58
	lw x12, 40 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x1
	add x14, x0, x8
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	xori x1, x10, -1
	bgtu x1, x0, LBB0_18
LBB0_17:                                //  %if.then5
	addi x1, x0, 138
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x0, 0 ( x1 )
	not x5, x0
	jalr x0, LBB0_25 ( x0 )
LBB0_18:                                //  %if.end7
                                        //    in Loop: Header=BB0_14 Depth=1
	lw x5, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x5, x10
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x1, x14, LBB0_23
LBB0_19:                                //  %if.end14
                                        //    in Loop: Header=BB0_14 Depth=1
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	nop
	addi x13, x13, -1
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x4, 2
	lhu x4, 0 ( x4 )
	add x5, x0, x1
	bgtu x4, x0, LBB0_14
LBB0_20:                                //  %if.then18
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	beqz x3, LBB0_22
LBB0_21:                                //  %if.then20
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x0, 0 ( x3 )
LBB0_22:                                //  %if.end21
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x0, 0 ( x3 )
	addi x5, x1, -1
	jalr x0, LBB0_25 ( x0 )
LBB0_23:                                //  %if.else
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 0 ( x1 )
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_24:                                //  %cleanup30
	sw x3, 4 ( x1 )
LBB0_25:                                //  %cleanup30
	add x10, x0, x5
	lw x8, 68 ( x2 )                //  4-byte Folded Reload
	lw x1, 76 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 80
$cfi5:
	.cfi_adjust_cfa_offset -80
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$_wcsnrtombs_r, ($func_end0)-($_wcsnrtombs_r)
	.cfi_endproc

	.globl	$wcsnrtombs
	.type	$wcsnrtombs,@function
$wcsnrtombs:                            //  @wcsnrtombs
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	add x3, x0, x14
	add x4, x0, x13
	add x5, x0, x12
	add x7, x0, x11
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x9, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x9, x9, x28
	lw x9, 0 ( x9 )
	add x11, x0, x10
	add x12, x0, x7
	add x13, x0, x5
	add x10, x0, x9
	add x14, x0, x4
	add x15, x0, x3
	j $_wcsnrtombs_r
$func_end1:
	.size	$wcsnrtombs, ($func_end1)-($wcsnrtombs)
	.cfi_endproc

	.address_space	0	
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
