	.text
	.file	"ef_atan2.bc"
	.globl	$__ieee754_atan2f
	.type	$__ieee754_atan2f,@function
$__ieee754_atan2f:                      //  @__ieee754_atan2f
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
	add x1, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x7, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x7, x28
	and x3, x5, x1
	lui x4, 2139095040>>12 &0xfffff
	bgtu x3, x4, LBB0_42
LBB0_1:                                 //  %entry
	and x5, x5, x11
	lui x9, 2139095041 >> 12 & 0xfffff
	ori x28, x0, 2139095041 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x9, x9, x28
	bgeu x5, x9, LBB0_42
LBB0_2:                                 //  %if.end
	lui x9, 1065353216>>12 &0xfffff
	bne x11, x9, LBB0_4
LBB0_3:                                 //  %if.then10
	call $atanf
	jalr x0, LBB0_43 ( x0 )
LBB0_4:                                 //  %if.end11
	srli x9, x11, 30
	slt x12, x1, x0
	andi x9, x9, 2
	or x8, x12, x9
	bgtu x3, x0, LBB0_8
LBB0_5:                                 //  %if.then16
	andi x1, x8, 3
	xori x3, x1, 3
	beqz x3, LBB0_26
LBB0_6:                                 //  %if.then16
	xori x1, x1, 2
	bgtu x1, x0, LBB0_43
LBB0_7:                                 //  %sw.bb17
	ori x28, x0, 1078530011 & 0xfff
	slli x28, x28, 20
	lui x1, 1078530011 >> 12 & 0xfffff
	jalr x0, LBB0_18 ( x0 )
LBB0_8:                                 //  %if.end19
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x7, x7, x28
	and x7, x7, x11
	beq x7, x4, LBB0_12
LBB0_9:                                 //  %if.end19
	bgtu x7, x0, LBB0_27
LBB0_10:                                //  %if.then21
	ori x28, x0, 1070141403 & 0xfff
	slli x28, x28, 20
	lui x3, 1070141403 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, -1077342245 & 0xfff
	slli x28, x28, 20
	lui x4, -1077342245 >> 12 & 0xfffff
	srli x28, x28, 20
	add x5, x0, x0
	or x10, x4, x28
	bgt x5, x1, LBB0_43
LBB0_11:                                //  %if.then21
	add x10, x0, x3
	jalr x0, LBB0_43 ( x0 )
LBB0_12:                                //  %if.then25
	bne x3, x4, LBB0_21
LBB0_13:                                //  %if.then27
	ori x28, x0, 1061752795 & 0xfff
	slli x28, x28, 20
	andi x1, x8, 3
	lui x3, 1061752795 >> 12 & 0xfffff
	srli x28, x28, 20
	xori x4, x1, 3
	or x10, x3, x28
	beqz x4, LBB0_20
LBB0_14:                                //  %if.then27
	xori x3, x1, 2
	beqz x3, LBB0_19
LBB0_15:                                //  %if.then27
	xori x1, x1, 1
	bgtu x1, x0, LBB0_43
LBB0_16:                                //  %sw.bb29
	lui x1, -1085730853 >> 12 & 0xfffff
	ori x28, x0, -1085730853 & 0xfff
LBB0_17:                                //  %cleanup
	slli x28, x28, 20
LBB0_18:                                //  %cleanup
	srli x28, x28, 20
	or x10, x1, x28
	jalr x0, LBB0_43 ( x0 )
LBB0_19:                                //  %sw.bb30
	ori x28, x0, 1075235812 & 0xfff
	slli x28, x28, 20
	lui x1, 1075235812 >> 12 & 0xfffff
	jalr x0, LBB0_18 ( x0 )
LBB0_20:                                //  %sw.bb31
	ori x28, x0, -1072247836 & 0xfff
	slli x28, x28, 20
	lui x1, -1072247836 >> 12 & 0xfffff
	jalr x0, LBB0_18 ( x0 )
LBB0_21:                                //  %if.else
	andi x1, x8, 3
	xori x3, x1, 3
	beqz x3, LBB0_26
LBB0_22:                                //  %if.else
	xori x3, x1, 2
	beqz x3, LBB0_7
LBB0_23:                                //  %if.else
	xori x1, x1, 1
	beqz x1, LBB0_25
LBB0_24:
	add x10, x0, x0
	jalr x0, LBB0_43 ( x0 )
LBB0_25:                                //  %sw.bb34
	lui x1, -2147483648 >> 12 & 0xfffff
	ori x28, x0, -2147483648 & 0xfff
	jalr x0, LBB0_17 ( x0 )
LBB0_26:                                //  %sw.bb18
	ori x28, x0, -1068953637 & 0xfff
	slli x28, x28, 20
	lui x1, -1068953637 >> 12 & 0xfffff
	jalr x0, LBB0_18 ( x0 )
LBB0_27:                                //  %if.end39
	bne x3, x4, LBB0_30
LBB0_28:                                //  %if.then41
	ori x28, x0, 1070141403 & 0xfff
	slli x28, x28, 20
	lui x3, 1070141403 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, -1077342245 & 0xfff
	slli x28, x28, 20
	lui x4, -1077342245 >> 12 & 0xfffff
	srli x28, x28, 20
	add x5, x0, x0
	or x10, x4, x28
	bgt x5, x1, LBB0_43
LBB0_29:                                //  %if.then41
	add x10, x0, x3
	jalr x0, LBB0_43 ( x0 )
LBB0_30:                                //  %if.end44
	ori x28, x0, 1070141403 & 0xfff
	slli x28, x28, 20
	sub x1, x3, x5
	lui x4, 1070141403 >> 12 & 0xfffff
	srli x28, x28, 20
	srai x3, x1, 23
	addi x5, x0, 60
	or x1, x4, x28
	bgt x3, x5, LBB0_35
LBB0_31:                                //  %if.else48
	bgez x11, LBB0_34
LBB0_32:                                //  %if.else48
	slti x1, x3, -60
	beqz x1, LBB0_34
LBB0_33:
	add x1, x0, x0
	jalr x0, LBB0_35 ( x0 )
LBB0_34:                                //  %if.else52
	call $__divsf3
	call $fabsf
	call $atanf
	add x1, x0, x10
LBB0_35:                                //  %if.end56
	andi x3, x8, 3
	bgtu x3, x0, LBB0_37
LBB0_36:
	add x10, x0, x1
	jalr x0, LBB0_43 ( x0 )
LBB0_37:                                //  %if.end56
	xori x4, x3, 2
	beqz x4, LBB0_40
LBB0_38:                                //  %if.end56
	xori x3, x3, 1
	bgtu x3, x0, LBB0_41
LBB0_39:                                //  %sw.bb58
	lui x3, -2147483648 >> 12 & 0xfffff
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	xor x10, x3, x1
	jalr x0, LBB0_43 ( x0 )
LBB0_40:                                //  %sw.bb70
	ori x28, x0, 867941678 & 0xfff
	slli x28, x28, 20
	lui x3, 867941678 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x3, x28
	add x10, x0, x1
	call $__addsf3
	add x1, x0, x10
	ori x28, x0, 1078530011 & 0xfff
	slli x28, x28, 20
	lui x3, 1078530011 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x3, x28
	add x11, x0, x1
	call $__subsf3
	jalr x0, LBB0_43 ( x0 )
LBB0_41:                                //  %sw.default
	lui x3, 867941678 >> 12 & 0xfffff
	ori x28, x0, 867941678 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x3, x28
	add x10, x0, x1
	call $__addsf3
	lui x1, -1068953637 >> 12 & 0xfffff
	ori x28, x0, -1068953637 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
LBB0_42:                                //  %cleanup
	call $__addsf3
LBB0_43:                                //  %cleanup
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
	.size	$__ieee754_atan2f, ($func_end0)-($__ieee754_atan2f)
	.cfi_endproc


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
