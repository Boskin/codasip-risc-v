	.text
	.file	"sf_floor.bc"
	.globl	$floorf
	.type	$floorf,@function
$floorf:                                //  @floorf
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
	add x8, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x3, x1, x8
	srli x1, x3, 23
	addi x4, x1, -127
	addi x1, x0, 22
	bgt x4, x1, LBB0_11
LBB0_1:                                 //  %if.then
	ori x28, x0, 1065353215 & 0xfff
	slli x28, x28, 20
	lui x1, 1065353215 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x3, x1, LBB0_6
LBB0_2:                                 //  %if.then2
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	ori x28, x0, 1900671690 & 0xfff
	slli x28, x28, 20
	lui x1, 1900671690 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__addsf3
	add x11, x0, x0
	call $__gtsf2
	ble x10, x0, LBB0_7
LBB0_3:                                 //  %if.then4
	add x1, x0, x0
	bgez x8, LBB0_8
LBB0_4:                                 //  %if.else
	ori x28, x0, -1082130432 & 0xfff
	slli x28, x28, 20
	lui x1, -1082130432 >> 12 & 0xfffff
	srli x28, x28, 20
	add x3, x0, x0
	or x1, x1, x28
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	beq x4, x3, LBB0_7
LBB0_5:                                 //  %if.else
	add x8, x0, x1
	jalr x0, LBB0_7 ( x0 )
LBB0_6:                                 //  %if.else11
	ori x28, x0, 8388607 & 0xfff
	slli x28, x28, 20
	lui x1, 8388607 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	srl x3, x1, x4
	and x1, x8, x3
	bgtu x1, x0, LBB0_9
LBB0_7:
	add x1, x0, x8
LBB0_8:                                 //  %cleanup
	add x10, x0, x1
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
LBB0_9:                                 //  %if.end16
	sw x3, 4 ( x2 )                 //  4-byte Folded Spill
	sw x4, 8 ( x2 )                 //  4-byte Folded Spill
	ori x28, x0, 1900671690 & 0xfff
	slli x28, x28, 20
	lui x1, 1900671690 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__addsf3
	add x11, x0, x0
	call $__gtsf2
	add x1, x0, x8
	ble x10, x0, LBB0_8
LBB0_10:                                //  %if.then19
	lui x1, 8388608>>12 &0xfffff
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	srl x1, x1, x3
	srai x3, x8, 31
	and x1, x1, x3
	add x1, x8, x1
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	not x3, x3
	and x1, x3, x1
	jalr x0, LBB0_8 ( x0 )
LBB0_11:                                //  %if.else28
	add x10, x0, x8
	add x11, x0, x8
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	call $__addsf3
	lui x1, 2139095040>>12 &0xfffff
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bgtu x1, x3, LBB0_13
LBB0_12:                                //  %if.else28
	add x8, x0, x10
LBB0_13:                                //  %if.else28
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
	.size	$floorf, ($func_end0)-($floorf)
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
