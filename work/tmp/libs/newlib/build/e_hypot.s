	.text
	.file	"e_hypot.bc"
	.globl	$__ieee754_hypot
	.type	$__ieee754_hypot,@function
$__ieee754_hypot:                       //  @__ieee754_hypot
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
	add x4, x0, x12
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x8, x1, x11
	and x1, x1, x13
	add x12, x0, x10
	bgtu x1, x8, LBB0_2
LBB0_1:                                 //  %entry
	add x12, x0, x4
LBB0_2:                                 //  %entry
	bgtu x1, x8, LBB0_4
LBB0_3:                                 //  %entry
	add x4, x0, x10
LBB0_4:                                 //  %entry
	add x11, x0, x1
	bgtu x1, x8, LBB0_6
LBB0_5:                                 //  %entry
	add x11, x0, x8
LBB0_6:                                 //  %entry
	bgtu x1, x8, LBB0_8
LBB0_7:                                 //  %entry
	add x8, x0, x1
LBB0_8:                                 //  %entry
	sub x1, x11, x8
	lui x3, 62914561 >> 12 & 0xfffff
	ori x28, x0, 62914561 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	bgt x3, x1, LBB0_10
LBB0_9:                                 //  %if.then25
	add x10, x0, x4
	add x13, x0, x8
	call $__adddf3
	jalr x0, LBB0_33 ( x0 )
LBB0_10:                                //  %if.end26
	lui x1, 1596981249 >> 12 & 0xfffff
	ori x28, x0, 1596981249 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	bgeu x11, x1, LBB0_12
LBB0_11:
	add x3, x0, x0
	jalr x0, LBB0_22 ( x0 )
LBB0_12:                                //  %if.then28
	lui x1, 2146435072>>12 &0xfffff
	bgtu x1, x11, LBB0_21
LBB0_13:                                //  %if.then30
	add x10, x0, x4
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	sw x12, 40 ( x2 )               //  4-byte Folded Spill
	add x13, x0, x8
	sw x4, 28 ( x2 )                //  4-byte Folded Spill
	call $__adddf3
	lw x7, 28 ( x2 )                //  4-byte Folded Reload
	lui x1, 1048575 >> 12 & 0xfffff
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x5, x0, x3
	and x1, x1, x3
	or x3, x1, x7
	add x1, x0, x0
	beq x3, x1, LBB0_15
LBB0_14:                                //  %if.then30
	add x7, x0, x10
LBB0_15:                                //  %if.then30
	beq x3, x1, LBB0_17
LBB0_16:                                //  %if.then30
	add x5, x0, x11
LBB0_17:                                //  %if.then30
	lui x3, 2146435072>>12 &0xfffff
	xor x3, x3, x8
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	nop
	or x3, x3, x4
	beq x3, x1, LBB0_19
LBB0_18:                                //  %if.then30
	add x8, x0, x5
LBB0_19:                                //  %if.then30
	beq x3, x1, LBB0_35
LBB0_20:                                //  %if.then30
	add x4, x0, x7
	jalr x0, LBB0_35 ( x0 )
LBB0_21:                                //  %if.end52
	lui x1, -629145600 >> 12 & 0xfffff
	ori x28, x0, -629145600 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x8, x1, x8
	add x11, x1, x11
	addi x3, x0, 600
LBB0_22:                                //  %if.end72
	lui x1, 548405247 >> 12 & 0xfffff
	ori x28, x0, 548405247 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	bgt x8, x1, LBB0_27
LBB0_23:                                //  %if.then74
	lui x1, 1048575 >> 12 & 0xfffff
	ori x28, x0, 1048575 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	bgt x8, x1, LBB0_26
LBB0_24:                                //  %if.then76
	or x1, x12, x8
	beqz x1, LBB0_34
LBB0_25:                                //  %cleanup.thread
	add x1, x0, x0
	lui x13, 2144337920>>12 &0xfffff
	add x10, x0, x12
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x8
	add x12, x0, x1
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	sw x4, 28 ( x2 )                //  4-byte Folded Spill
	call $__muldf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	lui x13, 2144337920>>12 &0xfffff
	call $__muldf3
	lw x12, 40 ( x2 )               //  4-byte Folded Reload
	add x4, x0, x10
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, -1022
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_28 ( x0 )
LBB0_26:                                //  %if.else99
	lui x1, 629145600>>12 &0xfffff
	add x8, x1, x8
	add x11, x1, x11
	addi x3, x3, -600
LBB0_27:                                //  %if.end120
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
LBB0_28:                                //  %if.end120
	sw x12, 40 ( x2 )               //  4-byte Folded Spill
	sw x4, 28 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x4
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	lw x13, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	lw x12, 40 ( x2 )               //  4-byte Folded Reload
	lw x13, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__gtdf2
	ble x10, x0, LBB0_30
LBB0_29:                                //  %if.then123
	add x12, x0, x0
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x0
	add x8, x0, x12
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x10
	add x13, x0, x11
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lui x4, -2147483648 >> 12 & 0xfffff
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x4, x28
	add x10, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	lw x12, 28 ( x2 )               //  4-byte Folded Reload
	lw x13, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	add x10, x0, x0
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x10
	add x13, x0, x11
	call $__muldf3
	add x13, x0, x8
	jalr x0, LBB0_31 ( x0 )
LBB0_30:                                //  %if.else140
	add x12, x0, x0
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	call $__subdf3
	lui x1, 1048576>>12 &0xfffff
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x13, x1, x3
	sw x13, 32 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x0
	call $__muldf3
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	sw x11, 4 ( x2 )                //  4-byte Folded Spill
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x10
	add x13, x0, x11
	call $__adddf3
	add x12, x0, x0
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	lw x11, 4 ( x2 )                //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x10
	add x13, x0, x11
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lui x4, -2147483648 >> 12 & 0xfffff
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x4, x28
	add x10, x0, x0
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	lw x12, 40 ( x2 )               //  4-byte Folded Reload
	lw x13, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x0
	add x11, x0, x8
	add x12, x0, x10
	lw x13, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__muldf3
	lw x13, 36 ( x2 )               //  4-byte Folded Reload
LBB0_31:                                //  %if.end170
	lw x12, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subdf3
	call $__ieee754_sqrt
	add x4, x0, x10
	add x8, x0, x11
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_35
LBB0_32:                                //  %if.then172
	slli x1, x1, 20
	lui x3, 1072693248>>12 &0xfffff
	add x11, x3, x1
	add x10, x0, x0
	add x12, x0, x4
	add x13, x0, x8
	call $__muldf3
LBB0_33:                                //  %cleanup192
	add x4, x0, x10
LBB0_34:                                //  %cleanup192
	add x8, x0, x11
LBB0_35:                                //  %cleanup192
	add x10, x0, x4
	add x11, x0, x8
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
	.size	$__ieee754_hypot, ($func_end0)-($__ieee754_hypot)
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
