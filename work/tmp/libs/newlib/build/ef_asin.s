	.text
	.file	"ef_asin.bc"
	.globl	$__ieee754_asinf
	.type	$__ieee754_asinf,@function
$__ieee754_asinf:                       //  @__ieee754_asinf
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi2:
	.cfi_adjust_cfa_offset 40
	sw x1, 36 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x8, x1, x3
	lui x1, 1065353216>>12 &0xfffff
	bne x8, x1, LBB0_3
LBB0_1:                                 //  %if.then
	ori x28, x0, 1070141403 & 0xfff
	slli x28, x28, 20
	lui x1, 1070141403 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x3
	add x8, x0, x3
	call $__mulsf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1287930578 & 0xfff
	slli x28, x28, 20
	lui x1, -1287930578 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	add x1, x0, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	jalr x0, LBB0_5 ( x0 )
LBB0_3:                                 //  %if.else
	ori x28, x0, 1065353217 & 0xfff
	slli x28, x28, 20
	lui x1, 1065353217 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x1, x8, LBB0_7
LBB0_4:                                 //  %if.then3
	add x10, x0, x3
	add x11, x0, x3
	call $__subsf3
	add x11, x0, x10
	call $__divsf3
LBB0_5:                                 //  %cleanup
	add x3, x0, x10
LBB0_6:                                 //  %cleanup
	add x10, x0, x3
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi5:
	.cfi_adjust_cfa_offset -40
$cfi6:
	.cfi_def_cfa 2, 0
	ret
LBB0_7:                                 //  %if.else5
	ori x28, x0, 1056964607 & 0xfff
	slli x28, x28, 20
	lui x1, 1056964607 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	bgtu x8, x1, LBB0_10
LBB0_8:                                 //  %if.then7
	ori x28, x0, 838860799 & 0xfff
	slli x28, x28, 20
	lui x1, 838860799 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_16
LBB0_9:                                 //  %if.then9
	ori x28, x0, 1900671690 & 0xfff
	slli x28, x28, 20
	lui x1, 1900671690 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x3
	call $__addsf3
	lui x11, 1065353216>>12 &0xfffff
	call $__gtsf2
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	bgt x10, x0, LBB0_6
LBB0_10:                                //  %if.end40
	add x10, x0, x3
	call $fabsf
	add x1, x0, x10
	lui x10, 1065353216>>12 &0xfffff
	add x11, x0, x1
	call $__subsf3
	lui x11, 1056964608>>12 &0xfffff
	call $__mulsf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 940699400 & 0xfff
	slli x28, x28, 20
	lui x1, 940699400 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	ori x28, x0, 978288388 & 0xfff
	slli x28, x28, 20
	lui x1, 978288388 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1121709754 & 0xfff
	slli x28, x28, 20
	lui x1, -1121709754 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1045301928 & 0xfff
	slli x28, x28, 20
	lui x1, 1045301928 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1096372080 & 0xfff
	slli x28, x28, 20
	lui x1, -1096372080 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1042983595 & 0xfff
	slli x28, x28, 20
	lui x1, 1042983595 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1033750062 & 0xfff
	slli x28, x28, 20
	lui x1, 1033750062 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	ori x28, x0, -1087360159 & 0xfff
	slli x28, x28, 20
	lui x1, -1087360159 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1073829677 & 0xfff
	slli x28, x28, 20
	lui x1, 1073829677 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1072049863 & 0xfff
	slli x28, x28, 20
	lui x1, -1072049863 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x11, 1065353216>>12 &0xfffff
	call $__addsf3
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	call $__ieee754_sqrtf
	add x8, x0, x10
	ori x28, x0, 1064933786 & 0xfff
	slli x28, x28, 20
	lui x1, 1064933786 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x3, LBB0_12
LBB0_11:                                //  %if.then64
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__divsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__addsf3
	add x11, x0, x10
	call $__addsf3
	ori x28, x0, 859553070 & 0xfff
	slli x28, x28, 20
	lui x1, 859553070 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	ori x28, x0, 1070141403 & 0xfff
	slli x28, x28, 20
	lui x3, 1070141403 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x3, x28
	jalr x0, LBB0_13 ( x0 )
LBB0_12:                                //  %if.else71
	ori x28, x0, -4096 & 0xfff
	slli x28, x28, 20
	lui x1, -4096 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x10, x1, x8
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x10
	call $__mulsf3
	add x1, x0, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__subsf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	add x1, x0, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__divsf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__divsf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	add x11, x0, x8
	call $__addsf3
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x8, x0, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	nop
	add x11, x0, x10
	call $__addsf3
	add x1, x0, x10
	ori x28, x0, -1287930578 & 0xfff
	slli x28, x28, 20
	lui x3, -1287930578 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x3, x28
	add x11, x0, x1
	call $__subsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__subsf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	add x11, x0, x10
	call $__addsf3
	add x1, x0, x10
	ori x28, x0, 1061752795 & 0xfff
	slli x28, x28, 20
	lui x3, 1061752795 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x3, x28
	add x10, x0, x8
	add x11, x0, x1
	call $__subsf3
	add x1, x0, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__subsf3
	add x1, x0, x10
	add x10, x0, x8
LBB0_13:                                //  %if.end98
	add x11, x0, x1
	call $__subsf3
	add x8, x0, x10
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	add x11, x0, x8
	call $__subsf3
	add x1, x0, x0
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x3, x1, LBB0_15
LBB0_14:                                //  %if.end98
	add x8, x0, x10
LBB0_15:                                //  %if.end98
	add x10, x0, x8
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi7:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi8:
	.cfi_adjust_cfa_offset -40
$cfi9:
	.cfi_def_cfa 2, 0
	ret
LBB0_16:                                //  %if.else13
	add x10, x0, x3
	add x11, x0, x3
	call $__mulsf3
	add x8, x0, x10
	ori x28, x0, 940699400 & 0xfff
	slli x28, x28, 20
	lui x1, 940699400 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	ori x28, x0, 978288388 & 0xfff
	slli x28, x28, 20
	lui x1, 978288388 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1121709754 & 0xfff
	slli x28, x28, 20
	lui x1, -1121709754 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1045301928 & 0xfff
	slli x28, x28, 20
	lui x1, 1045301928 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1096372080 & 0xfff
	slli x28, x28, 20
	lui x1, -1096372080 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1042983595 & 0xfff
	slli x28, x28, 20
	lui x1, 1042983595 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1033750062 & 0xfff
	slli x28, x28, 20
	lui x1, 1033750062 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	ori x28, x0, -1087360159 & 0xfff
	slli x28, x28, 20
	lui x1, -1087360159 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1073829677 & 0xfff
	slli x28, x28, 20
	lui x1, 1073829677 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1072049863 & 0xfff
	slli x28, x28, 20
	lui x1, -1072049863 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x11, 1065353216>>12 &0xfffff
	call $__addsf3
	add x1, x0, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__divsf3
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__mulsf3
	add x11, x0, x8
	call $__addsf3
	jalr x0, LBB0_5 ( x0 )
$func_end0:
	.size	$__ieee754_asinf, ($func_end0)-($__ieee754_asinf)
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
