	.text
	.file	"s_cbrt.bc"
	.globl	$cbrt
	.type	$cbrt,@function
$cbrt:                                  //  @cbrt
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -48
$cfi2:
	.cfi_adjust_cfa_offset 48
	sw x1, 44 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x3, x1, x11
	xor x4, x11, x3
	lui x1, 2146435072>>12 &0xfffff
	bgt x1, x4, LBB0_2
LBB0_1:                                 //  %if.then
	add x10, x0, x8
	add x12, x0, x8
	add x13, x0, x11
	call $__adddf3
	add x8, x0, x10
	jalr x0, LBB0_7 ( x0 )
LBB0_2:                                 //  %do.body1
	or x1, x8, x4
	beqz x1, LBB0_7
LBB0_3:                                 //  %do.body9
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	lui x1, 1048575 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x4, 28 ( x2 )                //  4-byte Folded Spill
	bgt x4, x1, LBB0_5
LBB0_4:                                 //  %do.body18
	add x12, x0, x0
	lui x13, 1129316352>>12 &0xfffff
	add x10, x0, x8
	add x11, x0, x4
	call $__muldf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	addi x1, x0, 3
	add x10, x0, x11
	add x11, x0, x1
	call $__udivsi3
	ori x28, x0, 696219795 & 0xfff
	slli x28, x28, 20
	lui x1, 696219795 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	add x3, x1, x10
	jalr x0, LBB0_6 ( x0 )
LBB0_5:                                 //  %do.body42
	addi x11, x0, 3
	add x10, x0, x4
	call $__udivsi3
	ori x28, x0, 715094163 & 0xfff
	slli x28, x28, 20
	lui x1, 715094163 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	add x3, x1, x10
	add x1, x0, x0
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
LBB0_6:                                 //  %if.end52
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x3
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x10
	add x13, x0, x11
	call $__muldf3
	add x12, x0, x8
	lw x13, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -245426703 & 0xfff
	slli x28, x28, 20
	lui x1, -245426703 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1071734549 & 0xfff
	slli x28, x28, 20
	lui x1, 1071734549 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	sw x11, 4 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 245426703 & 0xfff
	slli x28, x28, 20
	lui x1, 245426703 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1073127658 & 0xfff
	slli x28, x28, 20
	lui x1, 1073127658 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 624085044 & 0xfff
	slli x28, x28, 20
	lui x1, 624085044 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	ori x28, x0, -1075408418 & 0xfff
	slli x28, x28, 20
	lui x1, -1075408418 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x12, x0, x8
	lw x13, 4 ( x2 )                //  4-byte Folded Reload
	nop
	call $__divdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	ori x28, x0, 1840700270 & 0xfff
	slli x28, x28, 20
	lui x4, 1840700270 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x4, x28
	ori x28, x0, 1073329883 & 0xfff
	slli x28, x28, 20
	lui x4, 1073329883 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x4, x28
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	ori x28, x0, -1227133513 & 0xfff
	slli x28, x28, 20
	lui x1, -1227133513 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1071045485 & 0xfff
	slli x28, x28, 20
	lui x1, 1071045485 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	addi x8, x11, 1
	add x10, x0, x0
	add x11, x0, x8
	add x12, x0, x10
	add x13, x0, x8
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x0
	add x13, x0, x8
	call $__subdf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x0
	add x11, x0, x8
	add x12, x0, x10
	add x13, x0, x8
	call $__adddf3
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	lw x13, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x0
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x0
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x8, x0, x10
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	or x11, x1, x11
LBB0_7:                                 //  %cleanup
	add x10, x0, x8
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	lw x1, 44 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 48
$cfi5:
	.cfi_adjust_cfa_offset -48
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$cbrt, ($func_end0)-($cbrt)
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
