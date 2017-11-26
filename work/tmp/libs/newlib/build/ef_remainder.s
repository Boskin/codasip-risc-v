	.text
	.file	"ef_remainder.bc"
	.globl	$__ieee754_remainderf
	.type	$__ieee754_remainderf,@function
$__ieee754_remainderf:                  //  @__ieee754_remainderf
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
	add x4, x0, x10
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x3, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x7, x3, x28
	ori x28, x0, 2139095039 & 0xfff
	slli x28, x28, 20
	lui x3, 2139095039 >> 12 & 0xfffff
	srli x28, x28, 20
	and x8, x1, x4
	or x3, x3, x28
	bgtu x8, x3, LBB0_2
LBB0_1:                                 //  %entry
	and x5, x1, x11
	addi x1, x5, -1
	lui x3, 2139095040>>12 &0xfffff
	bgtu x3, x1, LBB0_3
LBB0_2:                                 //  %if.then
	add x10, x0, x4
	call $__mulsf3
	add x11, x0, x10
	call $__divsf3
	jalr x0, LBB0_16 ( x0 )
LBB0_3:                                 //  %if.end
	ori x28, x0, 2130706431 & 0xfff
	slli x28, x28, 20
	lui x1, 2130706431 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	bgeu x1, x5, LBB0_5
LBB0_4:
	add x10, x0, x4
	jalr x0, LBB0_6 ( x0 )
LBB0_5:                                 //  %if.then14
	add x10, x0, x11
	sw x4, 12 ( x2 )                //  4-byte Folded Spill
	sw x5, 8 ( x2 )                 //  4-byte Folded Spill
	sw x7, 4 ( x2 )                 //  4-byte Folded Spill
	call $__addsf3
	add x1, x0, x10
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__ieee754_fmodf
	lw x7, 4 ( x2 )                 //  4-byte Folded Reload
	lw x5, 8 ( x2 )                 //  4-byte Folded Reload
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
LBB0_6:                                 //  %if.end15
	bne x8, x5, LBB0_8
LBB0_7:                                 //  %if.then17
	add x11, x0, x0
	call $__mulsf3
	jalr x0, LBB0_16 ( x0 )
LBB0_8:                                 //  %if.end19
	and x1, x7, x4
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	add x8, x0, x5
	call $fabsf
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $fabsf
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 16777215 & 0xfff
	slli x28, x28, 20
	lui x1, 16777215 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_11
LBB0_9:                                 //  %if.then23
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	add x11, x0, x8
	call $__addsf3
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__gtsf2
	ble x10, x0, LBB0_15
LBB0_10:                                //  %if.then26
	add x10, x0, x8
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	add x8, x0, x10
	add x11, x0, x8
	call $__addsf3
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_13 ( x0 )
LBB0_11:                                //  %if.else
	lui x11, 1056964608>>12 &0xfffff
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x1, x0, x10
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	sw x1, 4 ( x2 )                 //  4-byte Folded Spill
	add x11, x0, x1
	call $__gtsf2
	ble x10, x0, LBB0_15
LBB0_12:                                //  %if.then36
	add x10, x0, x8
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	add x8, x0, x10
	lw x11, 4 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_13:                                //  %if.then36
	call $__gesf2
	bgt x0, x10, LBB0_15
LBB0_14:                                //  %if.then39
	add x10, x0, x8
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	add x8, x0, x10
LBB0_15:                                //  %do.body44
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	xor x10, x1, x8
LBB0_16:                                //  %cleanup
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
	.size	$__ieee754_remainderf, ($func_end0)-($__ieee754_remainderf)
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
