	.text
	.file	"ungetwc.bc"
	.globl	$_ungetwc_r
	.type	$_ungetwc_r,@function
$_ungetwc_r:                            //  @_ungetwc_r
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
	add x8, x0, x12
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	lh x3, 12 ( x8 )
	lui x1, 8192>>12 
	and x4, x1, x3
	bgtu x4, x0, LBB0_2
LBB0_1:                                 //  %if.then7
	or x3, x1, x3
	sh x3, 12 ( x8 )
	lw x3, 100 ( x8 )
	nop
	or x1, x1, x3
	sw x1, 100 ( x8 )
LBB0_2:                                 //  %do.end
	xori x1, x11, -1
	not x10, x0
	beqz x1, LBB0_9
LBB0_3:                                 //  %if.else
	sw x11, 4 ( x2 )                //  4-byte Folded Spill
	slli x1, x11, 16
	srai x12, x1, 16
	addi x13, x8, 92
	addi x11, x2, 19
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $_wcrtomb_r
	xori x1, x10, -1
	beqz x1, LBB0_10
LBB0_4:                                 //  %while.cond.preheader
	sw x8, 8 ( x2 )                 //  4-byte Folded Spill
	not x8, x10
LBB0_5:                                 //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	addi x8, x8, 1
	bgtu x8, x0, LBB0_7
LBB0_6:
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_9 ( x0 )
LBB0_7:                                 //  %while.body
                                        //    in Loop: Header=BB0_5 Depth=1
	lbu x11, 19 ( x2 )
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $_ungetc_r
	xori x1, x10, -1
	bgtu x1, x0, LBB0_5
LBB0_8:
	not x10, x0
LBB0_9:                                 //  %if.end34
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
LBB0_10:                                //  %if.then19
	lh x1, 12 ( x8 )
	nop
	ori x1, x1, 64
	sh x1, 12 ( x8 )
	jalr x0, LBB0_8 ( x0 )
$func_end0:
	.size	$_ungetwc_r, ($func_end0)-($_ungetwc_r)
	.cfi_endproc

	.globl	$ungetwc
	.type	$ungetwc,@function
$ungetwc:                               //  @ungetwc
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi9:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x5, 0 ( x1 )
	nop
	beqz x5, LBB1_3
LBB1_1:                                 //  %land.lhs.true
	lw x1, 56 ( x5 )
	nop
	bgtu x1, x0, LBB1_3
LBB1_2:                                 //  %if.then
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x5
	sw x5, 12 ( x2 )                //  4-byte Folded Spill
	call $__sinit
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
LBB1_3:                                 //  %if.end
	lh x3, 12 ( x8 )
	lui x1, 8192>>12 
	and x4, x1, x3
	bgtu x4, x0, LBB1_5
LBB1_4:                                 //  %if.then7.i
	or x3, x1, x3
	sh x3, 12 ( x8 )
	lw x3, 100 ( x8 )
	nop
	or x1, x1, x3
	sw x1, 100 ( x8 )
LBB1_5:                                 //  %do.end.i
	xori x1, x10, -1
	not x3, x0
	beqz x1, LBB1_12
LBB1_6:                                 //  %if.else.i
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	slli x1, x10, 16
	srai x12, x1, 16
	addi x13, x8, 92
	addi x11, x2, 19
	sw x5, 12 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x5
	call $_wcrtomb_r
	xori x1, x10, -1
	beqz x1, LBB1_13
LBB1_7:                                 //  %while.cond.i.preheader
	sw x8, 8 ( x2 )                 //  4-byte Folded Spill
	not x8, x10
LBB1_8:                                 //  %while.cond.i
                                        //  =>This Inner Loop Header: Depth=1
	addi x8, x8, 1
	bgtu x8, x0, LBB1_10
LBB1_9:
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	jalr x0, LBB1_12 ( x0 )
LBB1_10:                                //  %while.body.i
                                        //    in Loop: Header=BB1_8 Depth=1
	lbu x11, 19 ( x2 )
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $_ungetc_r
	xori x1, x10, -1
	bgtu x1, x0, LBB1_8
LBB1_11:
	not x3, x0
LBB1_12:                                //  %_ungetwc_r.exit
	add x10, x0, x3
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi12:
	.cfi_adjust_cfa_offset -32
$cfi13:
	.cfi_def_cfa 2, 0
	ret
LBB1_13:                                //  %if.then19.i
	lh x1, 12 ( x8 )
	nop
	ori x1, x1, 64
	sh x1, 12 ( x8 )
	jalr x0, LBB1_11 ( x0 )
$func_end1:
	.size	$ungetwc, ($func_end1)-($ungetwc)
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
