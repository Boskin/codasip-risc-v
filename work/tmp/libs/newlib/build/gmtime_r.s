	.text
	.file	"gmtime_r.bc"
	.globl	$gmtime_r
	.type	$gmtime_r,@function
$gmtime_r:                              //  @gmtime_r
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
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 86400 & 0xfff
	lw x10, 0 ( x10 )
	nop
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	slli x28, x28, 20
	lui x1, 86400 >> 12 & 0xfffff
	srli x28, x28, 20
	or x8, x1, x28
	add x11, x0, x8
	call $__divsi3
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	sw x8, 24 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	call $__modsi3
	add x8, x0, x10
	ori x28, x0, 719471 & 0xfff
	slli x28, x28, 20
	srai x1, x8, 31
	lui x3, 719471 >> 12 & 0xfffff
	srli x28, x28, 20
	lw x4, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x1, x4
	or x1, x3, x28
	sw x4, 28 ( x2 )                //  4-byte Folded Spill
	add x10, x1, x4
	addi x11, x0, 7
	call $__modsi3
	add x1, x0, x0
	ble x1, x8, LBB0_2
LBB0_1:
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x8, x3, x8
LBB0_2:                                 //  %entry
	ble x1, x10, LBB0_4
LBB0_3:
	addi x10, x10, 7
LBB0_4:                                 //  %entry
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	lui x1, 3600 >> 12 & 0xfffff
	ori x28, x0, 3600 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $__divsi3
	add x1, x0, x8
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 8 ( x8 )
	add x10, x0, x1
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__modsi3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	addi x11, x0, 60
	call $__divsi3
	sw x10, 4 ( x8 )
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	addi x11, x0, 60
	call $__modsi3
	sw x10, 0 ( x8 )
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 24 ( x8 )
	lui x1, 573372 >> 12 & 0xfffff
	ori x28, x0, 573372 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	lui x3, 719468 >> 12 & 0xfffff
	ori x28, x0, 719468 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	lw x4, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x8, x3, x4
	not x3, x0
	add x10, x0, x8
	bgt x8, x3, LBB0_6
LBB0_5:                                 //  %entry
	add x10, x1, x4
LBB0_6:                                 //  %entry
	lui x1, 146097 >> 12 & 0xfffff
	ori x28, x0, 146097 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__divsi3
	lui x1, -146097 >> 12 & 0xfffff
	ori x28, x0, -146097 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	call $__mulsi3
	add x8, x8, x10
	addi x11, x0, 1460
	add x10, x0, x8
	call $__udivsi3
	sub x1, x8, x10
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	lui x1, 36524 >> 12 & 0xfffff
	ori x28, x0, 36524 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	call $__udivsi3
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x10, x1
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	lui x1, 146096 >> 12 & 0xfffff
	ori x28, x0, 146096 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__udivsi3
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x1, x10
	add x10, x0, x8
	addi x11, x0, 1460
	call $__udivsi3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	lui x1, 36500 >> 12 & 0xfffff
	ori x28, x0, 36500 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__udivsi3
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	add x1, x10, x1
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 365
	add x10, x0, x8
	call $__udivsi3
	addi x11, x0, -365
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	call $__mulsi3
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x10, x1
	addi x11, x0, 5
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	call $__mulsi3
	addi x8, x10, 2
	addi x11, x0, 153
	add x10, x0, x8
	call $__udivsi3
	addi x1, x0, 1530
	bgeu x8, x1, LBB0_8
LBB0_7:
	addi x1, x0, 2
	jalr x0, LBB0_9 ( x0 )
LBB0_8:                                 //  %entry
	addi x1, x0, -10
LBB0_9:                                 //  %entry
	add x1, x10, x1
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 153
	call $__mulsi3
	addi x10, x10, 2
	addi x11, x0, 5
	call $__udivsi3
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x8, 1
	sub x1, x1, x10
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sltiu x1, x1, 2
	andi x1, x1, 1
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	addi x11, x0, 400
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsi3
	add x4, x0, x10
	add x3, x0, x8
	sltiu x1, x3, 306
	bgtu x1, x0, LBB0_11
LBB0_10:                                //  %cond.true47
	addi x1, x3, -306
	lw x5, 28 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_16 ( x0 )
LBB0_11:                                //  %cond.false49
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 100
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	call $__umodsi3
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x1, 59
	andi x1, x8, 3
	bgtu x1, x0, LBB0_14
LBB0_12:                                //  %cond.false49
	beqz x10, LBB0_14
LBB0_13:
	slti x1, x0, 1
	jalr x0, LBB0_15 ( x0 )
LBB0_14:                                //  %lor.rhs
	addi x11, x0, 400
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x3
	call $__umodsi3
	add x3, x0, x8
	seqz x1, x10
LBB0_15:                                //  %lor.end
	andi x1, x1, 1
	add x1, x1, x3
	lw x5, 28 ( x2 )                //  4-byte Folded Reload
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
LBB0_16:                                //  %cond.end62
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	nop
	sw x1, 28 ( x10 )
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x4
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	add x1, x3, x1
	addi x1, x1, -1900
	sw x1, 20 ( x10 )
	sw x5, 16 ( x10 )
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 12 ( x10 )
	sw x0, 32 ( x10 )
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
	.size	$gmtime_r, ($func_end0)-($gmtime_r)
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
