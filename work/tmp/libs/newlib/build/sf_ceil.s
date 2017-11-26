	.text
	.file	"sf_ceil.bc"
	.globl	$ceilf
	.type	$ceilf,@function
$ceilf:                                 //  @ceilf
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 10
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
	srli x1, x8, 23
	addi x3, x1, -127
	addi x1, x0, 22
	bgt x3, x1, LBB0_14
LBB0_1:                                 //  %if.then
	ori x28, x0, 1065353215 & 0xfff
	slli x28, x28, 20
	lui x1, 1065353215 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_9
LBB0_2:                                 //  %if.then2
	ori x28, x0, 1900671690 & 0xfff
	slli x28, x28, 20
	lui x1, 1900671690 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	call $__addsf3
	add x11, x0, x0
	call $__gtsf2
	bgt x10, x0, LBB0_5
LBB0_3:
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
LBB0_4:                                 //  %cleanup
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
LBB0_5:                                 //  %if.then4
	add x3, x0, x0
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bgt x0, x1, LBB0_4
LBB0_6:                                 //  %if.else
	beq x8, x3, LBB0_8
LBB0_7:                                 //  %if.else
	lui x1, 1065353216>>12 &0xfffff
LBB0_8:                                 //  %if.else
	add x10, x0, x1
	jalr x0, LBB0_4 ( x0 )
LBB0_9:                                 //  %if.else11
	ori x28, x0, 8388607 & 0xfff
	slli x28, x28, 20
	lui x1, 8388607 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	srl x8, x1, x3
	and x1, x10, x8
	beqz x1, LBB0_4
LBB0_10:                                //  %if.end16
	sw x3, 4 ( x2 )                 //  4-byte Folded Spill
	ori x28, x0, 1900671690 & 0xfff
	slli x28, x28, 20
	lui x1, 1900671690 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	call $__addsf3
	add x11, x0, x0
	call $__gtsf2
	ble x10, x0, LBB0_3
LBB0_11:                                //  %if.then19
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	add x1, x0, x0
	ble x3, x1, LBB0_13
LBB0_12:
	lui x1, 8388608>>12 &0xfffff
	lw x4, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	srl x1, x1, x4
LBB0_13:                                //  %if.then19
	add x1, x3, x1
	not x3, x8
	and x10, x3, x1
	jalr x0, LBB0_4 ( x0 )
LBB0_14:                                //  %if.else28
	add x11, x0, x10
	sw x8, 8 ( x2 )                 //  4-byte Folded Spill
	add x8, x0, x10
	call $__addsf3
	lui x1, 2139095040>>12 &0xfffff
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bgtu x1, x4, LBB0_16
LBB0_15:                                //  %if.else28
	add x8, x0, x10
LBB0_16:                                //  %if.else28
	add x10, x0, x8
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
	.size	$ceilf, ($func_end0)-($ceilf)
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
