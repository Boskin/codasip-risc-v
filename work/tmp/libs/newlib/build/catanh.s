	.text
	.file	"catanh.bc"
	.globl	$catanh
	.type	$catanh,@function
$catanh:                                //  @catanh
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retstruct_reg 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -136
$cfi2:
	.cfi_adjust_cfa_offset 136
	sw x1, 132 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 124 ( x2 )               //  4-byte Folded Spill
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	lw x10, 8 ( x8 )
	nop
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	lw x11, 12 ( x8 )
	nop
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x0
	add x13, x0, x12
	call $__muldf3
	lw x1, 0 ( x8 )
	nop
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	lw x8, 4 ( x8 )
	add x12, x0, x10
	add x13, x0, x11
	add x10, x0, x1
	add x11, x0, x8
	call $__adddf3
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	add x12, x0, x0
	add x13, x0, x12
	call $__muldf3
	lw x12, 28 ( x2 )               //  4-byte Folded Reload
	lw x13, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x8, x0, x11
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x10
	add x13, x0, x8
	call $__unorddf2
	beqz x10, LBB0_3
LBB0_1:                                 //  %entry
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x10
	add x13, x0, x11
	call $__unorddf2
	beqz x10, LBB0_3
LBB0_2:                                 //  %complex_mul_libcall
	add x15, x0, x0
	addi x8, x2, 108
	lui x1, 1072693248>>12 &0xfffff
	sw x1, 0 ( x2 )
	add x10, x0, x8
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	lw x13, 28 ( x2 )               //  4-byte Folded Reload
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	add x16, x0, x15
	add x17, x0, x15
	call $__muldc3
	lw x1, 120 ( x2 )
	nop
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	lw x1, 8 ( x8 )
	nop
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	lw x8, 4 ( x8 )
	lw x1, 108 ( x2 )
	nop
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
LBB0_3:                                 //  %complex_mul_cont
	addi x1, x2, 76
	sw x8, 4 ( x1 )
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 8 ( x1 )
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 76 ( x2 )
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 88 ( x2 )
	lw x3, 8 ( x1 )
	addi x11, x2, 44
	sw x3, 8 ( x11 )
	lw x1, 4 ( x1 )
	nop
	sw x1, 4 ( x11 )
	lw x1, 88 ( x2 )
	nop
	sw x1, 56 ( x2 )
	lw x1, 76 ( x2 )
	nop
	sw x1, 44 ( x2 )
	addi x8, x2, 92
	add x10, x0, x8
	call $catan
	ori x28, x0, -2147483648 & 0xfff
	lw x10, 8 ( x8 )
	nop
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	lw x11, 104 ( x2 )
	nop
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	add x12, x0, x0
	or x13, x1, x28
	sw x13, 16 ( x2 )               //  4-byte Folded Spill
	call $__muldf3
	lw x13, 4 ( x8 )
	nop
	sw x13, 20 ( x2 )               //  4-byte Folded Spill
	lw x8, 92 ( x2 )
	nop
	add x12, x0, x8
	call $__subdf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	lw x13, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x8, x0, x10
	add x12, x0, x8
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	add x13, x0, x11
	call $__unorddf2
	beqz x10, LBB0_6
LBB0_4:                                 //  %complex_mul_cont
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x10
	add x13, x0, x11
	call $__unorddf2
	beqz x10, LBB0_6
LBB0_5:                                 //  %complex_mul_libcall13
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	or x12, x1, x28
	ori x28, x0, -1074790400 & 0xfff
	slli x28, x28, 20
	lui x1, -1074790400 >> 12 & 0xfffff
	srli x28, x28, 20
	add x11, x0, x0
	addi x8, x2, 60
	or x14, x1, x28
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x2 )
	add x10, x0, x8
	add x13, x0, x11
	lw x15, 12 ( x2 )               //  4-byte Folded Reload
	lw x16, 20 ( x2 )               //  4-byte Folded Reload
	lw x17, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldc3
	lw x1, 72 ( x2 )
	nop
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	lw x1, 8 ( x8 )
	nop
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	lw x1, 4 ( x8 )
	nop
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	lw x8, 60 ( x2 )
LBB0_6:                                 //  %complex_mul_cont15
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x8, 0 ( x1 )
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 12 ( x1 )
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 4 ( x1 )
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 8 ( x1 )
	lw x8, 124 ( x2 )               //  4-byte Folded Reload
	lw x1, 132 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 136
$cfi5:
	.cfi_adjust_cfa_offset -136
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$catanh, ($func_end0)-($catanh)
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
