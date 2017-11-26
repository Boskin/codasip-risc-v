	.text
	.file	"s_round.bc"
	.globl	$round
	.type	$round,@function
$round:                                 //  @round
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
	srli x1, x11, 20
	andi x1, x1, 2047
	addi x8, x1, -1023
	addi x3, x0, 19
	bgt x8, x3, LBB0_7
LBB0_1:                                 //  %if.then
	addi x3, x0, 1022
	bgtu x1, x3, LBB0_5
LBB0_2:                                 //  %if.then5
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	not x3, x0
	and x1, x1, x11
	bne x8, x3, LBB0_4
LBB0_3:
	lui x3, 1072693248>>12 &0xfffff
	or x1, x3, x1
LBB0_4:                                 //  %if.then5
	add x3, x0, x0
	add x10, x0, x3
	jalr x0, LBB0_15 ( x0 )
LBB0_5:                                 //  %if.else
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	lui x1, 1048575 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	srl x1, x1, x8
	and x3, x11, x1
	or x3, x10, x3
	beqz x3, LBB0_16
LBB0_6:                                 //  %cleanup.thread
	lui x3, 524288>>12 
	srl x4, x3, x8
	add x3, x0, x0
	add x4, x11, x4
	not x1, x1
	and x1, x1, x4
	add x10, x0, x3
	jalr x0, LBB0_15 ( x0 )
LBB0_7:                                 //  %if.else18
	slti x3, x8, 52
	bgtu x3, x0, LBB0_13
LBB0_8:                                 //  %if.then20
	add x12, x0, x10
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x11
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	call $__adddf3
	addi x1, x0, 1024
	beq x8, x1, LBB0_10
LBB0_9:                                 //  %if.then20
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
LBB0_10:                                //  %if.then20
	beq x8, x1, LBB0_12
LBB0_11:                                //  %if.then20
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
LBB0_12:                                //  %if.then20
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
LBB0_13:                                //  %if.else25
	addi x3, x1, -1043
	not x4, x0
	srl x3, x4, x3
	and x4, x10, x3
	beqz x4, LBB0_16
LBB0_14:                                //  %cleanup41.thread
	addi x4, x0, 1074
	sub x1, x4, x1
	slti x4, x0, 1
	sll x1, x4, x1
	add x4, x10, x1
	sltu x1, x4, x1
	andi x1, x1, 1
	not x3, x3
	add x1, x11, x1
	and x10, x3, x4
	add x3, x0, x0
LBB0_15:                                //  %do.body47
	or x11, x3, x1
LBB0_16:                                //  %cleanup56
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
	.size	$round, ($func_end0)-($round)
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
