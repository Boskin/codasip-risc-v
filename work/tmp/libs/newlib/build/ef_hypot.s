	.text
	.file	"ef_hypot.bc"
	.globl	$__ieee754_hypotf
	.type	$__ieee754_hypotf,@function
$__ieee754_hypotf:                      //  @__ieee754_hypotf
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -48
$cfi2:
	.cfi_adjust_cfa_offset 48
	sw x1, 44 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x8, x1, x10
	and x1, x1, x11
	add x4, x0, x1
	bgtu x1, x8, LBB0_2
LBB0_1:                                 //  %entry
	add x4, x0, x8
LBB0_2:                                 //  %entry
	bgtu x1, x8, LBB0_4
LBB0_3:                                 //  %entry
	add x8, x0, x1
LBB0_4:                                 //  %entry
	sub x1, x4, x8
	lui x3, 251658241 >> 12 & 0xfffff
	ori x28, x0, 251658241 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	bgt x3, x1, LBB0_6
LBB0_5:                                 //  %if.then20
	add x10, x0, x4
	add x11, x0, x8
	call $__addsf3
	jalr x0, LBB0_26 ( x0 )
LBB0_6:                                 //  %if.end21
	lui x1, 1484783617 >> 12 & 0xfffff
	ori x28, x0, 1484783617 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	bgeu x4, x1, LBB0_8
LBB0_7:
	add x3, x0, x0
	jalr x0, LBB0_14 ( x0 )
LBB0_8:                                 //  %if.then23
	lui x1, 2139095040>>12 &0xfffff
	bgtu x1, x4, LBB0_13
LBB0_9:                                 //  %if.then25
	add x10, x0, x4
	add x11, x0, x8
	sw x4, 28 ( x2 )                //  4-byte Folded Spill
	call $__addsf3
	lui x3, 2139095040>>12 &0xfffff
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	beq x1, x3, LBB0_11
LBB0_10:                                //  %if.then25
	add x1, x0, x10
LBB0_11:                                //  %if.then25
	beq x8, x3, LBB0_27
LBB0_12:                                //  %if.then25
	add x8, x0, x1
	jalr x0, LBB0_27 ( x0 )
LBB0_13:                                //  %if.end33
	lui x1, -570425344 >> 12 & 0xfffff
	ori x28, x0, -570425344 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x8, x1, x8
	add x4, x1, x4
	addi x3, x0, 68
LBB0_14:                                //  %if.end49
	lui x1, 645922815 >> 12 & 0xfffff
	ori x28, x0, 645922815 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	bgt x8, x1, LBB0_20
LBB0_15:                                //  %if.then51
	bgtu x8, x0, LBB0_17
LBB0_16:
	add x8, x0, x4
	jalr x0, LBB0_27 ( x0 )
LBB0_17:                                //  %if.else54
	lui x1, 8388607 >> 12 & 0xfffff
	ori x28, x0, 8388607 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	bgt x8, x1, LBB0_19
LBB0_18:                                //  %do.body57
	lui x11, 2122317824>>12 &0xfffff
	add x10, x0, x8
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	sw x4, 28 ( x2 )                //  4-byte Folded Spill
	call $__mulsf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lui x11, 2122317824>>12 &0xfffff
	call $__mulsf3
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, -126
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_21 ( x0 )
LBB0_19:                                //  %if.else65
	lui x1, 570425344>>12 &0xfffff
	add x8, x1, x8
	add x4, x1, x4
	addi x3, x3, -68
LBB0_20:                                //  %if.end83
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	sw x8, 32 ( x2 )                //  4-byte Folded Spill
	sw x4, 28 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x4
LBB0_21:                                //  %if.end83
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__gtsf2
	ble x10, x0, LBB0_23
LBB0_22:                                //  %do.body87
	lui x1, -4096 >> 12 & 0xfffff
	ori x28, x0, -4096 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	and x8, x1, x3
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	call $__subsf3
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	nop
	add x11, x0, x10
	call $__mulsf3
	add x1, x0, x10
	lui x3, -2147483648 >> 12 & 0xfffff
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x3, x28
	add x11, x0, x1
	call $__subsf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	add x1, x0, x10
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__subsf3
	add x8, x0, x10
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	add x11, x0, x10
	call $__mulsf3
	jalr x0, LBB0_24 ( x0 )
LBB0_23:                                //  %if.else102
	lui x1, -4096 >> 12 & 0xfffff
	ori x28, x0, -4096 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	and x8, x1, x8
	lui x1, 8388608>>12 &0xfffff
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x1, x3
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	call $__mulsf3
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	nop
	add x11, x0, x10
	call $__addsf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__subsf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x8, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__subsf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	add x11, x0, x10
	call $__mulsf3
	add x1, x0, x10
	lui x3, -2147483648 >> 12 & 0xfffff
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x3, x28
	add x11, x0, x1
	call $__subsf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x8, x0, x10
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__subsf3
	add x8, x0, x10
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
LBB0_24:                                //  %if.end129
	add x11, x0, x8
	call $__subsf3
	call $__ieee754_sqrtf
	add x8, x0, x10
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_27
LBB0_25:                                //  %do.body132
	slli x1, x1, 23
	lui x3, 1065353216>>12 &0xfffff
	add x10, x3, x1
	add x11, x0, x8
	call $__mulsf3
LBB0_26:                                //  %cleanup
	add x8, x0, x10
LBB0_27:                                //  %cleanup
	add x10, x0, x8
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	lw x1, 44 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 48
$cfi5:
	.cfi_adjust_cfa_offset -48
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__ieee754_hypotf, ($func_end0)-($__ieee754_hypotf)
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
