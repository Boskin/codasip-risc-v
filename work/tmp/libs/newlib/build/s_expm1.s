	.text
	.file	"s_expm1.bc"
	.globl	$expm1
	.type	$expm1,@function
$expm1:                                 //  @expm1
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
	add x5, x0, x10
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 1078159482 & 0xfff
	slli x28, x28, 20
	lui x4, 1078159482 >> 12 & 0xfffff
	srli x28, x28, 20
	and x1, x1, x11
	or x4, x4, x28
	sw x11, 56 ( x2 )               //  4-byte Folded Spill
	and x7, x3, x11
	bgtu x4, x1, LBB0_18
LBB0_1:                                 //  %if.then3
	ori x28, x0, 1082535490 & 0xfff
	slli x28, x28, 20
	lui x3, 1082535490 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x3, x28
	bgtu x4, x1, LBB0_13
LBB0_2:                                 //  %if.then5
	lui x4, 2146435072>>12 &0xfffff
	bgtu x4, x1, LBB0_11
LBB0_3:                                 //  %if.then7
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	lui x1, 1048575 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, -1074790400 & 0xfff
	slli x28, x28, 20
	lui x3, -1074790400 >> 12 & 0xfffff
	srli x28, x28, 20
	add x9, x0, x0
	lw x8, 56 ( x2 )                //  4-byte Folded Reload
	nop
	and x1, x1, x8
	or x3, x3, x28
	add x4, x0, x8
	beq x7, x9, LBB0_5
LBB0_4:                                 //  %if.then7
	add x8, x0, x3
LBB0_5:                                 //  %if.then7
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	or x1, x5, x1
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x5
	beq x7, x9, LBB0_7
LBB0_6:                                 //  %if.then7
	add x8, x0, x9
LBB0_7:                                 //  %if.then7
	add x10, x0, x5
	add x11, x0, x4
	add x12, x0, x5
	add x13, x0, x11
	call $__adddf3
	add x3, x0, x0
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	nop
	beq x4, x3, LBB0_9
LBB0_8:                                 //  %if.then7
	add x1, x0, x11
LBB0_9:                                 //  %if.then7
	beq x4, x3, LBB0_45
LBB0_10:                                //  %if.then7
	add x8, x0, x10
	jalr x0, LBB0_45 ( x0 )
LBB0_11:                                //  %if.end18
	ori x28, x0, -17155601 & 0xfff
	slli x28, x28, 20
	lui x1, -17155601 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1082535490 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x3, x28
	add x10, x0, x5
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	sw x5, 52 ( x2 )                //  4-byte Folded Spill
	sw x7, 48 ( x2 )                //  4-byte Folded Spill
	call $__gtdf2
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	lw x5, 52 ( x2 )                //  4-byte Folded Reload
	ble x10, x0, LBB0_13
LBB0_12:
	add x8, x0, x0
	lui x1, 2146435072>>12 &0xfffff
	jalr x0, LBB0_45 ( x0 )
LBB0_13:                                //  %if.end22
	sw x7, 48 ( x2 )                //  4-byte Folded Spill
	sw x5, 52 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, -1023872167 & 0xfff
	slli x28, x28, 20
	lui x1, -1023872167 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 27618847 & 0xfff
	slli x28, x28, 20
	lui x1, 27618847 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x10, x0, x5
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	add x8, x0, x0
	add x12, x0, x8
	add x13, x0, x8
	call $__ltdf2
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	lw x5, 52 ( x2 )                //  4-byte Folded Reload
	ori x28, x0, -1074790400 & 0xfff
	slli x28, x28, 20
	lui x1, -1074790400 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgez x10, LBB0_15
LBB0_14:                                //  %if.end22
	bgtu x7, x0, LBB0_45
LBB0_15:                                //  %if.else41
	sw x7, 48 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1697350398 & 0xfff
	slli x28, x28, 20
	lui x1, 1697350398 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1073157447 & 0xfff
	slli x28, x28, 20
	lui x1, 1073157447 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	sw x5, 52 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x5
	lw x8, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__muldf3
	ori x28, x0, -1075838976 & 0xfff
	slli x28, x28, 20
	lui x1, -1075838976 >> 12 & 0xfffff
	srli x28, x28, 20
	add x12, x0, x0
	or x13, x1, x28
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	bne x1, x12, LBB0_17
LBB0_16:
	lui x13, 1071644672>>12 &0xfffff
LBB0_17:                                //  %if.else41
	call $__adddf3
	call $__fixdfsi
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	call $__floatsidf
	add x8, x0, x10
	sw x11, 44 ( x2 )               //  4-byte Folded Spill
	lui x1, -18874368 >> 12 & 0xfffff
	ori x28, x0, -18874368 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x12, x1, x28
	lui x1, -1075433918 >> 12 & 0xfffff
	ori x28, x0, -1075433918 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x1, x28
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	lui x1, 897137782 >> 12 & 0xfffff
	ori x28, x0, 897137782 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x12, x1, x28
	lui x1, 1038760431 >> 12 & 0xfffff
	ori x28, x0, 1038760431 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x1, x28
	add x10, x0, x8
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x4, x0, x10
	add x3, x0, x11
	jalr x0, LBB0_24 ( x0 )
LBB0_18:                                //  %if.end30
	ori x28, x0, 1071001155 & 0xfff
	slli x28, x28, 20
	lui x3, 1071001155 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	bgtu x3, x1, LBB0_25
LBB0_19:                                //  %if.then32
	ori x28, x0, 1072734897 & 0xfff
	slli x28, x28, 20
	lui x3, 1072734897 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	bgtu x1, x3, LBB0_15
LBB0_20:                                //  %if.then34
	bgtu x7, x0, LBB0_22
LBB0_21:                                //  %if.then36
	ori x28, x0, -18874368 & 0xfff
	slli x28, x28, 20
	lui x1, -18874368 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1075433918 & 0xfff
	slli x28, x28, 20
	lui x1, -1075433918 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x10, x0, x5
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1038760431 & 0xfff
	slli x28, x28, 20
	lui x1, 1038760431 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	ori x28, x0, 897137782 & 0xfff
	slli x28, x28, 20
	lui x1, 897137782 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x1, x28
	slti x1, x0, 1
	jalr x0, LBB0_23 ( x0 )
LBB0_22:                                //  %if.else38
	ori x28, x0, -18874368 & 0xfff
	slli x28, x28, 20
	lui x1, -18874368 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1072049730 & 0xfff
	slli x28, x28, 20
	lui x1, 1072049730 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x10, x0, x5
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1108723217 & 0xfff
	slli x28, x28, 20
	lui x1, -1108723217 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	ori x28, x0, 897137782 & 0xfff
	slli x28, x28, 20
	lui x1, 897137782 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x1, x28
	not x1, x0
LBB0_23:                                //  %if.end49
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
LBB0_24:                                //  %if.end49
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	sw x4, 44 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x4
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x3
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x8, x0, x1
	add x13, x0, x3
	call $__subdf3
	lw x12, 44 ( x2 )               //  4-byte Folded Reload
	lw x13, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x5, x0, x8
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_27 ( x0 )
LBB0_25:                                //  %if.else53
	ori x28, x0, 1016070143 & 0xfff
	slli x28, x28, 20
	lui x3, 1016070143 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	bgeu x3, x1, LBB0_46
LBB0_26:
	add x1, x0, x0
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
                                        //  implicit-def: %rf_xpr_1
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
                                        //  implicit-def: %rf_xpr_1
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
LBB0_27:                                //  %if.end63
	add x12, x0, x0
	lui x13, 1071644672>>12 &0xfffff
	add x10, x0, x5
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x5
	sw x8, 52 ( x2 )                //  4-byte Folded Spill
	call $__muldf3
	add x1, x0, x10
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x11
	sw x3, 28 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1846133549 & 0xfff
	slli x28, x28, 20
	lui x1, 1846133549 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1098187337 & 0xfff
	slli x28, x28, 20
	lui x1, -1098187337 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x8, x0, x11
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	call $__muldf3
	ori x28, x0, -2031726023 & 0xfff
	slli x28, x28, 20
	lui x1, -2031726023 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1053872074 & 0xfff
	slli x28, x28, 20
	lui x1, 1053872074 >> 12 & 0xfffff
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
	ori x28, x0, -1632969801 & 0xfff
	slli x28, x28, 20
	lui x1, -1632969801 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1089155559 & 0xfff
	slli x28, x28, 20
	lui x1, -1089155559 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 436098437 & 0xfff
	slli x28, x28, 20
	lui x1, 436098437 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1062863264 & 0xfff
	slli x28, x28, 20
	lui x1, 1062863264 >> 12 & 0xfffff
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
	ori x28, x0, 286331124 & 0xfff
	slli x28, x28, 20
	lui x1, 286331124 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1079963375 & 0xfff
	slli x28, x28, 20
	lui x1, -1079963375 >> 12 & 0xfffff
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
	lui x13, 1072693248>>12 &0xfffff
	add x8, x0, x0
	add x12, x0, x8
	call $__adddf3
	add x1, x0, x10
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x11
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lui x11, 1074266112>>12 &0xfffff
	add x10, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	lw x8, 56 ( x2 )                //  4-byte Folded Reload
	add x1, x0, x10
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x11
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	lw x13, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lui x11, 1075314688>>12 &0xfffff
	add x10, x0, x0
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x3, x0, x10
	add x1, x0, x11
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x4, x0, LBB0_30
LBB0_28:                                //  %if.then84
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x3
	add x13, x0, x1
	call $__muldf3
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	lw x13, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
LBB0_29:                                //  %cleanup205
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	jalr x0, LBB0_35 ( x0 )
LBB0_30:                                //  %if.else88
	add x10, x0, x3
	add x11, x0, x1
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	lw x8, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	add x13, x0, x8
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	call $__subdf3
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	lw x13, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x7, x0, x10
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	add x5, x0, x11
	xori x1, x4, 1
	beqz x1, LBB0_36
LBB0_31:                                //  %if.else88
	xori x1, x4, -1
	bgtu x1, x0, LBB0_39
LBB0_32:                                //  %if.then95
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x7
	add x13, x0, x5
	call $__subdf3
	add x8, x0, x0
	lui x13, 1071644672>>12 &0xfffff
	add x12, x0, x8
	call $__muldf3
	ori x28, x0, -1075838976 & 0xfff
	slli x28, x28, 20
	lui x1, -1075838976 >> 12 & 0xfffff
LBB0_33:                                //  %cleanup205
	srli x28, x28, 20
	or x13, x1, x28
	add x12, x0, x8
LBB0_34:                                //  %cleanup205
	call $__adddf3
LBB0_35:                                //  %cleanup205
	add x8, x0, x10
	add x1, x0, x11
	jalr x0, LBB0_45 ( x0 )
LBB0_36:                                //  %if.then102
	sw x7, 44 ( x2 )                //  4-byte Folded Spill
	sw x5, 48 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, -1076887552 & 0xfff
	slli x28, x28, 20
	lui x1, -1076887552 >> 12 & 0xfffff
	srli x28, x28, 20
	add x12, x0, x0
	or x13, x1, x28
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ltdf2
	bgez x10, LBB0_38
LBB0_37:                                //  %if.then105
	add x12, x0, x0
	lui x13, 1071644672>>12 &0xfffff
	add x10, x0, x8
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x12
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	ori x28, x0, -1073741824 & 0xfff
	slli x28, x28, 20
	lui x1, -1073741824 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x12, x0, x8
	call $__muldf3
	jalr x0, LBB0_35 ( x0 )
LBB0_38:                                //  %if.else109
	add x10, x0, x8
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	lw x12, 44 ( x2 )               //  4-byte Folded Reload
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x12, x0, x10
	add x13, x0, x11
	call $__adddf3
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	jalr x0, LBB0_34 ( x0 )
LBB0_39:                                //  %if.end113
	addi x1, x4, 1
	sltiu x1, x1, 58
	sw x4, 40 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB0_41
LBB0_40:                                //  %if.then118
	add x10, x0, x7
	add x11, x0, x5
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	lw x13, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	add x8, x0, x0
	lui x11, 1072693248>>12 &0xfffff
	add x10, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 20
	add x11, x1, x11
	ori x28, x0, -1074790400 & 0xfff
	slli x28, x28, 20
	lui x1, -1074790400 >> 12 & 0xfffff
	jalr x0, LBB0_33 ( x0 )
LBB0_41:                                //  %if.end138
	addi x1, x0, 19
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	bgt x4, x1, LBB0_43
LBB0_42:                                //  %if.then141
	add x8, x0, x4
	add x10, x0, x7
	add x11, x0, x5
	add x12, x0, x3
	lw x13, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lui x4, 2097152>>12 &0xfffff
	srl x4, x4, x8
	lui x5, 1072693248>>12 &0xfffff
	sub x11, x5, x4
	add x10, x0, x0
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	jalr x0, LBB0_44 ( x0 )
LBB0_43:                                //  %if.else171
	addi x1, x0, 1023
	sub x1, x1, x4
	slli x11, x1, 20
	add x10, x0, x0
	add x12, x0, x7
	add x13, x0, x5
	add x8, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	lui x13, 1072693248>>12 &0xfffff
	add x12, x0, x0
	call $__adddf3
LBB0_44:                                //  %if.end204
	add x8, x0, x10
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 20
	add x1, x1, x11
LBB0_45:                                //  %cleanup205
	add x10, x0, x8
	add x11, x0, x1
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
LBB0_46:                                //  %if.then56
	ori x28, x0, -2013235812 & 0xfff
	slli x28, x28, 20
	lui x1, -2013235812 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 2117592124 & 0xfff
	slli x28, x28, 20
	lui x1, 2117592124 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x10, x0, x5
	lw x8, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	sw x5, 52 ( x2 )                //  4-byte Folded Spill
	call $__adddf3
	add x12, x0, x10
	add x13, x0, x11
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	jalr x0, LBB0_29 ( x0 )
$func_end0:
	.size	$expm1, ($func_end0)-($expm1)
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
