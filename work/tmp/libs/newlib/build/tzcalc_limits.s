	.text
	.file	"tzcalc_limits.bc"
	.globl	$__tzcalc_limits
	.type	$__tzcalc_limits,@function
$__tzcalc_limits:                       //  @__tzcalc_limits
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
	add x8, x0, x10
	call $__gettzinfo
	slti x1, x8, 1970
	beqz x1, LBB0_2
LBB0_1:
	add x10, x0, x0
	jalr x0, LBB0_38 ( x0 )
LBB0_2:                                 //  %if.end
	addi x11, x0, 365
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $__mulsi3
	addi x1, x8, -1969
	srai x3, x1, 31
	srli x3, x3, 30
	add x1, x3, x1
	srai x1, x1, 2
	add x1, x1, x10
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	addi x10, x8, -1901
	addi x11, x0, -100
	call $__divsi3
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x10, x1
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 100
	add x10, x0, x8
	call $__umodsi3
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	addi x11, x0, 400
	add x10, x0, x8
	call $__umodsi3
	andi x3, x8, 3
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sltu x1, x0, x1
	seqz x3, x3
	and x1, x3, x1
	seqz x3, x10
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	or x1, x1, x3
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	addi x10, x8, -1601
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x8, 4 ( x1 )
	addi x11, x0, 400
	call $__divsi3
	ori x28, x0, -719051 & 0xfff
	slli x28, x28, 20
	lui x1, -719051 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, -719050 & 0xfff
	slli x28, x28, 20
	lui x3, -719050 >> 12 & 0xfffff
	srli x28, x28, 20
	lw x4, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x10, x4
	or x3, x3, x28
	add x5, x1, x4
	add x7, x3, x4
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lbu x1, 8 ( x3 )
	add x8, x0, x3
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	sw x7, 24 ( x2 )                //  4-byte Folded Spill
	sw x5, 12 ( x2 )                //  4-byte Folded Spill
	bgtu x3, x0, LBB0_7
LBB0_3:                                 //  %if.end
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x3, LBB0_7
LBB0_4:                                 //  %for.body.preheader
	xori x3, x1, 68
	beqz x3, LBB0_22
LBB0_5:                                 //  %for.body.preheader
	xori x1, x1, 74
	bgtu x1, x0, LBB0_23
LBB0_6:                                 //  %if.then14
	lw x1, 20 ( x8 )
	addi x3, x0, 59
	slt x3, x3, x1
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	nop
	and x3, x3, x4
	add x1, x1, x5
	andi x3, x3, 1
	add x10, x3, x1
	jalr x0, LBB0_31 ( x0 )
LBB0_7:                                 //  %for.body.us.preheader
	xori x3, x1, 74
	beqz x3, LBB0_10
LBB0_8:                                 //  %for.body.us.preheader
	xori x1, x1, 68
	bgtu x1, x0, LBB0_11
LBB0_9:                                 //  %if.then38.us
	lw x1, 20 ( x8 )
	nop
	add x10, x7, x1
	jalr x0, LBB0_19 ( x0 )
LBB0_10:                                //  %if.then14.us
	lw x1, 20 ( x8 )
	addi x3, x0, 59
	slt x3, x3, x1
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	nop
	and x3, x3, x4
	add x1, x1, x5
	andi x3, x3, 1
	add x10, x3, x1
	jalr x0, LBB0_19 ( x0 )
LBB0_11:                                //  %lor.end.us
	lw x3, 12 ( x8 )
	add x5, x0, x0
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	andi x1, x1, 1
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	slti x1, x3, 2
	bgtu x1, x0, LBB0_14
LBB0_12:                                //  %for.body60.us.preheader
	addi x11, x0, 48
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	call $__mulsi3
	lw x9, 20 ( x2 )                //  4-byte Folded Reload
	ori x28, x0, $__month_lengths & 0xfff
	slli x28, x28, 20
	lui x1, $__month_lengths >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	add x5, x0, x0
	lw x7, 24 ( x2 )                //  4-byte Folded Reload
LBB0_13:                                //  %for.body60.us
                                        //  =>This Inner Loop Header: Depth=1
	lw x3, 0 ( x1 )
	addi x4, x5, 2
	addi x1, x1, 4
	addi x5, x5, 1
	add x7, x7, x3
	bgt x9, x4, LBB0_13
LBB0_14:                                //  %for.end.us
	sw x5, 4 ( x2 )                 //  4-byte Folded Spill
	sw x7, 20 ( x2 )                //  4-byte Folded Spill
	addi x10, x7, 4
	addi x11, x0, 7
	call $__modsi3
	lw x1, 20 ( x8 )
	nop
	sub x8, x1, x10
	add x1, x0, x0
	ble x1, x8, LBB0_16
LBB0_15:
	addi x8, x8, 7
LBB0_16:                                //  %for.end.us
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 16 ( x1 )
	addi x11, x0, 7
	call $__mulsi3
	add x8, x10, x8
	addi x11, x0, 48
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsi3
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	slli x1, x1, 2
	add x1, x1, x10
	lui x3, $__month_lengths >> 12 & 0xfffff
	ori x28, x0, $__month_lengths & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	add x1, x3, x1
	lw x1, 0 ( x1 )
LBB0_17:                                //  %while.cond.us
                                        //  =>This Inner Loop Header: Depth=1
	addi x8, x8, -7
	ble x1, x8, LBB0_17
LBB0_18:                                //  %while.end.us
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x8, x1
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
LBB0_19:                                //  %if.end87.us
	ori x28, x0, 86400 & 0xfff
	slli x28, x28, 20
	lui x1, 86400 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsi3
	lw x3, 24 ( x8 )
	lbu x1, 36 ( x8 )
	lw x4, 32 ( x8 )
	add x3, x3, x10
	xori x5, x1, 68
	add x3, x4, x3
	sw x3, 28 ( x2 )                //  4-byte Folded Spill
	sw x3, 28 ( x8 )
	beqz x5, LBB0_35
LBB0_20:                                //  %if.end87.us
	xori x1, x1, 74
	bgtu x1, x0, LBB0_39
LBB0_21:                                //  %if.then14.us.1
	lw x1, 48 ( x8 )
	addi x3, x0, 59
	slt x3, x3, x1
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	nop
	and x3, x3, x4
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x4
	andi x3, x3, 1
	jalr x0, LBB0_36 ( x0 )
LBB0_22:                                //  %if.then38
	lw x1, 20 ( x8 )
	nop
	add x10, x7, x1
	jalr x0, LBB0_31 ( x0 )
LBB0_23:                                //  %lor.end
	lw x1, 12 ( x8 )
	add x8, x0, x0
	slti x3, x1, 2
	add x9, x0, x7
	bgtu x3, x0, LBB0_26
LBB0_24:                                //  %for.body60.preheader
	ori x28, x0, $__month_lengths+48 & 0xfff
	slli x28, x28, 20
	lui x3, $__month_lengths+48 >> 12 & 0xfffff
	srli x28, x28, 20
	add x8, x0, x0
	or x3, x3, x28
	add x9, x0, x7
LBB0_25:                                //  %for.body60
                                        //  =>This Inner Loop Header: Depth=1
	lw x4, 0 ( x3 )
	addi x5, x8, 2
	addi x3, x3, 4
	addi x8, x8, 1
	add x9, x9, x4
	bgt x1, x5, LBB0_25
LBB0_26:                                //  %for.end
	sw x9, 28 ( x2 )                //  4-byte Folded Spill
	addi x10, x9, 4
	addi x11, x0, 7
	call $__modsi3
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 20 ( x1 )
	nop
	sub x3, x1, x10
	add x1, x0, x0
	ble x1, x3, LBB0_28
LBB0_27:
	addi x3, x3, 7
LBB0_28:                                //  %for.end
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 16 ( x1 )
	addi x11, x0, 7
	call $__mulsi3
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x10, x1
	slli x3, x8, 2
	lui x4, $__month_lengths+48 >> 12 & 0xfffff
	ori x28, x0, $__month_lengths+48 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	add x3, x4, x3
	lw x3, 0 ( x3 )
LBB0_29:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	addi x1, x1, -7
	ble x3, x1, LBB0_29
LBB0_30:                                //  %while.end
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x1, x3
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
LBB0_31:                                //  %if.end87
	ori x28, x0, 86400 & 0xfff
	slli x28, x28, 20
	lui x1, 86400 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsi3
	lw x3, 24 ( x8 )
	lbu x1, 36 ( x8 )
	lw x4, 32 ( x8 )
	add x3, x3, x10
	xori x5, x1, 68
	add x3, x4, x3
	sw x3, 28 ( x2 )                //  4-byte Folded Spill
	sw x3, 28 ( x8 )
	beqz x5, LBB0_35
LBB0_32:                                //  %if.end87
	xori x1, x1, 74
	lw x7, 24 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB0_21
LBB0_33:                                //  %lor.end.1
	lw x1, 40 ( x8 )
	add x4, x0, x0
	slti x3, x1, 2
	beqz x3, LBB0_48
LBB0_34:
	add x8, x0, x4
	jalr x0, LBB0_50 ( x0 )
LBB0_35:                                //  %if.then38.us.1
	lw x1, 48 ( x8 )
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_36:                                //  %for.end99
	add x10, x3, x1
LBB0_37:                                //  %for.end99
	ori x28, x0, 86400 & 0xfff
	slli x28, x28, 20
	lui x1, 86400 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsi3
	lw x1, 52 ( x8 )
	lw x3, 60 ( x8 )
	add x1, x1, x10
	add x1, x3, x1
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	slt x3, x3, x1
	andi x3, x3, 1
	sw x1, 56 ( x8 )
	sw x3, 0 ( x8 )
	slti x10, x0, 1
LBB0_38:                                //  %cleanup
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
LBB0_39:                                //  %lor.end.us.1
	lw x5, 40 ( x8 )
	add x4, x0, x0
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	andi x3, x1, 1
	slti x1, x5, 2
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB0_41
LBB0_40:
	add x7, x0, x4
	lw x5, 24 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_43 ( x0 )
LBB0_41:                                //  %for.body60.us.1.preheader
	addi x11, x0, 48
	add x10, x0, x3
	sw x5, 16 ( x2 )                //  4-byte Folded Spill
	call $__mulsi3
	lw x9, 16 ( x2 )                //  4-byte Folded Reload
	ori x28, x0, $__month_lengths & 0xfff
	slli x28, x28, 20
	lui x1, $__month_lengths >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	add x7, x0, x0
	lw x5, 24 ( x2 )                //  4-byte Folded Reload
LBB0_42:                                //  %for.body60.us.1
                                        //  =>This Inner Loop Header: Depth=1
	lw x3, 0 ( x1 )
	addi x4, x7, 2
	addi x1, x1, 4
	addi x7, x7, 1
	add x5, x5, x3
	bgt x9, x4, LBB0_42
LBB0_43:                                //  %for.end.us.1
	sw x7, 16 ( x2 )                //  4-byte Folded Spill
	sw x5, 24 ( x2 )                //  4-byte Folded Spill
	addi x10, x5, 4
	addi x11, x0, 7
	call $__modsi3
	lw x1, 48 ( x8 )
	nop
	sub x8, x1, x10
	add x1, x0, x0
	ble x1, x8, LBB0_45
LBB0_44:
	addi x8, x8, 7
LBB0_45:                                //  %for.end.us.1
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 44 ( x1 )
	addi x11, x0, 7
	call $__mulsi3
	add x8, x10, x8
	addi x11, x0, 48
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsi3
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 2
	add x1, x1, x10
	lui x3, $__month_lengths >> 12 & 0xfffff
	ori x28, x0, $__month_lengths & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	add x1, x3, x1
	lw x1, 0 ( x1 )
LBB0_46:                                //  %while.cond.us.1
                                        //  =>This Inner Loop Header: Depth=1
	addi x8, x8, -7
	ble x1, x8, LBB0_46
LBB0_47:                                //  %while.end.us.1
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x8, x1
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_37 ( x0 )
LBB0_48:                                //  %for.body60.1.preheader
	ori x28, x0, $__month_lengths+48 & 0xfff
	slli x28, x28, 20
	lui x3, $__month_lengths+48 >> 12 & 0xfffff
	srli x28, x28, 20
	add x8, x0, x0
	or x3, x3, x28
LBB0_49:                                //  %for.body60.1
                                        //  =>This Inner Loop Header: Depth=1
	lw x4, 0 ( x3 )
	addi x5, x8, 2
	addi x3, x3, 4
	addi x8, x8, 1
	add x7, x7, x4
	bgt x1, x5, LBB0_49
LBB0_50:                                //  %for.end.1
	sw x7, 24 ( x2 )                //  4-byte Folded Spill
	addi x10, x7, 4
	addi x11, x0, 7
	call $__modsi3
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 48 ( x1 )
	nop
	sub x3, x1, x10
	add x1, x0, x0
	ble x1, x3, LBB0_52
LBB0_51:
	addi x3, x3, 7
LBB0_52:                                //  %for.end.1
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 44 ( x1 )
	addi x11, x0, 7
	call $__mulsi3
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x10, x1
	slli x3, x8, 2
	lui x4, $__month_lengths+48 >> 12 & 0xfffff
	ori x28, x0, $__month_lengths+48 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	add x3, x4, x3
	lw x3, 0 ( x3 )
LBB0_53:                                //  %while.cond.1
                                        //  =>This Inner Loop Header: Depth=1
	addi x1, x1, -7
	ble x3, x1, LBB0_53
LBB0_54:                                //  %while.end.1
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x1, x3
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_37 ( x0 )
$func_end0:
	.size	$__tzcalc_limits, ($func_end0)-($__tzcalc_limits)
	.cfi_endproc

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
