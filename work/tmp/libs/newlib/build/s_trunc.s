	.text
	.file	"s_trunc.bc"
	.globl	$trunc
	.type	$trunc,@function
$trunc:                                 //  @trunc
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
	add x5, x0, x11
	ori x28, x0, -2147483648 & 0xfff
	srli x1, x5, 20
	slli x28, x28, 20
	andi x1, x1, 2047
	lui x3, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x8, x1, -1023
	addi x4, x0, 19
	or x3, x3, x28
	bgt x8, x4, LBB0_4
LBB0_1:                                 //  %if.then
	addi x4, x0, 1022
	and x11, x3, x5
	bgtu x1, x4, LBB0_3
LBB0_2:                                 //  %do.body7
	add x10, x0, x0
	jalr x0, LBB0_11 ( x0 )
LBB0_3:                                 //  %do.body15
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	lui x1, 1048575 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	srl x1, x1, x8
	not x1, x1
	and x1, x1, x5
	or x11, x11, x1
	add x10, x0, x0
	jalr x0, LBB0_11 ( x0 )
LBB0_4:                                 //  %if.else26
	slti x3, x8, 52
	bgtu x3, x0, LBB0_10
LBB0_5:                                 //  %if.then28
	add x11, x0, x5
	add x12, x0, x10
	sw x5, 8 ( x2 )                 //  4-byte Folded Spill
	add x13, x0, x5
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	call $__adddf3
	addi x1, x0, 1024
	beq x8, x1, LBB0_7
LBB0_6:                                 //  %if.then28
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
LBB0_7:                                 //  %if.then28
	beq x8, x1, LBB0_9
LBB0_8:                                 //  %if.then28
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
LBB0_9:                                 //  %if.then28
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
LBB0_10:                                //  %do.body33
	addi x1, x1, -1043
	not x3, x0
	srl x1, x3, x1
	not x1, x1
	and x10, x1, x10
	add x11, x0, x5
LBB0_11:                                //  %cleanup
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
	.size	$trunc, ($func_end0)-($trunc)
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
