	.text
	.file	"wcrtomb.bc"
	.globl	$_wcrtomb_r
	.type	$_wcrtomb_r,@function
$_wcrtomb_r:                            //  @_wcrtomb_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -48
$cfi2:
	.cfi_adjust_cfa_offset 48
	sw x1, 44 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	sw x13, 20 ( x2 )               //  4-byte Folded Spill
	sw x12, 8 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, $__wctomb & 0xfff
	slli x28, x28, 20
	lui x1, $__wctomb >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	call $__locale_charset
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	add x1, x0, x10
	sw x8, 4 ( x2 )                 //  4-byte Folded Spill
	bgtu x11, x0, LBB0_2
LBB0_1:                                 //  %if.then
	addi x11, x2, 26
	add x12, x0, x0
	add x10, x0, x8
	jalr x0, LBB0_3 ( x0 )
LBB0_2:                                 //  %if.else
	add x10, x0, x8
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
LBB0_3:                                 //  %if.end
	add x13, x0, x1
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x14, x0, x8
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	xori x1, x10, -1
	bgtu x1, x0, LBB0_5
LBB0_4:                                 //  %if.then6
	addi x1, x0, 138
	sw x0, 0 ( x8 )
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
	not x10, x0
LBB0_5:                                 //  %cleanup
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	lw x1, 44 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 48
$cfi5:
	.cfi_adjust_cfa_offset -48
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$_wcrtomb_r, ($func_end0)-($_wcrtomb_r)
	.cfi_endproc

	.globl	$wcrtomb
	.type	$wcrtomb,@function
$wcrtomb:                               //  @wcrtomb
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -48
$cfi9:
	.cfi_adjust_cfa_offset 48
	sw x1, 44 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	sw x12, 20 ( x2 )               //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $__wctomb & 0xfff
	slli x28, x28, 20
	lui x3, $__wctomb >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	lw x8, 0 ( x1 )
	lw x1, 0 ( x3 )
	nop
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	call $__locale_charset
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	add x1, x0, x10
	sw x8, 4 ( x2 )                 //  4-byte Folded Spill
	bgtu x11, x0, LBB1_2
LBB1_1:                                 //  %if.then
	addi x11, x2, 26
	add x12, x0, x0
	add x10, x0, x8
	jalr x0, LBB1_3 ( x0 )
LBB1_2:                                 //  %if.else
	add x10, x0, x8
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
LBB1_3:                                 //  %if.end
	add x13, x0, x1
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x14, x0, x8
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	xori x1, x10, -1
	bgtu x1, x0, LBB1_5
LBB1_4:                                 //  %if.then6
	addi x1, x0, 138
	sw x0, 0 ( x8 )
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
	not x10, x0
LBB1_5:                                 //  %cleanup
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	lw x1, 44 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 48
$cfi12:
	.cfi_adjust_cfa_offset -48
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$wcrtomb, ($func_end1)-($wcrtomb)
	.cfi_endproc

	.address_space	0	
	.address_space	0	

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
