	.text
	.file	"envz_add.bc"
	.globl	$envz_add
	.type	$envz_add,@function
$envz_add:                              //  @envz_add
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
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
	add x8, x0, x13
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	sw x12, 32 ( x2 )               //  4-byte Folded Spill
	call $envz_remove
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	beqz x8, LBB0_4
LBB0_1:                                 //  %if.then
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $strlen
	add x8, x0, x10
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $strlen
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	add x1, x10, x8
	addi x10, x1, 2
	call $malloc
	bgtu x10, x0, LBB0_3
LBB0_2:
	addi x8, x0, 12
	jalr x0, LBB0_5 ( x0 )
LBB0_3:                                 //  %if.end
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x12, x0, x8
	call $memcpy
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x8, x3
	add x8, x0, x3
	addi x3, x0, 61
	addi x10, x1, 1
	sb x3, 0 ( x1 )
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	addi x12, x1, 1
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $memcpy
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	call $argz_add
	add x8, x0, x10
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $free
	jalr x0, LBB0_5 ( x0 )
LBB0_4:                                 //  %if.else
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	lw x12, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $argz_add
	add x8, x0, x10
LBB0_5:                                 //  %cleanup
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
	.size	$envz_add, ($func_end0)-($envz_add)
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
