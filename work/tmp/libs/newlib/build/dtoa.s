	.text
	.file	"dtoa.bc"
	.globl	$_dtoa_r
	.type	$_dtoa_r,@function
$_dtoa_r:                               //  @_dtoa_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -144
$cfi2:
	.cfi_adjust_cfa_offset 144
	sw x1, 140 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 132 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x12
	sw x17, 96 ( x2 )               //  4-byte Folded Spill
	sw x15, 92 ( x2 )               //  4-byte Folded Spill
	sw x14, 108 ( x2 )              //  4-byte Folded Spill
	sw x13, 104 ( x2 )              //  4-byte Folded Spill
	sw x11, 116 ( x2 )              //  4-byte Folded Spill
	lw x11, 64 ( x10 )
	sw x10, 120 ( x2 )              //  4-byte Folded Spill
	beqz x11, LBB0_2
LBB0_1:                                 //  %if.then
	lw x1, 68 ( x10 )
	slti x3, x0, 1
	sll x3, x3, x1
	sw x1, 4 ( x11 )
	sw x3, 8 ( x11 )
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	sw x16, 112 ( x2 )              //  4-byte Folded Spill
	call $_Bfree
	lw x16, 112 ( x2 )              //  4-byte Folded Reload
	lw x1, 120 ( x2 )               //  4-byte Folded Reload
	nop
	sw x0, 64 ( x1 )
LBB0_2:                                 //  %if.end
	bgez x8, LBB0_4
LBB0_3:                                 //  %if.then9
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	slti x3, x0, 1
	or x1, x1, x28
	sw x3, 0 ( x16 )
	and x8, x1, x8
	jalr x0, LBB0_5 ( x0 )
LBB0_4:                                 //  %if.else
	sw x0, 0 ( x16 )
LBB0_5:                                 //  %if.end13
	lui x1, 2146435072>>12 &0xfffff
	and x3, x1, x8
	lw x5, 116 ( x2 )               //  4-byte Folded Reload
	bne x3, x1, LBB0_14
LBB0_6:                                 //  %if.then17
	ori x28, x0, 9999 & 0xfff
	slli x28, x28, 20
	lui x1, 9999 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.1 >> 12 & 0xfffff
	srli x28, x28, 20
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 0 ( x4 )
	or x10, x1, x28
	lw x7, 96 ( x2 )                //  4-byte Folded Reload
	bgtu x5, x0, LBB0_9
LBB0_7:                                 //  %land.rhs
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	lui x3, 1048575 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	and x3, x3, x8
	lui x4, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	add x5, x0, x0
	or x10, x4, x28
	beq x3, x5, LBB0_9
LBB0_8:                                 //  %land.rhs
	add x10, x0, x1
LBB0_9:                                 //  %land.end
	bgtu x7, x0, LBB0_271
LBB0_270:                               //  %land.end
	jalr x0, LBB0_269 ( x0 )
LBB0_271:                               //  %land.end
LBB0_10:                                //  %if.then26
	lbu x1, 3 ( x10 )
	add x3, x0, x0
	beq x1, x3, LBB0_12
LBB0_11:
	addi x1, x0, 8
	jalr x0, LBB0_13 ( x0 )
LBB0_12:                                //  %if.then26
	addi x1, x0, 3
LBB0_13:                                //  %if.then26
	add x1, x1, x10
	sw x1, 0 ( x7 )
	jalr x0, LBB0_269 ( x0 )
LBB0_14:                                //  %if.end32
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	sw x5, 116 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x5
	add x11, x0, x8
	add x12, x0, x1
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x1
	call $__nedf2
	bgtu x10, x0, LBB0_17
LBB0_15:                                //  %if.then35
	ori x28, x0, $.str.2 & 0xfff
	slli x28, x28, 20
	slti x3, x0, 1
	lui x1, $.str.2 >> 12 & 0xfffff
	srli x28, x28, 20
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 0 ( x4 )
	or x10, x1, x28
	lw x4, 96 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x4, x0, LBB0_273
LBB0_272:                               //  %if.then35
	jalr x0, LBB0_269 ( x0 )
LBB0_273:                               //  %if.then35
LBB0_16:                                //  %if.then37
	ori x28, x0, $.str.2+1 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.2+1 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $.str.2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	sw x3, 0 ( x4 )
	or x10, x1, x28
	jalr x0, LBB0_269 ( x0 )
LBB0_17:                                //  %if.end40
	addi x13, x2, 124
	addi x14, x2, 128
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	lw x11, 116 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x8
	call $__d2b
	sw x10, 112 ( x2 )              //  4-byte Folded Spill
	srli x1, x8, 20
	andi x1, x1, 2047
	add x5, x0, x8
	sw x5, 72 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB0_19
LBB0_18:                                //  %if.then47
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	lui x3, 1048575 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	and x3, x3, x5
	lui x4, 1072693248>>12 &0xfffff
	or x11, x4, x3
	addi x1, x1, -1023
	sw x1, 100 ( x2 )               //  4-byte Folded Spill
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB0_23 ( x0 )
LBB0_19:                                //  %if.else55
	lw x1, 128 ( x2 )
	lw x3, 124 ( x2 )
	nop
	add x8, x1, x3
	addi x1, x8, 1074
	slti x1, x1, 33
	bgtu x1, x0, LBB0_21
LBB0_20:                                //  %cond.true59
	addi x1, x0, -1010
	addi x3, x8, 1042
	sub x1, x1, x8
	lw x4, 116 ( x2 )               //  4-byte Folded Reload
	nop
	srl x3, x4, x3
	sll x1, x5, x1
	or x10, x3, x1
	jalr x0, LBB0_22 ( x0 )
LBB0_21:                                //  %cond.false69
	addi x1, x0, -1042
	sub x1, x1, x8
	lw x3, 116 ( x2 )               //  4-byte Folded Reload
	nop
	sll x10, x3, x1
LBB0_22:                                //  %cond.end74
	call $__floatunsidf
	ori x28, x0, -32505856 & 0xfff
	slli x28, x28, 20
	lui x1, -32505856 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	slti x3, x0, 1
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
	addi x3, x8, -1
	sw x3, 100 ( x2 )               //  4-byte Folded Spill
	add x11, x1, x11
LBB0_23:                                //  %if.end82
	ori x28, x0, -1074266112 & 0xfff
	slli x28, x28, 20
	lui x1, -1074266112 >> 12 & 0xfffff
	srli x28, x28, 20
	add x12, x0, x0
	or x13, x1, x28
	call $__adddf3
	ori x28, x0, 1668236129 & 0xfff
	slli x28, x28, 20
	lui x1, 1668236129 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1070761895 & 0xfff
	slli x28, x28, 20
	lui x1, 1070761895 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__muldf3
	ori x28, x0, -1956591437 & 0xfff
	slli x28, x28, 20
	lui x1, -1956591437 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1069976104 & 0xfff
	slli x28, x28, 20
	lui x1, 1069976104 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x8, x0, x10
	sw x11, 88 ( x2 )               //  4-byte Folded Spill
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	nop
	call $__floatsidf
	ori x28, x0, 1352628731 & 0xfff
	slli x28, x28, 20
	lui x1, 1352628731 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1070810131 & 0xfff
	slli x28, x28, 20
	lui x1, 1070810131 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__muldf3
	add x12, x0, x8
	lw x13, 88 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	sw x11, 84 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x10
	sw x8, 76 ( x2 )                //  4-byte Folded Spill
	call $__fixdfsi
	sw x10, 88 ( x2 )               //  4-byte Folded Spill
	call $__floatsidf
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__nedf2
	sltu x1, x0, x10
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x0
	add x13, x0, x12
	call $__ltdf2
	slti x1, x10, 0
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	and x1, x3, x1
	andi x1, x1, 1
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x3, x1
	addi x1, x0, 22
	slti x5, x0, 1
	bgeu x1, x8, LBB0_25
LBB0_24:
	sw x8, 88 ( x2 )                //  4-byte Folded Spill
	sw x5, 36 ( x2 )                //  4-byte Folded Spill
	add x4, x0, x0
	lw x7, 104 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB0_28 ( x0 )
LBB0_25:                                //  %if.then102
	ori x28, x0, $__mprec_tens+4 & 0xfff
	slli x28, x28, 20
	lui x1, $__mprec_tens+4 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $__mprec_tens & 0xfff
	slli x28, x28, 20
	lui x3, $__mprec_tens >> 12 & 0xfffff
	srli x28, x28, 20
	slli x4, x8, 3
	or x3, x3, x28
	add x1, x1, x4
	add x3, x3, x4
	lw x12, 0 ( x3 )
	lw x13, 0 ( x1 )
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ltdf2
	add x1, x0, x0
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	bgez x10, LBB0_27
LBB0_26:                                //  %select.unfold
	addi x8, x8, -1
LBB0_27:                                //  %if.end110
	sw x8, 88 ( x2 )                //  4-byte Folded Spill
	add x4, x0, x0
	lw x7, 104 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	slti x5, x0, 1
LBB0_28:                                //  %if.end110
	lw x1, 128 ( x2 )
	nop
	sub x1, x1, x11
	add x3, x0, x4
	bgt x1, x4, LBB0_30
LBB0_29:                                //  %if.end110
	sub x3, x5, x1
LBB0_30:                                //  %if.end110
	ble x1, x4, LBB0_32
LBB0_31:
	addi x4, x1, -1
LBB0_32:                                //  %if.end110
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x0, x1, LBB0_34
LBB0_33:                                //  %if.then121
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	add x4, x1, x4
	add x5, x0, x0
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_35 ( x0 )
LBB0_34:                                //  %if.else123
	add x5, x0, x0
	sw x5, 28 ( x2 )                //  4-byte Folded Spill
	sub x3, x3, x1
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	sub x5, x0, x1
LBB0_35:                                //  %if.end126
	add x8, x0, x0
	addi x3, x0, 9
	add x1, x0, x8
	bgtu x7, x3, LBB0_37
LBB0_36:                                //  %if.end126
	add x1, x0, x7
LBB0_37:                                //  %if.end126
	addi x3, x0, 5
	ble x1, x3, LBB0_39
LBB0_38:
	addi x10, x1, -4
	jalr x0, LBB0_40 ( x0 )
LBB0_39:                                //  %if.end126
	add x10, x0, x1
LBB0_40:                                //  %if.end126
	sw x5, 32 ( x2 )                //  4-byte Folded Spill
	sw x4, 68 ( x2 )                //  4-byte Folded Spill
	slti x9, x0, 1
	not x4, x0
	slti x1, x1, 6
	sw x1, 100 ( x2 )               //  4-byte Folded Spill
	sw x10, 60 ( x2 )               //  4-byte Folded Spill
	sw x4, 84 ( x2 )                //  4-byte Folded Spill
	bgeu x3, x10, LBB0_42
LBB0_41:
	add x5, x0, x4
	lw x4, 120 ( x2 )               //  4-byte Folded Reload
	lw x10, 108 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB0_47 ( x0 )
LBB0_42:                                //  %if.end126
	addi x11, x0, 4
	call $__mulsi3
	slti x9, x0, 1
	lui x1, JTI0_0 >> 12 & 0xfffff
	ori x28, x0, JTI0_0 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	lw x3, 0 ( x1 )
	add x1, x0, x9
	not x4, x0
	add x5, x0, x4
	add x7, x0, x8
	lw x4, 120 ( x2 )               //  4-byte Folded Reload
	lw x10, 108 ( x2 )              //  4-byte Folded Reload
	jr x3
LBB0_43:                                //  %sw.bb138
	add x1, x0, x0
LBB0_44:                                //  %sw.bb139
	bgt x10, x9, LBB0_46
LBB0_45:                                //  %sw.bb139
	add x10, x0, x9
LBB0_46:                                //  %sw.bb139
	add x11, x0, x10
	sw x10, 84 ( x2 )               //  4-byte Folded Spill
	add x5, x0, x10
	add x9, x0, x1
LBB0_47:                                //  %sw.epilog
	sw x0, 68 ( x4 )
	sltiu x1, x11, 24
	sw x5, 24 ( x2 )                //  4-byte Folded Spill
	sw x9, 64 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB0_51
LBB0_48:                                //  %for.body.preheader
	addi x1, x0, 4
	add x8, x0, x0
LBB0_49:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	addi x8, x8, 1
	slli x1, x1, 1
	addi x3, x1, 20
	bgeu x11, x3, LBB0_49
LBB0_50:                                //  %for.cond.for.end_crit_edge
	sw x8, 68 ( x4 )
LBB0_51:                                //  %for.end
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB0_55 ( x0 )
LBB0_52:                                //  %sw.bb144
	add x9, x0, x0
LBB0_53:                                //  %sw.bb145
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	add x5, x10, x1
	addi x1, x5, 1
	add x7, x0, x10
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x1
	bgez x5, LBB0_47
LBB0_54:                                //  %sw.epilog.thread
	sw x9, 64 ( x2 )                //  4-byte Folded Spill
	sw x7, 20 ( x2 )                //  4-byte Folded Spill
	sw x5, 24 ( x2 )                //  4-byte Folded Spill
	sw x0, 68 ( x4 )
LBB0_55:                                //  %for.end
	add x10, x0, x4
	add x11, x0, x8
	call $_Balloc
	sw x10, 104 ( x2 )              //  4-byte Folded Spill
	lw x1, 120 ( x2 )               //  4-byte Folded Reload
	nop
	sw x10, 64 ( x1 )
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sltiu x1, x1, 15
	lw x3, 100 ( x2 )               //  4-byte Folded Reload
	nop
	and x1, x3, x1
	andi x1, x1, 1
	beqz x1, LBB0_105
LBB0_56:                                //  %if.then170
	lw x4, 88 ( x2 )                //  4-byte Folded Reload
	nop
	ble x4, x0, LBB0_66
LBB0_57:                                //  %if.then175
	slli x1, x4, 3
	andi x1, x1, 120
	lui x3, $__mprec_tens >> 12 & 0xfffff
	ori x28, x0, $__mprec_tens & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	add x8, x3, x1
	lui x3, $__mprec_tens+4 >> 12 & 0xfffff
	ori x28, x0, $__mprec_tens+4 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	add x3, x3, x1
	srli x5, x4, 4
	andi x1, x5, 16
	bgtu x1, x0, LBB0_59
LBB0_58:
	addi x1, x0, 2
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	lw x1, 116 ( x2 )               //  4-byte Folded Reload
	nop
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_60 ( x0 )
LBB0_59:                                //  %if.then181
	lui x1, $__mprec_bigtens+32 >> 12 & 0xfffff
	ori x28, x0, $__mprec_bigtens+32 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lw x12, 0 ( x1 )
	lui x1, $__mprec_bigtens+36 >> 12 & 0xfffff
	ori x28, x0, $__mprec_bigtens+36 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lw x13, 0 ( x1 )
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	sw x5, 100 ( x2 )               //  4-byte Folded Spill
	sw x3, 52 ( x2 )                //  4-byte Folded Spill
	call $__divdf3
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	lw x5, 100 ( x2 )               //  4-byte Folded Reload
	sw x10, 80 ( x2 )               //  4-byte Folded Spill
	sw x11, 76 ( x2 )               //  4-byte Folded Spill
	addi x1, x0, 3
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	andi x5, x5, 15
LBB0_60:                                //  %for.cond186.preheader
	lw x1, 0 ( x3 )
	lw x3, 0 ( x8 )
	beqz x5, LBB0_65
LBB0_61:                                //  %for.body188.preheader
	lui x4, $__mprec_bigtens >> 12 & 0xfffff
	ori x28, x0, $__mprec_bigtens & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x8, x4, x28
LBB0_62:                                //  %for.body188
                                        //  =>This Inner Loop Header: Depth=1
	andi x4, x5, 1
	beqz x4, LBB0_64
LBB0_63:                                //  %if.then191
                                        //    in Loop: Header=BB0_62 Depth=1
	lw x12, 0 ( x8 )
	lw x13, 4 ( x8 )
	add x10, x0, x3
	add x11, x0, x1
	sw x5, 100 ( x2 )               //  4-byte Folded Spill
	call $__muldf3
	lw x5, 100 ( x2 )               //  4-byte Folded Reload
	add x3, x0, x10
	add x1, x0, x11
	lw x4, 108 ( x2 )               //  4-byte Folded Reload
	nop
	addi x4, x4, 1
	sw x4, 108 ( x2 )               //  4-byte Folded Spill
LBB0_64:                                //  %for.inc196
                                        //    in Loop: Header=BB0_62 Depth=1
	addi x8, x8, 8
	srai x5, x5, 1
	bgtu x5, x0, LBB0_62
LBB0_65:                                //  %for.end199
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	lw x11, 76 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x3
	add x13, x0, x1
	call $__divdf3
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_73 ( x0 )
LBB0_66:                                //  %if.else202
	addi x3, x0, 2
	bgtu x4, x0, LBB0_68
LBB0_67:
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_73 ( x0 )
LBB0_68:                                //  %if.then206
	sub x8, x0, x4
	slli x1, x8, 3
	andi x1, x1, 120
	lui x3, $__mprec_tens+4 >> 12 & 0xfffff
	ori x28, x0, $__mprec_tens+4 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	add x3, x3, x1
	lui x4, $__mprec_tens >> 12 & 0xfffff
	ori x28, x0, $__mprec_tens & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	add x1, x4, x1
	lw x12, 0 ( x1 )
	lw x13, 0 ( x3 )
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	addi x3, x0, 2
	srai x8, x8, 4
	beqz x8, LBB0_73
LBB0_69:                                //  %for.body214.preheader
	lui x1, $__mprec_bigtens >> 12 & 0xfffff
	ori x28, x0, $__mprec_bigtens & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x1, x28
LBB0_70:                                //  %for.body214
                                        //  =>This Inner Loop Header: Depth=1
	andi x1, x8, 1
	beqz x1, LBB0_72
LBB0_71:                                //  %if.then217
                                        //    in Loop: Header=BB0_70 Depth=1
	lw x12, 0 ( x4 )
	lw x13, 4 ( x4 )
	sw x3, 108 ( x2 )               //  4-byte Folded Spill
	sw x4, 100 ( x2 )               //  4-byte Folded Spill
	call $__muldf3
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	nop
	addi x3, x3, 1
LBB0_72:                                //  %for.inc223
                                        //    in Loop: Header=BB0_70 Depth=1
	addi x4, x4, 8
	srai x8, x8, 1
	bgtu x8, x0, LBB0_70
LBB0_73:                                //  %if.end228
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	sw x11, 100 ( x2 )              //  4-byte Folded Spill
	bgtu x1, x0, LBB0_75
LBB0_74:
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_81 ( x0 )
LBB0_75:                                //  %land.lhs.true230
	lw x8, 88 ( x2 )                //  4-byte Folded Reload
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x1, x0, LBB0_77
LBB0_76:
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_81 ( x0 )
LBB0_77:                                //  %land.lhs.true230
	sw x3, 108 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	call $__ltdf2
	bgt x0, x10, LBB0_79
LBB0_78:
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_81 ( x0 )
LBB0_79:                                //  %if.then237
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	ble x1, x0, LBB0_105
LBB0_80:                                //  %if.end241
	add x12, x0, x0
	lui x13, 1076101120>>12 &0xfffff
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	nop
	call $__muldf3
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	sw x11, 100 ( x2 )              //  4-byte Folded Spill
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	nop
	addi x3, x3, 1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
LBB0_81:                                //  %if.end246
	add x10, x0, x3
	call $__floatsidf
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x12, x0, x8
	lw x13, 100 ( x2 )              //  4-byte Folded Reload
	nop
	call $__muldf3
	add x12, x0, x0
	lui x13, 1075576832>>12 &0xfffff
	call $__adddf3
	lui x1, -54525952 >> 12 & 0xfffff
	ori x28, x0, -54525952 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x3, x1, x11
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	sw x10, 108 ( x2 )              //  4-byte Folded Spill
	sw x3, 80 ( x2 )                //  4-byte Folded Spill
	bgtu x5, x0, LBB0_86
LBB0_82:                                //  %if.then257
	lui x1, -1072431104 >> 12 & 0xfffff
	ori x28, x0, -1072431104 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x1, x28
	add x10, x0, x8
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x0
	call $__adddf3
	add x8, x0, x10
	sw x11, 100 ( x2 )              //  4-byte Folded Spill
	lw x12, 108 ( x2 )              //  4-byte Folded Reload
	lw x13, 80 ( x2 )               //  4-byte Folded Reload
	nop
	call $__gtdf2
	ble x10, x0, LBB0_84
LBB0_83:
	lw x8, 16 ( x2 )                //  4-byte Folded Reload
	add x1, x0, x0
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x1
	jalr x0, LBB0_115 ( x0 )
LBB0_84:                                //  %if.end265
	lui x1, -2147483648 >> 12 & 0xfffff
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	xor x13, x1, x3
	add x10, x0, x8
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	lw x12, 108 ( x2 )              //  4-byte Folded Reload
	nop
	call $__ltdf2
	bgez x10, LBB0_105
LBB0_85:
	add x1, x0, x0
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x1
	jalr x0, LBB0_187 ( x0 )
LBB0_86:                                //  %if.end273
	slli x1, x5, 3
	lui x3, $__mprec_tens-8 >> 12 & 0xfffff
	ori x28, x0, $__mprec_tens-8 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	add x3, x3, x1
	lui x4, $__mprec_tens-4 >> 12 & 0xfffff
	ori x28, x0, $__mprec_tens-4 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	add x1, x4, x1
	lw x1, 0 ( x1 )
	nop
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	lw x1, 0 ( x3 )
	nop
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	add x8, x0, x5
	beqz x1, LBB0_95
LBB0_87:                                //  %if.then275
	sw x8, 48 ( x2 )                //  4-byte Folded Spill
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	nop
	call $__fixdfsi
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	addi x1, x10, 48
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
	nop
	sb x1, 0 ( x3 )
	add x10, x0, x0
	lui x11, 1071644672>>12 &0xfffff
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	lw x13, 76 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divdf3
	lw x12, 108 ( x2 )              //  4-byte Folded Reload
	lw x13, 80 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x8, x0, x10
	sw x11, 80 ( x2 )               //  4-byte Folded Spill
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__floatsidf
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	sw x10, 108 ( x2 )              //  4-byte Folded Spill
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	sw x8, 76 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x8
	lw x8, 80 ( x2 )                //  4-byte Folded Reload
	nop
	add x13, x0, x8
	call $__ltdf2
	bgez x10, LBB0_89
LBB0_88:
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	addi x8, x1, 1
	jalr x0, LBB0_94 ( x0 )
LBB0_89:                                //  %if.end295.preheader
	slti x1, x0, 1
	sw x1, 100 ( x2 )               //  4-byte Folded Spill
	add x1, x0, x0
	lw x12, 108 ( x2 )              //  4-byte Folded Reload
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
LBB0_90:                                //  %if.end295
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x0, x1
	lui x11, 1072693248>>12 &0xfffff
	sw x12, 108 ( x2 )              //  4-byte Folded Spill
	sw x8, 52 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x8
	call $__subdf3
	lw x12, 76 ( x2 )               //  4-byte Folded Reload
	lw x8, 80 ( x2 )                //  4-byte Folded Reload
	nop
	add x13, x0, x8
	call $__ltdf2
	bgt x0, x10, LBB0_122
LBB0_91:                                //  %if.end302
                                        //    in Loop: Header=BB0_90 Depth=1
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	lw x3, 100 ( x2 )               //  4-byte Folded Reload
	nop
	ble x1, x3, LBB0_105
LBB0_92:                                //  %if.end307
                                        //    in Loop: Header=BB0_90 Depth=1
	sw x3, 100 ( x2 )               //  4-byte Folded Spill
	lw x10, 108 ( x2 )              //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	add x1, x0, x0
	add x12, x0, x1
	lui x1, 1076101120>>12 &0xfffff
	add x13, x0, x1
	call $__muldf3
	sw x8, 80 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	sw x11, 108 ( x2 )              //  4-byte Folded Spill
	call $__fixdfsi
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	lw x3, 100 ( x2 )               //  4-byte Folded Reload
	nop
	add x1, x3, x1
	addi x3, x10, 48
	sb x3, 0 ( x1 )
	call $__floatsidf
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 108 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	sw x10, 108 ( x2 )              //  4-byte Folded Spill
	add x8, x0, x11
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	lui x13, 1076101120>>12 &0xfffff
	call $__muldf3
	add x3, x0, x10
	add x1, x0, x11
	lw x10, 108 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x8
	sw x3, 76 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x3
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x1
	call $__ltdf2
	add x1, x0, x0
	lw x3, 100 ( x2 )               //  4-byte Folded Reload
	nop
	addi x3, x3, 1
	sw x3, 100 ( x2 )               //  4-byte Folded Spill
	lw x12, 108 ( x2 )              //  4-byte Folded Reload
	bgez x10, LBB0_90
LBB0_93:                                //  %ret1.loopexit1606
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	lw x3, 100 ( x2 )               //  4-byte Folded Reload
	nop
	add x8, x3, x1
LBB0_94:                                //  %ret1
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_265 ( x0 )
LBB0_95:                                //  %if.else313
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	nop
	call $__fixdfsi
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	addi x1, x10, 48
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
	nop
	sb x1, 0 ( x3 )
	lw x10, 108 ( x2 )              //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	lw x13, 76 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	sw x10, 76 ( x2 )               //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__floatsidf
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	addi x3, x1, 1
	xori x1, x8, 1
	bgtu x1, x0, LBB0_103
LBB0_96:
	sw x11, 100 ( x2 )              //  4-byte Folded Spill
	add x8, x0, x10
	sw x3, 108 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB0_98 ( x0 )
LBB0_97:                                //  %if.then329.loopexit
	sw x11, 100 ( x2 )              //  4-byte Folded Spill
	add x8, x0, x10
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x3, x1
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
LBB0_98:                                //  %if.then329
	add x12, x0, x0
	lui x13, 1071644672>>12 &0xfffff
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__gtdf2
	ble x10, x0, LBB0_100
LBB0_99:
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_123 ( x0 )
LBB0_100:                               //  %if.else336
	add x10, x0, x0
	lui x11, 1071644672>>12 &0xfffff
	lw x12, 76 ( x2 )               //  4-byte Folded Reload
	lw x13, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__ltdf2
	bgez x10, LBB0_105
LBB0_101:                               //  %while.cond.preheader
	lw x1, 108 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, 1
LBB0_102:                               //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	addi x8, x1, -1
	lbu x1, -2 ( x1 )
	nop
	xori x3, x1, 48
	add x1, x0, x8
	beqz x3, LBB0_102
	jalr x0, LBB0_94 ( x0 )
LBB0_103:                               //  %for.inc351.preheader
	sw x8, 48 ( x2 )                //  4-byte Folded Spill
	addi x8, x8, -1
LBB0_104:                               //  %for.inc351
                                        //  =>This Inner Loop Header: Depth=1
	sw x3, 108 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x0
	lui x13, 1076101120>>12 &0xfffff
	call $__muldf3
	sw x10, 100 ( x2 )              //  4-byte Folded Spill
	sw x11, 80 ( x2 )               //  4-byte Folded Spill
	call $__fixdfsi
	addi x1, x10, 48
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	nop
	sb x1, 0 ( x3 )
	call $__floatsidf
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	nop
	addi x3, x3, 1
	addi x8, x8, -1
	bgtu x8, x0, LBB0_104
	jalr x0, LBB0_97 ( x0 )
LBB0_105:                               //  %if.end359
	lw x1, 124 ( x2 )
	addi x3, x0, 14
	lw x8, 88 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x8, x3, LBB0_128
LBB0_106:                               //  %if.end359
	bgt x0, x1, LBB0_128
LBB0_107:                               //  %if.then365
	slli x1, x8, 3
	lui x3, $__mprec_tens >> 12 & 0xfffff
	ori x28, x0, $__mprec_tens & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	add x3, x3, x1
	lui x4, $__mprec_tens+4 >> 12 & 0xfffff
	ori x28, x0, $__mprec_tens+4 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	add x1, x4, x1
	lw x1, 0 ( x1 )
	nop
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	lw x1, 0 ( x3 )
	nop
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x3, x0, LBB0_109
LBB0_108:                               //  %if.then365
	bgt x0, x1, LBB0_113
LBB0_109:                               //  %for.cond383.preheader
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	lw x12, 80 ( x2 )               //  4-byte Folded Reload
	lw x8, 76 ( x2 )                //  4-byte Folded Reload
	nop
	add x13, x0, x8
	call $__divdf3
	call $__fixdfsi
	addi x1, x10, 48
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
	nop
	sb x1, 0 ( x3 )
	sw x10, 68 ( x2 )               //  4-byte Folded Spill
	call $__floatsidf
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	xori x1, x3, 1
	beqz x1, LBB0_117
LBB0_110:                               //  %if.end426.preheader
	addi x8, x3, -1
LBB0_111:                               //  %if.end426
                                        //  =>This Inner Loop Header: Depth=1
	add x1, x0, x0
	add x12, x0, x1
	lui x13, 1076101120>>12 &0xfffff
	call $__muldf3
	sw x10, 116 ( x2 )              //  4-byte Folded Spill
	sw x11, 100 ( x2 )              //  4-byte Folded Spill
	add x12, x0, x0
	add x13, x0, x12
	call $__nedf2
	bgtu x10, x0, LBB0_116
LBB0_112:
	lw x8, 108 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_265 ( x0 )
LBB0_113:                               //  %if.then372
	add x12, x0, x0
	lui x13, 1075052544>>12 &0xfffff
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	lw x11, 76 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x4, 84 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x0, x4, LBB0_85
LBB0_114:                               //  %if.then372
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__ledf2
	add x1, x0, x0
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x1
	ble x10, x0, LBB0_187
LBB0_115:                               //  %one_digit
	addi x1, x0, 49
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
	nop
	sb x1, 0 ( x3 )
	add x1, x0, x0
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	addi x8, x8, 1
	sw x8, 88 ( x2 )                //  4-byte Folded Spill
	addi x8, x3, 1
	lw x4, 120 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_260 ( x0 )
LBB0_116:                               //  %for.cond383
                                        //    in Loop: Header=BB0_111 Depth=1
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	lw x12, 80 ( x2 )               //  4-byte Folded Reload
	lw x13, 76 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divdf3
	call $__fixdfsi
	addi x1, x10, 48
	sw x8, 84 ( x2 )                //  4-byte Folded Spill
	lw x8, 108 ( x2 )               //  4-byte Folded Reload
	nop
	sb x1, 0 ( x8 )
	sw x10, 68 ( x2 )               //  4-byte Folded Spill
	call $__floatsidf
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	lw x11, 76 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	addi x8, x8, 1
	sw x8, 108 ( x2 )               //  4-byte Folded Spill
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	nop
	addi x8, x8, -1
	bgtu x8, x0, LBB0_111
LBB0_117:                               //  %if.then396
	add x12, x0, x10
	add x13, x0, x11
	call $__adddf3
	add x8, x0, x10
	sw x11, 116 ( x2 )              //  4-byte Folded Spill
	lw x12, 80 ( x2 )               //  4-byte Folded Reload
	lw x13, 76 ( x2 )               //  4-byte Folded Reload
	nop
	call $__gtdf2
	ble x10, x0, LBB0_119
LBB0_118:
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_123 ( x0 )
LBB0_119:                               //  %lor.lhs.false403
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 1
	beqz x1, LBB0_112
LBB0_120:                               //  %lor.lhs.false403
	add x10, x0, x8
	lw x11, 116 ( x2 )              //  4-byte Folded Reload
	lw x12, 80 ( x2 )               //  4-byte Folded Reload
	lw x13, 76 ( x2 )               //  4-byte Folded Reload
	nop
	call $__nedf2
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	beqz x10, LBB0_123
LBB0_121:
	add x8, x0, x3
	jalr x0, LBB0_265 ( x0 )
LBB0_122:                               //  %while.cond411.preheader.loopexit
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	lw x3, 100 ( x2 )               //  4-byte Folded Reload
	nop
	add x3, x3, x1
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
LBB0_123:                               //  %while.cond411.preheader
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
LBB0_124:                               //  %while.cond411
                                        //  =>This Inner Loop Header: Depth=1
	add x8, x0, x3
	lbu x1, -1 ( x8 )
	nop
	xori x3, x1, 57
	bgtu x3, x0, LBB0_127
LBB0_125:                               //  %while.body416
                                        //    in Loop: Header=BB0_124 Depth=1
	addi x3, x8, -1
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	bne x1, x3, LBB0_124
LBB0_126:                               //  %if.then419
	addi x1, x0, 48
	lw x4, 104 ( x2 )               //  4-byte Folded Reload
	nop
	sb x1, 0 ( x4 )
	addi x1, x0, 49
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 1
	sw x3, 88 ( x2 )                //  4-byte Folded Spill
	sb x1, 0 ( x4 )
	jalr x0, LBB0_266 ( x0 )
LBB0_127:                               //  %while.end422.loopexit
	addi x3, x8, -1
	addi x1, x1, 1
	sb x1, 0 ( x3 )
	jalr x0, LBB0_266 ( x0 )
LBB0_128:                               //  %if.end435
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x3, x0, LBB0_130
LBB0_129:
	add x1, x0, x0
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	lw x8, 56 ( x2 )                //  4-byte Folded Reload
	lw x12, 32 ( x2 )               //  4-byte Folded Reload
	nop
	add x9, x0, x12
	jalr x0, LBB0_145 ( x0 )
LBB0_130:                               //  %if.then437
	slti x3, x0, 1
	lw x4, 60 ( x2 )                //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	bgt x4, x3, LBB0_135
LBB0_131:                               //  %if.then440
	add x3, x0, x0
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	lw x7, 68 ( x2 )                //  4-byte Folded Reload
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	nop
	beq x4, x3, LBB0_133
LBB0_132:
	addi x1, x1, 1075
	jalr x0, LBB0_134 ( x0 )
LBB0_133:                               //  %if.then440
	lw x1, 128 ( x2 )
	addi x3, x0, 54
	sub x1, x3, x1
LBB0_134:                               //  %if.then440
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x8, x0, x3
	sw x11, 100 ( x2 )              //  4-byte Folded Spill
	jalr x0, LBB0_144 ( x0 )
LBB0_135:                               //  %if.else448
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x1, -1
	add x4, x0, x0
	add x9, x0, x4
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	lw x7, 68 ( x2 )                //  4-byte Folded Reload
	bgt x3, x11, LBB0_137
LBB0_136:                               //  %if.else448
	sub x9, x11, x3
LBB0_137:                               //  %if.else448
	add x1, x0, x4
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x5, LBB0_139
LBB0_138:                               //  %if.else448
	add x1, x0, x5
LBB0_139:                               //  %if.else448
	srai x5, x5, 31
	sw x9, 100 ( x2 )               //  4-byte Folded Spill
	ble x3, x11, LBB0_141
LBB0_140:
	sub x4, x3, x11
LBB0_141:                               //  %if.else448
	lw x9, 84 ( x2 )                //  4-byte Folded Reload
	nop
	and x5, x9, x5
	bgt x3, x11, LBB0_143
LBB0_142:                               //  %if.else448
	add x3, x0, x11
LBB0_143:                               //  %if.else448
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x9, x5
	lw x5, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x5, x5, x4
	sw x5, 28 ( x2 )                //  4-byte Folded Spill
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x9
LBB0_144:                               //  %if.end464
	add x7, x7, x1
	sw x7, 68 ( x2 )                //  4-byte Folded Spill
	add x3, x3, x1
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	slti x11, x0, 1
	call $__i2b
	sw x10, 108 ( x2 )              //  4-byte Folded Spill
	lw x12, 32 ( x2 )               //  4-byte Folded Reload
	lw x9, 100 ( x2 )               //  4-byte Folded Reload
LBB0_145:                               //  %if.end468
	lw x11, 112 ( x2 )              //  4-byte Folded Reload
	lw x3, 120 ( x2 )               //  4-byte Folded Reload
	sw x8, 80 ( x2 )                //  4-byte Folded Spill
	bgt x8, x0, LBB0_147
LBB0_146:
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	lw x5, 64 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_152 ( x0 )
LBB0_147:                               //  %if.end468
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x0, LBB0_149
LBB0_148:
	lw x5, 64 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_152 ( x0 )
LBB0_149:                               //  %if.then474
	add x1, x0, x8
	lw x5, 64 ( x2 )                //  4-byte Folded Reload
	bgt x4, x8, LBB0_151
LBB0_150:                               //  %if.then474
	add x1, x0, x4
LBB0_151:                               //  %if.then474
	sub x4, x4, x1
	lw x7, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sub x7, x7, x1
	sw x7, 80 ( x2 )                //  4-byte Folded Spill
	lw x7, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sub x7, x7, x1
	sw x7, 56 ( x2 )                //  4-byte Folded Spill
LBB0_152:                               //  %if.end484
	sw x4, 68 ( x2 )                //  4-byte Folded Spill
	ble x12, x0, LBB0_162
LBB0_153:                               //  %if.then487
	beqz x5, LBB0_160
LBB0_154:                               //  %if.then489
	bgt x9, x0, LBB0_156
LBB0_155:
	sw x11, 76 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB0_157 ( x0 )
LBB0_156:                               //  %if.then492
	add x8, x0, x3
	add x10, x0, x8
	lw x11, 108 ( x2 )              //  4-byte Folded Reload
	sw x12, 32 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x9
	sw x9, 100 ( x2 )               //  4-byte Folded Spill
	call $__pow5mult
	add x1, x0, x10
	add x10, x0, x8
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x1
	lw x12, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $__multiply
	sw x10, 76 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $_Bfree
	lw x9, 100 ( x2 )               //  4-byte Folded Reload
	lw x12, 32 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_157:                               //  %if.end495
	sub x12, x12, x9
	bgtu x12, x0, LBB0_159
LBB0_158:
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 112 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB0_161 ( x0 )
LBB0_159:                               //  %if.then499
	lw x8, 120 ( x2 )               //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 76 ( x2 )               //  4-byte Folded Reload
	nop
	call $__pow5mult
	sw x10, 112 ( x2 )              //  4-byte Folded Spill
	add x3, x0, x8
	jalr x0, LBB0_162 ( x0 )
LBB0_160:                               //  %if.else502
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	nop
	call $__pow5mult
	sw x10, 112 ( x2 )              //  4-byte Folded Spill
LBB0_161:                               //  %if.end505
	lw x3, 120 ( x2 )               //  4-byte Folded Reload
LBB0_162:                               //  %if.end505
	slti x11, x0, 1
	add x8, x0, x3
	add x10, x0, x8
	call $__i2b
	add x5, x0, x10
	lw x12, 28 ( x2 )               //  4-byte Folded Reload
	nop
	ble x12, x0, LBB0_164
LBB0_163:                               //  %if.then509
	add x10, x0, x8
	add x11, x0, x5
	call $__pow5mult
	lw x12, 28 ( x2 )               //  4-byte Folded Reload
	add x5, x0, x10
LBB0_164:                               //  %if.end511
	lui x1, 1048575 >> 12 & 0xfffff
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	and x1, x1, x3
	lw x3, 116 ( x2 )               //  4-byte Folded Reload
	nop
	or x1, x3, x1
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	seqz x1, x1
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	nop
	slti x3, x3, 2
	and x1, x1, x3
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sltu x3, x0, x3
	and x1, x1, x3
	andi x8, x1, 1
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	add x7, x8, x1
	slti x1, x0, 1
	sw x5, 100 ( x2 )               //  4-byte Folded Spill
	beqz x12, LBB0_166
LBB0_165:                               //  %cond.true534
	lw x1, 16 ( x5 )
	nop
	slli x1, x1, 2
	add x1, x1, x5
	lw x10, 16 ( x1 )
	sw x7, 72 ( x2 )                //  4-byte Folded Spill
	call $__hi0bits
	lw x7, 72 ( x2 )                //  4-byte Folded Reload
	lw x5, 100 ( x2 )               //  4-byte Folded Reload
	addi x1, x0, 32
	sub x1, x1, x10
LBB0_166:                               //  %cond.end540
	add x1, x7, x1
	andi x3, x1, 31
	add x1, x0, x0
	beq x3, x1, LBB0_168
LBB0_167:                               //  %cond.end540
	addi x1, x0, 32
	sub x1, x1, x3
LBB0_168:                               //  %cond.end540
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x12, x8, x3
	sltiu x3, x1, 5
	lw x4, 120 ( x2 )               //  4-byte Folded Reload
	bgtu x3, x0, LBB0_170
LBB0_169:                               //  %if.then551
	addi x1, x1, -4
	add x7, x7, x1
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x1
	sw x3, 80 ( x2 )                //  4-byte Folded Spill
	add x12, x12, x1
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_172 ( x0 )
LBB0_170:                               //  %if.else556
	xori x3, x1, 4
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
	beqz x3, LBB0_172
LBB0_171:                               //  %if.then559
	addi x1, x1, 28
	add x7, x7, x1
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x1
	sw x3, 80 ( x2 )                //  4-byte Folded Spill
	add x12, x12, x1
LBB0_172:                               //  %if.end565
	ble x12, x0, LBB0_174
LBB0_173:                               //  %if.then568
	add x10, x0, x4
	add x11, x0, x8
	add x8, x0, x7
	call $__lshift
	add x7, x0, x8
	lw x5, 100 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x10
LBB0_174:                               //  %if.end570
	ble x7, x0, LBB0_176
LBB0_175:                               //  %if.then573
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x5
	add x12, x0, x7
	call $__lshift
	add x5, x0, x10
LBB0_176:                               //  %if.end575
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	sw x5, 100 ( x2 )               //  4-byte Folded Spill
	bgtu x1, x0, LBB0_178
LBB0_177:
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	lw x7, 64 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_182 ( x0 )
LBB0_178:                               //  %if.then577
	add x10, x0, x8
	add x11, x0, x5
	call $__mcmp
	bgez x10, LBB0_177
LBB0_179:                               //  %if.then581
	addi x12, x0, 10
	add x13, x0, x0
	add x11, x0, x8
	lw x8, 120 ( x2 )               //  4-byte Folded Reload
	nop
	add x10, x0, x8
	call $__multadd
	sw x10, 112 ( x2 )              //  4-byte Folded Spill
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
	lw x7, 64 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x7, LBB0_181
LBB0_180:                               //  %if.then585
	addi x12, x0, 10
	add x13, x0, x0
	add x10, x0, x8
	lw x11, 108 ( x2 )              //  4-byte Folded Reload
	nop
	call $__multadd
	lw x7, 64 ( x2 )                //  4-byte Folded Reload
	sw x10, 108 ( x2 )              //  4-byte Folded Spill
LBB0_181:                               //  %if.end589
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
	lw x5, 24 ( x2 )                //  4-byte Folded Reload
LBB0_182:                               //  %if.end589
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	nop
	slti x1, x3, 3
	lw x4, 120 ( x2 )               //  4-byte Folded Reload
	bgtu x1, x0, LBB0_188
LBB0_183:                               //  %if.end589
	bgt x5, x0, LBB0_188
LBB0_184:                               //  %if.then595
	sw x8, 112 ( x2 )               //  4-byte Folded Spill
	bgez x5, LBB0_186
LBB0_185:
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB0_187 ( x0 )
LBB0_186:                               //  %lor.lhs.false598
	addi x12, x0, 5
	add x13, x0, x0
	add x10, x0, x4
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	nop
	call $__multadd
	add x1, x0, x10
	add x10, x0, x8
	add x8, x0, x1
	add x11, x0, x8
	call $__mcmp
	add x11, x0, x8
	lw x8, 88 ( x2 )                //  4-byte Folded Reload
	bgt x10, x0, LBB0_115
LBB0_187:                               //  %no_digits
	add x1, x0, x0
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	not x1, x1
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
	lw x8, 104 ( x2 )               //  4-byte Folded Reload
	lw x4, 120 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_260 ( x0 )
LBB0_188:                               //  %if.end608
	sw x5, 24 ( x2 )                //  4-byte Folded Spill
	bgtu x7, x0, LBB0_191
LBB0_189:                               //  %for.cond728.preheader
	add x10, x0, x8
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	nop
	call $quorem
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	addi x4, x10, 48
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	sw x4, 80 ( x2 )                //  4-byte Folded Spill
	sb x4, 0 ( x1 )
	addi x5, x1, 1
	slti x1, x3, 2
	beqz x1, LBB0_242
LBB0_190:
	sw x5, 116 ( x2 )               //  4-byte Folded Spill
	add x1, x0, x0
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	lw x4, 120 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_247 ( x0 )
LBB0_191:                               //  %if.then610
	sw x8, 112 ( x2 )               //  4-byte Folded Spill
	slti x1, x0, 1
	slt x1, x1, x3
	lw x3, 76 ( x2 )                //  4-byte Folded Reload
	nop
	sltu x3, x0, x3
	or x1, x3, x1
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	seqz x3, x3
	or x8, x1, x3
	lw x12, 80 ( x2 )               //  4-byte Folded Reload
	nop
	bgt x12, x0, LBB0_193
LBB0_192:
	lw x10, 108 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB0_194 ( x0 )
LBB0_193:                               //  %if.then613
	add x10, x0, x4
	lw x11, 108 ( x2 )              //  4-byte Folded Reload
	nop
	call $__lshift
LBB0_194:                               //  %if.end615
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	sw x10, 84 ( x2 )               //  4-byte Folded Spill
	bgtu x8, x0, LBB0_196
LBB0_195:                               //  %if.then617
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 4 ( x8 )
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	nop
	call $_Balloc
	add x3, x0, x10
	lw x1, 16 ( x8 )
	addi x11, x8, 12
	slli x1, x1, 2
	addi x12, x1, 8
	addi x10, x3, 12
	add x8, x0, x3
	call $memcpy
	slti x12, x0, 1
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x8
	call $__lshift
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
LBB0_196:                               //  %for.cond627.preheader
	lw x1, 116 ( x2 )               //  4-byte Folded Reload
	nop
	andi x1, x1, 1
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
	lw x4, 24 ( x2 )                //  4-byte Folded Reload
	sw x10, 108 ( x2 )              //  4-byte Folded Spill
	beqz x1, LBB0_204
LBB0_197:                               //  %for.cond627.preheader1601
	addi x1, x4, -1
	sw x1, 72 ( x2 )                //  4-byte Folded Spill
	sw x3, 116 ( x2 )               //  4-byte Folded Spill
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_198:                               //  %for.cond627
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x0, x8
	call $quorem
	sw x10, 76 ( x2 )               //  4-byte Folded Spill
	sw x8, 112 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mcmp
	sw x10, 68 ( x2 )               //  4-byte Folded Spill
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	lw x12, 108 ( x2 )              //  4-byte Folded Reload
	nop
	call $__mdiff
	add x4, x0, x10
	lw x1, 12 ( x4 )
	slti x8, x0, 1
	bgtu x1, x0, LBB0_200
LBB0_199:                               //  %cond.false635
                                        //    in Loop: Header=BB0_198 Depth=1
	lw x10, 112 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x4
	add x11, x0, x8
	call $__mcmp
	add x4, x0, x8
	add x8, x0, x10
LBB0_200:                               //  %cond.end637
                                        //    in Loop: Header=BB0_198 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 48
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x4
	call $_Bfree
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	bgez x1, LBB0_231
LBB0_201:
	lw x4, 120 ( x2 )               //  4-byte Folded Reload
	lw x11, 112 ( x2 )              //  4-byte Folded Reload
	add x5, x0, x8
LBB0_202:                               //  %if.then673
	bgt x5, x0, LBB0_222
LBB0_203:
	sw x11, 112 ( x2 )              //  4-byte Folded Spill
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_230 ( x0 )
LBB0_204:                               //  %for.cond627.us.preheader
	addi x1, x4, -1
	sw x1, 72 ( x2 )                //  4-byte Folded Spill
	sw x3, 116 ( x2 )               //  4-byte Folded Spill
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_205:                               //  %for.cond627.us
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x0, x8
	call $quorem
	sw x10, 76 ( x2 )               //  4-byte Folded Spill
	sw x8, 112 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mcmp
	sw x10, 64 ( x2 )               //  4-byte Folded Spill
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	lw x12, 108 ( x2 )              //  4-byte Folded Reload
	nop
	call $__mdiff
	add x8, x0, x10
	lw x1, 12 ( x8 )
	slti x3, x0, 1
	add x10, x0, x3
	bgtu x1, x0, LBB0_207
LBB0_206:                               //  %cond.false635.us
                                        //    in Loop: Header=BB0_205 Depth=1
	lw x10, 112 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x8
	call $__mcmp
LBB0_207:                               //  %cond.end637.us
                                        //    in Loop: Header=BB0_205 Depth=1
	sw x10, 68 ( x2 )               //  4-byte Folded Spill
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 48
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x8
	call $_Bfree
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	nop
	or x1, x3, x5
	beqz x1, LBB0_217
LBB0_208:                               //  %if.end660.us
                                        //    in Loop: Header=BB0_205 Depth=1
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	bgez x1, LBB0_210
LBB0_209:
	add x11, x0, x8
	lw x4, 120 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_202 ( x0 )
LBB0_210:                               //  %if.end660.us
                                        //    in Loop: Header=BB0_205 Depth=1
	or x1, x3, x1
	lw x4, 120 ( x2 )               //  4-byte Folded Reload
	bgtu x1, x0, LBB0_212
LBB0_211:
	add x11, x0, x8
	jalr x0, LBB0_202 ( x0 )
LBB0_212:                               //  %if.end696.us
                                        //    in Loop: Header=BB0_205 Depth=1
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	bgt x5, x0, LBB0_233
LBB0_213:                               //  %if.end708.us
                                        //    in Loop: Header=BB0_205 Depth=1
	lw x1, 116 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, 0 ( x1 )
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_245
LBB0_214:                               //  %if.end714.us
                                        //    in Loop: Header=BB0_205 Depth=1
	add x11, x0, x8
	add x8, x0, x4
	add x10, x0, x8
	addi x1, x0, 10
	add x12, x0, x1
	add x1, x0, x0
	add x13, x0, x1
	call $__multadd
	sw x10, 112 ( x2 )              //  4-byte Folded Spill
	add x10, x0, x8
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	addi x12, x0, 10
	add x13, x0, x0
	call $__multadd
	add x3, x0, x10
	lw x11, 108 ( x2 )              //  4-byte Folded Reload
	nop
	beq x8, x11, LBB0_216
LBB0_215:                               //  %if.else720.us
                                        //    in Loop: Header=BB0_205 Depth=1
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	addi x12, x0, 10
	add x13, x0, x0
	add x8, x0, x3
	call $__multadd
	add x3, x0, x8
LBB0_216:                               //  %for.inc724.us
                                        //    in Loop: Header=BB0_205 Depth=1
	lw x1, 116 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 116 ( x2 )               //  4-byte Folded Spill
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	sw x1, 72 ( x2 )                //  4-byte Folded Spill
	sw x3, 84 ( x2 )                //  4-byte Folded Spill
	sw x10, 108 ( x2 )              //  4-byte Folded Spill
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB0_205 ( x0 )
LBB0_217:                               //  %if.then648
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	xori x1, x3, 57
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
	lw x5, 104 ( x2 )               //  4-byte Folded Reload
	add x7, x0, x0
	bgtu x1, x0, LBB0_219
LBB0_218:
	lw x4, 120 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_236 ( x0 )
LBB0_219:                               //  %if.end652
	lw x4, 120 ( x2 )               //  4-byte Folded Reload
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	ble x1, x7, LBB0_221
LBB0_220:
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x1, 49
LBB0_221:                               //  %if.end652
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	lw x1, 116 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, 0 ( x1 )
	addi x8, x1, 1
	jalr x0, LBB0_260 ( x0 )
LBB0_222:                               //  %if.then676
	slti x12, x0, 1
	add x10, x0, x4
	call $__lshift
	add x8, x0, x10
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	nop
	call $__mcmp
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	lw x4, 76 ( x2 )                //  4-byte Folded Reload
	bgt x10, x0, LBB0_226
LBB0_223:                               //  %lor.lhs.false681
	andi x1, x3, 1
	bgtu x1, x0, LBB0_225
LBB0_224:
	sw x8, 112 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB0_229 ( x0 )
LBB0_225:                               //  %lor.lhs.false681
	bgtu x10, x0, LBB0_224
LBB0_226:                               //  %land.lhs.true687
	xori x1, x3, 57
	bgtu x1, x0, LBB0_228
LBB0_227:
	lw x4, 120 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_235 ( x0 )
LBB0_228:
	sw x8, 112 ( x2 )               //  4-byte Folded Spill
	addi x3, x4, 49
LBB0_229:                               //  %if.end693
	lw x4, 120 ( x2 )               //  4-byte Folded Reload
LBB0_230:                               //  %if.end693
	lw x1, 116 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, 0 ( x1 )
	addi x8, x1, 1
	jalr x0, LBB0_259 ( x0 )
LBB0_231:                               //  %if.end696
                                        //    in Loop: Header=BB0_198 Depth=1
	ble x8, x0, LBB0_238
LBB0_232:
	lw x4, 120 ( x2 )               //  4-byte Folded Reload
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_233:                               //  %if.then699
	xori x1, x3, 57
	bgtu x1, x0, LBB0_237
LBB0_234:
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
LBB0_235:                               //  %round_9_up
	lw x5, 104 ( x2 )               //  4-byte Folded Reload
LBB0_236:                               //  %round_9_up
	sw x8, 112 ( x2 )               //  4-byte Folded Spill
	addi x1, x0, 57
	lw x3, 116 ( x2 )               //  4-byte Folded Reload
	nop
	sb x1, 0 ( x3 )
	addi x3, x3, 1
	jalr x0, LBB0_252 ( x0 )
LBB0_237:                               //  %if.end704
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 49
	lw x3, 116 ( x2 )               //  4-byte Folded Reload
	nop
	sb x1, 0 ( x3 )
	addi x8, x3, 1
	jalr x0, LBB0_259 ( x0 )
LBB0_238:                               //  %if.end708
                                        //    in Loop: Header=BB0_198 Depth=1
	lw x1, 116 ( x2 )               //  4-byte Folded Reload
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, 0 ( x1 )
	lw x4, 120 ( x2 )               //  4-byte Folded Reload
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_246
LBB0_239:                               //  %if.end714
                                        //    in Loop: Header=BB0_198 Depth=1
	add x8, x0, x4
	add x10, x0, x8
	lw x11, 112 ( x2 )              //  4-byte Folded Reload
	addi x1, x0, 10
	add x12, x0, x1
	add x1, x0, x0
	add x13, x0, x1
	call $__multadd
	sw x10, 112 ( x2 )              //  4-byte Folded Spill
	add x10, x0, x8
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	addi x12, x0, 10
	add x13, x0, x0
	call $__multadd
	add x3, x0, x10
	lw x11, 108 ( x2 )              //  4-byte Folded Reload
	nop
	beq x8, x11, LBB0_241
LBB0_240:                               //  %if.else720
                                        //    in Loop: Header=BB0_198 Depth=1
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	addi x12, x0, 10
	add x13, x0, x0
	add x8, x0, x3
	call $__multadd
	add x3, x0, x8
LBB0_241:                               //  %for.inc724
                                        //    in Loop: Header=BB0_198 Depth=1
	lw x1, 116 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 116 ( x2 )               //  4-byte Folded Spill
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	sw x1, 72 ( x2 )                //  4-byte Folded Spill
	sw x3, 84 ( x2 )                //  4-byte Folded Spill
	sw x10, 108 ( x2 )              //  4-byte Folded Spill
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB0_198 ( x0 )
LBB0_242:                               //  %if.end736.preheader
	add x11, x0, x8
	addi x8, x3, -1
LBB0_243:                               //  %if.end736
                                        //  =>This Inner Loop Header: Depth=1
	sw x5, 116 ( x2 )               //  4-byte Folded Spill
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	addi x12, x0, 10
	add x13, x0, x0
	call $__multadd
	sw x10, 112 ( x2 )              //  4-byte Folded Spill
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	nop
	call $quorem
	lw x11, 112 ( x2 )              //  4-byte Folded Reload
	lw x5, 116 ( x2 )               //  4-byte Folded Reload
	addi x1, x10, 48
	lw x4, 120 ( x2 )               //  4-byte Folded Reload
	sb x1, 0 ( x5 )
	addi x5, x5, 1
	addi x8, x8, -1
	bgtu x8, x0, LBB0_243
LBB0_244:                               //  %if.end741.loopexit1415
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x3, x1
	sw x1, 116 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	jalr x0, LBB0_247 ( x0 )
LBB0_245:                               //  %if.end741.loopexit
	lw x1, 116 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 116 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB0_247 ( x0 )
LBB0_246:                               //  %if.end741.loopexit1604
	lw x1, 116 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 116 ( x2 )               //  4-byte Folded Spill
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
LBB0_247:                               //  %if.end741
	slti x12, x0, 1
	add x10, x0, x4
	add x11, x0, x8
	call $__lshift
	add x8, x0, x10
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	nop
	call $__mcmp
	sw x8, 112 ( x2 )               //  4-byte Folded Spill
	ble x10, x0, LBB0_249
LBB0_248:
	lw x4, 120 ( x2 )               //  4-byte Folded Reload
	lw x5, 104 ( x2 )               //  4-byte Folded Reload
	lw x3, 116 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_252 ( x0 )
LBB0_249:                               //  %lor.lhs.false746
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 1
	lw x3, 116 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB0_256
LBB0_250:                               //  %lor.lhs.false746
	bgtu x10, x0, LBB0_256
LBB0_251:
	lw x4, 120 ( x2 )               //  4-byte Folded Reload
	lw x5, 104 ( x2 )               //  4-byte Folded Reload
LBB0_252:                               //  %while.cond753
                                        //  =>This Inner Loop Header: Depth=1
	add x8, x0, x3
	lbu x1, -1 ( x8 )
	nop
	xori x3, x1, 57
	bgtu x3, x0, LBB0_255
LBB0_253:                               //  %while.body758
                                        //    in Loop: Header=BB0_252 Depth=1
	addi x3, x8, -1
	bne x5, x3, LBB0_252
LBB0_254:                               //  %if.then761
	addi x1, x0, 49
	sb x1, 0 ( x5 )
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_259 ( x0 )
LBB0_255:                               //  %while.end765
	addi x1, x1, 1
	sb x1, -1 ( x8 )
	jalr x0, LBB0_259 ( x0 )
LBB0_256:                               //  %while.cond769.preheader
	addi x1, x3, 1
LBB0_257:                               //  %while.cond769
                                        //  =>This Inner Loop Header: Depth=1
	addi x8, x1, -1
	lbu x1, -2 ( x1 )
	nop
	xori x3, x1, 48
	add x1, x0, x8
	beqz x3, LBB0_257
LBB0_258:
	lw x4, 120 ( x2 )               //  4-byte Folded Reload
LBB0_259:                               //  %ret
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
LBB0_260:                               //  %ret
	add x10, x0, x4
	call $_Bfree
	lw x11, 108 ( x2 )              //  4-byte Folded Reload
	nop
	beqz x11, LBB0_265
LBB0_261:                               //  %if.then779
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_264
LBB0_262:                               //  %if.then779
	beq x1, x11, LBB0_264
LBB0_263:                               //  %if.then784
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x1
	call $_Bfree
	lw x11, 108 ( x2 )              //  4-byte Folded Reload
LBB0_264:                               //  %if.end785
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	nop
	call $_Bfree
LBB0_265:                               //  %ret1
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
LBB0_266:                               //  %ret1
	lw x11, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $_Bfree
	sb x0, 0 ( x8 )
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	lw x3, 92 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_268
LBB0_267:                               //  %if.then789
	sw x8, 0 ( x1 )
LBB0_268:                               //  %cleanup
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
LBB0_269:                               //  %cleanup
	lw x8, 132 ( x2 )               //  4-byte Folded Reload
	lw x1, 140 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 144
$cfi5:
	.cfi_adjust_cfa_offset -144
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$_dtoa_r, ($func_end0)-($_dtoa_r)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	LBB0_54
	.long	LBB0_54
	.long	LBB0_43
	.long	LBB0_52
	.long	LBB0_44
	.long	LBB0_53

	.text
	.type	$quorem,@function
$quorem:                                //  @quorem
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -72
$cfi9:
	.cfi_adjust_cfa_offset 72
	sw x1, 68 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 60 ( x2 )                //  4-byte Folded Spill
	lw x1, 16 ( x11 )
	lw x3, 16 ( x10 )
	nop
	ble x1, x3, LBB1_2
LBB1_1:
	add x1, x0, x0
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_21 ( x0 )
LBB1_2:                                 //  %if.end
	addi x1, x1, -1
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	addi x3, x11, 20
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	slli x1, x1, 2
	sw x3, 28 ( x2 )                //  4-byte Folded Spill
	add x3, x1, x3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	addi x8, x10, 20
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	lw x3, 0 ( x3 )
	add x1, x1, x8
	addi x11, x3, 1
	sw x11, 56 ( x2 )               //  4-byte Folded Spill
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	lw x10, 0 ( x1 )
	nop
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	call $__udivsi3
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	bgeu x3, x1, LBB1_4
LBB1_3:
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_13 ( x0 )
LBB1_4:                                 //  %do.body.preheader
	add x5, x0, x0
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	add x7, x0, x8
	add x4, x0, x5
LBB1_5:                                 //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	sw x5, 40 ( x2 )                //  4-byte Folded Spill
	sw x4, 44 ( x2 )                //  4-byte Folded Spill
	sw x7, 48 ( x2 )                //  4-byte Folded Spill
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 65535 & 0xfff
	lw x3, 0 ( x1 )
	nop
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x8, x1, x28
	and x10, x8, x3
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsi3
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x10
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	srli x10, x1, 16
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsi3
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x7 )
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	nop
	srli x3, x4, 16
	and x4, x8, x4
	add x3, x10, x3
	and x5, x8, x1
	sub x4, x5, x4
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x5, x4
	and x5, x8, x3
	srli x1, x1, 16
	sub x1, x1, x5
	srai x5, x4, 16
	add x1, x5, x1
	and x4, x8, x4
	slli x5, x1, 16
	or x4, x4, x5
	lw x5, 56 ( x2 )                //  4-byte Folded Reload
	nop
	addi x5, x5, 4
	sw x5, 56 ( x2 )                //  4-byte Folded Spill
	sw x4, 0 ( x7 )
	addi x7, x7, 4
	srai x4, x1, 16
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	srli x5, x3, 16
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	bgeu x3, x1, LBB1_5
LBB1_6:                                 //  %do.end
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	lw x1, 0 ( x3 )
	nop
	bgtu x1, x0, LBB1_3
LBB1_7:                                 //  %while.cond.preheader
	addi x1, x3, -4
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x5, LBB1_9
LBB1_8:
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	lw x4, 20 ( x2 )                //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_12 ( x0 )
LBB1_9:                                 //  %land.rhs.preheader
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	lw x4, 20 ( x2 )                //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
LBB1_10:                                //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	lw x3, 0 ( x1 )
	nop
	bgtu x3, x0, LBB1_12
LBB1_11:                                //  %while.body
                                        //    in Loop: Header=BB1_10 Depth=1
	addi x1, x1, -4
	addi x4, x4, -1
	bgtu x1, x5, LBB1_10
LBB1_12:                                //  %while.end
	sw x4, 20 ( x2 )                //  4-byte Folded Spill
	sw x4, 16 ( x8 )
LBB1_13:                                //  %if.end33
	add x10, x0, x8
	call $__mcmp
	bgt x0, x10, LBB1_21
LBB1_14:                                //  %do.body40.preheader
	add x5, x0, x0
	lui x1, 65535 >> 12 & 0xfffff
	add x4, x0, x5
	lw x13, 12 ( x2 )               //  4-byte Folded Reload
	nop
	add x3, x0, x13
	lw x14, 28 ( x2 )               //  4-byte Folded Reload
	lw x15, 32 ( x2 )               //  4-byte Folded Reload
LBB1_15:                                //  %do.body40
                                        //  =>This Inner Loop Header: Depth=1
	lw x7, 0 ( x14 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lw x9, 0 ( x3 )
	or x10, x1, x28
	and x11, x10, x7
	add x12, x5, x7
	add x5, x5, x11
	and x11, x10, x12
	and x12, x10, x9
	srli x5, x5, 16
	srli x7, x7, 16
	add x5, x7, x5
	sub x7, x12, x11
	add x4, x4, x7
	srli x7, x9, 16
	and x9, x10, x5
	sub x7, x7, x9
	srai x9, x4, 16
	add x7, x9, x7
	and x4, x10, x4
	slli x9, x7, 16
	or x4, x4, x9
	addi x14, x14, 4
	sw x4, 0 ( x3 )
	addi x3, x3, 4
	srai x4, x7, 16
	srli x5, x5, 16
	bgeu x15, x14, LBB1_15
LBB1_16:                                //  %do.end64
	lw x4, 20 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x4, 2
	add x1, x1, x8
	lw x3, 20 ( x1 )
	lw x5, 52 ( x2 )                //  4-byte Folded Reload
	nop
	addi x5, x5, 1
	sw x5, 52 ( x2 )                //  4-byte Folded Spill
	bgtu x3, x0, LBB1_21
LBB1_17:                                //  %while.cond70.preheader
	addi x1, x1, 20
	addi x1, x1, -4
	bgeu x13, x1, LBB1_20
LBB1_18:                                //  %land.rhs73
                                        //  =>This Inner Loop Header: Depth=1
	lw x3, 0 ( x1 )
	nop
	bgtu x3, x0, LBB1_20
LBB1_19:                                //  %while.body77
                                        //    in Loop: Header=BB1_18 Depth=1
	addi x1, x1, -4
	addi x4, x4, -1
	bgtu x1, x13, LBB1_18
LBB1_20:                                //  %while.end79
	sw x4, 16 ( x8 )
LBB1_21:                                //  %cleanup
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	lw x1, 68 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 72
$cfi12:
	.cfi_adjust_cfa_offset -72
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$quorem, ($func_end1)-($quorem)
	.cfi_endproc

	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"Infinity"
	.size	$.str, 9

	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
$.str.1:
	.asciz	"NaN"
	.size	$.str.1, 4

	.address_space	0	
	.type	$.str.2,@object         //  @.str.2
$.str.2:
	.asciz	"0"
	.size	$.str.2, 2

	.address_space	0	
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
