	.text
	.file	"s_tanh.bc"
	.globl	$tanh
	.type	$tanh,@function
$tanh:                                  //  @tanh
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi2:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x11
	add x4, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x8, x1, x3
	lui x1, 2146435072>>12 &0xfffff
	bgtu x1, x8, LBB0_6
LBB0_1:                                 //  %if.then
	add x10, x0, x0
	lui x11, 1072693248>>12 &0xfffff
	add x12, x0, x4
	add x13, x0, x3
	add x8, x0, x3
	call $__divdf3
	bgt x0, x8, LBB0_5
LBB0_2:                                 //  %if.then2
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
LBB0_3:                                 //  %cleanup
	call $__adddf3
LBB0_4:                                 //  %cleanup
	add x4, x0, x10
	add x8, x0, x11
	jalr x0, LBB0_17 ( x0 )
LBB0_5:                                 //  %if.else
	ori x28, x0, -1074790400 & 0xfff
	slli x28, x28, 20
	lui x1, -1074790400 >> 12 & 0xfffff
	srli x28, x28, 20
	add x12, x0, x0
	or x13, x1, x28
	jalr x0, LBB0_3 ( x0 )
LBB0_6:                                 //  %if.end
	ori x28, x0, 1077280767 & 0xfff
	slli x28, x28, 20
	lui x1, 1077280767 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	bgeu x1, x8, LBB0_8
LBB0_7:
	lui x8, 1072693248>>12 &0xfffff
	add x12, x0, x0
	jalr x0, LBB0_13 ( x0 )
LBB0_8:                                 //  %if.then5
	ori x28, x0, 1015021567 & 0xfff
	slli x28, x28, 20
	lui x1, 1015021567 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_10
LBB0_9:                                 //  %if.then7
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	add x10, x0, x4
	add x11, x0, x3
	add x8, x0, x4
	call $__adddf3
	add x12, x0, x8
	lw x13, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	jalr x0, LBB0_4 ( x0 )
LBB0_10:                                //  %if.end9
	add x10, x0, x4
	add x11, x0, x3
	call $fabs
	lui x1, 1072693248>>12 &0xfffff
	bgtu x1, x8, LBB0_12
LBB0_11:                                //  %if.then11
	add x12, x0, x10
	add x13, x0, x11
	call $__adddf3
	call $expm1
	add x8, x0, x0
	lui x13, 1073741824>>12 &0xfffff
	add x12, x0, x8
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lui x11, 1073741824>>12 &0xfffff
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	add x1, x0, x10
	add x3, x0, x11
	lui x11, 1072693248>>12 &0xfffff
	add x10, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	add x12, x0, x10
	add x8, x0, x11
	jalr x0, LBB0_13 ( x0 )
LBB0_12:                                //  %if.else17
	ori x28, x0, -1073741824 & 0xfff
	slli x28, x28, 20
	lui x1, -1073741824 >> 12 & 0xfffff
	srli x28, x28, 20
	add x12, x0, x0
	or x13, x1, x28
	call $__muldf3
	call $expm1
	add x8, x0, x10
	add x3, x0, x11
	sw x3, 4 ( x2 )                 //  4-byte Folded Spill
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x0
	add x12, x0, x8
	add x13, x0, x3
	call $__subdf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	lui x13, 1073741824>>12 &0xfffff
	add x10, x0, x8
	lw x11, 4 ( x2 )                //  4-byte Folded Reload
	add x12, x0, x0
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	add x8, x0, x11
	add x12, x0, x10
LBB0_13:                                //  %if.end26
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	add x10, x0, x0
	or x11, x1, x28
	sw x12, 12 ( x2 )               //  4-byte Folded Spill
	add x13, x0, x8
	call $__subdf3
	not x1, x0
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x3, x1, LBB0_15
LBB0_14:                                //  %if.end26
	add x8, x0, x11
LBB0_15:                                //  %if.end26
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
	bgt x3, x1, LBB0_17
LBB0_16:                                //  %if.end26
	add x4, x0, x10
LBB0_17:                                //  %cleanup
	add x10, x0, x4
	add x11, x0, x8
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi5:
	.cfi_adjust_cfa_offset -32
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$tanh, ($func_end0)-($tanh)
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
