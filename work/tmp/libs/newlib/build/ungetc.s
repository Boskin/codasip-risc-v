	.text
	.file	"ungetc.bc"
	.globl	$__submore
	.type	$__submore,@function
$__submore:                             //  @__submore
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
	lw x11, 48 ( x8 )
	addi x1, x8, 64
	bne x11, x1, LBB0_4
LBB0_1:                                 //  %if.then
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	addi x11, x0, 1024
	call $_malloc_r
	add x1, x0, x10
	bgtu x1, x0, LBB0_3
LBB0_2:
	not x10, x0
	jalr x0, LBB0_7 ( x0 )
LBB0_3:                                 //  %if.end
	sw x1, 48 ( x8 )
	lb x3, 66 ( x8 )
	addi x4, x0, 1024
	sw x4, 52 ( x8 )
	addi x4, x1, 1021
	add x10, x0, x0
	sb x3, 1023 ( x1 )
	lb x3, 65 ( x8 )
	nop
	sb x3, 1022 ( x1 )
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	lb x3, 0 ( x3 )
	nop
	sb x3, 1021 ( x1 )
	sw x4, 0 ( x8 )
	jalr x0, LBB0_7 ( x0 )
LBB0_4:                                 //  %if.end9
	lw x1, 52 ( x8 )
	nop
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	slli x12, x1, 1
	sw x12, 16 ( x2 )               //  4-byte Folded Spill
	call $_realloc_r
	bgtu x10, x0, LBB0_6
LBB0_5:
	not x10, x0
	jalr x0, LBB0_7 ( x0 )
LBB0_6:                                 //  %if.end17
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	nop
	add x1, x12, x10
	sw x1, 4 ( x2 )                 //  4-byte Folded Spill
	add x11, x0, x10
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x1
	call $memcpy
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 0 ( x8 )
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 48 ( x8 )
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 52 ( x8 )
	add x10, x0, x0
LBB0_7:                                 //  %cleanup
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
	.size	$__submore, ($func_end0)-($__submore)
	.cfi_endproc

	.globl	$_ungetc_r
	.type	$_ungetc_r,@function
$_ungetc_r:                             //  @_ungetc_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi9:
	.cfi_adjust_cfa_offset 40
	sw x1, 36 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x12
	xori x1, x11, -1
	not x7, x0
	beqz x1, LBB1_32
LBB1_1:                                 //  %do.body
	beqz x10, LBB1_4
LBB1_2:                                 //  %land.lhs.true
	lw x1, 56 ( x10 )
	nop
	bgtu x1, x0, LBB1_4
LBB1_3:                                 //  %if.then2
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	call $__sinit
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	not x7, x0
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
LBB1_4:                                 //  %if.end3
	lh x1, 12 ( x8 )
	lui x3, 8192>>12 
	and x4, x3, x1
	bgtu x4, x0, LBB1_6
LBB1_5:                                 //  %if.then14
	or x1, x3, x1
	sh x1, 12 ( x8 )
	ori x28, x0, -8193 & 0xfff
	lw x3, 100 ( x8 )
	slli x28, x28, 20
	lui x4, -8193 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	and x3, x4, x3
	sw x3, 100 ( x8 )
LBB1_6:                                 //  %do.end21
	ori x28, x0, 65503 & 0xfff
	slli x28, x28, 20
	andi x3, x1, -33
	lui x4, 65503 >> 12 & 0xfffff
	srli x28, x28, 20
	andi x5, x1, 4
	sh x3, 12 ( x8 )
	or x4, x4, x28
	bgtu x5, x0, LBB1_14
LBB1_7:                                 //  %if.then31
	andi x5, x3, 16
	beqz x5, LBB1_32
LBB1_8:                                 //  %if.end50
	andi x3, x3, 8
	bgtu x3, x0, LBB1_10
LBB1_9:
	and x1, x4, x1
	jalr x0, LBB1_13 ( x0 )
LBB1_10:                                //  %if.then55
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x8
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	call $_fflush_r
	beqz x10, LBB1_12
LBB1_11:
	not x7, x0
	jalr x0, LBB1_32 ( x0 )
LBB1_12:                                //  %if.end70
	lh x1, 12 ( x8 )
	nop
	andi x1, x1, -9
	sh x1, 12 ( x8 )
	sw x0, 8 ( x8 )
	sw x0, 24 ( x8 )
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
LBB1_13:                                //  %if.end75
	ori x1, x1, 4
	sh x1, 12 ( x8 )
LBB1_14:                                //  %if.end80
	lw x3, 48 ( x8 )
	andi x12, x11, 255
	beqz x3, LBB1_24
LBB1_15:                                //  %if.then85
	lw x4, 52 ( x8 )
	lw x1, 4 ( x8 )
	nop
	ble x4, x1, LBB1_17
LBB1_16:                                //  %if.then85.if.end105_crit_edge
	lw x3, 0 ( x8 )
	jalr x0, LBB1_23 ( x0 )
LBB1_17:                                //  %land.lhs.true89
	addi x1, x8, 64
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	sw x12, 20 ( x2 )               //  4-byte Folded Spill
	bne x3, x1, LBB1_20
LBB1_18:                                //  %if.then.i
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 1024
	call $_malloc_r
	not x7, x0
	beqz x10, LBB1_32
LBB1_19:                                //  %if.end.i
	sw x10, 48 ( x8 )
	addi x1, x0, 1024
	sw x1, 52 ( x8 )
	lb x1, 66 ( x8 )
	addi x3, x10, 1021
	sb x1, 1023 ( x10 )
	lb x1, 65 ( x8 )
	nop
	sb x1, 1022 ( x10 )
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	lb x1, 0 ( x1 )
	nop
	sb x1, 1021 ( x10 )
	sw x3, 0 ( x8 )
	jalr x0, LBB1_22 ( x0 )
LBB1_20:                                //  %if.end9.i
	slli x12, x4, 1
	add x11, x0, x3
	sw x12, 16 ( x2 )               //  4-byte Folded Spill
	sw x4, 12 ( x2 )                //  4-byte Folded Spill
	call $_realloc_r
	not x7, x0
	beqz x10, LBB1_32
LBB1_21:                                //  %if.end17.i
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	nop
	add x1, x12, x10
	sw x1, 4 ( x2 )                 //  4-byte Folded Spill
	add x11, x0, x10
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x1
	call $memcpy
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x3, 0 ( x8 )
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 48 ( x8 )
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 52 ( x8 )
LBB1_22:                                //  %if.end105
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	lw x12, 20 ( x2 )               //  4-byte Folded Reload
LBB1_23:                                //  %if.end105
	addi x1, x3, -1
	sw x1, 0 ( x8 )
	sb x11, -1 ( x3 )
	lw x1, 4 ( x8 )
	nop
	addi x1, x1, 1
	jalr x0, LBB1_30 ( x0 )
LBB1_24:                                //  %if.end120
	lw x3, 16 ( x8 )
	nop
	bgtu x3, x0, LBB1_27
LBB1_25:                                //  %if.end120.if.end152_crit_edge
	lw x1, 0 ( x8 )
LBB1_26:                                //  %if.end152
	lw x3, 4 ( x8 )
	addi x4, x8, 64
	addi x5, x0, 3
	addi x7, x8, 66
	slti x9, x0, 1
	sw x3, 60 ( x8 )
	sw x1, 56 ( x8 )
	sw x4, 48 ( x8 )
	sw x5, 52 ( x8 )
	sb x11, 66 ( x8 )
	sw x7, 0 ( x8 )
	sw x9, 4 ( x8 )
	jalr x0, LBB1_31 ( x0 )
LBB1_27:                                //  %land.lhs.true124
	lw x1, 0 ( x8 )
	nop
	bgeu x3, x1, LBB1_26
LBB1_28:                                //  %land.lhs.true130
	andi x3, x11, 255
	lbu x4, -1 ( x1 )
	nop
	bne x4, x3, LBB1_26
LBB1_29:                                //  %if.then135
	lw x3, 4 ( x8 )
	addi x1, x1, -1
	sw x1, 0 ( x8 )
	addi x1, x3, 1
LBB1_30:                                //  %return
	sw x1, 4 ( x8 )
LBB1_31:                                //  %return
	add x7, x0, x12
LBB1_32:                                //  %return
	add x10, x0, x7
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi12:
	.cfi_adjust_cfa_offset -40
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$_ungetc_r, ($func_end1)-($_ungetc_r)
	.cfi_endproc

	.globl	$ungetc
	.type	$ungetc,@function
$ungetc:                                //  @ungetc
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi14:
	.cfi_def_cfa 2, 0
$cfi15:
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
	j $_ungetc_r
$func_end2:
	.size	$ungetc, ($func_end2)-($ungetc)
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
