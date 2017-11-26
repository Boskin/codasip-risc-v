	.text
	.file	"e_remainder.bc"
	.globl	$__ieee754_remainder
	.type	$__ieee754_remainder,@function
$__ieee754_remainder:                   //  @__ieee754_remainder
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
	add x8, x0, x12
	add x7, x0, x11
	add x9, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	and x5, x1, x13
	lui x3, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x8, x5
	or x12, x3, x28
	bgtu x4, x0, LBB0_2
LBB0_1:                                 //  %if.then
	add x10, x0, x9
	add x11, x0, x7
	add x12, x0, x8
	call $__muldf3
	add x12, x0, x10
	add x13, x0, x11
	call $__divdf3
	add x1, x0, x10
	jalr x0, LBB0_19 ( x0 )
LBB0_2:                                 //  %if.end
	ori x28, x0, 2146435071 & 0xfff
	slli x28, x28, 20
	lui x3, 2146435071 >> 12 & 0xfffff
	srli x28, x28, 20
	and x4, x1, x7
	or x1, x3, x28
	bgtu x4, x1, LBB0_1
LBB0_3:                                 //  %lor.lhs.false
	lui x1, 2146435072>>12 &0xfffff
	bgtu x1, x5, LBB0_5
LBB0_4:                                 //  %land.lhs.true
	ori x28, x0, -2146435072 & 0xfff
	slli x28, x28, 20
	lui x1, -2146435072 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x5
	or x1, x8, x1
	bgtu x1, x0, LBB0_1
	jalr x0, LBB0_6 ( x0 )
LBB0_5:                                 //  %if.end22
	ori x28, x0, 2145386495 & 0xfff
	slli x28, x28, 20
	lui x1, 2145386495 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgeu x1, x5, LBB0_7
LBB0_6:
	add x11, x0, x7
	add x10, x0, x9
	jalr x0, LBB0_8 ( x0 )
LBB0_7:                                 //  %if.then24
	add x10, x0, x8
	add x11, x0, x13
	sw x12, 8 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x8
	sw x13, 16 ( x2 )               //  4-byte Folded Spill
	sw x5, 12 ( x2 )                //  4-byte Folded Spill
	sw x7, 24 ( x2 )                //  4-byte Folded Spill
	sw x9, 20 ( x2 )                //  4-byte Folded Spill
	sw x4, 4 ( x2 )                 //  4-byte Folded Spill
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__ieee754_fmod
	lw x4, 4 ( x2 )                 //  4-byte Folded Reload
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	lw x9, 20 ( x2 )                //  4-byte Folded Reload
	lw x7, 24 ( x2 )                //  4-byte Folded Reload
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	lw x13, 16 ( x2 )               //  4-byte Folded Reload
LBB0_8:                                 //  %if.end25
	sub x1, x9, x8
	sub x3, x4, x5
	or x1, x1, x3
	bgtu x1, x0, LBB0_10
LBB0_9:                                 //  %if.then30
	add x12, x0, x0
	add x13, x0, x12
	call $__muldf3
	add x1, x0, x10
	jalr x0, LBB0_19 ( x0 )
LBB0_10:                                //  %if.end32
	and x1, x12, x7
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	sw x13, 16 ( x2 )               //  4-byte Folded Spill
	sw x5, 12 ( x2 )                //  4-byte Folded Spill
	call $fabs
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $fabs
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	ori x28, x0, 2097151 & 0xfff
	slli x28, x28, 20
	lui x1, 2097151 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x3, x1, LBB0_13
LBB0_11:                                //  %if.then36
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x10
	add x13, x0, x11
	call $__adddf3
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	call $__gtdf2
	ble x10, x0, LBB0_14
LBB0_12:                                //  %if.then39
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	call $__subdf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x8, 4 ( x2 )                 //  4-byte Folded Spill
	add x8, x0, x11
	add x12, x0, x10
	add x13, x0, x8
	call $__adddf3
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	lw x13, 4 ( x2 )                //  4-byte Folded Reload
	nop
	call $__gedf2
	add x11, x0, x8
	jalr x0, LBB0_16 ( x0 )
LBB0_13:                                //  %if.else
	add x12, x0, x0
	lui x13, 1071644672>>12 &0xfffff
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	sw x8, 4 ( x2 )                 //  4-byte Folded Spill
	add x11, x0, x8
	call $__muldf3
	add x8, x0, x10
	add x1, x0, x11
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x1
	call $__gtdf2
	bgt x10, x0, LBB0_15
LBB0_14:
	lw x8, 8 ( x2 )                 //  4-byte Folded Reload
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_18 ( x0 )
LBB0_15:                                //  %if.then49
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	lw x13, 4 ( x2 )                //  4-byte Folded Reload
	nop
	call $__subdf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x8
	lw x13, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__gedf2
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
LBB0_16:                                //  %if.then49
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	lw x8, 8 ( x2 )                 //  4-byte Folded Reload
	bgt x0, x10, LBB0_18
LBB0_17:                                //  %if.then52
	add x10, x0, x1
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	lw x13, 4 ( x2 )                //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x10
LBB0_18:                                //  %do.body57
	xor x11, x8, x11
LBB0_19:                                //  %cleanup
	add x10, x0, x1
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
	.size	$__ieee754_remainder, ($func_end0)-($__ieee754_remainder)
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
