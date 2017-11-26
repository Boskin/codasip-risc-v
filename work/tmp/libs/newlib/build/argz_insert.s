	.text
	.file	"argz_insert.bc"
	.globl	$argz_insert
	.type	$argz_insert,@function
$argz_insert:                           //  @argz_insert
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
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
	add x3, x0, x10
	bgtu x12, x0, LBB0_2
LBB0_1:                                 //  %if.then
	add x10, x0, x3
	add x12, x0, x13
	call $argz_add
	jalr x0, LBB0_12 ( x0 )
LBB0_2:                                 //  %if.end
	lw x8, 0 ( x3 )
	addi x10, x0, 22
	bgtu x8, x12, LBB0_12
LBB0_3:                                 //  %lor.lhs.false
	lw x1, 0 ( x11 )
	nop
	add x1, x1, x8
	bgeu x12, x1, LBB0_12
LBB0_4:                                 //  %while.cond.preheader
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
LBB0_5:                                 //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	bne x8, x12, LBB0_7
LBB0_6:
	sw x8, 8 ( x2 )                 //  4-byte Folded Spill
	jalr x0, LBB0_9 ( x0 )
LBB0_7:                                 //  %land.rhs
                                        //    in Loop: Header=BB0_5 Depth=1
	lbu x1, -1 ( x12 )
	addi x12, x12, -1
	bgtu x1, x0, LBB0_5
LBB0_8:                                 //  %land.rhs.while.end_crit_edge
	addi x1, x12, 1
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
LBB0_9:                                 //  %while.end
	add x10, x0, x13
	sw x13, 12 ( x2 )               //  4-byte Folded Spill
	call $strlen
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 0 ( x1 )
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x1 )
	addi x4, x10, 1
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	add x11, x4, x3
	add x10, x0, x1
	call $realloc
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 0 ( x3 )
	bgtu x10, x0, LBB0_11
LBB0_10:
	addi x10, x0, 12
	jalr x0, LBB0_12 ( x0 )
LBB0_11:                                //  %if.end12
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x1 )
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sub x8, x4, x8
	add x11, x8, x10
	sub x12, x1, x8
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x1, x11
	call $memmove
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x1 )
	nop
	add x10, x8, x1
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	lw x8, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x12, x0, x8
	call $memcpy
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x3 )
	nop
	add x1, x8, x1
	sw x1, 0 ( x3 )
	add x10, x0, x0
LBB0_12:                                //  %cleanup
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
	.size	$argz_insert, ($func_end0)-($argz_insert)
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