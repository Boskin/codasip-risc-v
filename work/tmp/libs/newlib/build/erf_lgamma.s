	.text
	.file	"erf_lgamma.bc"
	.globl	$__ieee754_lgammaf_r
	.type	$__ieee754_lgammaf_r,@function
$__ieee754_lgammaf_r:                   //  @__ieee754_lgammaf_r
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
	add x4, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	slti x3, x0, 1
	and x7, x1, x4
	lui x8, 2139095040>>12 &0xfffff
	sw x3, 0 ( x11 )
	bgtu x8, x7, LBB0_2
LBB0_1:                                 //  %if.then
	add x10, x0, x4
	add x11, x0, x4
	call $__mulsf3
	add x8, x0, x10
	jalr x0, LBB0_67 ( x0 )
LBB0_2:                                 //  %if.end
	bgtu x7, x0, LBB0_69
LBB0_68:                                //  %if.end
	jalr x0, LBB0_67 ( x0 )
LBB0_69:                                //  %if.end
LBB0_3:                                 //  %if.end3
	ori x28, x0, 478150655 & 0xfff
	slli x28, x28, 20
	lui x1, 478150655 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x7, x1, LBB0_7
LBB0_4:                                 //  %if.then5
	bgez x4, LBB0_6
LBB0_5:                                 //  %if.then7
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	xor x10, x8, x4
	not x1, x0
	sw x1, 0 ( x11 )
	call $__ieee754_logf
	xor x8, x8, x10
	jalr x0, LBB0_67 ( x0 )
LBB0_6:                                 //  %if.else
	add x10, x0, x4
	call $__ieee754_logf
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	xor x8, x1, x10
	jalr x0, LBB0_67 ( x0 )
LBB0_7:                                 //  %if.end11
	add x3, x0, x0
	bgt x0, x4, LBB0_9
LBB0_8:
	add x5, x0, x4
	add x8, x0, x3
	jalr x0, LBB0_30 ( x0 )
LBB0_9:                                 //  %if.then13
	ori x28, x0, 1258291199 & 0xfff
	slli x28, x28, 20
	lui x1, 1258291199 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgeu x1, x7, LBB0_71
LBB0_70:                                //  %if.then13
	jalr x0, LBB0_67 ( x0 )
LBB0_71:                                //  %if.then13
LBB0_10:                                //  %if.end16
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1048575999 & 0xfff
	slli x28, x28, 20
	lui x1, 1048575999 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x7, 20 ( x2 )                //  4-byte Folded Spill
	sw x4, 24 ( x2 )                //  4-byte Folded Spill
	bgtu x7, x1, LBB0_12
LBB0_11:                                //  %if.then.i
	ori x28, x0, 1078530011 & 0xfff
	slli x28, x28, 20
	lui x1, 1078530011 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x4
	call $__mulsf3
	add x11, x0, x0
	add x12, x0, x11
	call $__kernel_sinf
	jalr x0, LBB0_26 ( x0 )
LBB0_12:                                //  %if.end.i
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	xor x10, x1, x4
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	call $floorf
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__eqsf2
	beqz x10, LBB0_14
LBB0_13:                                //  %if.then3.i
	ori x28, x0, -1090519040 & 0xfff
	slli x28, x28, 20
	lui x1, -1090519040 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	call $floorf
	add x1, x0, x10
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__subsf3
	add x11, x0, x10
	call $__addsf3
	lui x11, 1082130432>>12 &0xfffff
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	call $__mulsf3
	call $__fixsfsi
	jalr x0, LBB0_15 ( x0 )
LBB0_14:                                //  %if.else12.i
	lui x10, 1258291200>>12 &0xfffff
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	andi x10, x10, 1
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	call $__floatsisf
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	slli x10, x1, 2
LBB0_15:                                //  %if.end26.i
	addi x1, x0, 6
	bgtu x10, x1, LBB0_21
LBB0_16:                                //  %if.end26.i
	addi x11, x0, 4
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
LBB0_17:                                //  %sw.bb.i
	ori x28, x0, 1078530011 & 0xfff
	slli x28, x28, 20
	lui x1, 1078530011 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_23 ( x0 )
LBB0_18:                                //  %sw.bb29.i
	lui x10, 1056964608>>12 &0xfffff
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	ori x28, x0, 1078530011 & 0xfff
	slli x28, x28, 20
	lui x1, 1078530011 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	add x11, x0, x0
	call $__kernel_cosf
	jalr x0, LBB0_24 ( x0 )
LBB0_19:                                //  %sw.bb33.i
	lui x10, 1065353216>>12 &0xfffff
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	jalr x0, LBB0_22 ( x0 )
LBB0_20:                                //  %sw.bb37.i
	ori x28, x0, -1077936128 & 0xfff
	slli x28, x28, 20
	lui x1, -1077936128 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	ori x28, x0, 1078530011 & 0xfff
	slli x28, x28, 20
	lui x1, 1078530011 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	add x11, x0, x0
	call $__kernel_cosf
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, -2147483648 >> 12 & 0xfffff
	or x1, x3, x28
	xor x10, x1, x10
	jalr x0, LBB0_25 ( x0 )
LBB0_21:                                //  %sw.default.i
	ori x28, x0, -1073741824 & 0xfff
	slli x28, x28, 20
	lui x1, -1073741824 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
LBB0_22:                                //  %sw.epilog.i
	ori x28, x0, 1078530011 & 0xfff
	slli x28, x28, 20
	lui x1, 1078530011 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
LBB0_23:                                //  %sw.epilog.i
	call $__mulsf3
	add x11, x0, x0
	add x12, x0, x11
	call $__kernel_sinf
LBB0_24:                                //  %sw.epilog.i
	lui x3, -2147483648 >> 12 & 0xfffff
LBB0_25:                                //  %sw.epilog.i
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x3, x28
	xor x10, x1, x10
LBB0_26:                                //  %sin_pif.exit
	add x11, x0, x0
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	call $__eqsf2
	beqz x10, LBB0_67
LBB0_27:                                //  %if.end20
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	call $fabsf
	add x1, x0, x10
	ori x28, x0, 1078530011 & 0xfff
	slli x28, x28, 20
	lui x3, 1078530011 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x3, x28
	add x11, x0, x1
	call $__divsf3
	call $__ieee754_logf
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x0
	add x10, x0, x8
	call $__ltsf2
	bgez x10, LBB0_29
LBB0_28:                                //  %if.then25
	not x1, x0
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
LBB0_29:                                //  %if.end26
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x4, 24 ( x2 )                //  4-byte Folded Reload
	nop
	xor x5, x1, x4
	add x3, x0, x0
	lw x8, 16 ( x2 )                //  4-byte Folded Reload
	lw x7, 20 ( x2 )                //  4-byte Folded Reload
LBB0_30:                                //  %if.end28
	ori x28, x0, 1065353215 & 0xfff
	slli x28, x28, 20
	lui x1, 1065353215 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x4, 24 ( x2 )                //  4-byte Folded Spill
	bgt x4, x1, LBB0_33
LBB0_31:                                //  %if.end28
	lui x1, -1082130432 >> 12 & 0xfffff
	ori x28, x0, -1082130432 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x9, x0, x3
	beq x4, x1, LBB0_65
LBB0_32:                                //  %if.end28
	lui x1, -1073741824 >> 12 & 0xfffff
	ori x28, x0, -1073741824 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	jalr x0, LBB0_35 ( x0 )
LBB0_33:                                //  %if.end28
	lui x1, 1065353216>>12 &0xfffff
	add x9, x0, x3
	beq x4, x1, LBB0_65
LBB0_34:                                //  %if.end28
	lui x1, 1073741824>>12 &0xfffff
LBB0_35:                                //  %if.end28
	add x9, x0, x3
	beq x4, x1, LBB0_65
LBB0_36:                                //  %if.else32
	lui x1, 1073741823 >> 12 & 0xfffff
	ori x28, x0, 1073741823 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x7, x1, LBB0_51
LBB0_37:                                //  %if.then34
	lui x1, 1063675494 >> 12 & 0xfffff
	ori x28, x0, 1063675494 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	bgtu x7, x1, LBB0_41
LBB0_38:                                //  %if.then36
	add x10, x0, x5
	sw x5, 12 ( x2 )                //  4-byte Folded Spill
	sw x7, 20 ( x2 )                //  4-byte Folded Spill
	call $__ieee754_logf
	lw x4, 20 ( x2 )                //  4-byte Folded Reload
	lui x1, -2147483648 >> 12 & 0xfffff
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	xor x3, x1, x10
	lui x1, 1060850207 >> 12 & 0xfffff
	ori x28, x0, 1060850207 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	bgeu x1, x4, LBB0_46
LBB0_39:
	lui x10, 1065353216>>12 &0xfffff
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_40:                                //  %sw.bb
	add x11, x0, x5
	call $__subsf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x10
	call $__mulsf3
	add x8, x0, x10
	lui x1, 936608674 >> 12 & 0xfffff
	ori x28, x0, 936608674 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	lui x1, 963090279 >> 12 & 0xfffff
	ori x28, x0, 963090279 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 983323809 >> 12 & 0xfffff
	ori x28, x0, 983323809 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1005716094 >> 12 & 0xfffff
	ori x28, x0, 1005716094 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1032450049 >> 12 & 0xfffff
	ori x28, x0, 1032450049 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1033773887 >> 12 & 0xfffff
	ori x28, x0, 1033773887 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	lui x1, 943467637 >> 12 & 0xfffff
	ori x28, x0, 943467637 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	lui x1, 954369093 >> 12 & 0xfffff
	ori x28, x0, 954369093 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 973452852 >> 12 & 0xfffff
	ori x28, x0, 973452852 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 993881798 >> 12 & 0xfffff
	ori x28, x0, 993881798 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1017682197 >> 12 & 0xfffff
	ori x28, x0, 1017682197 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1051007590 >> 12 & 0xfffff
	ori x28, x0, 1051007590 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	lw x11, 4 ( x2 )                //  4-byte Folded Reload
	nop
	call $__addsf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	lui x1, -1090519040 >> 12 & 0xfffff
	ori x28, x0, -1090519040 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	add x1, x0, x10
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	jalr x0, LBB0_50 ( x0 )
LBB0_41:                                //  %if.else49
	lui x1, 1071490583 >> 12 & 0xfffff
	ori x28, x0, 1071490583 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	bgeu x1, x7, LBB0_43
LBB0_42:
	add x1, x0, x0
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	lui x10, 1073741824>>12 &0xfffff
	jalr x0, LBB0_40 ( x0 )
LBB0_43:                                //  %if.else53
	lui x1, 1067296288 >> 12 & 0xfffff
	ori x28, x0, 1067296288 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x1, x7, LBB0_48
LBB0_44:                                //  %if.end61.thread393
	lui x1, -1078257981 >> 12 & 0xfffff
	ori x28, x0, -1078257981 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x5
	call $__addsf3
	add x1, x0, x0
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
LBB0_45:                                //  %sw.bb88
	add x8, x0, x10
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	call $__mulsf3
	add x1, x0, x10
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x8, x0, x10
	lui x1, -1180436185 >> 12 & 0xfffff
	ori x28, x0, -1180436185 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	lui x1, 979826791 >> 12 & 0xfffff
	ori x28, x0, 979826791 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, -1150191618 >> 12 & 0xfffff
	ori x28, x0, -1150191618 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1016280893 >> 12 & 0xfffff
	ori x28, x0, 1016280893 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, -1105780420 >> 12 & 0xfffff
	ori x28, x0, -1105780420 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	lui x1, 967830007 >> 12 & 0xfffff
	ori x28, x0, 967830007 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	lui x1, -1173540731 >> 12 & 0xfffff
	ori x28, x0, -1173540731 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 991172249 >> 12 & 0xfffff
	ori x28, x0, 991172249 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, -1138164482 >> 12 & 0xfffff
	ori x28, x0, -1138164482 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1032083989 >> 12 & 0xfffff
	ori x28, x0, 1032083989 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lui x3, 837164114 >> 12 & 0xfffff
	ori x28, x0, 837164114 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x3, x28
	add x11, x0, x1
	call $__subsf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	lui x1, 967146347 >> 12 & 0xfffff
	ori x28, x0, 967146347 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	lui x1, -1162349450 >> 12 & 0xfffff
	ori x28, x0, -1162349450 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1002956551 >> 12 & 0xfffff
	ori x28, x0, 1002956551 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, -1123660473 >> 12 & 0xfffff
	ori x28, x0, -1123660473 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1056422238 >> 12 & 0xfffff
	ori x28, x0, 1056422238 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	lui x1, -1107767859 >> 12 & 0xfffff
	ori x28, x0, -1107767859 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	jalr x0, LBB0_50 ( x0 )
LBB0_46:                                //  %if.end61
	lui x1, -1091806452 >> 12 & 0xfffff
	ori x28, x0, -1091806452 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x4
	call $__addsf3
	lui x1, 1047343879 >> 12 & 0xfffff
	ori x28, x0, 1047343879 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_45
LBB0_47:
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_49 ( x0 )
LBB0_48:                                //  %if.end61.thread396
	lui x1, -1082130432 >> 12 & 0xfffff
	ori x28, x0, -1082130432 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x5
	call $__addsf3
	add x1, x0, x0
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
LBB0_49:                                //  %sw.bb123
	lui x1, 1012612190 >> 12 & 0xfffff
	ori x28, x0, 1012612190 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	add x8, x0, x10
	call $__mulsf3
	lui x1, 1047164280 >> 12 & 0xfffff
	ori x28, x0, 1047164280 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1064979378 >> 12 & 0xfffff
	ori x28, x0, 1064979378 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1069169383 >> 12 & 0xfffff
	ori x28, x0, 1069169383 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1059193076 >> 12 & 0xfffff
	ori x28, x0, 1059193076 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, -1113709761 >> 12 & 0xfffff
	ori x28, x0, -1113709761 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	lui x1, 995284443 >> 12 & 0xfffff
	ori x28, x0, 995284443 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	lui x1, 1037398703 >> 12 & 0xfffff
	ori x28, x0, 1037398703 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1061482463 >> 12 & 0xfffff
	ori x28, x0, 1061482463 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1074280749 >> 12 & 0xfffff
	ori x28, x0, 1074280749 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1075654334 >> 12 & 0xfffff
	ori x28, x0, 1075654334 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x11, 1065353216>>12 &0xfffff
	call $__addsf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	lui x1, -1090519040 >> 12 & 0xfffff
	ori x28, x0, -1090519040 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	add x8, x0, x10
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
	add x11, x0, x8
LBB0_50:                                //  %if.end230
	call $__addsf3
	add x1, x0, x10
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	add x9, x0, x10
	lw x8, 16 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_65 ( x0 )
LBB0_51:                                //  %if.else149
	lui x1, 1090519039 >> 12 & 0xfffff
	ori x28, x0, 1090519039 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x7, x1, LBB0_61
LBB0_52:                                //  %if.then151
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x5
	add x8, x0, x5
	call $__fixsfsi
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	call $__floatsisf
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__subsf3
	add x8, x0, x10
	lui x1, 939917159 >> 12 & 0xfffff
	ori x28, x0, 939917159 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	lui x1, 988886452 >> 12 & 0xfffff
	ori x28, x0, 988886452 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1020936420 >> 12 & 0xfffff
	ori x28, x0, 1020936420 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1041620198 >> 12 & 0xfffff
	ori x28, x0, 1041620198 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1051118714 >> 12 & 0xfffff
	ori x28, x0, 1051118714 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1046226010 >> 12 & 0xfffff
	ori x28, x0, 1046226010 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, -1113709761 >> 12 & 0xfffff
	ori x28, x0, -1113709761 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	lui x1, 922081213 >> 12 & 0xfffff
	ori x28, x0, 922081213 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	lui x1, 978054870 >> 12 & 0xfffff
	ori x28, x0, 978054870 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1016643412 >> 12 & 0xfffff
	ori x28, x0, 1016643412 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1043337070 >> 12 & 0xfffff
	ori x28, x0, 1043337070 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1060688069 >> 12 & 0xfffff
	ori x28, x0, 1060688069 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1068641595 >> 12 & 0xfffff
	ori x28, x0, 1068641595 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x11, 1065353216>>12 &0xfffff
	call $__addsf3
	add x1, x0, x10
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__divsf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	lui x11, 1056964608>>12 &0xfffff
	sw x8, 8 ( x2 )                 //  4-byte Folded Spill
	add x10, x0, x8
	call $__mulsf3
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	add x9, x0, x10
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	addi x10, x1, -3
	addi x1, x0, 4
	bgeu x1, x10, LBB0_54
LBB0_53:
	lw x8, 16 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_65 ( x0 )
LBB0_54:                                //  %if.then151
	sw x9, 20 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 4
	call $__mulsi3
	lui x1, JTI0_1 >> 12 & 0xfffff
	ori x28, x0, JTI0_1 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	lw x8, 16 ( x2 )                //  4-byte Folded Reload
	lui x3, 1065353216>>12 &0xfffff
	add x10, x0, x3
	jr x1
LBB0_55:                                //  %sw.bb182
	lui x11, 1086324736>>12 &0xfffff
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__addsf3
LBB0_56:                                //  %sw.bb185
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	lui x11, 1084227584>>12 &0xfffff
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__addsf3
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
LBB0_57:                                //  %sw.bb188
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	lui x11, 1082130432>>12 &0xfffff
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__addsf3
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
LBB0_58:                                //  %sw.bb191
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	lui x11, 1077936128>>12 &0xfffff
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__addsf3
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
LBB0_59:                                //  %sw.bb194
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	lui x11, 1073741824>>12 &0xfffff
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__addsf3
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	call $__ieee754_logf
	add x1, x0, x10
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
LBB0_60:                                //  %if.end230
	add x11, x0, x1
	call $__addsf3
	jalr x0, LBB0_64 ( x0 )
LBB0_61:                                //  %if.else200
	add x10, x0, x5
	sw x5, 12 ( x2 )                //  4-byte Folded Spill
	sw x7, 20 ( x2 )                //  4-byte Folded Spill
	call $__ieee754_logf
	lui x1, 1551892479 >> 12 & 0xfffff
	ori x28, x0, 1551892479 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x3, x1, LBB0_63
LBB0_62:                                //  %if.then203
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	lui x10, 1065353216>>12 &0xfffff
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsf3
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x10
	call $__mulsf3
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	lui x1, -1160395544 >> 12 & 0xfffff
	ori x28, x0, -1160395544 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	lui x1, 979058130 >> 12 & 0xfffff
	ori x28, x0, 979058130 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, -1172568484 >> 12 & 0xfffff
	ori x28, x0, -1172568484 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 978324733 >> 12 & 0xfffff
	ori x28, x0, 978324733 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, -1154086047 >> 12 & 0xfffff
	ori x28, x0, -1154086047 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1034594987 >> 12 & 0xfffff
	ori x28, x0, 1034594987 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1054244637 >> 12 & 0xfffff
	ori x28, x0, 1054244637 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	lui x1, -1090519040 >> 12 & 0xfffff
	ori x28, x0, -1090519040 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	add x8, x0, x10
	lui x1, -1082130432 >> 12 & 0xfffff
	ori x28, x0, -1082130432 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	lw x8, 16 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_60 ( x0 )
LBB0_63:                                //  %if.else223
	lui x1, -1082130432 >> 12 & 0xfffff
	ori x28, x0, -1082130432 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
LBB0_64:                                //  %if.end230
	add x9, x0, x10
LBB0_65:                                //  %if.end230
	add x10, x0, x8
	sw x9, 20 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x9
	call $__subsf3
	add x8, x0, x10
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	add x3, x0, x0
	bgt x3, x1, LBB0_67
LBB0_66:                                //  %if.end230
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_67:                                //  %cleanup
	add x10, x0, x8
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
	.size	$__ieee754_lgammaf_r, ($func_end0)-($__ieee754_lgammaf_r)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	LBB0_17
	.long	LBB0_18
	.long	LBB0_18
	.long	LBB0_19
	.long	LBB0_19
	.long	LBB0_20
	.long	LBB0_20
JTI0_1:
	.long	LBB0_59
	.long	LBB0_58
	.long	LBB0_57
	.long	LBB0_56
	.long	LBB0_55


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
