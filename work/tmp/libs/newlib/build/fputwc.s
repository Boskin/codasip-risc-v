	.text
	.file	"fputwc.bc"
	.globl	$__fputwc
	.type	$__fputwc,@function
$__fputwc:                              //  @__fputwc
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
	sw x12, 20 ( x2 )               //  4-byte Folded Spill
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	addi x3, x11, -1
	or x1, x1, x28
	and x8, x1, x3
	call $__locale_mb_cur_max
	addi x1, x0, 254
	bgtu x8, x1, LBB0_9
LBB0_1:                                 //  %entry
	xori x1, x10, 1
	bgtu x1, x0, LBB0_9
LBB0_2:                                 //  %if.end15.thread
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sb x1, 27 ( x2 )
	slti x10, x0, 1
	lw x4, 20 ( x2 )                //  4-byte Folded Reload
LBB0_3:                                 //  %for.body.lr.ph
	add x8, x0, x0
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
LBB0_4:                                 //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x1, 8 ( x4 )
	lbu x11, 27 ( x2 )
	addi x3, x1, -1
	sw x3, 8 ( x4 )
	bgt x1, x0, LBB0_7
LBB0_5:                                 //  %lor.lhs.false.i
                                        //    in Loop: Header=BB0_4 Depth=1
	xori x3, x11, 10
	beqz x3, LBB0_12
LBB0_6:                                 //  %lor.lhs.false.i
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x3, 24 ( x4 )
	nop
	ble x1, x3, LBB0_12
LBB0_7:                                 //  %__sputc_r.exit.thread
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x1, 0 ( x4 )
	nop
	addi x3, x1, 1
	sw x3, 0 ( x4 )
	sb x11, 0 ( x1 )
LBB0_8:                                 //  %for.inc
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x8, x8, 1
	bgtu x10, x8, LBB0_4
	jalr x0, LBB0_14 ( x0 )
LBB0_9:                                 //  %if.else
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	addi x13, x8, 92
	addi x11, x2, 27
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $_wcrtomb_r
	add x4, x0, x8
	beqz x10, LBB0_14
LBB0_10:                                //  %if.else
	xori x1, x10, -1
	bgtu x1, x0, LBB0_3
LBB0_11:                                //  %if.then12
	lh x1, 12 ( x4 )
	not x3, x0
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	ori x1, x1, 64
	sh x1, 12 ( x4 )
	jalr x0, LBB0_14 ( x0 )
LBB0_12:                                //  %__sputc_r.exit
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x12, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__swbuf_r
	lw x4, 20 ( x2 )                //  4-byte Folded Reload
	xori x1, x10, -1
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	bgtu x1, x0, LBB0_8
LBB0_13:
	not x1, x0
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
LBB0_14:                                //  %cleanup
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
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
	.size	$__fputwc, ($func_end0)-($__fputwc)
	.cfi_endproc

	.globl	$_fputwc_r
	.type	$_fputwc_r,@function
$_fputwc_r:                             //  @_fputwc_r
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	lh x4, 12 ( x12 )
	lui x3, 8192>>12 
	and x5, x3, x4
	bgtu x5, x0, LBB1_2
LBB1_1:                                 //  %if.then7
	or x4, x3, x4
	sh x4, 12 ( x12 )
	lw x4, 100 ( x12 )
	nop
	or x3, x3, x4
	sw x3, 100 ( x12 )
LBB1_2:                                 //  %do.end
	j $__fputwc
$func_end1:
	.size	$_fputwc_r, ($func_end1)-($_fputwc_r)
	.cfi_endproc

	.globl	$fputwc
	.type	$fputwc,@function
$fputwc:                                //  @fputwc
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
	add x5, x0, x11
	add x7, x0, x10
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x8, 0 ( x1 )
	nop
	beqz x8, LBB2_3
LBB2_1:                                 //  %land.lhs.true
	lw x1, 56 ( x8 )
	nop
	bgtu x1, x0, LBB2_3
LBB2_2:                                 //  %if.then
	add x10, x0, x8
	sw x5, 8 ( x2 )                 //  4-byte Folded Spill
	sw x7, 4 ( x2 )                 //  4-byte Folded Spill
	call $__sinit
	lw x7, 4 ( x2 )                 //  4-byte Folded Reload
	lw x5, 8 ( x2 )                 //  4-byte Folded Reload
	nop
LBB2_3:                                 //  %if.end
	lh x3, 12 ( x5 )
	lui x1, 8192>>12 
	and x4, x1, x3
	bgtu x4, x0, LBB2_5
LBB2_4:                                 //  %if.then7.i
	or x3, x1, x3
	sh x3, 12 ( x5 )
	lw x3, 100 ( x5 )
	nop
	or x1, x1, x3
	sw x1, 100 ( x5 )
LBB2_5:                                 //  %_fputwc_r.exit
	add x10, x0, x8
	add x11, x0, x7
	add x12, x0, x5
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi13:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi14:
	.cfi_adjust_cfa_offset -24
$cfi15:
	.cfi_def_cfa 2, 0
	j $__fputwc
$func_end2:
	.size	$fputwc, ($func_end2)-($fputwc)
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
