	.text
	.file	"csqrt.bc"
	.globl	$csqrt
	.type	$csqrt,@function
$csqrt:                                 //  @csqrt
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retstruct_reg 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -168
$cfi2:
	.cfi_adjust_cfa_offset 168
	sw x1, 164 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 156 ( x2 )               //  4-byte Folded Spill
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	lw x3, 12 ( x11 )
	nop
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	lw x4, 8 ( x11 )
	nop
	sw x4, 40 ( x2 )                //  4-byte Folded Spill
	lw x5, 0 ( x11 )
	nop
	sw x5, 36 ( x2 )                //  4-byte Folded Spill
	lw x8, 4 ( x11 )
	addi x1, x2, 140
	sw x4, 8 ( x1 )
	sw x3, 152 ( x2 )
	sw x8, 4 ( x1 )
	sw x5, 140 ( x2 )
	lw x3, 8 ( x1 )
	addi x10, x2, 92
	sw x3, 8 ( x10 )
	lw x1, 4 ( x1 )
	nop
	sw x1, 4 ( x10 )
	lw x1, 152 ( x2 )
	nop
	sw x1, 104 ( x2 )
	lw x1, 140 ( x2 )
	nop
	sw x1, 92 ( x2 )
	call $creal
	sw x10, 56 ( x2 )               //  4-byte Folded Spill
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	addi x1, x2, 124
	sw x8, 4 ( x1 )
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 8 ( x1 )
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 124 ( x2 )
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 136 ( x2 )
	lw x3, 8 ( x1 )
	addi x10, x2, 76
	sw x3, 8 ( x10 )
	lw x1, 4 ( x1 )
	nop
	sw x1, 4 ( x10 )
	lw x1, 136 ( x2 )
	nop
	sw x1, 88 ( x2 )
	lw x1, 124 ( x2 )
	nop
	sw x1, 76 ( x2 )
	call $cimag
	add x8, x0, x0
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x8
	add x13, x0, x8
	call $__nedf2
	bgtu x10, x0, LBB0_13
LBB0_1:                                 //  %if.then
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	add x13, x0, x8
	call $__eqdf2
	bgtu x10, x0, LBB0_3
LBB0_2:
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_12 ( x0 )
LBB0_3:                                 //  %if.else
	add x12, x0, x0
	lw x8, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x12
	call $__ltdf2
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	nop
	call $fabs
	call $sqrt
	lw x5, 36 ( x2 )                //  4-byte Folded Reload
	add x4, x0, x0
	add x1, x0, x11
	bgt x4, x5, LBB0_5
LBB0_4:                                 //  %if.else
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
LBB0_5:                                 //  %if.else
	add x3, x0, x10
	bgt x4, x5, LBB0_7
LBB0_6:                                 //  %if.else
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
LBB0_7:                                 //  %if.else
	add x8, x0, x4
	bgt x4, x5, LBB0_9
LBB0_8:                                 //  %if.else
	add x8, x0, x11
LBB0_9:                                 //  %if.else
	bgt x4, x5, LBB0_11
LBB0_10:                                //  %if.else
	add x4, x0, x10
LBB0_11:                                //  %if.else
	sw x4, 36 ( x2 )                //  4-byte Folded Spill
LBB0_12:                                //  %if.end24
	sw x3, 52 ( x2 )                //  4-byte Folded Spill
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x0
	add x10, x0, x3
	add x11, x0, x1
	add x13, x0, x12
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	lw x4, 52 ( x2 )                //  4-byte Folded Reload
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	add x8, x0, x11
	jalr x0, LBB0_39 ( x0 )
LBB0_13:                                //  %if.end27
	add x12, x0, x0
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x13, x0, x12
	call $__nedf2
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_23
LBB0_14:                                //  %if.then29
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x1, x0, x0
	add x12, x0, x1
	add x13, x0, x12
	call $__gtdf2
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $fabs
	lui x13, 1071644672>>12 &0xfffff
	add x8, x0, x0
	add x12, x0, x8
	call $__muldf3
	call $sqrt
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	sw x11, 56 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x8
	add x13, x0, x8
	call $__muldf3
	add x8, x0, x10
	add x3, x0, x11
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x0
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x8
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x3
	call $__subdf3
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	add x1, x0, x0
	bgt x3, x1, LBB0_16
LBB0_15:                                //  %if.then29
	add x8, x0, x10
LBB0_16:                                //  %if.then29
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	bgt x3, x1, LBB0_18
LBB0_17:                                //  %if.then29
	add x13, x0, x11
LBB0_18:                                //  %if.then29
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	call $__adddf3
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	add x1, x0, x0
	add x10, x0, x1
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	lw x13, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x0
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x3, x1, LBB0_20
LBB0_19:                                //  %if.then29
	sw x11, 56 ( x2 )               //  4-byte Folded Spill
LBB0_20:                                //  %if.then29
	lw x4, 52 ( x2 )                //  4-byte Folded Reload
	bgt x3, x1, LBB0_22
LBB0_21:                                //  %if.then29
	add x4, x0, x10
LBB0_22:                                //  %if.then29
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_38 ( x0 )
LBB0_23:                                //  %if.end51
	add x10, x0, x1
	add x11, x0, x8
	call $fabs
	add x8, x0, x0
	lui x13, 1074790400>>12 &0xfffff
	add x12, x0, x8
	call $__gtdf2
	bgt x10, x0, LBB0_26
LBB0_24:                                //  %lor.lhs.false
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $fabs
	lui x13, 1074790400>>12 &0xfffff
	add x12, x0, x8
	call $__gtdf2
	bgt x10, x0, LBB0_26
LBB0_25:
	lui x1, 1044381696>>12 &0xfffff
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	lui x1, 1129316352>>12 &0xfffff
	jalr x0, LBB0_27 ( x0 )
LBB0_26:                                //  %if.then56
	add x8, x0, x0
	lui x1, 1073741824>>12 &0xfffff
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	lui x1, 1070596096>>12 &0xfffff
LBB0_27:                                //  %if.end62
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	add x13, x0, x1
	sw x13, 24 ( x2 )               //  4-byte Folded Spill
	call $__muldf3
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x8
	lw x13, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x8, x0, x10
	sw x11, 56 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x0
	add x13, x0, x12
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	addi x1, x2, 108
	sw x11, 4 ( x1 )
	sw x8, 48 ( x2 )                //  4-byte Folded Spill
	sw x8, 8 ( x1 )
	sw x10, 108 ( x2 )
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 120 ( x2 )
	lw x3, 8 ( x1 )
	addi x4, x2, 60
	sw x3, 8 ( x4 )
	lw x1, 4 ( x1 )
	nop
	sw x1, 4 ( x4 )
	lw x1, 120 ( x2 )
	nop
	sw x1, 72 ( x2 )
	lw x1, 108 ( x2 )
	nop
	sw x1, 60 ( x2 )
	lui x13, 1071644672>>12 &0xfffff
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	call $__muldf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	add x13, x0, x12
	add x8, x0, x12
	call $__gtdf2
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	addi x10, x2, 60
	call $cabs
	add x12, x0, x8
	lui x13, 1071644672>>12 &0xfffff
	call $__muldf3
	add x3, x0, x10
	add x1, x0, x11
	lw x4, 52 ( x2 )                //  4-byte Folded Reload
	nop
	ble x4, x0, LBB0_29
LBB0_28:                                //  %if.then75
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x3
	add x13, x0, x1
	call $__adddf3
	call $sqrt
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	add x12, x0, x0
	lui x13, 1071644672>>12 &0xfffff
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x8
	call $__divdf3
	call $fabs
	add x12, x0, x10
	add x13, x0, x11
	jalr x0, LBB0_30 ( x0 )
LBB0_29:                                //  %if.else83
	add x10, x0, x3
	add x11, x0, x1
	lw x12, 24 ( x2 )               //  4-byte Folded Reload
	lw x13, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	call $sqrt
	add x8, x0, x10
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x0
	lui x13, 1071644672>>12 &0xfffff
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x12, x0, x8
	lw x13, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divdf3
	call $fabs
	add x12, x0, x8
	lw x13, 40 ( x2 )               //  4-byte Folded Reload
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
LBB0_30:                                //  %if.end92
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x0
	add x12, x0, x8
	add x13, x0, x8
	call $__muldf3
	add x4, x0, x10
	add x3, x0, x11
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	sw x4, 4 ( x2 )                 //  4-byte Folded Spill
	add x12, x0, x4
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	add x13, x0, x3
	call $__subdf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	add x13, x0, x8
	call $__ltdf2
	add x8, x0, x10
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	lw x13, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x1, x0, x0
	bgt x1, x8, LBB0_32
LBB0_31:                                //  %if.end92
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
LBB0_32:                                //  %if.end92
	add x1, x0, x0
	sw x8, 56 ( x2 )                //  4-byte Folded Spill
	lw x13, 12 ( x2 )               //  4-byte Folded Reload
	bgt x1, x8, LBB0_34
LBB0_33:                                //  %if.end92
	lw x13, 8 ( x2 )                //  4-byte Folded Reload
LBB0_34:                                //  %if.end92
	lw x12, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	add x1, x0, x0
	add x10, x0, x1
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	lw x12, 40 ( x2 )               //  4-byte Folded Reload
	lw x13, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x4, x0, x10
	add x3, x0, x11
	lw x5, 56 ( x2 )                //  4-byte Folded Reload
	add x1, x0, x0
	bgt x1, x5, LBB0_36
LBB0_35:                                //  %if.end92
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
LBB0_36:                                //  %if.end92
	add x1, x0, x0
	bgt x1, x5, LBB0_38
LBB0_37:                                //  %if.end92
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
LBB0_38:                                //  %if.end92
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
LBB0_39:                                //  %cleanup
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 0 ( x1 )
	sw x3, 12 ( x1 )
	sw x8, 4 ( x1 )
	sw x4, 8 ( x1 )
	lw x8, 156 ( x2 )               //  4-byte Folded Reload
	lw x1, 164 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 168
$cfi5:
	.cfi_adjust_cfa_offset -168
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$csqrt, ($func_end0)-($csqrt)
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
