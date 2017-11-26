	.text
	.file	"wctype.bc"
	.globl	$_wctype_r
	.type	$_wctype_r,@function
$_wctype_r:                             //  @_wctype_r
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
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	lb x1, 0 ( x11 )
	addi x3, x0, 23
	addi x10, x1, -97
	bgtu x10, x3, LBB0_25
LBB0_1:                                 //  %entry
	addi x8, x0, 4
	add x11, x0, x8
	call $__mulsi3
	lui x1, JTI0_0 >> 12 & 0xfffff
	ori x28, x0, JTI0_0 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB0_2:                                 //  %sw.bb
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x8, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	add x10, x0, x8
	call $strcmp
	bgtu x10, x0, LBB0_4
LBB0_3:
	slti x8, x0, 1
	jalr x0, LBB0_26 ( x0 )
LBB0_4:                                 //  %if.else
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.1 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $strcmp
	bgtu x10, x0, LBB0_25
LBB0_5:
	addi x8, x0, 2
	jalr x0, LBB0_26 ( x0 )
LBB0_6:                                 //  %sw.bb5
	ori x28, x0, $.str.2 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.2 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $strcmp
	bgtu x10, x0, LBB0_25
LBB0_7:
	addi x8, x0, 3
	jalr x0, LBB0_26 ( x0 )
LBB0_8:                                 //  %sw.bb15
	ori x28, x0, $.str.4 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.4 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $strcmp
	bgtu x10, x0, LBB0_25
LBB0_9:
	addi x8, x0, 5
	jalr x0, LBB0_26 ( x0 )
LBB0_10:                                //  %sw.bb20
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $strcmp
	bgtu x10, x0, LBB0_25
LBB0_11:
	addi x8, x0, 6
	jalr x0, LBB0_26 ( x0 )
LBB0_12:                                //  %sw.bb25
	ori x28, x0, $.str.6 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.6 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $strcmp
	bgtu x10, x0, LBB0_25
LBB0_13:
	addi x8, x0, 7
	jalr x0, LBB0_26 ( x0 )
LBB0_14:                                //  %sw.bb30
	ori x28, x0, $.str.7 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.7 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x8, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	add x10, x0, x8
	call $strcmp
	bgtu x10, x0, LBB0_16
LBB0_15:
	addi x8, x0, 8
	jalr x0, LBB0_26 ( x0 )
LBB0_16:                                //  %if.else34
	ori x28, x0, $.str.8 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.8 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $strcmp
	bgtu x10, x0, LBB0_25
LBB0_17:
	addi x8, x0, 9
	jalr x0, LBB0_26 ( x0 )
LBB0_18:                                //  %sw.bb40
	ori x28, x0, $.str.9 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.9 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $strcmp
	bgtu x10, x0, LBB0_25
LBB0_19:
	addi x8, x0, 10
	jalr x0, LBB0_26 ( x0 )
LBB0_20:                                //  %sw.bb45
	ori x28, x0, $.str.10 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.10 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $strcmp
	bgtu x10, x0, LBB0_25
LBB0_21:
	addi x8, x0, 11
	jalr x0, LBB0_26 ( x0 )
LBB0_22:                                //  %sw.bb50
	ori x28, x0, $.str.11 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.11 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $strcmp
	bgtu x10, x0, LBB0_25
LBB0_23:
	addi x8, x0, 12
	jalr x0, LBB0_26 ( x0 )
LBB0_24:                                //  %sw.bb10
	ori x28, x0, $.str.3 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.3 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $strcmp
	beqz x10, LBB0_26
LBB0_25:                                //  %sw.epilog
	addi x1, x0, 22
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
	add x8, x0, x0
LBB0_26:                                //  %return
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
	.size	$_wctype_r, ($func_end0)-($_wctype_r)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	LBB0_2
	.long	LBB0_6
	.long	LBB0_24
	.long	LBB0_8
	.long	LBB0_25
	.long	LBB0_25
	.long	LBB0_10
	.long	LBB0_25
	.long	LBB0_25
	.long	LBB0_25
	.long	LBB0_25
	.long	LBB0_12
	.long	LBB0_25
	.long	LBB0_25
	.long	LBB0_25
	.long	LBB0_14
	.long	LBB0_25
	.long	LBB0_25
	.long	LBB0_18
	.long	LBB0_25
	.long	LBB0_20
	.long	LBB0_25
	.long	LBB0_25
	.long	LBB0_22

	.text
	.globl	$wctype
	.type	$wctype,@function
$wctype:                                //  @wctype
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x3, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	lw x3, 0 ( x3 )
	add x11, x0, x10
	add x10, x0, x3
	j $_wctype_r
$func_end1:
	.size	$wctype, ($func_end1)-($wctype)
	.cfi_endproc

	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"alnum"
	.size	$.str, 6

	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
$.str.1:
	.asciz	"alpha"
	.size	$.str.1, 6

	.address_space	0	
	.type	$.str.2,@object         //  @.str.2
$.str.2:
	.asciz	"blank"
	.size	$.str.2, 6

	.address_space	0	
	.type	$.str.3,@object         //  @.str.3
$.str.3:
	.asciz	"cntrl"
	.size	$.str.3, 6

	.address_space	0	
	.type	$.str.4,@object         //  @.str.4
$.str.4:
	.asciz	"digit"
	.size	$.str.4, 6

	.address_space	0	
	.type	$.str.5,@object         //  @.str.5
$.str.5:
	.asciz	"graph"
	.size	$.str.5, 6

	.address_space	0	
	.type	$.str.6,@object         //  @.str.6
$.str.6:
	.asciz	"lower"
	.size	$.str.6, 6

	.address_space	0	
	.type	$.str.7,@object         //  @.str.7
$.str.7:
	.asciz	"print"
	.size	$.str.7, 6

	.address_space	0	
	.type	$.str.8,@object         //  @.str.8
$.str.8:
	.asciz	"punct"
	.size	$.str.8, 6

	.address_space	0	
	.type	$.str.9,@object         //  @.str.9
$.str.9:
	.asciz	"space"
	.size	$.str.9, 6

	.address_space	0	
	.type	$.str.10,@object        //  @.str.10
$.str.10:
	.asciz	"upper"
	.size	$.str.10, 6

	.address_space	0	
	.type	$.str.11,@object        //  @.str.11
$.str.11:
	.asciz	"xdigit"
	.size	$.str.11, 7

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
