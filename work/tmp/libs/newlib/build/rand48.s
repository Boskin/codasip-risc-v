	.text
	.file	"rand48.bc"
	.globl	$__dorand48
	.type	$__dorand48,@function
$__dorand48:                            //  @__dorand48
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs
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
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x10
	sw x8, 8 ( x2 )                 //  4-byte Folded Spill
	lh x10, 4 ( x11 )
	lhu x11, 178 ( x8 )
	nop
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	call $__mulsi3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	lhu x10, 180 ( x8 )
	nop
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lhu x11, 2 ( x8 )
	nop
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	call $__mulsi3
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x10, x1
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	lhu x8, 0 ( x8 )
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	add x10, x0, x8
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	call $__mulsi3
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	lhu x1, 184 ( x3 )
	nop
	add x1, x1, x10
	sw x1, 4 ( x2 )                 //  4-byte Folded Spill
	lhu x10, 182 ( x3 )
	add x11, x0, x8
	call $__mulsi3
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	srli x8, x3, 16
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x10, x1
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sh x3, 0 ( x1 )
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsi3
	add x8, x10, x8
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsi3
	add x1, x10, x8
	srli x3, x1, 16
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x4
	lw x4, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sh x1, 2 ( x4 )
	sh x3, 4 ( x4 )
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
	.size	$__dorand48, ($func_end0)-($__dorand48)
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
