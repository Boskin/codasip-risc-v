	.text
	.file	"s_logb.bc"
	.globl	$logb
	.type	$logb,@function
$logb:                                  //  @logb
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
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
	add x1, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x3, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	lui x4, 1048575 >> 12 & 0xfffff
	srli x28, x28, 20
	and x13, x3, x11
	or x4, x4, x28
	add x3, x0, x1
	bgtu x13, x4, LBB0_11
LBB0_1:                                 //  %if.then
	or x4, x1, x13
	bgtu x4, x0, LBB0_3
LBB0_2:                                 //  %if.then3
	ori x28, x0, -1074790400 & 0xfff
	slli x28, x28, 20
	lui x3, -1074790400 >> 12 & 0xfffff
	srli x28, x28, 20
	add x10, x0, x0
	or x11, x3, x28
	add x12, x0, x1
	call $__divdf3
	add x1, x0, x10
	jalr x0, LBB0_21 ( x0 )
LBB0_3:                                 //  %if.else
	bgtu x13, x0, LBB0_8
LBB0_4:                                 //  %for.cond.preheader
	bgt x3, x0, LBB0_6
LBB0_5:
	addi x10, x0, -1043
	jalr x0, LBB0_10 ( x0 )
LBB0_6:                                 //  %for.body.preheader
	addi x10, x0, -1043
LBB0_7:                                 //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	slli x3, x3, 1
	addi x10, x10, -1
	bgt x3, x0, LBB0_7
	jalr x0, LBB0_10 ( x0 )
LBB0_8:                                 //  %if.else15
	addi x10, x0, -1022
	slli x1, x11, 11
	ble x1, x0, LBB0_10
LBB0_9:                                 //  %for.body19
                                        //  =>This Inner Loop Header: Depth=1
	slli x1, x1, 1
	addi x10, x10, -1
	bgt x1, x0, LBB0_9
LBB0_10:                                //  %if.end24
	call $__floatsidf
	add x1, x0, x10
	jalr x0, LBB0_21 ( x0 )
LBB0_11:                                //  %if.else25
	ori x28, x0, 2146435071 & 0xfff
	slli x28, x28, 20
	lui x4, 2146435071 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	bgtu x13, x4, LBB0_13
LBB0_12:                                //  %if.then28
	srli x1, x13, 20
	addi x10, x1, -1023
	jalr x0, LBB0_10 ( x0 )
LBB0_13:                                //  %if.else31
	lui x5, 2146435072>>12 &0xfffff
	add x4, x0, x0
	add x7, x0, x1
	bne x13, x5, LBB0_15
LBB0_14:                                //  %if.else31
	add x7, x0, x4
LBB0_15:                                //  %if.else31
	bne x3, x4, LBB0_17
LBB0_16:                                //  %if.else31
	add x1, x0, x7
LBB0_17:                                //  %if.else31
	add x7, x0, x11
	bne x13, x5, LBB0_19
LBB0_18:                                //  %if.else31
	add x7, x0, x5
LBB0_19:                                //  %if.else31
	bne x3, x4, LBB0_21
LBB0_20:                                //  %if.else31
	add x11, x0, x7
LBB0_21:                                //  %cleanup
	add x10, x0, x1
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
	.size	$logb, ($func_end0)-($logb)
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
