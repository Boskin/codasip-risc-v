	.text
	.file	"k_standard.bc"
	.globl	$__kernel_standard
	.type	$__kernel_standard,@function
$__kernel_standard:                     //  @__kernel_standard
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -72
$cfi2:
	.cfi_adjust_cfa_offset 72
	sw x1, 68 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 60 ( x2 )                //  4-byte Folded Spill
	add x4, x0, x10
	addi x3, x2, 24
	sw x14, 20 ( x2 )               //  4-byte Folded Spill
	addi x10, x14, -1
	addi x1, x0, 141
	sw x4, 12 ( x2 )                //  4-byte Folded Spill
	sw x4, 8 ( x3 )
	sw x13, 8 ( x2 )                //  4-byte Folded Spill
	sw x13, 20 ( x3 )
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )
	sw x12, 4 ( x2 )                //  4-byte Folded Spill
	sw x12, 16 ( x3 )
	sw x0, 32 ( x3 )
	bgtu x10, x1, LBB0_145
LBB0_1:                                 //  %entry
	addi x8, x0, 4
	add x11, x0, x8
	call $__mulsi3
	lui x1, JTI0_0 >> 12 & 0xfffff
	ori x28, x0, JTI0_0 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB0_2:                                 //  %sw.bb
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.1 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x3, $.str >> 12 & 0xfffff
LBB0_3:                                 //  %sw.bb
	srli x28, x28, 20
	addi x4, x0, 100
	or x3, x3, x28
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x5, LBB0_5
LBB0_4:                                 //  %sw.bb
	add x3, x0, x1
LBB0_5:                                 //  %sw.bb
	slti x1, x0, 1
	sw x1, 24 ( x2 )
	addi x1, x2, 24
	sw x3, 4 ( x1 )
	sw x0, 24 ( x1 )
	sw x0, 52 ( x2 )
	jalr x0, LBB0_111 ( x0 )
LBB0_6:                                 //  %sw.bb8
	ori x28, x0, $.str.3 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.3 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.2 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.2 >> 12 & 0xfffff
	jalr x0, LBB0_3 ( x0 )
LBB0_7:                                 //  %sw.bb24
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	ori x28, x0, $.str.4 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.4 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 100
	or x1, x1, x28
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x5, LBB0_9
LBB0_8:                                 //  %sw.bb24
	add x1, x0, x3
LBB0_9:                                 //  %sw.bb24
	addi x3, x2, 24
	add x4, x0, x3
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x3, 8 ( x4 )
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x3, 36 ( x2 )
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 20 ( x4 )
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 16 ( x4 )
	slti x3, x0, 1
	sw x3, 24 ( x2 )
	sw x1, 4 ( x4 )
	sw x0, 28 ( x4 )
	jalr x0, LBB0_110 ( x0 )
LBB0_10:                                //  %sw.bb42
	ori x28, x0, $.str.7 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.7 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.6 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.6 >> 12 & 0xfffff
LBB0_11:                                //  %sw.bb42
	srli x28, x28, 20
	addi x4, x0, 100
	or x3, x3, x28
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x5, LBB0_13
LBB0_12:                                //  %sw.bb42
	add x3, x0, x1
LBB0_13:                                //  %sw.bb42
	addi x1, x0, 3
	sw x1, 24 ( x2 )
	addi x5, x2, 24
	sw x3, 4 ( x5 )
	lui x1, $__fdlib_version >> 12 & 0xfffff
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	lui x3, -536870912 >> 12 & 0xfffff
	ori x28, x0, -536870912 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x3, x28
	add x3, x0, x0
	beq x1, x3, LBB0_15
LBB0_14:                                //  %sw.bb42
	add x4, x0, x3
LBB0_15:                                //  %sw.bb42
	sw x4, 24 ( x5 )
	lui x4, 1206910975 >> 12 & 0xfffff
	ori x28, x0, 1206910975 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	beq x1, x3, LBB0_17
LBB0_16:                                //  %sw.bb42
	lui x4, 2146435072>>12 &0xfffff
LBB0_17:                                //  %sw.bb42
	sw x4, 52 ( x2 )
LBB0_18:                                //  %sw.bb42
	xori x1, x1, 2
	bgtu x1, x0, LBB0_95
LBB0_19:                                //  %if.then54
	call $__errno
	addi x1, x0, 34
	jalr x0, LBB0_142 ( x0 )
LBB0_20:                                //  %sw.bb63
	ori x28, x0, $.str.9 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.9 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.8 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.8 >> 12 & 0xfffff
	jalr x0, LBB0_11 ( x0 )
LBB0_21:                                //  %sw.bb84
	ori x28, x0, $.str.11 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.11 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.10 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.10 >> 12 & 0xfffff
	jalr x0, LBB0_11 ( x0 )
LBB0_22:                                //  %sw.bb105
	ori x28, x0, $.str.11 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.11 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.10 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.10 >> 12 & 0xfffff
LBB0_23:                                //  %sw.bb105
	srli x28, x28, 20
	addi x4, x0, 100
	or x3, x3, x28
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x5, LBB0_25
LBB0_24:                                //  %sw.bb105
	add x3, x0, x1
LBB0_25:                                //  %sw.bb105
	sw x8, 24 ( x2 )
LBB0_26:                                //  %sw.bb105
	addi x1, x2, 24
	sw x3, 4 ( x1 )
	sw x0, 24 ( x1 )
	sw x0, 52 ( x2 )
LBB0_27:                                //  %sw.bb105
	lui x1, $__fdlib_version >> 12 & 0xfffff
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
LBB0_28:                                //  %sw.bb105
	or x1, x1, x28
	lw x1, 0 ( x1 )
	jalr x0, LBB0_18 ( x0 )
LBB0_29:                                //  %sw.bb121
	ori x28, x0, $.str.13 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.13 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.12 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.12 >> 12 & 0xfffff
LBB0_30:                                //  %sw.bb121
	srli x28, x28, 20
	addi x4, x0, 100
	or x3, x3, x28
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x5, LBB0_32
LBB0_31:                                //  %sw.bb121
	add x3, x0, x1
LBB0_32:                                //  %sw.bb121
	slti x1, x0, 1
	sw x1, 24 ( x2 )
	addi x5, x2, 24
	sw x3, 4 ( x5 )
	lui x1, $__fdlib_version >> 12 & 0xfffff
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	lui x3, -536870912 >> 12 & 0xfffff
	ori x28, x0, -536870912 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x3, x28
	add x3, x0, x0
	beq x1, x3, LBB0_34
LBB0_33:                                //  %sw.bb121
	add x4, x0, x3
LBB0_34:                                //  %sw.bb121
	sw x4, 24 ( x5 )
	lui x4, -1048576 >> 12 & 0xfffff
	ori x28, x0, -1048576 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	lui x5, -940572673 >> 12 & 0xfffff
	ori x28, x0, -940572673 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x5, x28
	beq x1, x3, LBB0_36
LBB0_35:                                //  %sw.bb121
	add x5, x0, x4
LBB0_36:                                //  %sw.bb121
	sw x5, 52 ( x2 )
LBB0_37:                                //  %sw.bb121
	xori x1, x1, 2
	bgtu x1, x0, LBB0_140
	jalr x0, LBB0_141 ( x0 )
LBB0_38:                                //  %sw.bb184
	ori x28, x0, $.str.15 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.15 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.14 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.14 >> 12 & 0xfffff
	jalr x0, LBB0_30 ( x0 )
LBB0_39:                                //  %sw.bb226
	ori x28, x0, $.str.17 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.17 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.16 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.16 >> 12 & 0xfffff
	jalr x0, LBB0_30 ( x0 )
LBB0_40:                                //  %sw.bb247
	ori x28, x0, $.str.19 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.19 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.18 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.18 >> 12 & 0xfffff
	jalr x0, LBB0_11 ( x0 )
LBB0_41:                                //  %sw.bb268
	ori x28, x0, $.str.19 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.19 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.18 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.18 >> 12 & 0xfffff
LBB0_42:                                //  %sw.bb268
	srli x28, x28, 20
	addi x4, x0, 100
	or x3, x3, x28
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x5, LBB0_44
LBB0_43:                                //  %sw.bb268
	add x3, x0, x1
LBB0_44:                                //  %sw.bb268
	addi x1, x0, 2
	sw x1, 24 ( x2 )
	addi x5, x2, 24
	sw x3, 4 ( x5 )
	lui x1, $__fdlib_version >> 12 & 0xfffff
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	lui x3, -536870912 >> 12 & 0xfffff
	ori x28, x0, -536870912 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x3, x28
	add x3, x0, x0
	beq x1, x3, LBB0_46
LBB0_45:                                //  %sw.bb268
	add x4, x0, x3
LBB0_46:                                //  %sw.bb268
	sw x4, 24 ( x5 )
	lui x4, 1206910975 >> 12 & 0xfffff
	ori x28, x0, 1206910975 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	beq x1, x3, LBB0_48
LBB0_47:                                //  %sw.bb268
	lui x4, 2146435072>>12 &0xfffff
LBB0_48:                                //  %sw.bb268
	sw x4, 52 ( x2 )
	jalr x0, LBB0_37 ( x0 )
LBB0_49:                                //  %sw.bb289
	ori x28, x0, $.str.21 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.21 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.20 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.20 >> 12 & 0xfffff
LBB0_50:                                //  %sw.bb289
	srli x28, x28, 20
	addi x4, x0, 100
	or x3, x3, x28
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x5, LBB0_52
LBB0_51:                                //  %sw.bb289
	add x3, x0, x1
LBB0_52:                                //  %sw.bb289
	addi x1, x0, 2
	sw x1, 24 ( x2 )
	addi x5, x2, 24
	sw x3, 4 ( x5 )
	lui x1, $__fdlib_version >> 12 & 0xfffff
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	lui x3, -536870912 >> 12 & 0xfffff
	ori x28, x0, -536870912 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x3, x28
	add x3, x0, x0
	beq x1, x3, LBB0_54
LBB0_53:                                //  %sw.bb289
	add x4, x0, x3
LBB0_54:                                //  %sw.bb289
	sw x4, 24 ( x5 )
	lui x4, -1048576 >> 12 & 0xfffff
	ori x28, x0, -1048576 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	lui x5, -940572673 >> 12 & 0xfffff
	ori x28, x0, -940572673 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x5, x28
	beq x1, x3, LBB0_56
LBB0_55:                                //  %sw.bb289
	add x5, x0, x4
LBB0_56:                                //  %sw.bb289
	sw x5, 52 ( x2 )
	xori x1, x1, 2
	beqz x1, LBB0_19
	jalr x0, LBB0_140 ( x0 )
LBB0_57:                                //  %sw.bb310
	ori x28, x0, $.str.21 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.21 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.20 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.20 >> 12 & 0xfffff
	jalr x0, LBB0_30 ( x0 )
LBB0_58:                                //  %sw.bb331
	ori x28, x0, $.str.23 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.23 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.22 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.22 >> 12 & 0xfffff
	jalr x0, LBB0_50 ( x0 )
LBB0_59:                                //  %sw.bb352
	ori x28, x0, $.str.23 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.23 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.22 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.22 >> 12 & 0xfffff
	jalr x0, LBB0_30 ( x0 )
LBB0_60:                                //  %sw.bb373
	ori x28, x0, $.str.25 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.25 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.24 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.24 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 100
	or x3, x3, x28
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x5, LBB0_62
LBB0_61:                                //  %sw.bb373
	add x3, x0, x1
LBB0_62:                                //  %sw.bb373
	slti x1, x0, 1
	sw x1, 24 ( x2 )
	addi x4, x2, 24
	sw x3, 4 ( x4 )
	sw x0, 24 ( x4 )
	sw x0, 52 ( x2 )
	lui x1, $__fdlib_version >> 12 & 0xfffff
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	beqz x1, LBB0_140
LBB0_63:                                //  %if.then380
	lui x1, 1072693248>>12 &0xfffff
	sw x1, 52 ( x2 )
	sw x0, 24 ( x4 )
	jalr x0, LBB0_143 ( x0 )
LBB0_64:                                //  %sw.bb389
	ori x28, x0, $.str.25 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.25 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.24 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.24 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 100
	or x3, x3, x28
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x5, LBB0_66
LBB0_65:                                //  %sw.bb389
	add x3, x0, x1
LBB0_66:                                //  %sw.bb389
	addi x1, x0, 3
	sw x1, 24 ( x2 )
	sw x3, 28 ( x2 )
	lui x1, $__fdlib_version >> 12 & 0xfffff
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	bgtu x1, x0, LBB0_70
LBB0_67:                                //  %if.then395
	ori x28, x0, -536870912 & 0xfff
	slli x28, x28, 20
	lui x1, -536870912 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 1206910975 & 0xfff
	slli x28, x28, 20
	lui x3, 1206910975 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	addi x4, x2, 24
	sw x1, 24 ( x4 )
	sw x3, 52 ( x2 )
	add x12, x0, x0
	lui x13, 1071644672>>12 &0xfffff
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__muldf3
	add x8, x0, x10
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	add x13, x0, x12
	call $__ltdf2
	bgez x10, LBB0_73
LBB0_68:                                //  %land.lhs.true
	add x10, x0, x8
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $rint
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	call $__eqdf2
	beqz x10, LBB0_73
LBB0_69:                                //  %if.then400
	ori x28, x0, -536870912 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -536870912 >> 12 & 0xfffff
	or x1, x1, x28
	ori x28, x0, -940572673 & 0xfff
	slli x28, x28, 20
	lui x3, -940572673 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	addi x4, x2, 24
	sw x1, 24 ( x4 )
	sw x3, 52 ( x2 )
	jalr x0, LBB0_73 ( x0 )
LBB0_70:                                //  %if.else403
	lui x1, 2146435072>>12 &0xfffff
	sw x1, 52 ( x2 )
	addi x1, x2, 24
	sw x0, 24 ( x1 )
	add x12, x0, x0
	lui x13, 1071644672>>12 &0xfffff
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__muldf3
	add x8, x0, x10
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	add x13, x0, x12
	call $__ltdf2
	bgez x10, LBB0_73
LBB0_71:                                //  %land.lhs.true407
	add x10, x0, x8
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $rint
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	call $__eqdf2
	beqz x10, LBB0_73
LBB0_72:                                //  %if.then410
	ori x28, x0, -1048576 & 0xfff
	slli x28, x28, 20
	lui x1, -1048576 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 52 ( x2 )
	addi x1, x2, 24
	sw x0, 24 ( x1 )
LBB0_73:                                //  %if.end413
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__fdlib_version >> 12 & 0xfffff
	jalr x0, LBB0_28 ( x0 )
LBB0_74:                                //  %sw.bb424
	ori x28, x0, $.str.25 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.25 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.24 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.24 >> 12 & 0xfffff
	jalr x0, LBB0_23 ( x0 )
LBB0_75:                                //  %sw.bb440
	ori x28, x0, $.str.25 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.25 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.24 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.24 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 100
	or x3, x3, x28
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x5, LBB0_77
LBB0_76:                                //  %sw.bb440
	add x3, x0, x1
LBB0_77:                                //  %sw.bb440
	slti x1, x0, 1
	sw x1, 24 ( x2 )
	addi x1, x2, 24
	add x4, x0, x1
	sw x3, 4 ( x4 )
	lui x1, $__fdlib_version >> 12 & 0xfffff
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	sw x0, 24 ( x4 )
	lui x3, -1048576 >> 12 & 0xfffff
	ori x28, x0, -1048576 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x3, x28
	add x3, x0, x0
	beq x1, x3, LBB0_79
LBB0_78:                                //  %sw.bb440
	add x3, x0, x4
LBB0_79:                                //  %sw.bb440
	sw x3, 52 ( x2 )
	jalr x0, LBB0_37 ( x0 )
LBB0_80:                                //  %sw.bb461
	ori x28, x0, $.str.25 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.25 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.24 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.24 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 100
	or x3, x3, x28
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x5, LBB0_82
LBB0_81:                                //  %sw.bb461
	add x3, x0, x1
LBB0_82:                                //  %sw.bb461
	slti x1, x0, 1
	sw x1, 24 ( x2 )
	addi x1, x2, 24
	add x4, x0, x1
	sw x3, 4 ( x4 )
	lui x1, $__fdlib_version >> 12 & 0xfffff
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	sw x0, 24 ( x4 )
	add x3, x0, x0
	beq x1, x3, LBB0_79
LBB0_83:                                //  %sw.bb461
	lui x3, 2146959360>>12 &0xfffff
	sw x3, 52 ( x2 )
	jalr x0, LBB0_37 ( x0 )
LBB0_84:                                //  %sw.bb482
	ori x28, x0, $.str.27 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.27 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.26 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.26 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 100
	or x3, x3, x28
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x5, LBB0_86
LBB0_85:                                //  %sw.bb482
	add x3, x0, x1
LBB0_86:                                //  %sw.bb482
	addi x1, x0, 3
	sw x1, 24 ( x2 )
	addi x1, x2, 24
	sw x3, 4 ( x1 )
	lui x1, $__fdlib_version >> 12 & 0xfffff
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 0 ( x1 )
	lui x1, -536870912 >> 12 & 0xfffff
	ori x28, x0, -536870912 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x8, x0, x0
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	beq x3, x8, LBB0_88
LBB0_87:                                //  %sw.bb482
	add x1, x0, x8
LBB0_88:                                //  %sw.bb482
	addi x3, x2, 24
	sw x1, 24 ( x3 )
	add x12, x0, x8
	add x13, x0, x8
	call $__gtdf2
	lui x1, -1048576 >> 12 & 0xfffff
	ori x28, x0, -1048576 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	ble x10, x8, LBB0_90
LBB0_89:
	lui x1, 2146435072>>12 &0xfffff
LBB0_90:                                //  %sw.bb482
	lui x3, -940572673 >> 12 & 0xfffff
	ori x28, x0, -940572673 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x3, x28
	lui x3, 1206910975 >> 12 & 0xfffff
	ori x28, x0, 1206910975 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	bgt x10, x8, LBB0_92
LBB0_91:                                //  %sw.bb482
	add x3, x0, x4
LBB0_92:                                //  %sw.bb482
	lw x4, 20 ( x2 )                //  4-byte Folded Reload
	nop
	beq x4, x8, LBB0_94
LBB0_93:                                //  %sw.bb482
	add x3, x0, x1
LBB0_94:                                //  %sw.bb482
	sw x3, 52 ( x2 )
	xori x1, x4, 2
	beqz x1, LBB0_19
LBB0_95:                                //  %if.else56
	addi x10, x2, 24
	call $matherr
	beqz x10, LBB0_19
	jalr x0, LBB0_143 ( x0 )
LBB0_96:                                //  %sw.bb509
	ori x28, x0, $.str.29 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.29 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.28 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.28 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 100
	or x3, x3, x28
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x5, LBB0_98
LBB0_97:                                //  %sw.bb509
	add x3, x0, x1
LBB0_98:                                //  %sw.bb509
	slti x1, x0, 1
	sw x1, 24 ( x2 )
	addi x1, x2, 24
	add x4, x0, x1
	sw x3, 4 ( x4 )
	lui x1, $__fdlib_version >> 12 & 0xfffff
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	sw x0, 24 ( x4 )
	add x3, x0, x0
	beq x1, x3, LBB0_79
LBB0_99:                                //  %sw.bb509
	lui x3, 2146959360>>12 &0xfffff
	sw x3, 52 ( x2 )
	jalr x0, LBB0_37 ( x0 )
LBB0_100:                               //  %sw.bb533
	ori x28, x0, $.str.31 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.31 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.30 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.30 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 100
	or x3, x3, x28
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x5, LBB0_102
LBB0_101:                               //  %sw.bb533
	add x3, x0, x1
LBB0_102:                               //  %sw.bb533
	slti x1, x0, 1
	sw x1, 24 ( x2 )
	addi x4, x2, 24
	sw x3, 4 ( x4 )
	lui x1, $__fdlib_version >> 12 & 0xfffff
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	add x3, x0, x0
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	beq x1, x3, LBB0_104
LBB0_103:                               //  %sw.bb533
	add x5, x0, x3
LBB0_104:                               //  %sw.bb533
	sw x5, 24 ( x4 )
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	beq x1, x3, LBB0_48
LBB0_105:                               //  %sw.bb533
	lui x4, 2146959360>>12 &0xfffff
	sw x4, 52 ( x2 )
	jalr x0, LBB0_37 ( x0 )
LBB0_106:                               //  %sw.bb557
	ori x28, x0, $.str.33 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.33 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.32 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.32 >> 12 & 0xfffff
LBB0_107:                               //  %sw.bb557
	srli x28, x28, 20
	addi x4, x0, 100
	or x3, x3, x28
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x5, LBB0_109
LBB0_108:                               //  %sw.bb557
	add x3, x0, x1
LBB0_109:                               //  %sw.bb557
	slti x1, x0, 1
	sw x1, 24 ( x2 )
	addi x1, x2, 24
	add x4, x0, x1
	sw x3, 4 ( x4 )
	lui x1, 2146959360>>12 &0xfffff
	sw x1, 52 ( x2 )
LBB0_110:                               //  %sw.bb557
	sw x0, 24 ( x4 )
LBB0_111:                               //  %sw.bb557
	lui x1, $__fdlib_version >> 12 & 0xfffff
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	jalr x0, LBB0_37 ( x0 )
LBB0_112:                               //  %sw.bb575
	ori x28, x0, $.str.35 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.35 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.34 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.34 >> 12 & 0xfffff
	jalr x0, LBB0_107 ( x0 )
LBB0_113:                               //  %sw.bb593
	ori x28, x0, $.str.37 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.37 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.36 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.36 >> 12 & 0xfffff
	jalr x0, LBB0_107 ( x0 )
LBB0_114:                               //  %sw.bb611
	ori x28, x0, $.str.37 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.37 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.36 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.36 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 100
	or x3, x3, x28
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x5, LBB0_116
LBB0_115:                               //  %sw.bb611
	add x3, x0, x1
LBB0_116:                               //  %sw.bb611
	addi x1, x0, 2
	sw x1, 24 ( x2 )
	addi x1, x2, 24
	add x8, x0, x1
	sw x3, 4 ( x8 )
	add x12, x0, x0
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x12
	call $__divdf3
	sw x10, 24 ( x8 )
	sw x11, 52 ( x2 )
	jalr x0, LBB0_111 ( x0 )
LBB0_117:                               //  %sw.bb629
	ori x28, x0, $.str.39 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.39 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.38 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.38 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 100
	or x5, x3, x28
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x3, LBB0_119
LBB0_118:                               //  %sw.bb629
	add x5, x0, x1
LBB0_119:                               //  %sw.bb629
	sw x5, 20 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x0
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	add x13, x0, x8
	call $__gtdf2
	lui x1, -1048576 >> 12 & 0xfffff
	ori x28, x0, -1048576 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	ble x10, x8, LBB0_121
LBB0_120:
	lui x1, 2146435072>>12 &0xfffff
LBB0_121:                               //  %sw.bb629
	lw x4, 20 ( x2 )                //  4-byte Folded Reload
	addi x3, x0, 3
	sw x3, 24 ( x2 )
	addi x3, x2, 24
	sw x4, 4 ( x3 )
	sw x1, 52 ( x2 )
	sw x0, 24 ( x3 )
	jalr x0, LBB0_27 ( x0 )
LBB0_122:                               //  %sw.bb650
	ori x28, x0, $.str.39 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.39 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.38 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.38 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 100
	or x3, x3, x28
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x5, LBB0_124
LBB0_123:                               //  %sw.bb650
	add x3, x0, x1
LBB0_124:                               //  %sw.bb650
	sw x8, 24 ( x2 )
	addi x1, x2, 24
	add x8, x0, x1
	sw x3, 4 ( x8 )
	add x10, x0, x0
	add x11, x0, x10
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	lw x13, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $copysign
	sw x10, 24 ( x8 )
	sw x11, 52 ( x2 )
	jalr x0, LBB0_27 ( x0 )
LBB0_125:                               //  %sw.bb669
	ori x28, x0, $.str.41 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.41 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.40 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.40 >> 12 & 0xfffff
LBB0_126:                               //  %sw.bb669
	srli x28, x28, 20
	addi x4, x0, 100
	or x3, x3, x28
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x5, LBB0_128
LBB0_127:                               //  %sw.bb669
	add x3, x0, x1
LBB0_128:                               //  %sw.bb669
	addi x1, x0, 5
	sw x1, 24 ( x2 )
	jalr x0, LBB0_26 ( x0 )
LBB0_129:                               //  %sw.bb687
	ori x28, x0, $.str.13 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.13 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.12 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.12 >> 12 & 0xfffff
	jalr x0, LBB0_126 ( x0 )
LBB0_130:                               //  %sw.bb705
	ori x28, x0, $.str.43 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.43 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.42 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.42 >> 12 & 0xfffff
	jalr x0, LBB0_126 ( x0 )
LBB0_131:                               //  %sw.bb723
	ori x28, x0, $.str.15 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.15 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.14 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.14 >> 12 & 0xfffff
	jalr x0, LBB0_126 ( x0 )
LBB0_132:                               //  %sw.bb741
	ori x28, x0, $.str.45 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.45 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.44 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.44 >> 12 & 0xfffff
	jalr x0, LBB0_126 ( x0 )
LBB0_133:                               //  %sw.bb759
	ori x28, x0, $.str.17 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.17 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.16 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.16 >> 12 & 0xfffff
	jalr x0, LBB0_126 ( x0 )
LBB0_134:                               //  %sw.bb777
	ori x28, x0, $.str.47 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.47 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.46 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.46 >> 12 & 0xfffff
	jalr x0, LBB0_11 ( x0 )
LBB0_135:                               //  %sw.bb801
	ori x28, x0, $.str.47 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.47 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.46 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.46 >> 12 & 0xfffff
	jalr x0, LBB0_42 ( x0 )
LBB0_136:                               //  %sw.bb825
	ori x28, x0, $.str.25 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.25 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.24 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.24 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 100
	or x3, x3, x28
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x5, LBB0_138
LBB0_137:                               //  %sw.bb825
	add x3, x0, x1
LBB0_138:                               //  %sw.bb825
	slti x1, x0, 1
	sw x1, 24 ( x2 )
	addi x4, x2, 24
	sw x3, 4 ( x4 )
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 24 ( x4 )
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 52 ( x2 )
	lui x1, $__fdlib_version >> 12 & 0xfffff
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	xori x3, x1, 2
	beqz x3, LBB0_63
LBB0_139:                               //  %sw.bb825
	xori x1, x1, -1
	beqz x1, LBB0_63
LBB0_140:                               //  %if.else838
	addi x10, x2, 24
	call $matherr
	bgtu x10, x0, LBB0_143
LBB0_141:                               //  %if.then841
	call $__errno
	addi x1, x0, 33
LBB0_142:                               //  %sw.epilog
	sw x1, 0 ( x10 )
LBB0_143:                               //  %sw.epilog
	lw x8, 56 ( x2 )
	nop
	beqz x8, LBB0_145
LBB0_144:                               //  %if.then848
	call $__errno
	sw x8, 0 ( x10 )
LBB0_145:                               //  %if.end851
	addi x1, x2, 24
	lw x10, 24 ( x1 )
	lw x11, 52 ( x2 )
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	lw x1, 68 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 72
$cfi5:
	.cfi_adjust_cfa_offset -72
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__kernel_standard, ($func_end0)-($__kernel_standard)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	LBB0_2
	.long	LBB0_6
	.long	LBB0_7
	.long	LBB0_10
	.long	LBB0_20
	.long	LBB0_21
	.long	LBB0_22
	.long	LBB0_29
	.long	LBB0_29
	.long	LBB0_38
	.long	LBB0_38
	.long	LBB0_39
	.long	LBB0_39
	.long	LBB0_40
	.long	LBB0_41
	.long	LBB0_49
	.long	LBB0_57
	.long	LBB0_58
	.long	LBB0_59
	.long	LBB0_60
	.long	LBB0_64
	.long	LBB0_74
	.long	LBB0_75
	.long	LBB0_80
	.long	LBB0_84
	.long	LBB0_96
	.long	LBB0_100
	.long	LBB0_106
	.long	LBB0_112
	.long	LBB0_113
	.long	LBB0_114
	.long	LBB0_117
	.long	LBB0_122
	.long	LBB0_125
	.long	LBB0_129
	.long	LBB0_130
	.long	LBB0_131
	.long	LBB0_132
	.long	LBB0_133
	.long	LBB0_134
	.long	LBB0_135
	.long	LBB0_136
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_145
	.long	LBB0_2
	.long	LBB0_6
	.long	LBB0_7
	.long	LBB0_10
	.long	LBB0_20
	.long	LBB0_21
	.long	LBB0_22
	.long	LBB0_29
	.long	LBB0_29
	.long	LBB0_38
	.long	LBB0_38
	.long	LBB0_39
	.long	LBB0_39
	.long	LBB0_40
	.long	LBB0_41
	.long	LBB0_49
	.long	LBB0_57
	.long	LBB0_58
	.long	LBB0_59
	.long	LBB0_60
	.long	LBB0_64
	.long	LBB0_74
	.long	LBB0_75
	.long	LBB0_80
	.long	LBB0_84
	.long	LBB0_96
	.long	LBB0_100
	.long	LBB0_106
	.long	LBB0_112
	.long	LBB0_113
	.long	LBB0_114
	.long	LBB0_117
	.long	LBB0_122
	.long	LBB0_125
	.long	LBB0_129
	.long	LBB0_130
	.long	LBB0_131
	.long	LBB0_132
	.long	LBB0_133
	.long	LBB0_134
	.long	LBB0_135
	.long	LBB0_136

	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"acos"
	.size	$.str, 5

	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
$.str.1:
	.asciz	"acosf"
	.size	$.str.1, 6

	.address_space	0	
	.address_space	0	
	.type	$.str.2,@object         //  @.str.2
$.str.2:
	.asciz	"asin"
	.size	$.str.2, 5

	.address_space	0	
	.type	$.str.3,@object         //  @.str.3
$.str.3:
	.asciz	"asinf"
	.size	$.str.3, 6

	.address_space	0	
	.type	$.str.4,@object         //  @.str.4
$.str.4:
	.asciz	"atan2"
	.size	$.str.4, 6

	.address_space	0	
	.type	$.str.5,@object         //  @.str.5
$.str.5:
	.asciz	"atan2f"
	.size	$.str.5, 7

	.address_space	0	
	.type	$.str.6,@object         //  @.str.6
$.str.6:
	.asciz	"hypot"
	.size	$.str.6, 6

	.address_space	0	
	.type	$.str.7,@object         //  @.str.7
$.str.7:
	.asciz	"hypotf"
	.size	$.str.7, 7

	.address_space	0	
	.type	$.str.8,@object         //  @.str.8
$.str.8:
	.asciz	"cosh"
	.size	$.str.8, 5

	.address_space	0	
	.type	$.str.9,@object         //  @.str.9
$.str.9:
	.asciz	"coshf"
	.size	$.str.9, 6

	.address_space	0	
	.type	$.str.10,@object        //  @.str.10
$.str.10:
	.asciz	"exp"
	.size	$.str.10, 4

	.address_space	0	
	.type	$.str.11,@object        //  @.str.11
$.str.11:
	.asciz	"expf"
	.size	$.str.11, 5

	.address_space	0	
	.type	$.str.12,@object        //  @.str.12
$.str.12:
	.asciz	"y0"
	.size	$.str.12, 3

	.address_space	0	
	.type	$.str.13,@object        //  @.str.13
$.str.13:
	.asciz	"y0f"
	.size	$.str.13, 4

	.address_space	0	
	.type	$.str.14,@object        //  @.str.14
$.str.14:
	.asciz	"y1"
	.size	$.str.14, 3

	.address_space	0	
	.type	$.str.15,@object        //  @.str.15
$.str.15:
	.asciz	"y1f"
	.size	$.str.15, 4

	.address_space	0	
	.type	$.str.16,@object        //  @.str.16
$.str.16:
	.asciz	"yn"
	.size	$.str.16, 3

	.address_space	0	
	.type	$.str.17,@object        //  @.str.17
$.str.17:
	.asciz	"ynf"
	.size	$.str.17, 4

	.address_space	0	
	.type	$.str.18,@object        //  @.str.18
$.str.18:
	.asciz	"lgamma"
	.size	$.str.18, 7

	.address_space	0	
	.type	$.str.19,@object        //  @.str.19
$.str.19:
	.asciz	"lgammaf"
	.size	$.str.19, 8

	.address_space	0	
	.type	$.str.20,@object        //  @.str.20
$.str.20:
	.asciz	"log"
	.size	$.str.20, 4

	.address_space	0	
	.type	$.str.21,@object        //  @.str.21
$.str.21:
	.asciz	"logf"
	.size	$.str.21, 5

	.address_space	0	
	.type	$.str.22,@object        //  @.str.22
$.str.22:
	.asciz	"log10"
	.size	$.str.22, 6

	.address_space	0	
	.type	$.str.23,@object        //  @.str.23
$.str.23:
	.asciz	"log10f"
	.size	$.str.23, 7

	.address_space	0	
	.type	$.str.24,@object        //  @.str.24
$.str.24:
	.asciz	"pow"
	.size	$.str.24, 4

	.address_space	0	
	.type	$.str.25,@object        //  @.str.25
$.str.25:
	.asciz	"powf"
	.size	$.str.25, 5

	.address_space	0	
	.type	$.str.26,@object        //  @.str.26
$.str.26:
	.asciz	"sinh"
	.size	$.str.26, 5

	.address_space	0	
	.type	$.str.27,@object        //  @.str.27
$.str.27:
	.asciz	"sinhf"
	.size	$.str.27, 6

	.address_space	0	
	.type	$.str.28,@object        //  @.str.28
$.str.28:
	.asciz	"sqrt"
	.size	$.str.28, 5

	.address_space	0	
	.type	$.str.29,@object        //  @.str.29
$.str.29:
	.asciz	"sqrtf"
	.size	$.str.29, 6

	.address_space	0	
	.type	$.str.30,@object        //  @.str.30
$.str.30:
	.asciz	"fmod"
	.size	$.str.30, 5

	.address_space	0	
	.type	$.str.31,@object        //  @.str.31
$.str.31:
	.asciz	"fmodf"
	.size	$.str.31, 6

	.address_space	0	
	.type	$.str.32,@object        //  @.str.32
$.str.32:
	.asciz	"remainder"
	.size	$.str.32, 10

	.address_space	0	
	.type	$.str.33,@object        //  @.str.33
$.str.33:
	.asciz	"remainderf"
	.size	$.str.33, 11

	.address_space	0	
	.type	$.str.34,@object        //  @.str.34
$.str.34:
	.asciz	"acosh"
	.size	$.str.34, 6

	.address_space	0	
	.type	$.str.35,@object        //  @.str.35
$.str.35:
	.asciz	"acoshf"
	.size	$.str.35, 7

	.address_space	0	
	.type	$.str.36,@object        //  @.str.36
$.str.36:
	.asciz	"atanh"
	.size	$.str.36, 6

	.address_space	0	
	.type	$.str.37,@object        //  @.str.37
$.str.37:
	.asciz	"atanhf"
	.size	$.str.37, 7

	.address_space	0	
	.type	$.str.38,@object        //  @.str.38
$.str.38:
	.asciz	"scalb"
	.size	$.str.38, 6

	.address_space	0	
	.type	$.str.39,@object        //  @.str.39
$.str.39:
	.asciz	"scalbf"
	.size	$.str.39, 7

	.address_space	0	
	.type	$.str.40,@object        //  @.str.40
$.str.40:
	.asciz	"j0"
	.size	$.str.40, 3

	.address_space	0	
	.type	$.str.41,@object        //  @.str.41
$.str.41:
	.asciz	"j0f"
	.size	$.str.41, 4

	.address_space	0	
	.type	$.str.42,@object        //  @.str.42
$.str.42:
	.asciz	"j1"
	.size	$.str.42, 3

	.address_space	0	
	.type	$.str.43,@object        //  @.str.43
$.str.43:
	.asciz	"j1f"
	.size	$.str.43, 4

	.address_space	0	
	.type	$.str.44,@object        //  @.str.44
$.str.44:
	.asciz	"jn"
	.size	$.str.44, 3

	.address_space	0	
	.type	$.str.45,@object        //  @.str.45
$.str.45:
	.asciz	"jnf"
	.size	$.str.45, 4

	.address_space	0	
	.type	$.str.46,@object        //  @.str.46
$.str.46:
	.asciz	"gamma"
	.size	$.str.46, 6

	.address_space	0	
	.type	$.str.47,@object        //  @.str.47
$.str.47:
	.asciz	"gammaf"
	.size	$.str.47, 7


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
