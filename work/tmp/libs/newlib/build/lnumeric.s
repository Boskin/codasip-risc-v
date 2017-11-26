	.text
	.file	"lnumeric.bc"
	.globl	$__numeric_load_locale
	.type	$__numeric_load_locale,@function
$__numeric_load_locale:                 //  @__numeric_load_locale
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
	ori x28, x0, $__nlocale_changed & 0xfff
	slli x28, x28, 20
	lui x1, $__nlocale_changed >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	slti x3, x0, 1
	sw x3, 0 ( x1 )
	ori x28, x0, $_numeric_using_locale & 0xfff
	slli x28, x28, 20
	lui x1, $_numeric_using_locale >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	ori x28, x0, $_numeric_locale & 0xfff
	slli x28, x28, 20
	lui x1, $_numeric_locale >> 12 & 0xfffff
	srli x28, x28, 20
	addi x14, x0, 3
	add x12, x0, x0
	or x16, x1, x28
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	add x15, x0, x14
	call $__part_load_locale
	add x8, x0, x10
	bgtu x8, x0, LBB0_3
LBB0_1:                                 //  %entry
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	lw x1, 0 ( x1 )
	nop
	beqz x1, LBB0_3
LBB0_2:                                 //  %if.then
	ori x28, x0, $_numeric_locale+8 & 0xfff
	slli x28, x28, 20
	lui x1, $_numeric_locale+8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	lw x10, 0 ( x1 )
	nop
	call $__fix_locale_grouping_str
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x10, 0 ( x1 )
LBB0_3:                                 //  %if.end
	add x10, x0, x8
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
$func_end0:
	.size	$__numeric_load_locale, ($func_end0)-($__numeric_load_locale)
	.cfi_endproc

	.globl	$__get_current_numeric_locale
	.type	$__get_current_numeric_locale,@function
$__get_current_numeric_locale:          //  @__get_current_numeric_locale
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	ori x28, x0, $_numeric_using_locale & 0xfff
	slli x28, x28, 20
	lui x3, $_numeric_using_locale >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $_C_numeric_locale & 0xfff
	slli x28, x28, 20
	lw x4, 0 ( x3 )
	lui x3, $_C_numeric_locale >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $_numeric_locale & 0xfff
	slli x28, x28, 20
	lui x5, $_numeric_locale >> 12 & 0xfffff
	srli x28, x28, 20
	add x7, x0, x0
	or x10, x5, x28
	bne x4, x7, LBB1_2
LBB1_1:                                 //  %entry
	add x10, x0, x3
LBB1_2:                                 //  %entry
	ret
$func_end1:
	.size	$__get_current_numeric_locale, ($func_end1)-($__get_current_numeric_locale)
	.cfi_endproc

	.address_space	0	
	.address_space	0	
	.type	$_numeric_using_locale,@object //  @_numeric_using_locale
	.local	$_numeric_using_locale
	.comm	$_numeric_using_locale,4,4
	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"LC_NUMERIC"
	.size	$.str, 11

	.address_space	0	
	.type	$_numeric_locale,@object //  @_numeric_locale
	.local	$_numeric_locale
	.comm	$_numeric_locale,12,4
	.address_space	0	
	.type	$_C_numeric_locale,@object //  @_C_numeric_locale
	.section	.rodata,"a",@progbits
	.p2align	2
$_C_numeric_locale:
	.long	($.str.1)
	.long	($.str.2)
	.long	($numempty)
	.size	$_C_numeric_locale, 12

	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str.1:
	.asciz	"."
	.size	$.str.1, 2

	.address_space	0	
	.type	$.str.2,@object         //  @.str.2
$.str.2:
	.zero	1
	.size	$.str.2, 1

	.address_space	0	
	.type	$numempty,@object       //  @numempty
	.data
$numempty:
	.asciz	"\177"
	.size	$numempty, 2


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
