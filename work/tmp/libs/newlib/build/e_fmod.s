	.text
	.file	"e_fmod.bc"
	.globl	$__ieee754_fmod
	.type	$__ieee754_fmod,@function
$__ieee754_fmod:                        //  @__ieee754_fmod
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -8
$cfi2:
	.cfi_adjust_cfa_offset 8
	sw x1, 4 ( x2 )
$cfi3:
	.cfi_offset 1, -4
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
	ori x28, x0, 2146435071 & 0xfff
	slli x28, x28, 20
	and x1, x1, x11
	lui x4, 2146435071 >> 12 & 0xfffff
	srli x28, x28, 20
	xor x9, x11, x1
	or x4, x4, x28
	bgt x9, x4, LBB0_3
LBB0_1:                                 //  %entry
	and x5, x3, x13
	or x3, x12, x5
	beqz x3, LBB0_3
LBB0_2:                                 //  %lor.lhs.false13
	ori x28, x0, 2146435073 & 0xfff
	sub x3, x0, x12
	slli x28, x28, 20
	or x3, x3, x12
	slt x3, x3, x0
	lui x4, 2146435073 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x5
	or x4, x4, x28
	bgtu x4, x3, LBB0_4
LBB0_3:                                 //  %if.then
	call $__muldf3
	add x12, x0, x10
	add x13, x0, x11
	call $__divdf3
	jalr x0, LBB0_61 ( x0 )
LBB0_4:                                 //  %if.end
	bgt x9, x5, LBB0_9
LBB0_5:                                 //  %if.then19
	bgtu x12, x10, LBB0_61
LBB0_6:                                 //  %if.then19
	bgt x5, x9, LBB0_61
LBB0_7:                                 //  %if.end24
	bne x10, x12, LBB0_9
LBB0_8:                                 //  %if.then26
	ori x28, x0, $Zero & 0xfff
	slli x28, x28, 20
	lui x1, $Zero >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $Zero+4 & 0xfff
	slli x28, x28, 20
	srli x3, x11, 28
	lui x4, $Zero+4 >> 12 & 0xfffff
	srli x28, x28, 20
	andi x3, x3, 8
	or x4, x4, x28
	add x1, x1, x3
	add x3, x4, x3
	lw x11, 0 ( x3 )
	lw x10, 0 ( x1 )
	jalr x0, LBB0_61 ( x0 )
LBB0_9:                                 //  %if.end29
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	lui x3, 1048575 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x3, x28
	bgt x9, x4, LBB0_17
LBB0_10:                                //  %if.then31
	bgtu x9, x0, LBB0_15
LBB0_11:                                //  %for.cond.preheader
	bgt x10, x0, LBB0_13
LBB0_12:
	addi x7, x0, -1043
	jalr x0, LBB0_18 ( x0 )
LBB0_13:                                //  %for.body.preheader
	addi x7, x0, -1043
	add x4, x0, x10
LBB0_14:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	slli x4, x4, 1
	addi x7, x7, -1
	bgt x4, x0, LBB0_14
	jalr x0, LBB0_18 ( x0 )
LBB0_15:                                //  %if.else
	addi x7, x0, -1022
	slli x4, x11, 11
	ble x4, x0, LBB0_18
LBB0_16:                                //  %for.body39
                                        //  =>This Inner Loop Header: Depth=1
	slli x4, x4, 1
	addi x7, x7, -1
	bgt x4, x0, LBB0_16
	jalr x0, LBB0_18 ( x0 )
LBB0_17:                                //  %if.else45
	srli x4, x9, 20
	addi x7, x4, -1023
LBB0_18:                                //  %if.end48
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x3, x28
	bgtu x5, x4, LBB0_26
LBB0_19:                                //  %if.then50
	bgtu x5, x0, LBB0_24
LBB0_20:                                //  %for.cond53.preheader
	bgt x12, x0, LBB0_22
LBB0_21:
	addi x4, x0, -1043
	jalr x0, LBB0_27 ( x0 )
LBB0_22:                                //  %for.body55.preheader
	addi x4, x0, -1043
	add x14, x0, x12
LBB0_23:                                //  %for.body55
                                        //  =>This Inner Loop Header: Depth=1
	slli x14, x14, 1
	addi x4, x4, -1
	bgt x14, x0, LBB0_23
	jalr x0, LBB0_27 ( x0 )
LBB0_24:                                //  %if.else60
	addi x4, x0, -1022
	slli x14, x13, 11
	ble x14, x0, LBB0_27
LBB0_25:                                //  %for.body64
                                        //  =>This Inner Loop Header: Depth=1
	slli x14, x14, 1
	addi x4, x4, -1
	bgt x14, x0, LBB0_25
	jalr x0, LBB0_27 ( x0 )
LBB0_26:                                //  %if.else70
	srli x4, x5, 20
	addi x4, x4, -1023
LBB0_27:                                //  %if.end73
	slti x14, x7, -1022
	bgtu x14, x0, LBB0_29
LBB0_28:                                //  %if.then75
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x9, x3, x28
	and x9, x9, x11
	lui x14, 1048576>>12 &0xfffff
	or x14, x14, x9
	jalr x0, LBB0_32 ( x0 )
LBB0_29:                                //  %if.else78
	addi x14, x0, -1022
	sub x15, x14, x7
	addi x14, x0, 31
	bgt x15, x14, LBB0_31
LBB0_30:                                //  %if.then81
	addi x14, x0, 32
	sub x14, x14, x15
	sll x9, x9, x15
	srl x14, x10, x14
	or x14, x9, x14
	sll x10, x10, x15
	jalr x0, LBB0_32 ( x0 )
LBB0_31:                                //  %if.else87
	addi x9, x15, -32
	sll x14, x10, x9
	add x10, x0, x0
LBB0_32:                                //  %if.end91
	slti x9, x4, -1022
	bgtu x9, x0, LBB0_34
LBB0_33:                                //  %if.then93
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x3, x28
	and x5, x5, x13
	lui x9, 1048576>>12 &0xfffff
	or x13, x9, x5
	jalr x0, LBB0_37 ( x0 )
LBB0_34:                                //  %if.else96
	addi x9, x0, -1022
	sub x9, x9, x4
	addi x13, x0, 31
	bgt x9, x13, LBB0_36
LBB0_35:                                //  %if.then99
	addi x13, x0, 32
	sub x13, x13, x9
	sll x5, x5, x9
	srl x13, x12, x13
	or x13, x5, x13
	sll x12, x12, x9
	jalr x0, LBB0_37 ( x0 )
LBB0_36:                                //  %if.else105
	addi x5, x9, -32
	sll x13, x12, x5
	add x12, x0, x0
LBB0_37:                                //  %if.end109
	sltu x5, x10, x12
	sub x9, x14, x13
	andi x5, x5, 1
	sub x15, x7, x4
	sub x5, x9, x5
	sub x9, x10, x12
	beqz x15, LBB0_44
LBB0_38:                                //  %while.body.preheader
	sub x7, x4, x7
LBB0_39:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	bgez x5, LBB0_41
LBB0_40:                                //  %if.then118
                                        //    in Loop: Header=BB0_39 Depth=1
	slt x5, x10, x0
	slli x14, x14, 1
	jalr x0, LBB0_43 ( x0 )
LBB0_41:                                //  %if.else122
                                        //    in Loop: Header=BB0_39 Depth=1
	or x10, x9, x5
	beqz x10, LBB0_8
LBB0_42:                                //  %if.end128
                                        //    in Loop: Header=BB0_39 Depth=1
	slt x14, x9, x0
	slli x5, x5, 1
	add x10, x0, x9
LBB0_43:                                //  %while.cond.backedge
                                        //    in Loop: Header=BB0_39 Depth=1
	slli x10, x10, 1
	or x14, x14, x5
	sltu x5, x10, x12
	sub x9, x14, x13
	andi x5, x5, 1
	addi x7, x7, 1
	sub x5, x9, x5
	sub x9, x10, x12
	bgtu x7, x0, LBB0_39
LBB0_44:                                //  %while.end
	not x7, x0
	bgt x5, x7, LBB0_46
LBB0_45:                                //  %while.end
	add x9, x0, x10
LBB0_46:                                //  %while.end
	bgt x5, x7, LBB0_48
LBB0_47:                                //  %while.end
	add x5, x0, x14
LBB0_48:                                //  %while.end
	or x7, x9, x5
	beqz x7, LBB0_62
LBB0_49:                                //  %while.cond149.preheader
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	bgt x5, x3, LBB0_52
LBB0_50:
	lui x3, 1048576>>12 &0xfffff
LBB0_51:                                //  %while.body151
                                        //  =>This Inner Loop Header: Depth=1
	slli x5, x5, 1
	slt x7, x9, x0
	or x5, x5, x7
	addi x4, x4, -1
	slli x9, x9, 1
	bgt x3, x5, LBB0_51
LBB0_52:                                //  %while.end157
	slti x3, x4, -1022
	bgtu x3, x0, LBB0_54
LBB0_53:                                //  %if.then159
	slli x3, x4, 20
	lui x4, 1072693248>>12 &0xfffff
	add x3, x4, x3
	lui x4, -1048576 >> 12 & 0xfffff
	ori x28, x0, -1048576 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	add x4, x4, x5
	or x3, x3, x4
	add x10, x0, x9
	jalr x0, LBB0_60 ( x0 )
LBB0_54:                                //  %if.else173
	addi x3, x0, -1022
	sub x3, x3, x4
	addi x4, x0, 20
	bgt x3, x4, LBB0_56
LBB0_55:                                //  %if.then176
	addi x4, x0, 32
	sub x4, x4, x3
	sll x4, x5, x4
	srl x7, x9, x3
	or x10, x4, x7
	srl x3, x5, x3
	jalr x0, LBB0_60 ( x0 )
LBB0_56:                                //  %if.else182
	addi x4, x0, 31
	bgt x3, x4, LBB0_58
LBB0_57:                                //  %if.then184
	srl x4, x9, x3
	addi x7, x0, 32
	sub x3, x7, x3
	sll x3, x5, x3
	or x10, x4, x3
	jalr x0, LBB0_59 ( x0 )
LBB0_58:                                //  %if.else189
	addi x3, x3, -32
	sra x10, x5, x3
LBB0_59:                                //  %if.end205
	add x3, x0, x1
LBB0_60:                                //  %if.end205
	or x11, x1, x3
LBB0_61:                                //  %cleanup
	lw x1, 4 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 8
$cfi5:
	.cfi_adjust_cfa_offset -8
$cfi6:
	.cfi_def_cfa 2, 0
	ret
LBB0_62:                                //  %if.then145
	srli x1, x11, 28
	andi x1, x1, 8
	lui x3, $Zero >> 12 & 0xfffff
	ori x28, x0, $Zero & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	add x3, x3, x1
	lui x4, $Zero+4 >> 12 & 0xfffff
	ori x28, x0, $Zero+4 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	add x1, x4, x1
	lw x11, 0 ( x1 )
	lw x10, 0 ( x3 )
	jalr x0, LBB0_61 ( x0 )
$func_end0:
	.size	$__ieee754_fmod, ($func_end0)-($__ieee754_fmod)
	.cfi_endproc

	.address_space	0	
	.type	$Zero,@object           //  @Zero
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3
$Zero:
	.quad	0                       //  double 0
	.quad	-9223372036854775808    //  double -0
	.size	$Zero, 16


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
