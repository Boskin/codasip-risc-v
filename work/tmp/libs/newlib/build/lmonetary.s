	.text
	.file	"lmonetary.bc"
	.globl	$__monetary_load_locale
	.type	$__monetary_load_locale,@function
$__monetary_load_locale:                //  @__monetary_load_locale
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi2:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, $__mlocale_changed & 0xfff
	slli x28, x28, 20
	lui x1, $__mlocale_changed >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	slti x3, x0, 1
	sw x3, 0 ( x1 )
	ori x28, x0, $_monetary_using_locale & 0xfff
	slli x28, x28, 20
	lui x1, $_monetary_using_locale >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	ori x28, x0, $_monetary_locale & 0xfff
	slli x28, x28, 20
	lui x1, $_monetary_locale >> 12 & 0xfffff
	srli x28, x28, 20
	addi x14, x0, 15
	add x12, x0, x0
	or x16, x1, x28
	add x11, x0, x8
	add x15, x0, x14
	call $__part_load_locale
	bgtu x10, x0, LBB0_19
LBB0_1:                                 //  %entry
	lw x1, 0 ( x8 )
	nop
	beqz x1, LBB0_19
LBB0_2:                                 //  %if.then
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, $_monetary_locale+16 & 0xfff
	slli x28, x28, 20
	lui x1, $_monetary_locale+16 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	lw x10, 0 ( x8 )
	nop
	call $__fix_locale_grouping_str
	ori x28, x0, $_monetary_locale+28 & 0xfff
	slli x28, x28, 20
	lui x1, $_monetary_locale+28 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	lw x1, 0 ( x1 )
	sw x10, 0 ( x8 )
	add x11, x0, x0
	addi x12, x0, 10
	add x10, x0, x1
	call $strtol
	not x3, x0
	addi x1, x0, 127
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	beq x10, x3, LBB0_4
LBB0_3:                                 //  %if.then
	add x1, x0, x10
LBB0_4:                                 //  %if.then
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	lw x3, 0 ( x3 )
	nop
	sb x1, 0 ( x3 )
	lui x1, $_monetary_locale+32 >> 12 & 0xfffff
	ori x28, x0, $_monetary_locale+32 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x8, x1, x28
	lw x10, 0 ( x8 )
	add x11, x0, x0
	addi x12, x0, 10
	call $strtol
	addi x1, x0, 127
	not x3, x0
	beq x10, x3, LBB0_6
LBB0_5:                                 //  %if.then
	add x1, x0, x10
LBB0_6:                                 //  %if.then
	lw x3, 0 ( x8 )
	nop
	sb x1, 0 ( x3 )
	lui x1, $_monetary_locale+36 >> 12 & 0xfffff
	ori x28, x0, $_monetary_locale+36 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x8, x1, x28
	lw x10, 0 ( x8 )
	add x11, x0, x0
	addi x12, x0, 10
	call $strtol
	addi x1, x0, 127
	not x3, x0
	beq x10, x3, LBB0_8
LBB0_7:                                 //  %if.then
	add x1, x0, x10
LBB0_8:                                 //  %if.then
	lw x3, 0 ( x8 )
	nop
	sb x1, 0 ( x3 )
	lui x1, $_monetary_locale+40 >> 12 & 0xfffff
	ori x28, x0, $_monetary_locale+40 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x8, x1, x28
	lw x10, 0 ( x8 )
	add x11, x0, x0
	addi x12, x0, 10
	call $strtol
	addi x1, x0, 127
	not x3, x0
	beq x10, x3, LBB0_10
LBB0_9:                                 //  %if.then
	add x1, x0, x10
LBB0_10:                                //  %if.then
	lw x3, 0 ( x8 )
	nop
	sb x1, 0 ( x3 )
	lui x1, $_monetary_locale+44 >> 12 & 0xfffff
	ori x28, x0, $_monetary_locale+44 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x8, x1, x28
	lw x10, 0 ( x8 )
	add x11, x0, x0
	addi x12, x0, 10
	call $strtol
	addi x1, x0, 127
	not x3, x0
	beq x10, x3, LBB0_12
LBB0_11:                                //  %if.then
	add x1, x0, x10
LBB0_12:                                //  %if.then
	lw x3, 0 ( x8 )
	nop
	sb x1, 0 ( x3 )
	lui x1, $_monetary_locale+48 >> 12 & 0xfffff
	ori x28, x0, $_monetary_locale+48 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x8, x1, x28
	lw x10, 0 ( x8 )
	add x11, x0, x0
	addi x12, x0, 10
	call $strtol
	addi x1, x0, 127
	not x3, x0
	beq x10, x3, LBB0_14
LBB0_13:                                //  %if.then
	add x1, x0, x10
LBB0_14:                                //  %if.then
	lw x3, 0 ( x8 )
	nop
	sb x1, 0 ( x3 )
	lui x1, $_monetary_locale+52 >> 12 & 0xfffff
	ori x28, x0, $_monetary_locale+52 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x8, x1, x28
	lw x10, 0 ( x8 )
	add x11, x0, x0
	addi x12, x0, 10
	call $strtol
	addi x1, x0, 127
	not x3, x0
	beq x10, x3, LBB0_16
LBB0_15:                                //  %if.then
	add x1, x0, x10
LBB0_16:                                //  %if.then
	lw x3, 0 ( x8 )
	nop
	sb x1, 0 ( x3 )
	lui x1, $_monetary_locale+56 >> 12 & 0xfffff
	ori x28, x0, $_monetary_locale+56 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x8, x1, x28
	lw x10, 0 ( x8 )
	add x11, x0, x0
	addi x12, x0, 10
	call $strtol
	not x1, x0
	beq x10, x1, LBB0_18
LBB0_17:                                //  %if.then
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
LBB0_18:                                //  %if.then
	lw x1, 0 ( x8 )
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, 0 ( x1 )
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
LBB0_19:                                //  %if.end
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi5:
	.cfi_adjust_cfa_offset -32
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__monetary_load_locale, ($func_end0)-($__monetary_load_locale)
	.cfi_endproc

	.globl	$__get_current_monetary_locale
	.type	$__get_current_monetary_locale,@function
$__get_current_monetary_locale:         //  @__get_current_monetary_locale
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	ori x28, x0, $_monetary_using_locale & 0xfff
	slli x28, x28, 20
	lui x3, $_monetary_using_locale >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $_C_monetary_locale & 0xfff
	slli x28, x28, 20
	lw x4, 0 ( x3 )
	lui x3, $_C_monetary_locale >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $_monetary_locale & 0xfff
	slli x28, x28, 20
	lui x5, $_monetary_locale >> 12 & 0xfffff
	srli x28, x28, 20
	add x7, x0, x0
	or x10, x5, x28
	bne x4, x7, LBB1_2
LBB1_1:                                 //  %entry
	add x10, x0, x3
LBB1_2:                                 //  %entry
	ret
$func_end1:
	.size	$__get_current_monetary_locale, ($func_end1)-($__get_current_monetary_locale)
	.cfi_endproc

	.address_space	0	
	.address_space	0	
	.type	$_monetary_using_locale,@object //  @_monetary_using_locale
	.local	$_monetary_using_locale
	.comm	$_monetary_using_locale,4,4
	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"LC_MONETARY"
	.size	$.str, 12

	.address_space	0	
	.type	$_monetary_locale,@object //  @_monetary_locale
	.local	$_monetary_locale
	.comm	$_monetary_locale,60,4
	.address_space	0	
	.type	$_C_monetary_locale,@object //  @_C_monetary_locale
	.section	.rodata,"a",@progbits
	.p2align	2
$_C_monetary_locale:
	.long	($empty)
	.long	($empty)
	.long	($empty)
	.long	($empty)
	.long	($numempty)
	.long	($empty)
	.long	($empty)
	.long	($numempty)
	.long	($numempty)
	.long	($numempty)
	.long	($numempty)
	.long	($numempty)
	.long	($numempty)
	.long	($numempty)
	.long	($numempty)
	.size	$_C_monetary_locale, 60

	.address_space	0	
	.type	$empty,@object          //  @empty
	.local	$empty
	.comm	$empty,1,1
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
