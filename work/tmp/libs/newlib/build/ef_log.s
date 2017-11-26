	.text
	.file	"ef_log.bc"
	.globl	$__ieee754_logf
	.type	$__ieee754_logf,@function
$__ieee754_logf:                        //  @__ieee754_logf
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
	add x8, x0, x10
	ori x28, x0, -8388608 & 0xfff
	slli x28, x28, 20
	lui x1, -8388608 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x1, x28
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	and x1, x1, x8
	beqz x1, LBB0_28
LBB0_1:                                 //  %if.end
	bgez x8, LBB0_3
LBB0_2:                                 //  %if.then2
	add x10, x0, x8
	add x11, x0, x8
	call $__subsf3
	add x11, x0, x0
	call $__divsf3
	jalr x0, LBB0_27 ( x0 )
LBB0_3:                                 //  %if.end3
	lui x1, 2139095040>>12 &0xfffff
	bgt x1, x8, LBB0_6
LBB0_4:                                 //  %if.then5
	add x10, x0, x8
	add x11, x0, x8
	call $__addsf3
	jalr x0, LBB0_27 ( x0 )
LBB0_6:                                 //  %if.end6
	lui x1, 8388608>>12 &0xfffff
	ble x1, x8, LBB0_8
LBB0_7:
	addi x1, x0, -152
	jalr x0, LBB0_9 ( x0 )
LBB0_8:                                 //  %if.end6
	addi x1, x0, -127
LBB0_9:                                 //  %if.end6
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	lui x11, 1275068416>>12 &0xfffff
	add x10, x0, x8
	call $__mulsf3
	lui x4, 8388608>>12 &0xfffff
	bgt x4, x8, LBB0_11
LBB0_10:                                //  %if.end6
	add x10, x0, x8
LBB0_11:                                //  %if.end6
	srai x1, x10, 23
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	lui x3, 8388607 >> 12 & 0xfffff
	ori x28, x0, 8388607 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	and x5, x3, x10
	lui x3, 4913952 >> 12 & 0xfffff
	ori x28, x0, 4913952 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	add x3, x3, x5
	and x4, x4, x3
	srli x3, x3, 23
	add x1, x3, x1
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	sw x5, 16 ( x2 )                //  4-byte Folded Spill
	or x1, x5, x4
	lui x3, 1065353216>>12 &0xfffff
	add x8, x0, x10
	xor x10, x3, x1
	lui x1, -1082130432 >> 12 & 0xfffff
	ori x28, x0, -1082130432 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	addi x1, x8, 15
	lui x3, 8388592 >> 12 & 0xfffff
	ori x28, x0, 8388592 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	and x1, x3, x1
	addi x3, x0, 15
	bgtu x1, x3, LBB0_18
LBB0_12:                                //  %if.then33
	add x11, x0, x0
	add x8, x0, x10
	call $__nesf2
	bgtu x10, x0, LBB0_15
LBB0_13:                                //  %if.then35
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x3, x0, x0
	beqz x10, LBB0_28
LBB0_14:                                //  %if.else
	call $__floatsisf
	add x8, x0, x10
	lui x1, 1060204928 >> 12 & 0xfffff
	ori x28, x0, 1060204928 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	lui x1, 924317649 >> 12 & 0xfffff
	ori x28, x0, 924317649 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	add x1, x0, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	jalr x0, LBB0_27 ( x0 )
LBB0_15:                                //  %if.end41
	add x10, x0, x8
	add x11, x0, x8
	call $__mulsf3
	add x3, x0, x8
	add x8, x0, x10
	lui x1, -1096111445 >> 12 & 0xfffff
	ori x28, x0, -1096111445 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x3
	call $__mulsf3
	lui x11, 1056964608>>12 &0xfffff
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x10, x0, LBB0_17
LBB0_16:                                //  %if.then48
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_26 ( x0 )
LBB0_17:                                //  %if.else50
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	call $__floatsisf
	add x8, x0, x10
	lui x1, 1060204928 >> 12 & 0xfffff
	ori x28, x0, 1060204928 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	lui x1, -1223165999 >> 12 & 0xfffff
	ori x28, x0, -1223165999 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	add x1, x0, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	add x1, x0, x10
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_26 ( x0 )
LBB0_18:                                //  %if.end57
	lui x11, 1073741824>>12 &0xfffff
	add x8, x0, x10
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__divsf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x10
	call $__mulsf3
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x10
	call $__mulsf3
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	lui x1, 1042075727 >> 12 & 0xfffff
	ori x28, x0, 1042075727 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	lui x1, 1046711849 >> 12 & 0xfffff
	ori x28, x0, 1046711849 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1053609165 >> 12 & 0xfffff
	ori x28, x0, 1053609165 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	lui x1, 1041729687 >> 12 & 0xfffff
	ori x28, x0, 1041729687 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	lui x1, 1044001573 >> 12 & 0xfffff
	ori x28, x0, 1044001573 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1049774373 >> 12 & 0xfffff
	ori x28, x0, 1049774373 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lui x1, 1059760811 >> 12 & 0xfffff
	ori x28, x0, 1059760811 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	lui x1, 3523208 >> 12 & 0xfffff
	ori x28, x0, 3523208 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x4
	lui x3, -3187664 >> 12 & 0xfffff
	ori x28, x0, -3187664 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	add x3, x3, x4
	or x8, x1, x3
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__floatsisf
	ble x8, x0, LBB0_22
LBB0_19:                                //  %if.then81
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	lui x11, 1056964608>>12 &0xfffff
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	call $__mulsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	add x8, x0, x10
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_21
LBB0_20:                                //  %if.then86
	add x10, x0, x8
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__addsf3
	add x1, x0, x10
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__subsf3
	add x1, x0, x10
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_26 ( x0 )
LBB0_21:                                //  %if.else91
	lui x1, 1060204928 >> 12 & 0xfffff
	ori x28, x0, 1060204928 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__addsf3
	add x1, x0, x10
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	lui x1, 924317649 >> 12 & 0xfffff
	ori x28, x0, 924317649 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__subsf3
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_25 ( x0 )
LBB0_22:                                //  %if.else100
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_24
LBB0_23:                                //  %if.then103
	add x10, x0, x8
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__subsf3
	add x1, x0, x10
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	add x10, x0, x8
	jalr x0, LBB0_26 ( x0 )
LBB0_24:                                //  %if.else107
	lui x1, 1060204928 >> 12 & 0xfffff
	ori x28, x0, 1060204928 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	or x11, x1, x28
	call $__mulsf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $__subsf3
	add x1, x0, x10
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	lui x1, -1223165999 >> 12 & 0xfffff
	ori x28, x0, -1223165999 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x1, x0, x10
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	add x11, x0, x8
LBB0_25:                                //  %cleanup
	call $__subsf3
	add x1, x0, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
LBB0_26:                                //  %cleanup
	add x11, x0, x1
	call $__subsf3
LBB0_27:                                //  %cleanup
	add x3, x0, x10
LBB0_28:                                //  %cleanup
	add x10, x0, x3
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
	.size	$__ieee754_logf, ($func_end0)-($__ieee754_logf)
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
