	.text
	.file	"csqrtf.bc"
	.globl	$csqrtf
	.type	$csqrtf,@function
$csqrtf:                                //  @csqrtf
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retstruct_reg 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -96
$cfi2:
	.cfi_adjust_cfa_offset 96
	sw x1, 92 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 84 ( x2 )                //  4-byte Folded Spill
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	lw x8, 4 ( x11 )
	lw x1, 0 ( x11 )
	nop
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	sw x8, 80 ( x2 )
	sw x1, 76 ( x2 )
	sw x1, 52 ( x2 )
	sw x8, 56 ( x2 )
	addi x10, x2, 52
	call $crealf
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 68 ( x2 )
	sw x8, 72 ( x2 )
	sw x8, 48 ( x2 )
	lw x1, 68 ( x2 )
	nop
	sw x1, 44 ( x2 )
	addi x10, x2, 44
	call $cimagf
	add x8, x0, x10
	add x11, x0, x0
	call $__nesf2
	bgtu x10, x0, LBB0_7
LBB0_1:                                 //  %if.then
	add x11, x0, x0
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ltsf2
	bgez x10, LBB0_3
LBB0_2:                                 //  %if.then8
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	xor x10, x1, x3
	call $sqrtf
	add x8, x0, x10
	jalr x0, LBB0_4 ( x0 )
LBB0_3:                                 //  %if.else
	add x11, x0, x0
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__nesf2
	bgtu x10, x0, LBB0_6
LBB0_4:                                 //  %if.then13
	add x11, x0, x0
	add x10, x0, x8
	call $__mulsf3
	add x11, x0, x0
LBB0_5:                                 //  %cleanup
	call $__addsf3
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_26 ( x0 )
LBB0_6:                                 //  %if.else19
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $sqrtf
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x0
	add x10, x0, x8
	call $__mulsf3
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_5 ( x0 )
LBB0_7:                                 //  %if.end
	add x11, x0, x0
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__nesf2
	bgtu x10, x0, LBB0_13
LBB0_8:                                 //  %if.then33
	add x10, x0, x8
	add x1, x0, x0
	add x11, x0, x1
	call $__gtsf2
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $fabsf
	lui x11, 1056964608>>12 &0xfffff
	call $__mulsf3
	call $sqrtf
	add x8, x0, x10
	add x11, x0, x0
	call $__mulsf3
	add x3, x0, x10
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x3
	call $__subsf3
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	add x1, x0, x0
	bgt x3, x1, LBB0_10
LBB0_9:                                 //  %if.then33
	add x11, x0, x10
LBB0_10:                                //  %if.then33
	add x10, x0, x8
	call $__addsf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	call $__subsf3
	add x1, x0, x0
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x3, x1, LBB0_12
LBB0_11:                                //  %if.then33
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
LBB0_12:                                //  %if.then33
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_25 ( x0 )
LBB0_13:                                //  %if.end55
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $fabsf
	lui x11, 1082130432>>12 &0xfffff
	call $__gtsf2
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	bgt x10, x0, LBB0_16
LBB0_14:                                //  %lor.lhs.false
	add x10, x0, x8
	call $fabsf
	lui x11, 1082130432>>12 &0xfffff
	call $__gtsf2
	bgt x10, x0, LBB0_16
LBB0_15:
	lui x1, 956301312>>12 &0xfffff
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	lui x8, 1283457024>>12 &0xfffff
	jalr x0, LBB0_17 ( x0 )
LBB0_16:                                //  %if.then60
	lui x1, 1073741824>>12 &0xfffff
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	lui x8, 1048576000>>12 &0xfffff
LBB0_17:                                //  %if.end66
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__mulsf3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__mulsf3
	add x8, x0, x10
	add x11, x0, x0
	call $__mulsf3
	add x1, x0, x10
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	sw x10, 60 ( x2 )
	sw x8, 64 ( x2 )
	lw x1, 60 ( x2 )
	nop
	sw x1, 36 ( x2 )
	sw x8, 32 ( x2 )                //  4-byte Folded Spill
	sw x8, 40 ( x2 )
	addi x10, x2, 36
	call $cabsf
	lui x11, 1056964608>>12 &0xfffff
	call $__mulsf3
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	lw x8, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lui x11, 1056964608>>12 &0xfffff
	call $__mulsf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	add x11, x0, x0
	call $__gtsf2
	ble x10, x0, LBB0_19
LBB0_18:                                //  %if.then79
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	call $sqrtf
	add x8, x0, x10
	lui x11, 1056964608>>12 &0xfffff
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	call $__divsf3
	call $fabsf
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB0_20 ( x0 )
LBB0_19:                                //  %if.else87
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__subsf3
	call $sqrtf
	add x8, x0, x10
	lui x11, 1056964608>>12 &0xfffff
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	call $__divsf3
	call $fabsf
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
LBB0_20:                                //  %if.end97
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x0
	add x11, x0, x8
	call $__ltsf2
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x8
	call $__mulsf3
	add x3, x0, x10
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x3
	call $__subsf3
	add x8, x0, x10
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	add x3, x0, x0
	bgt x3, x1, LBB0_22
LBB0_21:                                //  %if.end97
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
LBB0_22:                                //  %if.end97
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsf3
	add x11, x0, x8
	call $__addsf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__subsf3
	add x1, x0, x0
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x1, x3, LBB0_24
LBB0_23:                                //  %if.end97
	add x10, x0, x8
LBB0_24:                                //  %if.end97
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	add x8, x0, x10
LBB0_25:                                //  %cleanup
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_26:                                //  %cleanup
	sw x10, 0 ( x1 )
	sw x8, 4 ( x1 )
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	lw x1, 92 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 96
$cfi5:
	.cfi_adjust_cfa_offset -96
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$csqrtf, ($func_end0)-($csqrtf)
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
