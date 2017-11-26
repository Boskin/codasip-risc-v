	.text
	.file	"fputws.bc"
	.globl	$_fputws_r
	.type	$_fputws_r,@function
$_fputws_r:                             //  @_fputws_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -1072
$cfi2:
	.cfi_adjust_cfa_offset 1072
	sw x1, 1068 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 1060 ( x2 )              //  4-byte Folded Spill
	add x8, x0, x10
	lh x1, 12 ( x12 )
	lui x3, 8192>>12 
	sw x11, 1056 ( x2 )
	and x4, x3, x1
	bgtu x4, x0, LBB0_2
LBB0_1:                                 //  %if.then7
	or x1, x3, x1
	sh x1, 12 ( x12 )
	lw x4, 100 ( x12 )
	nop
	or x3, x3, x4
	sw x3, 100 ( x12 )
LBB0_2:                                 //  %do.end
	andi x1, x1, 8
	sw x12, 8 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB0_4
LBB0_3:                                 //  %lor.lhs.false
	lw x1, 16 ( x12 )
	nop
	bgtu x1, x0, LBB0_6
LBB0_4:                                 //  %land.rhs
	add x10, x0, x8
	add x11, x0, x12
	call $__swsetup_r
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB0_6
LBB0_5:
	not x10, x0
	jalr x0, LBB0_13 ( x0 )
LBB0_6:                                 //  %if.end24
	addi x1, x2, 12
	slti x3, x0, 1
	addi x4, x2, 32
	sw x1, 20 ( x2 )
	sw x3, 24 ( x2 )
	sw x4, 12 ( x2 )
	addi x1, x12, 92
	sw x1, 4 ( x2 )                 //  4-byte Folded Spill
LBB0_7:                                 //  %do.body25
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x0, x8
	addi x11, x2, 32
	addi x12, x2, 1056
	addi x13, x0, 1024
	lw x14, 4 ( x2 )                //  4-byte Folded Reload
	nop
	call $_wcsrtombs_r
	xori x1, x10, -1
	bgtu x1, x0, LBB0_9
LBB0_8:
	not x10, x0
	jalr x0, LBB0_13 ( x0 )
LBB0_9:                                 //  %if.end31
                                        //    in Loop: Header=BB0_7 Depth=1
	sw x10, 28 ( x2 )
	sw x10, 16 ( x2 )
	add x10, x0, x8
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	addi x12, x2, 20
	call $__sfvwrite_r
	beqz x10, LBB0_11
LBB0_10:
	not x10, x0
	jalr x0, LBB0_13 ( x0 )
LBB0_11:                                //  %do.cond37
                                        //    in Loop: Header=BB0_7 Depth=1
	lw x1, 1056 ( x2 )
	nop
	bgtu x1, x0, LBB0_7
LBB0_12:
	add x10, x0, x0
LBB0_13:                                //  %cleanup
	lw x8, 1060 ( x2 )              //  4-byte Folded Reload
	lw x1, 1068 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 1072
$cfi5:
	.cfi_adjust_cfa_offset -1072
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$_fputws_r, ($func_end0)-($_fputws_r)
	.cfi_endproc

	.globl	$fputws
	.type	$fputws,@function
$fputws:                                //  @fputws
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
	add x3, x0, x11
	add x4, x0, x10
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x8, 0 ( x1 )
	nop
	beqz x8, LBB1_3
LBB1_1:                                 //  %land.lhs.true
	lw x1, 56 ( x8 )
	nop
	bgtu x1, x0, LBB1_3
LBB1_2:                                 //  %if.then
	add x10, x0, x8
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	sw x4, 4 ( x2 )                 //  4-byte Folded Spill
	call $__sinit
	lw x4, 4 ( x2 )                 //  4-byte Folded Reload
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
LBB1_3:                                 //  %if.end
	add x10, x0, x8
	add x11, x0, x4
	add x12, x0, x3
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi12:
	.cfi_adjust_cfa_offset -24
$cfi13:
	.cfi_def_cfa 2, 0
	j $_fputws_r
$func_end1:
	.size	$fputws, ($func_end1)-($fputws)
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
