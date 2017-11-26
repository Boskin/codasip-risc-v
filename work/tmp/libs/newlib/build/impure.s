	.text
	.file	"impure.bc"
	.address_space	0	
	.type	$_impure_ptr,@object    //  @_impure_ptr
	.data
	.globl	$_impure_ptr
	.p2align	2
$_impure_ptr:
	.long	($impure_data)
	.size	$_impure_ptr, 4

	.address_space	0	
	.type	$_global_impure_ptr,@object //  @_global_impure_ptr
	.section	.rodata,"a",@progbits
	.globl	$_global_impure_ptr
	.p2align	2
$_global_impure_ptr:
	.long	($impure_data)
	.size	$_global_impure_ptr, 4

	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"C"
	.size	$.str, 2

	.address_space	0	
	.type	$impure_data,@object    //  @impure_data
	.data
	.p2align	2
$impure_data:
	.long	0                       //  0x0
	.long	($impure_data)+748
	.long	($impure_data)+852
	.long	($impure_data)+956
	.long	0                       //  0x0
	.zero	25
	.zero	3
	.long	0                       //  0x0
	.long	($.str)
	.long	0                       //  0x0
	.long	0
	.long	0
	.long	0                       //  0x0
	.long	0
	.long	0
	.long	0                       //  0x0
	.long	0
	.long	0                       //  0x0
	.long	0
	.zero	26
	.zero	2
	.zero	36
	.long	0                       //  0x0
	.quad	1                       //  0x1
	.short	13070                   //  0x330e
	.short	43981                   //  0xabcd
	.short	4660                    //  0x1234
	.short	58989                   //  0xe66d
	.short	57068                   //  0xdeec
	.short	5                       //  0x5
	.short	11                      //  0xb
	.zero	2
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	24
	.long	0                       //  0x0
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.long	0                       //  0x0
	.zero	36
	.long	0
	.zero	400
	.long	0
	.zero	12
	.zero	312
	.size	$impure_data, 1060


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
