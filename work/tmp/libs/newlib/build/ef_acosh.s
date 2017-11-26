	.text
	.file	"ef_acosh.bc"
	.globl	$__ieee754_acoshf
	.type	$__ieee754_acoshf,@function
$__ieee754_acoshf:                      //  @__ieee754_acoshf
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi2:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	ori x28, x0, 1065353215 & 0xfff
	slli x28, x28, 20
	lui x1, 1065353215 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgt x8, x1, LBB0_2
LBB0_1:                                 //  %if.then
	add x10, x0, x8
	add x11, x0, x8
	call $__subsf3
	add x11, x0, x10
	call $__divsf3
	jalr x0, LBB0_11 ( x0 )
LBB0_2:                                 //  %if.else
	lui x1, 1300234240>>12 &0xfffff
	bgt x1, x8, LBB0_6
LBB0_3:                                 //  %if.then3
	lui x1, 2139095040>>12 &0xfffff
	bgt x1, x8, LBB0_5
LBB0_4:                                 //  %if.then5
	add x10, x0, x8
	add x11, x0, x8
	call $__addsf3
	jalr x0, LBB0_11 ( x0 )
LBB0_5:                                 //  %if.else6
	add x10, x0, x8
	call $__ieee754_logf
	ori x28, x0, 1060205080 & 0xfff
	slli x28, x28, 20
	lui x1, 1060205080 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	jalr x0, LBB0_11 ( x0 )
LBB0_6:                                 //  %if.else8
	lui x1, 1065353216>>12 &0xfffff
	bne x8, x1, LBB0_8
LBB0_7:
	add x10, x0, x0
	jalr x0, LBB0_11 ( x0 )
LBB0_8:                                 //  %if.else11
	ori x28, x0, 1073741825 & 0xfff
	slli x28, x28, 20
	lui x1, 1073741825 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgt x1, x8, LBB0_10
LBB0_9:                                 //  %if.then13
	add x10, x0, x8
	add x11, x0, x8
	call $__mulsf3
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	add x11, x0, x8
	call $__addsf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1082130432 & 0xfff
	slli x28, x28, 20
	lui x1, -1082130432 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__addsf3
	call $__ieee754_sqrtf
	add x11, x0, x8
	call $__addsf3
	add x1, x0, x10
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__divsf3
	add x1, x0, x10
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	call $__ieee754_logf
	jalr x0, LBB0_11 ( x0 )
LBB0_10:                                //  %if.else21
	ori x28, x0, -1082130432 & 0xfff
	slli x28, x28, 20
	lui x1, -1082130432 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__addsf3
	add x8, x0, x10
	add x11, x0, x8
	call $__addsf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	add x11, x0, x8
	call $__mulsf3
	add x1, x0, x10
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	call $__ieee754_sqrtf
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__addsf3
	call $log1pf
LBB0_11:                                //  %cleanup
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi5:
	.cfi_adjust_cfa_offset -32
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__ieee754_acoshf, ($func_end0)-($__ieee754_acoshf)
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
