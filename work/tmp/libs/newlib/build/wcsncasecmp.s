	.text
	.file	"wcsncasecmp.bc"
	.globl	$wcsncasecmp
	.type	$wcsncasecmp,@function
$wcsncasecmp:                           //  @wcsncasecmp
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
	bgtu x12, x0, LBB0_2
LBB0_1:
	add x10, x0, x0
	jalr x0, LBB0_14 ( x0 )
LBB0_2:                                 //  %land.rhs.preheader
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	lh x10, 0 ( x10 )
	add x8, x0, x11
	sw x12, 8 ( x2 )                //  4-byte Folded Spill
	call $towlower
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	lh x10, 0 ( x8 )
	nop
	call $towlower
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	xori x1, x3, 1
	bgtu x1, x0, LBB0_4
LBB0_3:
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_12 ( x0 )
LBB0_4:                                 //  %land.rhs.preheader
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	bne x1, x10, LBB0_3
LBB0_5:                                 //  %lor.lhs.false.preheader
	addi x1, x0, 2
	sub x7, x1, x3
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_6:                                 //  %lor.lhs.false
                                        //  =>This Inner Loop Header: Depth=1
	lhu x1, 0 ( x5 )
	nop
	bgtu x1, x0, LBB0_8
LBB0_7:
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	jalr x0, LBB0_13 ( x0 )
LBB0_8:                                 //  %lor.lhs.false11
                                        //    in Loop: Header=BB0_6 Depth=1
	lhu x3, 0 ( x8 )
	nop
	bgtu x3, x0, LBB0_10
LBB0_9:
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_13 ( x0 )
LBB0_10:                                //  %if.end16
                                        //    in Loop: Header=BB0_6 Depth=1
	lh x10, 2 ( x5 )
	sw x5, 16 ( x2 )                //  4-byte Folded Spill
	sw x7, 12 ( x2 )                //  4-byte Folded Spill
	call $towlower
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	lh x10, 2 ( x8 )
	nop
	call $towlower
	lw x7, 12 ( x2 )                //  4-byte Folded Reload
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	addi x8, x8, 2
	addi x5, x5, 2
	beqz x7, LBB0_12
LBB0_11:                                //  %if.end16
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x7, x7, 1
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	beq x1, x10, LBB0_6
LBB0_12:                                //  %land.rhs.while.end_crit_edge
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	lh x1, 0 ( x5 )
	nop
LBB0_13:                                //  %while.end
	slli x1, x1, 16
	srai x10, x1, 16
	call $towlower
	add x8, x0, x10
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	lh x10, 0 ( x1 )
	nop
	call $towlower
	sub x10, x8, x10
LBB0_14:                                //  %return
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
	.size	$wcsncasecmp, ($func_end0)-($wcsncasecmp)
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