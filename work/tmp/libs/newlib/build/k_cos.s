	.text
	.file	"k_cos.bc"
	.globl	$__kernel_cos
	.type	$__kernel_cos,@function
$__kernel_cos:                          //  @__kernel_cos
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -56
$cfi2:
	.cfi_adjust_cfa_offset 56
	sw x1, 52 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	sw x13, 32 ( x2 )               //  4-byte Folded Spill
	sw x12, 28 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	call $__fixdfsi
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x3, x1, x8
	bgtu x10, x0, LBB0_3
LBB0_1:                                 //  %entry
	lui x1, 1044381696>>12 &0xfffff
	bgeu x3, x1, LBB0_3
LBB0_2:
	lui x11, 1072693248>>12 &0xfffff
	add x10, x0, x0
	jalr x0, LBB0_10 ( x0 )
LBB0_3:                                 //  %if.end4
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x10
	add x13, x0, x8
	sw x8, 24 ( x2 )                //  4-byte Folded Spill
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	call $__muldf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1098368812 & 0xfff
	slli x28, x28, 20
	lui x1, -1098368812 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1112999191 & 0xfff
	slli x28, x28, 20
	lui x1, -1112999191 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x8, x0, x11
	call $__muldf3
	ori x28, x0, -1112231484 & 0xfff
	slli x28, x28, 20
	lui x1, -1112231484 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1042411166 & 0xfff
	slli x28, x28, 20
	lui x1, 1042411166 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, -2137238867 & 0xfff
	slli x28, x28, 20
	lui x1, -2137238867 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1097695665 & 0xfff
	slli x28, x28, 20
	lui x1, -1097695665 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 432739728 & 0xfff
	slli x28, x28, 20
	lui x1, 432739728 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1056571808 & 0xfff
	slli x28, x28, 20
	lui x1, 1056571808 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 381768055 & 0xfff
	slli x28, x28, 20
	lui x1, 381768055 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1084833428 & 0xfff
	slli x28, x28, 20
	lui x1, -1084833428 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1431655756 & 0xfff
	slli x28, x28, 20
	lui x1, 1431655756 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1067799893 & 0xfff
	slli x28, x28, 20
	lui x1, 1067799893 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x7, 16 ( x2 )                //  4-byte Folded Reload
	add x3, x0, x10
	add x1, x0, x11
	ori x28, x0, 1070805810 & 0xfff
	slli x28, x28, 20
	lui x4, 1070805810 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	bgtu x7, x4, LBB0_5
LBB0_4:                                 //  %if.then17
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x3
	add x13, x0, x1
	call $__muldf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	lw x12, 28 ( x2 )               //  4-byte Folded Reload
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x0
	lui x13, 1071644672>>12 &0xfffff
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x8, x0, x12
	call $__muldf3
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lui x11, 1072693248>>12 &0xfffff
	add x10, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	jalr x0, LBB0_9 ( x0 )
LBB0_5:                                 //  %if.else
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lui x4, 1072234496>>12 &0xfffff
	add x9, x0, x0
	sw x9, 12 ( x2 )                //  4-byte Folded Spill
	bgeu x4, x7, LBB0_7
LBB0_6:
	lui x4, 1070727168>>12 &0xfffff
	jalr x0, LBB0_8 ( x0 )
LBB0_7:                                 //  %do.body27
	ori x28, x0, -2097152 & 0xfff
	slli x28, x28, 20
	lui x4, -2097152 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	add x4, x4, x7
LBB0_8:                                 //  %if.end35
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x5
	add x11, x0, x8
	add x12, x0, x3
	add x13, x0, x1
	call $__muldf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	lw x12, 28 ( x2 )               //  4-byte Folded Reload
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x0
	lui x13, 1071644672>>12 &0xfffff
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__muldf3
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x12, x0, x8
	lw x13, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	lui x11, 1072693248>>12 &0xfffff
	add x10, x0, x0
	add x12, x0, x8
	lw x13, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	lw x12, 40 ( x2 )               //  4-byte Folded Reload
	lw x13, 36 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_9:                                 //  %cleanup
	call $__subdf3
LBB0_10:                                //  %cleanup
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 56
$cfi5:
	.cfi_adjust_cfa_offset -56
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__kernel_cos, ($func_end0)-($__kernel_cos)
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
