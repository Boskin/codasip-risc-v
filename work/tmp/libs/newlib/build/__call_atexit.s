	.text
	.file	"__call_atexit.bc"
	.globl	$__call_exitprocs
	.type	$__call_exitprocs,@function
$__call_exitprocs:                      //  @__call_exitprocs
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs
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
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, $_global_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_global_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	lw x10, 328 ( x1 )
	nop
	beqz x10, LBB0_40
LBB0_1:
	addi x1, x1, 328
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	jalr x0, LBB0_3 ( x0 )
LBB0_2:                                 //  %restart.loopexit
                                        //    in Loop: Header=BB0_3 Depth=1
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	lw x10, 0 ( x1 )
	nop
	beqz x10, LBB0_40
LBB0_3:                                 //  %while.body.lr.ph.lr.ph
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_4 Depth 2
                                        //        Child Loop BB0_7 Depth 3
                                        //        Child Loop BB0_11 Depth 3
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
LBB0_4:                                 //  %while.body
                                        //    Parent Loop BB0_3 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_7 Depth 3
                                        //        Child Loop BB0_11 Depth 3
	lw x7, 4 ( x10 )
	nop
	ble x7, x0, LBB0_35
LBB0_5:                                 //  %for.body.lr.ph
                                        //    in Loop: Header=BB0_4 Depth=2
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	beqz x1, LBB0_10
LBB0_6:                                 //  %for.body.preheader
                                        //    in Loop: Header=BB0_4 Depth=2
	slli x1, x7, 2
	add x1, x1, x10
	addi x8, x1, 132
LBB0_7:                                 //  %for.body
                                        //    Parent Loop BB0_3 Depth=1
                                        //      Parent Loop BB0_4 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x1, x0, x7
	lw x3, 128 ( x8 )
	addi x7, x1, -1
	lw x4, 32 ( x2 )                //  4-byte Folded Reload
	nop
	bne x3, x4, LBB0_34
LBB0_8:                                 //  %if.end
                                        //    in Loop: Header=BB0_7 Depth=3
	lw x4, 4 ( x10 )
	lw x3, -128 ( x8 )
	bne x1, x4, LBB0_25
LBB0_9:                                 //  %if.then9
                                        //    in Loop: Header=BB0_7 Depth=3
	addi x1, x1, -1
	sw x1, 4 ( x10 )
	jalr x0, LBB0_26 ( x0 )
LBB0_10:                                //  %for.body.us.preheader
                                        //    in Loop: Header=BB0_4 Depth=2
	slli x1, x7, 2
	add x3, x1, x10
	addi x1, x7, -1
	addi x9, x3, 132
LBB0_11:                                //  %for.body.us
                                        //    Parent Loop BB0_3 Depth=1
                                        //      Parent Loop BB0_4 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	addi x8, x1, 1
	lw x3, -128 ( x9 )
	beq x8, x7, LBB0_13
LBB0_12:                                //  %if.else.us
                                        //    in Loop: Header=BB0_11 Depth=3
	sw x0, -128 ( x9 )
	jalr x0, LBB0_14 ( x0 )
LBB0_13:                                //  %if.then9.us
                                        //    in Loop: Header=BB0_11 Depth=3
	addi x4, x7, -1
	sw x4, 4 ( x10 )
LBB0_14:                                //  %if.end13.us
                                        //    in Loop: Header=BB0_11 Depth=3
	beqz x3, LBB0_23
LBB0_15:                                //  %if.end16.us
                                        //    in Loop: Header=BB0_11 Depth=3
	lw x5, 392 ( x10 )
	slti x4, x0, 1
	sll x4, x4, x1
	lw x7, 4 ( x10 )
	and x1, x4, x5
	sw x9, 20 ( x2 )                //  4-byte Folded Spill
	sw x7, 16 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB0_20
LBB0_16:                                //  %if.else22.us
                                        //    in Loop: Header=BB0_11 Depth=3
	lw x5, 396 ( x10 )
	lw x1, 0 ( x9 )
	and x4, x4, x5
	beqz x4, LBB0_19
LBB0_17:                                //  %if.else27.us
                                        //    in Loop: Header=BB0_11 Depth=3
	add x10, x0, x1
	call_reg x3
LBB0_18:                                //  %if.end31.us
                                        //    in Loop: Header=BB0_11 Depth=3
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x9, 20 ( x2 )                //  4-byte Folded Reload
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_21 ( x0 )
LBB0_19:                                //  %if.then25.us
                                        //    in Loop: Header=BB0_11 Depth=3
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call_reg x3
	jalr x0, LBB0_18 ( x0 )
LBB0_20:                                //  %if.then21.us
                                        //    in Loop: Header=BB0_11 Depth=3
	call_reg x3
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	lw x9, 20 ( x2 )                //  4-byte Folded Reload
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_21:                                //  %if.end31.us
                                        //    in Loop: Header=BB0_11 Depth=3
	lw x1, 4 ( x10 )
	nop
	bne x3, x1, LBB0_2
LBB0_22:                                //  %lor.lhs.false34.us
                                        //    in Loop: Header=BB0_11 Depth=3
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x1 )
	nop
	bne x1, x10, LBB0_2
LBB0_23:                                //  %for.cond.backedge.us
                                        //    in Loop: Header=BB0_11 Depth=3
	addi x1, x8, -1
	ble x1, x0, LBB0_35
LBB0_24:                                //  %for.cond.backedge.us.for.body.us_crit_edge
                                        //    in Loop: Header=BB0_11 Depth=3
	addi x1, x1, -1
	addi x9, x9, -4
	lw x7, 4 ( x10 )
	jalr x0, LBB0_11 ( x0 )
LBB0_25:                                //  %if.else
                                        //    in Loop: Header=BB0_7 Depth=3
	sw x0, -128 ( x8 )
LBB0_26:                                //  %if.end13
                                        //    in Loop: Header=BB0_7 Depth=3
	beqz x3, LBB0_34
LBB0_27:                                //  %if.end16
                                        //    in Loop: Header=BB0_7 Depth=3
	lw x1, 392 ( x10 )
	slti x4, x0, 1
	sll x4, x4, x7
	lw x9, 4 ( x10 )
	and x1, x4, x1
	sw x7, 20 ( x2 )                //  4-byte Folded Spill
	sw x9, 16 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB0_29
LBB0_28:                                //  %if.then21
                                        //    in Loop: Header=BB0_7 Depth=3
	call_reg x3
	jalr x0, LBB0_32 ( x0 )
LBB0_29:                                //  %if.else22
                                        //    in Loop: Header=BB0_7 Depth=3
	lw x5, 396 ( x10 )
	lw x1, 0 ( x8 )
	and x4, x4, x5
	bgtu x4, x0, LBB0_31
LBB0_30:                                //  %if.then25
                                        //    in Loop: Header=BB0_7 Depth=3
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call_reg x3
	jalr x0, LBB0_32 ( x0 )
LBB0_31:                                //  %if.else27
                                        //    in Loop: Header=BB0_7 Depth=3
	add x10, x0, x1
	call_reg x3
LBB0_32:                                //  %if.end31
                                        //    in Loop: Header=BB0_7 Depth=3
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	lw x7, 20 ( x2 )                //  4-byte Folded Reload
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	nop
	lw x1, 4 ( x10 )
	nop
	bne x3, x1, LBB0_2
LBB0_33:                                //  %lor.lhs.false34
                                        //    in Loop: Header=BB0_7 Depth=3
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x1 )
	nop
	bne x1, x10, LBB0_2
LBB0_34:                                //  %for.cond.backedge
                                        //    in Loop: Header=BB0_7 Depth=3
	addi x8, x8, -4
	bgt x7, x0, LBB0_7
LBB0_35:                                //  %for.end
                                        //    in Loop: Header=BB0_4 Depth=2
	ori x28, x0, $free & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $free >> 12 & 0xfffff
	or x1, x1, x28
	beqz x1, LBB0_40
LBB0_36:                                //  %if.end40
                                        //    in Loop: Header=BB0_4 Depth=2
	lw x3, 4 ( x10 )
	lw x1, 0 ( x10 )
	bgtu x3, x0, LBB0_39
LBB0_37:                                //  %land.lhs.true43
                                        //    in Loop: Header=BB0_4 Depth=2
	beqz x1, LBB0_40
LBB0_38:                                //  %if.then45
                                        //    in Loop: Header=BB0_4 Depth=2
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x8 )
	call $free
	lw x10, 0 ( x8 )
	nop
	bgtu x10, x0, LBB0_4
	jalr x0, LBB0_40 ( x0 )
LBB0_39:                                //  %if.else47
                                        //    in Loop: Header=BB0_4 Depth=2
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x1
	bgtu x1, x0, LBB0_4
LBB0_40:                                //  %while.end
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
$func_end0:
	.size	$__call_exitprocs, ($func_end0)-($__call_exitprocs)
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
