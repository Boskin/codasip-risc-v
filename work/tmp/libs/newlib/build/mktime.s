	.text
	.file	"mktime.bc"
	.globl	$mktime
	.type	$mktime,@function
$mktime:                                //  @mktime
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
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
	add x8, x0, x10
	call $__gettzinfo
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $validate_structure
	lw x10, 4 ( x8 )
	addi x11, x0, 60
	call $__mulsi3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	lw x1, 0 ( x8 )
	nop
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 3600 & 0xfff
	lw x10, 8 ( x8 )
	slli x28, x28, 20
	lui x1, 3600 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__mulsi3
	add x9, x0, x10
	lw x1, 16 ( x8 )
	ori x28, x0, $_DAYS_BEFORE_MONTH & 0xfff
	slli x28, x28, 20
	lui x3, $_DAYS_BEFORE_MONTH >> 12 & 0xfffff
	srli x28, x28, 20
	slli x4, x1, 2
	or x3, x3, x28
	add x3, x3, x4
	lw x3, 0 ( x3 )
	lw x4, 12 ( x8 )
	slti x1, x1, 2
	sw x8, 32 ( x2 )                //  4-byte Folded Spill
	lw x7, 20 ( x8 )
	add x8, x3, x4
	addi x5, x8, -1
	sw x7, 36 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB0_5
LBB0_1:                                 //  %entry
	andi x1, x7, 3
	bgtu x1, x0, LBB0_5
LBB0_2:                                 //  %land.rhs
	addi x11, x0, 100
	add x10, x0, x7
	sw x5, 40 ( x2 )                //  4-byte Folded Spill
	sw x9, 16 ( x2 )                //  4-byte Folded Spill
	call $__modsi3
	lw x9, 16 ( x2 )                //  4-byte Folded Reload
	lw x7, 36 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_4
LBB0_3:                                 //  %land.end
	addi x10, x7, 1900
	addi x11, x0, 400
	call $__modsi3
	lw x9, 16 ( x2 )                //  4-byte Folded Reload
	lw x7, 36 ( x2 )                //  4-byte Folded Reload
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_5
LBB0_4:                                 //  %land.end.thread
	add x5, x0, x8
LBB0_5:                                 //  %if.end
	ori x28, x0, 10000 & 0xfff
	slli x28, x28, 20
	lui x1, 10000 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, 20000 & 0xfff
	slli x28, x28, 20
	lui x3, 20000 >> 12 & 0xfffff
	srli x28, x28, 20
	add x1, x1, x7
	or x3, x3, x28
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x5, 28 ( x8 )
	bgeu x3, x1, LBB0_7
LBB0_6:
	not x10, x0
	jalr x0, LBB0_75 ( x0 )
LBB0_7:                                 //  %if.end21
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x3, x1
	slti x3, x7, 71
	add x4, x9, x1
	sw x4, 24 ( x2 )                //  4-byte Folded Spill
	bgtu x3, x0, LBB0_15
LBB0_8:                                 //  %for.body.preheader
	addi x8, x0, 1970
	addi x4, x0, 365
LBB0_9:                                 //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	addi x10, x8, -1900
	andi x3, x10, 3
	add x1, x0, x4
	bgtu x3, x0, LBB0_13
LBB0_10:                                //  %land.rhs29
                                        //    in Loop: Header=BB0_9 Depth=1
	addi x11, x0, 100
	sw x5, 40 ( x2 )                //  4-byte Folded Spill
	call $__modsi3
	addi x4, x0, 365
	lw x7, 36 ( x2 )                //  4-byte Folded Reload
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_12
LBB0_11:                                //  %land.end37
                                        //    in Loop: Header=BB0_9 Depth=1
	add x10, x0, x8
	addi x11, x0, 400
	call $__modsi3
	addi x4, x0, 365
	lw x7, 36 ( x2 )                //  4-byte Folded Reload
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	add x1, x0, x4
	bgtu x10, x0, LBB0_13
LBB0_12:                                //  %land.end37.thread
                                        //    in Loop: Header=BB0_9 Depth=1
	addi x1, x0, 366
LBB0_13:                                //  %land.end37.thread350
                                        //    in Loop: Header=BB0_9 Depth=1
	addi x3, x8, -1899
	add x5, x5, x1
	addi x8, x8, 1
	bgt x7, x3, LBB0_9
LBB0_14:                                //  %if.end76.loopexit
	addi x1, x8, -1900
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_32 ( x0 )
LBB0_15:                                //  %if.else
	xori x1, x7, 70
	bgtu x1, x0, LBB0_17
LBB0_16:
	addi x1, x0, 70
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_32 ( x0 )
LBB0_17:                                //  %for.cond43.preheader
	addi x1, x0, 68
	ble x7, x1, LBB0_19
LBB0_18:
	addi x4, x0, 365
	addi x1, x0, 69
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_31 ( x0 )
LBB0_19:                                //  %for.body46.preheader
	add x1, x0, x0
	addi x8, x0, 1969
LBB0_20:                                //  %for.body46
                                        //  =>This Inner Loop Header: Depth=1
	andi x3, x1, 1
	addi x1, x0, 365
	beqz x3, LBB0_24
LBB0_21:                                //  %land.rhs49
                                        //    in Loop: Header=BB0_20 Depth=1
	addi x10, x8, -1900
	addi x11, x0, 100
	sw x5, 40 ( x2 )                //  4-byte Folded Spill
	call $__modsi3
	lw x7, 36 ( x2 )                //  4-byte Folded Reload
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_23
LBB0_22:                                //  %land.end57
                                        //    in Loop: Header=BB0_20 Depth=1
	add x10, x0, x8
	addi x11, x0, 400
	call $__modsi3
	lw x7, 36 ( x2 )                //  4-byte Folded Reload
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	addi x1, x0, 365
	bgtu x10, x0, LBB0_24
LBB0_23:                                //  %land.end57.thread
                                        //    in Loop: Header=BB0_20 Depth=1
	addi x1, x0, 366
LBB0_24:                                //  %land.end57.thread351
                                        //    in Loop: Header=BB0_20 Depth=1
	addi x4, x8, -1901
	andi x3, x4, 3
	sub x5, x5, x1
	addi x8, x8, -1
	seqz x1, x3
	bgt x4, x7, LBB0_20
LBB0_25:                                //  %for.end61
	addi x4, x0, 365
	addi x10, x8, -1900
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	beqz x3, LBB0_27
LBB0_26:
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_31 ( x0 )
LBB0_27:                                //  %land.rhs64
	sw x5, 40 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 100
	call $__modsi3
	bgtu x10, x0, LBB0_30
LBB0_28:                                //  %land.end72
	addi x11, x0, 400
	add x10, x0, x8
	call $__modsi3
	beqz x10, LBB0_30
LBB0_29:
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	addi x4, x0, 365
	jalr x0, LBB0_31 ( x0 )
LBB0_30:                                //  %land.end72.thread
	addi x4, x0, 366
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_31:                                //  %land.end72.thread352
	sub x5, x5, x4
LBB0_32:                                //  %if.end76
	ori x28, x0, 86400 & 0xfff
	slli x28, x28, 20
	lui x1, 86400 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	sw x5, 40 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x5
	call $__mulsi3
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x10, x1
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	call $__tz_lock
	call $_tzset_unlocked
	ori x28, x0, $_daylight & 0xfff
	slli x28, x28, 20
	lui x1, $_daylight >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	bgtu x1, x0, LBB0_34
LBB0_33:                                //  %if.end76.if.end206_crit_edge
	add x7, x0, x0
	addi x1, x8, 32
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_72 ( x0 )
LBB0_34:                                //  %if.then79
	add x3, x0, x8
	lw x8, 32 ( x3 )
	slti x1, x0, 1
	bgt x1, x8, LBB0_36
LBB0_35:                                //  %if.then79
	add x8, x0, x1
LBB0_36:                                //  %if.then79
	addi x11, x3, 32
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x1 )
	lw x3, 20 ( x3 )
	nop
	addi x10, x3, 1900
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	beq x10, x1, LBB0_39
LBB0_37:                                //  %lor.lhs.false87
	call $__tzcalc_limits
	bgtu x10, x0, LBB0_39
LBB0_38:
	add x7, x0, x8
	jalr x0, LBB0_72 ( x0 )
LBB0_39:                                //  %if.then90
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	lw x4, 56 ( x3 )
	lw x1, 60 ( x3 )
	lw x3, 32 ( x3 )
	sub x5, x4, x1
	sub x4, x4, x3
	lw x9, 36 ( x2 )                //  4-byte Folded Reload
	nop
	ble x5, x9, LBB0_42
LBB0_40:                                //  %if.then90
	bgt x4, x9, LBB0_42
LBB0_41:
	add x7, x0, x8
	jalr x0, LBB0_72 ( x0 )
LBB0_42:                                //  %if.else113
	lw x7, 28 ( x2 )                //  4-byte Folded Reload
	nop
	lw x5, 28 ( x7 )
	lw x7, 0 ( x7 )
	add x10, x0, x0
	slt x4, x9, x4
	sub x5, x5, x1
	slt x5, x9, x5
	seqz x5, x5
	bne x7, x10, LBB0_44
LBB0_43:
	or x4, x5, x4
	jalr x0, LBB0_45 ( x0 )
LBB0_44:                                //  %if.else113
	and x4, x5, x4
LBB0_45:                                //  %if.else113
	andi x7, x4, 1
	bgt x0, x8, LBB0_72
LBB0_46:                                //  %if.else113
	xor x5, x8, x7
	xori x5, x5, 1
	bgtu x5, x0, LBB0_72
LBB0_47:                                //  %if.then130
	sub x3, x3, x1
	sw x7, 8 ( x2 )                 //  4-byte Folded Spill
	bgtu x4, x0, LBB0_49
LBB0_48:                                //  %if.then130
	sub x3, x0, x3
LBB0_49:                                //  %if.then130
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x8 )
	nop
	add x1, x3, x1
	sw x1, 0 ( x8 )
	lw x1, 12 ( x8 )
	nop
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	call $validate_structure
	lw x7, 36 ( x2 )                //  4-byte Folded Reload
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x7, x7, x1
	lw x1, 12 ( x8 )
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x1, x3
	sw x7, 36 ( x2 )                //  4-byte Folded Spill
	bgtu x3, x0, LBB0_51
LBB0_50:
	lw x7, 8 ( x2 )                 //  4-byte Folded Reload
	jalr x0, LBB0_72 ( x0 )
LBB0_51:                                //  %if.then149
	slti x4, x0, 1
	not x1, x0
	add x5, x0, x4
	bgt x1, x3, LBB0_53
LBB0_52:                                //  %if.then149
	add x5, x0, x3
LBB0_53:                                //  %if.then149
	bgt x3, x4, LBB0_55
LBB0_54:                                //  %if.then149
	add x1, x0, x5
LBB0_55:                                //  %if.then149
	lw x3, 28 ( x8 )
	add x4, x0, x8
	add x8, x1, x3
	sw x8, 28 ( x4 )
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x1
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
	bgez x8, LBB0_64
LBB0_56:                                //  %if.then161
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	addi x10, x1, -1
	andi x1, x10, 3
	beqz x1, LBB0_58
LBB0_57:
	addi x1, x0, 364
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	lw x7, 8 ( x2 )                 //  4-byte Folded Reload
	sw x1, 28 ( x8 )
	jalr x0, LBB0_72 ( x0 )
LBB0_58:                                //  %land.rhs165
	addi x11, x0, 100
	call $__modsi3
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB0_60
LBB0_59:
	addi x1, x0, 365
	lw x7, 8 ( x2 )                 //  4-byte Folded Reload
	sw x1, 28 ( x8 )
	jalr x0, LBB0_72 ( x0 )
LBB0_60:                                //  %lor.rhs168
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	addi x10, x1, 1899
	addi x11, x0, 400
	call $__modsi3
	lw x7, 8 ( x2 )                 //  4-byte Folded Reload
	add x1, x0, x0
	bne x10, x1, LBB0_62
LBB0_61:
	addi x1, x0, 365
	sw x1, 28 ( x8 )
	jalr x0, LBB0_72 ( x0 )
LBB0_62:                                //  %lor.rhs168
	addi x1, x0, 364
	sw x1, 28 ( x8 )
	jalr x0, LBB0_72 ( x0 )
LBB0_64:                                //  %if.else179
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	nop
	andi x1, x10, 3
	bgtu x1, x0, LBB0_69
LBB0_65:                                //  %land.rhs182
	addi x11, x0, 100
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	call $__modsi3
	beqz x10, LBB0_67
LBB0_66:
	addi x1, x0, 366
	jalr x0, LBB0_70 ( x0 )
LBB0_67:                                //  %lor.rhs185
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	addi x10, x1, 1900
	addi x11, x0, 400
	call $__modsi3
	add x1, x0, x0
	bne x10, x1, LBB0_69
LBB0_68:
	addi x1, x0, 366
	jalr x0, LBB0_70 ( x0 )
LBB0_69:                                //  %lor.rhs185
	addi x1, x0, 365
LBB0_70:                                //  %lor.rhs185
	lw x7, 8 ( x2 )                 //  4-byte Folded Reload
	bgt x1, x8, LBB0_72
LBB0_71:                                //  %if.then197
	sub x1, x8, x1
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 28 ( x3 )
LBB0_72:                                //  %if.end206
	xori x1, x7, 1
	seqz x1, x1
	andi x10, x1, 1
	addi x11, x0, 28
	add x8, x0, x7
	call $__mulsi3
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x10, x1
	lw x1, 32 ( x1 )
	nop
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	call $__tz_unlock
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x8, 0 ( x1 )
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	addi x10, x1, 4
	addi x11, x0, 7
	call $__modsi3
	add x1, x0, x0
	ble x1, x10, LBB0_74
LBB0_73:
	addi x10, x10, 7
LBB0_74:                                //  %if.end206
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	lw x4, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 24 ( x1 )
	add x10, x3, x4
LBB0_75:                                //  %cleanup
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
	.size	$mktime, ($func_end0)-($mktime)
	.cfi_endproc

	.type	$validate_structure,@function
$validate_structure:                    //  @validate_structure
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -64
$cfi9:
	.cfi_adjust_cfa_offset 64
	sw x1, 60 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 52 ( x2 )                //  4-byte Folded Spill
	add x5, x0, x10
	lw x11, 0 ( x5 )
	addi x8, x0, 59
	sw x5, 16 ( x2 )                //  4-byte Folded Spill
	bgtu x11, x8, LBB1_2
LBB1_1:                                 //  %entry.if.end10_crit_edge
	addi x7, x5, 4
	lw x11, 4 ( x5 )
	jalr x0, LBB1_4 ( x0 )
LBB1_2:                                 //  %if.then
	addi x10, x2, 44
	addi x12, x0, 60
	call $div
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 4 ( x5 )
	lw x4, 44 ( x2 )
	lw x1, 48 ( x2 )
	addi x7, x5, 4
	add x11, x4, x3
	sw x11, 4 ( x5 )
	sw x1, 0 ( x5 )
	bgez x1, LBB1_4
LBB1_3:                                 //  %if.then6
	addi x1, x1, 60
	addi x11, x11, -1
	sw x1, 0 ( x5 )
	sw x11, 4 ( x5 )
LBB1_4:                                 //  %if.end10
	bgtu x11, x8, LBB1_6
LBB1_5:                                 //  %if.end10.if.end30_crit_edge
	addi x8, x5, 8
	lw x11, 8 ( x5 )
	jalr x0, LBB1_8 ( x0 )
LBB1_6:                                 //  %if.then16
	addi x10, x2, 36
	addi x12, x0, 60
	add x8, x0, x7
	call $div
	add x7, x0, x8
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 8 ( x5 )
	lw x4, 36 ( x2 )
	lw x1, 40 ( x2 )
	addi x8, x5, 8
	add x11, x4, x3
	sw x11, 8 ( x5 )
	sw x1, 0 ( x7 )
	bgez x1, LBB1_8
LBB1_7:                                 //  %if.then24
	addi x1, x1, 60
	addi x11, x11, -1
	sw x1, 0 ( x7 )
	sw x11, 0 ( x8 )
LBB1_8:                                 //  %if.end30
	sltiu x1, x11, 24
	bgtu x1, x0, LBB1_11
LBB1_9:                                 //  %if.then36
	addi x10, x2, 28
	addi x12, x0, 24
	call $div
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 12 ( x5 )
	lw x4, 28 ( x2 )
	lw x1, 32 ( x2 )
	add x3, x4, x3
	sw x3, 12 ( x5 )
	sw x1, 0 ( x8 )
	bgez x1, LBB1_11
LBB1_10:                                //  %if.then44
	addi x1, x1, 24
	addi x3, x3, -1
	sw x1, 0 ( x8 )
	sw x3, 12 ( x5 )
LBB1_11:                                //  %if.end50
	lw x11, 16 ( x5 )
	addi x13, x0, 11
	bgtu x11, x13, LBB1_13
LBB1_12:                                //  %if.end50.if.end69_crit_edge
	addi x7, x5, 20
	lw x9, 20 ( x5 )
	jalr x0, LBB1_16 ( x0 )
LBB1_13:                                //  %if.then55
	addi x10, x2, 20
	addi x12, x0, 12
	call $div
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 20 ( x5 )
	lw x3, 20 ( x2 )
	lw x11, 24 ( x2 )
	addi x7, x5, 20
	add x9, x3, x1
	sw x9, 20 ( x5 )
	sw x11, 16 ( x5 )
	bgez x11, LBB1_15
LBB1_14:                                //  %if.then63
	addi x11, x11, 12
	addi x9, x9, -1
	sw x11, 16 ( x5 )
	sw x9, 20 ( x5 )
LBB1_15:                                //  %if.end69
	addi x13, x0, 11
LBB1_16:                                //  %if.end69
	andi x1, x9, 3
	addi x12, x0, 28
	sw x7, 12 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB1_20
LBB1_17:                                //  %land.rhs
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 100
	add x10, x0, x9
	add x8, x0, x9
	call $__modsi3
	addi x13, x0, 11
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	add x9, x0, x8
	lw x7, 12 ( x2 )                //  4-byte Folded Reload
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB1_19
LBB1_18:                                //  %land.end
	addi x10, x9, 1900
	addi x11, x0, 400
	call $__modsi3
	addi x13, x0, 11
	addi x12, x0, 28
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	add x9, x0, x8
	lw x7, 12 ( x2 )                //  4-byte Folded Reload
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB1_20
LBB1_19:                                //  %land.end.thread
	addi x12, x0, 29
LBB1_20:                                //  %land.end.thread249
	lw x8, 12 ( x5 )
	nop
	ble x8, x0, LBB1_27
LBB1_21:
	addi x13, x0, 2
	lui x14, $DAYS_IN_MONTH >> 12 & 0xfffff
	addi x15, x0, 28
	add x16, x0, x0
	addi x17, x0, 100
LBB1_22:                                //  %while.cond119thread-pre-split
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_23 Depth 2
	add x18, x0, x9
LBB1_23:                                //  %while.cond119
                                        //    Parent Loop BB1_22 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	xori x1, x11, 1
	add x3, x0, x12
	beqz x1, LBB1_25
LBB1_24:                                //  %cond.false124
                                        //    in Loop: Header=BB1_23 Depth=2
	ori x28, x0, $DAYS_IN_MONTH & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	slli x3, x11, 2
	or x4, x14, x28
	add x3, x4, x3
	lw x3, 0 ( x3 )
	nop
LBB1_25:                                //  %cond.end127
                                        //    in Loop: Header=BB1_23 Depth=2
	bgt x8, x3, LBB1_40
LBB1_26:                                //  %if.end165
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	lw x1, 60 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 64
$cfi12:
	.cfi_adjust_cfa_offset -64
$cfi13:
	.cfi_def_cfa 2, 0
	ret
LBB1_27:                                //  %while.body.preheader
	addi x16, x0, 28
	lui x14, $DAYS_IN_MONTH >> 12 & 0xfffff
	slti x15, x0, 1
LBB1_28:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	bgtu x11, x0, LBB1_36
LBB1_29:                                //  %if.then91
                                        //    in Loop: Header=BB1_28 Depth=1
	addi x10, x9, -1
	andi x1, x10, 3
	sw x10, 0 ( x7 )
	beqz x1, LBB1_31
LBB1_30:                                //    in Loop: Header=BB1_28 Depth=1
	add x9, x0, x10
	add x12, x0, x16
	add x1, x0, x13
	jalr x0, LBB1_37 ( x0 )
LBB1_31:                                //  %land.rhs98
                                        //    in Loop: Header=BB1_28 Depth=1
	sw x9, 4 ( x2 )                 //  4-byte Folded Spill
	addi x11, x0, 100
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	call $__modsi3
	bgtu x10, x0, LBB1_34
LBB1_32:                                //  %land.end108
                                        //    in Loop: Header=BB1_28 Depth=1
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	addi x10, x1, 1899
	addi x11, x0, 400
	call $__modsi3
	beqz x10, LBB1_34
LBB1_33:                                //    in Loop: Header=BB1_28 Depth=1
	lw x9, 8 ( x2 )                 //  4-byte Folded Reload
	addi x10, x0, 28
	add x16, x0, x10
	add x12, x0, x16
	addi x13, x0, 11
	add x1, x0, x13
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	lw x7, 12 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_35 ( x0 )
LBB1_34:                                //  %land.end108.thread
                                        //    in Loop: Header=BB1_28 Depth=1
	lw x9, 8 ( x2 )                 //  4-byte Folded Reload
	addi x12, x0, 29
	addi x13, x0, 11
	add x1, x0, x13
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	lw x7, 12 ( x2 )                //  4-byte Folded Reload
	addi x10, x0, 28
	add x16, x0, x10
LBB1_35:                                //  %cond.false
                                        //    in Loop: Header=BB1_28 Depth=1
	lui x14, $DAYS_IN_MONTH >> 12 & 0xfffff
	slti x15, x0, 1
	jalr x0, LBB1_37 ( x0 )
LBB1_36:                                //  %if.end112
                                        //    in Loop: Header=BB1_28 Depth=1
	addi x1, x11, -1
	xori x4, x1, 1
	add x11, x0, x15
	add x3, x0, x12
	beqz x4, LBB1_38
LBB1_37:                                //  %cond.false
                                        //    in Loop: Header=BB1_28 Depth=1
	ori x28, x0, $DAYS_IN_MONTH & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	slli x3, x1, 2
	or x4, x14, x28
	add x3, x4, x3
	lw x3, 0 ( x3 )
	add x11, x0, x1
LBB1_38:                                //  %cond.end
                                        //    in Loop: Header=BB1_28 Depth=1
	add x8, x3, x8
	ble x8, x0, LBB1_28
LBB1_39:                                //  %while.cond.if.end165.loopexit_crit_edge
	sw x11, 16 ( x5 )
	sw x8, 12 ( x5 )
	jalr x0, LBB1_26 ( x0 )
LBB1_40:                                //  %while.body130
                                        //    in Loop: Header=BB1_23 Depth=2
	bgtu x1, x0, LBB1_42
LBB1_41:                                //  %cond.end137.thread
                                        //    in Loop: Header=BB1_23 Depth=2
	sub x8, x8, x12
	addi x1, x11, 1
	sw x8, 12 ( x5 )
	sw x1, 16 ( x5 )
	add x11, x0, x13
	jalr x0, LBB1_23 ( x0 )
LBB1_42:                                //  %cond.end137
                                        //    in Loop: Header=BB1_23 Depth=2
	ori x28, x0, $DAYS_IN_MONTH & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	slli x1, x11, 2
	or x3, x14, x28
	add x1, x3, x1
	lw x1, 0 ( x1 )
	addi x11, x11, 1
	xori x3, x11, 12
	sub x8, x8, x1
	sw x8, 12 ( x5 )
	sw x11, 16 ( x5 )
	bgtu x3, x0, LBB1_23
LBB1_43:                                //  %if.then142
                                        //    in Loop: Header=BB1_22 Depth=1
	addi x9, x18, 1
	andi x1, x9, 3
	sw x9, 0 ( x7 )
	sw x0, 16 ( x5 )
	add x12, x0, x15
	add x11, x0, x16
	bgtu x1, x0, LBB1_22
LBB1_44:                                //  %land.rhs149
                                        //    in Loop: Header=BB1_22 Depth=1
	add x10, x0, x9
	add x11, x0, x17
	sw x9, 4 ( x2 )                 //  4-byte Folded Spill
	sw x18, 8 ( x2 )                //  4-byte Folded Spill
	call $__modsi3
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	addi x1, x0, 29
	addi x11, x0, 400
	addi x17, x0, 100
	add x16, x0, x0
	addi x15, x0, 28
	lui x14, $DAYS_IN_MONTH >> 12 & 0xfffff
	addi x13, x0, 2
	lw x9, 4 ( x2 )                 //  4-byte Folded Reload
	lw x7, 12 ( x2 )                //  4-byte Folded Reload
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB1_46
LBB1_45:                                //  %land.end159
                                        //    in Loop: Header=BB1_22 Depth=1
	addi x10, x3, 1901
	call $__modsi3
	addi x1, x0, 29
	addi x17, x0, 100
	add x16, x0, x0
	addi x15, x0, 28
	lui x14, $DAYS_IN_MONTH >> 12 & 0xfffff
	addi x13, x0, 2
	lw x9, 4 ( x2 )                 //  4-byte Folded Reload
	lw x7, 12 ( x2 )                //  4-byte Folded Reload
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	add x12, x0, x15
	add x11, x0, x16
	bgtu x10, x0, LBB1_22
LBB1_46:                                //  %land.end159.thread
                                        //    in Loop: Header=BB1_22 Depth=1
	add x12, x0, x1
	add x11, x0, x16
	jalr x0, LBB1_22 ( x0 )
$func_end1:
	.size	$validate_structure, ($func_end1)-($validate_structure)
	.cfi_endproc

	.address_space	0	
	.type	$_DAYS_BEFORE_MONTH,@object //  @_DAYS_BEFORE_MONTH
	.section	.rodata,"a",@progbits
	.p2align	2
$_DAYS_BEFORE_MONTH:
	.long	0                       //  0x0
	.long	31                      //  0x1f
	.long	59                      //  0x3b
	.long	90                      //  0x5a
	.long	120                     //  0x78
	.long	151                     //  0x97
	.long	181                     //  0xb5
	.long	212                     //  0xd4
	.long	243                     //  0xf3
	.long	273                     //  0x111
	.long	304                     //  0x130
	.long	334                     //  0x14e
	.size	$_DAYS_BEFORE_MONTH, 48

	.address_space	0	
	.address_space	0	
	.type	$DAYS_IN_MONTH,@object  //  @DAYS_IN_MONTH
	.p2align	2
$DAYS_IN_MONTH:
	.long	31                      //  0x1f
	.long	28                      //  0x1c
	.long	31                      //  0x1f
	.long	30                      //  0x1e
	.long	31                      //  0x1f
	.long	30                      //  0x1e
	.long	31                      //  0x1f
	.long	31                      //  0x1f
	.long	30                      //  0x1e
	.long	31                      //  0x1f
	.long	30                      //  0x1e
	.long	31                      //  0x1f
	.size	$DAYS_IN_MONTH, 48


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
