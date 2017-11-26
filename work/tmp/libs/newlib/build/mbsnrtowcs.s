	.text
	.file	"mbsnrtowcs.bc"
	.globl	$_mbsnrtowcs_r
	.type	$_mbsnrtowcs_r,@function
$_mbsnrtowcs_r:                         //  @_mbsnrtowcs_r
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
	sw x15, 28 ( x2 )               //  4-byte Folded Spill
	add x4, x0, x12
	add x8, x0, x11
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	beqz x8, LBB0_3
LBB0_1:                                 //  %if.end
	bgtu x14, x0, LBB0_7
LBB0_2:
	add x3, x0, x0
	jalr x0, LBB0_19 ( x0 )
LBB0_3:                                 //  %while.body.us.preheader
	lw x3, 0 ( x4 )
	add x1, x0, x0
	sw x3, 32 ( x2 )
	add x4, x0, x1
LBB0_4:                                 //  %while.body.us
                                        //  =>This Inner Loop Header: Depth=1
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x0
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x3
	add x8, x0, x13
	lw x14, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $_mbrtowc_r
	ble x10, x0, LBB0_12
LBB0_5:                                 //  %if.then3.us
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	nop
	addi x4, x4, -1
	xori x1, x4, 1
	sub x8, x8, x10
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x10, x3
	add x13, x0, x8
	bgtu x1, x0, LBB0_4
LBB0_6:                                 //  %cleanup.loopexit
	sw x3, 32 ( x2 )
	jalr x0, LBB0_18 ( x0 )
LBB0_7:                                 //  %while.body.preheader
	add x3, x0, x0
	lw x12, 0 ( x4 )
	sw x4, 12 ( x2 )                //  4-byte Folded Spill
	sw x14, 8 ( x2 )                //  4-byte Folded Spill
LBB0_8:                                 //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	sw x13, 16 ( x2 )               //  4-byte Folded Spill
	lw x14, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $_mbrtowc_r
	bgt x10, x0, LBB0_10
LBB0_9:
	lw x8, 16 ( x2 )                //  4-byte Folded Reload
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_13 ( x0 )
LBB0_10:                                //  %if.then3
                                        //    in Loop: Header=BB0_8 Depth=1
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x4 )
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 1
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sub x5, x5, x10
	addi x8, x8, 2
	add x12, x10, x1
	sw x12, 0 ( x4 )
	add x13, x0, x5
	lw x14, 8 ( x2 )                //  4-byte Folded Reload
	nop
	bne x14, x3, LBB0_8
LBB0_11:
	add x3, x0, x14
	jalr x0, LBB0_19 ( x0 )
LBB0_12:                                //  %if.else.loopexit
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 32 ( x2 )
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x0, x1
	addi x4, x2, 32
LBB0_13:                                //  %if.else
	beqz x10, LBB0_16
LBB0_14:                                //  %if.else
	xori x1, x10, -2
	bgtu x1, x0, LBB0_17
LBB0_15:                                //  %if.then7
	lw x1, 0 ( x4 )
	nop
	add x1, x8, x1
	sw x1, 0 ( x4 )
	jalr x0, LBB0_19 ( x0 )
LBB0_16:                                //  %if.then11
	sw x0, 0 ( x4 )
	jalr x0, LBB0_19 ( x0 )
LBB0_17:                                //  %if.else12
	addi x1, x0, 138
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sw x0, 0 ( x3 )
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
LBB0_18:                                //  %cleanup
	not x3, x0
LBB0_19:                                //  %cleanup
	add x10, x0, x3
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
	.size	$_mbsnrtowcs_r, ($func_end0)-($_mbsnrtowcs_r)
	.cfi_endproc

	.globl	$mbsnrtowcs
	.type	$mbsnrtowcs,@function
$mbsnrtowcs:                            //  @mbsnrtowcs
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -48
$cfi9:
	.cfi_adjust_cfa_offset 48
	sw x1, 44 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x12
	add x4, x0, x10
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	beqz x4, LBB1_3
LBB1_1:                                 //  %if.end.i
	bgtu x13, x0, LBB1_7
LBB1_2:
	add x4, x0, x0
	jalr x0, LBB1_19 ( x0 )
LBB1_3:                                 //  %while.body.us.preheader.i
	sw x14, 24 ( x2 )               //  4-byte Folded Spill
	lw x4, 0 ( x11 )
	add x1, x0, x0
	sw x4, 32 ( x2 )
	add x5, x0, x1
LBB1_4:                                 //  %while.body.us.i
                                        //  =>This Inner Loop Header: Depth=1
	sw x5, 20 ( x2 )                //  4-byte Folded Spill
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x0
	add x12, x0, x4
	sw x12, 16 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x3
	add x13, x0, x8
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $_mbrtowc_r
	ble x10, x0, LBB1_12
LBB1_5:                                 //  %if.then3.us.i
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	nop
	addi x5, x5, -1
	xori x1, x5, 1
	sub x8, x8, x10
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x10, x4
	add x3, x0, x8
	bgtu x1, x0, LBB1_4
LBB1_6:                                 //  %cleanup.loopexit.i
	sw x4, 32 ( x2 )
	jalr x0, LBB1_18 ( x0 )
LBB1_7:                                 //  %while.body.preheader.i
	add x1, x0, x0
	lw x8, 0 ( x11 )
	sw x14, 24 ( x2 )               //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	sw x13, 4 ( x2 )                //  4-byte Folded Spill
LBB1_8:                                 //  %while.body.i
                                        //  =>This Inner Loop Header: Depth=1
	sw x4, 12 ( x2 )                //  4-byte Folded Spill
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x4
	add x12, x0, x8
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x3
	call $_mbrtowc_r
	bgt x10, x0, LBB1_10
LBB1_9:
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	lw x4, 20 ( x2 )                //  4-byte Folded Reload
	lw x5, 8 ( x2 )                 //  4-byte Folded Reload
	lw x7, 24 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_13 ( x0 )
LBB1_10:                                //  %if.then3.i
                                        //    in Loop: Header=BB1_8 Depth=1
	add x8, x10, x8
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	sw x8, 0 ( x11 )
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x3, x10
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
	nop
	addi x4, x4, 2
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	lw x13, 4 ( x2 )                //  4-byte Folded Reload
	nop
	bne x13, x1, LBB1_8
LBB1_11:
	add x4, x0, x13
	jalr x0, LBB1_19 ( x0 )
LBB1_12:                                //  %if.else.loopexit.i
	lw x9, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x9, 32 ( x2 )
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sub x4, x0, x1
	addi x5, x2, 32
	lw x7, 24 ( x2 )                //  4-byte Folded Reload
	add x3, x0, x8
	add x8, x0, x9
LBB1_13:                                //  %if.else.i
	beqz x10, LBB1_16
LBB1_14:                                //  %if.else.i
	xori x1, x10, -2
	bgtu x1, x0, LBB1_17
LBB1_15:                                //  %if.then7.i
	add x1, x3, x8
	sw x1, 0 ( x5 )
	jalr x0, LBB1_19 ( x0 )
LBB1_16:                                //  %if.then11.i
	sw x0, 0 ( x5 )
	jalr x0, LBB1_19 ( x0 )
LBB1_17:                                //  %if.else12.i
	addi x1, x0, 138
	sw x0, 0 ( x7 )
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
LBB1_18:                                //  %_mbsnrtowcs_r.exit
	not x4, x0
LBB1_19:                                //  %_mbsnrtowcs_r.exit
	add x10, x0, x4
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	lw x1, 44 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 48
$cfi12:
	.cfi_adjust_cfa_offset -48
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$mbsnrtowcs, ($func_end1)-($mbsnrtowcs)
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
