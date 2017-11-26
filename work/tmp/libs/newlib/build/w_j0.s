	.text
	.file	"w_j0.bc"
	.globl	$j0
	.type	$j0,@function
$j0:                                    //  @j0
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -64
$cfi2:
	.cfi_adjust_cfa_offset 64
	sw x1, 60 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 52 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	call $__ieee754_j0
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
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__fpclassifyd
	bgtu x10, x0, LBB0_3
LBB0_2:
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	jalr x0, LBB0_10 ( x0 )
LBB0_3:                                 //  %if.end
	add x10, x0, x8
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $fabs
	ori x28, x0, 1413754136 & 0xfff
	slli x28, x28, 20
	lui x1, 1413754136 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1128866299 & 0xfff
	slli x28, x28, 20
	lui x1, 1128866299 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__gtdf2
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	ble x10, x0, LBB0_10
LBB0_4:                                 //  %if.then5
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $__fdlib_version >> 12 & 0xfffff
	or x3, x3, x28
	lw x3, 0 ( x3 )
	addi x7, x2, 16
	addi x4, x0, 5
	sw x8, 16 ( x7 )
	xori x3, x3, 2
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x5, 12 ( x7 )
	sw x0, 28 ( x7 )
	sw x4, 16 ( x2 )
	sw x1, 4 ( x7 )
	sw x0, 32 ( x7 )
	sw x5, 36 ( x2 )
	sw x8, 8 ( x7 )
	sw x0, 24 ( x7 )
	beqz x3, LBB0_6
LBB0_5:                                 //  %if.else
	addi x10, x2, 16
	call $matherr
	bgtu x10, x0, LBB0_7
LBB0_6:                                 //  %if.end14.sink.split
	call $__errno
	addi x1, x0, 34
	sw x1, 0 ( x10 )
LBB0_7:                                 //  %if.end14
	lw x8, 48 ( x2 )
	nop
	beqz x8, LBB0_9
LBB0_8:                                 //  %if.then17
	call $__errno
	sw x8, 0 ( x10 )
LBB0_9:                                 //  %if.end20
	lw x11, 44 ( x2 )
	addi x1, x2, 16
	lw x3, 24 ( x1 )
	nop
LBB0_10:                                //  %cleanup
	add x10, x0, x3
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	lw x1, 60 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 64
$cfi5:
	.cfi_adjust_cfa_offset -64
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$j0, ($func_end0)-($j0)
	.cfi_endproc

	.globl	$y0
	.type	$y0,@function
$y0:                                    //  @y0
	.cfi_startproc
  .codasip_retval_regs 10, 11
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -64
$cfi9:
	.cfi_adjust_cfa_offset 64
	sw x1, 60 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 52 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	call $__ieee754_y0
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
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__fpclassifyd
	bgtu x10, x0, LBB1_3
LBB1_2:
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	jalr x0, LBB1_19 ( x0 )
LBB1_3:                                 //  %if.end
	add x12, x0, x0
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x13, x0, x12
	call $__ledf2
	bgt x10, x0, LBB1_11
LBB1_4:                                 //  %if.then4
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.1 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x1, x28
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
	addi x10, x2, 16
	slti x5, x0, 1
	lui x7, -940572673 >> 12 & 0xfffff
	srli x28, x28, 20
	lw x9, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x9, 16 ( x10 )
	sw x8, 12 ( x10 )
	sw x5, 16 ( x2 )
	sw x4, 4 ( x10 )
	sw x0, 32 ( x10 )
	sw x8, 36 ( x2 )
	sw x9, 8 ( x10 )
	or x4, x7, x28
	add x5, x0, x0
	beq x1, x5, LBB1_6
LBB1_5:                                 //  %if.then4
	add x4, x0, x3
LBB1_6:                                 //  %if.then4
	sw x4, 28 ( x10 )
	lui x3, -536870912 >> 12 & 0xfffff
	ori x28, x0, -536870912 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	beq x1, x5, LBB1_8
LBB1_7:                                 //  %if.then4
	add x3, x0, x5
LBB1_8:                                 //  %if.then4
	sw x3, 24 ( x10 )
	xori x1, x1, 2
	beqz x1, LBB1_10
LBB1_9:                                 //  %if.else13
	addi x10, x2, 16
	call $matherr
	bgtu x10, x0, LBB1_16
LBB1_10:                                //  %if.end18.sink.split
	call $__errno
	addi x1, x0, 33
	jalr x0, LBB1_15 ( x0 )
LBB1_11:                                //  %if.end26
	ori x28, x0, 1413754136 & 0xfff
	slli x28, x28, 20
	lui x1, 1413754136 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1128866299 & 0xfff
	slli x28, x28, 20
	lui x1, 1128866299 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__gtdf2
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	ble x10, x0, LBB1_19
LBB1_12:                                //  %if.then28
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.1 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $__fdlib_version & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $__fdlib_version >> 12 & 0xfffff
	or x3, x3, x28
	lw x3, 0 ( x3 )
	addi x7, x2, 16
	addi x4, x0, 5
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x5, 16 ( x7 )
	xori x3, x3, 2
	sw x8, 12 ( x7 )
	sw x0, 28 ( x7 )
	sw x4, 16 ( x2 )
	sw x1, 4 ( x7 )
	sw x0, 32 ( x7 )
	sw x8, 36 ( x2 )
	sw x5, 8 ( x7 )
	sw x0, 24 ( x7 )
	beqz x3, LBB1_14
LBB1_13:                                //  %if.else38
	addi x10, x2, 16
	call $matherr
	bgtu x10, x0, LBB1_16
LBB1_14:                                //  %if.end44.sink.split
	call $__errno
	addi x1, x0, 34
LBB1_15:                                //  %if.end44
	sw x1, 0 ( x10 )
LBB1_16:                                //  %if.end44
	lw x8, 48 ( x2 )
	nop
	beqz x8, LBB1_18
LBB1_17:                                //  %if.then47
	call $__errno
	sw x8, 0 ( x10 )
LBB1_18:                                //  %if.end50
	lw x11, 44 ( x2 )
	addi x1, x2, 16
	lw x3, 24 ( x1 )
	nop
LBB1_19:                                //  %cleanup
	add x10, x0, x3
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	lw x1, 60 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 64
$cfi12:
	.cfi_adjust_cfa_offset -64
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$y0, ($func_end1)-($y0)
	.cfi_endproc

	.address_space	0	
	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"j0"
	.size	$.str, 3

	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
$.str.1:
	.asciz	"y0"
	.size	$.str.1, 3


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
