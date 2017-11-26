	.text
	.file	"er_lgamma.bc"
	.globl	$__ieee754_lgamma_r
	.type	$__ieee754_lgamma_r,@function
$__ieee754_lgamma_r:                    //  @__ieee754_lgamma_r
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
	add x4, x0, x11
	add x5, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	slti x3, x0, 1
	and x9, x1, x4
	lui x11, 2146435072>>12 &0xfffff
	sw x3, 0 ( x12 )
	bgtu x11, x9, LBB0_2
LBB0_1:                                 //  %if.then
	add x10, x0, x5
	add x11, x0, x4
	add x12, x0, x5
	add x13, x0, x4
	call $__muldf3
	add x8, x0, x10
	jalr x0, LBB0_70 ( x0 )
LBB0_2:                                 //  %if.end
	or x1, x5, x9
	bgtu x1, x0, LBB0_4
LBB0_3:
	add x8, x0, x0
	jalr x0, LBB0_70 ( x0 )
LBB0_4:                                 //  %if.end4
	ori x28, x0, 999292927 & 0xfff
	slli x28, x28, 20
	lui x1, 999292927 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x9, x1, LBB0_8
LBB0_5:                                 //  %if.then6
	bgez x4, LBB0_7
LBB0_6:                                 //  %if.then8
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	xor x11, x1, x4
	not x1, x0
	sw x1, 0 ( x12 )
	add x10, x0, x5
	call $__ieee754_log
	add x8, x0, x10
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	xor x11, x1, x11
	jalr x0, LBB0_70 ( x0 )
LBB0_7:                                 //  %if.else
	add x10, x0, x5
	add x11, x0, x4
	call $__ieee754_log
	add x8, x0, x10
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	xor x11, x1, x11
	jalr x0, LBB0_70 ( x0 )
LBB0_8:                                 //  %if.end12
	add x3, x0, x0
	bgt x0, x4, LBB0_10
LBB0_9:
	add x7, x0, x4
	add x8, x0, x3
	add x10, x0, x3
	jalr x0, LBB0_32 ( x0 )
LBB0_10:                                //  %if.then14
	ori x28, x0, 1127219199 & 0xfff
	slli x28, x28, 20
	lui x1, 1127219199 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgeu x1, x9, LBB0_12
LBB0_11:
	add x8, x0, x0
	jalr x0, LBB0_70 ( x0 )
LBB0_12:                                //  %if.end17
	sw x12, 28 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1070596095 & 0xfff
	slli x28, x28, 20
	lui x1, 1070596095 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x9, 44 ( x2 )                //  4-byte Folded Spill
	sw x4, 56 ( x2 )                //  4-byte Folded Spill
	sw x5, 52 ( x2 )                //  4-byte Folded Spill
	bgtu x9, x1, LBB0_14
LBB0_13:                                //  %if.then.i
	ori x28, x0, 1413754136 & 0xfff
	slli x28, x28, 20
	lui x1, 1413754136 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1074340347 & 0xfff
	slli x28, x28, 20
	lui x1, 1074340347 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x10, x0, x5
	add x11, x0, x4
	call $__muldf3
	add x12, x0, x0
	add x13, x0, x12
	add x14, x0, x12
	call $__kernel_sin
	jalr x0, LBB0_28 ( x0 )
LBB0_14:                                //  %if.end.i
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	xor x11, x1, x4
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x5
	add x8, x0, x5
	call $floor
	add x12, x0, x8
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__eqdf2
	beqz x10, LBB0_16
LBB0_15:                                //  %if.then3.i
	ori x28, x0, -1075838976 & 0xfff
	slli x28, x28, 20
	lui x1, -1075838976 >> 12 & 0xfffff
	srli x28, x28, 20
	add x12, x0, x0
	or x13, x1, x28
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x8, x0, x10
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	call $floor
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	add x12, x0, x10
	add x13, x0, x11
	call $__adddf3
	lui x13, 1074790400>>12 &0xfffff
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x0
	call $__muldf3
	call $__fixdfsi
	jalr x0, LBB0_17 ( x0 )
LBB0_16:                                //  %if.else12.i
	add x10, x0, x0
	lui x11, 1127219200>>12 &0xfffff
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	lw x13, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	andi x8, x10, 1
	add x10, x0, x8
	call $__floatsidf
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	slli x10, x8, 2
LBB0_17:                                //  %if.end25.i
	addi x1, x0, 6
	bgtu x10, x1, LBB0_23
LBB0_18:                                //  %if.end25.i
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
LBB0_19:                                //  %sw.bb.i
	ori x28, x0, 1413754136 & 0xfff
	slli x28, x28, 20
	lui x1, 1413754136 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1074340347 & 0xfff
	slli x28, x28, 20
	lui x1, 1074340347 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x12, x0, x0
	add x13, x0, x12
	add x14, x0, x12
	jalr x0, LBB0_25 ( x0 )
LBB0_20:                                //  %sw.bb28.i
	add x8, x0, x0
	lui x11, 1071644672>>12 &0xfffff
	add x10, x0, x8
	lw x12, 40 ( x2 )               //  4-byte Folded Reload
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	ori x28, x0, 1413754136 & 0xfff
	slli x28, x28, 20
	lui x1, 1413754136 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1074340347 & 0xfff
	slli x28, x28, 20
	lui x1, 1074340347 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__muldf3
	add x12, x0, x8
	add x13, x0, x8
	call $__kernel_cos
	jalr x0, LBB0_26 ( x0 )
LBB0_21:                                //  %sw.bb32.i
	add x8, x0, x0
	lui x11, 1072693248>>12 &0xfffff
	add x10, x0, x8
	lw x12, 40 ( x2 )               //  4-byte Folded Reload
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	jalr x0, LBB0_24 ( x0 )
LBB0_22:                                //  %sw.bb36.i
	ori x28, x0, -1074266112 & 0xfff
	slli x28, x28, 20
	lui x1, -1074266112 >> 12 & 0xfffff
	srli x28, x28, 20
	add x8, x0, x0
	or x13, x1, x28
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	call $__adddf3
	ori x28, x0, 1413754136 & 0xfff
	slli x28, x28, 20
	lui x1, 1413754136 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1074340347 & 0xfff
	slli x28, x28, 20
	lui x1, 1074340347 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__muldf3
	add x12, x0, x8
	add x13, x0, x8
	call $__kernel_cos
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, -2147483648 >> 12 & 0xfffff
	or x1, x3, x28
	xor x11, x1, x11
	jalr x0, LBB0_27 ( x0 )
LBB0_23:                                //  %sw.default.i
	ori x28, x0, -1073741824 & 0xfff
	slli x28, x28, 20
	lui x1, -1073741824 >> 12 & 0xfffff
	srli x28, x28, 20
	add x8, x0, x0
	or x13, x1, x28
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	call $__adddf3
LBB0_24:                                //  %sw.epilog.i
	ori x28, x0, 1413754136 & 0xfff
	slli x28, x28, 20
	lui x1, 1413754136 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1074340347 & 0xfff
	slli x28, x28, 20
	lui x1, 1074340347 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__muldf3
	add x12, x0, x8
	add x13, x0, x8
	add x14, x0, x8
LBB0_25:                                //  %sw.epilog.i
	call $__kernel_sin
LBB0_26:                                //  %sw.epilog.i
	lui x3, -2147483648 >> 12 & 0xfffff
LBB0_27:                                //  %sw.epilog.i
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x3, x28
	xor x11, x1, x11
LBB0_28:                                //  %sin_pi.exit
	add x8, x0, x0
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x8
	add x13, x0, x8
	call $__eqdf2
	lui x11, 2146435072>>12 &0xfffff
	bgtu x10, x0, LBB0_72
LBB0_71:                                //  %sin_pi.exit
	jalr x0, LBB0_70 ( x0 )
LBB0_72:                                //  %sin_pi.exit
LBB0_29:                                //  %if.end21
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	lw x8, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x13, x0, x8
	call $__muldf3
	call $fabs
	add x1, x0, x10
	add x3, x0, x11
	ori x28, x0, 1413754136 & 0xfff
	slli x28, x28, 20
	lui x4, 1413754136 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x4, x28
	ori x28, x0, 1074340347 & 0xfff
	slli x28, x28, 20
	lui x4, 1074340347 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x4, x28
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	call $__ieee754_log
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x0
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x12
	call $__ltdf2
	bgez x10, LBB0_31
LBB0_30:                                //  %if.then26
	not x1, x0
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
LBB0_31:                                //  %if.end27
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	xor x7, x1, x8
	add x4, x0, x8
	add x3, x0, x0
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	lw x5, 52 ( x2 )                //  4-byte Folded Reload
	lw x9, 44 ( x2 )                //  4-byte Folded Reload
LBB0_32:                                //  %if.end29
	ori x28, x0, -1072693248 & 0xfff
	slli x28, x28, 20
	lui x1, -1072693248 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x9
	or x1, x5, x1
	sw x4, 56 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB0_34
LBB0_33:
	add x5, x0, x3
	add x4, x0, x3
	jalr x0, LBB0_66 ( x0 )
LBB0_34:                                //  %lor.lhs.false
	ori x28, x0, -1073741824 & 0xfff
	slli x28, x28, 20
	lui x1, -1073741824 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x9
	or x1, x5, x1
	bgtu x1, x0, LBB0_36
LBB0_35:
	add x5, x0, x0
	add x4, x0, x5
	jalr x0, LBB0_66 ( x0 )
LBB0_36:                                //  %if.else37
	ori x28, x0, 1073741823 & 0xfff
	slli x28, x28, 20
	lui x1, 1073741823 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	bgtu x9, x1, LBB0_52
LBB0_37:                                //  %if.then39
	ori x28, x0, 1072483532 & 0xfff
	slli x28, x28, 20
	lui x1, 1072483532 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x8, 32 ( x2 )                //  4-byte Folded Spill
	bgtu x9, x1, LBB0_41
LBB0_38:                                //  %if.then41
	add x10, x0, x5
	add x11, x0, x7
	sw x5, 52 ( x2 )                //  4-byte Folded Spill
	sw x7, 48 ( x2 )                //  4-byte Folded Spill
	sw x9, 44 ( x2 )                //  4-byte Folded Spill
	call $__ieee754_log
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	add x4, x0, x10
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 1072130371 & 0xfff
	slli x28, x28, 20
	lui x3, 1072130371 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	xor x1, x1, x11
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	sw x4, 28 ( x2 )                //  4-byte Folded Spill
	bgeu x3, x5, LBB0_46
LBB0_39:
	lui x11, 1072693248>>12 &0xfffff
	add x10, x0, x0
	lw x5, 52 ( x2 )                //  4-byte Folded Reload
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
LBB0_40:                                //  %sw.bb
	add x12, x0, x5
	add x13, x0, x7
	call $__subdf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x11, 44 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x10
	add x13, x0, x11
	call $__muldf3
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	lui x1, 1116535378 >> 12 & 0xfffff
	ori x28, x0, 1116535378 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x12, x1, x28
	lui x1, 1056600180 >> 12 & 0xfffff
	ori x28, x0, 1056600180 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x1, x28
	add x8, x0, x11
	call $__muldf3
	lui x1, -317659827 >> 12 & 0xfffff
	ori x28, x0, -317659827 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x12, x1, x28
	lui x1, 1059910380 >> 12 & 0xfffff
	ori x28, x0, 1059910380 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lui x1, 292503389 >> 12 & 0xfffff
	ori x28, x0, 292503389 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x12, x1, x28
	lui x1, 1062439572 >> 12 & 0xfffff
	ori x28, x0, 1062439572 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lui x1, -1232080920 >> 12 & 0xfffff
	ori x28, x0, -1232080920 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x12, x1, x28
	lui x1, 1065238607 >> 12 & 0xfffff
	ori x28, x0, 1065238607 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lui x1, 441803431 >> 12 & 0xfffff
	ori x28, x0, 441803431 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x12, x1, x28
	lui x1, 1068580352 >> 12 & 0xfffff
	ori x28, x0, 1068580352 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	sw x8, 48 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lui x1, -478302008 >> 12 & 0xfffff
	ori x28, x0, -478302008 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x12, x1, x28
	lui x1, 1068745831 >> 12 & 0xfffff
	ori x28, x0, 1068745831 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	lui x1, -1868277705 >> 12 & 0xfffff
	ori x28, x0, -1868277705 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x12, x1, x28
	lui x1, 1057457550 >> 12 & 0xfffff
	ori x28, x0, 1057457550 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__muldf3
	lui x1, -1736574201 >> 12 & 0xfffff
	ori x28, x0, -1736574201 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x12, x1, x28
	lui x1, 1058820232 >> 12 & 0xfffff
	ori x28, x0, 1058820232 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lui x1, -1984324608 >> 12 & 0xfffff
	ori x28, x0, -1984324608 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x12, x1, x28
	lui x1, 1061205702 >> 12 & 0xfffff
	ori x28, x0, 1061205702 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lui x1, -860384661 >> 12 & 0xfffff
	ori x28, x0, -860384661 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x12, x1, x28
	lui x1, 1063759320 >> 12 & 0xfffff
	ori x28, x0, 1063759320 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lui x1, -1399696261 >> 12 & 0xfffff
	ori x28, x0, -1399696261 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x12, x1, x28
	lui x1, 1066734370 >> 12 & 0xfffff
	ori x28, x0, 1066734370 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lui x1, -995749971 >> 12 & 0xfffff
	ori x28, x0, -995749971 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x12, x1, x28
	lui x1, 1070900044 >> 12 & 0xfffff
	ori x28, x0, 1070900044 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	lw x12, 20 ( x2 )               //  4-byte Folded Reload
	lw x13, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x0
	lui x1, -1075838976 >> 12 & 0xfffff
	ori x28, x0, -1075838976 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x1, x28
	add x10, x0, x8
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_50 ( x0 )
LBB0_41:                                //  %if.else54
	ori x28, x0, 1073460418 & 0xfff
	slli x28, x28, 20
	lui x1, 1073460418 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgeu x1, x9, LBB0_43
LBB0_42:
	lui x11, 1073741824>>12 &0xfffff
	add x10, x0, x0
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB0_40 ( x0 )
LBB0_43:                                //  %if.else58
	ori x28, x0, 1072936132 & 0xfff
	slli x28, x28, 20
	lui x1, 1072936132 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x1, x9, LBB0_48
LBB0_44:                                //  %if.end66.thread402
	ori x28, x0, 1666629183 & 0xfff
	slli x28, x28, 20
	lui x1, 1666629183 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1074306344 & 0xfff
	slli x28, x28, 20
	lui x1, -1074306344 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x10, x0, x5
	add x11, x0, x7
	call $__adddf3
	add x1, x0, x0
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
LBB0_45:                                //  %sw.bb93
	add x8, x0, x10
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	sw x11, 44 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x8
	add x13, x0, x11
	call $__muldf3
	add x1, x0, x10
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x11
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -322728904 & 0xfff
	slli x28, x28, 20
	lui x1, -322728904 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1087078620 & 0xfff
	slli x28, x28, 20
	lui x1, -1087078620 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x8, x0, x11
	call $__muldf3
	ori x28, x0, -278812439 & 0xfff
	slli x28, x28, 20
	lui x1, -278812439 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1062002444 & 0xfff
	slli x28, x28, 20
	lui x1, 1062002444 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1276570409 & 0xfff
	slli x28, x28, 20
	lui x1, -1276570409 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1083298049 & 0xfff
	slli x28, x28, 20
	lui x1, -1083298049 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1760888340 & 0xfff
	slli x28, x28, 20
	lui x1, -1760888340 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1066559207 & 0xfff
	slli x28, x28, 20
	lui x1, 1066559207 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1916353271 & 0xfff
	slli x28, x28, 20
	lui x1, -1916353271 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1077746649 & 0xfff
	slli x28, x28, 20
	lui x1, -1077746649 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, -389884940 & 0xfff
	slli x28, x28, 20
	lui x1, -389884940 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1060502846 & 0xfff
	slli x28, x28, 20
	lui x1, 1060502846 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	sw x8, 48 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	call $__muldf3
	ori x28, x0, -1670127380 & 0xfff
	slli x28, x28, 20
	lui x1, -1670127380 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1086216688 & 0xfff
	slli x28, x28, 20
	lui x1, -1086216688 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 773179669 & 0xfff
	slli x28, x28, 20
	lui x1, 773179669 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1063420627 & 0xfff
	slli x28, x28, 20
	lui x1, 1063420627 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1164841878 & 0xfff
	slli x28, x28, 20
	lui x1, -1164841878 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1081794657 & 0xfff
	slli x28, x28, 20
	lui x1, -1081794657 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1797963365 & 0xfff
	slli x28, x28, 20
	lui x1, -1797963365 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1068534594 & 0xfff
	slli x28, x28, 20
	lui x1, 1068534594 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	ori x28, x0, -1534421217 & 0xfff
	slli x28, x28, 20
	lui x4, -1534421217 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x4, x28
	ori x28, x0, -1135556662 & 0xfff
	slli x28, x28, 20
	lui x4, -1135556662 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x4, x28
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1812904951 & 0xfff
	slli x28, x28, 20
	lui x1, 1812904951 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1060417389 & 0xfff
	slli x28, x28, 20
	lui x1, 1060417389 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	ori x28, x0, -1087563023 & 0xfff
	slli x28, x28, 20
	lui x1, -1087563023 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1084817778 & 0xfff
	slli x28, x28, 20
	lui x1, -1084817778 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -479141052 & 0xfff
	slli x28, x28, 20
	lui x1, -479141052 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1064893664 & 0xfff
	slli x28, x28, 20
	lui x1, 1064893664 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -550127853 & 0xfff
	slli x28, x28, 20
	lui x1, -550127853 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1079981656 & 0xfff
	slli x28, x28, 20
	lui x1, -1079981656 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -923912030 & 0xfff
	slli x28, x28, 20
	lui x1, -923912030 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1071576875 & 0xfff
	slli x28, x28, 20
	lui x1, 1071576875 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x12, 44 ( x2 )               //  4-byte Folded Reload
	lw x13, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	ori x28, x0, -1128035774 & 0xfff
	slli x28, x28, 20
	lui x1, -1128035774 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1077995079 & 0xfff
	slli x28, x28, 20
	lui x1, -1077995079 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	jalr x0, LBB0_51 ( x0 )
LBB0_46:                                //  %if.end66
	ori x28, x0, -1923417860 & 0xfff
	slli x28, x28, 20
	lui x1, -1923417860 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1075999903 & 0xfff
	slli x28, x28, 20
	lui x1, -1075999903 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x5
	call $__adddf3
	ori x28, x0, 1070442080 & 0xfff
	slli x28, x28, 20
	lui x1, 1070442080 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_45
LBB0_47:
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_49 ( x0 )
LBB0_48:                                //  %if.end66.thread405
	ori x28, x0, -1074790400 & 0xfff
	slli x28, x28, 20
	lui x1, -1074790400 >> 12 & 0xfffff
	srli x28, x28, 20
	add x8, x0, x0
	or x13, x1, x28
	add x10, x0, x5
	add x11, x0, x7
	add x12, x0, x8
	call $__adddf3
	sw x8, 40 ( x2 )                //  4-byte Folded Spill
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
LBB0_49:                                //  %sw.bb128
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1087657207 & 0xfff
	slli x28, x28, 20
	lui x1, -1087657207 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1066100619 & 0xfff
	slli x28, x28, 20
	lui x1, 1066100619 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x8, x0, x11
	sw x8, 48 ( x2 )                //  4-byte Folded Spill
	call $__muldf3
	ori x28, x0, -167704284 & 0xfff
	slli x28, x28, 20
	lui x1, -167704284 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1070419630 & 0xfff
	slli x28, x28, 20
	lui x1, 1070419630 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1156219984 & 0xfff
	slli x28, x28, 20
	lui x1, 1156219984 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1072646518 & 0xfff
	slli x28, x28, 20
	lui x1, 1072646518 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -786842257 & 0xfff
	slli x28, x28, 20
	lui x1, -786842257 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1073170268 & 0xfff
	slli x28, x28, 20
	lui x1, 1073170268 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1962910209 & 0xfff
	slli x28, x28, 20
	lui x1, -1962910209 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1071923230 & 0xfff
	slli x28, x28, 20
	lui x1, 1071923230 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -478302008 & 0xfff
	slli x28, x28, 20
	lui x1, -478302008 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1078737817 & 0xfff
	slli x28, x28, 20
	lui x1, -1078737817 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1473302369 & 0xfff
	slli x28, x28, 20
	lui x1, 1473302369 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1063934651 & 0xfff
	slli x28, x28, 20
	lui x1, 1063934651 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x10, x0, x8
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__muldf3
	ori x28, x0, -699171704 & 0xfff
	slli x28, x28, 20
	lui x1, -699171704 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1069198933 & 0xfff
	slli x28, x28, 20
	lui x1, 1069198933 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -464498513 & 0xfff
	slli x28, x28, 20
	lui x1, -464498513 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1072209403 & 0xfff
	slli x28, x28, 20
	lui x1, 1072209403 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1540679435 & 0xfff
	slli x28, x28, 20
	lui x1, -1540679435 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1073809189 & 0xfff
	slli x28, x28, 20
	lui x1, 1073809189 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1027776100 & 0xfff
	slli x28, x28, 20
	lui x1, -1027776100 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1073980887 & 0xfff
	slli x28, x28, 20
	lui x1, 1073980887 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	add x8, x0, x10
	sw x11, 44 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1075838976 & 0xfff
	slli x28, x28, 20
	lui x1, -1075838976 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
LBB0_50:                                //  %if.end235
	add x12, x0, x1
	add x13, x0, x3
LBB0_51:                                //  %if.end235
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x4, x0, x10
	add x5, x0, x11
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_65 ( x0 )
LBB0_52:                                //  %if.else154
	ori x28, x0, 1075838975 & 0xfff
	slli x28, x28, 20
	lui x1, 1075838975 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x7, 48 ( x2 )                //  4-byte Folded Spill
	bgtu x9, x1, LBB0_62
LBB0_53:                                //  %if.then156
	sw x8, 32 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x5
	add x11, x0, x7
	add x8, x0, x5
	call $__fixdfsi
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	call $__floatsidf
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	sw x11, 44 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -585635515 & 0xfff
	slli x28, x28, 20
	lui x1, -585635515 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1057013740 & 0xfff
	slli x28, x28, 20
	lui x1, 1057013740 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x8, x0, x10
	sw x8, 40 ( x2 )                //  4-byte Folded Spill
	call $__muldf3
	ori x28, x0, 1936257593 & 0xfff
	slli x28, x28, 20
	lui x1, 1936257593 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1063134902 & 0xfff
	slli x28, x28, 20
	lui x1, 1063134902 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 2123602273 & 0xfff
	slli x28, x28, 20
	lui x1, 2123602273 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1067141148 & 0xfff
	slli x28, x28, 20
	lui x1, 1067141148 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1092226313 & 0xfff
	slli x28, x28, 20
	lui x1, -1092226313 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1069726620 & 0xfff
	slli x28, x28, 20
	lui x1, 1069726620 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1326686041 & 0xfff
	slli x28, x28, 20
	lui x1, 1326686041 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1070913935 & 0xfff
	slli x28, x28, 20
	lui x1, 1070913935 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 920782968 & 0xfff
	slli x28, x28, 20
	lui x1, 920782968 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1070302347 & 0xfff
	slli x28, x28, 20
	lui x1, 1070302347 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -478302008 & 0xfff
	slli x28, x28, 20
	lui x1, -478302008 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1078737817 & 0xfff
	slli x28, x28, 20
	lui x1, -1078737817 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1514962624 & 0xfff
	slli x28, x28, 20
	lui x1, -1514962624 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1054784247 & 0xfff
	slli x28, x28, 20
	lui x1, 1054784247 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x10, x0, x8
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__muldf3
	ori x28, x0, -901666469 & 0xfff
	slli x28, x28, 20
	lui x1, -901666469 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1061780954 & 0xfff
	slli x28, x28, 20
	lui x1, 1061780954 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1949226101 & 0xfff
	slli x28, x28, 20
	lui x1, 1949226101 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1066604522 & 0xfff
	slli x28, x28, 20
	lui x1, 1066604522 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -855908569 & 0xfff
	slli x28, x28, 20
	lui x1, -855908569 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1069941229 & 0xfff
	slli x28, x28, 20
	lui x1, 1069941229 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1814831908 & 0xfff
	slli x28, x28, 20
	lui x1, -1814831908 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1072110104 & 0xfff
	slli x28, x28, 20
	lui x1, 1072110104 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1657056116 & 0xfff
	slli x28, x28, 20
	lui x1, 1657056116 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1073104295 & 0xfff
	slli x28, x28, 20
	lui x1, 1073104295 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	lui x13, 1071644672>>12 &0xfffff
	add x10, x0, x8
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	call $__muldf3
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	add x4, x0, x10
	add x5, x0, x11
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	addi x10, x1, -3
	addi x1, x0, 4
	bgeu x1, x10, LBB0_55
LBB0_54:
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_65 ( x0 )
LBB0_55:                                //  %if.then156
	sw x5, 48 ( x2 )                //  4-byte Folded Spill
	sw x4, 52 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 4
	call $__mulsi3
	lui x1, JTI0_1 >> 12 & 0xfffff
	ori x28, x0, JTI0_1 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	lui x3, 1072693248>>12 &0xfffff
	add x11, x0, x3
	add x3, x0, x0
	add x10, x0, x3
	jr x1
LBB0_56:                                //  %sw.bb187
	add x12, x0, x0
	lui x13, 1075314688>>12 &0xfffff
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
LBB0_57:                                //  %sw.bb190
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x0
	lui x13, 1075052544>>12 &0xfffff
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	lw x12, 24 ( x2 )               //  4-byte Folded Reload
	lw x13, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
LBB0_58:                                //  %sw.bb193
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x0
	lui x13, 1074790400>>12 &0xfffff
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	lw x12, 24 ( x2 )               //  4-byte Folded Reload
	lw x13, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
LBB0_59:                                //  %sw.bb196
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x0
	lui x13, 1074266112>>12 &0xfffff
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	lw x12, 24 ( x2 )               //  4-byte Folded Reload
	lw x13, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
LBB0_60:                                //  %sw.bb199
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x0
	lui x13, 1073741824>>12 &0xfffff
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	lw x12, 24 ( x2 )               //  4-byte Folded Reload
	lw x13, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	call $__ieee754_log
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
LBB0_61:                                //  %if.end235
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x4, x0, x10
	add x5, x0, x11
	jalr x0, LBB0_65 ( x0 )
LBB0_62:                                //  %if.else205
	add x10, x0, x5
	add x11, x0, x7
	sw x5, 52 ( x2 )                //  4-byte Folded Spill
	sw x9, 44 ( x2 )                //  4-byte Folded Spill
	call $__ieee754_log
	ori x28, x0, 1133510655 & 0xfff
	slli x28, x28, 20
	lui x1, 1133510655 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x3, x1, LBB0_64
LBB0_63:                                //  %if.then208
	add x1, x0, x0
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	lui x11, 1072693248>>12 &0xfffff
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x1
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divdf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x10
	add x13, x0, x11
	call $__muldf3
	sw x8, 32 ( x2 )                //  4-byte Folded Spill
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 194921444 & 0xfff
	slli x28, x28, 20
	lui x1, 194921444 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1084573539 & 0xfff
	slli x28, x28, 20
	lui x1, -1084573539 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x8, x0, x11
	call $__muldf3
	ori x28, x0, 1289410001 & 0xfff
	slli x28, x28, 20
	lui x1, 1289410001 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1061906362 & 0xfff
	slli x28, x28, 20
	lui x1, 1061906362 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1945114815 & 0xfff
	slli x28, x28, 20
	lui x1, -1945114815 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1086095157 & 0xfff
	slli x28, x28, 20
	lui x1, -1086095157 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1731249994 & 0xfff
	slli x28, x28, 20
	lui x1, -1731249994 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1061814687 & 0xfff
	slli x28, x28, 20
	lui x1, 1061814687 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 380644956 & 0xfff
	slli x28, x28, 20
	lui x1, 380644956 >> 12 & 0xfffff
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
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1431655739 & 0xfff
	slli x28, x28, 20
	lui x1, 1431655739 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1068848469 & 0xfff
	slli x28, x28, 20
	lui x1, 1068848469 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1865843351 & 0xfff
	slli x28, x28, 20
	lui x1, -1865843351 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1071304675 & 0xfff
	slli x28, x28, 20
	lui x1, 1071304675 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1075838976 & 0xfff
	slli x28, x28, 20
	lui x1, -1075838976 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	call $__adddf3
	add x8, x0, x10
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1074790400 & 0xfff
	slli x28, x28, 20
	lui x1, -1074790400 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_61 ( x0 )
LBB0_64:                                //  %if.else228
	ori x28, x0, -1074790400 & 0xfff
	slli x28, x28, 20
	lui x1, -1074790400 >> 12 & 0xfffff
	srli x28, x28, 20
	add x12, x0, x0
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x5, x0, x11
	add x4, x0, x10
LBB0_65:                                //  %if.end235
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
LBB0_66:                                //  %if.end235
	add x11, x0, x8
	sw x4, 52 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x4
	sw x5, 48 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x5
	call $__subdf3
	add x8, x0, x10
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	add x3, x0, x0
	bgt x3, x1, LBB0_68
LBB0_67:                                //  %if.end235
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
LBB0_68:                                //  %if.end235
	bgt x3, x1, LBB0_70
LBB0_69:                                //  %if.end235
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_70:                                //  %cleanup
	add x10, x0, x8
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
	.size	$__ieee754_lgamma_r, ($func_end0)-($__ieee754_lgamma_r)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	LBB0_19
	.long	LBB0_20
	.long	LBB0_20
	.long	LBB0_21
	.long	LBB0_21
	.long	LBB0_22
	.long	LBB0_22
JTI0_1:
	.long	LBB0_60
	.long	LBB0_59
	.long	LBB0_58
	.long	LBB0_57
	.long	LBB0_56


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
