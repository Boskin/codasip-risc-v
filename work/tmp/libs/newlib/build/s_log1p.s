	.text
	.file	"s_log1p.bc"
	.globl	$log1p
	.type	$log1p,@function
$log1p:                                 //  @log1p
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
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 1071284857 & 0xfff
	slli x28, x28, 20
	lui x3, 1071284857 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	bgt x11, x3, LBB0_9
LBB0_1:                                 //  %if.then
	and x8, x1, x11
	lui x1, 1072693248>>12 &0xfffff
	bgtu x1, x8, LBB0_4
LBB0_2:                                 //  %if.then2
	ori x28, x0, -1074790400 & 0xfff
	slli x28, x28, 20
	lui x1, -1074790400 >> 12 & 0xfffff
	srli x28, x28, 20
	add x12, x0, x0
	or x13, x1, x28
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	call $__eqdf2
	ori x28, x0, -1048576 & 0xfff
	slli x28, x28, 20
	lui x1, -1048576 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	add x1, x0, x0
	beqz x10, LBB0_43
LBB0_3:                                 //  %if.else
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x10
	add x13, x0, x11
	call $__subdf3
	add x12, x0, x10
	add x13, x0, x11
	call $__divdf3
	jalr x0, LBB0_12 ( x0 )
LBB0_4:                                 //  %if.end
	ori x28, x0, 1042284543 & 0xfff
	slli x28, x28, 20
	lui x1, 1042284543 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_13
LBB0_5:                                 //  %if.then7
	add x12, x0, x0
	lui x13, 1129316352>>12 &0xfffff
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	call $__adddf3
	add x12, x0, x0
	add x13, x0, x12
	call $__gtdf2
	ble x10, x0, LBB0_8
LBB0_6:                                 //  %if.then7
	lui x1, 1016070144>>12 &0xfffff
	bgeu x8, x1, LBB0_8
LBB0_7:
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_43 ( x0 )
LBB0_8:                                 //  %if.else11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x10
	add x13, x0, x8
	call $__muldf3
	ori x28, x0, -1075838976 & 0xfff
	slli x28, x28, 20
	lui x1, -1075838976 >> 12 & 0xfffff
	srli x28, x28, 20
	add x12, x0, x0
	or x13, x1, x28
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	jalr x0, LBB0_11 ( x0 )
LBB0_9:                                 //  %if.end19
	lui x1, 2146435072>>12 &0xfffff
	bgt x1, x11, LBB0_17
LBB0_10:                                //  %if.then21
	add x12, x0, x10
	add x13, x0, x11
LBB0_11:                                //  %cleanup
	call $__adddf3
LBB0_12:                                //  %cleanup
	add x1, x0, x10
	add x8, x0, x11
	jalr x0, LBB0_43 ( x0 )
LBB0_13:                                //  %if.end23
	ori x28, x0, 1076707644 & 0xfff
	slli x28, x28, 20
	lui x1, 1076707644 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 1076707645 & 0xfff
	slli x28, x28, 20
	lui x3, 1076707645 >> 12 & 0xfffff
	srli x28, x28, 20
	add x1, x1, x11
	or x3, x3, x28
	bgtu x3, x1, LBB0_18
LBB0_14:                                //  %if.end79.thread
	add x12, x0, x0
	lui x13, 1071644672>>12 &0xfffff
	add x8, x0, x10
	sw x12, 20 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	call $__muldf3
	add x12, x0, x8
	lw x13, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
                                        //  implicit-def: %rf_xpr_3
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
                                        //  implicit-def: %rf_xpr_3
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
LBB0_15:                                //  %if.end111
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x0
	lui x13, 1073741824>>12 &0xfffff
	add x10, x0, x8
	add x11, x0, x1
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	sw x8, 40 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x10
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	add x13, x0, x11
	call $__muldf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -549563836 & 0xfff
	slli x28, x28, 20
	lui x1, -549563836 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1069740306 & 0xfff
	slli x28, x28, 20
	lui x1, 1069740306 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x8, x0, x11
	call $__muldf3
	ori x28, x0, -797391201 & 0xfff
	slli x28, x28, 20
	lui x1, -797391201 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1069783561 & 0xfff
	slli x28, x28, 20
	lui x1, 1069783561 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1765080098 & 0xfff
	slli x28, x28, 20
	lui x1, -1765080098 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1070024292 & 0xfff
	slli x28, x28, 20
	lui x1, 1070024292 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 495876271 & 0xfff
	slli x28, x28, 20
	lui x1, 495876271 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1070363077 & 0xfff
	slli x28, x28, 20
	lui x1, 1070363077 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1809673383 & 0xfff
	slli x28, x28, 20
	lui x1, -1809673383 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1070745892 & 0xfff
	slli x28, x28, 20
	lui x1, 1070745892 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -1718093308 & 0xfff
	slli x28, x28, 20
	lui x1, -1718093308 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1071225241 & 0xfff
	slli x28, x28, 20
	lui x1, 1071225241 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1431655827 & 0xfff
	slli x28, x28, 20
	lui x1, 1431655827 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1071994197 & 0xfff
	slli x28, x28, 20
	lui x1, 1071994197 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x3, x0, x10
	add x1, x0, x11
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x8, x0, LBB0_42
LBB0_16:                                //  %if.then130
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x3
	add x13, x0, x1
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_40 ( x0 )
LBB0_17:                                //  %if.then25
	ori x28, x0, 1128267775 & 0xfff
	slli x28, x28, 20
	lui x1, 1128267775 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgt x11, x1, LBB0_27
LBB0_18:                                //  %if.then27
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	call $__adddf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	add x3, x0, x11
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	srai x1, x3, 20
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x0
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	lw x12, 40 ( x2 )               //  4-byte Folded Reload
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x8
	call $__subdf3
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	add x3, x0, x10
	add x1, x0, x11
	ori x28, x0, -1074790400 & 0xfff
	slli x28, x28, 20
	lui x4, -1074790400 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x7, x0, 1023
	or x4, x4, x28
	bgt x8, x7, LBB0_20
LBB0_19:                                //  %if.then27
	add x1, x0, x4
LBB0_20:                                //  %if.then27
	bgt x8, x7, LBB0_22
LBB0_21:                                //  %if.then27
	add x3, x0, x0
LBB0_22:                                //  %if.then27
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x3
	add x13, x0, x1
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	addi x5, x0, 1023
	bgt x8, x5, LBB0_24
LBB0_23:                                //  %if.then27
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sw x4, 20 ( x2 )                //  4-byte Folded Spill
LBB0_24:                                //  %if.then27
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	lui x11, 1072693248>>12 &0xfffff
	bgt x8, x5, LBB0_26
LBB0_25:                                //  %if.then27
	add x11, x0, x4
LBB0_26:                                //  %if.then27
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	lw x12, 32 ( x2 )               //  4-byte Folded Reload
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x13, x0, x8
	call $__divdf3
	add x5, x0, x10
	add x4, x0, x11
	lw x7, 28 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_28 ( x0 )
LBB0_27:                                //  %if.else43
	add x4, x0, x0
	srli x7, x11, 20
	add x5, x0, x4
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
LBB0_28:                                //  %if.end53
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	lui x1, 1048575 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 434333 & 0xfff
	slli x28, x28, 20
	lui x3, 434333 >> 12 & 0xfffff
	srli x28, x28, 20
	and x9, x1, x8
	or x1, x3, x28
	sw x4, 12 ( x2 )                //  4-byte Folded Spill
	sw x5, 8 ( x2 )                 //  4-byte Folded Spill
	bgtu x9, x1, LBB0_30
LBB0_29:                                //  %do.body57
	lui x1, 1072693248>>12 &0xfffff
	sw x9, 16 ( x2 )                //  4-byte Folded Spill
	or x11, x1, x9
	addi x1, x7, -1023
	jalr x0, LBB0_31 ( x0 )
LBB0_30:                                //  %if.else64
	lui x1, 1048576>>12 &0xfffff
	lui x3, 1071644672>>12 &0xfffff
	sub x1, x1, x9
	or x11, x3, x9
	srli x1, x1, 2
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	addi x1, x7, -1022
LBB0_31:                                //  %if.end79
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	ori x28, x0, -1074790400 & 0xfff
	slli x28, x28, 20
	lui x1, -1074790400 >> 12 & 0xfffff
	srli x28, x28, 20
	add x12, x0, x0
	or x13, x1, x28
	call $__adddf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	lui x13, 1071644672>>12 &0xfffff
	add x12, x0, x0
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	beqz x1, LBB0_33
LBB0_32:
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_15 ( x0 )
LBB0_33:                                //  %if.then83
	add x8, x0, x0
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	add x13, x0, x8
	call $__nedf2
	bgtu x10, x0, LBB0_37
LBB0_34:                                //  %if.then85
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x10, x0, LBB0_36
LBB0_35:
	add x1, x0, x8
	jalr x0, LBB0_43 ( x0 )
LBB0_36:                                //  %if.else88
	call $__floatsidf
	add x8, x0, x10
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 897137782 & 0xfff
	slli x28, x28, 20
	lui x1, 897137782 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1038760431 & 0xfff
	slli x28, x28, 20
	lui x1, 1038760431 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
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
	add x10, x0, x8
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_11 ( x0 )
LBB0_37:                                //  %if.end94
	ori x28, x0, 1431655765 & 0xfff
	slli x28, x28, 20
	lui x1, 1431655765 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1075489451 & 0xfff
	slli x28, x28, 20
	lui x1, -1075489451 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x3, x0, x10
	add x1, x0, x11
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x10, x0, LBB0_39
LBB0_38:                                //  %if.then100
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x3
	add x13, x0, x1
	call $__subdf3
	jalr x0, LBB0_12 ( x0 )
LBB0_39:                                //  %if.else102
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	sw x3, 28 ( x2 )                //  4-byte Folded Spill
	call $__floatsidf
	add x8, x0, x10
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
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
	call $__muldf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 897137782 & 0xfff
	slli x28, x28, 20
	lui x1, 897137782 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1038760431 & 0xfff
	slli x28, x28, 20
	lui x1, 1038760431 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x10, x0, x8
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	lw x12, 40 ( x2 )               //  4-byte Folded Reload
	lw x13, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
LBB0_40:                                //  %cleanup
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	jalr x0, LBB0_12 ( x0 )
LBB0_42:                                //  %if.else135
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x3
	add x13, x0, x1
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	sw x11, 4 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	call $__floatsidf
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 897137782 & 0xfff
	slli x28, x28, 20
	lui x1, 897137782 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1038760431 & 0xfff
	slli x28, x28, 20
	lui x1, 1038760431 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	lw x13, 4 ( x2 )                //  4-byte Folded Reload
	nop
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	lw x12, 40 ( x2 )               //  4-byte Folded Reload
	lw x13, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x8, x0, x10
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
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
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x12, x0, x8
	lw x13, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x8, x0, x11
	add x1, x0, x10
LBB0_43:                                //  %cleanup
	add x10, x0, x1
	add x11, x0, x8
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
	.size	$log1p, ($func_end0)-($log1p)
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
