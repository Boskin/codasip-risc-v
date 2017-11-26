	.text
	.file	"sf_log1p.bc"
	.globl	$log1pf
	.type	$log1pf,@function
$log1pf:                                //  @log1pf
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
	ori x28, x0, 2147483647 & 0xfff
	slli x28, x28, 20
	lui x1, 2147483647 >> 12 & 0xfffff
	srli x28, x28, 20
	lui x3, 2139095040>>12 &0xfffff
	or x1, x1, x28
	bgt x3, x8, LBB0_3
LBB0_1:                                 //  %if.then
	add x10, x0, x8
	add x11, x0, x8
	call $__addsf3
	jalr x0, LBB0_36 ( x0 )
LBB0_3:                                 //  %if.end
	ori x28, x0, 1054086102 & 0xfff
	slli x28, x28, 20
	lui x3, 1054086102 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	bgt x8, x3, LBB0_16
LBB0_4:                                 //  %if.then2
	add x10, x0, x8
	and x8, x1, x10
	lui x1, 1065353216>>12 &0xfffff
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	bgtu x1, x8, LBB0_7
LBB0_5:                                 //  %if.then4
	ori x28, x0, -1082130432 & 0xfff
	slli x28, x28, 20
	lui x1, -1082130432 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__eqsf2
	ori x28, x0, -8388608 & 0xfff
	slli x28, x28, 20
	lui x1, -8388608 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	beqz x10, LBB0_37
LBB0_6:                                 //  %if.else
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	nop
	add x11, x0, x10
	call $__subsf3
	add x11, x0, x10
	call $__divsf3
	jalr x0, LBB0_36 ( x0 )
LBB0_7:                                 //  %if.end8
	ori x28, x0, 822083583 & 0xfff
	slli x28, x28, 20
	lui x1, 822083583 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgtu x8, x1, LBB0_12
LBB0_8:                                 //  %if.then10
	lui x11, 1275068416>>12 &0xfffff
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	add x11, x0, x0
	call $__gtsf2
	ble x10, x0, LBB0_11
LBB0_9:                                 //  %if.then10
	lui x1, 612368384>>12 &0xfffff
	bgeu x8, x1, LBB0_11
LBB0_10:
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_37 ( x0 )
LBB0_11:                                //  %if.else15
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	add x11, x0, x8
	call $__mulsf3
	ori x28, x0, -1090519040 & 0xfff
	slli x28, x28, 20
	lui x1, -1090519040 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__addsf3
	jalr x0, LBB0_36 ( x0 )
LBB0_12:                                //  %if.end18
	ori x28, x0, 1097468384 & 0xfff
	slli x28, x28, 20
	lui x1, 1097468384 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 1097468385 & 0xfff
	slli x28, x28, 20
	lui x3, 1097468385 >> 12 & 0xfffff
	srli x28, x28, 20
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x8
	or x3, x3, x28
	bgtu x3, x1, LBB0_17
LBB0_13:                                //  %if.end73.thread
	lui x11, 1056964608>>12 &0xfffff
	add x10, x0, x8
	call $__mulsf3
	add x11, x0, x8
	call $__mulsf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	add x1, x0, x0
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
                                        //  implicit-def: %rf_xpr_1
	sw x1, 4 ( x2 )                 //  4-byte Folded Spill
LBB0_14:                                //  %if.end105
	lui x11, 1073741824>>12 &0xfffff
	add x10, x0, x8
	call $__addsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__divsf3
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x10
	call $__mulsf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1041729687 & 0xfff
	slli x28, x28, 20
	lui x1, 1041729687 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	ori x28, x0, 1042075727 & 0xfff
	slli x28, x28, 20
	lui x1, 1042075727 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1044001573 & 0xfff
	slli x28, x28, 20
	lui x1, 1044001573 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1046711849 & 0xfff
	slli x28, x28, 20
	lui x1, 1046711849 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1049774373 & 0xfff
	slli x28, x28, 20
	lui x1, 1049774373 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1053609165 & 0xfff
	slli x28, x28, 20
	lui x1, 1053609165 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	ori x28, x0, 1059760811 & 0xfff
	slli x28, x28, 20
	lui x1, 1059760811 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x1, x0, x10
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x8
	add x8, x0, x10
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	bgtu x10, x0, LBB0_34
LBB0_15:                                //  %if.then124
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__addsf3
	add x1, x0, x10
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__subsf3
	add x1, x0, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_35 ( x0 )
LBB0_16:                                //  %if.then25
	ori x28, x0, 1509949439 & 0xfff
	slli x28, x28, 20
	lui x1, 1509949439 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	bgt x8, x1, LBB0_22
LBB0_17:                                //  %if.then27
	lui x11, 1065353216>>12 &0xfffff
	add x10, x0, x8
	call $__addsf3
	add x3, x0, x10
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	srai x1, x3, 23
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	sw x8, 24 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	call $__subsf3
	add x1, x0, x10
	ori x28, x0, -1082130432 & 0xfff
	slli x28, x28, 20
	lui x3, -1082130432 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x8, x0, 127
	or x3, x3, x28
	lw x4, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x8, LBB0_19
LBB0_18:                                //  %if.then27
	add x1, x0, x3
LBB0_19:                                //  %if.then27
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	lui x10, 1065353216>>12 &0xfffff
	bgt x3, x8, LBB0_21
LBB0_20:                                //  %if.then27
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
LBB0_21:                                //  %if.then27
	add x11, x0, x1
	call $__subsf3
	lw x8, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__divsf3
	jalr x0, LBB0_23 ( x0 )
LBB0_22:                                //  %if.else42
	add x10, x0, x0
	srli x1, x8, 23
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
LBB0_23:                                //  %if.end51
	ori x28, x0, 8388607 & 0xfff
	slli x28, x28, 20
	lui x1, 8388607 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 3474678 & 0xfff
	slli x28, x28, 20
	lui x3, 3474678 >> 12 & 0xfffff
	srli x28, x28, 20
	and x4, x1, x8
	or x1, x3, x28
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	bgtu x4, x1, LBB0_25
LBB0_24:                                //  %do.body55
	lui x1, 1065353216>>12 &0xfffff
	sw x4, 8 ( x2 )                 //  4-byte Folded Spill
	or x10, x1, x4
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -127
	jalr x0, LBB0_26 ( x0 )
LBB0_25:                                //  %if.else60
	lui x1, 8388608>>12 &0xfffff
	lui x3, 1056964608>>12 &0xfffff
	sub x1, x1, x4
	or x10, x3, x4
	srli x1, x1, 2
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -126
LBB0_26:                                //  %if.end73
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, -1082130432 & 0xfff
	slli x28, x28, 20
	lui x1, -1082130432 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__addsf3
	add x8, x0, x10
	lui x11, 1056964608>>12 &0xfffff
	call $__mulsf3
	add x1, x0, x10
	sw x8, 24 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	beqz x1, LBB0_28
LBB0_27:
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_14 ( x0 )
LBB0_28:                                //  %if.then77
	add x8, x0, x0
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__nesf2
	bgtu x10, x0, LBB0_31
LBB0_29:                                //  %if.then79
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	nop
	beqz x10, LBB0_37
LBB0_30:                                //  %if.else82
	call $__floatsisf
	add x8, x0, x10
	ori x28, x0, 924317649 & 0xfff
	slli x28, x28, 20
	lui x1, 924317649 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	add x1, x0, x10
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1060204928 & 0xfff
	slli x28, x28, 20
	lui x1, 1060204928 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	jalr x0, LBB0_36 ( x0 )
LBB0_31:                                //  %if.end88
	ori x28, x0, -1087722837 & 0xfff
	slli x28, x28, 20
	lui x1, -1087722837 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	call $__mulsf3
	lui x11, 1065353216>>12 &0xfffff
	call $__addsf3
	add x1, x0, x10
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	add x1, x0, x10
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x10, x0, LBB0_33
LBB0_32:                                //  %if.then94
	add x10, x0, x8
	jalr x0, LBB0_35 ( x0 )
LBB0_33:                                //  %if.else96
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	call $__floatsisf
	add x8, x0, x10
	ori x28, x0, 1060204928 & 0xfff
	slli x28, x28, 20
	lui x1, 1060204928 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 924317649 & 0xfff
	slli x28, x28, 20
	lui x1, 924317649 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__mulsf3
	add x1, x0, x10
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	add x1, x0, x10
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__subsf3
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	add x1, x0, x10
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_35 ( x0 )
LBB0_34:                                //  %if.else129
	call $__floatsisf
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 1060204928 & 0xfff
	slli x28, x28, 20
	lui x1, 1060204928 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsf3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__addsf3
	add x1, x0, x10
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x1
	call $__mulsf3
	add x8, x0, x10
	ori x28, x0, 924317649 & 0xfff
	slli x28, x28, 20
	lui x1, 924317649 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x1, x0, x10
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	add x11, x0, x8
	call $__addsf3
	add x1, x0, x10
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__subsf3
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	add x1, x0, x10
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
LBB0_35:                                //  %cleanup
	add x11, x0, x1
	call $__subsf3
LBB0_36:                                //  %cleanup
	add x8, x0, x10
LBB0_37:                                //  %cleanup
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
	.size	$log1pf, ($func_end0)-($log1pf)
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
