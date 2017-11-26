	.text
	.file	"cproj.bc"
	.globl	$cproj
	.type	$cproj,@function
$cproj:                                 //  @cproj
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retstruct_reg 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -128
$cfi2:
	.cfi_adjust_cfa_offset 128
	sw x1, 124 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 116 ( x2 )               //  4-byte Folded Spill
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	lw x3, 12 ( x11 )
	lw x4, 8 ( x11 )
	lw x8, 0 ( x11 )
	lw x5, 4 ( x11 )
	addi x1, x2, 100
	sw x4, 12 ( x2 )                //  4-byte Folded Spill
	sw x4, 8 ( x1 )
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	sw x3, 112 ( x2 )
	sw x5, 8 ( x2 )                 //  4-byte Folded Spill
	sw x5, 4 ( x1 )
	sw x8, 100 ( x2 )
	lw x3, 8 ( x1 )
	addi x10, x2, 52
	sw x3, 8 ( x10 )
	lw x1, 4 ( x1 )
	nop
	sw x1, 4 ( x10 )
	lw x1, 112 ( x2 )
	nop
	sw x1, 64 ( x2 )
	lw x1, 100 ( x2 )
	nop
	sw x1, 52 ( x2 )
	call $creal
	call $__fpclassifyd
	xori x1, x10, 1
	beqz x1, LBB0_3
LBB0_1:                                 //  %lor.lhs.false
	addi x1, x2, 84
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x3, 4 ( x1 )
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 8 ( x1 )
	sw x8, 84 ( x2 )
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 96 ( x2 )
	lw x3, 8 ( x1 )
	addi x10, x2, 36
	sw x3, 8 ( x10 )
	lw x1, 4 ( x1 )
	nop
	sw x1, 4 ( x10 )
	lw x1, 96 ( x2 )
	nop
	sw x1, 48 ( x2 )
	lw x1, 84 ( x2 )
	nop
	sw x1, 36 ( x2 )
	call $cimag
	call $__fpclassifyd
	xori x1, x10, 1
	beqz x1, LBB0_3
LBB0_2:
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	jalr x0, LBB0_4 ( x0 )
LBB0_3:                                 //  %if.then
	addi x1, x2, 68
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x3, 4 ( x1 )
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 8 ( x1 )
	sw x8, 68 ( x2 )
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 80 ( x2 )
	lw x3, 8 ( x1 )
	addi x10, x2, 20
	sw x3, 8 ( x10 )
	lw x1, 4 ( x1 )
	nop
	sw x1, 4 ( x10 )
	lw x1, 80 ( x2 )
	nop
	sw x1, 32 ( x2 )
	lw x1, 68 ( x2 )
	nop
	sw x1, 20 ( x2 )
	call $cimag
	add x1, x0, x10
	add x3, x0, x11
	add x8, x0, x0
	add x10, x0, x8
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $copysign
	lui x3, 2146435072>>12 &0xfffff
LBB0_4:                                 //  %if.end
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x8, 0 ( x1 )
	sw x11, 12 ( x1 )
	sw x3, 4 ( x1 )
	sw x10, 8 ( x1 )
	lw x8, 116 ( x2 )               //  4-byte Folded Reload
	lw x1, 124 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 128
$cfi5:
	.cfi_adjust_cfa_offset -128
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$cproj, ($func_end0)-($cproj)
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
