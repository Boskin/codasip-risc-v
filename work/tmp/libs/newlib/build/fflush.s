	.text
	.file	"fflush.bc"
	.globl	$__sflush_r
	.type	$__sflush_r,@function
$__sflush_r:                            //  @__sflush_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi2:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x5, x0, x11
	add x7, x0, x10
	lh x1, 12 ( x5 )
	nop
	andi x3, x1, 8
	sw x5, 12 ( x2 )                //  4-byte Folded Spill
	sw x7, 8 ( x2 )                 //  4-byte Folded Spill
	bgtu x3, x0, LBB0_28
LBB0_1:                                 //  %if.then
	ori x28, x0, 2048 & 0xfff
	slli x28, x28, 20
	lui x3, 2048 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	or x3, x3, x1
	sh x3, 12 ( x5 )
	lw x1, 4 ( x5 )
	nop
	bgt x1, x0, LBB0_3
LBB0_2:                                 //  %lor.lhs.false
	lw x1, 60 ( x5 )
	nop
	ble x1, x0, LBB0_35
LBB0_3:                                 //  %land.lhs.true
	lw x1, 40 ( x5 )
	nop
	beqz x1, LBB0_35
LBB0_4:                                 //  %if.then11
	lui x4, 4096>>12 
	and x3, x4, x3
	lw x4, 0 ( x7 )
	nop
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	sw x0, 0 ( x7 )
	beqz x3, LBB0_18
LBB0_5:                                 //  %if.then16
	lw x12, 80 ( x5 )
LBB0_6:                                 //  %if.end40
	lbu x1, 12 ( x5 )
	nop
	andi x1, x1, 4
	beqz x1, LBB0_9
LBB0_7:                                 //  %if.then45
	lw x1, 4 ( x5 )
	lw x3, 48 ( x5 )
	sub x12, x12, x1
	beqz x3, LBB0_9
LBB0_8:                                 //  %if.then49
	lw x1, 60 ( x5 )
	nop
	sub x12, x12, x1
LBB0_9:                                 //  %if.end53
	lw x11, 28 ( x5 )
	lw x1, 40 ( x5 )
	add x13, x0, x0
	add x10, x0, x7
	add x8, x0, x13
	call_reg x1
	lw x7, 8 ( x2 )                 //  4-byte Folded Reload
	xori x1, x10, -1
	bgtu x1, x0, LBB0_12
LBB0_10:                                //  %lor.lhs.false59
	lw x3, 0 ( x7 )
	addi x4, x0, 29
	bgtu x3, x4, LBB0_33
LBB0_11:                                //  %lor.lhs.false59
	slti x4, x0, 1
	sll x3, x4, x3
	lui x4, 541065217 >> 12 & 0xfffff
	ori x28, x0, 541065217 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	and x3, x4, x3
	beqz x3, LBB0_33
LBB0_12:                                //  %if.then71
	ori x28, x0, 63487 & 0xfff
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	nop
	lhu x3, 12 ( x5 )
	slli x28, x28, 20
	lui x4, 63487 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	and x4, x4, x3
	sh x4, 12 ( x5 )
	sw x0, 4 ( x5 )
	lw x4, 16 ( x5 )
	lui x9, 4096>>12 
	and x3, x9, x3
	sw x4, 0 ( x5 )
	beqz x3, LBB0_16
LBB0_13:                                //  %land.lhs.true82
	bgtu x1, x0, LBB0_15
LBB0_14:                                //  %lor.lhs.false85
	lw x1, 0 ( x7 )
	nop
	bgtu x1, x0, LBB0_16
LBB0_15:                                //  %if.then89
	sw x10, 80 ( x5 )
LBB0_16:                                //  %if.end91
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x7 )
	lw x11, 48 ( x5 )
	nop
	bgtu x11, x0, LBB0_25
LBB0_17:
	add x10, x0, x8
	jalr x0, LBB0_36 ( x0 )
LBB0_18:                                //  %if.else
	lw x11, 28 ( x5 )
	add x8, x0, x0
	slti x13, x0, 1
	add x10, x0, x7
	add x12, x0, x8
	call_reg x1
	lw x7, 8 ( x2 )                 //  4-byte Folded Reload
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	add x12, x0, x10
	xori x1, x12, -1
	bgtu x1, x0, LBB0_6
LBB0_19:                                //  %land.lhs.true20
	lw x1, 0 ( x7 )
	nop
	bgtu x1, x0, LBB0_21
LBB0_20:
	not x12, x0
	jalr x0, LBB0_6 ( x0 )
LBB0_21:                                //  %land.lhs.true20
	xori x3, x1, 29
	beqz x3, LBB0_23
LBB0_22:                                //  %land.lhs.true20
	xori x1, x1, 22
	bgtu x1, x0, LBB0_24
LBB0_23:                                //  %if.then32
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x7 )
	add x10, x0, x8
	jalr x0, LBB0_36 ( x0 )
LBB0_24:                                //  %if.else34
	lh x1, 12 ( x5 )
	nop
	ori x1, x1, 64
	sh x1, 12 ( x5 )
	not x10, x0
	jalr x0, LBB0_36 ( x0 )
LBB0_25:                                //  %if.then97
	addi x1, x5, 64
	beq x11, x1, LBB0_27
LBB0_26:                                //  %if.then102
	add x10, x0, x7
	call $_free_r
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_27:                                //  %if.end105
	sw x0, 48 ( x5 )
	add x10, x0, x8
	jalr x0, LBB0_36 ( x0 )
LBB0_28:                                //  %if.end117
	lw x9, 16 ( x5 )
	nop
	beqz x9, LBB0_35
LBB0_29:                                //  %if.end123
	lw x3, 0 ( x5 )
	andi x4, x1, 3
	sw x9, 0 ( x5 )
	add x10, x0, x0
	sub x8, x3, x9
	add x1, x0, x10
	bgtu x4, x0, LBB0_31
LBB0_30:                                //  %cond.false
	lw x1, 20 ( x5 )
	nop
LBB0_31:                                //  %cond.end
	sw x1, 8 ( x5 )
	ble x8, x0, LBB0_36
LBB0_32:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x11, 28 ( x5 )
	lw x1, 36 ( x5 )
	add x10, x0, x7
	add x12, x0, x9
	sw x12, 16 ( x2 )               //  4-byte Folded Spill
	add x13, x0, x8
	call_reg x1
	bgt x10, x0, LBB0_34
LBB0_33:                                //  %if.else109
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	lh x1, 12 ( x3 )
	not x10, x0
	ori x1, x1, 64
	sh x1, 12 ( x3 )
	jalr x0, LBB0_36 ( x0 )
LBB0_34:                                //  %if.end141
                                        //    in Loop: Header=BB0_32 Depth=1
	sub x8, x8, x10
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x10, x1
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	lw x7, 8 ( x2 )                 //  4-byte Folded Reload
	add x9, x0, x1
	bgt x8, x0, LBB0_32
LBB0_35:
	add x10, x0, x0
LBB0_36:                                //  %cleanup143
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi5:
	.cfi_adjust_cfa_offset -32
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__sflush_r, ($func_end0)-($__sflush_r)
	.cfi_endproc

	.globl	$_fflush_r
	.type	$_fflush_r,@function
$_fflush_r:                             //  @_fflush_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi9:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	beqz x8, LBB1_3
LBB1_1:                                 //  %land.lhs.true
	lw x1, 56 ( x8 )
	nop
	bgtu x1, x0, LBB1_3
LBB1_2:                                 //  %if.then
	add x10, x0, x8
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	call $__sinit
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
LBB1_3:                                 //  %if.end
	lhu x1, 12 ( x11 )
	nop
	bgtu x1, x0, LBB1_5
LBB1_4:
	add x10, x0, x0
	jalr x0, LBB1_6 ( x0 )
LBB1_5:                                 //  %if.end4
	add x10, x0, x8
	call $__sflush_r
LBB1_6:                                 //  %cleanup
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi12:
	.cfi_adjust_cfa_offset -24
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$_fflush_r, ($func_end1)-($_fflush_r)
	.cfi_endproc

	.globl	$fflush
	.type	$fflush,@function
$fflush:                                //  @fflush
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi14:
	.cfi_def_cfa 2, 0
$cfi15:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi16:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi17:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	bgtu x8, x0, LBB2_2
LBB2_1:                                 //  %if.then
	ori x28, x0, $_global_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_global_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $_fflush_r & 0xfff
	lw x10, 0 ( x1 )
	slli x28, x28, 20
	lui x1, $_fflush_r >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $_fwalk_reent
	jalr x0, LBB2_8 ( x0 )
LBB2_2:                                 //  %if.end
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x10, 0 ( x1 )
	nop
	beqz x10, LBB2_5
LBB2_3:                                 //  %land.lhs.true.i
	lw x1, 56 ( x10 )
	nop
	bgtu x1, x0, LBB2_5
LBB2_4:                                 //  %if.then.i
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	call $__sinit
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
LBB2_5:                                 //  %if.end.i
	lhu x1, 12 ( x8 )
	nop
	bgtu x1, x0, LBB2_7
LBB2_6:
	add x10, x0, x0
	jalr x0, LBB2_8 ( x0 )
LBB2_7:                                 //  %if.end4.i
	add x11, x0, x8
	call $__sflush_r
LBB2_8:                                 //  %return
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi18:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi19:
	.cfi_adjust_cfa_offset -24
$cfi20:
	.cfi_def_cfa 2, 0
	ret
$func_end2:
	.size	$fflush, ($func_end2)-($fflush)
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
