	.text
	.file	"fgetwc.bc"
	.globl	$__fgetwc
	.type	$__fgetwc,@function
$__fgetwc:                              //  @__fgetwc
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
	add x8, x0, x11
	add x3, x0, x10
	lw x1, 4 ( x8 )
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
	bgt x1, x0, LBB0_2
LBB0_1:                                 //  %land.lhs.true
	add x10, x0, x3
	add x11, x0, x8
	call $__srefill_r
	bgtu x10, x0, LBB0_11
LBB0_2:                                 //  %if.end
	call $__locale_mb_cur_max
	xori x1, x10, 1
	beqz x1, LBB0_13
LBB0_3:                                 //  %do.body.preheader
	addi x1, x8, 92
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
LBB0_4:                                 //  %do.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x13, 4 ( x8 )
	lw x12, 0 ( x8 )
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 18
	lw x14, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $_mbrtowc_r
	xori x1, x10, -2
	beqz x1, LBB0_9
LBB0_5:                                 //  %do.body
	xori x1, x10, -1
	beqz x1, LBB0_10
LBB0_6:                                 //  %do.body
	bgtu x10, x0, LBB0_8
LBB0_7:                                 //  %if.then19
	lw x1, 0 ( x8 )
	nop
	addi x1, x1, 1
	sw x1, 0 ( x8 )
	lw x1, 4 ( x8 )
	nop
	addi x1, x1, -1
	sw x1, 4 ( x8 )
	add x10, x0, x0
	jalr x0, LBB0_12 ( x0 )
LBB0_8:                                 //  %if.else24
	lw x1, 0 ( x8 )
	nop
	add x1, x10, x1
	sw x1, 0 ( x8 )
	lw x1, 4 ( x8 )
	nop
	sub x1, x1, x10
	sw x1, 4 ( x8 )
	lh x10, 18 ( x2 )
	jalr x0, LBB0_12 ( x0 )
LBB0_9:                                 //  %do.cond
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__srefill_r
	beqz x10, LBB0_4
LBB0_10:                                //  %do.end
	lh x1, 12 ( x8 )
	nop
	ori x1, x1, 64
	sh x1, 12 ( x8 )
	call $__errno
	addi x1, x0, 138
	sw x1, 0 ( x10 )
LBB0_11:                                //  %cleanup
	not x10, x0
LBB0_12:                                //  %cleanup
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
LBB0_13:                                //  %if.then3
	lw x1, 0 ( x8 )
	nop
	addi x3, x1, 1
	sw x3, 0 ( x8 )
	lw x3, 4 ( x8 )
	lbu x10, 0 ( x1 )
	addi x1, x3, -1
	sh x10, 18 ( x2 )
	sw x1, 4 ( x8 )
	jalr x0, LBB0_12 ( x0 )
$func_end0:
	.size	$__fgetwc, ($func_end0)-($__fgetwc)
	.cfi_endproc

	.globl	$_fgetwc_r
	.type	$_fgetwc_r,@function
$_fgetwc_r:                             //  @_fgetwc_r
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	lh x4, 12 ( x11 )
	lui x3, 8192>>12 
	and x5, x3, x4
	bgtu x5, x0, LBB1_2
LBB1_1:                                 //  %if.then7
	or x4, x3, x4
	sh x4, 12 ( x11 )
	lw x4, 100 ( x11 )
	nop
	or x3, x3, x4
	sw x3, 100 ( x11 )
LBB1_2:                                 //  %do.end
	j $__fgetwc
$func_end1:
	.size	$_fgetwc_r, ($func_end1)-($_fgetwc_r)
	.cfi_endproc

	.globl	$fgetwc
	.type	$fgetwc,@function
$fgetwc:                                //  @fgetwc
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi9:
	.cfi_def_cfa 2, 0
$cfi10:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi11:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi12:
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
	beqz x10, LBB2_3
LBB2_1:                                 //  %land.lhs.true
	lw x1, 56 ( x10 )
	nop
	bgtu x1, x0, LBB2_3
LBB2_2:                                 //  %if.then
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	call $__sinit
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
LBB2_3:                                 //  %if.end
	lh x3, 12 ( x8 )
	lui x1, 8192>>12 
	and x4, x1, x3
	bgtu x4, x0, LBB2_5
LBB2_4:                                 //  %if.then7.i
	or x3, x1, x3
	sh x3, 12 ( x8 )
	lw x3, 100 ( x8 )
	nop
	or x1, x1, x3
	sw x1, 100 ( x8 )
LBB2_5:                                 //  %_fgetwc_r.exit
	add x11, x0, x8
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi13:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi14:
	.cfi_adjust_cfa_offset -24
$cfi15:
	.cfi_def_cfa 2, 0
	j $__fgetwc
$func_end2:
	.size	$fgetwc, ($func_end2)-($fgetwc)
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
