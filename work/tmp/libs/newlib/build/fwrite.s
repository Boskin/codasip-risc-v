	.text
	.file	"fwrite.bc"
	.globl	$_fwrite_r
	.type	$_fwrite_r,@function
$_fwrite_r:                             //  @_fwrite_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -56
$cfi2:
	.cfi_adjust_cfa_offset 56
	sw x1, 52 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x14
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	sw x11, 24 ( x2 )
	sw x13, 16 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x13
	sw x12, 12 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x12
	call $__mulsi3
	addi x1, x2, 32
	addi x3, x2, 24
	slti x4, x0, 1
	sw x10, 28 ( x2 )
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	sw x10, 8 ( x1 )
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	sw x3, 32 ( x2 )
	sw x4, 36 ( x2 )
	beqz x10, LBB0_3
LBB0_1:                                 //  %land.lhs.true
	lw x1, 56 ( x10 )
	nop
	bgtu x1, x0, LBB0_3
LBB0_2:                                 //  %if.then
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__sinit
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
LBB0_3:                                 //  %if.end
	lh x1, 12 ( x8 )
	lui x3, 8192>>12 
	and x4, x3, x1
	bgtu x4, x0, LBB0_5
LBB0_4:                                 //  %if.then12
	or x1, x3, x1
	sh x1, 12 ( x8 )
	ori x28, x0, -8193 & 0xfff
	lw x1, 100 ( x8 )
	slli x28, x28, 20
	lui x3, -8193 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	and x1, x3, x1
	sw x1, 100 ( x8 )
LBB0_5:                                 //  %do.end20
	addi x12, x2, 32
	add x11, x0, x8
	call $__sfvwrite_r
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB0_7
LBB0_6:                                 //  %if.end35
	lw x1, 40 ( x2 )
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sub x10, x3, x1
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__udivsi3
	add x1, x0, x10
LBB0_7:                                 //  %cleanup
	add x10, x0, x1
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 56
$cfi5:
	.cfi_adjust_cfa_offset -56
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$_fwrite_r, ($func_end0)-($_fwrite_r)
	.cfi_endproc

	.globl	$fwrite
	.type	$fwrite,@function
$fwrite:                                //  @fwrite
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -56
$cfi9:
	.cfi_adjust_cfa_offset 56
	sw x1, 52 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x13
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	sw x10, 24 ( x2 )
	sw x12, 16 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x12
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	call $__mulsi3
	addi x1, x2, 32
	addi x3, x2, 24
	slti x4, x0, 1
	sw x10, 28 ( x2 )
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	sw x10, 8 ( x1 )
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	sw x3, 32 ( x2 )
	sw x4, 36 ( x2 )
	beqz x10, LBB1_3
LBB1_1:                                 //  %land.lhs.true.i
	lw x1, 56 ( x10 )
	nop
	bgtu x1, x0, LBB1_3
LBB1_2:                                 //  %if.then.i
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__sinit
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
LBB1_3:                                 //  %if.end.i
	lh x1, 12 ( x8 )
	lui x3, 8192>>12 
	and x4, x3, x1
	bgtu x4, x0, LBB1_5
LBB1_4:                                 //  %if.then12.i
	or x1, x3, x1
	sh x1, 12 ( x8 )
	ori x28, x0, -8193 & 0xfff
	lw x1, 100 ( x8 )
	slli x28, x28, 20
	lui x3, -8193 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	and x1, x3, x1
	sw x1, 100 ( x8 )
LBB1_5:                                 //  %do.end20.i
	addi x12, x2, 32
	add x11, x0, x8
	call $__sfvwrite_r
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB1_7
LBB1_6:                                 //  %if.end35.i
	lw x1, 40 ( x2 )
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sub x10, x3, x1
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__udivsi3
	add x1, x0, x10
LBB1_7:                                 //  %_fwrite_r.exit
	add x10, x0, x1
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 56
$cfi12:
	.cfi_adjust_cfa_offset -56
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$fwrite, ($func_end1)-($fwrite)
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
