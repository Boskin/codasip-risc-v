	.text
	.file	"__adjust.bc"
	.globl	$__adjust
	.type	$__adjust,@function
$__adjust:                              //  @__adjust
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
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
	add x8, x0, x12
	slti x1, x8, 309
	bgtu x1, x0, LBB0_3
LBB0_1:                                 //  %if.then
	ori x28, x0, -1048576 & 0xfff
	slli x28, x28, 20
	addi x1, x0, 34
	lui x3, -1048576 >> 12 & 0xfffff
	srli x28, x28, 20
	add x4, x0, x0
	sw x1, 0 ( x10 )
	or x11, x3, x28
	bne x13, x4, LBB0_15
LBB0_2:                                 //  %if.then
	lui x11, 2146435072>>12 &0xfffff
	jalr x0, LBB0_15 ( x0 )
LBB0_3:                                 //  %if.else
	addi x1, x0, -309
	bgt x8, x1, LBB0_5
LBB0_4:                                 //  %if.then2
	addi x1, x0, 34
	add x11, x0, x0
	sw x1, 0 ( x10 )
	add x4, x0, x11
	jalr x0, LBB0_15 ( x0 )
LBB0_5:                                 //  %if.end4
	ori x28, x0, -2147483648 & 0xfff
	lw x12, 0 ( x11 )
	sw x13, 8 ( x2 )                //  4-byte Folded Spill
	lw x13, 4 ( x11 )
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	add x10, x0, x0
	or x11, x1, x28
	sw x12, 12 ( x2 )               //  4-byte Folded Spill
	sw x13, 16 ( x2 )               //  4-byte Folded Spill
	call $__subdf3
	add x3, x0, x0
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	beq x1, x3, LBB0_7
LBB0_6:                                 //  %if.end4
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
LBB0_7:                                 //  %if.end4
	beq x1, x3, LBB0_9
LBB0_8:                                 //  %if.end4
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
LBB0_9:                                 //  %if.end4
	bgtu x8, x0, LBB0_11
LBB0_10:
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_15 ( x0 )
LBB0_11:                                //  %if.end10
	bgez x8, LBB0_13
LBB0_12:                                //  %if.then12
	sub x10, x0, x8
	call $__exp10
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__divdf3
	jalr x0, LBB0_14 ( x0 )
LBB0_13:                                //  %if.else16
	add x10, x0, x8
	call $__exp10
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
LBB0_14:                                //  %cleanup
	add x4, x0, x10
LBB0_15:                                //  %cleanup
	add x10, x0, x4
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
	.size	$__adjust, ($func_end0)-($__adjust)
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
