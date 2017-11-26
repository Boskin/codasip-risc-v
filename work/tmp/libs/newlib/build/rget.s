	.text
	.file	"rget.bc"
	.globl	$__srget_r
	.type	$__srget_r,@function
$__srget_r:                             //  @__srget_r
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
	add x8, x0, x10
	beqz x8, LBB0_3
LBB0_1:                                 //  %land.lhs.true
	lw x1, 56 ( x8 )
	nop
	bgtu x1, x0, LBB0_3
LBB0_2:                                 //  %if.then
	add x10, x0, x8
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	call $__sinit
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
LBB0_3:                                 //  %if.end
	add x10, x0, x8
	add x8, x0, x11
	call $__srefill_r
	beqz x10, LBB0_5
LBB0_4:
	not x10, x0
	jalr x0, LBB0_6 ( x0 )
LBB0_5:                                 //  %if.then2
	lw x1, 4 ( x8 )
	lw x3, 0 ( x8 )
	addi x1, x1, -1
	addi x4, x3, 1
	sw x1, 4 ( x8 )
	sw x4, 0 ( x8 )
	lbu x10, 0 ( x3 )
LBB0_6:                                 //  %return
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
	.size	$__srget_r, ($func_end0)-($__srget_r)
	.cfi_endproc

	.globl	$__srget
	.type	$__srget,@function
$__srget:                               //  @__srget
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
	add x3, x0, x10
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x8, 0 ( x1 )
	nop
	beqz x8, LBB1_3
LBB1_1:                                 //  %land.lhs.true.i
	lw x1, 56 ( x8 )
	nop
	bgtu x1, x0, LBB1_3
LBB1_2:                                 //  %if.then.i
	add x10, x0, x8
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	call $__sinit
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
LBB1_3:                                 //  %if.end.i
	add x10, x0, x8
	add x11, x0, x3
	add x8, x0, x3
	call $__srefill_r
	beqz x10, LBB1_5
LBB1_4:
	not x10, x0
	jalr x0, LBB1_6 ( x0 )
LBB1_5:                                 //  %if.then2.i
	lw x1, 4 ( x8 )
	lw x3, 0 ( x8 )
	addi x1, x1, -1
	addi x4, x3, 1
	sw x1, 4 ( x8 )
	sw x4, 0 ( x8 )
	lbu x10, 0 ( x3 )
LBB1_6:                                 //  %__srget_r.exit
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
	.size	$__srget, ($func_end1)-($__srget)
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
