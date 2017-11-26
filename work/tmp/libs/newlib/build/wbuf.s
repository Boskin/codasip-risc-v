	.text
	.file	"wbuf.bc"
	.globl	$__swbuf_r
	.type	$__swbuf_r,@function
$__swbuf_r:                             //  @__swbuf_r
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
	add x8, x0, x12
	sw x11, 4 ( x2 )                //  4-byte Folded Spill
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	beqz x10, LBB0_3
LBB0_1:                                 //  %land.lhs.true
	lw x1, 56 ( x10 )
	nop
	bgtu x1, x0, LBB0_3
LBB0_2:                                 //  %if.then
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__sinit
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
LBB0_3:                                 //  %if.end
	lhu x1, 12 ( x8 )
	lw x3, 24 ( x8 )
	andi x4, x1, 8
	sw x3, 8 ( x8 )
	beqz x4, LBB0_5
LBB0_4:                                 //  %lor.lhs.false
	lw x3, 16 ( x8 )
	nop
	bgtu x3, x0, LBB0_7
LBB0_5:                                 //  %land.lhs.true5
	add x11, x0, x8
	call $__swsetup_r
	bgtu x10, x0, LBB0_16
LBB0_6:                                 //  %land.lhs.true5.if.end8_crit_edge
	lh x1, 12 ( x8 )
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
LBB0_7:                                 //  %if.end8
	slli x1, x1, 16
	srai x1, x1, 16
	lui x3, 8192>>12 
	and x4, x3, x1
	bgtu x4, x0, LBB0_9
LBB0_8:                                 //  %if.then16
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
LBB0_9:                                 //  %do.end23
	lw x3, 16 ( x8 )
	lw x1, 0 ( x8 )
	lw x4, 20 ( x8 )
	sub x3, x1, x3
	bgt x4, x3, LBB0_12
LBB0_10:                                //  %if.then29
	add x11, x0, x8
	call $_fflush_r
	bgtu x10, x0, LBB0_16
LBB0_11:                                //  %if.then29.if.end34_crit_edge
	add x3, x0, x0
	lw x1, 0 ( x8 )
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
LBB0_12:                                //  %if.end34
	lw x4, 8 ( x8 )
	addi x5, x1, 1
	addi x3, x3, 1
	lw x7, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	andi x9, x7, 255
	addi x4, x4, -1
	sw x4, 8 ( x8 )
	sw x5, 0 ( x8 )
	sb x7, 0 ( x1 )
	lw x1, 20 ( x8 )
	nop
	beq x3, x1, LBB0_15
LBB0_13:                                //  %lor.lhs.false42
	xori x1, x9, 10
	bgtu x1, x0, LBB0_17
LBB0_14:                                //  %lor.lhs.false42
	lhu x1, 12 ( x8 )
	nop
	andi x1, x1, 1
	beqz x1, LBB0_17
LBB0_15:                                //  %if.then50
	add x11, x0, x8
	add x8, x0, x9
	call $_fflush_r
	add x9, x0, x8
	beqz x10, LBB0_17
LBB0_16:
	not x9, x0
LBB0_17:                                //  %cleanup
	add x10, x0, x9
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
	.size	$__swbuf_r, ($func_end0)-($__swbuf_r)
	.cfi_endproc

	.globl	$__swbuf
	.type	$__swbuf,@function
$__swbuf:                               //  @__swbuf
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	add x3, x0, x11
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x4, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	lw x4, 0 ( x4 )
	add x11, x0, x10
	add x12, x0, x3
	add x10, x0, x4
	j $__swbuf_r
$func_end1:
	.size	$__swbuf, ($func_end1)-($__swbuf)
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
