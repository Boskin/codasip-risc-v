	.text
	.file	"getdelim.bc"
	.globl	$__getdelim
	.type	$__getdelim,@function
$__getdelim:                            //  @__getdelim
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -48
$cfi2:
	.cfi_adjust_cfa_offset 48
	sw x1, 44 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	sw x13, 28 ( x2 )               //  4-byte Folded Spill
	sw x12, 24 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	beqz x8, LBB0_3
LBB0_1:                                 //  %entry
	beqz x10, LBB0_3
LBB0_2:                                 //  %entry
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_4
LBB0_3:                                 //  %if.then
	call $__errno
	addi x1, x0, 22
	sw x1, 0 ( x10 )
	not x10, x0
	jalr x0, LBB0_25 ( x0 )
LBB0_4:                                 //  %if.end
	lw x1, 0 ( x10 )
	nop
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	beqz x1, LBB0_6
LBB0_5:                                 //  %lor.lhs.false5
	lw x4, 0 ( x8 )
	addi x1, x0, 3
	bgtu x4, x1, LBB0_9
LBB0_6:                                 //  %if.then7
	addi x11, x0, 128
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $realloc
	bgtu x10, x0, LBB0_8
LBB0_7:
	not x10, x0
	jalr x0, LBB0_25 ( x0 )
LBB0_8:                                 //  %if.end11
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	sw x10, 0 ( x1 )
	addi x1, x0, 128
	sw x1, 0 ( x8 )
	add x4, x0, x1
LBB0_9:                                 //  %do.body
	lui x1, $_impure_ptr >> 12 & 0xfffff
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lw x10, 0 ( x1 )
	nop
	beqz x10, LBB0_12
LBB0_10:                                //  %land.lhs.true
	lw x1, 56 ( x10 )
	nop
	bgtu x1, x0, LBB0_12
LBB0_11:                                //  %if.then14
	call $__sinit
	lw x4, 0 ( x8 )
LBB0_12:                                //  %while.cond22.preheader.lr.ph.preheader
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	slti x1, x0, 1
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
LBB0_13:                                //  %while.cond22.preheader.lr.ph
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_14 Depth 2
	sub x8, x1, x4
LBB0_14:                                //  %while.cond22
                                        //    Parent Loop BB0_13 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	beqz x8, LBB0_19
LBB0_15:                                //  %while.body25
                                        //    in Loop: Header=BB0_14 Depth=2
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $getc_unlocked
	xori x1, x10, -1
	bgtu x1, x0, LBB0_17
LBB0_16:
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_21 ( x0 )
LBB0_17:                                //  %if.else
                                        //    in Loop: Header=BB0_14 Depth=2
	addi x8, x8, 1
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sb x10, 0 ( x3 )
	addi x3, x3, 1
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	bne x10, x1, LBB0_14
LBB0_18:
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_22 ( x0 )
LBB0_19:                                //  %if.then37
                                        //    in Loop: Header=BB0_13 Depth=1
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x1 )
	nop
	slli x11, x1, 1
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	call $realloc
	bgtu x10, x0, LBB0_26
LBB0_20:
	add x1, x0, x0
LBB0_21:                                //  %while.end44
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_22:                                //  %while.end44
	bne x3, x1, LBB0_24
LBB0_23:
	not x10, x0
	jalr x0, LBB0_25 ( x0 )
LBB0_24:                                //  %if.end60
	sb x0, 0 ( x3 )
	sub x10, x3, x1
LBB0_25:                                //  %cleanup
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	lw x1, 44 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 48
$cfi5:
	.cfi_adjust_cfa_offset -48
$cfi6:
	.cfi_def_cfa 2, 0
	ret
LBB0_26:                                //  %if.end42
                                        //    in Loop: Header=BB0_13 Depth=1
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x8
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 0 ( x3 )
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x4, 0 ( x3 )
	sub x4, x4, x1
	add x3, x1, x10
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	slti x1, x0, 1
	jalr x0, LBB0_13 ( x0 )
$func_end0:
	.size	$__getdelim, ($func_end0)-($__getdelim)
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
