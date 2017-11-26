	.text
	.file	"getenv_r.bc"
	.globl	$_findenv_r
	.type	$_findenv_r,@function
$_findenv_r:                            //  @_findenv_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
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
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	call $__env_lock
	ori x28, x0, $environ & 0xfff
	slli x28, x28, 20
	lui x1, $environ >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x8, 0 ( x1 )
	nop
	beqz x8, LBB0_14
LBB0_1:
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	add x1, x0, x3
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	add x5, x0, x3
LBB0_2:                                 //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lbu x3, 0 ( x1 )
	nop
	beqz x3, LBB0_5
LBB0_3:                                 //  %while.cond
                                        //    in Loop: Header=BB0_2 Depth=1
	xori x3, x3, 61
	beqz x3, LBB0_11
LBB0_4:                                 //  %while.body
                                        //    in Loop: Header=BB0_2 Depth=1
	addi x1, x1, 1
	jalr x0, LBB0_2 ( x0 )
LBB0_5:                                 //  %if.then7
	lw x10, 0 ( x8 )
	nop
	beqz x10, LBB0_11
LBB0_6:                                 //  %for.body.preheader
	sub x1, x1, x5
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
LBB0_7:                                 //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x11, x0, x5
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $strncmp
	bgtu x10, x0, LBB0_10
LBB0_8:                                 //  %if.then10
                                        //    in Loop: Header=BB0_7 Depth=1
	lw x1, 0 ( x8 )
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x1
	lbu x1, 0 ( x3 )
	nop
	xori x1, x1, 61
	bgtu x1, x0, LBB0_10
LBB0_9:                                 //  %if.then14
	ori x28, x0, $environ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $environ >> 12 & 0xfffff
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	sub x1, x8, x1
	srai x1, x1, 2
	add x8, x0, x3
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__env_unlock
	addi x10, x8, 1
	jalr x0, LBB0_13 ( x0 )
LBB0_10:                                //  %for.inc
                                        //    in Loop: Header=BB0_7 Depth=1
	lw x10, 4 ( x8 )
	addi x8, x8, 4
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	lw x5, 8 ( x2 )                 //  4-byte Folded Reload
	bgtu x10, x0, LBB0_7
LBB0_11:                                //  %if.end22
	add x10, x0, x4
LBB0_12:                                //  %cleanup
	call $__env_unlock
	add x10, x0, x0
LBB0_13:                                //  %cleanup
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
LBB0_14:                                //  %if.then
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_12 ( x0 )
$func_end0:
	.size	$_findenv_r, ($func_end0)-($_findenv_r)
	.cfi_endproc

	.globl	$_getenv_r
	.type	$_getenv_r,@function
$_getenv_r:                             //  @_getenv_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -16
$cfi9:
	.cfi_adjust_cfa_offset 16
	sw x1, 12 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	addi x12, x2, 4
	call $_findenv_r
	lw x1, 12 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 16
$cfi12:
	.cfi_adjust_cfa_offset -16
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$_getenv_r, ($func_end1)-($_getenv_r)
	.cfi_endproc

	.address_space	0	

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
