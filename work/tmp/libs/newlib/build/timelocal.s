	.text
	.file	"timelocal.bc"
	.globl	$__get_current_time_locale
	.type	$__get_current_time_locale,@function
$__get_current_time_locale:             //  @__get_current_time_locale
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	ori x28, x0, $_time_using_locale & 0xfff
	slli x28, x28, 20
	lui x3, $_time_using_locale >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $_C_time_locale & 0xfff
	slli x28, x28, 20
	lw x4, 0 ( x3 )
	lui x3, $_C_time_locale >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $_time_locale & 0xfff
	slli x28, x28, 20
	lui x5, $_time_locale >> 12 & 0xfffff
	srli x28, x28, 20
	add x7, x0, x0
	or x10, x5, x28
	bne x4, x7, LBB0_2
LBB0_1:                                 //  %entry
	add x10, x0, x3
LBB0_2:                                 //  %entry
	ret
$func_end0:
	.size	$__get_current_time_locale, ($func_end0)-($__get_current_time_locale)
	.cfi_endproc

	.globl	$__time_load_locale
	.type	$__time_load_locale,@function
$__time_load_locale:                    //  @__time_load_locale
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi2:
	.cfi_def_cfa 2, 0
$cfi3:
	.cfi_val_offset 2, 0
	ori x28, x0, $_time_using_locale & 0xfff
	slli x28, x28, 20
	lui x3, $_time_using_locale >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x3, x28
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x3, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x3, x28
	ori x28, x0, $_time_locale & 0xfff
	slli x28, x28, 20
	lui x3, $_time_locale >> 12 & 0xfffff
	srli x28, x28, 20
	addi x14, x0, 63
	add x12, x0, x0
	or x16, x3, x28
	add x15, x0, x14
	j $__part_load_locale
$func_end1:
	.size	$__time_load_locale, ($func_end1)-($__time_load_locale)
	.cfi_endproc

	.address_space	0	
	.type	$_time_using_locale,@object //  @_time_using_locale
	.local	$_time_using_locale
	.comm	$_time_using_locale,4,4
	.address_space	0	
	.type	$_time_locale,@object   //  @_time_locale
	.local	$_time_locale
	.comm	$_time_locale,252,4
	.address_space	0	
	.type	$_C_time_locale,@object //  @_C_time_locale
	.section	.rodata,"a",@progbits
	.p2align	2
$_C_time_locale:
	.long	($.str.1)
	.long	($.str.2)
	.long	($.str.3)
	.long	($.str.4)
	.long	($.str.5)
	.long	($.str.6)
	.long	($.str.7)
	.long	($.str.8)
	.long	($.str.9)
	.long	($.str.10)
	.long	($.str.11)
	.long	($.str.12)
	.long	($.str.13)
	.long	($.str.14)
	.long	($.str.15)
	.long	($.str.16)
	.long	($.str.5)
	.long	($.str.17)
	.long	($.str.18)
	.long	($.str.19)
	.long	($.str.20)
	.long	($.str.21)
	.long	($.str.22)
	.long	($.str.23)
	.long	($.str.24)
	.long	($.str.25)
	.long	($.str.26)
	.long	($.str.27)
	.long	($.str.28)
	.long	($.str.29)
	.long	($.str.30)
	.long	($.str.31)
	.long	($.str.32)
	.long	($.str.33)
	.long	($.str.34)
	.long	($.str.35)
	.long	($.str.36)
	.long	($.str.37)
	.long	($.str.38)
	.long	($.str.39)
	.long	($.str.40)
	.long	($.str.41)
	.long	($.str.42)
	.long	($.str.43)
	.long	($.str.13)
	.long	($.str.14)
	.long	($.str.15)
	.long	($.str.16)
	.long	($.str.5)
	.long	($.str.17)
	.long	($.str.18)
	.long	($.str.19)
	.long	($.str.20)
	.long	($.str.21)
	.long	($.str.22)
	.long	($.str.23)
	.long	($.str.44)
	.long	($.str.45)
	.long	($.str.46)
	.long	($.str.46)
	.long	($.str.46)
	.long	($.str.46)
	.long	($.str.46)
	.size	$_C_time_locale, 252

	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"LC_TIME"
	.size	$.str, 8

	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
$.str.1:
	.asciz	"Jan"
	.size	$.str.1, 4

	.address_space	0	
	.type	$.str.2,@object         //  @.str.2
$.str.2:
	.asciz	"Feb"
	.size	$.str.2, 4

	.address_space	0	
	.type	$.str.3,@object         //  @.str.3
$.str.3:
	.asciz	"Mar"
	.size	$.str.3, 4

	.address_space	0	
	.type	$.str.4,@object         //  @.str.4
$.str.4:
	.asciz	"Apr"
	.size	$.str.4, 4

	.address_space	0	
	.type	$.str.5,@object         //  @.str.5
$.str.5:
	.asciz	"May"
	.size	$.str.5, 4

	.address_space	0	
	.type	$.str.6,@object         //  @.str.6
$.str.6:
	.asciz	"Jun"
	.size	$.str.6, 4

	.address_space	0	
	.type	$.str.7,@object         //  @.str.7
$.str.7:
	.asciz	"Jul"
	.size	$.str.7, 4

	.address_space	0	
	.type	$.str.8,@object         //  @.str.8
$.str.8:
	.asciz	"Aug"
	.size	$.str.8, 4

	.address_space	0	
	.type	$.str.9,@object         //  @.str.9
$.str.9:
	.asciz	"Sep"
	.size	$.str.9, 4

	.address_space	0	
	.type	$.str.10,@object        //  @.str.10
$.str.10:
	.asciz	"Oct"
	.size	$.str.10, 4

	.address_space	0	
	.type	$.str.11,@object        //  @.str.11
$.str.11:
	.asciz	"Nov"
	.size	$.str.11, 4

	.address_space	0	
	.type	$.str.12,@object        //  @.str.12
$.str.12:
	.asciz	"Dec"
	.size	$.str.12, 4

	.address_space	0	
	.type	$.str.13,@object        //  @.str.13
$.str.13:
	.asciz	"January"
	.size	$.str.13, 8

	.address_space	0	
	.type	$.str.14,@object        //  @.str.14
$.str.14:
	.asciz	"February"
	.size	$.str.14, 9

	.address_space	0	
	.type	$.str.15,@object        //  @.str.15
$.str.15:
	.asciz	"March"
	.size	$.str.15, 6

	.address_space	0	
	.type	$.str.16,@object        //  @.str.16
$.str.16:
	.asciz	"April"
	.size	$.str.16, 6

	.address_space	0	
	.type	$.str.17,@object        //  @.str.17
$.str.17:
	.asciz	"June"
	.size	$.str.17, 5

	.address_space	0	
	.type	$.str.18,@object        //  @.str.18
$.str.18:
	.asciz	"July"
	.size	$.str.18, 5

	.address_space	0	
	.type	$.str.19,@object        //  @.str.19
$.str.19:
	.asciz	"August"
	.size	$.str.19, 7

	.address_space	0	
	.type	$.str.20,@object        //  @.str.20
$.str.20:
	.asciz	"September"
	.size	$.str.20, 10

	.address_space	0	
	.type	$.str.21,@object        //  @.str.21
$.str.21:
	.asciz	"October"
	.size	$.str.21, 8

	.address_space	0	
	.type	$.str.22,@object        //  @.str.22
$.str.22:
	.asciz	"November"
	.size	$.str.22, 9

	.address_space	0	
	.type	$.str.23,@object        //  @.str.23
$.str.23:
	.asciz	"December"
	.size	$.str.23, 9

	.address_space	0	
	.type	$.str.24,@object        //  @.str.24
$.str.24:
	.asciz	"Sun"
	.size	$.str.24, 4

	.address_space	0	
	.type	$.str.25,@object        //  @.str.25
$.str.25:
	.asciz	"Mon"
	.size	$.str.25, 4

	.address_space	0	
	.type	$.str.26,@object        //  @.str.26
$.str.26:
	.asciz	"Tue"
	.size	$.str.26, 4

	.address_space	0	
	.type	$.str.27,@object        //  @.str.27
$.str.27:
	.asciz	"Wed"
	.size	$.str.27, 4

	.address_space	0	
	.type	$.str.28,@object        //  @.str.28
$.str.28:
	.asciz	"Thu"
	.size	$.str.28, 4

	.address_space	0	
	.type	$.str.29,@object        //  @.str.29
$.str.29:
	.asciz	"Fri"
	.size	$.str.29, 4

	.address_space	0	
	.type	$.str.30,@object        //  @.str.30
$.str.30:
	.asciz	"Sat"
	.size	$.str.30, 4

	.address_space	0	
	.type	$.str.31,@object        //  @.str.31
$.str.31:
	.asciz	"Sunday"
	.size	$.str.31, 7

	.address_space	0	
	.type	$.str.32,@object        //  @.str.32
$.str.32:
	.asciz	"Monday"
	.size	$.str.32, 7

	.address_space	0	
	.type	$.str.33,@object        //  @.str.33
$.str.33:
	.asciz	"Tuesday"
	.size	$.str.33, 8

	.address_space	0	
	.type	$.str.34,@object        //  @.str.34
$.str.34:
	.asciz	"Wednesday"
	.size	$.str.34, 10

	.address_space	0	
	.type	$.str.35,@object        //  @.str.35
$.str.35:
	.asciz	"Thursday"
	.size	$.str.35, 9

	.address_space	0	
	.type	$.str.36,@object        //  @.str.36
$.str.36:
	.asciz	"Friday"
	.size	$.str.36, 7

	.address_space	0	
	.type	$.str.37,@object        //  @.str.37
$.str.37:
	.asciz	"Saturday"
	.size	$.str.37, 9

	.address_space	0	
	.type	$.str.38,@object        //  @.str.38
$.str.38:
	.asciz	"%H:%M:%S"
	.size	$.str.38, 9

	.address_space	0	
	.type	$.str.39,@object        //  @.str.39
$.str.39:
	.asciz	"%m/%d/%y"
	.size	$.str.39, 9

	.address_space	0	
	.type	$.str.40,@object        //  @.str.40
$.str.40:
	.asciz	"%a %b %e %H:%M:%S %Y"
	.size	$.str.40, 21

	.address_space	0	
	.type	$.str.41,@object        //  @.str.41
$.str.41:
	.asciz	"AM"
	.size	$.str.41, 3

	.address_space	0	
	.type	$.str.42,@object        //  @.str.42
$.str.42:
	.asciz	"PM"
	.size	$.str.42, 3

	.address_space	0	
	.type	$.str.43,@object        //  @.str.43
$.str.43:
	.asciz	"%a %b %e %H:%M:%S %Z %Y"
	.size	$.str.43, 24

	.address_space	0	
	.type	$.str.44,@object        //  @.str.44
$.str.44:
	.asciz	"md"
	.size	$.str.44, 3

	.address_space	0	
	.type	$.str.45,@object        //  @.str.45
$.str.45:
	.asciz	"%I:%M:%S %p"
	.size	$.str.45, 12

	.address_space	0	
	.type	$.str.46,@object        //  @.str.46
$.str.46:
	.zero	1
	.size	$.str.46, 1


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
