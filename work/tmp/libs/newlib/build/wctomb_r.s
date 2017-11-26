	.text
	.file	"wctomb_r.bc"
	.globl	$__ascii_wctomb
	.type	$__ascii_wctomb,@function
$__ascii_wctomb:                        //  @__ascii_wctomb
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	bgtu x11, x0, LBB0_2
LBB0_1:
	add x10, x0, x0
	ret
LBB0_2:                                 //  %if.end
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	and x3, x3, x12
	sltiu x3, x3, 256
	bgtu x3, x0, LBB0_4
LBB0_3:                                 //  %if.then4
	addi x3, x0, 138
	sw x3, 0 ( x10 )
	not x10, x0
	ret
LBB0_4:                                 //  %if.end5
	sb x12, 0 ( x11 )
	slti x10, x0, 1
	ret
$func_end0:
	.size	$__ascii_wctomb, ($func_end0)-($__ascii_wctomb)
	.cfi_endproc

	.globl	$_wctomb_r
	.type	$_wctomb_r,@function
$_wctomb_r:                             //  @_wctomb_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi2:
	.cfi_def_cfa 2, 0
$cfi3:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi4:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi5:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	sw x13, 16 ( x2 )               //  4-byte Folded Spill
	sw x12, 12 ( x2 )               //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $__wctomb & 0xfff
	slli x28, x28, 20
	lui x1, $__wctomb >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x8, 0 ( x1 )
	call $__locale_charset
	add x1, x0, x10
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x1
	lw x14, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call_reg x8
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi6:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi7:
	.cfi_adjust_cfa_offset -32
$cfi8:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$_wctomb_r, ($func_end1)-($_wctomb_r)
	.cfi_endproc

	.address_space	0	
	.type	$__wctomb,@object       //  @__wctomb
	.data
	.globl	$__wctomb
	.p2align	2
$__wctomb:
	.long	($__ascii_wctomb)
	.size	$__wctomb, 4


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
