	.text
	.file	"sf_ilogb.bc"
	.globl	$ilogbf
	.type	$ilogbf,@function
$ilogbf:                                //  @ilogbf
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
	ori x28, x0, -2147483647 & 0xfff
	slli x28, x28, 20
	lui x4, -2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x4, x28
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x5, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x5, x28
	and x4, x4, x3
	beqz x4, LBB0_6
LBB0_1:                                 //  %if.end
	ori x28, x0, 8388607 & 0xfff
	slli x28, x28, 20
	lui x7, 8388607 >> 12 & 0xfffff
	srli x28, x28, 20
	or x7, x7, x28
	bgtu x4, x7, LBB0_4
LBB0_2:                                 //  %if.then2
	addi x10, x0, -126
	slli x3, x3, 8
	ble x3, x0, LBB0_6
LBB0_3:                                 //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	slli x3, x3, 1
	addi x10, x10, -1
	bgt x3, x0, LBB0_3
	jalr x0, LBB0_6 ( x0 )
LBB0_4:                                 //  %if.else
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x5, x28
	ori x28, x0, 2139095039 & 0xfff
	slli x28, x28, 20
	lui x3, 2139095039 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	bgtu x4, x3, LBB0_6
LBB0_5:                                 //  %if.else7
	srli x3, x4, 23
	addi x10, x3, -127
LBB0_6:                                 //  %cleanup
	ret
$func_end0:
	.size	$ilogbf, ($func_end0)-($ilogbf)
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