	.text
	.file	"e_atan2.bc"
	.globl	$__ieee754_atan2
	.type	$__ieee754_atan2,@function
$__ieee754_atan2:                       //  @__ieee754_atan2
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
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
	add x1, x0, x11
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	sub x3, x0, x12
	lui x4, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x4, x28
	or x4, x3, x12
	and x3, x5, x13
	slt x4, x4, x0
	or x7, x4, x3
	lui x4, 2146435072>>12 &0xfffff
	bgtu x7, x4, LBB0_41
LBB0_1:                                 //  %lor.lhs.false
	ori x28, x0, 2146435073 & 0xfff
	sub x7, x0, x10
	slli x28, x28, 20
	or x7, x7, x10
	and x5, x5, x1
	slt x7, x7, x0
	lui x9, 2146435073 >> 12 & 0xfffff
	srli x28, x28, 20
	or x7, x7, x5
	or x9, x9, x28
	bgeu x7, x9, LBB0_41
LBB0_2:                                 //  %if.end
	ori x28, x0, -1072693248 & 0xfff
	slli x28, x28, 20
	lui x7, -1072693248 >> 12 & 0xfffff
	srli x28, x28, 20
	or x7, x7, x28
	add x7, x7, x13
	or x7, x12, x7
	bgtu x7, x0, LBB0_4
LBB0_3:                                 //  %if.then21
	call $atan
	jalr x0, LBB0_42 ( x0 )
LBB0_4:                                 //  %if.end22
	srli x7, x13, 30
	slt x9, x1, x0
	andi x7, x7, 2
	or x14, x10, x5
	or x8, x9, x7
	bgtu x14, x0, LBB0_9
LBB0_5:                                 //  %if.then30
	andi x1, x8, 3
	xori x3, x1, 3
	beqz x3, LBB0_28
LBB0_6:                                 //  %if.then30
	xori x1, x1, 2
	bgtu x1, x0, LBB0_42
LBB0_7:                                 //  %sw.bb31
	ori x28, x0, 1074340347 & 0xfff
	slli x28, x28, 20
	lui x1, 1074340347 >> 12 & 0xfffff
LBB0_8:                                 //  %cleanup
	srli x28, x28, 20
	or x11, x1, x28
	ori x28, x0, 1413754136 & 0xfff
	slli x28, x28, 20
	lui x1, 1413754136 >> 12 & 0xfffff
	jalr x0, LBB0_14 ( x0 )
LBB0_9:                                 //  %if.end33
	or x7, x12, x3
	bgtu x7, x0, LBB0_15
LBB0_10:                                //  %if.then36
	ori x28, x0, 1073291771 & 0xfff
	slli x28, x28, 20
	lui x3, 1073291771 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, -1074191877 & 0xfff
	slli x28, x28, 20
	lui x4, -1074191877 >> 12 & 0xfffff
	srli x28, x28, 20
	add x5, x0, x0
	or x11, x4, x28
	bgt x5, x1, LBB0_12
LBB0_11:                                //  %if.then36
	add x11, x0, x3
LBB0_12:                                //  %if.then36
	lui x1, 1413754136 >> 12 & 0xfffff
LBB0_13:                                //  %cleanup
	ori x28, x0, 1413754136 & 0xfff
	slli x28, x28, 20
LBB0_14:                                //  %cleanup
	srli x28, x28, 20
	or x10, x1, x28
	jalr x0, LBB0_42 ( x0 )
LBB0_15:                                //  %if.end38
	bne x3, x4, LBB0_29
LBB0_16:                                //  %if.then40
	bne x5, x4, LBB0_24
LBB0_17:                                //  %if.then42
	ori x28, x0, 1072243195 & 0xfff
	slli x28, x28, 20
	lui x1, 1072243195 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	ori x28, x0, 1413754136 & 0xfff
	slli x28, x28, 20
	andi x3, x8, 3
	lui x1, 1413754136 >> 12 & 0xfffff
	srli x28, x28, 20
	xori x4, x3, 3
	or x10, x1, x28
	beqz x4, LBB0_23
LBB0_18:                                //  %if.then42
	xori x4, x3, 2
	beqz x4, LBB0_21
LBB0_19:                                //  %if.then42
	xori x3, x3, 1
	bgtu x3, x0, LBB0_42
LBB0_20:                                //  %sw.bb44
	lui x3, -1075240453 >> 12 & 0xfffff
	ori x28, x0, -1075240453 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x3, x28
	jalr x0, LBB0_13 ( x0 )
LBB0_21:                                //  %sw.bb45
	ori x28, x0, 1073928572 & 0xfff
	slli x28, x28, 20
	lui x1, 1073928572 >> 12 & 0xfffff
LBB0_22:                                //  %cleanup
	srli x28, x28, 20
	or x11, x1, x28
	ori x28, x0, 2134057426 & 0xfff
	slli x28, x28, 20
	lui x1, 2134057426 >> 12 & 0xfffff
	jalr x0, LBB0_14 ( x0 )
LBB0_23:                                //  %sw.bb46
	ori x28, x0, -1073555076 & 0xfff
	slli x28, x28, 20
	lui x1, -1073555076 >> 12 & 0xfffff
	jalr x0, LBB0_22 ( x0 )
LBB0_24:                                //  %if.else
	andi x1, x8, 3
	xori x3, x1, 3
	beqz x3, LBB0_28
LBB0_25:                                //  %if.else
	xori x3, x1, 2
	beqz x3, LBB0_7
LBB0_26:                                //  %if.else
	add x11, x0, x0
	xori x1, x1, 1
	add x10, x0, x11
	bgtu x1, x0, LBB0_42
LBB0_27:                                //  %sw.bb49
	lui x1, -2147483648 >> 12 & 0xfffff
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x0
	jalr x0, LBB0_42 ( x0 )
LBB0_28:                                //  %sw.bb32
	ori x28, x0, -1073143301 & 0xfff
	slli x28, x28, 20
	lui x1, -1073143301 >> 12 & 0xfffff
	jalr x0, LBB0_8 ( x0 )
LBB0_29:                                //  %if.end54
	beq x5, x4, LBB0_10
LBB0_30:                                //  %if.end59
	ori x28, x0, 1073291771 & 0xfff
	slli x28, x28, 20
	lui x1, 1073291771 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 1413754136 & 0xfff
	slli x28, x28, 20
	sub x3, x5, x3
	lui x7, 1413754136 >> 12 & 0xfffff
	srli x28, x28, 20
	srai x4, x3, 20
	addi x5, x0, 60
	or x3, x7, x28
	bgt x4, x5, LBB0_34
LBB0_31:                                //  %if.else64
	bgez x13, LBB0_33
LBB0_32:                                //  %if.else64
	add x1, x0, x0
	slti x4, x4, -60
	add x3, x0, x1
	bgtu x4, x0, LBB0_34
LBB0_33:                                //  %if.else68
	call $__divdf3
	call $fabs
	call $atan
	lui x7, 1413754136 >> 12 & 0xfffff
	add x1, x0, x11
	add x3, x0, x10
LBB0_34:                                //  %if.end72
	andi x4, x8, 3
	bgtu x4, x0, LBB0_36
LBB0_35:
	add x11, x0, x1
	add x10, x0, x3
	jalr x0, LBB0_42 ( x0 )
LBB0_36:                                //  %if.end72
	xori x5, x4, 2
	beqz x5, LBB0_39
LBB0_37:                                //  %if.end72
	xori x4, x4, 1
	bgtu x4, x0, LBB0_40
LBB0_38:                                //  %sw.bb74
	lui x4, -2147483648 >> 12 & 0xfffff
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	xor x11, x4, x1
	add x10, x0, x3
	jalr x0, LBB0_42 ( x0 )
LBB0_39:                                //  %sw.bb88
	ori x28, x0, 856972295 & 0xfff
	slli x28, x28, 20
	lui x4, 856972295 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x4, x28
	ori x28, x0, -1130256858 & 0xfff
	slli x28, x28, 20
	lui x4, -1130256858 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x4, x28
	add x10, x0, x3
	add x11, x0, x1
	add x8, x0, x7
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	ori x28, x0, 1413754136 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x8, x28
	ori x28, x0, 1074340347 & 0xfff
	slli x28, x28, 20
	lui x4, 1074340347 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x4, x28
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	jalr x0, LBB0_42 ( x0 )
LBB0_40:                                //  %sw.default
	lui x4, 856972295 >> 12 & 0xfffff
	ori x28, x0, 856972295 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x12, x4, x28
	lui x4, -1130256858 >> 12 & 0xfffff
	ori x28, x0, -1130256858 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x4, x28
	add x10, x0, x3
	add x11, x0, x1
	add x8, x0, x7
	call $__adddf3
	ori x28, x0, 1413754136 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x12, x8, x28
	lui x1, -1073143301 >> 12 & 0xfffff
	ori x28, x0, -1073143301 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x1, x28
LBB0_41:                                //  %cleanup
	call $__adddf3
LBB0_42:                                //  %cleanup
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
	.size	$__ieee754_atan2, ($func_end0)-($__ieee754_atan2)
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
