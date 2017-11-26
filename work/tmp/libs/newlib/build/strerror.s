	.text
	.file	"strerror.bc"
	.globl	$_strerror_r
	.type	$_strerror_r,@function
$_strerror_r:                           //  @_strerror_r
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
	sw x13, 4 ( x2 )                //  4-byte Folded Spill
	sw x12, 12 ( x2 )               //  4-byte Folded Spill
	add x4, x0, x11
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	addi x3, x0, 142
	or x1, x1, x28
	bgtu x4, x3, LBB0_82
LBB0_1:                                 //  %entry
	addi x11, x0, 4
	add x10, x0, x4
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x4
	call $__mulsi3
	add x4, x0, x8
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	lui x1, JTI0_0 >> 12 & 0xfffff
	ori x28, x0, JTI0_0 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB0_2:                                 //  %sw.bb1
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.1 >> 12 & 0xfffff
LBB0_3:                                 //  %sw.epilog
	srli x28, x28, 20
	or x3, x1, x28
	jalr x0, LBB0_86 ( x0 )
LBB0_4:                                 //  %sw.bb2
	ori x28, x0, $.str.2 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.2 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_5:                                 //  %sw.bb3
	ori x28, x0, $.str.3 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.3 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_6:                                 //  %sw.bb4
	ori x28, x0, $.str.4 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.4 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_7:                                 //  %sw.bb5
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.5 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_8:                                 //  %sw.bb6
	ori x28, x0, $.str.6 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.6 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_9:                                 //  %sw.bb7
	ori x28, x0, $.str.7 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.7 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_10:                                //  %sw.bb8
	ori x28, x0, $.str.8 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.8 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_11:                                //  %sw.bb9
	ori x28, x0, $.str.9 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.9 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_12:                                //  %sw.bb10
	ori x28, x0, $.str.10 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.10 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_13:                                //  %sw.bb11
	ori x28, x0, $.str.11 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.11 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_14:                                //  %sw.bb12
	ori x28, x0, $.str.12 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.12 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_15:                                //  %sw.bb13
	ori x28, x0, $.str.13 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.13 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_16:                                //  %sw.bb14
	ori x28, x0, $.str.14 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.14 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_17:                                //  %sw.bb15
	ori x28, x0, $.str.15 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.15 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_18:                                //  %sw.bb16
	ori x28, x0, $.str.16 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.16 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_19:                                //  %sw.bb17
	ori x28, x0, $.str.17 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.17 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_20:                                //  %sw.bb18
	ori x28, x0, $.str.18 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.18 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_21:                                //  %sw.bb19
	ori x28, x0, $.str.19 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.19 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_22:                                //  %sw.bb20
	ori x28, x0, $.str.20 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.20 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_23:                                //  %sw.bb21
	ori x28, x0, $.str.21 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.21 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_24:                                //  %sw.bb22
	ori x28, x0, $.str.22 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.22 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_25:                                //  %sw.bb23
	ori x28, x0, $.str.23 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.23 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_26:                                //  %sw.bb24
	ori x28, x0, $.str.24 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.24 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_27:                                //  %sw.bb25
	ori x28, x0, $.str.25 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.25 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_28:                                //  %sw.bb26
	ori x28, x0, $.str.26 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.26 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_29:                                //  %sw.bb27
	ori x28, x0, $.str.27 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.27 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_30:                                //  %sw.bb28
	ori x28, x0, $.str.28 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.28 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_31:                                //  %sw.bb29
	ori x28, x0, $.str.29 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.29 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_32:                                //  %sw.bb30
	ori x28, x0, $.str.30 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.30 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_33:                                //  %sw.bb31
	ori x28, x0, $.str.31 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.31 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_34:                                //  %sw.bb32
	ori x28, x0, $.str.32 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.32 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_35:                                //  %sw.bb33
	ori x28, x0, $.str.33 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.33 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_36:                                //  %sw.bb34
	ori x28, x0, $.str.34 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.34 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_37:                                //  %sw.bb35
	ori x28, x0, $.str.35 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.35 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_38:                                //  %sw.bb36
	ori x28, x0, $.str.36 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.36 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_39:                                //  %sw.bb37
	ori x28, x0, $.str.37 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.37 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_40:                                //  %sw.bb38
	ori x28, x0, $.str.38 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.38 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_41:                                //  %sw.bb39
	ori x28, x0, $.str.39 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.39 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_42:                                //  %sw.bb40
	ori x28, x0, $.str.40 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.40 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_43:                                //  %sw.bb41
	ori x28, x0, $.str.41 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.41 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_44:                                //  %sw.bb42
	ori x28, x0, $.str.42 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.42 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_45:                                //  %sw.bb43
	ori x28, x0, $.str.43 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.43 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_46:                                //  %sw.bb44
	ori x28, x0, $.str.44 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.44 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_47:                                //  %sw.bb45
	ori x28, x0, $.str.45 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.45 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_48:                                //  %sw.bb46
	ori x28, x0, $.str.46 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.46 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_49:                                //  %sw.bb47
	ori x28, x0, $.str.47 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.47 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_50:                                //  %sw.bb48
	ori x28, x0, $.str.48 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.48 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_51:                                //  %sw.bb49
	ori x28, x0, $.str.49 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.49 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_52:                                //  %sw.bb50
	ori x28, x0, $.str.50 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.50 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_53:                                //  %sw.bb51
	ori x28, x0, $.str.51 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.51 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_54:                                //  %sw.bb52
	ori x28, x0, $.str.52 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.52 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_55:                                //  %sw.bb53
	ori x28, x0, $.str.53 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.53 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_56:                                //  %sw.bb54
	ori x28, x0, $.str.54 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.54 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_57:                                //  %sw.bb55
	ori x28, x0, $.str.55 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.55 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_58:                                //  %sw.bb56
	ori x28, x0, $.str.56 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.56 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_59:                                //  %sw.bb57
	ori x28, x0, $.str.57 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.57 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_60:                                //  %sw.bb58
	ori x28, x0, $.str.58 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.58 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_61:                                //  %sw.bb59
	ori x28, x0, $.str.59 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.59 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_62:                                //  %sw.bb60
	ori x28, x0, $.str.60 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.60 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_63:                                //  %sw.bb61
	ori x28, x0, $.str.61 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.61 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_64:                                //  %sw.bb62
	ori x28, x0, $.str.62 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.62 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_65:                                //  %sw.bb63
	ori x28, x0, $.str.63 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.63 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_66:                                //  %sw.bb64
	ori x28, x0, $.str.64 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.64 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_67:                                //  %sw.bb65
	ori x28, x0, $.str.65 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.65 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_68:                                //  %sw.bb66
	ori x28, x0, $.str.66 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.66 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_69:                                //  %sw.bb67
	ori x28, x0, $.str.67 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.67 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_70:                                //  %sw.bb68
	ori x28, x0, $.str.68 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.68 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_71:                                //  %sw.bb69
	ori x28, x0, $.str.69 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.69 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_72:                                //  %sw.bb70
	ori x28, x0, $.str.70 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.70 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_73:                                //  %sw.bb71
	ori x28, x0, $.str.71 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.71 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_74:                                //  %sw.bb72
	ori x28, x0, $.str.72 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.72 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_75:                                //  %sw.bb73
	ori x28, x0, $.str.73 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.73 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_76:                                //  %sw.bb74
	ori x28, x0, $.str.74 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.74 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_77:                                //  %sw.bb75
	ori x28, x0, $.str.75 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.75 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_78:                                //  %sw.bb76
	ori x28, x0, $.str.76 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.76 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_79:                                //  %sw.bb77
	ori x28, x0, $.str.77 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.77 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_80:                                //  %sw.bb78
	ori x28, x0, $.str.78 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.78 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_81:                                //  %sw.bb79
	ori x28, x0, $.str.79 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.79 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_82:                                //  %sw.default
	add x8, x0, x0
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	beq x1, x8, LBB0_84
LBB0_83:                                //  %sw.default
	add x12, x0, x1
LBB0_84:                                //  %sw.default
	add x10, x0, x4
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $_user_strerror
	lui x1, $.str.80 >> 12 & 0xfffff
	ori x28, x0, $.str.80 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x1, x28
	beq x10, x8, LBB0_86
LBB0_85:                                //  %sw.default
	add x3, x0, x10
LBB0_86:                                //  %sw.epilog
	add x10, x0, x3
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
	.size	$_strerror_r, ($func_end0)-($_strerror_r)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	LBB0_86
	.long	LBB0_2
	.long	LBB0_4
	.long	LBB0_5
	.long	LBB0_6
	.long	LBB0_7
	.long	LBB0_8
	.long	LBB0_9
	.long	LBB0_10
	.long	LBB0_12
	.long	LBB0_13
	.long	LBB0_15
	.long	LBB0_16
	.long	LBB0_17
	.long	LBB0_18
	.long	LBB0_82
	.long	LBB0_19
	.long	LBB0_20
	.long	LBB0_21
	.long	LBB0_22
	.long	LBB0_23
	.long	LBB0_26
	.long	LBB0_27
	.long	LBB0_30
	.long	LBB0_31
	.long	LBB0_32
	.long	LBB0_33
	.long	LBB0_34
	.long	LBB0_36
	.long	LBB0_38
	.long	LBB0_39
	.long	LBB0_40
	.long	LBB0_41
	.long	LBB0_42
	.long	LBB0_43
	.long	LBB0_44
	.long	LBB0_45
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_47
	.long	LBB0_49
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_50
	.long	LBB0_63
	.long	LBB0_51
	.long	LBB0_52
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_53
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_54
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_56
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_57
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_58
	.long	LBB0_82
	.long	LBB0_59
	.long	LBB0_60
	.long	LBB0_61
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_78
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_69
	.long	LBB0_62
	.long	LBB0_64
	.long	LBB0_65
	.long	LBB0_66
	.long	LBB0_67
	.long	LBB0_82
	.long	LBB0_68
	.long	LBB0_70
	.long	LBB0_72
	.long	LBB0_48
	.long	LBB0_28
	.long	LBB0_81
	.long	LBB0_24
	.long	LBB0_35
	.long	LBB0_25
	.long	LBB0_11
	.long	LBB0_14
	.long	LBB0_80
	.long	LBB0_55
	.long	LBB0_82
	.long	LBB0_71
	.long	LBB0_29
	.long	LBB0_74
	.long	LBB0_73
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_37
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_82
	.long	LBB0_46
	.long	LBB0_79
	.long	LBB0_75
	.long	LBB0_76
	.long	LBB0_77

	.text
	.globl	$strerror
	.type	$strerror,@function
$strerror:                              //  @strerror
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x3, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	lw x3, 0 ( x3 )
	add x12, x0, x0
	add x11, x0, x10
	add x10, x0, x3
	add x13, x0, x12
	j $_strerror_r
$func_end1:
	.size	$strerror, ($func_end1)-($strerror)
	.cfi_endproc

	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"Success"
	.size	$.str, 8

	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
$.str.1:
	.asciz	"Not owner"
	.size	$.str.1, 10

	.address_space	0	
	.type	$.str.2,@object         //  @.str.2
$.str.2:
	.asciz	"No such file or directory"
	.size	$.str.2, 26

	.address_space	0	
	.type	$.str.3,@object         //  @.str.3
$.str.3:
	.asciz	"No such process"
	.size	$.str.3, 16

	.address_space	0	
	.type	$.str.4,@object         //  @.str.4
$.str.4:
	.asciz	"Interrupted system call"
	.size	$.str.4, 24

	.address_space	0	
	.type	$.str.5,@object         //  @.str.5
$.str.5:
	.asciz	"I/O error"
	.size	$.str.5, 10

	.address_space	0	
	.type	$.str.6,@object         //  @.str.6
$.str.6:
	.asciz	"No such device or address"
	.size	$.str.6, 26

	.address_space	0	
	.type	$.str.7,@object         //  @.str.7
$.str.7:
	.asciz	"Arg list too long"
	.size	$.str.7, 18

	.address_space	0	
	.type	$.str.8,@object         //  @.str.8
$.str.8:
	.asciz	"Exec format error"
	.size	$.str.8, 18

	.address_space	0	
	.type	$.str.9,@object         //  @.str.9
$.str.9:
	.asciz	"Socket already connected"
	.size	$.str.9, 25

	.address_space	0	
	.type	$.str.10,@object        //  @.str.10
$.str.10:
	.asciz	"Bad file number"
	.size	$.str.10, 16

	.address_space	0	
	.type	$.str.11,@object        //  @.str.11
$.str.11:
	.asciz	"No children"
	.size	$.str.11, 12

	.address_space	0	
	.type	$.str.12,@object        //  @.str.12
$.str.12:
	.asciz	"Destination address required"
	.size	$.str.12, 29

	.address_space	0	
	.type	$.str.13,@object        //  @.str.13
$.str.13:
	.asciz	"No more processes"
	.size	$.str.13, 18

	.address_space	0	
	.type	$.str.14,@object        //  @.str.14
$.str.14:
	.asciz	"Not enough space"
	.size	$.str.14, 17

	.address_space	0	
	.type	$.str.15,@object        //  @.str.15
$.str.15:
	.asciz	"Permission denied"
	.size	$.str.15, 18

	.address_space	0	
	.type	$.str.16,@object        //  @.str.16
$.str.16:
	.asciz	"Bad address"
	.size	$.str.16, 12

	.address_space	0	
	.type	$.str.17,@object        //  @.str.17
$.str.17:
	.asciz	"Device or resource busy"
	.size	$.str.17, 24

	.address_space	0	
	.type	$.str.18,@object        //  @.str.18
$.str.18:
	.asciz	"File exists"
	.size	$.str.18, 12

	.address_space	0	
	.type	$.str.19,@object        //  @.str.19
$.str.19:
	.asciz	"Cross-device link"
	.size	$.str.19, 18

	.address_space	0	
	.type	$.str.20,@object        //  @.str.20
$.str.20:
	.asciz	"No such device"
	.size	$.str.20, 15

	.address_space	0	
	.type	$.str.21,@object        //  @.str.21
$.str.21:
	.asciz	"Not a directory"
	.size	$.str.21, 16

	.address_space	0	
	.type	$.str.22,@object        //  @.str.22
$.str.22:
	.asciz	"Host is down"
	.size	$.str.22, 13

	.address_space	0	
	.type	$.str.23,@object        //  @.str.23
$.str.23:
	.asciz	"Connection already in progress"
	.size	$.str.23, 31

	.address_space	0	
	.type	$.str.24,@object        //  @.str.24
$.str.24:
	.asciz	"Is a directory"
	.size	$.str.24, 15

	.address_space	0	
	.type	$.str.25,@object        //  @.str.25
$.str.25:
	.asciz	"Invalid argument"
	.size	$.str.25, 17

	.address_space	0	
	.type	$.str.26,@object        //  @.str.26
$.str.26:
	.asciz	"Network interface is not configured"
	.size	$.str.26, 36

	.address_space	0	
	.type	$.str.27,@object        //  @.str.27
$.str.27:
	.asciz	"Connection aborted by network"
	.size	$.str.27, 30

	.address_space	0	
	.type	$.str.28,@object        //  @.str.28
$.str.28:
	.asciz	"Too many open files in system"
	.size	$.str.28, 30

	.address_space	0	
	.type	$.str.29,@object        //  @.str.29
$.str.29:
	.asciz	"File descriptor value too large"
	.size	$.str.29, 32

	.address_space	0	
	.type	$.str.30,@object        //  @.str.30
$.str.30:
	.asciz	"Not a character device"
	.size	$.str.30, 23

	.address_space	0	
	.type	$.str.31,@object        //  @.str.31
$.str.31:
	.asciz	"Text file busy"
	.size	$.str.31, 15

	.address_space	0	
	.type	$.str.32,@object        //  @.str.32
$.str.32:
	.asciz	"File too large"
	.size	$.str.32, 15

	.address_space	0	
	.type	$.str.33,@object        //  @.str.33
$.str.33:
	.asciz	"Host is unreachable"
	.size	$.str.33, 20

	.address_space	0	
	.type	$.str.34,@object        //  @.str.34
$.str.34:
	.asciz	"No space left on device"
	.size	$.str.34, 24

	.address_space	0	
	.type	$.str.35,@object        //  @.str.35
$.str.35:
	.asciz	"Not supported"
	.size	$.str.35, 14

	.address_space	0	
	.type	$.str.36,@object        //  @.str.36
$.str.36:
	.asciz	"Illegal seek"
	.size	$.str.36, 13

	.address_space	0	
	.type	$.str.37,@object        //  @.str.37
$.str.37:
	.asciz	"Read-only file system"
	.size	$.str.37, 22

	.address_space	0	
	.type	$.str.38,@object        //  @.str.38
$.str.38:
	.asciz	"Too many links"
	.size	$.str.38, 15

	.address_space	0	
	.type	$.str.39,@object        //  @.str.39
$.str.39:
	.asciz	"Broken pipe"
	.size	$.str.39, 12

	.address_space	0	
	.type	$.str.40,@object        //  @.str.40
$.str.40:
	.asciz	"Mathematics argument out of domain of function"
	.size	$.str.40, 47

	.address_space	0	
	.type	$.str.41,@object        //  @.str.41
$.str.41:
	.asciz	"Result too large"
	.size	$.str.41, 17

	.address_space	0	
	.type	$.str.42,@object        //  @.str.42
$.str.42:
	.asciz	"No message of desired type"
	.size	$.str.42, 27

	.address_space	0	
	.type	$.str.43,@object        //  @.str.43
$.str.43:
	.asciz	"Identifier removed"
	.size	$.str.43, 19

	.address_space	0	
	.type	$.str.44,@object        //  @.str.44
$.str.44:
	.asciz	"Illegal byte sequence"
	.size	$.str.44, 22

	.address_space	0	
	.type	$.str.45,@object        //  @.str.45
$.str.45:
	.asciz	"Deadlock"
	.size	$.str.45, 9

	.address_space	0	
	.type	$.str.46,@object        //  @.str.46
$.str.46:
	.asciz	"Network is unreachable"
	.size	$.str.46, 23

	.address_space	0	
	.type	$.str.47,@object        //  @.str.47
$.str.47:
	.asciz	"No lock"
	.size	$.str.47, 8

	.address_space	0	
	.type	$.str.48,@object        //  @.str.48
$.str.48:
	.asciz	"Not a stream"
	.size	$.str.48, 13

	.address_space	0	
	.type	$.str.49,@object        //  @.str.49
$.str.49:
	.asciz	"Stream ioctl timeout"
	.size	$.str.49, 21

	.address_space	0	
	.type	$.str.50,@object        //  @.str.50
$.str.50:
	.asciz	"No stream resources"
	.size	$.str.50, 20

	.address_space	0	
	.type	$.str.51,@object        //  @.str.51
$.str.51:
	.asciz	"Virtual circuit is gone"
	.size	$.str.51, 24

	.address_space	0	
	.type	$.str.52,@object        //  @.str.52
$.str.52:
	.asciz	"Protocol error"
	.size	$.str.52, 15

	.address_space	0	
	.type	$.str.53,@object        //  @.str.53
$.str.53:
	.asciz	"Unknown protocol"
	.size	$.str.53, 17

	.address_space	0	
	.type	$.str.54,@object        //  @.str.54
$.str.54:
	.asciz	"Multihop attempted"
	.size	$.str.54, 19

	.address_space	0	
	.type	$.str.55,@object        //  @.str.55
$.str.55:
	.asciz	"Bad message"
	.size	$.str.55, 12

	.address_space	0	
	.type	$.str.56,@object        //  @.str.56
$.str.56:
	.asciz	"Function not implemented"
	.size	$.str.56, 25

	.address_space	0	
	.type	$.str.57,@object        //  @.str.57
$.str.57:
	.asciz	"Directory not empty"
	.size	$.str.57, 20

	.address_space	0	
	.type	$.str.58,@object        //  @.str.58
$.str.58:
	.asciz	"File or path name too long"
	.size	$.str.58, 27

	.address_space	0	
	.type	$.str.59,@object        //  @.str.59
$.str.59:
	.asciz	"Too many symbolic links"
	.size	$.str.59, 24

	.address_space	0	
	.type	$.str.60,@object        //  @.str.60
$.str.60:
	.asciz	"No buffer space available"
	.size	$.str.60, 26

	.address_space	0	
	.type	$.str.61,@object        //  @.str.61
$.str.61:
	.asciz	"No data"
	.size	$.str.61, 8

	.address_space	0	
	.type	$.str.62,@object        //  @.str.62
$.str.62:
	.asciz	"Address family not supported by protocol family"
	.size	$.str.62, 48

	.address_space	0	
	.type	$.str.63,@object        //  @.str.63
$.str.63:
	.asciz	"Protocol wrong type for socket"
	.size	$.str.63, 31

	.address_space	0	
	.type	$.str.64,@object        //  @.str.64
$.str.64:
	.asciz	"Socket operation on non-socket"
	.size	$.str.64, 31

	.address_space	0	
	.type	$.str.65,@object        //  @.str.65
$.str.65:
	.asciz	"Protocol not available"
	.size	$.str.65, 23

	.address_space	0	
	.type	$.str.66,@object        //  @.str.66
$.str.66:
	.asciz	"Connection refused"
	.size	$.str.66, 19

	.address_space	0	
	.type	$.str.67,@object        //  @.str.67
$.str.67:
	.asciz	"Connection reset by peer"
	.size	$.str.67, 25

	.address_space	0	
	.type	$.str.68,@object        //  @.str.68
$.str.68:
	.asciz	"Address already in use"
	.size	$.str.68, 23

	.address_space	0	
	.type	$.str.69,@object        //  @.str.69
$.str.69:
	.asciz	"Address not available"
	.size	$.str.69, 22

	.address_space	0	
	.type	$.str.70,@object        //  @.str.70
$.str.70:
	.asciz	"Software caused connection abort"
	.size	$.str.70, 33

	.address_space	0	
	.type	$.str.71,@object        //  @.str.71
$.str.71:
	.asciz	"Socket is not connected"
	.size	$.str.71, 24

	.address_space	0	
	.type	$.str.72,@object        //  @.str.72
$.str.72:
	.asciz	"Socket is already connected"
	.size	$.str.72, 28

	.address_space	0	
	.type	$.str.73,@object        //  @.str.73
$.str.73:
	.asciz	"Operation canceled"
	.size	$.str.73, 19

	.address_space	0	
	.type	$.str.74,@object        //  @.str.74
$.str.74:
	.asciz	"State not recoverable"
	.size	$.str.74, 22

	.address_space	0	
	.type	$.str.75,@object        //  @.str.75
$.str.75:
	.asciz	"Previous owner died"
	.size	$.str.75, 20

	.address_space	0	
	.type	$.str.76,@object        //  @.str.76
$.str.76:
	.asciz	"Operation not supported on socket"
	.size	$.str.76, 34

	.address_space	0	
	.type	$.str.77,@object        //  @.str.77
$.str.77:
	.asciz	"Value too large for defined data type"
	.size	$.str.77, 38

	.address_space	0	
	.type	$.str.78,@object        //  @.str.78
$.str.78:
	.asciz	"Message too long"
	.size	$.str.78, 17

	.address_space	0	
	.type	$.str.79,@object        //  @.str.79
$.str.79:
	.asciz	"Connection timed out"
	.size	$.str.79, 21

	.address_space	0	
	.type	$.str.80,@object        //  @.str.80
$.str.80:
	.zero	1
	.size	$.str.80, 1

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
