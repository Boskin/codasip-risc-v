	.text
	.file	"s_scalbn.bc"
	.globl	$scalbn
	.type	$scalbn,@function
$scalbn:                                //  @scalbn
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
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
	add x3, x0, x11
	add x1, x0, x10
	add x8, x0, x12
	srli x4, x3, 20
	andi x4, x4, 2047
	xori x5, x4, 2047
	beqz x5, LBB0_11
LBB0_1:                                 //  %entry
	bgtu x4, x0, LBB0_5
LBB0_2:                                 //  %if.then
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x4, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	and x4, x4, x3
	or x4, x1, x4
	beqz x4, LBB0_18
LBB0_3:                                 //  %if.end
	add x12, x0, x0
	lui x13, 1129316352>>12 &0xfffff
	add x10, x0, x1
	add x11, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	ori x28, x0, -50001 & 0xfff
	slli x28, x28, 20
	lui x4, -50001 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	ble x8, x4, LBB0_8
LBB0_4:
	srli x4, x3, 20
	andi x4, x4, 2047
	addi x4, x4, -54
LBB0_5:                                 //  %if.end20
	add x4, x8, x4
	slti x5, x4, 2047
	bgtu x5, x0, LBB0_12
LBB0_6:                                 //  %if.then23
	ori x28, x0, -2013235812 & 0xfff
	slli x28, x28, 20
	lui x4, -2013235812 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x4, x28
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 2117592124 & 0xfff
	slli x28, x28, 20
	lui x4, 2117592124 >> 12 & 0xfffff
LBB0_7:                                 //  %cleanup
	srli x28, x28, 20
	or x8, x4, x28
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $copysign
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	add x13, x0, x8
	jalr x0, LBB0_9 ( x0 )
LBB0_8:                                 //  %if.then14
	ori x28, x0, -1023872167 & 0xfff
	slli x28, x28, 20
	lui x4, -1023872167 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x4, x28
	ori x28, x0, 27618847 & 0xfff
	slli x28, x28, 20
	lui x4, 27618847 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x4, x28
	add x10, x0, x1
	add x11, x0, x3
LBB0_9:                                 //  %cleanup
	call $__muldf3
LBB0_10:                                //  %cleanup
	add x1, x0, x10
	add x3, x0, x11
	jalr x0, LBB0_18 ( x0 )
LBB0_11:                                //  %if.then19
	add x10, x0, x1
	add x11, x0, x3
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	jalr x0, LBB0_10 ( x0 )
LBB0_12:                                //  %if.end25
	ble x4, x0, LBB0_14
LBB0_13:                                //  %do.body28
	ori x28, x0, -2146435073 & 0xfff
	slli x28, x28, 20
	lui x5, -2146435073 >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x5, x28
	and x3, x5, x3
	slli x4, x4, 20
	or x3, x4, x3
	jalr x0, LBB0_18 ( x0 )
LBB0_14:                                //  %if.end37
	addi x5, x0, -54
	bgt x4, x5, LBB0_17
LBB0_15:                                //  %if.then39
	ori x28, x0, 50001 & 0xfff
	slli x28, x28, 20
	lui x4, 50001 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	ble x4, x8, LBB0_6
LBB0_16:                                //  %if.else
	ori x28, x0, -1023872167 & 0xfff
	slli x28, x28, 20
	lui x4, -1023872167 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x4, x28
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 27618847 & 0xfff
	slli x28, x28, 20
	lui x4, 27618847 >> 12 & 0xfffff
	jalr x0, LBB0_7 ( x0 )
LBB0_17:                                //  %if.end46
	ori x28, x0, -2146435073 & 0xfff
	slli x28, x28, 20
	lui x5, -2146435073 >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x5, x28
	slli x4, x4, 20
	lui x7, 56623104>>12 &0xfffff
	and x3, x5, x3
	add x4, x7, x4
	or x11, x3, x4
	add x12, x0, x0
	lui x13, 1016070144>>12 &0xfffff
	add x10, x0, x1
	call $__muldf3
	add x3, x0, x11
	add x1, x0, x10
LBB0_18:                                //  %cleanup
	add x10, x0, x1
	add x11, x0, x3
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
	.size	$scalbn, ($func_end0)-($scalbn)
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
