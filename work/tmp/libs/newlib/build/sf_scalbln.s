	.text
	.file	"sf_scalbln.bc"
	.globl	$scalblnf
	.type	$scalblnf,@function
$scalblnf:                              //  @scalblnf
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
	add x8, x0, x11
	srli x3, x1, 23
	andi x3, x3, 255
	xori x4, x3, 255
	beqz x4, LBB0_17
LBB0_1:                                 //  %entry
	bgtu x3, x0, LBB0_4
LBB0_2:                                 //  %if.then
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x3, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	and x3, x3, x1
	beqz x3, LBB0_16
LBB0_3:                                 //  %if.end12.thread
	lui x11, 1275068416>>12 &0xfffff
	add x10, x0, x1
	call $__mulsf3
	add x1, x0, x10
	srli x3, x1, 23
	andi x3, x3, 255
	addi x3, x3, -25
LBB0_4:                                 //  %if.end15
	ori x28, x0, 50000 & 0xfff
	slli x28, x28, 20
	lui x4, 50000 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	bgt x8, x4, LBB0_6
LBB0_5:                                 //  %if.end15
	add x3, x8, x3
	slti x4, x3, 255
	bgtu x4, x0, LBB0_8
LBB0_6:                                 //  %if.then19
	ori x28, x0, 1900671690 & 0xfff
	slli x28, x28, 20
	lui x3, 1900671690 >> 12 & 0xfffff
LBB0_7:                                 //  %cleanup
	srli x28, x28, 20
	or x8, x3, x28
	add x10, x0, x8
	add x11, x0, x1
	call $copysignf
	add x11, x0, x8
	jalr x0, LBB0_14 ( x0 )
LBB0_8:                                 //  %if.end21
	ori x28, x0, -50001 & 0xfff
	slli x28, x28, 20
	lui x4, -50001 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	bgt x8, x4, LBB0_10
LBB0_9:                                 //  %if.then23
	ori x28, x0, 228737632 & 0xfff
	slli x28, x28, 20
	lui x3, 228737632 >> 12 & 0xfffff
	jalr x0, LBB0_7 ( x0 )
LBB0_10:                                //  %if.end26
	ble x3, x0, LBB0_12
LBB0_11:                                //  %do.body29
	ori x28, x0, -2139095041 & 0xfff
	slli x28, x28, 20
	lui x4, -2139095041 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	and x1, x4, x1
	slli x3, x3, 23
	or x1, x3, x1
	jalr x0, LBB0_16 ( x0 )
LBB0_12:                                //  %if.end35
	addi x4, x0, -25
	ble x3, x4, LBB0_9
LBB0_13:                                //  %if.end40
	ori x28, x0, -2139095041 & 0xfff
	slli x28, x28, 20
	lui x4, -2139095041 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	slli x3, x3, 23
	lui x5, 209715200>>12 &0xfffff
	and x1, x4, x1
	add x3, x5, x3
	or x10, x1, x3
	lui x11, 855638016>>12 &0xfffff
LBB0_14:                                //  %cleanup
	call $__mulsf3
LBB0_15:                                //  %cleanup
	add x1, x0, x10
LBB0_16:                                //  %cleanup
	add x10, x0, x1
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
LBB0_17:                                //  %if.then14
	add x10, x0, x1
	add x11, x0, x1
	call $__addsf3
	jalr x0, LBB0_15 ( x0 )
$func_end0:
	.size	$scalblnf, ($func_end0)-($scalblnf)
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
