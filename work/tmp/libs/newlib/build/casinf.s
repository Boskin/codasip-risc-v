	.text
	.file	"casinf.bc"
	.globl	$casinf
	.type	$casinf,@function
$casinf:                                //  @casinf
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retstruct_reg 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -176
$cfi2:
	.cfi_adjust_cfa_offset 176
	sw x1, 172 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 164 ( x2 )               //  4-byte Folded Spill
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	lw x8, 4 ( x11 )
	lw x1, 0 ( x11 )
	nop
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	sw x8, 160 ( x2 )
	sw x1, 156 ( x2 )
	sw x1, 76 ( x2 )
	sw x8, 80 ( x2 )
	addi x10, x2, 76
	call $crealf
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 148 ( x2 )
	sw x8, 152 ( x2 )
	sw x8, 72 ( x2 )
	lw x1, 148 ( x2 )
	nop
	sw x1, 68 ( x2 )
	addi x10, x2, 68
	call $cimagf
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x0
	call $__mulsf3
	add x1, x0, x10
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	add x8, x0, x10
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__addsf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x10
	call $__unordsf2
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	sw x8, 8 ( x2 )                 //  4-byte Folded Spill
	add x10, x0, x8
	add x11, x0, x0
	call $__mulsf3
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	beqz x1, LBB0_3
LBB0_1:                                 //  %entry
	add x11, x0, x10
	call $__unordsf2
	beqz x10, LBB0_3
LBB0_2:                                 //  %complex_mul_libcall
	addi x10, x2, 140
	add x13, x0, x0
	lui x14, 1065353216>>12 &0xfffff
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	lw x12, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsc3
	lw x1, 144 ( x2 )
	nop
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	lw x1, 140 ( x2 )
	nop
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
LBB0_3:                                 //  %complex_mul_cont
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	add x1, x0, x10
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	add x11, x0, x8
	call $__addsf3
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x8, x0, x10
	add x11, x0, x0
	call $__mulsf3
	add x1, x0, x10
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	sw x10, 132 ( x2 )
	sw x8, 136 ( x2 )
	lw x1, 132 ( x2 )
	nop
	sw x1, 60 ( x2 )
	sw x8, 64 ( x2 )
	addi x10, x2, 60
	call $crealf
	add x1, x0, x10
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 124 ( x2 )
	sw x8, 128 ( x2 )
	sw x8, 56 ( x2 )
	lw x3, 124 ( x2 )
	nop
	sw x3, 52 ( x2 )
	lui x10, 1065353216>>12 &0xfffff
	add x11, x0, x1
	call $__subsf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	addi x10, x2, 52
	call $cimagf
	add x8, x0, x10
	add x11, x0, x0
	call $__mulsf3
	add x1, x0, x10
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__subsf3
	sw x10, 108 ( x2 )
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x8
	call $__subsf3
	sw x10, 112 ( x2 )
	sw x10, 48 ( x2 )
	lw x1, 108 ( x2 )
	nop
	sw x1, 44 ( x2 )
	addi x10, x2, 116
	addi x11, x2, 44
	call $csqrtf
	lw x11, 116 ( x2 )
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	lw x11, 120 ( x2 )
	sw x10, 92 ( x2 )
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	sw x10, 96 ( x2 )
	sw x10, 40 ( x2 )
	lw x1, 92 ( x2 )
	nop
	sw x1, 36 ( x2 )
	addi x10, x2, 100
	addi x11, x2, 36
	call $clogf
	lw x10, 104 ( x2 )
	nop
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	lw x8, 100 ( x2 )
	nop
	add x11, x0, x8
	call $__subsf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	add x11, x0, x0
	call $__mulsf3
	add x1, x0, x10
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__subsf3
	add x8, x0, x10
	add x11, x0, x8
	call $__unordsf2
	beqz x10, LBB0_6
LBB0_4:                                 //  %complex_mul_cont
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	nop
	add x11, x0, x10
	call $__unordsf2
	beqz x10, LBB0_6
LBB0_5:                                 //  %complex_mul_libcall65
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	or x13, x1, x28
	ori x28, x0, -1082130432 & 0xfff
	slli x28, x28, 20
	lui x1, -1082130432 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x10, x2, 84
	or x14, x1, x28
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	lw x12, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsc3
	lw x1, 88 ( x2 )
	nop
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	lw x8, 84 ( x2 )
LBB0_6:                                 //  %complex_mul_cont67
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x8, 0 ( x1 )
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 4 ( x1 )
	lw x8, 164 ( x2 )               //  4-byte Folded Reload
	lw x1, 172 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 176
$cfi5:
	.cfi_adjust_cfa_offset -176
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$casinf, ($func_end0)-($casinf)
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
