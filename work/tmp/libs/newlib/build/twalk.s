	.text
	.file	"twalk.bc"
	.globl	$twalk
	.type	$twalk,@function
$twalk:                                 //  @twalk
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -8
$cfi2:
	.cfi_adjust_cfa_offset 8
	sw x1, 4 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	beqz x10, LBB0_3
LBB0_1:                                 //  %entry
	beqz x11, LBB0_3
LBB0_2:                                 //  %if.then
	add x12, x0, x0
	call $trecurse
LBB0_3:                                 //  %if.end
	lw x1, 4 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 8
$cfi5:
	.cfi_adjust_cfa_offset -8
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$twalk, ($func_end0)-($twalk)
	.cfi_endproc

	.type	$trecurse,@function
$trecurse:                              //  @trecurse
	.cfi_startproc
  .codasip_retval_regs
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
	add x3, x0, x11
	lw x1, 4 ( x8 )
	nop
	bgtu x1, x0, LBB1_3
LBB1_1:                                 //  %land.lhs.true
	lw x1, 8 ( x8 )
	nop
	bgtu x1, x0, LBB1_3
LBB1_2:                                 //  %if.then
	addi x11, x0, 3
	add x10, x0, x8
	call_reg x3
	jalr x0, LBB1_8 ( x0 )
LBB1_3:                                 //  %if.else
	add x11, x0, x0
	add x10, x0, x8
	sw x12, 4 ( x2 )                //  4-byte Folded Spill
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	call_reg x3
	lw x10, 4 ( x8 )
	nop
	beqz x10, LBB1_5
LBB1_4:                                 //  %if.then4
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	addi x12, x1, 1
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $trecurse
LBB1_5:                                 //  %if.end
	slti x11, x0, 1
	add x10, x0, x8
	lw x12, 4 ( x2 )                //  4-byte Folded Reload
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	call_reg x1
	lw x10, 8 ( x8 )
	nop
	beqz x10, LBB1_7
LBB1_6:                                 //  %if.then8
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	addi x12, x1, 1
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $trecurse
LBB1_7:                                 //  %if.end11
	addi x11, x0, 2
	add x10, x0, x8
	lw x12, 4 ( x2 )                //  4-byte Folded Reload
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	call_reg x1
LBB1_8:                                 //  %if.end12
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
	.size	$trecurse, ($func_end1)-($trecurse)
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
