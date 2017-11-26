	.text
	.file	"e_scalb.bc"
	.globl	$__ieee754_scalb
	.type	$__ieee754_scalb,@function
$__ieee754_scalb:                       //  @__ieee754_scalb
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10, 11
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
	sw x13, 16 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x12
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	call $__fpclassifyd
	beqz x10, LBB0_2
LBB0_1:                                 //  %lor.lhs.false
	add x10, x0, x8
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__fpclassifyd
	bgtu x10, x0, LBB0_3
LBB0_2:                                 //  %if.then
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	lw x13, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	jalr x0, LBB0_15 ( x0 )
LBB0_3:                                 //  %if.end
	add x10, x0, x8
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $finite
	bgtu x10, x0, LBB0_6
LBB0_4:                                 //  %if.then4
	add x12, x0, x0
	add x10, x0, x8
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x12
	call $__gtdf2
	bgt x10, x0, LBB0_2
LBB0_5:                                 //  %if.else
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	xor x13, x1, x3
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	call $__divdf3
	jalr x0, LBB0_15 ( x0 )
LBB0_6:                                 //  %if.end8
	add x10, x0, x8
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $rint
	add x12, x0, x8
	lw x13, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__eqdf2
	beqz x10, LBB0_8
LBB0_7:                                 //  %if.then11
	add x10, x0, x8
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	add x13, x0, x11
	call $__subdf3
	add x12, x0, x10
	add x13, x0, x11
	call $__divdf3
	jalr x0, LBB0_15 ( x0 )
LBB0_8:                                 //  %if.end15
	ori x28, x0, 1089453312 & 0xfff
	slli x28, x28, 20
	lui x1, 1089453312 >> 12 & 0xfffff
	srli x28, x28, 20
	add x12, x0, x0
	or x13, x1, x28
	add x10, x0, x8
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__gtdf2
	ble x10, x0, LBB0_11
LBB0_9:                                 //  %if.then17
	ori x28, x0, 65000 & 0xfff
	slli x28, x28, 20
	lui x1, 65000 >> 12 & 0xfffff
LBB0_10:                                //  %return
	srli x28, x28, 20
	or x12, x1, x28
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_14 ( x0 )
LBB0_11:                                //  %if.end19
	ori x28, x0, -1058030336 & 0xfff
	slli x28, x28, 20
	lui x1, -1058030336 >> 12 & 0xfffff
	srli x28, x28, 20
	add x12, x0, x0
	or x13, x1, x28
	add x10, x0, x8
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ltdf2
	bgez x10, LBB0_13
LBB0_12:                                //  %if.then22
	ori x28, x0, -65000 & 0xfff
	slli x28, x28, 20
	lui x1, -65000 >> 12 & 0xfffff
	jalr x0, LBB0_10 ( x0 )
LBB0_13:                                //  %if.end24
	add x10, x0, x8
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__fixdfsi
	add x1, x0, x10
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
LBB0_14:                                //  %return
	call $scalbn
LBB0_15:                                //  %return
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
	.size	$__ieee754_scalb, ($func_end0)-($__ieee754_scalb)
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
