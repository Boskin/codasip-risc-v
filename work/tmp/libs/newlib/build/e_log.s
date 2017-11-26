	.text
	.file	"e_log.bc"
	.globl	$__ieee754_log
	.type	$__ieee754_log,@function
$__ieee754_log:                         //  @__ieee754_log
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
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
	add x8, x0, x11
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	lui x4, 1048575 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x4, x28
	ble x8, x1, LBB0_2
LBB0_1:
	add x1, x0, x0
	jalr x0, LBB0_7 ( x0 )
LBB0_2:                                 //  %if.then
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, -1048576 & 0xfff
	slli x28, x28, 20
	and x1, x1, x8
	or x1, x10, x1
	lui x3, -1048576 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x3, x28
	bgtu x1, x0, LBB0_4
LBB0_3:
	add x10, x0, x0
	jalr x0, LBB0_27 ( x0 )
LBB0_4:                                 //  %if.end
	bgez x8, LBB0_6
LBB0_5:                                 //  %if.then5
	add x11, x0, x8
	add x12, x0, x10
	add x13, x0, x8
	call $__subdf3
	add x12, x0, x0
	add x13, x0, x12
	call $__divdf3
	jalr x0, LBB0_27 ( x0 )
LBB0_6:                                 //  %if.end6
	add x12, x0, x0
	lui x13, 1129316352>>12 &0xfffff
	add x11, x0, x8
	add x8, x0, x4
	call $__muldf3
	add x4, x0, x8
	add x8, x0, x11
	addi x1, x0, -54
LBB0_7:                                 //  %if.end14
	lui x3, 2146435072>>12 &0xfffff
	bgt x3, x8, LBB0_9
LBB0_8:                                 //  %if.then16
	add x11, x0, x8
	add x12, x0, x10
	add x13, x0, x8
	call $__adddf3
	jalr x0, LBB0_27 ( x0 )
LBB0_9:                                 //  %if.end17
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	sw x4, 44 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 614244 & 0xfff
	slli x28, x28, 20
	lui x3, 614244 >> 12 & 0xfffff
	srli x28, x28, 20
	and x7, x4, x8
	or x3, x3, x28
	add x3, x3, x7
	lui x4, 1048576>>12 &0xfffff
	lui x5, 1072693248>>12 &0xfffff
	and x4, x4, x3
	sw x7, 28 ( x2 )                //  4-byte Folded Spill
	or x4, x7, x4
	xor x11, x5, x4
	srai x4, x8, 20
	add x1, x1, x4
	srli x3, x3, 20
	add x1, x3, x1
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, -1074790400 & 0xfff
	slli x28, x28, 20
	lui x1, -1074790400 >> 12 & 0xfffff
	srli x28, x28, 20
	add x12, x0, x0
	or x13, x1, x28
	call $__adddf3
	addi x1, x8, 2
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	and x1, x3, x1
	addi x3, x0, 2
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	nop
	addi x4, x4, -1023
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	sw x4, 44 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x0
	bgtu x1, x3, LBB0_18
LBB0_10:                                //  %if.then37
	add x8, x0, x10
	add x13, x0, x12
	call $__nedf2
	bgtu x10, x0, LBB0_14
LBB0_11:                                //  %if.then39
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x10, x0, LBB0_13
LBB0_12:
	add x11, x0, x0
	add x10, x0, x11
	jalr x0, LBB0_27 ( x0 )
LBB0_13:                                //  %if.else
	call $__floatsidf
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
	call $__muldf3
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	sw x11, 44 ( x2 )               //  4-byte Folded Spill
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
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	jalr x0, LBB0_27 ( x0 )
LBB0_14:                                //  %if.end45
	ori x28, x0, 1431655765 & 0xfff
	slli x28, x28, 20
	lui x1, 1431655765 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1076538027 & 0xfff
	slli x28, x28, 20
	lui x1, -1076538027 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x10, x0, x8
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x12, x0, x0
	lui x13, 1071644672>>12 &0xfffff
	call $__adddf3
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	sw x8, 48 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x8
	add x13, x0, x11
	call $__muldf3
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x10, x0, LBB0_17
LBB0_15:                                //  %if.then52
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
LBB0_16:                                //  %cleanup
	add x12, x0, x1
	add x13, x0, x3
	jalr x0, LBB0_26 ( x0 )
LBB0_17:                                //  %if.else54
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	sw x3, 28 ( x2 )                //  4-byte Folded Spill
	call $__floatsidf
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
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
	add x8, x0, x10
	call $__muldf3
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 897137782 & 0xfff
	slli x28, x28, 20
	lui x1, 897137782 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1108723217 & 0xfff
	slli x28, x28, 20
	lui x1, -1108723217 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x10, x0, x8
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	lw x13, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_16 ( x0 )
LBB0_18:                                //  %if.end61
	lui x13, 1073741824>>12 &0xfffff
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x10
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	add x13, x0, x11
	call $__muldf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x10
	add x13, x0, x11
	call $__muldf3
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
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
	add x8, x0, x11
	sw x8, 32 ( x2 )                //  4-byte Folded Spill
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
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
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
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	sw x11, 4 ( x2 )                //  4-byte Folded Spill
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
	add x10, x0, x8
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
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
	add x10, x0, x8
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
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
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
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
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	lw x11, 4 ( x2 )                //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 440401 & 0xfff
	slli x28, x28, 20
	lui x1, 440401 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, -398458 & 0xfff
	slli x28, x28, 20
	lui x3, -398458 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	lw x4, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x4
	add x3, x3, x4
	or x8, x1, x3
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $__floatsidf
	ble x8, x0, LBB0_22
LBB0_19:                                //  %if.then85
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x0
	lui x13, 1071644672>>12 &0xfffff
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x8, x0, x11
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	bgtu x1, x0, LBB0_21
LBB0_20:                                //  %if.then90
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	jalr x0, LBB0_15 ( x0 )
LBB0_21:                                //  %if.else95
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
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
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	lw x12, 44 ( x2 )               //  4-byte Folded Reload
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	jalr x0, LBB0_25 ( x0 )
LBB0_22:                                //  %if.else104
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x4, x0, LBB0_24
LBB0_23:                                //  %if.then107
	add x10, x0, x3
	add x8, x0, x1
	add x11, x0, x8
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	jalr x0, LBB0_16 ( x0 )
LBB0_24:                                //  %if.else111
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x3
	add x8, x0, x11
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x1
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 897137782 & 0xfff
	slli x28, x28, 20
	lui x1, 897137782 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1108723217 & 0xfff
	slli x28, x28, 20
	lui x1, -1108723217 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
LBB0_25:                                //  %cleanup
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	lw x13, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x8, x0, x10
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
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
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x12, x0, x8
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_26:                                //  %cleanup
	call $__subdf3
LBB0_27:                                //  %cleanup
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
$func_end0:
	.size	$__ieee754_log, ($func_end0)-($__ieee754_log)
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
