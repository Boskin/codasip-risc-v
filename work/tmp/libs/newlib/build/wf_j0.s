	.text
	.file	"wf_j0.bc"
	.globl	$j0f
	.type	$j0f,@function
$j0f:                                   //  @j0f
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
	add x8, x0, x10
	call $__ieee754_j0f
	add x3, x0, x10
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	lui x1, $__fdlib_version >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	xori x1, x1, -1
	beqz x1, LBB0_10
LBB0_1:                                 //  %lor.lhs.false
	sw x3, 4 ( x2 )                 //  4-byte Folded Spill
	add x10, x0, x8
	call $__fpclassifyf
	bgtu x10, x0, LBB0_3
LBB0_2:
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	jalr x0, LBB0_10 ( x0 )
LBB0_3:                                 //  %if.end
	add x10, x0, x8
	call $fabsf
	ori x28, x0, 1514737627 & 0xfff
	slli x28, x28, 20
	lui x1, 1514737627 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__gtsf2
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	ble x10, x0, LBB0_10
LBB0_4:                                 //  %if.then5
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	addi x3, x0, 5
	addi x4, x2, 8
	or x1, x1, x28
	sw x3, 8 ( x2 )
	sw x1, 4 ( x4 )
	sw x0, 32 ( x4 )
	add x10, x0, x8
	call $__extendsfdf2
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__fdlib_version >> 12 & 0xfffff
	or x1, x1, x28
	lw x1, 0 ( x1 )
	addi x3, x2, 8
	sw x10, 16 ( x3 )
	sw x11, 12 ( x3 )
	sw x0, 28 ( x3 )
	xori x1, x1, 2
	sw x11, 28 ( x2 )
	sw x10, 8 ( x3 )
	sw x0, 24 ( x3 )
	beqz x1, LBB0_6
LBB0_5:                                 //  %if.else
	addi x10, x2, 8
	call $matherr
	bgtu x10, x0, LBB0_7
LBB0_6:                                 //  %if.end15.sink.split
	call $__errno
	addi x1, x0, 34
	sw x1, 0 ( x10 )
LBB0_7:                                 //  %if.end15
	lw x8, 40 ( x2 )
	nop
	beqz x8, LBB0_9
LBB0_8:                                 //  %if.then19
	call $__errno
	sw x8, 0 ( x10 )
LBB0_9:                                 //  %if.end22
	addi x1, x2, 8
	lw x10, 24 ( x1 )
	lw x11, 36 ( x2 )
	nop
	call $__truncdfsf2
	add x3, x0, x10
LBB0_10:                                //  %cleanup
	add x10, x0, x3
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
	.size	$j0f, ($func_end0)-($j0f)
	.cfi_endproc

	.globl	$y0f
	.type	$y0f,@function
$y0f:                                   //  @y0f
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
	add x8, x0, x10
	call $__ieee754_y0f
	add x3, x0, x10
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	lui x1, $__fdlib_version >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	xori x1, x1, -1
	beqz x1, LBB1_19
LBB1_1:                                 //  %lor.lhs.false
	sw x3, 4 ( x2 )                 //  4-byte Folded Spill
	add x10, x0, x8
	call $__fpclassifyf
	bgtu x10, x0, LBB1_3
LBB1_2:
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	jalr x0, LBB1_19 ( x0 )
LBB1_3:                                 //  %if.end
	add x11, x0, x0
	add x10, x0, x8
	call $__lesf2
	bgt x10, x0, LBB1_11
LBB1_4:                                 //  %if.then4
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.1 >> 12 & 0xfffff
	srli x28, x28, 20
	slti x3, x0, 1
	addi x4, x2, 8
	or x1, x1, x28
	sw x3, 8 ( x2 )
	sw x1, 4 ( x4 )
	sw x0, 32 ( x4 )
	add x10, x0, x8
	call $__extendsfdf2
	addi x5, x2, 8
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__fdlib_version >> 12 & 0xfffff
	or x1, x1, x28
	ori x28, x0, -1048576 & 0xfff
	slli x28, x28, 20
	lw x1, 0 ( x1 )
	lui x3, -1048576 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, -940572673 & 0xfff
	slli x28, x28, 20
	lui x4, -940572673 >> 12 & 0xfffff
	srli x28, x28, 20
	sw x10, 16 ( x5 )
	sw x11, 12 ( x5 )
	sw x11, 28 ( x2 )
	sw x10, 8 ( x5 )
	or x4, x4, x28
	add x7, x0, x0
	beq x1, x7, LBB1_6
LBB1_5:                                 //  %if.then4
	add x4, x0, x3
LBB1_6:                                 //  %if.then4
	sw x4, 28 ( x5 )
	lui x3, -536870912 >> 12 & 0xfffff
	ori x28, x0, -536870912 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	beq x1, x7, LBB1_8
LBB1_7:                                 //  %if.then4
	add x3, x0, x7
LBB1_8:                                 //  %if.then4
	sw x3, 24 ( x5 )
	xori x1, x1, 2
	beqz x1, LBB1_10
LBB1_9:                                 //  %if.else15
	addi x10, x2, 8
	call $matherr
	bgtu x10, x0, LBB1_16
LBB1_10:                                //  %if.end20.sink.split
	call $__errno
	addi x1, x0, 33
	jalr x0, LBB1_15 ( x0 )
LBB1_11:                                //  %if.end30
	ori x28, x0, 1514737627 & 0xfff
	slli x28, x28, 20
	lui x1, 1514737627 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__gtsf2
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	ble x10, x0, LBB1_19
LBB1_12:                                //  %if.then33
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.1 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x3, x0, 5
	addi x4, x2, 8
	or x1, x1, x28
	sw x3, 8 ( x2 )
	sw x1, 4 ( x4 )
	sw x0, 32 ( x4 )
	add x10, x0, x8
	call $__extendsfdf2
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__fdlib_version >> 12 & 0xfffff
	or x1, x1, x28
	lw x1, 0 ( x1 )
	addi x3, x2, 8
	sw x10, 16 ( x3 )
	sw x11, 12 ( x3 )
	sw x0, 28 ( x3 )
	xori x1, x1, 2
	sw x11, 28 ( x2 )
	sw x10, 8 ( x3 )
	sw x0, 24 ( x3 )
	beqz x1, LBB1_14
LBB1_13:                                //  %if.else45
	addi x10, x2, 8
	call $matherr
	bgtu x10, x0, LBB1_16
LBB1_14:                                //  %if.end51.sink.split
	call $__errno
	addi x1, x0, 34
LBB1_15:                                //  %if.end51
	sw x1, 0 ( x10 )
LBB1_16:                                //  %if.end51
	lw x8, 40 ( x2 )
	nop
	beqz x8, LBB1_18
LBB1_17:                                //  %if.then55
	call $__errno
	sw x8, 0 ( x10 )
LBB1_18:                                //  %if.end58
	addi x1, x2, 8
	lw x10, 24 ( x1 )
	lw x11, 36 ( x2 )
	nop
	call $__truncdfsf2
	add x3, x0, x10
LBB1_19:                                //  %cleanup
	add x10, x0, x3
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
	.size	$y0f, ($func_end1)-($y0f)
	.cfi_endproc

	.address_space	0	
	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"j0f"
	.size	$.str, 4

	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
$.str.1:
	.asciz	"y0f"
	.size	$.str.1, 4


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
