	.text
	.file	"catan.bc"
	.globl	$catan
	.type	$catan,@function
$catan:                                 //  @catan
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retstruct_reg 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -136
$cfi2:
	.cfi_adjust_cfa_offset 136
	sw x1, 132 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 124 ( x2 )               //  4-byte Folded Spill
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	lw x3, 12 ( x11 )
	nop
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	lw x4, 8 ( x11 )
	nop
	sw x4, 52 ( x2 )                //  4-byte Folded Spill
	lw x5, 0 ( x11 )
	nop
	sw x5, 48 ( x2 )                //  4-byte Folded Spill
	lw x8, 4 ( x11 )
	addi x1, x2, 108
	sw x4, 8 ( x1 )
	sw x3, 120 ( x2 )
	sw x8, 4 ( x1 )
	sw x5, 108 ( x2 )
	lw x3, 8 ( x1 )
	addi x10, x2, 76
	sw x3, 8 ( x10 )
	lw x1, 4 ( x1 )
	nop
	sw x1, 4 ( x10 )
	lw x1, 120 ( x2 )
	nop
	sw x1, 88 ( x2 )
	lw x1, 108 ( x2 )
	nop
	sw x1, 76 ( x2 )
	call $creal
	addi x1, x2, 92
	sw x8, 4 ( x1 )
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 8 ( x1 )
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 92 ( x2 )
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 104 ( x2 )
	lw x3, 8 ( x1 )
	addi x4, x2, 60
	sw x3, 8 ( x4 )
	lw x1, 4 ( x1 )
	nop
	sw x1, 4 ( x4 )
	lw x1, 104 ( x2 )
	nop
	sw x1, 72 ( x2 )
	lw x1, 92 ( x2 )
	nop
	sw x1, 60 ( x2 )
	add x12, x0, x0
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	add x13, x0, x12
	call $__nedf2
	add x8, x0, x10
	addi x10, x2, 60
	call $cimag
	sw x10, 56 ( x2 )               //  4-byte Folded Spill
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	lui x1, 2146959360>>12 &0xfffff
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	bgtu x8, x0, LBB0_3
LBB0_1:                                 //  %entry
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	nop
	call $__gtdf2
	ble x10, x0, LBB0_3
LBB0_2:
	add x4, x0, x0
	add x5, x0, x4
	lui x11, 2146435072>>12 &0xfffff
	jalr x0, LBB0_6 ( x0 )
LBB0_3:                                 //  %if.end
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x10
	add x13, x0, x11
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x0
	lui x11, 1072693248>>12 &0xfffff
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x1
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x3
	call $__subdf3
	add x8, x0, x10
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x10
	add x13, x0, x11
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	add x8, x0, x10
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x0
	add x13, x0, x12
	call $__eqdf2
	beqz x10, LBB0_2
LBB0_4:                                 //  %if.end12
	ori x28, x0, -1074790400 & 0xfff
	slli x28, x28, 20
	lui x1, -1074790400 >> 12 & 0xfffff
	srli x28, x28, 20
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x0
	or x13, x1, x28
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	call $__adddf3
	add x12, x0, x10
	add x13, x0, x11
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x8
	add x13, x0, x8
	call $__eqdf2
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x10
	add x13, x0, x11
	call $__adddf3
	lw x12, 20 ( x2 )               //  4-byte Folded Reload
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $atan2
	lui x13, 1071644672>>12 &0xfffff
	add x12, x0, x8
	call $__muldf3
	call $_redupi
	add x4, x0, x8
	add x1, x0, x11
	add x5, x0, x4
	lui x11, 2146435072>>12 &0xfffff
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x3, LBB0_6
LBB0_5:                                 //  %if.end21
	add x8, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	call $__adddf3
	add x12, x0, x10
	add x13, x0, x11
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	lw x13, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__divdf3
	call $log
	lui x13, 1070596096>>12 &0xfffff
	add x12, x0, x8
	call $__muldf3
	add x8, x0, x10
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x0
	add x13, x0, x12
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	sw x10, 56 ( x2 )               //  4-byte Folded Spill
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	add x13, x0, x12
	call $__adddf3
	lw x5, 56 ( x2 )                //  4-byte Folded Reload
	add x4, x0, x10
LBB0_6:                                 //  %cleanup
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sw x5, 0 ( x1 )
	sw x11, 12 ( x1 )
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 4 ( x1 )
	sw x4, 8 ( x1 )
	lw x8, 124 ( x2 )               //  4-byte Folded Reload
	lw x1, 132 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 136
$cfi5:
	.cfi_adjust_cfa_offset -136
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$catan, ($func_end0)-($catan)
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
