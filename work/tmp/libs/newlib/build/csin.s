	.text
	.file	"csin.bc"
	.globl	$csin
	.type	$csin,@function
$csin:                                  //  @csin
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retstruct_reg 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -152
$cfi2:
	.cfi_adjust_cfa_offset 152
	sw x1, 148 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 140 ( x2 )               //  4-byte Folded Spill
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	lw x3, 12 ( x11 )
	nop
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	lw x4, 8 ( x11 )
	nop
	sw x4, 8 ( x2 )                 //  4-byte Folded Spill
	lw x5, 0 ( x11 )
	nop
	sw x5, 16 ( x2 )                //  4-byte Folded Spill
	lw x7, 4 ( x11 )
	addi x1, x2, 104
	sw x4, 8 ( x1 )
	sw x3, 116 ( x2 )
	sw x7, 4 ( x1 )
	add x8, x0, x7
	sw x8, 4 ( x2 )                 //  4-byte Folded Spill
	sw x5, 104 ( x2 )
	lw x3, 8 ( x1 )
	addi x10, x2, 56
	sw x3, 8 ( x10 )
	lw x1, 4 ( x1 )
	nop
	sw x1, 4 ( x10 )
	lw x1, 116 ( x2 )
	nop
	sw x1, 68 ( x2 )
	lw x1, 104 ( x2 )
	nop
	sw x1, 56 ( x2 )
	call $cimag
	addi x12, x2, 128
	addi x13, x2, 120
	call $_cchsh
	addi x1, x2, 88
	sw x8, 4 ( x1 )
	lw x8, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x8, 8 ( x1 )
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 88 ( x2 )
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 100 ( x2 )
	lw x3, 8 ( x1 )
	addi x10, x2, 40
	sw x3, 8 ( x10 )
	lw x1, 4 ( x1 )
	nop
	sw x1, 4 ( x10 )
	lw x1, 100 ( x2 )
	nop
	sw x1, 52 ( x2 )
	lw x1, 88 ( x2 )
	nop
	sw x1, 40 ( x2 )
	call $creal
	call $sin
	addi x1, x2, 72
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x3, 4 ( x1 )
	sw x8, 8 ( x1 )
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 72 ( x2 )
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 84 ( x2 )
	lw x12, 128 ( x2 )
	addi x8, x2, 24
	addi x3, x2, 128
	ori x3, x3, 4
	lw x13, 0 ( x3 )
	lw x3, 8 ( x1 )
	nop
	sw x3, 8 ( x8 )
	lw x1, 4 ( x1 )
	nop
	sw x1, 4 ( x8 )
	lw x1, 84 ( x2 )
	nop
	sw x1, 36 ( x2 )
	lw x1, 72 ( x2 )
	nop
	sw x1, 24 ( x2 )
	call $__muldf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $creal
	call $cos
	addi x1, x2, 120
	ori x1, x1, 4
	lw x13, 0 ( x1 )
	lw x12, 120 ( x2 )
	nop
	call $__muldf3
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	add x12, x0, x0
	add x13, x0, x12
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x11, 4 ( x1 )
	sw x8, 12 ( x1 )
	sw x10, 0 ( x1 )
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x3, 8 ( x1 )
	lw x8, 140 ( x2 )               //  4-byte Folded Reload
	lw x1, 148 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 152
$cfi5:
	.cfi_adjust_cfa_offset -152
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$csin, ($func_end0)-($csin)
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
