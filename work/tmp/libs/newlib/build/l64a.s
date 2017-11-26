	.text
	.file	"l64a.bc"
	.globl	$l64a
	.type	$l64a,@function
$l64a:                                  //  @l64a
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	add x3, x0, x10
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x4, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	lw x5, 0 ( x4 )
	nop
	addi x10, x5, 212
	bgtu x3, x0, LBB0_3
LBB0_1:
	add x7, x0, x10
LBB0_2:                                 //  %if.then.i
	sb x0, 0 ( x7 )
	ret
LBB0_3:                                 //  %if.end.i
	ori x28, x0, $R64_ARRAY & 0xfff
	slli x28, x28, 20
	lui x4, $R64_ARRAY >> 12 & 0xfffff
	srli x28, x28, 20
	andi x7, x3, 63
	or x9, x4, x28
	add x7, x9, x7
	lb x9, 0 ( x7 )
	srli x7, x3, 6
	sb x9, 0 ( x10 )
	bgtu x7, x0, LBB0_5
LBB0_4:
	addi x7, x10, 1
	sb x0, 0 ( x7 )
	ret
LBB0_5:                                 //  %if.end.1.i
	ori x28, x0, $R64_ARRAY & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	andi x7, x7, 63
	or x9, x4, x28
	add x7, x9, x7
	lb x9, 0 ( x7 )
	srli x7, x3, 12
	sb x9, 1 ( x10 )
	bgtu x7, x0, LBB0_7
LBB0_6:
	addi x7, x10, 2
	sb x0, 0 ( x7 )
	ret
LBB0_7:                                 //  %if.end.2.i
	ori x28, x0, $R64_ARRAY & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	andi x7, x7, 63
	or x9, x4, x28
	add x7, x9, x7
	lb x9, 0 ( x7 )
	srli x7, x3, 18
	sb x9, 2 ( x10 )
	bgtu x7, x0, LBB0_9
LBB0_8:
	addi x7, x10, 3
	sb x0, 0 ( x7 )
	ret
LBB0_9:                                 //  %if.end.3.i
	ori x28, x0, $R64_ARRAY & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	andi x7, x7, 63
	or x9, x4, x28
	add x7, x9, x7
	lb x11, 0 ( x7 )
	srli x9, x3, 24
	addi x7, x5, 216
	sb x11, 215 ( x5 )
	beqz x9, LBB0_2
LBB0_10:                                //  %if.end.4.i
	ori x28, x0, $R64_ARRAY & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	andi x5, x9, 63
	or x9, x4, x28
	add x5, x9, x5
	lb x9, 0 ( x5 )
	srli x5, x3, 30
	addi x3, x7, 1
	sb x9, 0 ( x7 )
	bgtu x5, x0, LBB0_12
LBB0_11:
	add x7, x0, x3
	sb x0, 0 ( x7 )
	ret
LBB0_12:                                //  %if.end.5.i
	ori x28, x0, $R64_ARRAY & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	add x4, x4, x5
	lb x4, 0 ( x4 )
	nop
	sb x4, 0 ( x3 )
	ret
$func_end0:
	.size	$l64a, ($func_end0)-($l64a)
	.cfi_endproc

	.globl	$_l64a_r
	.type	$_l64a_r,@function
$_l64a_r:                               //  @_l64a_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi2:
	.cfi_def_cfa 2, 0
$cfi3:
	.cfi_val_offset 2, 0
	add x3, x0, x10
	addi x10, x3, 212
	bgtu x11, x0, LBB1_3
LBB1_1:
	add x5, x0, x10
LBB1_2:                                 //  %if.then
	sb x0, 0 ( x5 )
	ret
LBB1_3:                                 //  %if.end
	ori x28, x0, $R64_ARRAY & 0xfff
	slli x28, x28, 20
	lui x4, $R64_ARRAY >> 12 & 0xfffff
	srli x28, x28, 20
	andi x5, x11, 63
	or x7, x4, x28
	add x5, x7, x5
	lb x7, 0 ( x5 )
	srli x5, x11, 6
	sb x7, 0 ( x10 )
	bgtu x5, x0, LBB1_5
LBB1_4:
	addi x5, x10, 1
	sb x0, 0 ( x5 )
	ret
LBB1_5:                                 //  %if.end.1
	ori x28, x0, $R64_ARRAY & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	andi x5, x5, 63
	or x7, x4, x28
	add x5, x7, x5
	lb x7, 0 ( x5 )
	srli x5, x11, 12
	sb x7, 1 ( x10 )
	bgtu x5, x0, LBB1_7
LBB1_6:
	addi x5, x10, 2
	sb x0, 0 ( x5 )
	ret
LBB1_7:                                 //  %if.end.2
	ori x28, x0, $R64_ARRAY & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	andi x5, x5, 63
	or x7, x4, x28
	add x5, x7, x5
	lb x7, 0 ( x5 )
	srli x5, x11, 18
	sb x7, 2 ( x10 )
	bgtu x5, x0, LBB1_9
LBB1_8:
	addi x5, x10, 3
	sb x0, 0 ( x5 )
	ret
LBB1_9:                                 //  %if.end.3
	ori x28, x0, $R64_ARRAY & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	andi x5, x5, 63
	or x7, x4, x28
	add x5, x7, x5
	lb x9, 0 ( x5 )
	srli x7, x11, 24
	addi x5, x3, 216
	sb x9, 215 ( x3 )
	beqz x7, LBB1_2
LBB1_10:                                //  %if.end.4
	ori x28, x0, $R64_ARRAY & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	andi x3, x7, 63
	or x7, x4, x28
	add x3, x7, x3
	lb x9, 0 ( x3 )
	srli x7, x11, 30
	addi x3, x5, 1
	sb x9, 0 ( x5 )
	bgtu x7, x0, LBB1_12
LBB1_11:
	add x5, x0, x3
	sb x0, 0 ( x5 )
	ret
LBB1_12:                                //  %if.end.5
	ori x28, x0, $R64_ARRAY & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	add x4, x4, x7
	lb x4, 0 ( x4 )
	nop
	sb x4, 0 ( x3 )
	ret
$func_end1:
	.size	$_l64a_r, ($func_end1)-($_l64a_r)
	.cfi_endproc

	.address_space	0	
	.address_space	0	
	.type	$R64_ARRAY,@object      //  @R64_ARRAY
	.section	.rodata.str1.1,"aMS",@progbits,1
$R64_ARRAY:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.size	$R64_ARRAY, 65


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
