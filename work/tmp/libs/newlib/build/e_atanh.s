	.text
	.file	"e_atanh.bc"
	.globl	$__ieee754_atanh
	.type	$__ieee754_atanh,@function
$__ieee754_atanh:                       //  @__ieee754_atanh
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11, 10, 11
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
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 1072693249 & 0xfff
	sub x3, x0, x8
	slli x28, x28, 20
	or x3, x3, x8
	and x4, x1, x11
	slt x1, x3, x0
	lui x3, 1072693249 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x4
	or x3, x3, x28
	bgtu x3, x1, LBB0_2
LBB0_1:                                 //  %if.then
	add x10, x0, x8
	add x12, x0, x8
	add x13, x0, x11
	call $__subdf3
	add x12, x0, x10
	add x13, x0, x11
	jalr x0, LBB0_4 ( x0 )
LBB0_2:                                 //  %if.end
	lui x1, 1072693248>>12 &0xfffff
	bne x4, x1, LBB0_6
LBB0_3:                                 //  %if.then6
	add x12, x0, x0
	add x10, x0, x8
	add x13, x0, x12
LBB0_4:                                 //  %cleanup
	call $__divdf3
	add x8, x0, x10
LBB0_5:                                 //  %cleanup
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
LBB0_6:                                 //  %if.end8
	ori x28, x0, -2013235812 & 0xfff
	slli x28, x28, 20
	lui x1, -2013235812 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 2117592124 & 0xfff
	slli x28, x28, 20
	lui x1, 2117592124 >> 12 & 0xfffff
	srli x28, x28, 20
	sw x4, 24 ( x2 )                //  4-byte Folded Spill
	or x13, x1, x28
	add x10, x0, x8
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	call $__adddf3
	add x12, x0, x0
	add x13, x0, x12
	call $__gtdf2
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	ble x10, x0, LBB0_8
LBB0_7:                                 //  %if.end8
	lui x1, 1043333120>>12 &0xfffff
	bgtu x1, x3, LBB0_5
LBB0_8:                                 //  %do.body13
	add x10, x0, x8
	add x11, x0, x3
	add x12, x0, x8
	lw x13, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	add x5, x0, x10
	add x4, x0, x11
	ori x28, x0, 1071644671 & 0xfff
	slli x28, x28, 20
	lui x1, 1071644671 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	bgtu x3, x1, LBB0_10
LBB0_9:                                 //  %if.then21
	add x10, x0, x8
	add x11, x0, x3
	add x12, x0, x5
	add x13, x0, x4
	sw x5, 12 ( x2 )                //  4-byte Folded Spill
	call $__muldf3
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	sw x11, 4 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x0
	lui x11, 1072693248>>12 &0xfffff
	add x12, x0, x8
	lw x13, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	lw x11, 4 ( x2 )                //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	jalr x0, LBB0_11 ( x0 )
LBB0_10:                                //  %if.else
	add x10, x0, x0
	lui x11, 1072693248>>12 &0xfffff
	add x12, x0, x8
	add x13, x0, x3
	add x8, x0, x5
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
LBB0_11:                                //  %if.end32
	call $log1p
	add x12, x0, x0
	lui x13, 1071644672>>12 &0xfffff
	call $__muldf3
	add x8, x0, x10
	add x3, x0, x11
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x0
	add x12, x0, x8
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x3
	call $__subdf3
	not x1, x0
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x3, x1, LBB0_13
LBB0_12:                                //  %if.end32
	add x8, x0, x10
LBB0_13:                                //  %if.end32
	lw x4, 24 ( x2 )                //  4-byte Folded Reload
	bgt x3, x1, LBB0_15
LBB0_14:                                //  %if.end32
	add x4, x0, x11
LBB0_15:                                //  %if.end32
	add x10, x0, x8
	add x11, x0, x4
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi7:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi8:
	.cfi_adjust_cfa_offset -40
$cfi9:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__ieee754_atanh, ($func_end0)-($__ieee754_atanh)
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
