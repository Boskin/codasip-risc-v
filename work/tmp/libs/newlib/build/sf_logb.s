	.text
	.file	"sf_logb.bc"
	.globl	$logbf
	.type	$logbf,@function
$logbf:                                 //  @logbf
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
	ori x28, x0, -8388608 & 0xfff
	slli x28, x28, 20
	lui x1, -8388608 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x3, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	and x3, x3, x10
	beqz x3, LBB0_9
LBB0_1:                                 //  %if.end
	ori x28, x0, 8388607 & 0xfff
	slli x28, x28, 20
	lui x1, 8388607 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x3, x1, LBB0_5
LBB0_2:                                 //  %if.then9
	ori x28, x0, -1023672320 & 0xfff
	slli x28, x28, 20
	lui x1, -1023672320 >> 12 & 0xfffff
	srli x28, x28, 20
	slli x3, x10, 8
	or x1, x1, x28
	ble x3, x0, LBB0_9
LBB0_3:                                 //  %for.body.preheader
	addi x10, x0, -126
LBB0_4:                                 //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	slli x3, x3, 1
	addi x10, x10, -1
	bgt x3, x0, LBB0_4
	jalr x0, LBB0_8 ( x0 )
LBB0_5:                                 //  %if.else
	lui x1, 2139095040>>12 &0xfffff
	beq x3, x1, LBB0_9
LBB0_6:                                 //  %if.else17
	lui x4, 2139095040>>12 &0xfffff
	add x1, x0, x10
	bgtu x3, x4, LBB0_9
LBB0_7:                                 //  %if.else21
	srli x1, x3, 23
	addi x10, x1, -127
LBB0_8:                                 //  %cleanup
	call $__floatsisf
	add x1, x0, x10
LBB0_9:                                 //  %cleanup
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
	.size	$logbf, ($func_end0)-($logbf)
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
