	.text
	.file	"kf_sin.bc"
	.globl	$__kernel_sinf
	.type	$__kernel_sinf,@function
$__kernel_sinf:                         //  @__kernel_sinf
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
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
	sw x12, 20 ( x2 )               //  4-byte Folded Spill
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x10
	call $__fixsfsi
	bgtu x10, x0, LBB0_2
LBB0_1:                                 //  %entry
	lui x1, 2113929216>>12 &0xfffff
	and x1, x1, x8
	lui x3, 838860800>>12 &0xfffff
	bgtu x3, x1, LBB0_6
LBB0_2:                                 //  %if.end4
	add x10, x0, x8
	add x11, x0, x8
	call $__mulsf3
	add x11, x0, x8
	add x8, x0, x10
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	call $__mulsf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 791595475 & 0xfff
	slli x28, x28, 20
	lui x1, 791595475 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	ori x28, x0, -1294520524 & 0xfff
	slli x28, x28, 20
	lui x1, -1294520524 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 909700891 & 0xfff
	slli x28, x28, 20
	lui x1, 909700891 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, -1185936127 & 0xfff
	slli x28, x28, 20
	lui x1, -1185936127 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1007192201 & 0xfff
	slli x28, x28, 20
	lui x1, 1007192201 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x8, x0, x10
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_4
LBB0_3:                                 //  %if.then15
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__mulsf3
	ori x28, x0, -1104500053 & 0xfff
	slli x28, x28, 20
	lui x1, -1104500053 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__addsf3
	jalr x0, LBB0_5 ( x0 )
LBB0_4:                                 //  %if.else
	lui x11, 1056964608>>12 &0xfffff
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__mulsf3
	add x1, x0, x10
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__subsf3
	add x1, x0, x10
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	add x8, x0, x10
	ori x28, x0, 1042983595 & 0xfff
	slli x28, x28, 20
	lui x1, 1042983595 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x11, x0, x8
	call $__addsf3
	add x1, x0, x10
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x1
	call $__subsf3
LBB0_5:                                 //  %cleanup
	add x8, x0, x10
LBB0_6:                                 //  %cleanup
	add x10, x0, x8
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
$func_end0:
	.size	$__kernel_sinf, ($func_end0)-($__kernel_sinf)
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
