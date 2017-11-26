	.text
	.file	"e_log10.bc"
	.globl	$__ieee754_log10
	.type	$__ieee754_log10,@function
$__ieee754_log10:                       //  @__ieee754_log10
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
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
	add x8, x0, x10
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	lui x4, 1048575 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x4, x28
	ble x11, x1, LBB0_2
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
	and x1, x1, x11
	or x3, x8, x1
	lui x1, -1048576 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x3, x0, LBB0_4
LBB0_3:
	add x10, x0, x0
	jalr x0, LBB0_12 ( x0 )
LBB0_4:                                 //  %if.end
	bgez x11, LBB0_6
LBB0_5:                                 //  %if.then5
	add x10, x0, x8
	add x12, x0, x8
	add x13, x0, x11
	call $__subdf3
	add x12, x0, x0
	add x13, x0, x12
	call $__divdf3
	jalr x0, LBB0_11 ( x0 )
LBB0_6:                                 //  %if.end6
	add x12, x0, x0
	lui x13, 1129316352>>12 &0xfffff
	add x10, x0, x8
	add x8, x0, x4
	call $__muldf3
	add x4, x0, x8
	add x8, x0, x10
	addi x1, x0, -54
LBB0_7:                                 //  %if.end14
	lui x3, 2146435072>>12 &0xfffff
	bgt x3, x11, LBB0_9
LBB0_8:                                 //  %if.then16
	add x10, x0, x8
	add x12, x0, x8
	add x13, x0, x11
	jalr x0, LBB0_10 ( x0 )
LBB0_9:                                 //  %if.end17
	srai x3, x11, 20
	add x1, x1, x3
	ori x28, x0, 1048575 & 0xfff
	addi x1, x1, -1023
	slli x28, x28, 20
	slt x3, x1, x0
	srli x28, x28, 20
	add x10, x1, x3
	or x1, x4, x28
	and x1, x1, x11
	slli x3, x3, 20
	or x1, x1, x3
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	call $__floatsidf
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 301017910 & 0xfff
	slli x28, x28, 20
	lui x1, 301017910 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1029308147 & 0xfff
	slli x28, x28, 20
	lui x1, 1029308147 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__muldf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	lui x1, 1072693248>>12 &0xfffff
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	xor x11, x1, x3
	add x10, x0, x8
	call $__ieee754_log
	ori x28, x0, 354870542 & 0xfff
	slli x28, x28, 20
	lui x1, 354870542 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1071369083 & 0xfff
	slli x28, x28, 20
	lui x1, 1071369083 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x8, x0, x10
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1070810131 & 0xfff
	slli x28, x28, 20
	lui x1, 1070810131 >> 12 & 0xfffff
	srli x28, x28, 20
	lui x12, 1352622080>>12 &0xfffff
	or x13, x1, x28
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x12, x0, x8
	lw x13, 16 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_10:                                //  %cleanup
	call $__adddf3
LBB0_11:                                //  %cleanup
	add x1, x0, x11
LBB0_12:                                //  %cleanup
	add x11, x0, x1
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
	.size	$__ieee754_log10, ($func_end0)-($__ieee754_log10)
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
