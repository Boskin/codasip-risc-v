	.text
	.file	"lctype.bc"
	.globl	$__ctype_load_locale
	.type	$__ctype_load_locale,@function
$__ctype_load_locale:                   //  @__ctype_load_locale
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
	sw x13, 8 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x12
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $strcmp
	bgtu x10, x0, LBB0_2
LBB0_1:
	add x1, x0, x0
	jalr x0, LBB0_3 ( x0 )
LBB0_2:                                 //  %if.else
	ori x28, x0, $_ctype_locale_buf & 0xfff
	slli x28, x28, 20
	lui x1, $_ctype_locale_buf >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	add x11, x0, x8
	call $strcpy
	ori x28, x0, $_ctype_locale & 0xfff
	slli x28, x28, 20
	lui x1, $_ctype_locale >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $_ctype_locale_buf+32 & 0xfff
	slli x28, x28, 20
	lui x3, $_ctype_locale_buf+32 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $_ctype_locale_buf+33 & 0xfff
	slli x28, x28, 20
	lui x4, $_ctype_locale_buf+33 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	ori x28, x0, $_ctype_locale+4 & 0xfff
	slli x28, x28, 20
	lui x5, $_ctype_locale+4 >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x5, x28
	sw x10, 0 ( x1 )
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sb x1, 0 ( x3 )
	sb x0, 0 ( x4 )
	sw x3, 0 ( x5 )
	slti x1, x0, 1
LBB0_3:                                 //  %if.end
	ori x28, x0, $_ctype_using_locale & 0xfff
	slli x28, x28, 20
	lui x3, $_ctype_using_locale >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	add x10, x0, x0
	sb x1, 0 ( x3 )
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
	.size	$__ctype_load_locale, ($func_end0)-($__ctype_load_locale)
	.cfi_endproc

	.globl	$__get_current_ctype_locale
	.type	$__get_current_ctype_locale,@function
$__get_current_ctype_locale:            //  @__get_current_ctype_locale
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	ori x28, x0, $_ctype_using_locale & 0xfff
	slli x28, x28, 20
	lui x3, $_ctype_using_locale >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $_C_ctype_locale & 0xfff
	slli x28, x28, 20
	lb x4, 0 ( x3 )
	lui x3, $_C_ctype_locale >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $_ctype_locale & 0xfff
	slli x28, x28, 20
	lui x5, $_ctype_locale >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x5, x28
	bgtu x4, x0, LBB1_2
LBB1_1:                                 //  %entry
	add x10, x0, x3
LBB1_2:                                 //  %entry
	ret
$func_end1:
	.size	$__get_current_ctype_locale, ($func_end1)-($__get_current_ctype_locale)
	.cfi_endproc

	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"C"
	.size	$.str, 2

	.address_space	0	
	.type	$_ctype_using_locale,@object //  @_ctype_using_locale
	.local	$_ctype_using_locale
	.comm	$_ctype_using_locale,1,4
	.address_space	0	
	.type	$_ctype_locale_buf,@object //  @_ctype_locale_buf
	.local	$_ctype_locale_buf
	.comm	$_ctype_locale_buf,34,1
	.address_space	0	
	.type	$_ctype_locale,@object  //  @_ctype_locale
	.local	$_ctype_locale
	.comm	$_ctype_locale,8,4
	.address_space	0	
	.type	$_C_ctype_locale,@object //  @_C_ctype_locale
	.section	.rodata,"a",@progbits
	.p2align	2
$_C_ctype_locale:
	.long	($.str.1)
	.long	($numone)
	.size	$_C_ctype_locale, 8

	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str.1:
	.asciz	"ASCII"
	.size	$.str.1, 6

	.address_space	0	
	.type	$numone,@object         //  @numone
	.data
$numone:
	.asciz	"\001"
	.size	$numone, 2


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
