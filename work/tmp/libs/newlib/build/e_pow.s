	.text
	.file	"e_pow.bc"
	.globl	$__ieee754_pow
	.type	$__ieee754_pow,@function
$__ieee754_pow:                         //  @__ieee754_pow
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11, 10, 11
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -88
$cfi2:
	.cfi_adjust_cfa_offset 88
	sw x1, 84 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 76 ( x2 )                //  4-byte Folded Spill
	add x9, x0, x11
	add x14, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x8, x1, x13
	or x3, x12, x8
	lui x5, 1072693248>>12 &0xfffff
	add x4, x0, x0
	bgtu x3, x0, LBB0_103
LBB0_102:                               //  %entry
	jalr x0, LBB0_101 ( x0 )
LBB0_103:                               //  %entry
LBB0_1:                                 //  %if.end
	and x7, x1, x9
	lui x10, 2146435072>>12 &0xfffff
	bgtu x7, x10, LBB0_6
LBB0_2:                                 //  %lor.lhs.false
	xor x1, x10, x7
	seqz x1, x1
	sltu x3, x0, x14
	and x1, x1, x3
	bgtu x1, x0, LBB0_6
LBB0_3:                                 //  %lor.lhs.false
	bgtu x8, x10, LBB0_6
LBB0_4:                                 //  %lor.lhs.false17
	beqz x12, LBB0_8
LBB0_5:                                 //  %lor.lhs.false17
	lui x1, 2146435072>>12 &0xfffff
	bne x8, x1, LBB0_8
LBB0_6:                                 //  %if.then21
	ori x28, x0, -1072693248 & 0xfff
	slli x28, x28, 20
	lui x1, -1072693248 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x7
	or x1, x14, x1
	bgtu x1, x0, LBB0_105
LBB0_104:                               //  %if.then21
	jalr x0, LBB0_101 ( x0 )
LBB0_105:                               //  %if.then21
LBB0_7:                                 //  %if.else
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	call $nan
	jalr x0, LBB0_47 ( x0 )
LBB0_8:                                 //  %if.end25
	add x4, x0, x0
	sw x7, 72 ( x2 )                //  4-byte Folded Spill
	bgez x9, LBB0_15
LBB0_9:                                 //  %if.then27
	ori x28, x0, 1128267775 & 0xfff
	slli x28, x28, 20
	lui x1, 1128267775 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgeu x1, x8, LBB0_11
LBB0_10:
	addi x4, x0, 2
	jalr x0, LBB0_15 ( x0 )
LBB0_11:                                //  %if.else30
	lui x1, 1072693248>>12 &0xfffff
	bgtu x1, x8, LBB0_15
LBB0_12:                                //  %if.then32
	srli x1, x8, 20
	addi x3, x1, -1023
	slti x3, x3, 21
	bgtu x3, x0, LBB0_27
LBB0_13:                                //  %if.then35
	addi x3, x0, 1075
	sub x3, x3, x1
	srl x1, x12, x3
	sll x3, x1, x3
	bne x3, x12, LBB0_15
LBB0_14:                                //  %if.then40
	andi x1, x1, 1
	addi x3, x0, 2
	sub x4, x3, x1
LBB0_15:                                //  %if.end60
	beqz x12, LBB0_32
LBB0_16:                                //  %if.end97
	sw x4, 68 ( x2 )                //  4-byte Folded Spill
	sw x12, 52 ( x2 )               //  4-byte Folded Spill
	sw x13, 56 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x14
	sw x9, 64 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x9
	sw x14, 60 ( x2 )               //  4-byte Folded Spill
	call $fabs
	lw x5, 60 ( x2 )                //  4-byte Folded Reload
	add x9, x0, x10
	add x14, x0, x11
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	bgtu x5, x0, LBB0_59
LBB0_17:                                //  %if.then100
	beqz x11, LBB0_19
LBB0_18:                                //  %if.then100
	lui x1, 1073741824>>12 &0xfffff
	or x1, x1, x11
	lui x3, 2146435072>>12 &0xfffff
	bne x1, x3, LBB0_59
LBB0_19:                                //  %if.then106
	add x10, x0, x0
	lui x11, 1072693248>>12 &0xfffff
	sw x9, 60 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x9
	add x13, x0, x14
	add x8, x0, x14
	call $__divdf3
	add x4, x0, x10
	add x3, x0, x0
	add x5, x0, x11
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x3, x1, LBB0_21
LBB0_20:                                //  %if.then106
	add x5, x0, x8
LBB0_21:                                //  %if.then106
	lw x7, 64 ( x2 )                //  4-byte Folded Reload
	bgt x3, x1, LBB0_23
LBB0_22:                                //  %if.then106
	lw x4, 60 ( x2 )                //  4-byte Folded Reload
LBB0_23:                                //  %if.then106
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	lw x8, 72 ( x2 )                //  4-byte Folded Reload
	bgt x0, x7, LBB0_107
LBB0_106:                               //  %if.then106
	jalr x0, LBB0_101 ( x0 )
LBB0_107:                               //  %if.then106
LBB0_24:                                //  %if.then112
	lui x1, -1072693248 >> 12 & 0xfffff
	ori x28, x0, -1072693248 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x8
	or x1, x1, x3
	bgtu x1, x0, LBB0_54
LBB0_25:                                //  %if.then116
	add x10, x0, x4
	add x11, x0, x5
	add x12, x0, x4
	add x13, x0, x5
LBB0_26:                                //  %cleanup
	call $__subdf3
	add x12, x0, x10
	add x13, x0, x11
	jalr x0, LBB0_46 ( x0 )
LBB0_27:                                //  %if.else44
	beqz x12, LBB0_29
LBB0_28:
	add x4, x0, x0
	jalr x0, LBB0_16 ( x0 )
LBB0_29:                                //  %if.then46
	addi x3, x0, 1043
	sub x3, x3, x1
	srl x1, x8, x3
	sll x3, x1, x3
	beq x3, x8, LBB0_31
LBB0_30:
	add x4, x0, x0
	jalr x0, LBB0_32 ( x0 )
LBB0_31:                                //  %if.then52
	andi x1, x1, 1
	addi x3, x0, 2
	sub x4, x3, x1
LBB0_32:                                //  %if.then62
	lui x1, 2146435072>>12 &0xfffff
	bne x8, x1, LBB0_42
LBB0_33:                                //  %if.then64
	ori x28, x0, -1072693248 & 0xfff
	slli x28, x28, 20
	lui x1, -1072693248 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	or x1, x14, x1
	bgtu x1, x0, LBB0_35
LBB0_34:
	add x4, x0, x0
	jalr x0, LBB0_101 ( x0 )
LBB0_35:                                //  %if.else69
	lui x1, 1072693248>>12 &0xfffff
	bgtu x1, x3, LBB0_41
LBB0_36:                                //  %if.then71
	not x3, x0
	add x1, x0, x0
	bgt x13, x3, LBB0_38
LBB0_37:                                //  %if.then71
	add x12, x0, x1
LBB0_38:                                //  %if.then71
	bgt x13, x3, LBB0_40
LBB0_39:                                //  %if.then71
	add x13, x0, x1
LBB0_40:                                //  %if.then71
	add x5, x0, x13
	add x4, x0, x12
	jalr x0, LBB0_101 ( x0 )
LBB0_41:                                //  %if.else73
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	srai x3, x13, 31
	xor x1, x1, x13
	and x4, x12, x3
	and x5, x1, x3
	jalr x0, LBB0_101 ( x0 )
LBB0_42:                                //  %if.end80
	lui x1, 1072693248>>12 &0xfffff
	bne x8, x1, LBB0_48
LBB0_43:                                //  %if.then82
	bgt x0, x13, LBB0_45
LBB0_44:
	add x5, x0, x9
	add x4, x0, x14
	jalr x0, LBB0_101 ( x0 )
LBB0_45:                                //  %if.then84
	add x10, x0, x0
	lui x11, 1072693248>>12 &0xfffff
	add x12, x0, x14
	add x13, x0, x9
LBB0_46:                                //  %cleanup
	call $__divdf3
LBB0_47:                                //  %cleanup
	add x4, x0, x10
	add x5, x0, x11
	jalr x0, LBB0_101 ( x0 )
LBB0_48:                                //  %if.end86
	lui x1, 1073741824>>12 &0xfffff
	bne x13, x1, LBB0_51
LBB0_49:                                //  %if.then88
	add x10, x0, x14
	add x11, x0, x9
	add x12, x0, x14
	add x13, x0, x9
	call $__muldf3
	jalr x0, LBB0_47 ( x0 )
LBB0_51:                                //  %if.end89
	bgt x0, x9, LBB0_16
LBB0_52:                                //  %if.end89
	lui x1, 1071644672>>12 &0xfffff
	bne x13, x1, LBB0_16
LBB0_53:                                //  %if.then93
	add x10, x0, x14
	add x11, x0, x9
	call $__ieee754_sqrt
	jalr x0, LBB0_47 ( x0 )
LBB0_54:                                //  %if.else120
	add x10, x0, x0
	lui x1, -2147483648 >> 12 & 0xfffff
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	add x12, x0, x4
	sw x5, 72 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x5
	add x8, x0, x4
	call $__subdf3
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	slti x1, x0, 1
	beq x3, x1, LBB0_56
LBB0_55:                                //  %if.else120
	add x10, x0, x8
LBB0_56:                                //  %if.else120
	beq x3, x1, LBB0_58
LBB0_57:                                //  %if.else120
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
LBB0_58:                                //  %if.else120
	lw x8, 76 ( x2 )                //  4-byte Folded Reload
	lw x1, 84 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 88
$cfi5:
	.cfi_adjust_cfa_offset -88
$cfi6:
	.cfi_def_cfa 2, 0
	ret
LBB0_59:                                //  %if.end128
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	nop
	slt x1, x4, x0
	addi x3, x1, -1
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	or x1, x3, x1
	bgtu x1, x0, LBB0_61
LBB0_60:                                //  %if.then133
	add x10, x0, x5
	add x11, x0, x4
	add x12, x0, x5
	add x13, x0, x4
	jalr x0, LBB0_26 ( x0 )
LBB0_61:                                //  %if.end137
	ori x28, x0, 1105199105 & 0xfff
	slli x28, x28, 20
	lui x1, 1105199105 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x1, x8, LBB0_73
LBB0_62:                                //  %if.then139
	ori x28, x0, 1139802113 & 0xfff
	slli x28, x28, 20
	lui x1, 1139802113 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x1, x8, LBB0_68
LBB0_63:                                //  %if.then141
	ori x28, x0, 1072693247 & 0xfff
	slli x28, x28, 20
	lui x1, 1072693247 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x11, x1, LBB0_65
LBB0_64:                                //  %if.then143
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	srai x1, x1, 31
	lui x3, 2146435072>>12 &0xfffff
	and x5, x3, x1
	add x4, x0, x0
	jalr x0, LBB0_101 ( x0 )
LBB0_65:                                //  %if.then151
	add x4, x0, x0
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	ble x1, x4, LBB0_67
LBB0_66:
	lui x5, 2146435072>>12 &0xfffff
	jalr x0, LBB0_101 ( x0 )
LBB0_67:                                //  %if.then151
	add x5, x0, x4
	jalr x0, LBB0_101 ( x0 )
LBB0_68:                                //  %if.end158
	ori x28, x0, 1072693246 & 0xfff
	slli x28, x28, 20
	lui x1, 1072693246 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgeu x1, x11, LBB0_64
LBB0_69:                                //  %if.end166
	ori x28, x0, 1072693249 & 0xfff
	slli x28, x28, 20
	lui x1, 1072693249 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x1, x11, LBB0_72
LBB0_70:                                //  %if.then168
	add x4, x0, x0
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	lui x5, 2146435072>>12 &0xfffff
	ble x1, x4, LBB0_109
LBB0_108:                               //  %if.then168
	jalr x0, LBB0_101 ( x0 )
LBB0_109:                               //  %if.then168
LBB0_71:                                //  %if.then168
	add x5, x0, x4
	jalr x0, LBB0_101 ( x0 )
LBB0_72:                                //  %if.end174
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, -1074790400 & 0xfff
	slli x28, x28, 20
	lui x1, -1074790400 >> 12 & 0xfffff
	srli x28, x28, 20
	add x12, x0, x0
	or x13, x1, x28
	add x10, x0, x9
	add x11, x0, x14
	call $__adddf3
	sw x11, 64 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1076887552 & 0xfff
	slli x28, x28, 20
	lui x1, -1076887552 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x8, x0, x10
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x0
	call $__muldf3
	ori x28, x0, 1431655765 & 0xfff
	slli x28, x28, 20
	lui x1, 1431655765 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1070945621 & 0xfff
	slli x28, x28, 20
	lui x1, 1070945621 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lui x11, 1071644672>>12 &0xfffff
	add x10, x0, x0
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	sw x10, 72 ( x2 )               //  4-byte Folded Spill
	sw x11, 60 ( x2 )               //  4-byte Folded Spill
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x10
	add x8, x0, x10
	add x13, x0, x11
	call $__muldf3
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	lw x13, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	ori x28, x0, 1697350398 & 0xfff
	slli x28, x28, 20
	lui x1, 1697350398 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1074326201 & 0xfff
	slli x28, x28, 20
	lui x1, -1074326201 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__muldf3
	sw x10, 72 ( x2 )               //  4-byte Folded Spill
	sw x11, 60 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -128065724 & 0xfff
	slli x28, x28, 20
	lui x1, -128065724 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1045736971 & 0xfff
	slli x28, x28, 20
	lui x1, 1045736971 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x10, x0, x8
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	lw x13, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	sw x10, 72 ( x2 )               //  4-byte Folded Spill
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1073157447 & 0xfff
	slli x28, x28, 20
	lui x1, 1073157447 >> 12 & 0xfffff
	srli x28, x28, 20
	lui x12, 1610612736>>12 &0xfffff
	or x13, x1, x28
	add x10, x0, x8
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x8, x0, x10
	sw x11, 64 ( x2 )               //  4-byte Folded Spill
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	add x10, x0, x0
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	sw x11, 60 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x8
	lw x13, 64 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_82 ( x0 )
LBB0_73:                                //  %if.else195
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	lui x8, 1048575 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x8, x28
	add x7, x0, x0
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	bgeu x1, x11, LBB0_75
LBB0_74:
	add x1, x0, x7
	jalr x0, LBB0_76 ( x0 )
LBB0_75:                                //  %if.then197
	add x12, x0, x0
	lui x13, 1128267776>>12 &0xfffff
	add x10, x0, x9
	add x11, x0, x14
	call $__muldf3
	add x7, x0, x0
	add x9, x0, x10
	addi x1, x0, -53
LBB0_76:                                //  %if.end206
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x8, x28
	ori x28, x0, 235663 & 0xfff
	slli x28, x28, 20
	srai x4, x11, 20
	lui x5, 235663 >> 12 & 0xfffff
	srli x28, x28, 20
	add x4, x1, x4
	and x1, x3, x11
	lui x3, 1072693248>>12 &0xfffff
	or x5, x5, x28
	or x8, x3, x1
	addi x4, x4, -1023
	sw x7, 44 ( x2 )                //  4-byte Folded Spill
	bgtu x5, x1, LBB0_80
LBB0_77:                                //  %if.else214
	ori x28, x0, 767610 & 0xfff
	slli x28, x28, 20
	lui x3, 767610 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	bgeu x1, x3, LBB0_79
LBB0_78:
	sw x4, 4 ( x2 )                 //  4-byte Folded Spill
	slti x4, x0, 1
	jalr x0, LBB0_81 ( x0 )
LBB0_79:                                //  %if.else217
	ori x28, x0, -1048576 & 0xfff
	slli x28, x28, 20
	lui x1, -1048576 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	add x8, x1, x8
	addi x4, x4, 1
LBB0_80:                                //  %do.body222
	sw x4, 4 ( x2 )                 //  4-byte Folded Spill
	add x4, x0, x7
LBB0_81:                                //  %do.body222
	ori x28, x0, $bp & 0xfff
	slli x28, x28, 20
	lui x1, $bp >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $bp+4 & 0xfff
	slli x28, x28, 20
	lui x3, $bp+4 >> 12 & 0xfffff
	srli x28, x28, 20
	sw x4, 12 ( x2 )                //  4-byte Folded Spill
	slli x4, x4, 3
	sw x4, 40 ( x2 )                //  4-byte Folded Spill
	or x3, x3, x28
	add x1, x1, x4
	add x3, x3, x4
	lw x12, 0 ( x1 )
	nop
	sw x12, 28 ( x2 )               //  4-byte Folded Spill
	lw x13, 0 ( x3 )
	nop
	sw x13, 32 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x9
	add x11, x0, x8
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x9
	sw x8, 60 ( x2 )                //  4-byte Folded Spill
	call $__subdf3
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	lw x8, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	add x13, x0, x8
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lui x11, 1072693248>>12 &0xfffff
	add x4, x0, x0
	add x10, x0, x4
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	add x1, x0, x10
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x11
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	sw x10, 64 ( x2 )               //  4-byte Folded Spill
	sw x11, 72 ( x2 )               //  4-byte Folded Spill
	srai x1, x8, 1
	lui x3, 536870912>>12 &0xfffff
	or x1, x3, x1
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	slli x3, x3, 18
	add x1, x3, x1
	lui x3, 524288>>12 
	add x11, x3, x1
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	add x1, x0, x0
	add x10, x0, x1
	lw x12, 28 ( x2 )               //  4-byte Folded Reload
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	add x12, x0, x0
	lw x8, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x13, x0, x8
	call $__muldf3
	sw x10, 60 ( x2 )               //  4-byte Folded Spill
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x0
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x10
	add x13, x0, x8
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	lw x12, 60 ( x2 )               //  4-byte Folded Reload
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x10
	add x13, x0, x8
	call $__muldf3
	sw x11, 60 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1246056175 & 0xfff
	slli x28, x28, 20
	lui x1, 1246056175 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1070235176 & 0xfff
	slli x28, x28, 20
	lui x1, 1070235176 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x8, x0, x10
	sw x8, 48 ( x2 )                //  4-byte Folded Spill
	call $__muldf3
	ori x28, x0, -1815487643 & 0xfff
	slli x28, x28, 20
	lui x1, -1815487643 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1070433866 & 0xfff
	slli x28, x28, 20
	lui x1, 1070433866 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1457700607 & 0xfff
	slli x28, x28, 20
	lui x1, -1457700607 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1070691424 & 0xfff
	slli x28, x28, 20
	lui x1, 1070691424 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1368335949 & 0xfff
	slli x28, x28, 20
	lui x1, 1368335949 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1070945621 & 0xfff
	slli x28, x28, 20
	lui x1, 1070945621 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -613438465 & 0xfff
	slli x28, x28, 20
	lui x1, -613438465 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1071345078 & 0xfff
	slli x28, x28, 20
	lui x1, 1071345078 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 858993411 & 0xfff
	slli x28, x28, 20
	lui x1, 858993411 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1071854387 & 0xfff
	slli x28, x28, 20
	lui x1, 1071854387 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x10
	add x13, x0, x8
	call $__muldf3
	lw x12, 28 ( x2 )               //  4-byte Folded Reload
	lw x13, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x8, x0, x10
	sw x11, 60 ( x2 )               //  4-byte Folded Spill
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	add x13, x0, x11
	call $__adddf3
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x12, x0, x8
	lw x13, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	add x8, x0, x10
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x0
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x10
	add x13, x0, x11
	call $__muldf3
	sw x10, 60 ( x2 )               //  4-byte Folded Spill
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	lui x13, 1074266112>>12 &0xfffff
	add x12, x0, x0
	call $__adddf3
	add x12, x0, x8
	lw x8, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x13, x0, x8
	call $__adddf3
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1073217536 & 0xfff
	slli x28, x28, 20
	lui x1, -1073217536 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x10, x0, x0
	add x12, x0, x10
	call $__adddf3
	lw x12, 60 ( x2 )               //  4-byte Folded Reload
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	sw x10, 64 ( x2 )               //  4-byte Folded Spill
	sw x11, 60 ( x2 )               //  4-byte Folded Spill
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x13, x0, x8
	call $__muldf3
	lw x12, 64 ( x2 )               //  4-byte Folded Reload
	lw x13, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	sw x10, 60 ( x2 )               //  4-byte Folded Spill
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x0
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x10
	add x13, x0, x8
	call $__muldf3
	add x8, x0, x10
	sw x11, 72 ( x2 )               //  4-byte Folded Spill
	lw x12, 60 ( x2 )               //  4-byte Folded Reload
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	sw x11, 64 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x0
	add x12, x0, x8
	lw x13, 72 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	ori x28, x0, -600177667 & 0xfff
	slli x28, x28, 20
	lui x1, -600177667 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1072613129 & 0xfff
	slli x28, x28, 20
	lui x1, 1072613129 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	sw x13, 60 ( x2 )               //  4-byte Folded Spill
	call $__muldf3
	add x8, x0, x10
	sw x11, 72 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 341508597 & 0xfff
	slli x28, x28, 20
	lui x1, 341508597 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1103220768 & 0xfff
	slli x28, x28, 20
	lui x1, -1103220768 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x1, x0, x0
	add x10, x0, x1
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x1, x0, x11
	ori x28, x0, $dp_l & 0xfff
	slli x28, x28, 20
	lui x3, $dp_l >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $dp_l+4 & 0xfff
	slli x28, x28, 20
	lui x4, $dp_l+4 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x5
	add x4, x4, x5
	lw x3, 0 ( x3 )
	lw x11, 0 ( x4 )
	add x12, x0, x10
	add x10, x0, x3
	add x13, x0, x1
	call $__adddf3
	sw x10, 72 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	sw x8, 48 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, -536870912 & 0xfff
	slli x28, x28, 20
	lui x1, -536870912 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	add x10, x0, x0
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
	lw x13, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	sw x10, 64 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	call $__adddf3
	add x1, x0, x11
	ori x28, x0, $dp_h+4 & 0xfff
	slli x28, x28, 20
	lui x3, $dp_h+4 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $dp_h & 0xfff
	slli x28, x28, 20
	lui x4, $dp_h >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x5
	add x4, x4, x5
	lw x4, 0 ( x4 )
	nop
	sw x4, 40 ( x2 )                //  4-byte Folded Spill
	lw x11, 0 ( x3 )
	nop
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x10
	add x10, x0, x4
	add x13, x0, x1
	call $__adddf3
	sw x10, 60 ( x2 )               //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	nop
	call $__floatsidf
	add x8, x0, x10
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	lw x12, 60 ( x2 )               //  4-byte Folded Reload
	lw x13, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	add x10, x0, x0
	sw x11, 60 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x8
	lw x13, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	lw x12, 40 ( x2 )               //  4-byte Folded Reload
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	lw x12, 64 ( x2 )               //  4-byte Folded Reload
	lw x13, 36 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_82:                                //  %if.end331
	call $__subdf3
	add x12, x0, x10
	lw x10, 72 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x11
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	sw x10, 72 ( x2 )               //  4-byte Folded Spill
	sw x11, 64 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x0
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x8, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x13, x0, x8
	call $__subdf3
	lw x12, 44 ( x2 )               //  4-byte Folded Reload
	lw x13, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	lw x10, 72 ( x2 )               //  4-byte Folded Reload
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	sw x10, 72 ( x2 )               //  4-byte Folded Spill
	sw x11, 64 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x0
	add x11, x0, x8
	lw x12, 44 ( x2 )               //  4-byte Folded Reload
	lw x13, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	sw x10, 56 ( x2 )               //  4-byte Folded Spill
	sw x11, 60 ( x2 )               //  4-byte Folded Spill
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	lw x13, 64 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	add x8, x0, x11
	ori x28, x0, -1074790400 & 0xfff
	slli x28, x28, 20
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	or x1, x3, x1
	lui x3, -1074790400 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x3, x28
	add x3, x0, x0
	sw x3, 52 ( x2 )                //  4-byte Folded Spill
	beq x1, x3, LBB0_84
LBB0_83:                                //  %if.end331
	lui x11, 1072693248>>12 &0xfffff
LBB0_84:                                //  %if.end331
	lui x1, 1083179008>>12 &0xfffff
	bgt x1, x8, LBB0_89
LBB0_85:                                //  %if.then365
	ori x28, x0, -1083179008 & 0xfff
	slli x28, x28, 20
	lui x1, -1083179008 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x8
	or x1, x10, x1
	beqz x1, LBB0_88
LBB0_86:                                //  %if.then370
	ori x28, x0, -2013235812 & 0xfff
	slli x28, x28, 20
	lui x1, -2013235812 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	sw x12, 72 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 2117592124 & 0xfff
	slli x28, x28, 20
	lui x1, 2117592124 >> 12 & 0xfffff
LBB0_87:                                //  %cleanup
	srli x28, x28, 20
	add x10, x0, x0
	or x8, x1, x28
	add x13, x0, x8
	call $__muldf3
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	call $__muldf3
	jalr x0, LBB0_47 ( x0 )
LBB0_88:                                //  %if.else373
	ori x28, x0, 1697350398 & 0xfff
	slli x28, x28, 20
	lui x1, 1697350398 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1016534343 & 0xfff
	slli x28, x28, 20
	lui x1, 1016534343 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	lw x10, 72 ( x2 )               //  4-byte Folded Reload
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	sw x10, 68 ( x2 )               //  4-byte Folded Spill
	sw x11, 44 ( x2 )               //  4-byte Folded Spill
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	lw x12, 56 ( x2 )               //  4-byte Folded Reload
	lw x13, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__gtdf2
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	bgt x10, x0, LBB0_86
	jalr x0, LBB0_93 ( x0 )
LBB0_89:                                //  %if.else383
	ori x28, x0, 2147482624 & 0xfff
	slli x28, x28, 20
	lui x1, 2147482624 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 1083231232 & 0xfff
	slli x28, x28, 20
	lui x3, 1083231232 >> 12 & 0xfffff
	srli x28, x28, 20
	and x1, x1, x8
	or x3, x3, x28
	bgtu x3, x1, LBB0_93
LBB0_90:                                //  %if.then387
	ori x28, x0, 1064252416 & 0xfff
	slli x28, x28, 20
	lui x1, 1064252416 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x8
	or x1, x10, x1
	beqz x1, LBB0_92
LBB0_91:                                //  %if.then392
	ori x28, x0, -1023872167 & 0xfff
	slli x28, x28, 20
	lui x1, -1023872167 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	sw x12, 72 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 27618847 & 0xfff
	slli x28, x28, 20
	lui x1, 27618847 >> 12 & 0xfffff
	jalr x0, LBB0_87 ( x0 )
LBB0_92:                                //  %if.else395
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x8
	lw x12, 56 ( x2 )               //  4-byte Folded Reload
	lw x13, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 72 ( x2 )               //  4-byte Folded Reload
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__ledf2
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	ble x10, x0, LBB0_91
LBB0_93:                                //  %if.end405
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	or x1, x1, x28
	ori x28, x0, 1071644673 & 0xfff
	slli x28, x28, 20
	lui x3, 1071644673 >> 12 & 0xfffff
	srli x28, x28, 20
	and x1, x1, x8
	or x3, x3, x28
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	bgeu x1, x3, LBB0_95
LBB0_94:
	lw x8, 56 ( x2 )                //  4-byte Folded Reload
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_98 ( x0 )
LBB0_95:                                //  %if.then411
	srli x1, x1, 20
	ori x28, x0, 1048575 & 0xfff
	addi x1, x1, -1022
	lui x5, 1048576>>12 &0xfffff
	slli x28, x28, 20
	srl x1, x5, x1
	add x1, x8, x1
	lui x3, 1048575 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	srli x4, x1, 20
	and x7, x3, x1
	andi x4, x4, 2047
	addi x9, x0, 1043
	or x5, x5, x7
	sub x7, x9, x4
	add x12, x0, x0
	srl x5, x5, x7
	ble x12, x8, LBB0_97
LBB0_96:
	sub x5, x0, x5
LBB0_97:                                //  %if.then411
	sw x5, 52 ( x2 )                //  4-byte Folded Spill
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	addi x4, x4, -1023
	srl x3, x3, x4
	not x3, x3
	and x13, x3, x1
	call $__subdf3
	add x8, x0, x10
	add x3, x0, x11
LBB0_98:                                //  %if.end438
	lw x10, 72 ( x2 )               //  4-byte Folded Reload
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	sw x3, 60 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x3
	call $__adddf3
	sw x11, 68 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x0
	add x12, x0, x8
	lw x13, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 72 ( x2 )               //  4-byte Folded Reload
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	ori x28, x0, -17155601 & 0xfff
	slli x28, x28, 20
	lui x1, -17155601 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1072049730 & 0xfff
	slli x28, x28, 20
	lui x1, 1072049730 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__muldf3
	add x8, x0, x10
	sw x11, 72 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 212364345 & 0xfff
	slli x28, x28, 20
	lui x1, 212364345 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1105175455 & 0xfff
	slli x28, x28, 20
	lui x1, -1105175455 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x10, x0, x0
	lw x11, 68 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x8, x0, x10
	sw x8, 56 ( x2 )                //  4-byte Folded Spill
	sw x11, 60 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1072049731 & 0xfff
	slli x28, x28, 20
	lui x1, 1072049731 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x10, x0, x0
	lw x11, 68 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x10
	call $__muldf3
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x8
	lw x13, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	sw x10, 64 ( x2 )               //  4-byte Folded Spill
	sw x11, 72 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x10
	add x13, x0, x11
	call $__muldf3
	sw x10, 68 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1925096656 & 0xfff
	slli x28, x28, 20
	lui x1, 1925096656 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1046886249 & 0xfff
	slli x28, x28, 20
	lui x1, 1046886249 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x8, x0, x11
	call $__muldf3
	ori x28, x0, -976065551 & 0xfff
	slli x28, x28, 20
	lui x1, -976065551 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1094992575 & 0xfff
	slli x28, x28, 20
	lui x1, -1094992575 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1356472788 & 0xfff
	slli x28, x28, 20
	lui x1, -1356472788 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1058100842 & 0xfff
	slli x28, x28, 20
	lui x1, 1058100842 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 381599123 & 0xfff
	slli x28, x28, 20
	lui x1, 381599123 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1083784852 & 0xfff
	slli x28, x28, 20
	lui x1, -1083784852 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1431655742 & 0xfff
	slli x28, x28, 20
	lui x1, 1431655742 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1069897045 & 0xfff
	slli x28, x28, 20
	lui x1, 1069897045 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x8, x0, x1
	add x13, x0, x3
	call $__muldf3
	sw x10, 68 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1073741824 & 0xfff
	slli x28, x28, 20
	lui x1, -1073741824 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x10, x0, x8
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	sw x10, 68 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	lw x12, 44 ( x2 )               //  4-byte Folded Reload
	lw x13, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	add x1, x0, x10
	add x4, x0, x11
	sw x4, 60 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x8, x0, x1
	add x13, x0, x4
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	lw x12, 64 ( x2 )               //  4-byte Folded Reload
	lw x13, 72 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lui x11, 1072693248>>12 &0xfffff
	add x10, x0, x0
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	add x1, x0, x10
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	nop
	slli x3, x12, 20
	add x13, x3, x11
	srai x3, x13, 20
	bgt x3, x0, LBB0_100
LBB0_99:                                //  %if.then488
	add x10, x0, x1
	call $scalbn
	add x1, x0, x10
	add x13, x0, x11
LBB0_100:                               //  %do.body491
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x10, x0, x0
	add x12, x0, x1
	call $__muldf3
	add x5, x0, x11
	add x4, x0, x10
LBB0_101:                               //  %cleanup
	add x10, x0, x4
	add x11, x0, x5
	lw x8, 76 ( x2 )                //  4-byte Folded Reload
	lw x1, 84 ( x2 )
$cfi7:
	.cfi_same_value 1
	addi x2, x2, 88
$cfi8:
	.cfi_adjust_cfa_offset -88
$cfi9:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__ieee754_pow, ($func_end0)-($__ieee754_pow)
	.cfi_endproc

	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.zero	1
	.size	$.str, 1

	.address_space	0	
	.type	$bp,@object             //  @bp
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3
$bp:
	.quad	4607182418800017408     //  double 1
	.quad	4609434218613702656     //  double 1.5
	.size	$bp, 16

	.address_space	0	
	.type	$dp_l,@object           //  @dp_l
	.p2align	3
$dp_l:
	.quad	0                       //  double 0
	.quad	4489242115478376454     //  double 1.350039202129749E-8
	.size	$dp_l, 16

	.address_space	0	
	.type	$dp_h,@object           //  @dp_h
	.p2align	3
$dp_h:
	.quad	0                       //  double 0
	.quad	4603444093224222720     //  double 0.58496248722076416
	.size	$dp_h, 16


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
