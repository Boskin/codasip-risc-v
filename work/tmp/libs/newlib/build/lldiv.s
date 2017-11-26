	.text
	.file	"lldiv.bc"
	.globl	$lldiv
	.type	$lldiv,@function
$lldiv:                                 //  @lldiv
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retstruct_reg 10
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
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	sw x14, 8 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x13
	sw x12, 24 ( x2 )               //  4-byte Folded Spill
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x11
	add x11, x0, x12
	add x12, x0, x8
	add x13, x0, x14
	call $__divdi3
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x8
	lw x8, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	add x13, x0, x8
	call $__moddi3
	lw x12, 4 ( x2 )                //  4-byte Folded Reload
	not x1, x0
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	slt x1, x1, x3
	slti x3, x11, 0
	and x4, x3, x1
	andi x9, x4, 1
	add x5, x12, x9
	add x3, x0, x0
	slti x1, x0, 1
	add x7, x0, x1
	bgtu x9, x5, LBB0_2
LBB0_1:                                 //  %entry
	add x7, x0, x3
LBB0_2:                                 //  %entry
	add x9, x0, x1
	bgtu x12, x5, LBB0_4
LBB0_3:                                 //  %entry
	add x9, x0, x7
LBB0_4:                                 //  %entry
	lw x7, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x7, x9, x7
	lw x9, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x7, 4 ( x9 )
	add x7, x0, x9
	sw x5, 0 ( x7 )
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	bgtu x4, x0, LBB0_6
LBB0_5:                                 //  %entry
	add x8, x0, x3
LBB0_6:                                 //  %entry
	bgtu x4, x0, LBB0_8
LBB0_7:                                 //  %entry
	add x5, x0, x3
LBB0_8:                                 //  %entry
	bgtu x5, x10, LBB0_10
LBB0_9:                                 //  %entry
	add x1, x0, x3
LBB0_10:                                //  %entry
	sub x3, x11, x8
	sub x1, x3, x1
	sw x1, 12 ( x7 )
	sub x1, x10, x5
	sw x1, 8 ( x7 )
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
	.size	$lldiv, ($func_end0)-($lldiv)
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
