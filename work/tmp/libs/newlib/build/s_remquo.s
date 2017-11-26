	.text
	.file	"s_remquo.bc"
	.globl	$remquo
	.type	$remquo,@function
$remquo:                                //  @remquo
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
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
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x20, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x20, x28
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 2146435071 & 0xfff
	slli x28, x28, 20
	and x21, x1, x11
	lui x4, 2146435071 >> 12 & 0xfffff
	srli x28, x28, 20
	xor x15, x11, x21
	or x4, x4, x28
	bgt x15, x4, LBB0_3
LBB0_1:                                 //  %entry
	and x4, x3, x13
	or x3, x12, x4
	beqz x3, LBB0_3
LBB0_2:                                 //  %lor.lhs.false15
	ori x28, x0, 2146435073 & 0xfff
	sub x3, x0, x12
	slli x28, x28, 20
	or x3, x3, x12
	slt x3, x3, x0
	lui x5, 2146435073 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x4
	or x5, x5, x28
	bgtu x5, x3, LBB0_4
LBB0_3:                                 //  %if.then
	sw x0, 0 ( x14 )
	call $__muldf3
	add x12, x0, x10
	add x13, x0, x11
	call $__divdf3
	add x8, x0, x10
	jalr x0, LBB0_82 ( x0 )
LBB0_4:                                 //  %if.end
	xor x3, x11, x13
	and x22, x1, x3
	bgt x15, x4, LBB0_10
LBB0_5:                                 //  %if.then21
	add x1, x0, x0
	bgeu x10, x12, LBB0_7
LBB0_6:
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	sw x15, 40 ( x2 )               //  4-byte Folded Spill
	sw x22, 16 ( x2 )               //  4-byte Folded Spill
	sw x21, 24 ( x2 )               //  4-byte Folded Spill
	sw x14, 20 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x10
	jalr x0, LBB0_68 ( x0 )
LBB0_7:                                 //  %if.then21
	bgt x4, x15, LBB0_6
LBB0_8:                                 //  %if.end26
	bne x10, x12, LBB0_10
LBB0_9:                                 //  %if.then28
	ori x28, x0, $Zero & 0xfff
	slli x28, x28, 20
	lui x1, $Zero >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $Zero+4 & 0xfff
	slli x28, x28, 20
	srli x3, x22, 30
	xori x3, x3, 2
	srli x4, x11, 28
	lui x5, $Zero+4 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x3, x3, -1
	andi x4, x4, 8
	or x5, x5, x28
	sw x3, 0 ( x14 )
	add x1, x1, x4
	add x3, x5, x4
	lw x11, 0 ( x3 )
	lw x8, 0 ( x1 )
	jalr x0, LBB0_82 ( x0 )
LBB0_10:                                //  %if.end31
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	lui x1, 1048575 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	bgt x15, x3, LBB0_18
LBB0_11:                                //  %if.then33
	bgtu x15, x0, LBB0_16
LBB0_12:                                //  %for.cond.preheader
	bgt x10, x0, LBB0_14
LBB0_13:
	addi x5, x0, -1043
	jalr x0, LBB0_19 ( x0 )
LBB0_14:                                //  %for.body.preheader
	addi x5, x0, -1043
	add x3, x0, x10
LBB0_15:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	slli x3, x3, 1
	addi x5, x5, -1
	bgt x3, x0, LBB0_15
	jalr x0, LBB0_19 ( x0 )
LBB0_16:                                //  %if.else
	addi x5, x0, -1022
	slli x3, x11, 11
	ble x3, x0, LBB0_19
LBB0_17:                                //  %for.body41
                                        //  =>This Inner Loop Header: Depth=1
	slli x3, x3, 1
	addi x5, x5, -1
	bgt x3, x0, LBB0_17
	jalr x0, LBB0_19 ( x0 )
LBB0_18:                                //  %if.else47
	srli x3, x15, 20
	addi x5, x3, -1023
LBB0_19:                                //  %if.end50
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x1, x28
	bgtu x4, x3, LBB0_27
LBB0_20:                                //  %if.then52
	bgtu x4, x0, LBB0_25
LBB0_21:                                //  %for.cond55.preheader
	bgt x12, x0, LBB0_23
LBB0_22:
	addi x3, x0, -1043
	jalr x0, LBB0_28 ( x0 )
LBB0_23:                                //  %for.body57.preheader
	addi x3, x0, -1043
	add x7, x0, x12
LBB0_24:                                //  %for.body57
                                        //  =>This Inner Loop Header: Depth=1
	slli x7, x7, 1
	addi x3, x3, -1
	bgt x7, x0, LBB0_24
	jalr x0, LBB0_28 ( x0 )
LBB0_25:                                //  %if.else62
	addi x3, x0, -1022
	slli x7, x13, 11
	ble x7, x0, LBB0_28
LBB0_26:                                //  %for.body66
                                        //  =>This Inner Loop Header: Depth=1
	slli x7, x7, 1
	addi x3, x3, -1
	bgt x7, x0, LBB0_26
	jalr x0, LBB0_28 ( x0 )
LBB0_27:                                //  %if.else72
	srli x3, x4, 20
	addi x3, x3, -1023
LBB0_28:                                //  %if.end75
	slti x7, x5, -1022
	bgtu x7, x0, LBB0_30
LBB0_29:                                //  %if.then77
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x7, x1, x28
	and x7, x7, x11
	lui x9, 1048576>>12 &0xfffff
	or x7, x9, x7
	jalr x0, LBB0_33 ( x0 )
LBB0_30:                                //  %if.else80
	addi x7, x0, -1022
	sub x9, x7, x5
	addi x7, x0, 31
	bgt x9, x7, LBB0_32
LBB0_31:                                //  %if.then83
	addi x7, x0, 32
	sub x7, x7, x9
	sll x15, x15, x9
	srl x7, x10, x7
	or x7, x15, x7
	sll x10, x10, x9
	jalr x0, LBB0_33 ( x0 )
LBB0_32:                                //  %if.else89
	addi x7, x9, -32
	sll x7, x10, x7
	add x10, x0, x0
LBB0_33:                                //  %if.end93
	slti x9, x3, -1022
	bgtu x9, x0, LBB0_35
LBB0_34:                                //  %if.then95
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x1, x28
	and x4, x4, x13
	lui x9, 1048576>>12 &0xfffff
	or x9, x9, x4
	add x19, x0, x12
	jalr x0, LBB0_38 ( x0 )
LBB0_35:                                //  %if.else98
	addi x9, x0, -1022
	sub x15, x9, x3
	addi x9, x0, 31
	bgt x15, x9, LBB0_37
LBB0_36:                                //  %if.then101
	addi x9, x0, 32
	sub x9, x9, x15
	sll x4, x4, x15
	srl x9, x12, x9
	or x9, x4, x9
	sll x19, x12, x15
	jalr x0, LBB0_38 ( x0 )
LBB0_37:                                //  %if.else107
	addi x4, x15, -32
	sll x9, x12, x4
	add x19, x0, x0
LBB0_38:                                //  %if.end111
	sub x15, x7, x9
	add x4, x0, x0
	bgeu x10, x19, LBB0_40
LBB0_39:
	not x16, x0
	jalr x0, LBB0_41 ( x0 )
LBB0_40:                                //  %if.end111
	add x16, x0, x4
LBB0_41:                                //  %if.end111
	add x15, x16, x15
	sub x8, x10, x19
	sub x16, x5, x3
	beqz x16, LBB0_49
LBB0_42:                                //  %while.body.preheader
	sub x5, x3, x5
	add x16, x0, x0
	not x17, x0
	add x4, x0, x16
LBB0_43:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	bgez x15, LBB0_45
LBB0_44:                                //  %if.then121
                                        //    in Loop: Header=BB0_43 Depth=1
	slt x15, x10, x0
	slli x7, x7, 1
	or x7, x15, x7
	jalr x0, LBB0_46 ( x0 )
LBB0_45:                                //  %if.else125
                                        //    in Loop: Header=BB0_43 Depth=1
	slt x7, x8, x0
	slli x10, x15, 1
	or x7, x7, x10
	ori x4, x4, 1
	add x10, x0, x8
LBB0_46:                                //  %if.end130
                                        //    in Loop: Header=BB0_43 Depth=1
	slli x10, x10, 1
	add x15, x0, x17
	bgtu x19, x10, LBB0_48
LBB0_47:                                //  %if.end130
                                        //    in Loop: Header=BB0_43 Depth=1
	add x15, x0, x16
LBB0_48:                                //  %if.end130
                                        //    in Loop: Header=BB0_43 Depth=1
	sub x18, x7, x9
	add x15, x15, x18
	sub x8, x10, x19
	slli x4, x4, 1
	addi x5, x5, 1
	bgtu x5, x0, LBB0_43
LBB0_49:                                //  %while.end
	not x9, x0
	bgt x15, x9, LBB0_51
LBB0_50:                                //  %while.end
	add x8, x0, x10
LBB0_51:                                //  %while.end
	add x5, x0, x15
	bgt x15, x9, LBB0_53
LBB0_52:                                //  %while.end
	add x5, x0, x7
LBB0_53:                                //  %while.end
	slt x7, x15, x0
	or x4, x4, x7
	xori x7, x4, 1
	or x4, x8, x5
	beqz x4, LBB0_59
LBB0_54:                                //  %while.cond152.preheader
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x21, 24 ( x2 )               //  4-byte Folded Spill
	sw x7, 28 ( x2 )                //  4-byte Folded Spill
	bgt x5, x1, LBB0_57
LBB0_55:
	lui x1, 1048576>>12 &0xfffff
LBB0_56:                                //  %while.body154
                                        //  =>This Inner Loop Header: Depth=1
	slli x4, x5, 1
	slt x5, x8, x0
	or x5, x5, x4
	addi x3, x3, -1
	slli x8, x8, 1
	bgt x1, x5, LBB0_56
LBB0_57:                                //  %while.end160
	sw x22, 16 ( x2 )               //  4-byte Folded Spill
	sw x14, 20 ( x2 )               //  4-byte Folded Spill
	slti x1, x3, -1022
	bgtu x1, x0, LBB0_62
LBB0_58:                                //  %if.then162
	slli x1, x3, 20
	lui x3, 1072693248>>12 &0xfffff
	add x1, x3, x1
	lui x3, -1048576 >> 12 & 0xfffff
	ori x28, x0, -1048576 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	add x3, x3, x5
	or x1, x1, x3
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_68 ( x0 )
LBB0_59:                                //  %if.then144
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x20, x28
	and x1, x1, x7
	add x3, x0, x0
	beq x22, x3, LBB0_61
LBB0_60:
	sub x1, x0, x1
LBB0_61:                                //  %if.then144
	sw x1, 0 ( x14 )
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
	lw x8, 0 ( x3 )
	jalr x0, LBB0_82 ( x0 )
LBB0_62:                                //  %if.else167
	addi x1, x0, -1022
	sub x1, x1, x3
	addi x3, x0, 20
	bgt x1, x3, LBB0_64
LBB0_63:                                //  %if.then170
	srl x3, x8, x1
	addi x4, x0, 32
	sub x4, x4, x1
	sll x4, x5, x4
	or x8, x3, x4
	srl x1, x5, x1
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_68 ( x0 )
LBB0_64:                                //  %if.else176
	addi x3, x0, 31
	lw x7, 24 ( x2 )                //  4-byte Folded Reload
	bgt x1, x3, LBB0_66
LBB0_65:                                //  %if.then178
	srl x3, x8, x1
	addi x4, x0, 32
	sub x1, x4, x1
	sll x1, x5, x1
	or x8, x3, x1
	jalr x0, LBB0_67 ( x0 )
LBB0_66:                                //  %if.else183
	addi x1, x1, -32
	sra x8, x5, x1
LBB0_67:                                //  %do.body189
	sw x7, 40 ( x2 )                //  4-byte Folded Spill
LBB0_68:                                //  %do.body189
	add x10, x0, x12
	add x11, x0, x13
	call $fabs
	add x12, x0, x0
	lui x13, 2097152>>12 &0xfffff
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	call $__ltdf2
	bgez x10, LBB0_74
LBB0_69:                                //  %if.then198
	add x10, x0, x8
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	add x13, x0, x11
	call $__adddf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	lw x12, 32 ( x2 )               //  4-byte Folded Reload
	lw x13, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__gtdf2
	bgt x10, x0, LBB0_73
LBB0_70:                                //  %lor.lhs.false201
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x4, 32 ( x2 )                //  4-byte Folded Reload
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	lw x7, 28 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x7, 1
	beqz x1, LBB0_76
LBB0_71:                                //  %lor.lhs.false201
	add x12, x0, x4
	add x13, x0, x3
LBB0_72:                                //  %lor.lhs.false201
	call $__nedf2
	bgtu x10, x0, LBB0_78
LBB0_73:                                //  %if.then219
	add x10, x0, x8
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	lw x12, 32 ( x2 )               //  4-byte Folded Reload
	lw x13, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x8, x0, x10
	lw x7, 28 ( x2 )                //  4-byte Folded Reload
	nop
	addi x7, x7, 1
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	lui x1, 2147483647 >> 12 & 0xfffff
	lw x4, 24 ( x2 )                //  4-byte Folded Reload
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_79 ( x0 )
LBB0_74:                                //  %if.else210
	add x12, x0, x0
	lui x13, 1071644672>>12 &0xfffff
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x1
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	add x13, x0, x3
	call $__gtdf2
	bgt x10, x0, LBB0_73
LBB0_75:                                //  %lor.lhs.false213
	lw x13, 8 ( x2 )                //  4-byte Folded Reload
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	lw x7, 28 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x7, 1
	bgtu x1, x0, LBB0_77
LBB0_76:
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	lui x1, 2147483647 >> 12 & 0xfffff
	lw x4, 24 ( x2 )                //  4-byte Folded Reload
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_79 ( x0 )
LBB0_77:                                //  %lor.lhs.false213
	add x10, x0, x8
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_72 ( x0 )
LBB0_78:
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	lui x1, 2147483647 >> 12 & 0xfffff
	lw x4, 24 ( x2 )                //  4-byte Folded Reload
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	lw x7, 28 ( x2 )                //  4-byte Folded Reload
LBB0_79:                                //  %do.body224
	add x9, x0, x0
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	and x1, x1, x7
	beq x5, x9, LBB0_81
LBB0_80:
	sub x1, x0, x1
LBB0_81:                                //  %do.body224
	sw x1, 0 ( x3 )
	xor x11, x4, x11
LBB0_82:                                //  %cleanup
	add x10, x0, x8
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
	.size	$remquo, ($func_end0)-($remquo)
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
