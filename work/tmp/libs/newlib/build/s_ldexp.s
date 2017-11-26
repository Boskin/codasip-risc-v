	.text
	.file	"s_ldexp.bc"
	.globl	$ldexp
	.type	$ldexp,@function
$ldexp:                                 //  @ldexp
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
	sw x12, 4 ( x2 )                //  4-byte Folded Spill
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x10
	add x12, x0, x0
	add x13, x0, x12
	call $__eqdf2
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $finite
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	beqz x1, LBB0_5
LBB0_1:                                 //  %entry
	beqz x10, LBB0_5
LBB0_2:                                 //  %if.end
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	lw x12, 4 ( x2 )                //  4-byte Folded Reload
	nop
	call $scalbn
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	call $finite
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x0
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	add x13, x0, x12
	call $__eqdf2
	beqz x10, LBB0_4
LBB0_3:                                 //  %if.end
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_5
LBB0_4:                                 //  %if.then6
	call $__errno
	addi x1, x0, 34
	sw x1, 0 ( x10 )
LBB0_5:                                 //  %return
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
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
	.size	$ldexp, ($func_end0)-($ldexp)
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
