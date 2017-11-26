	.text
	.file	"k_sin.bc"
	.globl	$__kernel_sin
	.type	$__kernel_sin,@function
$__kernel_sin:                          //  @__kernel_sin
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -64
$cfi2:
	.cfi_adjust_cfa_offset 64
	sw x1, 60 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 52 ( x2 )                //  4-byte Folded Spill
	sw x14, 32 ( x2 )               //  4-byte Folded Spill
	sw x13, 28 ( x2 )               //  4-byte Folded Spill
	sw x12, 40 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	call $__fixdfsi
	bgtu x10, x0, LBB0_3
LBB0_1:                                 //  %entry
	lui x1, 2143289344>>12 &0xfffff
	and x1, x1, x8
	lui x3, 1044381696>>12 &0xfffff
	bgeu x1, x3, LBB0_3
LBB0_2:
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	jalr x0, LBB0_6 ( x0 )
LBB0_3:                                 //  %if.end4
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	sw x8, 24 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	add x12, x0, x10
	add x13, x0, x8
	call $__muldf3
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1523570044 & 0xfff
	slli x28, x28, 20
	lui x1, 1523570044 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1038473530 & 0xfff
	slli x28, x28, 20
	lui x1, 1038473530 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x8, x0, x10
	call $__muldf3
	ori x28, x0, -1976853269 & 0xfff
	slli x28, x28, 20
	lui x1, -1976853269 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1101339162 & 0xfff
	slli x28, x28, 20
	lui x1, -1101339162 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 1471282813 & 0xfff
	slli x28, x28, 20
	lui x1, 1471282813 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1053236707 & 0xfff
	slli x28, x28, 20
	lui x1, 1053236707 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 432103893 & 0xfff
	slli x28, x28, 20
	lui x1, 432103893 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1087766112 & 0xfff
	slli x28, x28, 20
	lui x1, -1087766112 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	ori x28, x0, 286324902 & 0xfff
	slli x28, x28, 20
	lui x1, 286324902 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1065423121 & 0xfff
	slli x28, x28, 20
	lui x1, 1065423121 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x13, x0, x8
	call $__muldf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_5
LBB0_4:                                 //  %if.then15
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	lw x13, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	ori x28, x0, 1431655753 & 0xfff
	slli x28, x28, 20
	lui x1, 1431655753 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, -1077586603 & 0xfff
	slli x28, x28, 20
	lui x1, -1077586603 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	call $__adddf3
	jalr x0, LBB0_6 ( x0 )
LBB0_5:                                 //  %if.else
	add x12, x0, x0
	lui x13, 1071644672>>12 &0xfffff
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__muldf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	sw x11, 4 ( x2 )                //  4-byte Folded Spill
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	lw x13, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x11, 4 ( x2 )                //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	lw x12, 40 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	call $__subdf3
	add x8, x0, x10
	sw x11, 44 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1431655753 & 0xfff
	slli x28, x28, 20
	lui x1, 1431655753 >> 12 & 0xfffff
	srli x28, x28, 20
	or x12, x1, x28
	ori x28, x0, 1069897045 & 0xfff
	slli x28, x28, 20
	lui x1, 1069897045 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	add x12, x0, x8
	lw x13, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
LBB0_6:                                 //  %cleanup
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	lw x1, 60 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 64
$cfi5:
	.cfi_adjust_cfa_offset -64
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__kernel_sin, ($func_end0)-($__kernel_sin)
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
