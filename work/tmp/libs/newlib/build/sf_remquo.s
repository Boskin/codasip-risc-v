	.text
	.file	"sf_remquo.bc"
	.globl	$remquof
	.type	$remquof,@function
$remquof:                               //  @remquof
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi2:
	.cfi_adjust_cfa_offset 40
	sw x1, 36 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 2139095039 & 0xfff
	slli x28, x28, 20
	and x18, x1, x10
	lui x4, 2139095039 >> 12 & 0xfffff
	srli x28, x28, 20
	xor x16, x10, x18
	or x4, x4, x28
	bgt x16, x4, LBB0_2
LBB0_1:                                 //  %entry
	and x7, x3, x11
	addi x3, x7, -1
	lui x4, 2139095040>>12 &0xfffff
	bgtu x4, x3, LBB0_3
LBB0_2:                                 //  %if.then
	sw x0, 0 ( x12 )
	call $__mulsf3
	add x11, x0, x10
	call $__divsf3
	jalr x0, LBB0_55 ( x0 )
LBB0_3:                                 //  %if.end
	xor x3, x10, x11
	and x19, x1, x3
	ble x7, x16, LBB0_5
LBB0_4:
	sw x16, 24 ( x2 )               //  4-byte Folded Spill
	sw x19, 8 ( x2 )                //  4-byte Folded Spill
	sw x18, 12 ( x2 )               //  4-byte Folded Spill
	sw x12, 16 ( x2 )               //  4-byte Folded Spill
	add x1, x0, x0
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_40 ( x0 )
LBB0_5:                                 //  %if.else
	bne x16, x7, LBB0_7
LBB0_6:                                 //  %if.then17
	ori x28, x0, $Zero & 0xfff
	slli x28, x28, 20
	srli x1, x10, 29
	lui x3, $Zero >> 12 & 0xfffff
	srli x28, x28, 20
	slti x4, x0, 1
	andi x1, x1, 4
	or x3, x3, x28
	sw x4, 0 ( x12 )
	jalr x0, LBB0_37 ( x0 )
LBB0_7:                                 //  %if.end19
	ori x28, x0, 8388607 & 0xfff
	slli x28, x28, 20
	lui x1, 8388607 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	bgt x16, x3, LBB0_10
LBB0_8:                                 //  %if.then21
	addi x9, x0, -126
	slli x3, x10, 8
	ble x3, x0, LBB0_11
LBB0_9:                                 //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	slli x3, x3, 1
	addi x9, x9, -1
	bgt x3, x0, LBB0_9
	jalr x0, LBB0_11 ( x0 )
LBB0_10:                                //  %if.else24
	srli x3, x16, 23
	addi x9, x3, -127
LBB0_11:                                //  %if.end27
	ori x28, x0, 8388607 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x1, x28
	bgtu x7, x3, LBB0_14
LBB0_12:                                //  %if.then29
	addi x3, x0, -126
	slli x4, x11, 8
	ble x4, x0, LBB0_15
LBB0_13:                                //  %for.body33
                                        //  =>This Inner Loop Header: Depth=1
	slli x4, x4, 1
	addi x3, x3, -1
	bgt x4, x0, LBB0_13
	jalr x0, LBB0_15 ( x0 )
LBB0_14:                                //  %if.else38
	srli x3, x7, 23
	addi x3, x3, -127
LBB0_15:                                //  %if.end41
	ori x28, x0, 8388607 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	addi x14, x0, -127
	addi x4, x0, -126
	or x13, x1, x28
	lui x5, 8388608>>12 &0xfffff
	ble x3, x14, LBB0_17
LBB0_16:
	and x7, x13, x11
	or x17, x5, x7
	jalr x0, LBB0_18 ( x0 )
LBB0_17:                                //  %if.end41
	sub x15, x4, x3
	sll x17, x7, x15
LBB0_18:                                //  %if.end41
	ble x9, x14, LBB0_20
LBB0_19:
	and x7, x13, x10
	or x7, x5, x7
	jalr x0, LBB0_21 ( x0 )
LBB0_20:                                //  %if.end41
	sub x7, x4, x9
	sll x7, x16, x7
LBB0_21:                                //  %if.end41
	sub x14, x9, x3
	sub x13, x7, x17
	bgtu x14, x0, LBB0_23
LBB0_22:
	add x14, x0, x0
	jalr x0, LBB0_27 ( x0 )
LBB0_23:                                //  %while.body.preheader
	sub x9, x3, x9
	add x15, x0, x0
	not x16, x0
	add x14, x0, x15
LBB0_24:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	bgt x15, x13, LBB0_26
LBB0_25:                                //  %while.body
                                        //    in Loop: Header=BB0_24 Depth=1
	add x7, x0, x13
LBB0_26:                                //  %while.body
                                        //    in Loop: Header=BB0_24 Depth=1
	slt x13, x16, x13
	andi x13, x13, 1
	or x14, x14, x13
	slli x7, x7, 1
	sub x13, x7, x17
	slli x14, x14, 1
	addi x9, x9, 1
	bgtu x9, x0, LBB0_24
LBB0_27:                                //  %while.end
	not x15, x0
	add x9, x0, x13
	bgt x13, x15, LBB0_29
LBB0_28:                                //  %while.end
	add x9, x0, x7
LBB0_29:                                //  %while.end
	slt x7, x13, x0
	or x7, x14, x7
	xori x7, x7, 1
	beqz x9, LBB0_34
LBB0_30:                                //  %while.cond78.preheader
	ori x28, x0, 8388607 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	bgt x9, x1, LBB0_32
LBB0_31:                                //  %while.body80
                                        //  =>This Inner Loop Header: Depth=1
	addi x3, x3, -1
	slli x9, x9, 1
	bgt x5, x9, LBB0_31
LBB0_32:                                //  %while.end83
	sw x19, 8 ( x2 )                //  4-byte Folded Spill
	sw x12, 16 ( x2 )               //  4-byte Folded Spill
	slti x1, x3, -126
	sw x18, 12 ( x2 )               //  4-byte Folded Spill
	sw x7, 20 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB0_38
LBB0_33:                                //  %if.then85
	slli x1, x3, 23
	lui x3, 1065353216>>12 &0xfffff
	add x1, x3, x1
	lui x3, -8388608 >> 12 & 0xfffff
	ori x28, x0, -8388608 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	add x3, x3, x9
	or x1, x1, x3
	jalr x0, LBB0_39 ( x0 )
LBB0_34:                                //  %if.then72
	add x1, x0, x0
	beq x19, x1, LBB0_36
LBB0_35:
	sub x7, x0, x7
LBB0_36:                                //  %if.then72
	sw x7, 0 ( x12 )
	srli x1, x10, 29
	andi x1, x1, 4
	lui x3, $Zero >> 12 & 0xfffff
	ori x28, x0, $Zero & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
LBB0_37:                                //  %cleanup
	add x1, x3, x1
	lw x10, 0 ( x1 )
	jalr x0, LBB0_55 ( x0 )
LBB0_38:                                //  %if.else89
	sub x1, x4, x3
	sra x1, x9, x1
LBB0_39:                                //  %do.body93
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
LBB0_40:                                //  %do.body93
	add x10, x0, x11
	call $fabsf
	add x8, x0, x10
	lui x11, 16777216>>12 &0xfffff
	call $__ltsf2
	bgez x10, LBB0_46
LBB0_41:                                //  %if.then99
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	nop
	add x11, x0, x10
	call $__addsf3
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	call $__gtsf2
	bgt x10, x0, LBB0_45
LBB0_42:                                //  %lor.lhs.false102
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	lw x9, 20 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x9, 1
	beqz x1, LBB0_48
LBB0_43:                                //  %lor.lhs.false102
	add x11, x0, x8
LBB0_44:                                //  %lor.lhs.false102
	call $__nesf2
	bgtu x10, x0, LBB0_50
LBB0_45:                                //  %if.then120
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__subsf3
	lw x9, 20 ( x2 )                //  4-byte Folded Reload
	nop
	addi x9, x9, 1
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	lui x1, 2147483647 >> 12 & 0xfffff
	lw x7, 8 ( x2 )                 //  4-byte Folded Reload
	jalr x0, LBB0_52 ( x0 )
LBB0_46:                                //  %if.else111
	lui x11, 1056964608>>12 &0xfffff
	add x10, x0, x8
	call $__mulsf3
	add x1, x0, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	sw x1, 4 ( x2 )                 //  4-byte Folded Spill
	add x11, x0, x1
	call $__gtsf2
	bgt x10, x0, LBB0_45
LBB0_47:                                //  %lor.lhs.false114
	lw x11, 4 ( x2 )                //  4-byte Folded Reload
	lw x9, 20 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x9, 1
	bgtu x1, x0, LBB0_49
LBB0_48:
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	lui x1, 2147483647 >> 12 & 0xfffff
	lw x7, 8 ( x2 )                 //  4-byte Folded Reload
	jalr x0, LBB0_51 ( x0 )
LBB0_49:                                //  %lor.lhs.false114
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_44 ( x0 )
LBB0_50:
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	lui x1, 2147483647 >> 12 & 0xfffff
	lw x7, 8 ( x2 )                 //  4-byte Folded Reload
	lw x9, 20 ( x2 )                //  4-byte Folded Reload
LBB0_51:                                //  %do.body125
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
LBB0_52:                                //  %do.body125
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x3, x0, x0
	and x1, x1, x9
	beq x7, x3, LBB0_54
LBB0_53:
	sub x1, x0, x1
LBB0_54:                                //  %do.body125
	sw x1, 0 ( x4 )
	xor x10, x5, x10
LBB0_55:                                //  %cleanup
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi5:
	.cfi_adjust_cfa_offset -40
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$remquof, ($func_end0)-($remquof)
	.cfi_endproc

	.address_space	0	
	.type	$Zero,@object           //  @Zero
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
$Zero:
	.long	0                       //  float 0
	.long	2147483648              //  float -0
	.size	$Zero, 8


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
