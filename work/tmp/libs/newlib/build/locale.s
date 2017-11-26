	.text
	.file	"locale.bc"
	.globl	$_setlocale_r
	.type	$_setlocale_r,@function
$_setlocale_r:                          //  @_setlocale_r
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
	sw x1, 12 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 4 ( x2 )                 //  4-byte Folded Spill
	add x8, x0, x12
	beqz x8, LBB0_5
LBB0_1:                                 //  %if.then
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $strcmp
	beqz x10, LBB0_5
LBB0_2:                                 //  %land.lhs.true
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.1 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $strcmp
	beqz x10, LBB0_5
LBB0_3:                                 //  %land.lhs.true4
	ori x28, x0, $.str.2 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.2 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $strcmp
	beqz x10, LBB0_5
LBB0_4:
	add x10, x0, x0
	jalr x0, LBB0_6 ( x0 )
LBB0_5:                                 //  %if.end8
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.1 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
LBB0_6:                                 //  %return
	lw x8, 4 ( x2 )                 //  4-byte Folded Reload
	lw x1, 12 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 16
$cfi5:
	.cfi_adjust_cfa_offset -16
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$_setlocale_r, ($func_end0)-($_setlocale_r)
	.cfi_endproc

	.globl	$__locale_charset
	.type	$__locale_charset,@function
$__locale_charset:                      //  @__locale_charset
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	ori x28, x0, $lc_ctype_charset & 0xfff
	slli x28, x28, 20
	lui x3, $lc_ctype_charset >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x3, x28
	ret
$func_end1:
	.size	$__locale_charset, ($func_end1)-($__locale_charset)
	.cfi_endproc

	.globl	$__locale_mb_cur_max
	.type	$__locale_mb_cur_max,@function
$__locale_mb_cur_max:                   //  @__locale_mb_cur_max
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi9:
	.cfi_def_cfa 2, 0
$cfi10:
	.cfi_val_offset 2, 0
	ori x28, x0, $__mb_cur_max & 0xfff
	slli x28, x28, 20
	lui x3, $__mb_cur_max >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	lw x10, 0 ( x3 )
	nop
	ret
$func_end2:
	.size	$__locale_mb_cur_max, ($func_end2)-($__locale_mb_cur_max)
	.cfi_endproc

	.globl	$__locale_msgcharset
	.type	$__locale_msgcharset,@function
$__locale_msgcharset:                   //  @__locale_msgcharset
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi11:
	.cfi_def_cfa 2, 0
$cfi12:
	.cfi_val_offset 2, 0
	ori x28, x0, $lc_message_charset & 0xfff
	slli x28, x28, 20
	lui x3, $lc_message_charset >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x3, x28
	ret
$func_end3:
	.size	$__locale_msgcharset, ($func_end3)-($__locale_msgcharset)
	.cfi_endproc

	.globl	$__locale_cjk_lang
	.type	$__locale_cjk_lang,@function
$__locale_cjk_lang:                     //  @__locale_cjk_lang
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi13:
	.cfi_def_cfa 2, 0
$cfi14:
	.cfi_val_offset 2, 0
	add x10, x0, x0
	ret
$func_end4:
	.size	$__locale_cjk_lang, ($func_end4)-($__locale_cjk_lang)
	.cfi_endproc

	.globl	$_localeconv_r
	.type	$_localeconv_r,@function
$_localeconv_r:                         //  @_localeconv_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi15:
	.cfi_def_cfa 2, 0
$cfi16:
	.cfi_val_offset 2, 0
	ori x28, x0, $lconv & 0xfff
	slli x28, x28, 20
	lui x3, $lconv >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x3, x28
	ret
$func_end5:
	.size	$_localeconv_r, ($func_end5)-($_localeconv_r)
	.cfi_endproc

	.globl	$setlocale
	.type	$setlocale,@function
$setlocale:                             //  @setlocale
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi17:
	.cfi_def_cfa 2, 0
$cfi18:
	.cfi_val_offset 2, 0
	addi x2, x2, -16
$cfi19:
	.cfi_adjust_cfa_offset 16
	sw x1, 12 ( x2 )
$cfi20:
	.cfi_offset 1, -4
	sw x8, 4 ( x2 )                 //  4-byte Folded Spill
	add x8, x0, x11
	beqz x8, LBB6_5
LBB6_1:                                 //  %if.then.i
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $strcmp
	beqz x10, LBB6_5
LBB6_2:                                 //  %land.lhs.true.i
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.1 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $strcmp
	beqz x10, LBB6_5
LBB6_3:                                 //  %land.lhs.true4.i
	ori x28, x0, $.str.2 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.2 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $strcmp
	beqz x10, LBB6_5
LBB6_4:
	add x10, x0, x0
	jalr x0, LBB6_6 ( x0 )
LBB6_5:                                 //  %if.end8.i
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.1 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
LBB6_6:                                 //  %_setlocale_r.exit
	lw x8, 4 ( x2 )                 //  4-byte Folded Reload
	lw x1, 12 ( x2 )
$cfi21:
	.cfi_same_value 1
	addi x2, x2, 16
$cfi22:
	.cfi_adjust_cfa_offset -16
$cfi23:
	.cfi_def_cfa 2, 0
	ret
$func_end6:
	.size	$setlocale, ($func_end6)-($setlocale)
	.cfi_endproc

	.globl	$localeconv
	.type	$localeconv,@function
$localeconv:                            //  @localeconv
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi24:
	.cfi_def_cfa 2, 0
$cfi25:
	.cfi_val_offset 2, 0
	ori x28, x0, $lconv & 0xfff
	slli x28, x28, 20
	lui x3, $lconv >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x3, x28
	ret
$func_end7:
	.size	$localeconv, ($func_end7)-($localeconv)
	.cfi_endproc

	.address_space	0	
	.type	$__mb_cur_max,@object   //  @__mb_cur_max
	.data
	.globl	$__mb_cur_max
	.p2align	2
$__mb_cur_max:
	.long	1                       //  0x1
	.size	$__mb_cur_max, 4

	.address_space	0	
	.type	$__nlocale_changed,@object //  @__nlocale_changed
	.bss
	.globl	$__nlocale_changed
	.p2align	2
$__nlocale_changed:
	.long	0                       //  0x0
	.size	$__nlocale_changed, 4

	.address_space	0	
	.type	$__mlocale_changed,@object //  @__mlocale_changed
	.globl	$__mlocale_changed
	.p2align	2
$__mlocale_changed:
	.long	0                       //  0x0
	.size	$__mlocale_changed, 4

	.address_space	0	
	.type	$_PathLocale,@object    //  @_PathLocale
	.globl	$_PathLocale
	.p2align	2
$_PathLocale:
	.long	0
	.size	$_PathLocale, 4

	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"POSIX"
	.size	$.str, 6

	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
$.str.1:
	.asciz	"C"
	.size	$.str.1, 2

	.address_space	0	
	.type	$.str.2,@object         //  @.str.2
$.str.2:
	.zero	1
	.size	$.str.2, 1

	.address_space	0	
	.type	$lc_ctype_charset,@object //  @lc_ctype_charset
	.data
$lc_ctype_charset:
	.asciz	"ASCII\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	$lc_ctype_charset, 32

	.address_space	0	
	.type	$lc_message_charset,@object //  @lc_message_charset
$lc_message_charset:
	.asciz	"ASCII\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	$lc_message_charset, 32

	.address_space	0	
	.type	$lconv,@object          //  @lconv
	.p2align	2
$lconv:
	.long	($.str.3)
	.long	($.str.2)
	.long	($.str.2)
	.long	($.str.2)
	.long	($.str.2)
	.long	($.str.2)
	.long	($.str.2)
	.long	($.str.2)
	.long	($.str.2)
	.long	($.str.2)
	.byte	127                     //  0x7f
	.byte	127                     //  0x7f
	.byte	127                     //  0x7f
	.byte	127                     //  0x7f
	.byte	127                     //  0x7f
	.byte	127                     //  0x7f
	.byte	127                     //  0x7f
	.byte	127                     //  0x7f
	.byte	127                     //  0x7f
	.byte	127                     //  0x7f
	.byte	127                     //  0x7f
	.byte	127                     //  0x7f
	.byte	127                     //  0x7f
	.byte	127                     //  0x7f
	.zero	2
	.size	$lconv, 56

	.address_space	0	
	.type	$.str.3,@object         //  @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str.3:
	.asciz	"."
	.size	$.str.3, 2


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
