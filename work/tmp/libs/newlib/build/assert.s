	.text
	.file	"assert.bc"
	.globl	$__assert_func
	.type	$__assert_func,@function
$__assert_func:                         //  @__assert_func
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs
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
	ori x28, x0, $.str.2 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.2 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.1 >> 12 & 0xfffff
	srli x28, x28, 20
	add x4, x0, x0
	or x1, x1, x28
	bne x12, x4, LBB0_2
LBB0_1:                                 //  %entry
	add x1, x0, x3
LBB0_2:                                 //  %entry
	bne x12, x4, LBB0_4
LBB0_3:                                 //  %entry
	add x12, x0, x3
LBB0_4:                                 //  %entry
	lui x3, $_impure_ptr >> 12 & 0xfffff
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	lw x3, 0 ( x3 )
	nop
	lw x3, 12 ( x3 )
	sw x12, 24 ( x2 )
	sw x1, 20 ( x2 )
	sw x11, 16 ( x2 )
	sw x10, 12 ( x2 )
	sw x13, 8 ( x2 )
	lui x1, $.str >> 12 & 0xfffff
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 4 ( x2 )
	sw x3, 0 ( x2 )
	call $fiprintf
	call $abort
$func_end0:
	.size	$__assert_func, ($func_end0)-($__assert_func)
	.cfi_endproc

	.globl	$__assert
	.type	$__assert,@function
$__assert:                              //  @__assert
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi4:
	.cfi_def_cfa 2, 0
$cfi5:
	.cfi_val_offset 2, 0
	addi x2, x2, -48
$cfi6:
	.cfi_adjust_cfa_offset 48
	sw x1, 44 ( x2 )
$cfi7:
	.cfi_offset 1, -4
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	lw x1, 12 ( x1 )
	ori x28, x0, $.str.2 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.2 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x4, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	sw x3, 24 ( x2 )
	sw x3, 20 ( x2 )
	sw x11, 16 ( x2 )
	sw x10, 12 ( x2 )
	sw x12, 8 ( x2 )
	sw x4, 4 ( x2 )
	sw x1, 0 ( x2 )
	call $fiprintf
	call $abort
$func_end1:
	.size	$__assert, ($func_end1)-($__assert)
	.cfi_endproc

	.address_space	0	
	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"assertion \"%s\" failed: file \"%s\", line %d%s%s\n"
	.size	$.str, 47

	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
$.str.1:
	.asciz	", function: "
	.size	$.str.1, 13

	.address_space	0	
	.type	$.str.2,@object         //  @.str.2
$.str.2:
	.zero	1
	.size	$.str.2, 1


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
