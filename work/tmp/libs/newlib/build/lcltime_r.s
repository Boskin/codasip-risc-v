	.text
	.file	"lcltime_r.bc"
	.globl	$localtime_r
	.type	$localtime_r,@function
$localtime_r:                           //  @localtime_r
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
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x10
	call $__gettzinfo
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $gmtime_r
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	lw x1, 20 ( x10 )
	nop
	addi x8, x1, 1900
	addi x11, x0, 100
	add x10, x0, x8
	call $__modsi3
	andi x1, x8, 3
	bgtu x1, x0, LBB0_3
LBB0_1:                                 //  %entry
	beqz x10, LBB0_3
LBB0_2:
	slti x1, x0, 1
	jalr x0, LBB0_4 ( x0 )
LBB0_3:                                 //  %lor.rhs
	addi x11, x0, 400
	add x10, x0, x8
	call $__modsi3
	seqz x1, x10
LBB0_4:                                 //  %lor.end
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	call $__tz_lock
	call $_tzset_unlocked
	ori x28, x0, $_daylight & 0xfff
	slli x28, x28, 20
	lui x1, $_daylight >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	bgtu x1, x0, LBB0_7
LBB0_5:
	add x1, x0, x0
LBB0_6:                                 //  %if.end31
	lw x5, 24 ( x2 )                //  4-byte Folded Reload
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_17 ( x0 )
LBB0_7:                                 //  %if.then
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x1 )
	nop
	beq x8, x1, LBB0_10
LBB0_8:                                 //  %lor.lhs.false
	add x10, x0, x8
	call $__tzcalc_limits
	bgtu x10, x0, LBB0_10
LBB0_9:
	not x1, x0
	jalr x0, LBB0_6 ( x0 )
LBB0_10:                                //  %if.then9
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	nop
	lw x4, 0 ( x8 )
	lw x3, 28 ( x8 )
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x1 )
	lw x5, 24 ( x2 )                //  4-byte Folded Reload
	beqz x4, LBB0_13
LBB0_11:                                //  %cond.true
	ble x3, x1, LBB0_15
LBB0_12:
	add x1, x0, x0
	jalr x0, LBB0_16 ( x0 )
LBB0_13:                                //  %cond.false
	bgt x3, x1, LBB0_15
LBB0_14:
	slti x1, x0, 1
	jalr x0, LBB0_16 ( x0 )
LBB0_15:                                //  %lor.rhs21
	lw x3, 56 ( x8 )
	nop
	slt x1, x1, x3
LBB0_16:                                //  %cond.end
	andi x1, x1, 1
LBB0_17:                                //  %if.end31
	sw x1, 32 ( x5 )
	xori x1, x1, 1
	seqz x1, x1
	andi x10, x1, 1
	addi x11, x0, 28
	call $__mulsi3
	add x1, x10, x8
	lw x10, 32 ( x1 )
	nop
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 3600 & 0xfff
	slli x28, x28, 20
	lui x1, 3600 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	call $__modsi3
	add x8, x0, x10
	addi x11, x0, 60
	call $__modsi3
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x1 )
	nop
	sub x3, x1, x10
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 0 ( x1 )
	add x10, x0, x8
	addi x11, x0, 60
	call $__divsi3
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x1 )
	nop
	sub x8, x1, x10
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x8, 4 ( x1 )
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsi3
	lw x7, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 8 ( x7 )
	addi x3, x0, 59
	sub x1, x1, x10
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	sw x1, 8 ( x7 )
	ble x10, x3, LBB0_19
LBB0_18:
	addi x5, x0, -60
	slti x4, x0, 1
	jalr x0, LBB0_22 ( x0 )
LBB0_19:                                //  %if.else56
	addi x5, x0, 60
	bgt x0, x10, LBB0_21
LBB0_20:
	lw x9, 8 ( x2 )                 //  4-byte Folded Reload
	jalr x0, LBB0_23 ( x0 )
LBB0_21:
	not x4, x0
LBB0_22:                                //  %if.end65.sink.split
	lw x9, 8 ( x2 )                 //  4-byte Folded Reload
	add x5, x5, x10
	add x8, x4, x8
	sw x8, 4 ( x7 )
	sw x5, 0 ( x7 )
LBB0_23:                                //  %if.end65
	ble x8, x3, LBB0_25
LBB0_24:
	addi x3, x0, -60
	slti x4, x0, 1
	jalr x0, LBB0_27 ( x0 )
LBB0_25:                                //  %if.else73
	bgez x8, LBB0_28
LBB0_26:
	addi x3, x0, 60
	not x4, x0
LBB0_27:                                //  %if.end82.sink.split
	add x3, x3, x8
	add x1, x4, x1
	sw x1, 8 ( x7 )
	sw x3, 4 ( x7 )
LBB0_28:                                //  %if.end82
	slti x3, x1, 24
	andi x10, x9, 1
	bgtu x3, x0, LBB0_35
LBB0_29:                                //  %if.then85
	lw x4, 28 ( x7 )
	lw x3, 24 ( x7 )
	addi x5, x0, 5
	addi x4, x4, 1
	sw x4, 28 ( x7 )
	ble x3, x5, LBB0_31
LBB0_30:
	add x3, x0, x0
	jalr x0, LBB0_32 ( x0 )
LBB0_31:                                //  %if.then85
	addi x3, x3, 1
LBB0_32:                                //  %if.then85
	sw x3, 24 ( x7 )
	addi x1, x1, -24
	lw x8, 12 ( x7 )
	nop
	addi x3, x8, 1
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	sw x3, 12 ( x7 )
	sw x1, 8 ( x7 )
	addi x11, x0, 48
	call $__mulsi3
	lw x7, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 16 ( x7 )
	nop
	slli x3, x1, 2
	add x3, x3, x10
	lui x4, $__month_lengths >> 12 & 0xfffff
	ori x28, x0, $__month_lengths & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	add x3, x4, x3
	lw x3, 0 ( x3 )
	nop
	bgt x3, x8, LBB0_49
LBB0_33:                                //  %if.then98
	lw x4, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x4, x3
	sw x3, 12 ( x7 )
	addi x1, x1, 1
	sw x1, 16 ( x7 )
	xori x1, x1, 12
	bgtu x1, x0, LBB0_49
LBB0_34:                                //  %if.then107
	sw x0, 16 ( x7 )
	lw x1, 20 ( x7 )
	nop
	addi x1, x1, 1
	sw x1, 20 ( x7 )
	sw x0, 28 ( x7 )
	jalr x0, LBB0_49 ( x0 )
LBB0_35:                                //  %if.else114
	bgez x1, LBB0_49
LBB0_36:                                //  %if.then117
	lw x4, 28 ( x7 )
	lw x3, 24 ( x7 )
	slti x5, x0, 1
	addi x4, x4, -1
	sw x4, 28 ( x7 )
	ble x5, x3, LBB0_38
LBB0_37:
	addi x3, x0, 6
	jalr x0, LBB0_39 ( x0 )
LBB0_38:                                //  %if.then117
	addi x3, x3, -1
LBB0_39:                                //  %if.then117
	sw x3, 24 ( x7 )
	addi x1, x1, 24
	lw x3, 12 ( x7 )
	nop
	addi x3, x3, -1
	sw x3, 12 ( x7 )
	sw x1, 8 ( x7 )
	bgtu x3, x0, LBB0_49
LBB0_40:                                //  %if.then133
	lw x1, 16 ( x7 )
	nop
	addi x8, x1, -1
	sw x8, 16 ( x7 )
	bgt x1, x0, LBB0_48
LBB0_41:                                //  %if.then138
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	addi x8, x0, 11
	sw x8, 16 ( x7 )
	lw x1, 20 ( x7 )
	nop
	addi x3, x1, -1
	sw x3, 20 ( x7 )
	addi x10, x1, 1899
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	addi x11, x0, 100
	call $__modsi3
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 3
	bgtu x1, x0, LBB0_44
LBB0_42:                                //  %if.then138
	beqz x10, LBB0_44
LBB0_43:
	addi x1, x0, 365
	jalr x0, LBB0_47 ( x0 )
LBB0_44:                                //  %lor.rhs151
	addi x11, x0, 400
	add x10, x0, x3
	call $__modsi3
	add x1, x0, x0
	bne x10, x1, LBB0_46
LBB0_45:
	addi x1, x0, 365
	jalr x0, LBB0_47 ( x0 )
LBB0_46:                                //  %lor.rhs151
	addi x1, x0, 364
LBB0_47:                                //  %lor.rhs151
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	sw x1, 28 ( x3 )
LBB0_48:                                //  %if.end160
	addi x11, x0, 48
	call $__mulsi3
	lw x7, 24 ( x2 )                //  4-byte Folded Reload
	slli x1, x8, 2
	add x1, x1, x10
	lui x3, $__month_lengths >> 12 & 0xfffff
	ori x28, x0, $__month_lengths & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	add x1, x3, x1
	lw x1, 0 ( x1 )
	nop
	sw x1, 12 ( x7 )
LBB0_49:                                //  %if.end166
	add x8, x0, x7
	call $__tz_unlock
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
	.size	$localtime_r, ($func_end0)-($localtime_r)
	.cfi_endproc

	.address_space	0	
	.address_space	0	

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
