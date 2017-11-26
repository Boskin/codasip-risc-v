	.text
	.file	"ef_sqrt.bc"
	.globl	$__ieee754_sqrtf
	.type	$__ieee754_sqrtf,@function
$__ieee754_sqrtf:                       //  @__ieee754_sqrtf
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
	add x8, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x4, x1, x8
	lui x1, 2139095040>>12 &0xfffff
	bgtu x1, x4, LBB0_2
LBB0_1:                                 //  %if.then
	add x10, x0, x8
	add x11, x0, x8
	call $__mulsf3
	add x11, x0, x8
	call $__addsf3
	add x8, x0, x10
	jalr x0, LBB0_18 ( x0 )
LBB0_2:                                 //  %if.end
	beqz x4, LBB0_18
LBB0_3:                                 //  %if.end3
	bgez x8, LBB0_5
LBB0_4:                                 //  %if.then5
	add x10, x0, x8
	add x11, x0, x8
	call $__subsf3
	add x11, x0, x10
	call $__divsf3
	add x8, x0, x10
	jalr x0, LBB0_18 ( x0 )
LBB0_5:                                 //  %if.end7
	ori x28, x0, 8388607 & 0xfff
	slli x28, x28, 20
	lui x1, 8388607 >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x1, x28
	srli x3, x8, 23
	bgtu x4, x5, LBB0_11
LBB0_6:                                 //  %for.cond.preheader
	lui x5, 8388608>>12 &0xfffff
	and x4, x5, x8
	beqz x4, LBB0_8
LBB0_7:
	add x4, x0, x0
	jalr x0, LBB0_10 ( x0 )
LBB0_8:                                 //  %for.body.preheader
	add x4, x0, x0
LBB0_9:                                 //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	slli x8, x8, 1
	and x7, x5, x8
	addi x4, x4, 1
	beqz x7, LBB0_9
LBB0_10:                                //  %for.end
	addi x3, x3, 1
	sub x3, x3, x4
LBB0_11:                                //  %if.end14
	ori x28, x0, 8388607 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x1, x28
	addi x1, x3, -127
	and x3, x4, x8
	lui x4, 8388608>>12 &0xfffff
	or x3, x4, x3
	andi x4, x1, 1
	sll x4, x3, x4
	add x3, x0, x0
	lui x5, 16777216>>12 &0xfffff
	add x7, x0, x3
LBB0_12:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x9, x7, x5
	slli x4, x4, 1
	bgt x9, x4, LBB0_14
LBB0_13:                                //  %if.then26
                                        //    in Loop: Header=BB0_12 Depth=1
	add x3, x3, x5
	sub x4, x4, x9
	add x7, x5, x9
LBB0_14:                                //  %if.end30
                                        //    in Loop: Header=BB0_12 Depth=1
	srli x5, x5, 1
	bgtu x5, x0, LBB0_12
LBB0_15:                                //  %while.end
	add x5, x0, x0
	beq x4, x5, LBB0_17
LBB0_16:                                //  %while.end
	andi x5, x3, 1
LBB0_17:                                //  %while.end
	add x3, x3, x5
	slli x1, x1, 22
	lui x4, -8388608 >> 12 & 0xfffff
	ori x28, x0, -8388608 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	and x1, x4, x1
	srai x3, x3, 1
	add x1, x3, x1
	lui x3, 1056964608>>12 &0xfffff
	add x8, x3, x1
LBB0_18:                                //  %cleanup
	add x10, x0, x8
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
	.size	$__ieee754_sqrtf, ($func_end0)-($__ieee754_sqrtf)
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
