	.text
	.file	"s_llround.bc"
	.globl	$llround
	.type	$llround,@function
$llround:                               //  @llround
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11, 10, 11
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
	add x9, x0, x10
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	srli x1, x11, 20
	lui x3, 1048575 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	andi x8, x1, 2047
	srai x4, x11, 31
	and x3, x3, x11
	lui x5, 1048576>>12 &0xfffff
	addi x1, x8, -1023
	addi x7, x0, 19
	or x10, x5, x3
	ori x12, x4, 1
	bgt x1, x7, LBB0_7
LBB0_1:                                 //  %if.then
	addi x3, x0, 1022
	bgtu x8, x3, LBB0_15
LBB0_2:                                 //  %if.then7
	not x3, x0
	add x11, x0, x0
	add x10, x0, x11
	bgt x3, x1, LBB0_4
LBB0_3:                                 //  %if.then7
	add x10, x0, x12
LBB0_4:                                 //  %if.then7
	bgt x3, x1, LBB0_6
LBB0_5:                                 //  %if.then7
	srai x11, x12, 31
LBB0_6:                                 //  %if.then7
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
LBB0_7:                                 //  %if.else15
	addi x3, x0, 62
	bgtu x1, x3, LBB0_14
LBB0_8:                                 //  %if.then18
	slti x1, x1, 52
	sw x12, 8 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB0_10
LBB0_9:                                 //  %if.then21
	addi x12, x8, -1043
	add x11, x0, x0
	sw x9, 4 ( x2 )                 //  4-byte Folded Spill
	call $__ashldi3
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	addi x1, x8, -1075
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sll x1, x3, x1
	or x10, x1, x10
	jalr x0, LBB0_16 ( x0 )
LBB0_10:                                //  %if.else28
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x12, x8, -1043
	or x1, x1, x28
	srl x1, x1, x12
	add x3, x9, x1
	sw x3, 4 ( x2 )                 //  4-byte Folded Spill
	sltu x1, x3, x1
	andi x1, x1, 1
	add x10, x10, x1
	add x11, x0, x0
	call $__ashldi3
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	addi x1, x0, 1075
	sub x1, x1, x8
	addi x3, x0, 32
	bgeu x1, x3, LBB0_12
LBB0_11:
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	srl x1, x3, x1
	or x10, x1, x10
	jalr x0, LBB0_16 ( x0 )
LBB0_12:                                //  %if.else28
	add x1, x0, x0
	or x10, x1, x10
	jalr x0, LBB0_16 ( x0 )
LBB0_14:                                //  %if.else49
	add x10, x0, x9
	call $__fixdfdi
	jalr x0, LBB0_17 ( x0 )
LBB0_15:                                //  %if.else10
	lui x3, 524288>>12 
	addi x4, x0, 1043
	srl x1, x3, x1
	sub x3, x4, x8
	add x1, x10, x1
	srl x10, x1, x3
	add x11, x0, x0
LBB0_16:                                //  %if.end52
	srai x13, x12, 31
	call $__muldi3
LBB0_17:                                //  %cleanup
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi7:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi8:
	.cfi_adjust_cfa_offset -24
$cfi9:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$llround, ($func_end0)-($llround)
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
