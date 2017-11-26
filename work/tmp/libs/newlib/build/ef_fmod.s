	.text
	.file	"ef_fmod.bc"
	.globl	$__ieee754_fmodf
	.type	$__ieee754_fmodf,@function
$__ieee754_fmodf:                       //  @__ieee754_fmodf
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -8
$cfi2:
	.cfi_adjust_cfa_offset 8
	sw x1, 4 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 2139095039 & 0xfff
	slli x28, x28, 20
	and x1, x1, x10
	lui x4, 2139095039 >> 12 & 0xfffff
	srli x28, x28, 20
	xor x5, x10, x1
	or x4, x4, x28
	bgt x5, x4, LBB0_2
LBB0_1:                                 //  %entry
	and x12, x3, x11
	addi x3, x12, -1
	lui x4, 2139095040>>12 &0xfffff
	bgtu x4, x3, LBB0_3
LBB0_2:                                 //  %if.then
	call $__mulsf3
	add x11, x0, x10
	call $__divsf3
	jalr x0, LBB0_36 ( x0 )
LBB0_3:                                 //  %if.end
	bgt x12, x5, LBB0_36
LBB0_4:                                 //  %if.end14
	bne x5, x12, LBB0_7
LBB0_5:                                 //  %if.then16
	ori x28, x0, $Zero & 0xfff
	slli x28, x28, 20
	srli x1, x10, 29
	lui x3, $Zero >> 12 & 0xfffff
	srli x28, x28, 20
	andi x1, x1, 4
LBB0_6:                                 //  %cleanup
	or x3, x3, x28
	add x1, x3, x1
	lw x10, 0 ( x1 )
	jalr x0, LBB0_36 ( x0 )
LBB0_7:                                 //  %if.end17
	ori x28, x0, 8388607 & 0xfff
	slli x28, x28, 20
	lui x3, 8388607 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x3, x28
	bgt x5, x4, LBB0_10
LBB0_8:                                 //  %if.then19
	addi x13, x0, -126
	slli x4, x10, 8
	ble x4, x0, LBB0_11
LBB0_9:                                 //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	slli x4, x4, 1
	addi x13, x13, -1
	bgt x4, x0, LBB0_9
	jalr x0, LBB0_11 ( x0 )
LBB0_10:                                //  %if.else
	srli x4, x5, 23
	addi x13, x4, -127
LBB0_11:                                //  %if.end24
	ori x28, x0, 8388607 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x3, x28
	bgtu x12, x4, LBB0_14
LBB0_12:                                //  %if.then26
	addi x4, x0, -126
	slli x7, x11, 8
	bgt x0, x7, LBB0_15
LBB0_13:                                //  %for.body30
                                        //  =>This Inner Loop Header: Depth=1
	slli x7, x7, 1
	addi x4, x4, -1
	bgez x7, LBB0_13
	jalr x0, LBB0_15 ( x0 )
LBB0_14:                                //  %if.else35
	srli x4, x12, 23
	addi x4, x4, -127
LBB0_15:                                //  %if.end38
	ori x28, x0, 8388607 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	addi x15, x0, -127
	addi x7, x0, -126
	or x14, x3, x28
	lui x9, 8388608>>12 &0xfffff
	ble x4, x15, LBB0_17
LBB0_16:
	and x11, x14, x11
	or x11, x9, x11
	jalr x0, LBB0_18 ( x0 )
LBB0_17:                                //  %if.end38
	sub x11, x7, x4
	sll x11, x12, x11
LBB0_18:                                //  %if.end38
	ble x13, x15, LBB0_20
LBB0_19:
	and x5, x14, x10
	or x12, x9, x5
	jalr x0, LBB0_21 ( x0 )
LBB0_20:                                //  %if.end38
	sub x12, x7, x13
	sll x12, x5, x12
LBB0_21:                                //  %if.end38
	sub x14, x13, x4
	sub x5, x12, x11
	beqz x14, LBB0_27
LBB0_22:                                //  %while.body.preheader
	sub x13, x4, x13
LBB0_23:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	bgt x0, x5, LBB0_26
LBB0_24:                                //  %if.else58
                                        //    in Loop: Header=BB0_23 Depth=1
	add x12, x0, x5
	bgtu x5, x0, LBB0_26
LBB0_25:                                //  %if.then60
	srli x1, x10, 29
	andi x1, x1, 4
	lui x3, $Zero >> 12 & 0xfffff
	ori x28, x0, $Zero & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	jalr x0, LBB0_6 ( x0 )
LBB0_26:                                //  %while.cond.backedge
                                        //    in Loop: Header=BB0_23 Depth=1
	slli x12, x12, 1
	sub x5, x12, x11
	addi x13, x13, 1
	bgtu x13, x0, LBB0_23
LBB0_27:                                //  %while.end
	not x11, x0
	bgt x5, x11, LBB0_29
LBB0_28:                                //  %while.end
	add x5, x0, x12
LBB0_29:                                //  %while.end
	beqz x5, LBB0_25
LBB0_30:                                //  %while.cond75.preheader
	ori x28, x0, 8388607 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	bgt x5, x3, LBB0_32
LBB0_31:                                //  %while.body77
                                        //  =>This Inner Loop Header: Depth=1
	addi x4, x4, -1
	slli x5, x5, 1
	bgt x9, x5, LBB0_31
LBB0_32:                                //  %while.end80
	slti x3, x4, -126
	bgtu x3, x0, LBB0_34
LBB0_33:                                //  %if.then82
	slli x3, x4, 23
	lui x4, 1065353216>>12 &0xfffff
	add x3, x4, x3
	lui x4, -8388608 >> 12 & 0xfffff
	ori x28, x0, -8388608 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	add x4, x4, x5
	or x3, x3, x4
	jalr x0, LBB0_35 ( x0 )
LBB0_34:                                //  %if.else93
	sub x3, x7, x4
	sra x3, x5, x3
LBB0_35:                                //  %if.end104
	or x10, x1, x3
LBB0_36:                                //  %cleanup
	lw x1, 4 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 8
$cfi5:
	.cfi_adjust_cfa_offset -8
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__ieee754_fmodf, ($func_end0)-($__ieee754_fmodf)
	.cfi_endproc

	.address_space	0	
	.type	$Zero,@object           //  @Zero
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
$Zero:
	.long	0                       //  float 0
	.long	2147483648              //  float -0
	.size	$Zero, 8


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
