	.text
	.file	"fwide.bc"
	.globl	$_fwide_r
	.type	$_fwide_r,@function
$_fwide_r:                              //  @_fwide_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi2:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	beqz x10, LBB0_3
LBB0_1:                                 //  %land.lhs.true
	lw x1, 56 ( x10 )
	nop
	bgtu x1, x0, LBB0_3
LBB0_2:                                 //  %if.then
	sw x12, 8 ( x2 )                //  4-byte Folded Spill
	call $__sinit
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
LBB0_3:                                 //  %if.end
	lh x1, 12 ( x8 )
	beqz x12, LBB0_9
LBB0_4:                                 //  %do.body9
	lui x3, 8192>>12 
	and x4, x3, x1
	bgtu x4, x0, LBB0_9
LBB0_5:                                 //  %if.then14
	ori x28, x0, -8193 & 0xfff
	slli x28, x28, 20
	or x1, x3, x1
	sh x1, 12 ( x8 )
	lui x5, -8193 >> 12 & 0xfffff
	srli x28, x28, 20
	add x7, x0, x0
	lw x4, 100 ( x8 )
	or x5, x5, x28
	ble x12, x7, LBB0_7
LBB0_6:
	or x3, x3, x4
	jalr x0, LBB0_8 ( x0 )
LBB0_7:                                 //  %if.then14
	and x3, x5, x4
LBB0_8:                                 //  %if.then14
	sw x3, 100 ( x8 )
LBB0_9:                                 //  %if.end29
	lui x3, 8192>>12 
	and x1, x3, x1
	bgtu x1, x0, LBB0_11
LBB0_10:
	add x10, x0, x0
	jalr x0, LBB0_12 ( x0 )
LBB0_11:                                //  %if.else35
	lw x1, 100 ( x8 )
	nop
	srli x1, x1, 12
	andi x1, x1, 2
	addi x10, x1, -1
LBB0_12:                                //  %if.end39
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi5:
	.cfi_adjust_cfa_offset -24
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$_fwide_r, ($func_end0)-($_fwide_r)
	.cfi_endproc

	.globl	$fwide
	.type	$fwide,@function
$fwide:                                 //  @fwide
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi9:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x10, 0 ( x1 )
	nop
	beqz x10, LBB1_3
LBB1_1:                                 //  %land.lhs.true.i
	lw x1, 56 ( x10 )
	nop
	bgtu x1, x0, LBB1_3
LBB1_2:                                 //  %if.then.i
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	call $__sinit
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
LBB1_3:                                 //  %if.end.i
	lh x1, 12 ( x8 )
	beqz x11, LBB1_9
LBB1_4:                                 //  %do.body9.i
	lui x3, 8192>>12 
	and x4, x3, x1
	bgtu x4, x0, LBB1_9
LBB1_5:                                 //  %if.then14.i
	ori x28, x0, -8193 & 0xfff
	slli x28, x28, 20
	or x1, x3, x1
	sh x1, 12 ( x8 )
	lui x5, -8193 >> 12 & 0xfffff
	srli x28, x28, 20
	add x7, x0, x0
	lw x4, 100 ( x8 )
	or x5, x5, x28
	ble x11, x7, LBB1_7
LBB1_6:
	or x3, x3, x4
	jalr x0, LBB1_8 ( x0 )
LBB1_7:                                 //  %if.then14.i
	and x3, x5, x4
LBB1_8:                                 //  %if.then14.i
	sw x3, 100 ( x8 )
LBB1_9:                                 //  %if.end29.i
	lui x3, 8192>>12 
	and x1, x3, x1
	bgtu x1, x0, LBB1_11
LBB1_10:
	add x10, x0, x0
	jalr x0, LBB1_12 ( x0 )
LBB1_11:                                //  %if.else35.i
	lw x1, 100 ( x8 )
	nop
	srli x1, x1, 12
	andi x1, x1, 2
	addi x10, x1, -1
LBB1_12:                                //  %_fwide_r.exit
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi12:
	.cfi_adjust_cfa_offset -24
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$fwide, ($func_end1)-($fwide)
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
