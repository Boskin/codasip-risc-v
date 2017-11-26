	.text
	.file	"mbtowc_r.bc"
	.globl	$__ascii_mbtowc
	.type	$__ascii_mbtowc,@function
$__ascii_mbtowc:                        //  @__ascii_mbtowc
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -16
$cfi2:
	.cfi_adjust_cfa_offset 16
	add x10, x0, x0
	bne x11, x10, LBB0_2
LBB0_1:
	addi x11, x2, 6
LBB0_2:                                 //  %entry
	beqz x12, LBB0_6
LBB0_3:                                 //  %if.end3
	bgtu x13, x0, LBB0_5
LBB0_4:
	addi x10, x0, -2
	jalr x0, LBB0_6 ( x0 )
LBB0_5:                                 //  %if.end6
	lbu x3, 0 ( x12 )
	nop
	sh x3, 0 ( x11 )
	lbu x3, 0 ( x12 )
	nop
	sltu x3, x0, x3
	andi x10, x3, 1
LBB0_6:                                 //  %cleanup
	addi x2, x2, 16
$cfi3:
	.cfi_adjust_cfa_offset -16
$cfi4:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__ascii_mbtowc, ($func_end0)-($__ascii_mbtowc)
	.cfi_endproc

	.globl	$_mbtowc_r
	.type	$_mbtowc_r,@function
$_mbtowc_r:                             //  @_mbtowc_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi5:
	.cfi_def_cfa 2, 0
$cfi6:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi7:
	.cfi_adjust_cfa_offset 40
	sw x1, 36 ( x2 )
$cfi8:
	.cfi_offset 1, -4
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	sw x14, 24 ( x2 )               //  4-byte Folded Spill
	sw x13, 20 ( x2 )               //  4-byte Folded Spill
	sw x12, 16 ( x2 )               //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x10
	ori x28, x0, $__mbtowc & 0xfff
	slli x28, x28, 20
	lui x1, $__mbtowc >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	call $__locale_charset
	add x1, x0, x10
	add x10, x0, x8
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	lw x13, 20 ( x2 )               //  4-byte Folded Reload
	add x14, x0, x1
	lw x15, 24 ( x2 )               //  4-byte Folded Reload
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	call_reg x1
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi9:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi10:
	.cfi_adjust_cfa_offset -40
$cfi11:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$_mbtowc_r, ($func_end1)-($_mbtowc_r)
	.cfi_endproc

	.address_space	0	
	.type	$__mbtowc,@object       //  @__mbtowc
	.data
	.globl	$__mbtowc
	.p2align	2
$__mbtowc:
	.long	($__ascii_mbtowc)
	.size	$__mbtowc, 4


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
