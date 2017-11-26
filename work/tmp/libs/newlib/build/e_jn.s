	.text
	.file	"e_jn.bc"
	.globl	$__ieee754_jn
	.type	$__ieee754_jn,@function
$__ieee754_jn:                          //  @__ieee754_jn
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11, 10, 11
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -80
$cfi2:
	.cfi_adjust_cfa_offset 80
	sw x1, 76 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 68 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	add x1, x0, x12
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x3, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, 2146435073 & 0xfff
	sub x4, x0, x8
	slli x28, x28, 20
	or x4, x4, x8
	and x5, x3, x1
	slt x3, x4, x0
	lui x4, 2146435073 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x5
	or x4, x4, x28
	bgtu x4, x3, LBB0_2
LBB0_1:                                 //  %if.then
	add x10, x0, x8
	add x11, x0, x1
	add x12, x0, x8
	add x13, x0, x1
	call $__adddf3
	jalr x0, LBB0_60 ( x0 )
LBB0_2:                                 //  %if.end
	bgt x0, x10, LBB0_4
LBB0_3:
	add x3, x0, x1
	jalr x0, LBB0_5 ( x0 )
LBB0_4:                                 //  %if.then4
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x3, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x3, x28
	xor x3, x4, x1
	xor x1, x4, x1
	sub x10, x0, x10
LBB0_5:                                 //  %if.end7
	xori x4, x10, 1
	beqz x4, LBB0_59
LBB0_6:                                 //  %if.end7
	bgtu x10, x0, LBB0_8
LBB0_7:                                 //  %if.then9
	add x10, x0, x8
	add x11, x0, x1
	call $__ieee754_j0
	jalr x0, LBB0_60 ( x0 )
LBB0_8:                                 //  %if.end14
	slt x3, x3, x0
	sw x10, 60 ( x2 )               //  4-byte Folded Spill
	and x3, x10, x3
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	add x11, x0, x1
	sw x5, 52 ( x2 )                //  4-byte Folded Spill
	call $fabs
	lw x4, 52 ( x2 )                //  4-byte Folded Reload
	sw x11, 64 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 2146435071 & 0xfff
	slli x28, x28, 20
	lui x1, 2146435071 >> 12 & 0xfffff
	srli x28, x28, 20
	add x7, x0, x0
	or x1, x1, x28
	bgeu x1, x4, LBB0_10
LBB0_9:
	add x4, x0, x7
	jalr x0, LBB0_54 ( x0 )
LBB0_10:                                //  %if.end14
	or x1, x8, x4
	add x4, x0, x7
	add x8, x0, x10
	beqz x1, LBB0_54
LBB0_11:                                //  %if.else
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $__floatsidf
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	sw x8, 56 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x8
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	nop
	add x13, x0, x8
	call $__ledf2
	add x5, x0, x8
	bgt x10, x0, LBB0_26
LBB0_12:                                //  %if.then25
	lui x1, 1389363200>>12 &0xfffff
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x3, LBB0_23
LBB0_13:                                //  %if.then28
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 3
	xori x3, x1, 1
	lw x8, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	add x11, x0, x5
	beqz x3, LBB0_17
LBB0_14:                                //  %if.then28
	xori x3, x1, 2
	beqz x3, LBB0_18
LBB0_15:                                //  %if.then28
	xori x1, x1, 3
	beqz x1, LBB0_19
LBB0_16:                                //  %sw.bb
	call $cos
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	sw x10, 60 ( x2 )               //  4-byte Folded Spill
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	add x11, x0, x1
	call $sin
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	jalr x0, LBB0_22 ( x0 )
LBB0_17:                                //  %sw.bb33
	call $cos
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	sw x10, 60 ( x2 )               //  4-byte Folded Spill
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	add x11, x0, x1
	call $sin
	lw x12, 60 ( x2 )               //  4-byte Folded Reload
	lw x13, 52 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_21 ( x0 )
LBB0_18:                                //  %sw.bb38
	call $cos
	sw x10, 60 ( x2 )               //  4-byte Folded Spill
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	add x11, x0, x1
	call $sin
	add x1, x0, x10
	add x3, x0, x11
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x4, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	lw x5, 52 ( x2 )                //  4-byte Folded Reload
	nop
	xor x11, x4, x5
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_20 ( x0 )
LBB0_19:                                //  %sw.bb43
	call $cos
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	sw x10, 60 ( x2 )               //  4-byte Folded Spill
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	add x11, x0, x1
	call $sin
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
LBB0_20:                                //  %sw.epilog
	add x12, x0, x1
	add x13, x0, x3
LBB0_21:                                //  %sw.epilog
	call $__subdf3
LBB0_22:                                //  %sw.epilog
	ori x28, x0, 1346542445 & 0xfff
	slli x28, x28, 20
	lui x1, 1346542445 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1071779287 & 0xfff
	slli x28, x28, 20
	lui x1, 1071779287 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__muldf3
	add x8, x0, x10
	sw x11, 60 ( x2 )               //  4-byte Folded Spill
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ieee754_sqrt
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	jalr x0, LBB0_33 ( x0 )
LBB0_23:                                //  %if.else48
	lw x8, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	add x11, x0, x5
	call $__ieee754_j0
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__ieee754_j1
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	nop
	slti x1, x3, 2
	bgtu x1, x0, LBB0_53
LBB0_24:                                //  %for.body.preheader
	addi x1, x0, 2
	addi x8, x3, -1
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_25:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x5, 44 ( x2 )                //  4-byte Folded Spill
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	sw x10, 60 ( x2 )               //  4-byte Folded Spill
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x1
	call $__floatsidf
	lw x12, 56 ( x2 )               //  4-byte Folded Reload
	lw x13, 64 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x12, 44 ( x2 )               //  4-byte Folded Reload
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	add x7, x0, x10
	add x4, x0, x11
	addi x8, x8, -1
	addi x1, x1, 2
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	lw x5, 60 ( x2 )                //  4-byte Folded Reload
	bgtu x8, x0, LBB0_25
	jalr x0, LBB0_54 ( x0 )
LBB0_26:                                //  %if.else59
	ori x28, x0, 1041235967 & 0xfff
	slli x28, x28, 20
	lui x1, 1041235967 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x3, x1, LBB0_34
LBB0_27:                                //  %if.then62
	add x4, x0, x0
	addi x1, x0, 33
	add x7, x0, x4
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x3, x1, LBB0_54
LBB0_28:                                //  %if.else66
	add x12, x0, x0
	lui x13, 1071644672>>12 &0xfffff
	add x11, x0, x5
	add x8, x0, x12
	call $__muldf3
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	lui x4, 1072693248>>12 &0xfffff
	slti x1, x1, 2
	beqz x1, LBB0_30
LBB0_29:
	lw x13, 40 ( x2 )               //  4-byte Folded Reload
	lw x12, 44 ( x2 )               //  4-byte Folded Reload
	add x3, x0, x8
	jalr x0, LBB0_32 ( x0 )
LBB0_30:                                //  %for.body71.preheader
	add x3, x0, x0
	slti x8, x0, 1
	lw x13, 40 ( x2 )               //  4-byte Folded Reload
	lw x12, 44 ( x2 )               //  4-byte Folded Reload
LBB0_31:                                //  %for.body71
                                        //  =>This Inner Loop Header: Depth=1
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	sw x4, 52 ( x2 )                //  4-byte Folded Spill
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	sw x10, 64 ( x2 )               //  4-byte Folded Spill
	sw x11, 56 ( x2 )               //  4-byte Folded Spill
	addi x8, x8, 1
	add x10, x0, x8
	call $__floatsidf
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x12, 64 ( x2 )               //  4-byte Folded Reload
	lw x13, 56 ( x2 )               //  4-byte Folded Reload
	add x3, x0, x10
	add x4, x0, x11
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	bne x1, x8, LBB0_31
LBB0_32:                                //  %for.end77
	add x10, x0, x12
	add x11, x0, x13
	add x12, x0, x3
	add x13, x0, x4
LBB0_33:                                //  %if.end159
	call $__divdf3
	add x7, x0, x10
	add x4, x0, x11
	jalr x0, LBB0_54 ( x0 )
LBB0_34:                                //  %if.else80
	add x10, x0, x0
	lui x11, 1073741824>>12 &0xfffff
	lw x8, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x12, x0, x8
	add x13, x0, x5
	call $__divdf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	slli x10, x1, 1
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	call $__floatsidf
	add x12, x0, x8
	lw x13, 64 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divdf3
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	lw x12, 20 ( x2 )               //  4-byte Folded Reload
	lw x13, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	sw x8, 40 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x1
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1074790400 & 0xfff
	slli x28, x28, 20
	lui x1, -1074790400 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x12, x0, x0
	call $__adddf3
	add x8, x0, x10
	ori x28, x0, 1104006501 & 0xfff
	slli x28, x28, 20
	lui x1, 1104006501 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x0
	call $__ltdf2
	bgt x0, x10, LBB0_36
LBB0_35:
	slti x3, x0, 1
	jalr x0, LBB0_38 ( x0 )
LBB0_36:                                //  %while.body.preheader
	slti x3, x0, 1
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	lw x13, 44 ( x2 )               //  4-byte Folded Reload
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	lw x7, 52 ( x2 )                //  4-byte Folded Reload
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_37:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x4, 36 ( x2 )                //  4-byte Folded Spill
	sw x7, 52 ( x2 )                //  4-byte Folded Spill
	sw x5, 40 ( x2 )                //  4-byte Folded Spill
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	call $__adddf3
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	sw x11, 44 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x8
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x13, x0, x8
	call $__muldf3
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	lw x13, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1104006501 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 1104006501 >> 12 & 0xfffff
	or x13, x1, x28
	add x12, x0, x0
	call $__ltdf2
	lw x13, 44 ( x2 )               //  4-byte Folded Reload
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 1
	add x5, x0, x8
	lw x7, 28 ( x2 )                //  4-byte Folded Reload
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	bgt x0, x10, LBB0_37
LBB0_38:                                //  %while.end
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	slli x8, x1, 1
	add x11, x0, x0
	add x10, x0, x11
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x1, x8, LBB0_41
LBB0_39:                                //  %for.body102.preheader
	add x10, x0, x0
	add x11, x0, x10
LBB0_40:                                //  %for.body102
                                        //  =>This Inner Loop Header: Depth=1
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $__floatsidf
	lw x12, 56 ( x2 )               //  4-byte Folded Reload
	lw x13, 64 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divdf3
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	lw x13, 52 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x0
	lui x11, 1072693248>>12 &0xfffff
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	addi x8, x8, -2
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	ble x1, x8, LBB0_40
LBB0_41:                                //  %for.end109
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	lw x8, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	lw x12, 20 ( x2 )               //  4-byte Folded Reload
	lw x13, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	call $fabs
	call $__ieee754_log
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -17155601 & 0xfff
	slli x28, x28, 20
	lui x1, -17155601 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1082535490 & 0xfff
	slli x28, x28, 20
	lui x1, 1082535490 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__ltdf2
	add x8, x0, x10
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	addi x10, x1, -2
	call $__floatsidf
	add x9, x0, x10
	add x7, x0, x11
	bgt x0, x8, LBB0_44
LBB0_42:                                //  %for.cond136.preheader
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	nop
	slti x1, x3, 2
	beqz x1, LBB0_47
LBB0_43:
	lui x8, 1072693248>>12 &0xfffff
	add x5, x0, x0
	jalr x0, LBB0_52 ( x0 )
LBB0_44:                                //  %for.cond122.preheader
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	nop
	slti x1, x3, 2
	bgtu x1, x0, LBB0_43
LBB0_45:                                //  %for.body125.preheader
	lui x4, 1072693248>>12 &0xfffff
	add x1, x0, x0
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	add x10, x0, x1
LBB0_46:                                //  %for.body125
                                        //  =>This Inner Loop Header: Depth=1
	sw x11, 44 ( x2 )               //  4-byte Folded Spill
	sw x9, 28 ( x2 )                //  4-byte Folded Spill
	sw x7, 40 ( x2 )                //  4-byte Folded Spill
	sw x3, 60 ( x2 )                //  4-byte Folded Spill
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x4
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x12
	add x12, x0, x9
	add x13, x0, x7
	call $__muldf3
	lw x12, 56 ( x2 )               //  4-byte Folded Reload
	lw x13, 64 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divdf3
	add x12, x0, x8
	lw x13, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	ori x28, x0, -1073741824 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -1073741824 >> 12 & 0xfffff
	or x13, x1, x28
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	call $__adddf3
	add x9, x0, x10
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	add x7, x0, x11
	addi x3, x3, -1
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	add x4, x0, x8
	add x10, x0, x5
	slti x1, x0, 1
	bgt x3, x1, LBB0_46
	jalr x0, LBB0_52 ( x0 )
LBB0_47:                                //  %for.body139.preheader
	lui x1, 1072693248>>12 &0xfffff
	add x4, x0, x0
	lw x5, 52 ( x2 )                //  4-byte Folded Reload
	nop
	sw x5, 28 ( x2 )                //  4-byte Folded Spill
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x5, 24 ( x2 )                //  4-byte Folded Spill
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	sw x4, 32 ( x2 )                //  4-byte Folded Spill
LBB0_48:                                //  %for.body139
                                        //  =>This Inner Loop Header: Depth=1
	sw x7, 40 ( x2 )                //  4-byte Folded Spill
	sw x3, 60 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, -1073741824 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -1073741824 >> 12 & 0xfffff
	or x13, x1, x28
	add x10, x0, x9
	add x11, x0, x7
	add x12, x0, x4
	add x8, x0, x9
	call $__adddf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	lw x13, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	lw x12, 56 ( x2 )               //  4-byte Folded Reload
	lw x13, 64 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divdf3
	lw x12, 24 ( x2 )               //  4-byte Folded Reload
	lw x13, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x8, x0, x11
	ori x28, x0, 630506365 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 630506365 >> 12 & 0xfffff
	or x12, x1, x28
	ori x28, x0, 1420970413 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 1420970413 >> 12 & 0xfffff
	or x13, x1, x28
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	call $__gtdf2
	bgt x10, x0, LBB0_50
LBB0_49:                                //    in Loop: Header=BB0_48 Depth=1
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	add x4, x0, x0
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_51 ( x0 )
LBB0_50:                                //  %if.then146
                                        //    in Loop: Header=BB0_48 Depth=1
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	lw x12, 44 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	call $__divdf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	lw x12, 44 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	call $__divdf3
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	lui x8, 1072693248>>12 &0xfffff
	add x1, x0, x0
	add x5, x0, x1
	add x4, x0, x1
LBB0_51:                                //  %for.inc150
                                        //    in Loop: Header=BB0_48 Depth=1
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, -1
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	sw x5, 32 ( x2 )                //  4-byte Folded Spill
	lw x7, 16 ( x2 )                //  4-byte Folded Reload
	lw x9, 20 ( x2 )                //  4-byte Folded Reload
	slti x1, x0, 1
	bgt x3, x1, LBB0_48
LBB0_52:                                //  %if.end153
	sw x5, 44 ( x2 )                //  4-byte Folded Spill
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ieee754_j0
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x12, 44 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	call $__divdf3
LBB0_53:                                //  %if.end159
	add x4, x0, x11
	add x7, x0, x10
LBB0_54:                                //  %if.end159
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x8, x0, x0
	add x10, x0, x8
	sw x7, 60 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x7
	sw x4, 64 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x4
	call $__subdf3
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	bne x1, x8, LBB0_56
LBB0_55:                                //  %if.end159
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
LBB0_56:                                //  %if.end159
	bne x1, x8, LBB0_58
LBB0_57:                                //  %if.end159
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
LBB0_58:                                //  %if.end159
	lw x8, 68 ( x2 )                //  4-byte Folded Reload
	lw x1, 76 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 80
$cfi5:
	.cfi_adjust_cfa_offset -80
$cfi6:
	.cfi_def_cfa 2, 0
	ret
LBB0_59:                                //  %if.then12
	add x10, x0, x8
	add x11, x0, x1
	call $__ieee754_j1
LBB0_60:                                //  %cleanup
	lw x8, 68 ( x2 )                //  4-byte Folded Reload
	lw x1, 76 ( x2 )
$cfi7:
	.cfi_same_value 1
	addi x2, x2, 80
$cfi8:
	.cfi_adjust_cfa_offset -80
$cfi9:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__ieee754_jn, ($func_end0)-($__ieee754_jn)
	.cfi_endproc

	.globl	$__ieee754_yn
	.type	$__ieee754_yn,@function
$__ieee754_yn:                          //  @__ieee754_yn
	.cfi_startproc
  .codasip_retval_regs 10, 11, 10, 11
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi10:
	.cfi_def_cfa 2, 0
$cfi11:
	.cfi_val_offset 2, 0
	addi x2, x2, -56
$cfi12:
	.cfi_adjust_cfa_offset 56
	sw x1, 52 ( x2 )
$cfi13:
	.cfi_offset 1, -4
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	add x5, x0, x11
	add x8, x0, x12
	add x7, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 2146435073 & 0xfff
	sub x3, x0, x5
	slli x28, x28, 20
	or x3, x3, x5
	and x1, x1, x8
	slt x3, x3, x0
	lui x4, 2146435073 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x1
	or x4, x4, x28
	bgtu x4, x3, LBB1_2
LBB1_1:                                 //  %if.then
	add x10, x0, x5
	add x11, x0, x8
	add x12, x0, x5
	add x13, x0, x8
	call $__adddf3
	jalr x0, LBB1_34 ( x0 )
LBB1_2:                                 //  %if.end
	ori x28, x0, -1048576 & 0xfff
	slli x28, x28, 20
	or x3, x5, x1
	lui x4, -1048576 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x4, x28
	add x10, x0, x0
	beqz x3, LBB1_34
LBB1_3:                                 //  %if.end6
	bgez x8, LBB1_5
LBB1_4:
	lui x11, 2146959360>>12 &0xfffff
	jalr x0, LBB1_34 ( x0 )
LBB1_5:                                 //  %if.end9
	bgt x0, x7, LBB1_7
LBB1_6:
	slti x4, x0, 1
	jalr x0, LBB1_8 ( x0 )
LBB1_7:                                 //  %if.then11
	slli x3, x7, 1
	andi x3, x3, 2
	slti x4, x0, 1
	sub x4, x4, x3
	sub x7, x0, x7
LBB1_8:                                 //  %if.end15
	xori x3, x7, 1
	beqz x3, LBB1_33
LBB1_9:                                 //  %if.end15
	bgtu x7, x0, LBB1_11
LBB1_10:                                //  %if.then17
	add x10, x0, x5
	add x11, x0, x8
	call $__ieee754_y0
	jalr x0, LBB1_34 ( x0 )
LBB1_11:                                //  %if.end22
	add x11, x0, x0
	lui x3, 2146435072>>12 &0xfffff
	add x10, x0, x11
	beq x1, x3, LBB1_34
LBB1_12:                                //  %if.end26
	lui x3, 1389363200>>12 &0xfffff
	sw x4, 8 ( x2 )                 //  4-byte Folded Spill
	sw x5, 20 ( x2 )                //  4-byte Folded Spill
	bgtu x3, x1, LBB1_22
LBB1_13:                                //  %if.then29
	andi x1, x7, 3
	xori x3, x1, 1
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x5
	add x11, x0, x8
	beqz x3, LBB1_18
LBB1_14:                                //  %if.then29
	xori x3, x1, 2
	beqz x3, LBB1_19
LBB1_15:                                //  %if.then29
	xori x1, x1, 3
	beqz x1, LBB1_20
LBB1_16:                                //  %sw.bb
	call $sin
	add x1, x0, x8
	add x8, x0, x10
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $cos
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
LBB1_17:                                //  %sw.epilog
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	jalr x0, LBB1_21 ( x0 )
LBB1_18:                                //  %sw.bb34
	call $sin
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	add x1, x0, x8
	add x8, x0, x11
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $cos
	add x1, x0, x10
	add x3, x0, x11
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x4, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	xor x11, x4, x8
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_17 ( x0 )
LBB1_19:                                //  %sw.bb39
	call $sin
	add x1, x0, x8
	add x8, x0, x10
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $cos
	add x12, x0, x8
	lw x13, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	jalr x0, LBB1_21 ( x0 )
LBB1_20:                                //  %sw.bb44
	call $sin
	add x1, x0, x8
	add x8, x0, x10
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $cos
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
LBB1_21:                                //  %sw.epilog
	ori x28, x0, 1346542445 & 0xfff
	slli x28, x28, 20
	lui x1, 1346542445 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1071779287 & 0xfff
	slli x28, x28, 20
	lui x1, 1071779287 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__muldf3
	add x8, x0, x10
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ieee754_sqrt
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	add x5, x0, x10
	add x4, x0, x11
	jalr x0, LBB1_28 ( x0 )
LBB1_22:                                //  %if.else
	add x10, x0, x5
	add x11, x0, x8
	sw x7, 12 ( x2 )                //  4-byte Folded Spill
	call $__ieee754_y0
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__ieee754_y1
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	slti x1, x1, 2
	beqz x1, LBB1_24
LBB1_23:
	add x4, x0, x11
	add x5, x0, x10
	jalr x0, LBB1_28 ( x0 )
LBB1_24:                                //  %if.else
	ori x28, x0, -1048576 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -1048576 >> 12 & 0xfffff
	or x1, x1, x28
	xor x1, x1, x11
	beqz x1, LBB1_23
LBB1_25:                                //  %for.body.preheader
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	addi x3, x0, 2
	add x8, x0, x3
	lw x7, 32 ( x2 )                //  4-byte Folded Reload
	lw x9, 28 ( x2 )                //  4-byte Folded Reload
LBB1_26:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x9, 28 ( x2 )                //  4-byte Folded Spill
	sw x7, 32 ( x2 )                //  4-byte Folded Spill
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	call $__floatsidf
	lw x12, 20 ( x2 )               //  4-byte Folded Reload
	lw x13, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x12, 28 ( x2 )               //  4-byte Folded Reload
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	add x5, x0, x10
	add x4, x0, x11
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	ble x1, x3, LBB1_28
LBB1_27:                                //  %for.body
                                        //    in Loop: Header=BB1_26 Depth=1
	addi x8, x8, 2
	addi x3, x3, 1
	ori x28, x0, -1048576 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -1048576 >> 12 & 0xfffff
	or x1, x1, x28
	xor x1, x1, x4
	lw x7, 36 ( x2 )                //  4-byte Folded Reload
	lw x9, 40 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x4
	add x10, x0, x5
	bgtu x1, x0, LBB1_26
LBB1_28:                                //  %if.end74
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	add x10, x0, x0
	or x11, x1, x28
	add x8, x0, x5
	add x12, x0, x5
	sw x4, 40 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x4
	call $__subdf3
	add x4, x0, x0
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bgt x1, x4, LBB1_30
LBB1_29:                                //  %if.end74
	add x8, x0, x10
LBB1_30:                                //  %if.end74
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	bgt x1, x4, LBB1_32
LBB1_31:                                //  %if.end74
	add x3, x0, x11
LBB1_32:                                //  %if.end74
	add x10, x0, x8
	add x11, x0, x3
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )
$cfi14:
	.cfi_same_value 1
	addi x2, x2, 56
$cfi15:
	.cfi_adjust_cfa_offset -56
$cfi16:
	.cfi_def_cfa 2, 0
	ret
LBB1_33:                                //  %if.then20
	add x10, x0, x4
	sw x5, 20 ( x2 )                //  4-byte Folded Spill
	call $__floatsidf
	add x1, x0, x8
	add x8, x0, x10
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__ieee754_y1
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
LBB1_34:                                //  %cleanup
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )
$cfi17:
	.cfi_same_value 1
	addi x2, x2, 56
$cfi18:
	.cfi_adjust_cfa_offset -56
$cfi19:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$__ieee754_yn, ($func_end1)-($__ieee754_yn)
	.cfi_endproc


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
