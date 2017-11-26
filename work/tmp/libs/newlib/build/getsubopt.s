	.text
	.file	"getsubopt.bc"
	.globl	$getsubopt
	.type	$getsubopt,@function
$getsubopt:                             //  @getsubopt
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
	ori x28, x0, $suboptarg & 0xfff
	slli x28, x28, 20
	lui x1, $suboptarg >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x0, 0 ( x12 )
	sw x0, 0 ( x1 )
	not x8, x0
	beqz x10, LBB0_37
LBB0_1:                                 //  %lor.lhs.false
	lw x3, 0 ( x10 )
	nop
	beqz x3, LBB0_37
LBB0_2:                                 //  %for.cond.preheader
	addi x1, x0, 31
LBB0_3:                                 //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	lbu x4, 0 ( x3 )
	nop
	bgt x4, x1, LBB0_7
LBB0_4:                                 //  %for.cond
                                        //    in Loop: Header=BB0_3 Depth=1
	xori x5, x4, 9
	beqz x5, LBB0_9
LBB0_5:                                 //  %for.cond
	bgtu x4, x0, LBB0_10
LBB0_6:                                 //  %if.then13
	sw x3, 0 ( x10 )
	jalr x0, LBB0_37 ( x0 )
LBB0_7:                                 //  %for.cond
                                        //    in Loop: Header=BB0_3 Depth=1
	xori x5, x4, 44
	beqz x5, LBB0_9
LBB0_8:                                 //  %for.cond
                                        //    in Loop: Header=BB0_3 Depth=1
	xori x4, x4, 32
	bgtu x4, x0, LBB0_10
LBB0_9:                                 //  %for.inc
                                        //    in Loop: Header=BB0_3 Depth=1
	addi x3, x3, 1
	jalr x0, LBB0_3 ( x0 )
LBB0_10:                                //  %if.end14
	ori x28, x0, $suboptarg & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, $suboptarg >> 12 & 0xfffff
	or x4, x4, x28
	sw x3, 0 ( x4 )
	addi x4, x3, 1
LBB0_11:                                //  %for.cond15
                                        //  =>This Inner Loop Header: Depth=1
	addi x3, x4, 1
	lbu x4, 0 ( x4 )
	nop
	bgt x4, x1, LBB0_15
LBB0_12:                                //  %for.cond15
                                        //    in Loop: Header=BB0_11 Depth=1
	beqz x4, LBB0_31
LBB0_13:                                //  %for.cond15
                                        //    in Loop: Header=BB0_11 Depth=1
	xori x5, x4, 9
	add x4, x0, x3
	bgtu x5, x0, LBB0_11
LBB0_14:                                //  %if.else
	addi x1, x3, -1
	sb x0, 0 ( x1 )
	jalr x0, LBB0_27 ( x0 )
LBB0_15:                                //  %for.cond15
                                        //    in Loop: Header=BB0_11 Depth=1
	xori x5, x4, 32
	beqz x5, LBB0_14
LBB0_16:                                //  %for.cond15
                                        //    in Loop: Header=BB0_11 Depth=1
	xori x5, x4, 44
	beqz x5, LBB0_14
LBB0_17:                                //  %for.cond15
                                        //    in Loop: Header=BB0_11 Depth=1
	xori x5, x4, 61
	add x4, x0, x3
	bgtu x5, x0, LBB0_11
LBB0_18:                                //  %if.then42
	sb x0, -1 ( x3 )
	sw x3, 0 ( x12 )
	add x4, x0, x3
LBB0_19:                                //  %for.cond44
                                        //  =>This Inner Loop Header: Depth=1
	lbu x3, 0 ( x4 )
	nop
	bgt x3, x1, LBB0_23
LBB0_20:                                //  %for.cond44
                                        //    in Loop: Header=BB0_19 Depth=1
	beqz x3, LBB0_26
LBB0_21:                                //  %for.cond44
                                        //    in Loop: Header=BB0_19 Depth=1
	xori x3, x3, 9
	bgtu x3, x0, LBB0_25
LBB0_22:                                //  %if.then65
	addi x3, x4, 1
	sb x0, 0 ( x4 )
	jalr x0, LBB0_27 ( x0 )
LBB0_23:                                //  %for.cond44
                                        //    in Loop: Header=BB0_19 Depth=1
	xori x5, x3, 32
	beqz x5, LBB0_22
LBB0_24:                                //  %for.cond44
                                        //    in Loop: Header=BB0_19 Depth=1
	xori x3, x3, 44
	beqz x3, LBB0_22
LBB0_25:                                //  %for.inc61
                                        //    in Loop: Header=BB0_19 Depth=1
	addi x4, x4, 1
	jalr x0, LBB0_19 ( x0 )
LBB0_26:                                //  %for.cond70.preheader.loopexit
	add x3, x0, x4
LBB0_27:                                //  %for.cond70
                                        //  =>This Inner Loop Header: Depth=1
	lbu x1, 0 ( x3 )
	nop
	xori x4, x1, 9
	beqz x4, LBB0_30
LBB0_28:                                //  %for.cond70
                                        //    in Loop: Header=BB0_27 Depth=1
	xori x4, x1, 44
	beqz x4, LBB0_30
LBB0_29:                                //  %for.cond70
                                        //    in Loop: Header=BB0_27 Depth=1
	xori x1, x1, 32
	bgtu x1, x0, LBB0_32
LBB0_30:                                //  %for.inc88
                                        //    in Loop: Header=BB0_27 Depth=1
	addi x3, x3, 1
	jalr x0, LBB0_27 ( x0 )
LBB0_31:                                //  %if.end91.loopexit179
	addi x3, x3, -1
LBB0_32:                                //  %if.end91
	sw x3, 0 ( x10 )
	lw x1, 0 ( x11 )
	nop
	beqz x1, LBB0_37
LBB0_33:                                //  %for.body94.preheader
	add x8, x0, x0
	addi x3, x11, 4
LBB0_34:                                //  %for.body94
                                        //  =>This Inner Loop Header: Depth=1
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	ori x28, x0, $suboptarg & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $suboptarg >> 12 & 0xfffff
	or x3, x3, x28
	lw x10, 0 ( x3 )
	add x11, x0, x1
	call $strcmp
	beqz x10, LBB0_37
LBB0_35:                                //  %for.inc98
                                        //    in Loop: Header=BB0_34 Depth=1
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	addi x3, x1, 4
	addi x8, x8, 1
	lw x1, 0 ( x1 )
	nop
	bgtu x1, x0, LBB0_34
LBB0_36:
	not x8, x0
LBB0_37:                                //  %cleanup
	add x10, x0, x8
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
	.size	$getsubopt, ($func_end0)-($getsubopt)
	.cfi_endproc

	.address_space	0	
	.type	$suboptarg,@object      //  @suboptarg
	.comm	$suboptarg,4,4

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
