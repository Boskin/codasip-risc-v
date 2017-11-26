	.text
	.file	"strftime.bc"
	.globl	$strftime
	.type	$strftime,@function
$strftime:                              //  @strftime
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -136
$cfi2:
	.cfi_adjust_cfa_offset 136
	sw x1, 132 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 124 ( x2 )               //  4-byte Folded Spill
	sw x13, 76 ( x2 )               //  4-byte Folded Spill
	sw x12, 84 ( x2 )               //  4-byte Folded Spill
	sw x10, 88 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	call $__get_current_time_locale
	lw x20, 84 ( x2 )               //  4-byte Folded Reload
	lw x7, 88 ( x2 )                //  4-byte Folded Reload
	add x5, x0, x0
	sw x8, 80 ( x2 )                //  4-byte Folded Spill
	addi x9, x8, -1
	addi x13, x0, 8
	addi x11, x2, 92
	addi x12, x0, 10
	addi x14, x0, 85
	addi x15, x0, 4
	add x17, x0, x5
	add x16, x0, x5
LBB0_1:                                 //  %for.cond
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_2 Depth 2
                                        //      Child Loop BB0_30 Depth 2
                                        //      Child Loop BB0_22 Depth 2
                                        //      Child Loop BB0_331 Depth 2
                                        //      Child Loop BB0_184 Depth 2
                                        //      Child Loop BB0_34 Depth 2
                                        //      Child Loop BB0_26 Depth 2
	add x19, x17, x7
	add x18, x0, x5
LBB0_2:                                 //  %while.cond
                                        //    Parent Loop BB0_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x1, x18, x20
	lbu x3, 0 ( x1 )
	nop
	bgtu x3, x0, LBB0_348
LBB0_347:                               //  %while.cond
                                        //    in Loop: Header=BB0_2 Depth=2
	jalr x0, LBB0_338 ( x0 )
LBB0_348:                               //  %while.cond
                                        //    in Loop: Header=BB0_2 Depth=2
LBB0_3:                                 //  %while.cond
                                        //    in Loop: Header=BB0_2 Depth=2
	add x8, x18, x17
	xori x4, x3, 37
	beqz x4, LBB0_7
LBB0_4:                                 //  %while.body
                                        //    in Loop: Header=BB0_2 Depth=2
	bgtu x9, x8, LBB0_6
LBB0_5:
	add x13, x0, x5
	jalr x0, LBB0_342 ( x0 )
LBB0_6:                                 //  %if.then
                                        //    in Loop: Header=BB0_2 Depth=2
	add x1, x18, x19
	sb x3, 0 ( x1 )
	addi x18, x18, 1
	jalr x0, LBB0_2 ( x0 )
LBB0_7:                                 //  %if.end9
                                        //    in Loop: Header=BB0_1 Depth=1
	lbu x3, 1 ( x1 )
	nop
	xori x4, x3, 43
	beqz x4, LBB0_10
LBB0_8:                                 //  %if.end9
                                        //    in Loop: Header=BB0_1 Depth=1
	xori x4, x3, 48
	beqz x4, LBB0_10
LBB0_9:                                 //  %if.end9.if.end19_crit_edge
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x4, x1, 1
	sw x5, 44 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x3
	jalr x0, LBB0_11 ( x0 )
LBB0_10:                                //  %if.then17
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x4, x1, 2
	lb x1, 2 ( x1 )
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
LBB0_11:                                //  %if.end19
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x3, x1, -49
	andi x3, x3, 255
	sw x16, 60 ( x2 )               //  4-byte Folded Spill
	sw x17, 84 ( x2 )               //  4-byte Folded Spill
	sw x18, 68 ( x2 )               //  4-byte Folded Spill
	sw x19, 56 ( x2 )               //  4-byte Folded Spill
	sw x10, 72 ( x2 )               //  4-byte Folded Spill
	sw x9, 64 ( x2 )                //  4-byte Folded Spill
	bgeu x13, x3, LBB0_13
LBB0_12:                                //    in Loop: Header=BB0_1 Depth=1
	add x7, x0, x5
	jalr x0, LBB0_14 ( x0 )
LBB0_13:                                //  %if.then26
                                        //    in Loop: Header=BB0_1 Depth=1
	add x10, x0, x4
	call $strtoul
	addi x15, x0, 4
	addi x14, x0, 85
	add x5, x0, x0
	add x7, x0, x10
	lw x4, 92 ( x2 )
	nop
	lb x1, 0 ( x4 )
	nop
LBB0_14:                                //  %if.end28
                                        //    in Loop: Header=BB0_1 Depth=1
	andi x1, x1, 255
	xori x3, x1, 79
	beqz x3, LBB0_16
LBB0_15:                                //  %if.end28
                                        //    in Loop: Header=BB0_1 Depth=1
	xori x1, x1, 69
	bgtu x1, x0, LBB0_17
LBB0_16:                                //  %if.then38
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x4, x4, 1
LBB0_17:                                //  %if.end41
                                        //    in Loop: Header=BB0_1 Depth=1
	lb x1, 0 ( x4 )
	nop
	addi x10, x1, -37
	bgeu x14, x10, LBB0_19
LBB0_18:
	add x13, x0, x5
	jalr x0, LBB0_342 ( x0 )
LBB0_19:                                //  %if.end41
                                        //    in Loop: Header=BB0_1 Depth=1
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	sw x7, 40 ( x2 )                //  4-byte Folded Spill
	sw x4, 52 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x15
	call $__mulsi3
	add x5, x0, x0
	ori x28, x0, JTI0_0 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI0_0 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	add x13, x0, x5
	lw x12, 84 ( x2 )               //  4-byte Folded Reload
	jr x1
LBB0_20:                                //  %sw.bb
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 24 ( x1 )
	nop
	slli x1, x1, 2
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	lw x10, 96 ( x1 )
	nop
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	call $strlen
	beqz x10, LBB0_182
LBB0_21:                                //  %for.body.preheader
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x4, x1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x4, x1
	add x13, x0, x0
	add x4, x0, x13
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
LBB0_22:                                //  %for.body
                                        //    Parent Loop BB0_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x5, x4, x1
	bgtu x9, x5, LBB0_350
LBB0_349:                               //  %for.body
                                        //    in Loop: Header=BB0_22 Depth=2
	jalr x0, LBB0_342 ( x0 )
LBB0_350:                               //  %for.body
                                        //    in Loop: Header=BB0_22 Depth=2
LBB0_23:                                //  %if.then51
                                        //    in Loop: Header=BB0_22 Depth=2
	add x5, x4, x11
	lb x5, 0 ( x5 )
	add x7, x4, x3
	addi x4, x4, 1
	sb x5, 0 ( x7 )
	bgtu x10, x4, LBB0_22
	jalr x0, LBB0_190 ( x0 )
LBB0_24:                                //  %sw.bb58
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 24 ( x1 )
	nop
	slli x1, x1, 2
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	lw x10, 124 ( x1 )
	nop
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	call $strlen
	beqz x10, LBB0_182
LBB0_25:                                //  %for.body65.preheader
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x4, x1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x4, x1
	add x13, x0, x0
	add x4, x0, x13
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
LBB0_26:                                //  %for.body65
                                        //    Parent Loop BB0_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x5, x4, x1
	bgtu x9, x5, LBB0_352
LBB0_351:                               //  %for.body65
                                        //    in Loop: Header=BB0_26 Depth=2
	jalr x0, LBB0_342 ( x0 )
LBB0_352:                               //  %for.body65
                                        //    in Loop: Header=BB0_26 Depth=2
LBB0_27:                                //  %if.then69
                                        //    in Loop: Header=BB0_26 Depth=2
	add x5, x4, x11
	lb x5, 0 ( x5 )
	add x7, x4, x3
	addi x4, x4, 1
	sb x5, 0 ( x7 )
	bgtu x10, x4, LBB0_26
	jalr x0, LBB0_190 ( x0 )
LBB0_28:                                //  %sw.bb78
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 16 ( x1 )
	nop
	slli x1, x1, 2
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	lw x10, 0 ( x1 )
	nop
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	call $strlen
	beqz x10, LBB0_182
LBB0_29:                                //  %for.body84.preheader
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x4, x1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x4, x1
	add x13, x0, x0
	add x4, x0, x13
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
LBB0_30:                                //  %for.body84
                                        //    Parent Loop BB0_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x5, x4, x1
	bgtu x9, x5, LBB0_354
LBB0_353:                               //  %for.body84
                                        //    in Loop: Header=BB0_30 Depth=2
	jalr x0, LBB0_342 ( x0 )
LBB0_354:                               //  %for.body84
                                        //    in Loop: Header=BB0_30 Depth=2
LBB0_31:                                //  %if.then88
                                        //    in Loop: Header=BB0_30 Depth=2
	add x5, x4, x11
	lb x5, 0 ( x5 )
	add x7, x4, x3
	addi x4, x4, 1
	sb x5, 0 ( x7 )
	bgtu x10, x4, LBB0_30
	jalr x0, LBB0_190 ( x0 )
LBB0_32:                                //  %sw.bb97
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 16 ( x1 )
	nop
	slli x1, x1, 2
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	lw x10, 48 ( x1 )
	nop
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	call $strlen
	beqz x10, LBB0_182
LBB0_33:                                //  %for.body104.preheader
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x4, x1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x4, x1
	add x13, x0, x0
	add x4, x0, x13
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
LBB0_34:                                //  %for.body104
                                        //    Parent Loop BB0_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x5, x4, x1
	bgtu x9, x5, LBB0_356
LBB0_355:                               //  %for.body104
                                        //    in Loop: Header=BB0_34 Depth=2
	jalr x0, LBB0_342 ( x0 )
LBB0_356:                               //  %for.body104
                                        //    in Loop: Header=BB0_34 Depth=2
LBB0_35:                                //  %if.then108
                                        //    in Loop: Header=BB0_34 Depth=2
	add x5, x4, x11
	lb x5, 0 ( x5 )
	add x7, x4, x3
	addi x4, x4, 1
	sb x5, 0 ( x7 )
	bgtu x10, x4, LBB0_34
	jalr x0, LBB0_190 ( x0 )
LBB0_36:                                //  %sw.bb117
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 160 ( x1 )
	jalr x0, LBB0_40 ( x0 )
LBB0_37:                                //  %sw.bb119
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 228 ( x1 )
	jalr x0, LBB0_40 ( x0 )
LBB0_38:                                //  %sw.bb121
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 156 ( x1 )
	jalr x0, LBB0_40 ( x0 )
LBB0_39:                                //  %sw.bb123
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 152 ( x1 )
	nop
LBB0_40:                                //  %recurse
                                        //    in Loop: Header=BB0_1 Depth=1
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	call $strlen
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	nop
	lbu x1, 0 ( x12 )
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	lw x4, 84 ( x2 )                //  4-byte Folded Reload
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
	lw x7, 56 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB0_182
LBB0_41:                                //  %if.then126
                                        //    in Loop: Header=BB0_1 Depth=1
	sub x1, x3, x4
	add x10, x5, x7
	sub x11, x1, x5
	lw x13, 76 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x4
	call $strftime
	bgt x10, x0, LBB0_43
LBB0_42:
	add x13, x0, x0
	jalr x0, LBB0_342 ( x0 )
LBB0_43:                                //  %if.then132
                                        //    in Loop: Header=BB0_1 Depth=1
	add x1, x8, x10
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	add x17, x3, x1
	add x5, x0, x0
	jalr x0, LBB0_290 ( x0 )
LBB0_44:                                //  %sw.bb136
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x8, 20 ( x1 )
	nop
	bgt x0, x8, LBB0_46
LBB0_45:                                //  %cond.true
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x11, x0, 100
	add x10, x0, x8
	call $__udivsi3
	addi x10, x10, 19
	jalr x0, LBB0_47 ( x0 )
LBB0_46:                                //  %cond.false
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x10, x8, 1900
	call $abs
	addi x11, x0, 100
	call $__divsi3
LBB0_47:                                //  %cond.end
                                        //    in Loop: Header=BB0_1 Depth=1
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	lui x4, $.str.1 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x4, x28
	lw x9, 84 ( x2 )                //  4-byte Folded Reload
	lw x11, 68 ( x2 )               //  4-byte Folded Reload
	lw x12, 56 ( x2 )               //  4-byte Folded Reload
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x5, LBB0_53
LBB0_48:                                //  %if.then149
                                        //    in Loop: Header=BB0_1 Depth=1
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x4, x28
	ori x28, x0, $.str.3 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.3 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 99
	or x3, x3, x28
	bgt x10, x4, LBB0_50
LBB0_49:                                //  %if.then149
                                        //    in Loop: Header=BB0_1 Depth=1
	add x3, x0, x1
LBB0_50:                                //  %if.then149
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x4, x0, 43
	beq x5, x4, LBB0_52
LBB0_51:                                //  %if.then149
                                        //    in Loop: Header=BB0_1 Depth=1
	add x3, x0, x1
LBB0_52:                                //  %if.then149
                                        //    in Loop: Header=BB0_1 Depth=1
	lui x1, $.str.2 >> 12 & 0xfffff
	ori x28, x0, $.str.2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
LBB0_53:                                //  %if.end158
                                        //    in Loop: Header=BB0_1 Depth=1
	ori x28, x0, $.str.4 & 0xfff
	slli x28, x28, 20
	lui x4, $.str.4 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x7, x0, -1900
	slti x5, x8, -1900
	or x4, x4, x28
	bgt x7, x8, LBB0_55
LBB0_54:                                //  %if.end158
                                        //    in Loop: Header=BB0_1 Depth=1
	add x4, x0, x3
LBB0_55:                                //  %if.end158
                                        //    in Loop: Header=BB0_1 Depth=1
	andi x3, x5, 1
	sw x10, 20 ( x2 )
	addi x5, x0, 2
	lw x7, 40 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x7, x5, LBB0_57
LBB0_56:                                //  %if.end158
                                        //    in Loop: Header=BB0_1 Depth=1
	add x7, x0, x5
LBB0_57:                                //  %if.end158
                                        //    in Loop: Header=BB0_1 Depth=1
	sub x3, x7, x3
	sw x3, 16 ( x2 )
	sw x4, 12 ( x2 )
	sw x1, 8 ( x2 )
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x9
	sub x1, x1, x11
	sw x1, 4 ( x2 )
	add x1, x11, x12
	sw x1, 0 ( x2 )
	add x8, x0, x9
	call $sniprintf
	bgez x10, LBB0_59
LBB0_58:
	add x13, x0, x0
	jalr x0, LBB0_342 ( x0 )
LBB0_59:                                //  %lor.lhs.false174
                                        //    in Loop: Header=BB0_1 Depth=1
	add x1, x8, x10
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	add x17, x3, x1
	add x5, x0, x0
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	bgeu x17, x1, LBB0_358
LBB0_357:                               //  %lor.lhs.false174
                                        //    in Loop: Header=BB0_1 Depth=1
	jalr x0, LBB0_290 ( x0 )
LBB0_358:                               //  %lor.lhs.false174
                                        //    in Loop: Header=BB0_1 Depth=1
LBB0_60:
	add x13, x0, x5
	jalr x0, LBB0_342 ( x0 )
LBB0_61:                                //  %sw.bb180
                                        //    in Loop: Header=BB0_1 Depth=1
	ori x28, x0, $.str.6 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.6 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.5 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 100
	or x3, x3, x28
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	nop
	beq x5, x4, LBB0_63
LBB0_62:                                //  %sw.bb180
                                        //    in Loop: Header=BB0_1 Depth=1
	add x3, x0, x1
LBB0_63:                                //  %sw.bb180
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 12 ( x1 )
	nop
	sw x1, 12 ( x2 )
	sw x3, 8 ( x2 )
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x12
	lw x8, 68 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x8
	sw x1, 4 ( x2 )
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x8, x1
	sw x1, 0 ( x2 )
	call $sniprintf
	bgez x10, LBB0_65
LBB0_64:
	add x13, x0, x0
	jalr x0, LBB0_342 ( x0 )
LBB0_65:                                //  %lor.lhs.false190
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x10
	add x17, x8, x1
	add x5, x0, x0
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	bgeu x17, x1, LBB0_360
LBB0_359:                               //  %lor.lhs.false190
                                        //    in Loop: Header=BB0_1 Depth=1
	jalr x0, LBB0_290 ( x0 )
LBB0_360:                               //  %lor.lhs.false190
                                        //    in Loop: Header=BB0_1 Depth=1
LBB0_66:
	add x13, x0, x5
	jalr x0, LBB0_342 ( x0 )
LBB0_67:                                //  %sw.bb196
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x4, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 16 ( x4 )
	lw x10, 20 ( x4 )
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x3, x12
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x3, x5
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x5, x3
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	lw x3, 12 ( x4 )
	nop
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
	addi x8, x1, 1
	bgez x10, LBB0_69
LBB0_68:                                //  %cond.false207
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x10, x10, 1900
	call $abs
LBB0_69:                                //  %cond.end212
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x11, x0, 100
	call $__modsi3
	ori x28, x0, $.str.7 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.7 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x10, 20 ( x2 )
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 16 ( x2 )
	sw x8, 12 ( x2 )
	sw x1, 8 ( x2 )
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 4 ( x2 )
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x2 )
	call $sniprintf
	bgez x10, LBB0_71
LBB0_70:
	add x13, x0, x0
	jalr x0, LBB0_342 ( x0 )
LBB0_71:                                //  %lor.lhs.false217
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x10
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	add x17, x3, x1
	add x5, x0, x0
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	bgeu x17, x1, LBB0_362
LBB0_361:                               //  %lor.lhs.false217
                                        //    in Loop: Header=BB0_1 Depth=1
	jalr x0, LBB0_290 ( x0 )
LBB0_362:                               //  %lor.lhs.false217
                                        //    in Loop: Header=BB0_1 Depth=1
LBB0_72:
	add x13, x0, x5
	jalr x0, LBB0_342 ( x0 )
LBB0_73:                                //  %sw.bb223
                                        //    in Loop: Header=BB0_1 Depth=1
	add x4, x0, x0
	addi x1, x0, 10
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	lw x7, 44 ( x2 )                //  4-byte Folded Reload
	nop
	bne x7, x4, LBB0_75
LBB0_74:                                //  %sw.bb223
                                        //    in Loop: Header=BB0_1 Depth=1
	add x5, x0, x1
LBB0_75:                                //  %sw.bb223
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x8, 76 ( x2 )                //  4-byte Folded Reload
	addi x3, x2, 94
	bne x7, x4, LBB0_77
LBB0_76:                                //  %sw.bb223
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x7, x0, 43
LBB0_77:                                //  %sw.bb223
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x1, x0, 37
	sb x1, 92 ( x2 )
	sb x7, 93 ( x2 )
	addi x1, x0, 6
	bgtu x5, x1, LBB0_79
LBB0_78:                                //  %sw.bb223
                                        //    in Loop: Header=BB0_1 Depth=1
	add x5, x0, x1
LBB0_79:                                //  %sw.bb223
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x1, x5, -6
	add x10, x0, x3
	beqz x1, LBB0_84
LBB0_80:                                //  %if.then241
                                        //    in Loop: Header=BB0_1 Depth=1
	sw x1, 12 ( x2 )
	lui x1, $.str.8 >> 12 & 0xfffff
	ori x28, x0, $.str.8 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 8 ( x2 )
	addi x1, x0, 30
	sw x1, 4 ( x2 )
	sw x3, 0 ( x2 )
	add x8, x0, x3
	call $sniprintf
	add x1, x0, x0
	ble x10, x1, LBB0_82
LBB0_81:                                //    in Loop: Header=BB0_1 Depth=1
	add x10, x10, x8
	jalr x0, LBB0_83 ( x0 )
LBB0_82:                                //  %if.then241
                                        //    in Loop: Header=BB0_1 Depth=1
	add x10, x0, x8
LBB0_83:                                //  %if.then241
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x8, 76 ( x2 )                //  4-byte Folded Reload
LBB0_84:                                //  %if.end249
                                        //    in Loop: Header=BB0_1 Depth=1
	lui x1, $.str.9 >> 12 & 0xfffff
	ori x28, x0, $.str.9 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $strcpy
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x4, x1
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	sub x11, x1, x4
	addi x12, x2, 92
	add x13, x0, x8
	call $strftime
	add x1, x0, x10
	add x13, x0, x0
	bgt x10, x13, LBB0_86
LBB0_85:                                //  %if.end249
                                        //    in Loop: Header=BB0_1 Depth=1
	add x1, x0, x13
LBB0_86:                                //  %if.end249
                                        //    in Loop: Header=BB0_1 Depth=1
	add x5, x0, x0
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	bgt x10, x0, LBB0_364
LBB0_363:                               //  %if.end249
                                        //    in Loop: Header=BB0_1 Depth=1
	jalr x0, LBB0_342 ( x0 )
LBB0_364:                               //  %if.end249
                                        //    in Loop: Header=BB0_1 Depth=1
LBB0_87:                                //    in Loop: Header=BB0_1 Depth=1
	add x1, x3, x1
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	add x17, x3, x1
	jalr x0, LBB0_290 ( x0 )
LBB0_88:                                //  %sw.bb262
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x4, 20 ( x1 )
	addi x1, x0, -100
	srai x3, x4, 31
	andi x3, x3, -2000
	sub x1, x1, x3
	sw x4, 48 ( x2 )                //  4-byte Folded Spill
	add x8, x4, x1
	addi x11, x0, 100
	add x10, x0, x8
	call $__modsi3
	andi x1, x8, 3
	bgtu x1, x0, LBB0_91
LBB0_89:                                //  %sw.bb262
                                        //    in Loop: Header=BB0_1 Depth=1
	beqz x10, LBB0_91
LBB0_90:                                //    in Loop: Header=BB0_1 Depth=1
	slti x1, x0, 1
	jalr x0, LBB0_92 ( x0 )
LBB0_91:                                //  %lor.rhs.i1577
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x11, x0, 400
	add x10, x0, x8
	call $__modsi3
	seqz x1, x10
LBB0_92:                                //  %lor.end.i1585
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x4, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 28 ( x4 )
	lw x4, 24 ( x4 )
	andi x1, x1, 1
	addi x5, x0, 33
	slli x3, x3, 4
	slli x4, x4, 1
	add x3, x3, x4
	or x10, x1, x3
	bgtu x10, x5, LBB0_366
LBB0_365:                               //  %lor.end.i1585
                                        //    in Loop: Header=BB0_1 Depth=1
	jalr x0, LBB0_343 ( x0 )
LBB0_366:                               //  %lor.end.i1585
                                        //    in Loop: Header=BB0_1 Depth=1
LBB0_93:                                //  %lor.end.i1585
                                        //    in Loop: Header=BB0_1 Depth=1
	lui x1, -5794 >> 12 & 0xfffff
	ori x28, x0, -5794 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x10, x1, x10
	addi x1, x0, 53
	bgtu x10, x1, LBB0_96
LBB0_94:                                //  %lor.end.i1585
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x11, x0, 4
	call $__mulsi3
	lui x1, JTI0_6 >> 12 & 0xfffff
	ori x28, x0, JTI0_6 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB0_95:                                //  %sw.bb22.i1586
                                        //    in Loop: Header=BB0_1 Depth=1
	slti x8, x0, 1
	jalr x0, LBB0_97 ( x0 )
LBB0_96:                                //  %sw.epilog.i1587
                                        //    in Loop: Header=BB0_1 Depth=1
	add x8, x0, x0
LBB0_97:                                //  %iso_year_adjust.exit1589
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	nop
	bgez x10, LBB0_99
LBB0_98:                                //  %cond.false270
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x10, x10, 1900
	call $abs
LBB0_99:                                //  %cond.end275
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x11, x0, 100
	call $__modsi3
	bgez x8, LBB0_102
LBB0_100:                               //  %land.lhs.true279
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 20 ( x1 )
	addi x3, x0, -1899
	ble x3, x1, LBB0_105
LBB0_101:                               //    in Loop: Header=BB0_1 Depth=1
	slti x8, x0, 1
	jalr x0, LBB0_106 ( x0 )
LBB0_102:                               //  %if.else284
                                        //    in Loop: Header=BB0_1 Depth=1
	bgtu x8, x0, LBB0_104
LBB0_103:                               //    in Loop: Header=BB0_1 Depth=1
	add x8, x0, x0
	jalr x0, LBB0_106 ( x0 )
LBB0_104:                               //  %land.lhs.true287
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 20 ( x1 )
	addi x3, x0, -1900
	ble x3, x1, LBB0_106
LBB0_105:                               //    in Loop: Header=BB0_1 Depth=1
	not x8, x0
LBB0_106:                               //  %if.end293
                                        //    in Loop: Header=BB0_1 Depth=1
	add x10, x10, x8
	addi x8, x0, 100
	add x11, x0, x8
	call $__modsi3
	addi x10, x10, 100
	add x11, x0, x8
	call $__modsi3
	sw x10, 12 ( x2 )
	lui x1, $.str.5 >> 12 & 0xfffff
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 8 ( x2 )
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	lw x8, 68 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x8
	sw x1, 4 ( x2 )
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x8, x1
	sw x1, 0 ( x2 )
	call $sniprintf
	bgez x10, LBB0_108
LBB0_107:
	add x13, x0, x0
	jalr x0, LBB0_342 ( x0 )
LBB0_108:                               //  %cleanup309
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x10
	add x17, x8, x1
	add x5, x0, x0
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	bgeu x17, x1, LBB0_368
LBB0_367:                               //  %cleanup309
                                        //    in Loop: Header=BB0_1 Depth=1
	jalr x0, LBB0_290 ( x0 )
LBB0_368:                               //  %cleanup309
                                        //    in Loop: Header=BB0_1 Depth=1
LBB0_109:
	add x13, x0, x5
	jalr x0, LBB0_342 ( x0 )
LBB0_110:                               //  %sw.bb313
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x4, 20 ( x1 )
	addi x1, x0, -100
	srai x3, x4, 31
	andi x3, x3, -2000
	sub x1, x1, x3
	sw x4, 48 ( x2 )                //  4-byte Folded Spill
	add x8, x4, x1
	addi x11, x0, 100
	add x10, x0, x8
	call $__modsi3
	andi x1, x8, 3
	bgtu x1, x0, LBB0_113
LBB0_111:                               //  %sw.bb313
                                        //    in Loop: Header=BB0_1 Depth=1
	beqz x10, LBB0_113
LBB0_112:                               //    in Loop: Header=BB0_1 Depth=1
	slti x1, x0, 1
	jalr x0, LBB0_114 ( x0 )
LBB0_113:                               //  %lor.rhs.i1554
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x11, x0, 400
	add x10, x0, x8
	call $__modsi3
	seqz x1, x10
LBB0_114:                               //  %lor.end.i1562
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x4, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 28 ( x4 )
	lw x4, 24 ( x4 )
	andi x1, x1, 1
	addi x5, x0, 33
	slli x3, x3, 4
	slli x4, x4, 1
	add x3, x3, x4
	or x10, x1, x3
	bgtu x10, x5, LBB0_370
LBB0_369:                               //  %lor.end.i1562
                                        //    in Loop: Header=BB0_1 Depth=1
	jalr x0, LBB0_344 ( x0 )
LBB0_370:                               //  %lor.end.i1562
                                        //    in Loop: Header=BB0_1 Depth=1
LBB0_115:                               //  %lor.end.i1562
                                        //    in Loop: Header=BB0_1 Depth=1
	lui x1, -5794 >> 12 & 0xfffff
	ori x28, x0, -5794 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x10, x1, x10
	addi x1, x0, 53
	bgtu x10, x1, LBB0_118
LBB0_116:                               //  %lor.end.i1562
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x11, x0, 4
	call $__mulsi3
	lui x1, JTI0_4 >> 12 & 0xfffff
	ori x28, x0, JTI0_4 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB0_117:                               //  %sw.bb22.i1563
                                        //    in Loop: Header=BB0_1 Depth=1
	slti x8, x0, 1
	jalr x0, LBB0_119 ( x0 )
LBB0_118:                               //  %sw.epilog.i1564
                                        //    in Loop: Header=BB0_1 Depth=1
	add x8, x0, x0
LBB0_119:                               //  %iso_year_adjust.exit1566
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x0, x1, LBB0_121
LBB0_120:                               //  %cond.end332.thread
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x11, x0, 100
	sw x8, 32 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x1
	add x10, x0, x8
	call $__udivsi3
	addi x1, x10, 19
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_123 ( x0 )
LBB0_121:                               //  %cond.end332
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x10, x1, 1900
	call $abs
	addi x11, x0, 100
	call $__divsi3
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 20 ( x1 )
	nop
	bgez x10, LBB0_123
LBB0_122:                               //  %cond.false341
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x10, x10, 1900
	call $abs
LBB0_123:                               //  %cond.end346
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x11, x0, 100
	call $__modsi3
	bgez x8, LBB0_126
LBB0_124:                               //  %land.lhs.true350
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 20 ( x1 )
	nop
	slti x1, x1, -1899
	beqz x1, LBB0_126
LBB0_125:                               //    in Loop: Header=BB0_1 Depth=1
	slti x3, x0, 1
	add x1, x0, x3
	jalr x0, LBB0_132 ( x0 )
LBB0_126:                               //  %if.else355
                                        //    in Loop: Header=BB0_1 Depth=1
	add x1, x0, x0
	ble x8, x1, LBB0_128
LBB0_127:                               //    in Loop: Header=BB0_1 Depth=1
	not x1, x0
	jalr x0, LBB0_129 ( x0 )
LBB0_128:                               //  %if.else355
                                        //    in Loop: Header=BB0_1 Depth=1
	add x1, x0, x8
LBB0_129:                               //  %if.else355
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	nop
	slti x3, x5, -1900
	addi x4, x0, -1900
	bgt x4, x5, LBB0_131
LBB0_130:                               //  %if.else355
                                        //    in Loop: Header=BB0_1 Depth=1
	add x1, x0, x8
LBB0_131:                               //  %if.else355
                                        //    in Loop: Header=BB0_1 Depth=1
	andi x3, x3, 1
LBB0_132:                               //  %if.end362
                                        //    in Loop: Header=BB0_1 Depth=1
	add x8, x10, x1
	xori x1, x8, 100
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB0_136
LBB0_133:                               //  %if.end362
                                        //    in Loop: Header=BB0_1 Depth=1
	xori x1, x8, -1
	beqz x1, LBB0_135
LBB0_134:                               //    in Loop: Header=BB0_1 Depth=1
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_137 ( x0 )
LBB0_135:                               //  %if.then366
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x8, x0, 99
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	nop
	addi x10, x10, -1
	jalr x0, LBB0_137 ( x0 )
LBB0_136:                               //  %if.then370
                                        //    in Loop: Header=BB0_1 Depth=1
	add x8, x0, x0
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	nop
	addi x10, x10, 1
LBB0_137:                               //  %if.end373
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x11, x0, 100
	call $__mulsi3
	add x10, x8, x10
	lw x9, 48 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x9, LBB0_139
LBB0_138:                               //    in Loop: Header=BB0_1 Depth=1
	addi x1, x0, 45
	addi x4, x2, 93
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	lw x7, 44 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_142 ( x0 )
LBB0_139:                               //  %if.else381
                                        //    in Loop: Header=BB0_1 Depth=1
	add x9, x0, x0
	addi x1, x2, 92
	lw x7, 44 ( x2 )                //  4-byte Folded Reload
	nop
	xori x3, x7, 43
	addi x4, x2, 93
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	bgtu x3, x0, LBB0_143
LBB0_140:                               //  %if.else381
                                        //    in Loop: Header=BB0_1 Depth=1
	lui x3, 10000 >> 12 & 0xfffff
	ori x28, x0, 10000 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	bgtu x3, x10, LBB0_143
LBB0_141:                               //    in Loop: Header=BB0_1 Depth=1
	slti x9, x0, 1
	addi x1, x0, 43
LBB0_142:                               //  %if.end391.sink.split
                                        //    in Loop: Header=BB0_1 Depth=1
	sb x1, 92 ( x2 )
	add x1, x0, x4
LBB0_143:                               //  %if.end391
                                        //    in Loop: Header=BB0_1 Depth=1
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	addi x3, x0, 37
	sb x3, 0 ( x1 )
	sltu x3, x0, x9
	sltu x4, x0, x5
	and x3, x3, x4
	andi x3, x3, 1
	sub x8, x5, x3
	bgtu x7, x0, LBB0_145
LBB0_144:                               //    in Loop: Header=BB0_1 Depth=1
	addi x10, x1, 1
	jalr x0, LBB0_146 ( x0 )
LBB0_145:                               //  %if.then400
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x3, x0, 48
	sb x3, 1 ( x1 )
	addi x10, x1, 2
LBB0_146:                               //  %if.end402
                                        //    in Loop: Header=BB0_1 Depth=1
	lui x1, $.str.10 >> 12 & 0xfffff
	ori x28, x0, $.str.10 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $strcpy
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 16 ( x2 )
	sw x8, 12 ( x2 )
	addi x1, x2, 92
	sw x1, 8 ( x2 )
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	lw x8, 68 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x8
	sw x1, 4 ( x2 )
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x8, x1
	sw x1, 0 ( x2 )
	call $sniprintf
	bgez x10, LBB0_148
LBB0_147:                               //  %cleanup416.thread
	add x13, x0, x0
	jalr x0, LBB0_342 ( x0 )
LBB0_148:                               //  %cleanup416
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x10
	add x17, x8, x1
	add x5, x0, x0
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x17, LBB0_290
LBB0_149:
	add x13, x0, x5
	jalr x0, LBB0_342 ( x0 )
LBB0_150:                               //  %sw.bb425
                                        //    in Loop: Header=BB0_1 Depth=1
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.6 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.6 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 107
	or x3, x3, x28
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	nop
	beq x5, x4, LBB0_152
LBB0_151:                               //  %sw.bb425
                                        //    in Loop: Header=BB0_1 Depth=1
	add x3, x0, x1
LBB0_152:                               //  %sw.bb425
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 8 ( x1 )
	nop
	sw x1, 12 ( x2 )
	sw x3, 8 ( x2 )
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x12
	lw x8, 68 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x8
	sw x1, 4 ( x2 )
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x8, x1
	sw x1, 0 ( x2 )
	call $sniprintf
	bgez x10, LBB0_154
LBB0_153:
	add x13, x0, x0
	jalr x0, LBB0_342 ( x0 )
LBB0_154:                               //  %lor.lhs.false435
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x10
	add x17, x8, x1
	add x5, x0, x0
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x17, LBB0_290
LBB0_155:
	add x13, x0, x5
	jalr x0, LBB0_342 ( x0 )
LBB0_156:                               //  %sw.bb447
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 8 ( x1 )
	addi x10, x0, 12
	bgtu x1, x0, LBB0_158
LBB0_157:                               //    in Loop: Header=BB0_1 Depth=1
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
	lw x7, 56 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_160 ( x0 )
LBB0_158:                               //  %sw.bb447
                                        //    in Loop: Header=BB0_1 Depth=1
	xori x3, x1, 12
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
	lw x7, 56 ( x2 )                //  4-byte Folded Reload
	beqz x3, LBB0_160
LBB0_159:                               //  %cond.false456
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x11, x0, 12
	add x10, x0, x1
	call $__modsi3
	lw x7, 56 ( x2 )                //  4-byte Folded Reload
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
	lw x12, 84 ( x2 )               //  4-byte Folded Reload
LBB0_160:                               //  %cond.end459
                                        //    in Loop: Header=BB0_1 Depth=1
	ori x28, x0, $.str.6 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.6 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.5 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 73
	or x3, x3, x28
	lw x9, 48 ( x2 )                //  4-byte Folded Reload
	nop
	beq x9, x4, LBB0_162
LBB0_161:                               //  %cond.end459
                                        //    in Loop: Header=BB0_1 Depth=1
	add x3, x0, x1
LBB0_162:                               //  %cond.end459
                                        //    in Loop: Header=BB0_1 Depth=1
	sw x10, 12 ( x2 )
	sw x3, 8 ( x2 )
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x12
	sub x1, x1, x5
	sw x1, 4 ( x2 )
	add x1, x5, x7
	sw x1, 0 ( x2 )
	add x8, x0, x12
	call $sniprintf
	bgez x10, LBB0_164
LBB0_163:
	add x13, x0, x0
	jalr x0, LBB0_342 ( x0 )
LBB0_164:                               //  %cleanup476
                                        //    in Loop: Header=BB0_1 Depth=1
	add x1, x8, x10
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	add x17, x3, x1
	add x5, x0, x0
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x17, LBB0_290
LBB0_165:
	add x13, x0, x5
	jalr x0, LBB0_342 ( x0 )
LBB0_166:                               //  %sw.bb479
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 28 ( x1 )
	ori x28, x0, $.str.11 & 0xfff
	slli x28, x28, 20
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x3, x12
	lui x4, $.str.11 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x1, x1, 1
	or x4, x4, x28
	lw x8, 68 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x3, x8
	lw x5, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x5, x8, x5
	sw x1, 12 ( x2 )
	sw x4, 8 ( x2 )
	sw x3, 4 ( x2 )
	sw x5, 0 ( x2 )
	call $sniprintf
	bgez x10, LBB0_168
LBB0_167:
	add x13, x0, x0
	jalr x0, LBB0_342 ( x0 )
LBB0_168:                               //  %lor.lhs.false486
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x10
	add x17, x8, x1
	add x5, x0, x0
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x17, LBB0_290
LBB0_169:
	add x13, x0, x5
	jalr x0, LBB0_342 ( x0 )
LBB0_170:                               //  %sw.bb492
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 16 ( x1 )
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x3, x12
	lui x4, $.str.5 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x1, x1, 1
	or x4, x4, x28
	lw x8, 68 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x3, x8
	lw x5, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x5, x8, x5
	sw x1, 12 ( x2 )
	sw x4, 8 ( x2 )
	sw x3, 4 ( x2 )
	sw x5, 0 ( x2 )
	call $sniprintf
	bgez x10, LBB0_172
LBB0_171:
	add x13, x0, x0
	jalr x0, LBB0_342 ( x0 )
LBB0_172:                               //  %lor.lhs.false500
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x10
	add x17, x8, x1
	add x5, x0, x0
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x17, LBB0_290
LBB0_173:
	add x13, x0, x5
	jalr x0, LBB0_342 ( x0 )
LBB0_174:                               //  %sw.bb506
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x1 )
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x3, x12
	lui x4, $.str.5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	lw x8, 68 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x3, x8
	lw x5, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x5, x8, x5
	sw x1, 12 ( x2 )
	sw x4, 8 ( x2 )
	sw x3, 4 ( x2 )
	sw x5, 0 ( x2 )
	call $sniprintf
	bgez x10, LBB0_176
LBB0_175:
	add x13, x0, x0
	jalr x0, LBB0_342 ( x0 )
LBB0_176:                               //  %lor.lhs.false512
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x10
	add x17, x8, x1
	add x5, x0, x0
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x17, LBB0_290
LBB0_177:
	add x13, x0, x5
	jalr x0, LBB0_342 ( x0 )
LBB0_178:                               //  %sw.bb518
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x8, LBB0_180
LBB0_179:
	add x13, x0, x5
	jalr x0, LBB0_342 ( x0 )
LBB0_180:                               //  %if.then522
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x3, x1
	add x3, x3, x12
	addi x4, x0, 10
	sb x4, 0 ( x1 )
	addi x17, x3, 1
	jalr x0, LBB0_290 ( x0 )
LBB0_181:                               //  %sw.bb527
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 8 ( x1 )
	addi x3, x0, 11
	slt x1, x3, x1
	andi x1, x1, 1
	slli x1, x1, 2
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	lw x10, 164 ( x1 )
	nop
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	call $strlen
	bgtu x10, x0, LBB0_183
LBB0_182:                               //    in Loop: Header=BB0_1 Depth=1
	add x17, x0, x8
	add x5, x0, x0
	jalr x0, LBB0_290 ( x0 )
LBB0_183:                               //  %for.body537.preheader
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x4, x1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x4, x1
	add x13, x0, x0
	add x4, x0, x13
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	lw x14, 48 ( x2 )               //  4-byte Folded Reload
LBB0_184:                               //  %for.body537
                                        //    Parent Loop BB0_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x5, x4, x1
	bgeu x5, x11, LBB0_342
LBB0_185:                               //  %if.then541
                                        //    in Loop: Header=BB0_184 Depth=2
	lbu x7, 0 ( x12 )
	add x5, x4, x14
	lbu x5, 0 ( x5 )
	xori x7, x7, 80
	bgtu x7, x0, LBB0_188
LBB0_186:                               //  %cond.true545
                                        //    in Loop: Header=BB0_184 Depth=2
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	srli x28, x28, 20
	or x7, x7, x28
	lw x7, 0 ( x7 )
	slti x9, x0, 1
	add x7, x5, x7
	lbu x7, 1 ( x7 )
	nop
	andi x7, x7, 3
	bne x7, x9, LBB0_189
LBB0_187:                               //    in Loop: Header=BB0_184 Depth=2
	addi x5, x5, 32
	jalr x0, LBB0_189 ( x0 )
LBB0_188:                               //  %cond.false559
                                        //    in Loop: Header=BB0_184 Depth=2
	slli x5, x5, 24
	srai x5, x5, 24
LBB0_189:                               //  %cond.end562
                                        //    in Loop: Header=BB0_184 Depth=2
	add x7, x4, x3
	addi x4, x4, 1
	sb x5, 0 ( x7 )
	bgtu x10, x4, LBB0_184
LBB0_190:                               //  %sw.epilog.loopexit1710
                                        //    in Loop: Header=BB0_1 Depth=1
	add x17, x4, x1
	add x5, x0, x0
	jalr x0, LBB0_290 ( x0 )
LBB0_192:                               //  %sw.bb572
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x3, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 8 ( x3 )
	lw x3, 4 ( x3 )
	ori x28, x0, $.str.12 & 0xfff
	slli x28, x28, 20
	lw x4, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sub x4, x4, x12
	lui x5, $.str.12 >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x5, x28
	lw x8, 68 ( x2 )                //  4-byte Folded Reload
	nop
	sub x4, x4, x8
	lw x7, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x7, x8, x7
	sw x3, 16 ( x2 )
	sw x1, 12 ( x2 )
	sw x5, 8 ( x2 )
	sw x4, 4 ( x2 )
	sw x7, 0 ( x2 )
	call $sniprintf
	bgez x10, LBB0_194
LBB0_193:
	add x13, x0, x0
	jalr x0, LBB0_342 ( x0 )
LBB0_194:                               //  %lor.lhs.false580
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x10
	add x17, x8, x1
	add x5, x0, x0
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x17, LBB0_290
LBB0_195:
	add x13, x0, x5
	jalr x0, LBB0_342 ( x0 )
LBB0_196:                               //  %sw.bb586
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x8, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 32 ( x8 )
	add x9, x0, x0
	bgez x1, LBB0_198
LBB0_197:                               //    in Loop: Header=BB0_1 Depth=1
	sw x9, 44 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_201 ( x0 )
LBB0_198:                               //  %if.then590
                                        //    in Loop: Header=BB0_1 Depth=1
	call $__tz_lock
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_200
LBB0_199:                               //  %if.then592
                                        //    in Loop: Header=BB0_1 Depth=1
	call $_tzset_unlocked
	slti x1, x0, 1
LBB0_200:                               //  %if.end593
                                        //    in Loop: Header=BB0_1 Depth=1
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	call $__gettzinfo
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	lw x1, 32 ( x8 )
	addi x11, x0, 28
	slt x1, x0, x1
	andi x10, x1, 1
	call $__mulsi3
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x10, x1
	lw x1, 32 ( x1 )
	nop
	sub x1, x0, x1
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	call $__tz_unlock
	add x9, x0, x0
LBB0_201:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x11, 20 ( x8 )
	slti x10, x0, 1
	addi x1, x11, -69
	add x3, x0, x10
	bgtu x11, x1, LBB0_203
LBB0_202:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	add x3, x0, x9
LBB0_203:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x5, x0, -69
	add x4, x0, x10
	bgtu x5, x1, LBB0_205
LBB0_204:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	add x4, x0, x3
LBB0_205:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	srai x3, x11, 31
	add x3, x4, x3
	addi x3, x3, -1
	srai x4, x3, 31
	srli x5, x4, 30
	add x4, x5, x1
	add x7, x0, x10
	bgtu x1, x4, LBB0_207
LBB0_206:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	add x7, x0, x9
LBB0_207:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	add x1, x0, x10
	bgtu x5, x4, LBB0_209
LBB0_208:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	add x1, x0, x7
LBB0_209:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	add x3, x1, x3
	srli x1, x4, 2
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
	slli x3, x3, 30
	or x8, x3, x1
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	addi x10, x11, -1
	addi x11, x0, 100
	call $__divsi3
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 28 ( x1 )
	nop
	sub x3, x1, x10
	add x9, x8, x3
	slti x7, x0, 1
	add x4, x0, x7
	add x5, x0, x0
	bgtu x3, x9, LBB0_211
LBB0_210:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	add x4, x0, x5
LBB0_211:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	add x3, x0, x7
	bgtu x8, x9, LBB0_213
LBB0_212:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	add x3, x0, x4
LBB0_213:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	add x8, x0, x9
	add x4, x0, x7
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x1, LBB0_215
LBB0_214:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	add x4, x0, x5
LBB0_215:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	srai x5, x10, 31
	srai x1, x1, 31
	sub x1, x1, x5
	sub x1, x1, x4
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	nop
	srai x4, x4, 2
	add x1, x4, x1
	add x1, x3, x1
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	addi x10, x7, 299
	addi x11, x0, 400
	call $__divsi3
	srai x3, x10, 31
	add x5, x0, x8
	add x8, x10, x5
	slti x4, x0, 1
	add x1, x0, x4
	bgtu x5, x8, LBB0_217
LBB0_216:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	add x1, x0, x0
LBB0_217:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x5
	bgtu x10, x8, LBB0_219
LBB0_218:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	add x4, x0, x1
LBB0_219:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	add x1, x4, x3
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 365
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsi3
	lui x1, -25550 >> 12 & 0xfffff
	ori x28, x0, -25550 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	srai x4, x1, 31
	add x10, x1, x8
	slti x7, x0, 1
	add x3, x0, x7
	add x5, x0, x0
	bgtu x8, x10, LBB0_221
LBB0_220:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	add x3, x0, x5
LBB0_221:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x4, x5
	add x5, x0, x7
	bgtu x1, x10, LBB0_223
LBB0_222:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	add x5, x0, x3
LBB0_223:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	add x11, x5, x4
	addi x12, x0, 24
	add x13, x0, x0
	call $__muldi3
	add x5, x0, x0
	add x1, x0, x10
	lw x8, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 8 ( x8 )
	nop
	add x10, x3, x1
	slti x7, x0, 1
	add x4, x0, x7
	bgtu x1, x10, LBB0_225
LBB0_224:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	add x4, x0, x5
LBB0_225:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	add x1, x0, x7
	bgtu x3, x10, LBB0_227
LBB0_226:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	add x1, x0, x4
LBB0_227:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	srai x3, x3, 31
	add x3, x3, x11
	add x11, x1, x3
	addi x12, x0, 60
	add x13, x0, x0
	call $__muldi3
	add x5, x0, x0
	add x1, x0, x10
	lw x3, 4 ( x8 )
	nop
	add x10, x3, x1
	slti x7, x0, 1
	add x4, x0, x7
	bgtu x1, x10, LBB0_229
LBB0_228:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	add x4, x0, x5
LBB0_229:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	add x1, x0, x7
	bgtu x3, x10, LBB0_231
LBB0_230:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	add x1, x0, x4
LBB0_231:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	srai x3, x3, 31
	add x3, x3, x11
	add x11, x1, x3
	addi x12, x0, 60
	add x13, x0, x5
	call $__muldi3
	lw x3, 0 ( x8 )
	lw x14, 44 ( x2 )               //  4-byte Folded Reload
	nop
	sub x4, x3, x14
	add x1, x10, x4
	slti x15, x0, 1
	add x5, x0, x15
	bgtu x4, x1, LBB0_233
LBB0_232:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	add x5, x0, x0
LBB0_233:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	add x4, x0, x15
	lw x7, 80 ( x2 )                //  4-byte Folded Reload
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	lw x12, 68 ( x2 )               //  4-byte Folded Reload
	lw x13, 56 ( x2 )               //  4-byte Folded Reload
	bgtu x10, x1, LBB0_235
LBB0_234:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	add x4, x0, x5
LBB0_235:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	bgtu x14, x3, LBB0_237
LBB0_236:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	add x5, x0, x0
	add x15, x0, x5
LBB0_237:                               //  %if.end602
                                        //    in Loop: Header=BB0_1 Depth=1
	srai x5, x14, 31
	srai x3, x3, 31
	sub x3, x3, x5
	sub x3, x3, x15
	add x3, x11, x3
	add x3, x4, x3
	sw x3, 16 ( x2 )
	sw x1, 12 ( x2 )
	lui x1, $.str.13 >> 12 & 0xfffff
	ori x28, x0, $.str.13 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 8 ( x2 )
	sub x1, x7, x8
	sub x1, x1, x12
	sw x1, 4 ( x2 )
	add x1, x12, x13
	sw x1, 0 ( x2 )
	call $sniprintf
	bgez x10, LBB0_239
LBB0_238:
	add x13, x0, x0
	jalr x0, LBB0_342 ( x0 )
LBB0_239:                               //  %cleanup649
                                        //    in Loop: Header=BB0_1 Depth=1
	add x1, x8, x10
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	add x17, x3, x1
LBB0_240:                               //  %cleanup649
                                        //    in Loop: Header=BB0_1 Depth=1
	add x5, x0, x0
	add x13, x0, x0
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x17, LBB0_290
	jalr x0, LBB0_342 ( x0 )
LBB0_241:                               //  %sw.bb652
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x1 )
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x3, x12
	lui x4, $.str.5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	lw x8, 68 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x3, x8
	lw x5, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x5, x8, x5
	sw x1, 12 ( x2 )
	sw x4, 8 ( x2 )
	sw x3, 4 ( x2 )
	sw x5, 0 ( x2 )
	call $sniprintf
	bgez x10, LBB0_243
LBB0_242:
	add x13, x0, x0
	jalr x0, LBB0_342 ( x0 )
LBB0_243:                               //  %lor.lhs.false659
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x10
	add x17, x8, x1
	add x5, x0, x0
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x17, LBB0_290
LBB0_244:
	add x13, x0, x5
	jalr x0, LBB0_342 ( x0 )
LBB0_245:                               //  %sw.bb665
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x8, LBB0_247
LBB0_246:
	add x13, x0, x5
	jalr x0, LBB0_342 ( x0 )
LBB0_247:                               //  %if.then669
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x3, x12
	lw x4, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x4
	addi x4, x0, 9
LBB0_248:                               //  %sw.epilog
                                        //    in Loop: Header=BB0_1 Depth=1
	sb x4, 0 ( x3 )
	addi x17, x1, 1
	jalr x0, LBB0_290 ( x0 )
LBB0_249:                               //  %sw.bb674
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x4, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 8 ( x4 )
	lw x3, 4 ( x4 )
	lw x4, 0 ( x4 )
	ori x28, x0, $.str.14 & 0xfff
	slli x28, x28, 20
	lw x5, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sub x5, x5, x12
	lui x7, $.str.14 >> 12 & 0xfffff
	srli x28, x28, 20
	or x7, x7, x28
	lw x8, 68 ( x2 )                //  4-byte Folded Reload
	nop
	sub x5, x5, x8
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x9, x8, x9
	sw x4, 20 ( x2 )
	sw x3, 16 ( x2 )
	sw x1, 12 ( x2 )
	sw x7, 8 ( x2 )
	sw x5, 4 ( x2 )
	sw x9, 0 ( x2 )
	call $sniprintf
	bgez x10, LBB0_251
LBB0_250:
	add x13, x0, x0
	jalr x0, LBB0_342 ( x0 )
LBB0_251:                               //  %lor.lhs.false683
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x10
	add x17, x8, x1
	add x5, x0, x0
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x17, LBB0_290
LBB0_252:
	add x13, x0, x5
	jalr x0, LBB0_342 ( x0 )
LBB0_253:                               //  %sw.bb689
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x4, x8, LBB0_255
LBB0_254:
	add x13, x0, x5
	jalr x0, LBB0_342 ( x0 )
LBB0_255:                               //  %if.then693
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 24 ( x1 )
	add x3, x0, x0
	bne x1, x3, LBB0_257
LBB0_256:                               //    in Loop: Header=BB0_1 Depth=1
	addi x1, x0, 55
	jalr x0, LBB0_258 ( x0 )
LBB0_257:                               //  %if.then693
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x1, x1, 48
LBB0_258:                               //  %if.then693
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x4, x3
	sb x1, 0 ( x3 )
	add x1, x4, x12
	addi x17, x1, 1
	jalr x0, LBB0_290 ( x0 )
LBB0_259:                               //  %sw.bb709
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x3, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 28 ( x3 )
	lw x3, 24 ( x3 )
	addi x1, x1, 7
	sub x10, x1, x3
	addi x11, x0, 7
	add x8, x0, x12
	call $__divsi3
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x8
	lui x3, $.str.5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	lw x8, 68 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x8
	lw x4, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x8, x4
	sw x10, 12 ( x2 )
	sw x3, 8 ( x2 )
	sw x1, 4 ( x2 )
	sw x4, 0 ( x2 )
	call $sniprintf
	bgez x10, LBB0_261
LBB0_260:
	add x13, x0, x0
	jalr x0, LBB0_342 ( x0 )
LBB0_261:                               //  %lor.lhs.false720
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x10
	add x17, x8, x1
	add x5, x0, x0
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x17, LBB0_290
LBB0_262:
	add x13, x0, x5
	jalr x0, LBB0_342 ( x0 )
LBB0_263:                               //  %sw.bb726
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x4, 20 ( x1 )
	addi x1, x0, -100
	srai x3, x4, 31
	andi x3, x3, -2000
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
	sub x1, x1, x3
	sw x4, 44 ( x2 )                //  4-byte Folded Spill
	add x8, x4, x1
	addi x11, x0, 100
	add x10, x0, x8
	call $__modsi3
	andi x1, x8, 3
	slti x7, x0, 1
	bgtu x1, x0, LBB0_265
LBB0_264:                               //  %sw.bb726
                                        //    in Loop: Header=BB0_1 Depth=1
	add x1, x0, x7
	bgtu x10, x0, LBB0_266
LBB0_265:                               //  %lor.rhs.i
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x11, x0, 400
	add x10, x0, x8
	call $__modsi3
	slti x7, x0, 1
	seqz x1, x10
LBB0_266:                               //  %lor.end.i
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x3, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x8, 24 ( x3 )
	lw x5, 28 ( x3 )
	andi x1, x1, 1
	addi x3, x0, 33
	slli x4, x8, 1
	sw x5, 48 ( x2 )                //  4-byte Folded Spill
	slli x5, x5, 4
	add x4, x5, x4
	or x10, x1, x4
	bgeu x3, x10, LBB0_345
LBB0_267:                               //  %lor.end.i
                                        //    in Loop: Header=BB0_1 Depth=1
	lui x1, -5794 >> 12 & 0xfffff
	ori x28, x0, -5794 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x10, x1, x10
	addi x1, x0, 53
	bgtu x10, x1, LBB0_269
LBB0_268:                               //  %lor.end.i
                                        //    in Loop: Header=BB0_1 Depth=1
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x7
	addi x11, x0, 4
	call $__mulsi3
	add x3, x0, x8
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	lw x7, 68 ( x2 )                //  4-byte Folded Reload
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	lw x4, 80 ( x2 )                //  4-byte Folded Reload
	lui x1, JTI0_2 >> 12 & 0xfffff
	ori x28, x0, JTI0_2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB0_269:                               //  %if.else748
                                        //    in Loop: Header=BB0_1 Depth=1
	add x1, x0, x0
	bne x8, x1, LBB0_271
LBB0_270:                               //    in Loop: Header=BB0_1 Depth=1
	addi x1, x0, 6
	jalr x0, LBB0_272 ( x0 )
LBB0_271:                               //  %if.else748
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x1, x8, -1
LBB0_272:                               //  %if.else748
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 10
	sub x10, x3, x1
	addi x11, x0, 7
	call $__divsi3
	add x3, x0, x10
	lw x4, 80 ( x2 )                //  4-byte Folded Reload
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	lw x7, 68 ( x2 )                //  4-byte Folded Reload
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_283 ( x0 )
LBB0_273:                               //  %if.then751
                                        //    in Loop: Header=BB0_1 Depth=1
	add x1, x0, x0
	bne x8, x1, LBB0_275
LBB0_274:                               //    in Loop: Header=BB0_1 Depth=1
	addi x1, x0, 6
	jalr x0, LBB0_276 ( x0 )
LBB0_275:                               //  %if.then751
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x1, x8, -1
LBB0_276:                               //  %if.then751
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, -101
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	add x8, x3, x1
	addi x11, x0, 100
	add x10, x0, x8
	call $__modsi3
	andi x1, x8, 3
	bgtu x1, x0, LBB0_279
LBB0_277:                               //  %if.then751
                                        //    in Loop: Header=BB0_1 Depth=1
	beqz x10, LBB0_279
LBB0_278:                               //    in Loop: Header=BB0_1 Depth=1
	slti x1, x0, 1
	jalr x0, LBB0_280 ( x0 )
LBB0_279:                               //  %lor.rhs
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x11, x0, 400
	add x10, x0, x8
	call $__modsi3
	seqz x1, x10
LBB0_280:                               //  %lor.end
                                        //    in Loop: Header=BB0_1 Depth=1
	andi x1, x1, 1
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x3, x1
	addi x3, x0, 5
	lw x4, 80 ( x2 )                //  4-byte Folded Reload
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	lw x7, 68 ( x2 )                //  4-byte Folded Reload
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	ble x3, x1, LBB0_282
LBB0_281:                               //    in Loop: Header=BB0_1 Depth=1
	addi x3, x0, 53
	jalr x0, LBB0_283 ( x0 )
LBB0_282:                               //  %lor.end
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x3, x0, 52
LBB0_283:                               //  %if.end790
                                        //    in Loop: Header=BB0_1 Depth=1
	sw x3, 12 ( x2 )
	lui x1, $.str.5 >> 12 & 0xfffff
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 8 ( x2 )
	sub x1, x4, x5
	sub x1, x1, x7
	sw x1, 4 ( x2 )
	add x1, x7, x9
	sw x1, 0 ( x2 )
	add x8, x0, x5
	call $sniprintf
	bgez x10, LBB0_285
LBB0_284:
	add x13, x0, x0
	jalr x0, LBB0_342 ( x0 )
LBB0_285:                               //  %cleanup802
                                        //    in Loop: Header=BB0_1 Depth=1
	add x1, x8, x10
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	add x17, x3, x1
	add x5, x0, x0
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x17, LBB0_290
LBB0_286:
	add x13, x0, x5
	jalr x0, LBB0_342 ( x0 )
LBB0_287:                               //  %sw.bb807
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x8, LBB0_289
LBB0_288:
	add x13, x0, x5
	jalr x0, LBB0_342 ( x0 )
LBB0_289:                               //  %if.then811
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 24 ( x1 )
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x4, x12
	lw x7, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x4, x7
	addi x17, x3, 1
	addi x1, x1, 48
	sb x1, 0 ( x4 )
LBB0_290:                               //  %sw.epilog
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	lbu x1, 0 ( x3 )
	addi x20, x3, 1
	lw x7, 88 ( x2 )                //  4-byte Folded Reload
	lw x10, 72 ( x2 )               //  4-byte Folded Reload
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	addi x11, x0, 8
	add x13, x0, x11
	addi x11, x2, 92
	addi x12, x0, 10
	addi x14, x0, 85
	addi x15, x0, 4
	lw x16, 60 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB0_372
LBB0_371:                               //  %sw.epilog
                                        //    in Loop: Header=BB0_1 Depth=1
	jalr x0, LBB0_1 ( x0 )
LBB0_372:                               //  %sw.epilog
                                        //    in Loop: Header=BB0_1 Depth=1
	jalr x0, LBB0_339 ( x0 )
LBB0_291:                               //  %sw.bb819
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x4, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 24 ( x4 )
	add x3, x0, x0
	bne x1, x3, LBB0_293
LBB0_292:                               //    in Loop: Header=BB0_1 Depth=1
	addi x1, x0, -6
	jalr x0, LBB0_294 ( x0 )
LBB0_293:                               //  %sw.bb819
                                        //    in Loop: Header=BB0_1 Depth=1
	slti x3, x0, 1
	sub x1, x3, x1
LBB0_294:                               //  %sw.bb819
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x3, 28 ( x4 )
	nop
	add x1, x1, x3
	addi x10, x1, 7
	addi x11, x0, 7
	call $__divsi3
	sw x10, 12 ( x2 )
	lui x1, $.str.5 >> 12 & 0xfffff
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 8 ( x2 )
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	lw x8, 68 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x8
	sw x1, 4 ( x2 )
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x8, x1
	sw x1, 0 ( x2 )
	call $sniprintf
	bgez x10, LBB0_296
LBB0_295:
	add x13, x0, x0
	jalr x0, LBB0_342 ( x0 )
LBB0_296:                               //  %cleanup845
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x10
	add x17, x8, x1
	jalr x0, LBB0_240 ( x0 )
LBB0_297:                               //  %sw.bb848
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 20 ( x1 )
	nop
	bgez x10, LBB0_299
LBB0_298:                               //  %cond.false857
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x10, x10, 1900
	call $abs
LBB0_299:                               //  %cond.end862
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x11, x0, 100
	call $__modsi3
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	lui x3, $.str.5 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	lw x8, 68 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x8
	lw x4, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x8, x4
	sw x10, 12 ( x2 )
	sw x3, 8 ( x2 )
	sw x1, 4 ( x2 )
	sw x4, 0 ( x2 )
	call $sniprintf
	bgez x10, LBB0_301
LBB0_300:
	add x13, x0, x0
	jalr x0, LBB0_342 ( x0 )
LBB0_301:                               //  %lor.lhs.false869
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x10
	add x17, x8, x1
	add x5, x0, x0
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x17, LBB0_290
LBB0_302:
	add x13, x0, x5
	jalr x0, LBB0_342 ( x0 )
LBB0_303:                               //  %sw.bb875
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 20 ( x1 )
	addi x4, x0, -1901
	slti x1, x3, -1900
	andi x1, x1, 1
	bgt x3, x4, LBB0_305
LBB0_304:                               //  %if.then891
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x4, x0, 45
	addi x5, x0, -1900
	sb x4, 92 ( x2 )
	sub x10, x5, x3
	addi x3, x2, 93
	lw x9, 44 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_310 ( x0 )
LBB0_305:                               //  %if.else895
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x9, 44 ( x2 )                //  4-byte Folded Reload
	nop
	xori x4, x9, 43
	addi x10, x3, 1900
	addi x5, x2, 93
	addi x7, x2, 92
	beqz x4, LBB0_307
LBB0_306:                               //    in Loop: Header=BB0_1 Depth=1
	add x3, x0, x7
	jalr x0, LBB0_310 ( x0 )
LBB0_307:                               //  %if.else895
                                        //    in Loop: Header=BB0_1 Depth=1
	lui x3, 10000 >> 12 & 0xfffff
	ori x28, x0, 10000 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	bgeu x10, x3, LBB0_309
LBB0_308:                               //    in Loop: Header=BB0_1 Depth=1
	add x3, x0, x7
	jalr x0, LBB0_310 ( x0 )
LBB0_309:                               //  %if.then902
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x1, x0, 43
	sb x1, 92 ( x2 )
	slti x1, x0, 1
	add x3, x0, x5
LBB0_310:                               //  %if.end905
                                        //    in Loop: Header=BB0_1 Depth=1
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	sltu x1, x0, x1
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sltu x4, x0, x5
	and x1, x1, x4
	addi x4, x0, 37
	andi x1, x1, 1
	sb x4, 0 ( x3 )
	sub x1, x5, x1
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	bgtu x9, x0, LBB0_312
LBB0_311:                               //    in Loop: Header=BB0_1 Depth=1
	addi x10, x3, 1
	jalr x0, LBB0_313 ( x0 )
LBB0_312:                               //  %if.then914
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x1, x0, 48
	sb x1, 1 ( x3 )
	addi x10, x3, 2
LBB0_313:                               //  %if.end916
                                        //    in Loop: Header=BB0_1 Depth=1
	ori x28, x0, $.str.10 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.10 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $strcpy
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	addi x3, x2, 92
	lw x8, 68 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x8
	lw x4, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x8, x4
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x5, 16 ( x2 )
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sw x5, 12 ( x2 )
	sw x3, 8 ( x2 )
	sw x1, 4 ( x2 )
	sw x4, 0 ( x2 )
	call $sniprintf
	bgez x10, LBB0_315
LBB0_314:
	add x13, x0, x0
	jalr x0, LBB0_342 ( x0 )
LBB0_315:                               //  %cleanup930
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x10
	add x17, x8, x1
	add x5, x0, x0
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x17, LBB0_290
LBB0_316:
	add x13, x0, x5
	jalr x0, LBB0_342 ( x0 )
LBB0_317:                               //  %sw.bb936
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 32 ( x1 )
	nop
	bgez x1, LBB0_319
LBB0_318:                               //    in Loop: Header=BB0_1 Depth=1
	add x17, x0, x8
	jalr x0, LBB0_290 ( x0 )
LBB0_319:                               //  %if.then940
                                        //    in Loop: Header=BB0_1 Depth=1
	call $__tz_lock
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_321
LBB0_320:                               //  %if.then944
                                        //    in Loop: Header=BB0_1 Depth=1
	call $_tzset_unlocked
	slti x1, x0, 1
LBB0_321:                               //  %if.end945
                                        //    in Loop: Header=BB0_1 Depth=1
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	call $__gettzinfo
	add x8, x0, x10
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 32 ( x1 )
	addi x11, x0, 28
	slt x1, x0, x1
	andi x10, x1, 1
	call $__mulsi3
	add x1, x10, x8
	lw x10, 32 ( x1 )
	nop
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	lw x8, 68 ( x2 )                //  4-byte Folded Reload
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x8, x3
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	sub x1, x1, x8
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, -3600 & 0xfff
	slli x28, x28, 20
	lui x1, -3600 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	call $__divsi3
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	call $__tz_unlock
	addi x11, x0, -60
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__divsi3
	call $labs
	addi x11, x0, 60
	call $__modsi3
	ori x28, x0, $.str.15 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.15 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x10, 16 ( x2 )
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 12 ( x2 )
	sw x1, 8 ( x2 )
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 4 ( x2 )
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x2 )
	call $sniprintf
	bgez x10, LBB0_323
LBB0_322:
	add x13, x0, x0
	jalr x0, LBB0_342 ( x0 )
LBB0_323:                               //  %cleanup971
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x10
	add x17, x8, x1
	add x5, x0, x0
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x17, LBB0_290
LBB0_324:
	add x13, x0, x5
	jalr x0, LBB0_342 ( x0 )
LBB0_325:                               //  %sw.bb976
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 32 ( x1 )
	nop
	bgez x1, LBB0_327
LBB0_326:                               //    in Loop: Header=BB0_1 Depth=1
	add x17, x0, x8
	jalr x0, LBB0_290 ( x0 )
LBB0_327:                               //  %if.then980
                                        //    in Loop: Header=BB0_1 Depth=1
	call $__tz_lock
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_329
LBB0_328:                               //  %if.then984
                                        //    in Loop: Header=BB0_1 Depth=1
	call $_tzset_unlocked
	slti x1, x0, 1
LBB0_329:                               //  %if.then987
                                        //    in Loop: Header=BB0_1 Depth=1
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 32 ( x1 )
	ori x28, x0, $_tzname & 0xfff
	slli x28, x28, 20
	lui x3, $_tzname >> 12 & 0xfffff
	slt x1, x0, x1
	andi x1, x1, 1
	srli x28, x28, 20
	slli x1, x1, 2
	or x3, x3, x28
	add x1, x3, x1
	lw x10, 0 ( x1 )
	nop
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	call $strlen
	beqz x10, LBB0_334
LBB0_330:                               //  %for.body997.preheader
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x4, x1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x4, x1
	add x4, x0, x0
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
LBB0_331:                               //  %for.body997
                                        //    Parent Loop BB0_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x5, x4, x1
	bgeu x5, x9, LBB0_346
LBB0_332:                               //  %if.then1001
                                        //    in Loop: Header=BB0_331 Depth=2
	add x5, x4, x11
	lb x5, 0 ( x5 )
	add x7, x4, x3
	addi x4, x4, 1
	sb x5, 0 ( x7 )
	bgtu x10, x4, LBB0_331
LBB0_333:                               //  %for.end1009.loopexit
                                        //    in Loop: Header=BB0_1 Depth=1
	add x8, x4, x1
LBB0_334:                               //  %for.end1009
                                        //    in Loop: Header=BB0_1 Depth=1
	call $__tz_unlock
	add x17, x0, x8
	add x5, x0, x0
	jalr x0, LBB0_290 ( x0 )
LBB0_335:                               //  %sw.bb1015
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x8, LBB0_337
LBB0_336:
	add x13, x0, x5
	jalr x0, LBB0_342 ( x0 )
LBB0_337:                               //  %if.then1019
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x3, x12
	lw x4, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x4
	addi x4, x0, 37
	jalr x0, LBB0_248 ( x0 )
LBB0_338:                               //  %for.end1029.loopexit
	add x17, x18, x17
LBB0_339:                               //  %for.end1029
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_341
LBB0_340:                               //  %if.then1031
	add x1, x17, x7
	sb x0, 0 ( x1 )
LBB0_341:                               //  %cleanup1034
	add x13, x0, x17
LBB0_342:                               //  %cleanup1034
	add x10, x0, x13
	lw x8, 124 ( x2 )               //  4-byte Folded Reload
	lw x1, 132 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 136
$cfi5:
	.cfi_adjust_cfa_offset -136
$cfi6:
	.cfi_def_cfa 2, 0
	ret
LBB0_343:                               //  %lor.end.i1585
                                        //    in Loop: Header=BB0_1 Depth=1
	not x8, x0
	addi x11, x0, 4
	call $__mulsi3
	lui x1, JTI0_5 >> 12 & 0xfffff
	ori x28, x0, JTI0_5 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB0_344:                               //  %lor.end.i1562
                                        //    in Loop: Header=BB0_1 Depth=1
	not x8, x0
	addi x11, x0, 4
	call $__mulsi3
	lui x1, JTI0_3 >> 12 & 0xfffff
	ori x28, x0, JTI0_3 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB0_345:                               //  %lor.end.i
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x11, x0, 4
	call $__mulsi3
	lui x1, JTI0_1 >> 12 & 0xfffff
	ori x28, x0, JTI0_1 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB0_346:                               //  %if.else1005
	call $__tz_unlock
	add x13, x0, x0
	jalr x0, LBB0_342 ( x0 )
$func_end0:
	.size	$strftime, ($func_end0)-($strftime)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	LBB0_335
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_24
	.long	LBB0_32
	.long	LBB0_44
	.long	LBB0_67
	.long	LBB0_342
	.long	LBB0_73
	.long	LBB0_110
	.long	LBB0_150
	.long	LBB0_156
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_174
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_181
	.long	LBB0_342
	.long	LBB0_192
	.long	LBB0_241
	.long	LBB0_249
	.long	LBB0_259
	.long	LBB0_263
	.long	LBB0_291
	.long	LBB0_39
	.long	LBB0_303
	.long	LBB0_325
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_342
	.long	LBB0_20
	.long	LBB0_28
	.long	LBB0_36
	.long	LBB0_61
	.long	LBB0_61
	.long	LBB0_342
	.long	LBB0_88
	.long	LBB0_28
	.long	LBB0_342
	.long	LBB0_166
	.long	LBB0_150
	.long	LBB0_156
	.long	LBB0_170
	.long	LBB0_178
	.long	LBB0_342
	.long	LBB0_181
	.long	LBB0_342
	.long	LBB0_37
	.long	LBB0_196
	.long	LBB0_245
	.long	LBB0_253
	.long	LBB0_342
	.long	LBB0_287
	.long	LBB0_38
	.long	LBB0_297
	.long	LBB0_317
JTI0_1:
	.long	LBB0_273
	.long	LBB0_273
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_273
	.long	LBB0_273
	.long	LBB0_273
	.long	LBB0_273
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_273
	.long	LBB0_273
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_273
	.long	LBB0_273
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_273
	.long	LBB0_273
JTI0_2:
	.long	LBB0_283
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_283
	.long	LBB0_283
	.long	LBB0_283
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_283
	.long	LBB0_283
	.long	LBB0_283
	.long	LBB0_283
	.long	LBB0_283
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_269
	.long	LBB0_283
	.long	LBB0_269
	.long	LBB0_283
	.long	LBB0_269
	.long	LBB0_283
JTI0_3:
	.long	LBB0_119
	.long	LBB0_119
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_119
	.long	LBB0_119
	.long	LBB0_119
	.long	LBB0_119
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_119
	.long	LBB0_119
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_119
	.long	LBB0_119
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_119
	.long	LBB0_119
JTI0_4:
	.long	LBB0_117
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_117
	.long	LBB0_117
	.long	LBB0_117
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_117
	.long	LBB0_117
	.long	LBB0_117
	.long	LBB0_117
	.long	LBB0_117
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_118
	.long	LBB0_117
	.long	LBB0_118
	.long	LBB0_117
	.long	LBB0_118
	.long	LBB0_117
JTI0_5:
	.long	LBB0_97
	.long	LBB0_97
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_97
	.long	LBB0_97
	.long	LBB0_97
	.long	LBB0_97
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_97
	.long	LBB0_97
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_97
	.long	LBB0_97
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_97
	.long	LBB0_97
JTI0_6:
	.long	LBB0_95
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_95
	.long	LBB0_95
	.long	LBB0_95
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_95
	.long	LBB0_95
	.long	LBB0_95
	.long	LBB0_95
	.long	LBB0_95
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_96
	.long	LBB0_95
	.long	LBB0_96
	.long	LBB0_95
	.long	LBB0_96
	.long	LBB0_95

	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"%s%.*d"
	.size	$.str, 7

	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
$.str.1:
	.zero	1
	.size	$.str.1, 1

	.address_space	0	
	.type	$.str.2,@object         //  @.str.2
$.str.2:
	.asciz	"%s%0.*d"
	.size	$.str.2, 8

	.address_space	0	
	.type	$.str.3,@object         //  @.str.3
$.str.3:
	.asciz	"+"
	.size	$.str.3, 2

	.address_space	0	
	.type	$.str.4,@object         //  @.str.4
$.str.4:
	.asciz	"-"
	.size	$.str.4, 2

	.address_space	0	
	.type	$.str.5,@object         //  @.str.5
$.str.5:
	.asciz	"%.2d"
	.size	$.str.5, 5

	.address_space	0	
	.type	$.str.6,@object         //  @.str.6
$.str.6:
	.asciz	"%2d"
	.size	$.str.6, 4

	.address_space	0	
	.type	$.str.7,@object         //  @.str.7
$.str.7:
	.asciz	"%.2d/%.2d/%.2d"
	.size	$.str.7, 15

	.address_space	0	
	.type	$.str.8,@object         //  @.str.8
$.str.8:
	.asciz	"%lu"
	.size	$.str.8, 4

	.address_space	0	
	.type	$.str.9,@object         //  @.str.9
$.str.9:
	.asciz	"Y-%m-%d"
	.size	$.str.9, 8

	.address_space	0	
	.type	$.str.10,@object        //  @.str.10
$.str.10:
	.asciz	".*u"
	.size	$.str.10, 4

	.address_space	0	
	.type	$.str.11,@object        //  @.str.11
$.str.11:
	.asciz	"%.3d"
	.size	$.str.11, 5

	.address_space	0	
	.address_space	0	
	.type	$.str.12,@object        //  @.str.12
$.str.12:
	.asciz	"%.2d:%.2d"
	.size	$.str.12, 10

	.address_space	0	
	.type	$.str.13,@object        //  @.str.13
$.str.13:
	.asciz	"%lld"
	.size	$.str.13, 5

	.address_space	0	
	.type	$.str.14,@object        //  @.str.14
$.str.14:
	.asciz	"%.2d:%.2d:%.2d"
	.size	$.str.14, 15

	.address_space	0	
	.type	$.str.15,@object        //  @.str.15
$.str.15:
	.asciz	"%+03ld%.2ld"
	.size	$.str.15, 12

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
