	.text
	.file	"sf_cbrt.bc"
	.globl	$cbrtf
	.type	$cbrtf,@function
$cbrtf:                                 //  @cbrtf
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
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x3, x1, x10
	xor x8, x10, x3
	lui x1, 2139095040>>12 &0xfffff
	bgt x1, x8, LBB0_2
LBB0_1:                                 //  %if.then
	add x11, x0, x10
	call $__addsf3
	jalr x0, LBB0_8 ( x0 )
LBB0_2:                                 //  %if.end
	beqz x8, LBB0_8
LBB0_3:                                 //  %do.body4
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 709958130 & 0xfff
	slli x28, x28, 20
	lui x1, 709958130 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 642849266 & 0xfff
	slli x28, x28, 20
	lui x3, 642849266 >> 12 & 0xfffff
	srli x28, x28, 20
	lui x4, 8388608>>12 &0xfffff
	or x3, x3, x28
	bgt x4, x8, LBB0_5
LBB0_4:                                 //  %do.body4
	add x3, x0, x1
LBB0_5:                                 //  %do.body4
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	lui x11, 1266679808>>12 &0xfffff
	add x10, x0, x8
	call $__mulsf3
	lui x1, 8388608>>12 &0xfffff
	bgt x1, x8, LBB0_7
LBB0_6:                                 //  %do.body4
	add x10, x0, x8
LBB0_7:                                 //  %do.body4
	addi x11, x0, 3
	call $__udivsi3
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x1, x10
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x10
	call $__mulsf3
	add x11, x0, x8
	call $__divsf3
	add x1, x0, x10
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1057683632 >> 12 & 0xfffff
	ori x28, x0, 1057683632 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x8, x0, x10
	lui x1, 1068828496 >> 12 & 0xfffff
	ori x28, x0, 1068828496 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	lui x1, -1087074575 >> 12 & 0xfffff
	ori x28, x0, -1087074575 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x1, x28
	add x11, x0, x8
	call $__divsf3
	add x1, x0, x10
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	lui x3, 1070446299 >> 12 & 0xfffff
	ori x28, x0, 1070446299 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x3, x28
	add x11, x0, x1
	call $__divsf3
	lui x1, 1052171118 >> 12 & 0xfffff
	ori x28, x0, 1052171118 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	or x10, x1, x10
LBB0_8:                                 //  %cleanup
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
	.size	$cbrtf, ($func_end0)-($cbrtf)
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
