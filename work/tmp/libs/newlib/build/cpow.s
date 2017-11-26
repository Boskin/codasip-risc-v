	.text
	.file	"cpow.bc"
	.globl	$cpow
	.type	$cpow,@function
$cpow:                                  //  @cpow
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retstruct_reg 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -192
$cfi2:
	.cfi_adjust_cfa_offset 192
	sw x1, 188 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 180 ( x2 )               //  4-byte Folded Spill
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	lw x3, 12 ( x12 )
	nop
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
	lw x4, 8 ( x12 )
	nop
	sw x4, 40 ( x2 )                //  4-byte Folded Spill
	lw x5, 0 ( x12 )
	nop
	sw x5, 36 ( x2 )                //  4-byte Folded Spill
	lw x7, 4 ( x12 )
	nop
	sw x7, 32 ( x2 )                //  4-byte Folded Spill
	addi x1, x2, 164
	sw x4, 8 ( x1 )
	sw x3, 176 ( x2 )
	sw x7, 4 ( x1 )
	sw x5, 164 ( x2 )
	lw x3, 8 ( x1 )
	addi x10, x2, 100
	sw x3, 8 ( x10 )
	lw x1, 4 ( x1 )
	nop
	sw x1, 4 ( x10 )
	lw x1, 176 ( x2 )
	nop
	sw x1, 112 ( x2 )
	lw x1, 164 ( x2 )
	nop
	sw x1, 100 ( x2 )
	call $creal
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	addi x1, x2, 148
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 4 ( x1 )
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 8 ( x1 )
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 148 ( x2 )
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 160 ( x2 )
	lw x3, 8 ( x1 )
	addi x10, x2, 84
	sw x3, 8 ( x10 )
	lw x1, 4 ( x1 )
	nop
	sw x1, 4 ( x10 )
	lw x1, 160 ( x2 )
	nop
	sw x1, 96 ( x2 )
	lw x1, 148 ( x2 )
	nop
	sw x1, 84 ( x2 )
	call $cimag
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	lw x3, 12 ( x8 )
	lw x5, 8 ( x8 )
	lw x4, 0 ( x8 )
	lw x7, 4 ( x8 )
	addi x1, x2, 132
	sw x5, 12 ( x2 )                //  4-byte Folded Spill
	sw x5, 8 ( x1 )
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	sw x3, 144 ( x2 )
	sw x7, 8 ( x2 )                 //  4-byte Folded Spill
	sw x7, 4 ( x1 )
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	sw x4, 132 ( x2 )
	lw x3, 8 ( x1 )
	addi x10, x2, 68
	sw x3, 8 ( x10 )
	lw x1, 4 ( x1 )
	nop
	sw x1, 4 ( x10 )
	lw x1, 144 ( x2 )
	nop
	sw x1, 80 ( x2 )
	lw x1, 132 ( x2 )
	nop
	sw x1, 68 ( x2 )
	call $cabs
	add x8, x0, x0
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x8
	add x13, x0, x8
	call $__eqdf2
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	add x1, x0, x10
	add x11, x0, x8
	add x4, x0, x8
	add x10, x0, x8
	beqz x1, LBB0_5
LBB0_1:                                 //  %if.end
	addi x1, x2, 116
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x3, 4 ( x1 )
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 8 ( x1 )
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 116 ( x2 )
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 128 ( x2 )
	lw x3, 8 ( x1 )
	addi x10, x2, 52
	sw x3, 8 ( x10 )
	lw x1, 4 ( x1 )
	nop
	sw x1, 4 ( x10 )
	lw x1, 128 ( x2 )
	nop
	sw x1, 64 ( x2 )
	lw x1, 116 ( x2 )
	nop
	sw x1, 52 ( x2 )
	call $carg
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x12, x0, x8
	lw x13, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $pow
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	nop
	add x8, x0, x12
	lw x13, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x0
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x12
	call $__eqdf2
	bgtu x10, x0, LBB0_3
LBB0_2:
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_4 ( x0 )
LBB0_3:                                 //  %if.then17
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	lw x13, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	xor x11, x1, x11
	call $exp
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $log
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
LBB0_4:                                 //  %if.end23
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	call $cos
	add x1, x0, x10
	add x3, x0, x11
	lw x8, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $sin
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x8, x0, x10
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x0
	add x13, x0, x12
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_5:                                 //  %cleanup
	sw x10, 0 ( x3 )
	sw x4, 12 ( x3 )
	sw x11, 4 ( x3 )
	sw x8, 8 ( x3 )
	lw x8, 180 ( x2 )               //  4-byte Folded Reload
	lw x1, 188 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 192
$cfi5:
	.cfi_adjust_cfa_offset -192
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$cpow, ($func_end0)-($cpow)
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
