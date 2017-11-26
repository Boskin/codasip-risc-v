	.text
	.file	"sf_nextafter.bc"
	.globl	$nextafterf
	.type	$nextafterf,@function
$nextafterf:                            //  @nextafterf
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
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x8, x1, x10
	lui x3, 2139095040>>12 &0xfffff
	bgtu x8, x3, LBB0_2
LBB0_1:                                 //  %entry
	and x1, x1, x11
	lui x3, 2139095041 >> 12 & 0xfffff
	ori x28, x0, 2139095041 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	bgtu x3, x1, LBB0_4
LBB0_2:                                 //  %if.then
	call $__addsf3
	add x4, x0, x10
LBB0_3:                                 //  %cleanup
	add x10, x0, x4
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
LBB0_4:                                 //  %if.end
	sw x11, 4 ( x2 )                //  4-byte Folded Spill
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	call $__eqsf2
	bgtu x10, x0, LBB0_6
LBB0_5:
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	jalr x0, LBB0_3 ( x0 )
LBB0_6:                                 //  %if.end11
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	bgtu x8, x0, LBB0_9
LBB0_7:                                 //  %do.body14
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x1, x1, x3
	ori x8, x1, 1
	add x10, x0, x8
	add x11, x0, x8
	call $__mulsf3
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	call $__eqsf2
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	add x1, x0, x0
	beq x10, x1, LBB0_3
LBB0_8:                                 //  %do.body14
	add x4, x0, x8
	jalr x0, LBB0_3 ( x0 )
LBB0_9:                                 //  %if.end22
	add x10, x0, x1
	bgt x0, x10, LBB0_11
LBB0_10:                                //  %if.then24
	slt x1, x3, x10
	jalr x0, LBB0_12 ( x0 )
LBB0_11:                                //  %if.else30
	not x1, x0
	add x4, x0, x3
	slt x3, x4, x10
	slt x1, x1, x4
	or x1, x3, x1
LBB0_12:                                //  %if.end39
	lui x3, 2139095040>>12 &0xfffff
	beqz x1, LBB0_14
LBB0_13:
	not x1, x0
	jalr x0, LBB0_15 ( x0 )
LBB0_14:                                //  %if.end39
	slti x1, x0, 1
LBB0_15:                                //  %if.end39
	add x4, x10, x1
	and x1, x3, x4
	bne x1, x3, LBB0_3
LBB0_16:                                //  %if.then42
	add x11, x0, x10
	jalr x0, LBB0_2 ( x0 )
$func_end0:
	.size	$nextafterf, ($func_end0)-($nextafterf)
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
