	.text
	.file	"s_cos.bc"
	.globl	$cos
	.type	$cos,@function
$cos:                                   //  @cos
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi2:
	.cfi_adjust_cfa_offset 40
	sw x1, 36 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 1072243195 & 0xfff
	slli x28, x28, 20
	lui x3, 1072243195 >> 12 & 0xfffff
	srli x28, x28, 20
	and x1, x1, x11
	or x3, x3, x28
	bgtu x1, x3, LBB0_2
LBB0_1:                                 //  %if.then
	add x12, x0, x0
	add x13, x0, x12
	call $__kernel_cos
	jalr x0, LBB0_12 ( x0 )
LBB0_2:                                 //  %if.else
	lui x3, 2146435072>>12 &0xfffff
	bgtu x3, x1, LBB0_4
LBB0_3:                                 //  %if.then2
	add x12, x0, x10
	add x13, x0, x11
	call $__subdf3
	jalr x0, LBB0_12 ( x0 )
LBB0_4:                                 //  %if.else3
	addi x8, x2, 8
	add x12, x0, x8
	call $__ieee754_rem_pio2
	andi x1, x10, 3
	xori x3, x1, 2
	beqz x3, LBB0_9
LBB0_5:                                 //  %if.else3
	xori x3, x1, 1
	beqz x3, LBB0_8
LBB0_6:                                 //  %if.else3
	bgtu x1, x0, LBB0_11
LBB0_7:                                 //  %sw.bb
	lw x12, 8 ( x8 )
	ori x1, x8, 4
	lw x11, 0 ( x1 )
	lw x13, 20 ( x2 )
	lw x10, 8 ( x2 )
	nop
	call $__kernel_cos
	jalr x0, LBB0_12 ( x0 )
LBB0_8:                                 //  %sw.bb8
	ori x1, x8, 4
	lw x12, 8 ( x8 )
	lw x11, 0 ( x1 )
	lw x13, 20 ( x2 )
	lw x10, 8 ( x2 )
	slti x14, x0, 1
	call $__kernel_sin
	jalr x0, LBB0_10 ( x0 )
LBB0_9:                                 //  %sw.bb13
	ori x1, x8, 4
	lw x12, 8 ( x8 )
	lw x11, 0 ( x1 )
	lw x13, 20 ( x2 )
	lw x10, 8 ( x2 )
	nop
	call $__kernel_cos
LBB0_10:                                //  %cleanup
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	xor x11, x1, x11
	jalr x0, LBB0_12 ( x0 )
LBB0_11:                                //  %sw.default
	lw x12, 8 ( x8 )
	ori x1, x8, 4
	lw x11, 0 ( x1 )
	lw x13, 20 ( x2 )
	lw x10, 8 ( x2 )
	slti x14, x0, 1
	call $__kernel_sin
LBB0_12:                                //  %cleanup
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi5:
	.cfi_adjust_cfa_offset -40
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$cos, ($func_end0)-($cos)
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
