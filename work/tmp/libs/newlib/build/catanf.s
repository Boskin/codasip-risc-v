	.text
	.file	"catanf.bc"
	.globl	$catanf
	.type	$catanf,@function
$catanf:                                //  @catanf
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retstruct_reg 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -72
$cfi2:
	.cfi_adjust_cfa_offset 72
	sw x1, 68 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 60 ( x2 )                //  4-byte Folded Spill
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	lw x8, 4 ( x11 )
	lw x1, 0 ( x11 )
	nop
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	sw x8, 56 ( x2 )
	sw x1, 52 ( x2 )
	sw x1, 36 ( x2 )
	sw x8, 40 ( x2 )
	addi x10, x2, 36
	call $crealf
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 44 ( x2 )
	sw x8, 48 ( x2 )
	sw x8, 32 ( x2 )
	lw x1, 44 ( x2 )
	nop
	sw x1, 28 ( x2 )
	add x11, x0, x0
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	call $__nesf2
	add x8, x0, x10
	addi x10, x2, 28
	call $cimagf
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	lui x1, 2143289344>>12 &0xfffff
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	bgtu x8, x0, LBB0_3
LBB0_1:                                 //  %entry
	lui x11, 1065353216>>12 &0xfffff
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__gtsf2
	ble x10, x0, LBB0_3
LBB0_2:
	lui x4, 2139095040>>12 &0xfffff
	jalr x0, LBB0_7 ( x0 )
LBB0_3:                                 //  %if.end
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	nop
	add x11, x0, x10
	call $__mulsf3
	add x1, x0, x10
	lui x10, 1065353216>>12 &0xfffff
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	add x11, x0, x1
	call $__subsf3
	add x8, x0, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	nop
	add x11, x0, x10
	call $__mulsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__subsf3
	add x8, x0, x10
	add x11, x0, x0
	call $__eqsf2
	bgtu x10, x0, LBB0_5
LBB0_4:
	lui x4, 2139095040>>12 &0xfffff
	jalr x0, LBB0_7 ( x0 )
LBB0_5:                                 //  %if.end12
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	nop
	add x11, x0, x10
	call $__addsf3
	add x11, x0, x8
	call $atan2f
	lui x11, 1056964608>>12 &0xfffff
	call $__mulsf3
	call $_redupif
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1082130432 & 0xfff
	slli x28, x28, 20
	lui x1, -1082130432 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	add x11, x0, x10
	call $__mulsf3
	add x1, x0, x10
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	add x8, x0, x10
	add x11, x0, x0
	call $__eqsf2
	lui x4, 2139095040>>12 &0xfffff
	beqz x10, LBB0_7
LBB0_6:                                 //  %if.end21
	lui x11, 1065353216>>12 &0xfffff
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	add x11, x0, x10
	call $__mulsf3
	add x1, x0, x10
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	add x11, x0, x8
	call $__divsf3
	call $logf
	lui x11, 1048576000>>12 &0xfffff
	call $__mulsf3
	add x8, x0, x10
	add x11, x0, x0
	call $__mulsf3
	add x1, x0, x10
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	add x11, x0, x0
	call $__addsf3
	add x4, x0, x10
LBB0_7:                                 //  %cleanup
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 0 ( x1 )
	sw x4, 4 ( x1 )
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	lw x1, 68 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 72
$cfi5:
	.cfi_adjust_cfa_offset -72
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$catanf, ($func_end0)-($catanf)
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
