	.text
	.file	"ef_pow.bc"
	.globl	$__ieee754_powf
	.type	$__ieee754_powf,@function
$__ieee754_powf:                        //  @__ieee754_powf
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -64
$cfi2:
	.cfi_adjust_cfa_offset 64
	sw x1, 60 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 52 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x5, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x5, x28
	and x8, x1, x11
	bgtu x8, x0, LBB0_2
LBB0_1:
	lui x12, 1065353216>>12 &0xfffff
	jalr x0, LBB0_85 ( x0 )
LBB0_2:                                 //  %if.end
	and x9, x1, x12
	lui x7, 2139095040>>12 &0xfffff
	bgtu x9, x7, LBB0_4
LBB0_3:                                 //  %if.end
	lui x1, 2139095041 >> 12 & 0xfffff
	ori x28, x0, 2139095041 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x1, x8, LBB0_6
LBB0_4:                                 //  %if.then10
	lui x12, 1065353216>>12 &0xfffff
	beq x9, x12, LBB0_85
LBB0_5:                                 //  %if.else
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	call $nanf
	jalr x0, LBB0_84 ( x0 )
LBB0_6:                                 //  %if.end13
	add x4, x0, x0
	bgez x12, LBB0_12
LBB0_7:                                 //  %if.then15
	ori x28, x0, 1266679807 & 0xfff
	slli x28, x28, 20
	lui x1, 1266679807 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgeu x1, x8, LBB0_9
LBB0_8:
	addi x4, x0, 2
	jalr x0, LBB0_12 ( x0 )
LBB0_9:                                 //  %if.else18
	lui x1, 1065353216>>12 &0xfffff
	bgtu x1, x8, LBB0_12
LBB0_10:                                //  %if.then20
	srli x1, x8, 23
	addi x3, x0, 150
	sub x3, x3, x1
	srl x1, x8, x3
	sll x3, x1, x3
	bne x3, x8, LBB0_12
LBB0_11:                                //  %if.then25
	andi x1, x1, 1
	addi x3, x0, 2
	sub x4, x3, x1
LBB0_12:                                //  %if.end31
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x5, x28
	and x1, x1, x11
	lui x3, 1065353216>>12 &0xfffff
	beq x1, x3, LBB0_20
LBB0_13:                                //  %if.end31
	bne x1, x7, LBB0_23
LBB0_14:                                //  %if.then33
	lui x12, 1065353216>>12 &0xfffff
	beq x9, x12, LBB0_85
LBB0_15:                                //  %if.else36
	ori x28, x0, 1065353217 & 0xfff
	slli x28, x28, 20
	lui x1, 1065353217 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x1, x9, LBB0_19
LBB0_16:                                //  %if.then38
	not x1, x0
	bgt x11, x1, LBB0_18
LBB0_17:                                //  %if.then38
	add x11, x0, x0
LBB0_18:                                //  %if.then38
	add x12, x0, x11
	jalr x0, LBB0_85 ( x0 )
LBB0_19:                                //  %if.else40
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	xor x1, x1, x11
	srai x3, x11, 31
	and x12, x1, x3
	jalr x0, LBB0_85 ( x0 )
LBB0_20:                                //  %if.then49
	bgez x11, LBB0_85
LBB0_21:                                //  %if.then51
	lui x10, 1065353216>>12 &0xfffff
	add x11, x0, x12
	call $__divsf3
	jalr x0, LBB0_84 ( x0 )
LBB0_23:                                //  %if.end53
	lui x1, 1073741824>>12 &0xfffff
	bne x11, x1, LBB0_25
LBB0_24:                                //  %if.then55
	add x10, x0, x12
	add x11, x0, x12
	jalr x0, LBB0_83 ( x0 )
LBB0_25:                                //  %if.end56
	bgt x0, x12, LBB0_28
LBB0_26:                                //  %if.end56
	lui x1, 1056964608>>12 &0xfffff
	bne x11, x1, LBB0_28
LBB0_27:                                //  %if.then60
	add x10, x0, x12
	call $__ieee754_sqrtf
	jalr x0, LBB0_84 ( x0 )
LBB0_28:                                //  %if.end63
	sw x4, 44 ( x2 )                //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	sw x12, 40 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x12
	sw x9, 48 ( x2 )                //  4-byte Folded Spill
	call $fabsf
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	lui x12, 2139095040>>12 &0xfffff
	add x9, x0, x10
	beqz x7, LBB0_30
LBB0_29:                                //  %if.end63
	lui x1, 1073741824>>12 &0xfffff
	or x1, x1, x7
	bne x1, x12, LBB0_38
LBB0_30:                                //  %if.then70
	lui x10, 1065353216>>12 &0xfffff
	add x11, x0, x9
	add x8, x0, x9
	call $__divsf3
	add x12, x0, x10
	add x1, x0, x0
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x1, x3, LBB0_32
LBB0_31:                                //  %if.then70
	add x12, x0, x8
LBB0_32:                                //  %if.then70
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	bgez x1, LBB0_85
LBB0_33:                                //  %if.then76
	ori x28, x0, -1065353216 & 0xfff
	slli x28, x28, 20
	lui x1, -1065353216 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x4
	or x1, x1, x3
	bgtu x1, x0, LBB0_35
LBB0_34:                                //  %if.then79
	add x10, x0, x12
	add x11, x0, x12
	jalr x0, LBB0_40 ( x0 )
LBB0_35:                                //  %if.else83
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	add x11, x0, x12
	add x8, x0, x3
	sw x12, 48 ( x2 )               //  4-byte Folded Spill
	call $__subsf3
	slti x1, x0, 1
	beq x8, x1, LBB0_37
LBB0_36:                                //  %if.else83
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
LBB0_37:                                //  %if.else83
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	lw x1, 60 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 64
$cfi5:
	.cfi_adjust_cfa_offset -64
$cfi6:
	.cfi_def_cfa 2, 0
	ret
LBB0_38:                                //  %if.end90
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	nop
	slt x1, x10, x0
	addi x4, x1, -1
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	or x1, x4, x1
	bgtu x1, x0, LBB0_41
LBB0_39:                                //  %if.then95
	add x11, x0, x10
LBB0_40:                                //  %cleanup
	call $__subsf3
	add x11, x0, x10
	call $__divsf3
	jalr x0, LBB0_84 ( x0 )
LBB0_41:                                //  %if.end99
	ori x28, x0, 1291845633 & 0xfff
	slli x28, x28, 20
	lui x1, 1291845633 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x1, x8, LBB0_48
LBB0_42:                                //  %if.then101
	ori x28, x0, 1065353207 & 0xfff
	slli x28, x28, 20
	lui x1, 1065353207 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	bgtu x7, x1, LBB0_44
LBB0_43:                                //  %if.then103
	srai x1, x3, 31
	lui x3, 2139095040>>12 &0xfffff
	and x12, x3, x1
	jalr x0, LBB0_85 ( x0 )
LBB0_44:                                //  %if.end109
	ori x28, x0, 1065353224 & 0xfff
	slli x28, x28, 20
	lui x1, 1065353224 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x1, x7, LBB0_47
LBB0_45:                                //  %if.then111
	add x1, x0, x0
	bgt x3, x1, LBB0_85
LBB0_46:                                //  %if.then111
	add x12, x0, x1
	jalr x0, LBB0_85 ( x0 )
LBB0_47:                                //  %if.end117
	sw x4, 20 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, -1082130432 & 0xfff
	slli x28, x28, 20
	lui x1, -1082130432 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x9
	call $__addsf3
	add x8, x0, x10
	add x11, x0, x8
	call $__mulsf3
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1098907648 & 0xfff
	slli x28, x28, 20
	lui x1, -1098907648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	ori x28, x0, 1051372203 & 0xfff
	slli x28, x28, 20
	lui x1, 1051372203 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lui x10, 1056964608>>12 &0xfffff
	add x11, x0, x1
	call $__subsf3
	add x1, x0, x10
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1069066752 & 0xfff
	slli x28, x28, 20
	lui x1, 1069066752 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 921478512 & 0xfff
	slli x28, x28, 20
	lui x1, 921478512 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	add x8, x0, x10
	ori x28, x0, -1078416837 & 0xfff
	slli x28, x28, 20
	lui x1, -1078416837 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__addsf3
	add x8, x0, x10
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__addsf3
	ori x28, x0, -4096 & 0xfff
	slli x28, x28, 20
	lui x1, -4096 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x10, x1, x10
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_59 ( x0 )
LBB0_48:                                //  %if.else143
	lui x8, 8388608>>12 &0xfffff
	sw x4, 20 ( x2 )                //  4-byte Folded Spill
	bgeu x7, x8, LBB0_50
LBB0_49:
	addi x1, x0, -151
	jalr x0, LBB0_51 ( x0 )
LBB0_50:                                //  %if.else143
	addi x1, x0, -127
LBB0_51:                                //  %if.else143
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	lui x11, 1266679808>>12 &0xfffff
	add x10, x0, x9
	call $__mulsf3
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x8, x1, LBB0_53
LBB0_52:                                //  %if.else143
	add x10, x0, x1
LBB0_53:                                //  %if.else143
	srai x1, x10, 23
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x1, x3
	lui x1, 8388607 >> 12 & 0xfffff
	ori x28, x0, 8388607 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	and x1, x1, x10
	add x5, x0, x0
	lui x3, 1065353216>>12 &0xfffff
	or x8, x3, x1
	lui x3, 1885298 >> 12 & 0xfffff
	ori x28, x0, 1885298 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	bgtu x3, x1, LBB0_57
LBB0_54:                                //  %if.else162
	lui x3, 6140887 >> 12 & 0xfffff
	ori x28, x0, 6140887 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	bgeu x1, x3, LBB0_56
LBB0_55:
	sw x4, 4 ( x2 )                 //  4-byte Folded Spill
	slti x5, x0, 1
	jalr x0, LBB0_58 ( x0 )
LBB0_56:                                //  %if.else165
	lui x1, -8388608 >> 12 & 0xfffff
	ori x28, x0, -8388608 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x8, x1, x8
	addi x4, x4, 1
LBB0_57:                                //  %do.body170
	sw x4, 4 ( x2 )                 //  4-byte Folded Spill
LBB0_58:                                //  %do.body170
	sw x5, 32 ( x2 )                //  4-byte Folded Spill
	slli x3, x5, 2
	sw x3, 28 ( x2 )                //  4-byte Folded Spill
	lui x1, $bp >> 12 & 0xfffff
	ori x28, x0, $bp & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x3
	lw x11, 0 ( x1 )
	add x10, x0, x8
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	call $__subsf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__addsf3
	add x1, x0, x10
	lui x10, 1065353216>>12 &0xfffff
	add x11, x0, x1
	call $__divsf3
	add x1, x0, x10
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	nop
	srai x1, x8, 1
	lui x3, 536870912>>12 &0xfffff
	or x1, x3, x1
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	slli x3, x3, 21
	add x1, x3, x1
	lui x3, 262144>>12 
	add x10, x3, x1
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__subsf3
	lui x1, -4096 >> 12 & 0xfffff
	ori x28, x0, -4096 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	and x8, x1, x3
	add x11, x0, x8
	sw x8, 32 ( x2 )                //  4-byte Folded Spill
	call $__mulsf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x8
	call $__mulsf3
	add x1, x0, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__subsf3
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	add x1, x0, x10
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	add x8, x0, x10
	sw x8, 24 ( x2 )                //  4-byte Folded Spill
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	add x11, x0, x8
	call $__mulsf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	nop
	add x11, x0, x10
	call $__mulsf3
	add x8, x0, x10
	lui x1, 1045688642 >> 12 & 0xfffff
	ori x28, x0, 1045688642 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	lui x1, 1047278165 >> 12 & 0xfffff
	ori x28, x0, 1047278165 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1049338629 >> 12 & 0xfffff
	ori x28, x0, 1049338629 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1051372203 >> 12 & 0xfffff
	ori x28, x0, 1051372203 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1054567863 >> 12 & 0xfffff
	ori x28, x0, 1054567863 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1058642330 >> 12 & 0xfffff
	ori x28, x0, 1058642330 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	add x11, x0, x8
	call $__mulsf3
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x1, x0, x10
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	add x8, x0, x10
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	nop
	add x11, x0, x10
	call $__mulsf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	lui x11, 1077936128>>12 &0xfffff
	call $__addsf3
	add x11, x0, x8
	call $__addsf3
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	and x10, x1, x10
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	lui x1, -1069547520 >> 12 & 0xfffff
	ori x28, x0, -1069547520 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__subsf3
	add x1, x0, x10
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__mulsf3
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__mulsf3
	add x8, x0, x10
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	and x10, x1, x10
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x8
	call $__subsf3
	add x1, x0, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__subsf3
	lui x1, 1064712271 >> 12 & 0xfffff
	ori x28, x0, 1064712271 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	add x8, x0, x10
	lui x1, 916308896 >> 12 & 0xfffff
	ori x28, x0, 916308896 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x11, x0, x8
	call $__addsf3
	add x1, x0, x10
	lui x3, $dp_l >> 12 & 0xfffff
	ori x28, x0, $dp_l & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	lw x4, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x4
	lw x10, 0 ( x3 )
	add x11, x0, x1
	call $__addsf3
	add x8, x0, x10
	sw x8, 24 ( x2 )                //  4-byte Folded Spill
	lui x1, 1064712192 >> 12 & 0xfffff
	ori x28, x0, 1064712192 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x8
	call $__addsf3
	add x1, x0, x10
	lui x3, $dp_h >> 12 & 0xfffff
	ori x28, x0, $dp_h & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	lw x4, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x4
	lw x10, 0 ( x3 )
	nop
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x1
	call $__addsf3
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	nop
	call $__floatsisf
	add x8, x0, x10
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	and x10, x1, x10
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x8
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	call $__subsf3
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_59:                                //  %if.end296
	call $__subsf3
	add x11, x0, x10
	add x10, x0, x8
	call $__subsf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -4096 & 0xfff
	slli x28, x28, 20
	lui x1, -4096 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	nop
	and x11, x1, x8
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $__subsf3
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__mulsf3
	add x1, x0, x10
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	add x8, x0, x10
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	call $__addsf3
	add x5, x0, x10
	ori x28, x0, -1082130432 & 0xfff
	slli x28, x28, 20
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	or x1, x3, x1
	lui x3, -1082130432 >> 12 & 0xfffff
	srli x28, x28, 20
	add x4, x0, x0
	or x10, x3, x28
	beq x1, x4, LBB0_61
LBB0_60:                                //  %if.end296
	lui x1, 1065353216>>12 &0xfffff
	add x10, x0, x1
LBB0_61:                                //  %if.end296
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	or x1, x1, x28
	and x8, x1, x5
	ble x5, x0, LBB0_70
LBB0_62:                                //  %if.then333
	ori x28, x0, 1124073473 & 0xfff
	slli x28, x28, 20
	lui x1, 1124073473 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x1, x8, LBB0_66
LBB0_63:                                //  %if.then336
	ori x28, x0, 1900671690 & 0xfff
	slli x28, x28, 20
	lui x1, 1900671690 >> 12 & 0xfffff
LBB0_64:                                //  %cleanup
	srli x28, x28, 20
	or x8, x1, x28
LBB0_65:                                //  %cleanup
	add x11, x0, x8
	call $__mulsf3
	add x11, x0, x8
	jalr x0, LBB0_83 ( x0 )
LBB0_66:                                //  %if.else339
	sw x5, 40 ( x2 )                //  4-byte Folded Spill
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	lui x1, 1124073472>>12 &0xfffff
	bne x8, x1, LBB0_75
LBB0_67:                                //  %if.then342
	ori x28, x0, 859351612 & 0xfff
	slli x28, x28, 20
	lui x1, 859351612 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	add x1, x0, x10
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__gtsf2
	ble x10, x0, LBB0_77
LBB0_68:                                //  %if.then347
	ori x28, x0, 1900671690 & 0xfff
	slli x28, x28, 20
	lui x1, 1900671690 >> 12 & 0xfffff
LBB0_69:                                //  %cleanup
	srli x28, x28, 20
	or x8, x1, x28
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_65 ( x0 )
LBB0_70:                                //  %if.else353
	ori x28, x0, 1125515265 & 0xfff
	slli x28, x28, 20
	lui x1, 1125515265 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x1, x8, LBB0_72
LBB0_71:                                //  %if.then356
	ori x28, x0, 228737632 & 0xfff
	slli x28, x28, 20
	lui x1, 228737632 >> 12 & 0xfffff
	jalr x0, LBB0_64 ( x0 )
LBB0_72:                                //  %if.else359
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	sw x5, 40 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x5
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	add x1, x0, x10
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__lesf2
	add x4, x0, x0
	bgt x10, x0, LBB0_75
LBB0_73:                                //  %if.else359
	lui x1, 1125515264>>12 &0xfffff
	bne x8, x1, LBB0_75
LBB0_74:                                //  %if.then366
	ori x28, x0, 228737632 & 0xfff
	slli x28, x28, 20
	lui x1, 228737632 >> 12 & 0xfffff
	jalr x0, LBB0_69 ( x0 )
LBB0_75:                                //  %if.end372
	ori x28, x0, 1056964609 & 0xfff
	slli x28, x28, 20
	lui x1, 1056964609 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgeu x8, x1, LBB0_77
LBB0_76:
	sw x4, 24 ( x2 )                //  4-byte Folded Spill
	lui x8, -4096 >> 12 & 0xfffff
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_80 ( x0 )
LBB0_77:                                //  %if.then377
	srli x1, x8, 23
	ori x28, x0, 8388607 & 0xfff
	addi x1, x1, -126
	lui x5, 8388608>>12 &0xfffff
	slli x28, x28, 20
	srl x1, x5, x1
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	nop
	add x1, x10, x1
	lui x3, 8388607 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	srli x4, x1, 23
	and x7, x3, x1
	andi x4, x4, 255
	addi x9, x0, 150
	or x5, x5, x7
	sub x7, x9, x4
	add x9, x0, x0
	srl x5, x5, x7
	ble x9, x10, LBB0_79
LBB0_78:
	sub x5, x0, x5
LBB0_79:                                //  %if.then377
	sw x5, 24 ( x2 )                //  4-byte Folded Spill
	lui x8, -4096 >> 12 & 0xfffff
	addi x4, x4, -127
	srl x3, x3, x4
	not x3, x3
	and x11, x3, x1
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	add x11, x0, x10
LBB0_80:                                //  %if.end402
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	ori x28, x0, -4096 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x8, x28
	and x8, x1, x10
	ori x28, x0, 1060205056 & 0xfff
	slli x28, x28, 20
	lui x1, 1060205056 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	add x1, x0, x10
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__subsf3
	ori x28, x0, 1060205080 & 0xfff
	slli x28, x28, 20
	lui x1, 1060205080 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 901758604 & 0xfff
	slli x28, x28, 20
	lui x1, 901758604 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	add x1, x0, x10
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x10
	call $__mulsf3
	add x8, x0, x10
	ori x28, x0, 858897228 & 0xfff
	slli x28, x28, 20
	lui x1, 858897228 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	ori x28, x0, -1243747826 & 0xfff
	slli x28, x28, 20
	lui x1, -1243747826 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 948613973 & 0xfff
	slli x28, x28, 20
	lui x1, 948613973 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1154086047 & 0xfff
	slli x28, x28, 20
	lui x1, -1154086047 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1042983595 & 0xfff
	slli x28, x28, 20
	lui x1, 1042983595 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	add x11, x0, x1
	call $__subsf3
	add x1, x0, x10
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1073741824 & 0xfff
	slli x28, x28, 20
	lui x1, -1073741824 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	add x1, x0, x10
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__divsf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	add x1, x0, x10
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__subsf3
	add x8, x0, x10
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__mulsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__subsf3
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	add x1, x0, x10
	lui x10, 1065353216>>12 &0xfffff
	add x11, x0, x1
	call $__subsf3
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x3, 23
	add x11, x1, x10
	srai x1, x11, 23
	bgt x1, x0, LBB0_82
LBB0_81:                                //  %if.then456
	add x11, x0, x3
	call $scalbnf
	add x11, x0, x10
LBB0_82:                                //  %if.end465
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_83:                                //  %cleanup
	call $__mulsf3
LBB0_84:                                //  %cleanup
	add x12, x0, x10
LBB0_85:                                //  %cleanup
	add x10, x0, x12
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	lw x1, 60 ( x2 )
$cfi7:
	.cfi_same_value 1
	addi x2, x2, 64
$cfi8:
	.cfi_adjust_cfa_offset -64
$cfi9:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__ieee754_powf, ($func_end0)-($__ieee754_powf)
	.cfi_endproc

	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.zero	1
	.size	$.str, 1

	.address_space	0	
	.type	$bp,@object             //  @bp
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
$bp:
	.long	1065353216              //  float 1
	.long	1069547520              //  float 1.5
	.size	$bp, 8

	.address_space	0	
	.type	$dp_l,@object           //  @dp_l
	.p2align	2
$dp_l:
	.long	0                       //  float 0
	.long	902942684               //  float 1.56322085E-6
	.size	$dp_l, 8

	.address_space	0	
	.type	$dp_h,@object           //  @dp_h
	.p2align	2
$dp_h:
	.long	0                       //  float 0
	.long	1058390016              //  float 0.584960938
	.size	$dp_h, 8


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
