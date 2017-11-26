	.text
	.file	"vfprintf.bc"
	.globl	$vfprintf
	.type	$vfprintf,@function
$vfprintf:                              //  @vfprintf
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	add x3, x0, x12
	add x4, x0, x11
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x5, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x5, x28
	lw x5, 0 ( x5 )
	add x11, x0, x10
	add x12, x0, x4
	add x13, x0, x3
	add x10, x0, x5
	j $_vfprintf_r
$func_end0:
	.size	$vfprintf, ($func_end0)-($vfprintf)
	.cfi_endproc

	.globl	$_vfprintf_r
	.type	$_vfprintf_r,@function
$_vfprintf_r:                           //  @_vfprintf_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi2:
	.cfi_def_cfa 2, 0
$cfi3:
	.cfi_val_offset 2, 0
	addi x2, x2, -280
$cfi4:
	.cfi_adjust_cfa_offset 280
	sw x1, 276 ( x2 )
$cfi5:
	.cfi_offset 1, -4
	sw x8, 268 ( x2 )               //  4-byte Folded Spill
	sw x12, 112 ( x2 )              //  4-byte Folded Spill
	sw x11, 100 ( x2 )              //  4-byte Folded Spill
	add x8, x0, x10
	sw x13, 108 ( x2 )              //  4-byte Folded Spill
	sw x13, 252 ( x2 )
	call $_localeconv_r
	lw x10, 0 ( x10 )
	nop
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	call $strlen
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	beqz x8, LBB1_3
LBB1_1:                                 //  %land.lhs.true
	lw x1, 56 ( x8 )
	nop
	bgtu x1, x0, LBB1_3
LBB1_2:                                 //  %if.then
	add x10, x0, x8
	call $__sinit
LBB1_3:                                 //  %if.end
	lw x5, 100 ( x2 )               //  4-byte Folded Reload
	nop
	lh x1, 12 ( x5 )
	lui x3, 8192>>12 
	and x4, x3, x1
	bgtu x4, x0, LBB1_5
LBB1_4:                                 //  %if.then14
	or x1, x3, x1
	sh x1, 12 ( x5 )
	ori x28, x0, -8193 & 0xfff
	lw x3, 100 ( x5 )
	slli x28, x28, 20
	lui x4, -8193 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	and x3, x4, x3
	sw x3, 100 ( x5 )
LBB1_5:                                 //  %do.end22
	lw x12, 112 ( x2 )              //  4-byte Folded Reload
	andi x3, x1, 8
	sw x8, 96 ( x2 )                //  4-byte Folded Spill
	beqz x3, LBB1_7
LBB1_6:                                 //  %lor.lhs.false
	lw x3, 100 ( x2 )               //  4-byte Folded Reload
	nop
	lw x3, 16 ( x3 )
	nop
	bgtu x3, x0, LBB1_10
LBB1_7:                                 //  %land.lhs.true29
	add x10, x0, x8
	lw x8, 100 ( x2 )               //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__swsetup_r
	beqz x10, LBB1_9
LBB1_8:
	not x10, x0
	jalr x0, LBB1_414 ( x0 )
LBB1_9:                                 //  %land.lhs.true29.if.end45_crit_edge
	lh x1, 12 ( x8 )
	lw x8, 96 ( x2 )                //  4-byte Folded Reload
	lw x12, 112 ( x2 )              //  4-byte Folded Reload
LBB1_10:                                //  %if.end45
	andi x1, x1, 26
	xori x1, x1, 10
	bgtu x1, x0, LBB1_13
LBB1_11:                                //  %land.lhs.true51
	lw x1, 100 ( x2 )               //  4-byte Folded Reload
	nop
	lh x1, 14 ( x1 )
	nop
	bgt x0, x1, LBB1_13
LBB1_12:                                //  %if.then55
	add x10, x0, x8
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	lw x13, 108 ( x2 )              //  4-byte Folded Reload
	nop
	call $__sbprintf
	jalr x0, LBB1_414 ( x0 )
LBB1_13:                                //  %if.end69
	addi x4, x2, 237
	addi x5, x2, 160
	addi x7, x2, 224
	add x9, x0, x0
	addi x1, x2, 256
	addi x10, x2, 120
	sw x5, 224 ( x2 )
	sw x0, 8 ( x7 )
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 1
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	addi x3, x4, 3
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
	addi x1, x1, 7
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	addi x1, x4, 2
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	addi x1, x10, 40
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	sw x0, 228 ( x2 )
	sw x9, 76 ( x2 )                //  4-byte Folded Spill
	sw x9, 36 ( x2 )                //  4-byte Folded Spill
	sw x9, 44 ( x2 )                //  4-byte Folded Spill
	sw x9, 20 ( x2 )                //  4-byte Folded Spill
	sw x9, 72 ( x2 )                //  4-byte Folded Spill
	sw x9, 32 ( x2 )                //  4-byte Folded Spill
LBB1_14:                                //  %for.cond.outer
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_15 Depth 2
                                        //        Child Loop BB1_16 Depth 3
                                        //        Child Loop BB1_27 Depth 3
                                        //          Child Loop BB1_28 Depth 4
                                        //            Child Loop BB1_50 Depth 5
                                        //            Child Loop BB1_41 Depth 5
                                        //      Child Loop BB1_111 Depth 2
                                        //      Child Loop BB1_128 Depth 2
                                        //      Child Loop BB1_133 Depth 2
                                        //      Child Loop BB1_214 Depth 2
                                        //      Child Loop BB1_224 Depth 2
                                        //      Child Loop BB1_216 Depth 2
                                        //      Child Loop BB1_248 Depth 2
                                        //      Child Loop BB1_267 Depth 2
                                        //      Child Loop BB1_276 Depth 2
                                        //      Child Loop BB1_383 Depth 2
                                        //      Child Loop BB1_338 Depth 2
                                        //      Child Loop BB1_363 Depth 2
                                        //      Child Loop BB1_319 Depth 2
                                        //      Child Loop BB1_299 Depth 2
                                        //      Child Loop BB1_397 Depth 2
	add x4, x0, x5
	lw x5, 112 ( x2 )               //  4-byte Folded Reload
	nop
LBB1_15:                                //  %for.cond
                                        //    Parent Loop BB1_14 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_16 Depth 3
                                        //        Child Loop BB1_27 Depth 3
                                        //          Child Loop BB1_28 Depth 4
                                        //            Child Loop BB1_50 Depth 5
                                        //            Child Loop BB1_41 Depth 5
	add x8, x0, x5
LBB1_16:                                //  %while.cond
                                        //    Parent Loop BB1_14 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lbu x1, 0 ( x8 )
	nop
	beqz x1, LBB1_19
LBB1_17:                                //  %while.cond
                                        //    in Loop: Header=BB1_16 Depth=3
	xori x3, x1, 37
	beqz x3, LBB1_19
LBB1_18:                                //  %while.body
                                        //    in Loop: Header=BB1_16 Depth=3
	addi x8, x8, 1
	jalr x0, LBB1_16 ( x0 )
LBB1_19:                                //  %while.end
                                        //    in Loop: Header=BB1_15 Depth=2
	sub x9, x8, x5
	bgtu x9, x0, LBB1_21
LBB1_20:                                //    in Loop: Header=BB1_15 Depth=2
	sw x4, 68 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_25 ( x0 )
LBB1_21:                                //  %if.then78
                                        //    in Loop: Header=BB1_15 Depth=2
	sw x9, 4 ( x4 )
	sw x5, 0 ( x4 )
	lw x1, 8 ( x7 )
	nop
	add x1, x9, x1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	slti x1, x1, 7
	sw x3, 228 ( x2 )
	beqz x1, LBB1_23
LBB1_22:                                //    in Loop: Header=BB1_15 Depth=2
	addi x4, x4, 8
	jalr x0, LBB1_24 ( x0 )
LBB1_23:                                //  %if.then83
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x7
	sw x9, 112 ( x2 )               //  4-byte Folded Spill
	call $__sprint_r
	lw x9, 112 ( x2 )               //  4-byte Folded Reload
	addi x1, x2, 160
	add x4, x0, x1
	beqz x10, LBB1_418
LBB1_417:                               //  %if.then83
                                        //    in Loop: Header=BB1_15 Depth=2
	jalr x0, LBB1_411 ( x0 )
LBB1_418:                               //  %if.then83
                                        //    in Loop: Header=BB1_15 Depth=2
LBB1_24:                                //  %if.end89
                                        //    in Loop: Header=BB1_15 Depth=2
	sw x4, 68 ( x2 )                //  4-byte Folded Spill
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x9
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	lb x1, 0 ( x8 )
	nop
LBB1_25:                                //  %if.end91
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x1, x1, 255
	bgtu x1, x0, LBB1_420
LBB1_419:                               //  %if.end91
                                        //    in Loop: Header=BB1_15 Depth=2
	jalr x0, LBB1_408 ( x0 )
LBB1_420:                               //  %if.end91
                                        //    in Loop: Header=BB1_15 Depth=2
LBB1_26:                                //  %if.end96
                                        //    in Loop: Header=BB1_15 Depth=2
	addi x1, x8, 1
	sb x0, 251 ( x2 )
	add x3, x0, x0
	sw x3, 92 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x3
	not x4, x0
	sw x4, 88 ( x2 )                //  4-byte Folded Spill
	sw x3, 84 ( x2 )                //  4-byte Folded Spill
LBB1_27:                                //  %rflag
                                        //    Parent Loop BB1_14 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB1_28 Depth 4
                                        //            Child Loop BB1_50 Depth 5
                                        //            Child Loop BB1_41 Depth 5
	addi x8, x1, 1
	lb x3, 0 ( x1 )
LBB1_28:                                //  %reswitch
                                        //    Parent Loop BB1_14 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //        Parent Loop BB1_27 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB1_50 Depth 5
                                        //            Child Loop BB1_41 Depth 5
	sw x10, 104 ( x2 )              //  4-byte Folded Spill
	sw x8, 112 ( x2 )               //  4-byte Folded Spill
	addi x1, x0, 120
	sw x3, 108 ( x2 )               //  4-byte Folded Spill
	bgtu x3, x1, LBB1_236
LBB1_29:                                //  %reswitch
                                        //    in Loop: Header=BB1_28 Depth=4
	add x10, x0, x3
	addi x11, x0, 4
	call $__mulsi3
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	ori x28, x0, JTI1_0 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI1_0 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB1_30:                                //  %sw.bb
                                        //    in Loop: Header=BB1_27 Depth=3
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	andi x3, x1, 255
	lw x4, 112 ( x2 )               //  4-byte Folded Reload
	nop
	add x1, x0, x4
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	bgtu x3, x0, LBB1_27
LBB1_31:                                //  %if.then101
                                        //    in Loop: Header=BB1_27 Depth=3
	addi x1, x0, 32
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	sb x1, 251 ( x2 )
	add x1, x0, x4
	jalr x0, LBB1_27 ( x0 )
LBB1_32:                                //  %sw.bb103
                                        //    in Loop: Header=BB1_27 Depth=3
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 1
LBB1_33:                                //  %rflag
                                        //    in Loop: Header=BB1_27 Depth=3
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
LBB1_34:                                //  %rflag
                                        //    in Loop: Header=BB1_27 Depth=3
	lw x1, 112 ( x2 )               //  4-byte Folded Reload
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB1_27 ( x0 )
LBB1_35:                                //  %sw.bb105
                                        //    in Loop: Header=BB1_27 Depth=3
	lw x1, 252 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 252 ( x2 )
	lw x10, 0 ( x1 )
	lw x3, 112 ( x2 )               //  4-byte Folded Reload
	nop
	add x1, x0, x3
	bgez x10, LBB1_27
LBB1_36:                                //  %if.end109
                                        //    in Loop: Header=BB1_27 Depth=3
	sub x10, x0, x10
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 4
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x3
	jalr x0, LBB1_27 ( x0 )
LBB1_37:                                //  %sw.bb110.loopexit
                                        //    in Loop: Header=BB1_27 Depth=3
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 4
	jalr x0, LBB1_33 ( x0 )
LBB1_38:                                //  %sw.bb112
                                        //    in Loop: Header=BB1_27 Depth=3
	addi x1, x0, 43
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	sb x1, 251 ( x2 )
	jalr x0, LBB1_34 ( x0 )
LBB1_39:                                //  %sw.bb113
                                        //    in Loop: Header=BB1_28 Depth=4
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
	nop
	lb x3, 0 ( x8 )
	addi x8, x8, 1
	xori x1, x3, 42
	beqz x1, LBB1_45
LBB1_40:                                //  %while.cond125.preheader
                                        //    in Loop: Header=BB1_28 Depth=4
	addi x4, x3, -48
	add x10, x0, x0
	addi x1, x0, 9
	bgtu x4, x1, LBB1_42
LBB1_41:                                //  %while.body129
                                        //    Parent Loop BB1_14 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //        Parent Loop BB1_27 Depth=3
                                        //          Parent Loop BB1_28 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	sw x4, 112 ( x2 )               //  4-byte Folded Spill
	addi x11, x0, 10
	call $__mulsi3
	lb x3, 0 ( x8 )
	lw x1, 112 ( x2 )               //  4-byte Folded Reload
	nop
	add x10, x1, x10
	addi x8, x8, 1
	addi x4, x3, -48
	sltiu x1, x4, 10
	bgtu x1, x0, LBB1_41
LBB1_42:                                //  %while.end134
                                        //    in Loop: Header=BB1_28 Depth=4
	not x1, x0
	bgt x10, x1, LBB1_44
LBB1_43:                                //  %while.end134
                                        //    in Loop: Header=BB1_28 Depth=4
	add x10, x0, x1
LBB1_44:                                //  %while.end134
                                        //    in Loop: Header=BB1_28 Depth=4
	sw x10, 88 ( x2 )               //  4-byte Folded Spill
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB1_28 ( x0 )
LBB1_45:                                //  %if.then118
                                        //    in Loop: Header=BB1_27 Depth=3
	lw x3, 252 ( x2 )
	not x1, x0
	addi x4, x3, 4
	sw x4, 252 ( x2 )
	lw x3, 0 ( x3 )
	nop
	bgt x3, x1, LBB1_47
LBB1_46:                                //  %if.then118
                                        //    in Loop: Header=BB1_27 Depth=3
	add x3, x0, x1
LBB1_47:                                //  %if.then118
                                        //    in Loop: Header=BB1_27 Depth=3
	sw x3, 88 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x8
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB1_27 ( x0 )
LBB1_48:                                //  %sw.bb140
                                        //    in Loop: Header=BB1_27 Depth=3
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 128
	jalr x0, LBB1_33 ( x0 )
LBB1_49:                                //  %do.body143.preheader
                                        //    in Loop: Header=BB1_28 Depth=4
	add x10, x0, x0
	add x4, x0, x3
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
LBB1_50:                                //  %do.body143
                                        //    Parent Loop BB1_14 Depth=1
                                        //      Parent Loop BB1_15 Depth=2
                                        //        Parent Loop BB1_27 Depth=3
                                        //          Parent Loop BB1_28 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	sw x4, 112 ( x2 )               //  4-byte Folded Spill
	addi x11, x0, 10
	call $__mulsi3
	lb x3, 0 ( x8 )
	lw x1, 112 ( x2 )               //  4-byte Folded Reload
	nop
	add x1, x10, x1
	addi x8, x8, 1
	addi x10, x1, -48
	addi x1, x3, -48
	sltiu x1, x1, 10
	add x4, x0, x3
	bgtu x1, x0, LBB1_50
	jalr x0, LBB1_28 ( x0 )
LBB1_51:                                //  %sw.bb154
                                        //    in Loop: Header=BB1_27 Depth=3
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 8
	jalr x0, LBB1_33 ( x0 )
LBB1_52:                                //  %sw.bb156
                                        //    in Loop: Header=BB1_27 Depth=3
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 64
	jalr x0, LBB1_33 ( x0 )
LBB1_53:                                //  %sw.bb158
                                        //    in Loop: Header=BB1_27 Depth=3
	lw x3, 112 ( x2 )               //  4-byte Folded Reload
	nop
	lbu x1, 0 ( x3 )
	nop
	xori x1, x1, 108
	bgtu x1, x0, LBB1_55
LBB1_54:                                //  %if.then162
                                        //    in Loop: Header=BB1_27 Depth=3
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 32
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	addi x1, x3, 1
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB1_27 ( x0 )
LBB1_55:                                //  %if.else
                                        //    in Loop: Header=BB1_27 Depth=3
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 16
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x3
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB1_27 ( x0 )
LBB1_56:                                //  %sw.bb167
                                        //    in Loop: Header=BB1_27 Depth=3
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 32
	jalr x0, LBB1_33 ( x0 )
LBB1_57:                                //  %sw.bb169
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 252 ( x2 )
	addi x3, x0, 99
	sw x3, 108 ( x2 )               //  4-byte Folded Spill
	addi x3, x1, 4
	sw x3, 252 ( x2 )
	lw x1, 0 ( x1 )
	sb x0, 251 ( x2 )
	sb x1, 120 ( x2 )
	jalr x0, LBB1_237 ( x0 )
LBB1_58:                                //  %sw.bb173
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x1, x0, 68
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	lw x7, 92 ( x2 )                //  4-byte Folded Reload
	nop
	ori x7, x7, 16
	jalr x0, LBB1_60 ( x0 )
LBB1_59:                                //  %sw.bb175.loopexit
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x7, 92 ( x2 )                //  4-byte Folded Reload
	nop
LBB1_60:                                //  %sw.bb175
                                        //    in Loop: Header=BB1_14 Depth=1
	andi x1, x7, 32
	beqz x1, LBB1_62
LBB1_61:                                //  %cond.true178
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 252 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 252 ( x2 )
	lw x9, 0 ( x1 )
	addi x1, x3, 4
	sw x1, 252 ( x2 )
	lw x11, 0 ( x3 )
	lw x8, 72 ( x2 )                //  4-byte Folded Reload
	lw x4, 88 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_67 ( x0 )
LBB1_62:                                //  %cond.false180
                                        //    in Loop: Header=BB1_14 Depth=1
	andi x1, x7, 16
	lw x8, 72 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_64
LBB1_63:                                //  %cond.true183
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 252 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 252 ( x2 )
	lw x9, 0 ( x1 )
	jalr x0, LBB1_66 ( x0 )
LBB1_64:                                //  %cond.false185
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 252 ( x2 )
	andi x3, x7, 64
	addi x4, x1, 4
	sw x4, 252 ( x2 )
	lw x9, 0 ( x1 )
	beqz x3, LBB1_66
LBB1_65:                                //  %cond.true188
                                        //    in Loop: Header=BB1_14 Depth=1
	slli x1, x9, 16
	srai x9, x1, 16
LBB1_66:                                //  %cond.end205
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x4, 88 ( x2 )                //  4-byte Folded Reload
	srai x11, x9, 31
LBB1_67:                                //  %cond.end208
                                        //    in Loop: Header=BB1_14 Depth=1
	bgt x0, x11, LBB1_69
LBB1_68:                                //    in Loop: Header=BB1_14 Depth=1
	slti x1, x0, 1
	jalr x0, LBB1_207 ( x0 )
LBB1_69:                                //  %if.then212
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x1, x0, 45
	add x3, x0, x0
	sb x1, 251 ( x2 )
	slti x1, x0, 1
	add x4, x0, x1
	bne x9, x3, LBB1_71
LBB1_70:                                //  %if.then212
                                        //    in Loop: Header=BB1_14 Depth=1
	add x4, x0, x3
LBB1_71:                                //  %if.then212
                                        //    in Loop: Header=BB1_14 Depth=1
	sub x3, x0, x11
	sub x11, x3, x4
	sub x9, x0, x9
	lw x4, 88 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_207 ( x0 )
LBB1_72:                                //  %sw.bb215
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 252 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 252 ( x2 )
	lw x10, 0 ( x1 )
	nop
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	addi x1, x3, 4
	sw x1, 252 ( x2 )
	lw x8, 0 ( x3 )
	nop
	add x11, x0, x8
	call $__fpclassifyd
	xori x1, x10, 1
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB1_78
LBB1_73:                                //  %if.then229
                                        //    in Loop: Header=BB1_14 Depth=1
	add x12, x0, x0
	add x11, x0, x8
	add x13, x0, x12
	call $__ltdf2
	bgez x10, LBB1_75
LBB1_74:                                //  %if.then233
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x1, x0, 45
	sb x1, 251 ( x2 )
LBB1_75:                                //  %if.end234
                                        //    in Loop: Header=BB1_14 Depth=1
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.1 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x3, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 72
	or x3, x3, x28
	sw x3, 84 ( x2 )                //  4-byte Folded Spill
	addi x7, x2, 224
	addi x5, x0, 16
	lw x8, 72 ( x2 )                //  4-byte Folded Reload
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	nop
	bgt x4, x3, LBB1_77
LBB1_76:                                //  %if.end234
                                        //    in Loop: Header=BB1_14 Depth=1
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
LBB1_77:                                //  %if.end234
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x3, x0, 3
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
	nop
	andi x11, x11, -129
	add x10, x0, x0
	add x4, x0, x10
	jalr x0, LBB1_239 ( x0 )
LBB1_78:                                //  %if.end241
                                        //    in Loop: Header=BB1_14 Depth=1
	add x11, x0, x8
	call $__fpclassifyd
	bgtu x10, x0, LBB1_82
LBB1_79:                                //  %if.then246
                                        //    in Loop: Header=BB1_14 Depth=1
	ori x28, x0, $.str.3 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.3 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.2 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.2 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 72
	or x3, x3, x28
	sw x3, 84 ( x2 )                //  4-byte Folded Spill
	addi x7, x2, 224
	addi x5, x0, 16
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	nop
	bgt x4, x3, LBB1_81
LBB1_80:                                //  %if.then246
                                        //    in Loop: Header=BB1_14 Depth=1
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
LBB1_81:                                //  %if.then246
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x3, x0, 3
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
	nop
	andi x11, x11, -129
	add x1, x0, x0
	add x10, x0, x1
	add x4, x0, x1
	lw x8, 72 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_239 ( x0 )
LBB1_82:                                //  %if.end253
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x4, 88 ( x2 )                //  4-byte Folded Reload
	nop
	xori x1, x4, -1
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	nop
	ori x8, x3, 32
	bgtu x1, x0, LBB1_84
LBB1_83:                                //    in Loop: Header=BB1_14 Depth=1
	addi x1, x0, 6
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	lw x12, 44 ( x2 )               //  4-byte Folded Reload
	lw x13, 36 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_89 ( x0 )
LBB1_84:                                //  %if.else257
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x1, x0, 103
	lw x12, 44 ( x2 )               //  4-byte Folded Reload
	lw x13, 36 ( x2 )               //  4-byte Folded Reload
	bne x8, x1, LBB1_86
LBB1_85:                                //    in Loop: Header=BB1_14 Depth=1
	slti x1, x0, 1
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_87 ( x0 )
LBB1_86:                                //  %if.else257
                                        //    in Loop: Header=BB1_14 Depth=1
	sw x4, 80 ( x2 )                //  4-byte Folded Spill
LBB1_87:                                //  %if.else257
                                        //    in Loop: Header=BB1_14 Depth=1
	add x1, x0, x0
	beq x4, x1, LBB1_89
LBB1_88:                                //  %if.else257
                                        //    in Loop: Header=BB1_14 Depth=1
	sw x4, 80 ( x2 )                //  4-byte Folded Spill
LBB1_89:                                //  %if.end268
                                        //    in Loop: Header=BB1_14 Depth=1
	add x10, x0, x0
	lui x1, -2147483648 >> 12 & 0xfffff
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	call $__subdf3
	add x7, x0, x10
	add x9, x0, x11
	addi x1, x0, 102
	bne x8, x1, LBB1_91
LBB1_90:                                //    in Loop: Header=BB1_14 Depth=1
	addi x13, x0, 3
	jalr x0, LBB1_92 ( x0 )
LBB1_91:                                //  %if.end268
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x13, x0, 2
LBB1_92:                                //  %if.end268
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	add x4, x0, x0
	bgt x4, x3, LBB1_94
LBB1_93:                                //  %if.end268
                                        //    in Loop: Header=BB1_14 Depth=1
	add x7, x0, x1
LBB1_94:                                //  %if.end268
                                        //    in Loop: Header=BB1_14 Depth=1
	bgt x4, x3, LBB1_96
LBB1_95:                                //  %if.end268
                                        //    in Loop: Header=BB1_14 Depth=1
	add x9, x0, x3
LBB1_96:                                //  %if.end268
                                        //    in Loop: Header=BB1_14 Depth=1
	xori x1, x8, 101
	seqz x1, x1
	andi x1, x1, 1
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	add x14, x1, x3
	addi x15, x2, 244
	addi x16, x2, 256
	addi x17, x2, 264
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	sw x7, 88 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x7
	sw x9, 64 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x9
	sw x14, 56 ( x2 )               //  4-byte Folded Spill
	call $_dtoa_r
	xori x12, x8, 103
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
	sw x10, 84 ( x2 )               //  4-byte Folded Spill
	bgtu x12, x0, LBB1_99
LBB1_97:                                //  %lor.lhs.false12.i
                                        //    in Loop: Header=BB1_14 Depth=1
	andi x1, x11, 1
	bgtu x1, x0, LBB1_99
LBB1_98:                                //  %lor.lhs.false12.if.end35_crit_edge.i
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x3, 264 ( x2 )
	addi x7, x2, 224
	addi x8, x2, 241
	add x9, x0, x8
	addi x5, x0, 16
	lw x8, 72 ( x2 )                //  4-byte Folded Reload
	add x4, x0, x0
	jalr x0, LBB1_113 ( x0 )
LBB1_99:                                //  %if.then15.i
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x10
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	xori x1, x8, 102
	sw x12, 28 ( x2 )               //  4-byte Folded Spill
	beqz x1, LBB1_101
LBB1_100:                               //    in Loop: Header=BB1_14 Depth=1
	lw x8, 72 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_106 ( x0 )
LBB1_101:                               //  %if.then19.i
                                        //    in Loop: Header=BB1_14 Depth=1
	add x12, x0, x0
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x12
	call $__eqdf2
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	lw x8, 72 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB1_103
LBB1_102:                               //  %if.then19.i
                                        //    in Loop: Header=BB1_14 Depth=1
	lb x1, 0 ( x1 )
	nop
	andi x1, x1, 255
	xori x1, x1, 48
	beqz x1, LBB1_104
LBB1_103:                               //  %if.then19.if.end26_crit_edge.i
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 244 ( x2 )
	jalr x0, LBB1_105 ( x0 )
LBB1_104:                               //  %if.then24.i
                                        //    in Loop: Header=BB1_14 Depth=1
	slti x1, x0, 1
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	sw x1, 244 ( x2 )
LBB1_105:                               //  %if.end26.i
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x1, x3
	sw x3, 60 ( x2 )                //  4-byte Folded Spill
LBB1_106:                               //  %if.end28.i
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	add x13, x0, x12
	call $__nedf2
	bgtu x10, x0, LBB1_108
LBB1_107:                               //  %while.cond.preheader.thread.i
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 264 ( x2 )
	addi x7, x2, 224
	addi x5, x0, 16
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
	add x4, x0, x0
	addi x9, x2, 241
	lw x12, 28 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_113 ( x0 )
LBB1_108:                               //  %while.cond.preheader.i
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 264 ( x2 )
	addi x7, x2, 224
	addi x5, x0, 16
	add x4, x0, x0
	addi x9, x2, 241
	lw x12, 28 ( x2 )               //  4-byte Folded Reload
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x10, x1, LBB1_110
LBB1_109:                               //    in Loop: Header=BB1_14 Depth=1
	add x3, x0, x1
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_113 ( x0 )
LBB1_110:                               //  %while.body.i.preheader
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
LBB1_111:                               //  %while.body.i
                                        //    Parent Loop BB1_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x3, x1, 1
	sw x3, 264 ( x2 )
	addi x3, x0, 48
	sb x3, 0 ( x1 )
	lw x1, 264 ( x2 )
	nop
	bgtu x10, x1, LBB1_111
LBB1_112:                               //  %if.end35.loopexit.i
                                        //    in Loop: Header=BB1_14 Depth=1
	add x3, x0, x1
LBB1_113:                               //  %cvt.exit
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x3, x1
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	bgtu x12, x0, LBB1_119
LBB1_114:                               //  %if.then277
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 108 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, -2
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	lw x10, 244 ( x2 )
	nop
	slti x1, x10, -3
	bgtu x1, x0, LBB1_119
LBB1_115:                               //  %if.then277
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x10, x1, LBB1_119
LBB1_116:                               //    in Loop: Header=BB1_14 Depth=1
	addi x1, x0, 103
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
LBB1_117:                               //  %if.else329
                                        //    in Loop: Header=BB1_14 Depth=1
	bgt x3, x10, LBB1_150
LBB1_118:                               //  %if.then332
                                        //    in Loop: Header=BB1_14 Depth=1
	andi x1, x11, 1
	sub x1, x0, x1
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	and x1, x3, x1
	add x3, x1, x10
	jalr x0, LBB1_152 ( x0 )
LBB1_119:                               //  %if.end287
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x1, x0, 101
	lw x4, 108 ( x2 )               //  4-byte Folded Reload
	nop
	bgt x4, x1, LBB1_140
LBB1_120:                               //  %if.then290
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x3, 244 ( x2 )
	slti x10, x0, 1
	ble x10, x3, LBB1_122
LBB1_121:                               //    in Loop: Header=BB1_14 Depth=1
	addi x1, x0, 45
	jalr x0, LBB1_123 ( x0 )
LBB1_122:                               //  %if.then290
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x1, x0, 43
LBB1_123:                               //  %if.then290
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x4, x3, -1
	ble x10, x3, LBB1_125
LBB1_124:                               //    in Loop: Header=BB1_14 Depth=1
	sub x10, x10, x3
	jalr x0, LBB1_126 ( x0 )
LBB1_125:                               //  %if.then290
                                        //    in Loop: Header=BB1_14 Depth=1
	add x10, x0, x4
LBB1_126:                               //  %if.then290
                                        //    in Loop: Header=BB1_14 Depth=1
	sw x4, 244 ( x2 )
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, 237 ( x2 )
	sb x1, 238 ( x2 )
	slti x1, x10, 10
	beqz x1, LBB1_422
LBB1_421:                               //  %if.then290
                                        //    in Loop: Header=BB1_14 Depth=1
	jalr x0, LBB1_415 ( x0 )
LBB1_422:                               //  %if.then290
                                        //    in Loop: Header=BB1_14 Depth=1
LBB1_127:                               //  %do.body.i.preheader
                                        //    in Loop: Header=BB1_14 Depth=1
	add x13, x0, x0
LBB1_128:                               //  %do.body.i
                                        //    Parent Loop BB1_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x8, x0, x13
	sw x10, 88 ( x2 )               //  4-byte Folded Spill
	addi x11, x0, 10
	call $__modsi3
	sw x8, 64 ( x2 )                //  4-byte Folded Spill
	addi x3, x8, -1
	sw x3, 80 ( x2 )                //  4-byte Folded Spill
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x3, x1
	addi x8, x10, 48
	sb x8, 0 ( x1 )
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	addi x11, x0, 10
	call $__divsi3
	lw x13, 80 ( x2 )               //  4-byte Folded Reload
	addi x1, x0, 99
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x3, x1, LBB1_128
LBB1_129:                               //  %do.end.i
                                        //    in Loop: Header=BB1_14 Depth=1
	add x15, x0, x8
	lw x14, 64 ( x2 )               //  4-byte Folded Reload
	nop
	addi x3, x14, -2
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x3, x1
	addi x4, x10, 48
	sb x4, 0 ( x1 )
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	addi x7, x2, 224
	addi x9, x2, 264
	addi x5, x0, 16
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
	slti x10, x0, 1
	add x8, x0, x14
	bgt x8, x10, LBB1_135
LBB1_130:                               //  %for.inc.i.preheader
                                        //    in Loop: Header=BB1_14 Depth=1
	sb x4, 239 ( x2 )
	addi x4, x0, -2
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	bgt x3, x4, LBB1_135
LBB1_131:                               //  %for.inc.for.inc_crit_edge.i.preheader
                                        //    in Loop: Header=BB1_14 Depth=1
	sb x15, 240 ( x2 )
	sub x1, x10, x8
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x1, x3
	sub x1, x0, x8
	addi x10, x2, 241
	beq x3, x10, LBB1_134
LBB1_132:                               //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge.preheader
                                        //    in Loop: Header=BB1_14 Depth=1
	add x3, x0, x0
LBB1_133:                               //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge
                                        //    Parent Loop BB1_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x4, x3, x9
	add x4, x13, x4
	add x5, x3, x10
	lb x4, 0 ( x4 )
	nop
	sb x4, 0 ( x5 )
	addi x3, x3, 1
	add x4, x3, x8
	bgtu x4, x0, LBB1_133
LBB1_134:                               //  %exponent.exit.loopexit
                                        //    in Loop: Header=BB1_14 Depth=1
	add x1, x1, x10
	addi x5, x0, 16
LBB1_135:                               //  %exponent.exit
                                        //    in Loop: Header=BB1_14 Depth=1
	add x10, x0, x0
	addi x4, x0, 2
	add x3, x0, x10
	lw x9, 32 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x9, LBB1_137
LBB1_136:                               //  %exponent.exit
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
LBB1_137:                               //  %exponent.exit
                                        //    in Loop: Header=BB1_14 Depth=1
	andi x4, x11, 1
	add x8, x0, x12
	beq x4, x10, LBB1_139
LBB1_138:                               //  %exponent.exit
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
LBB1_139:                               //  %exponent.exit
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x4, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x4, x3
	addi x4, x2, 237
	sub x1, x1, x4
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	add x3, x1, x3
	add x4, x0, x0
	jalr x0, LBB1_152 ( x0 )
LBB1_140:                               //  %if.else302
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x10, 244 ( x2 )
	xori x1, x4, 102
	beqz x1, LBB1_142
LBB1_141:                               //    in Loop: Header=BB1_14 Depth=1
	add x4, x0, x0
	jalr x0, LBB1_117 ( x0 )
LBB1_142:                               //  %if.then305
                                        //    in Loop: Header=BB1_14 Depth=1
	andi x1, x11, 1
	lw x4, 80 ( x2 )                //  4-byte Folded Reload
	nop
	or x1, x1, x4
	add x4, x0, x0
	ble x10, x0, LBB1_146
LBB1_143:                               //  %if.then308
                                        //    in Loop: Header=BB1_14 Depth=1
	bgtu x1, x0, LBB1_145
LBB1_144:                               //    in Loop: Header=BB1_14 Depth=1
	addi x1, x0, 102
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	add x3, x0, x10
	jalr x0, LBB1_152 ( x0 )
LBB1_145:                               //  %if.then313
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	add x3, x10, x1
	jalr x0, LBB1_149 ( x0 )
LBB1_146:                               //  %if.else317
                                        //    in Loop: Header=BB1_14 Depth=1
	add x3, x0, x0
	bne x1, x3, LBB1_148
LBB1_147:                               //    in Loop: Header=BB1_14 Depth=1
	slti x3, x0, 1
	jalr x0, LBB1_149 ( x0 )
LBB1_148:                               //  %if.else317
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x1
LBB1_149:                               //  %if.else317
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x1, x0, 102
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB1_152 ( x0 )
LBB1_150:                               //  %if.else338
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x1, x3
	bgt x10, x0, LBB1_152
LBB1_151:                               //  %if.then342
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x1, x3, 1
	sub x3, x1, x10
LBB1_152:                               //  %if.end348
                                        //    in Loop: Header=BB1_14 Depth=1
	ori x11, x11, 256
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	bgez x1, LBB1_239
LBB1_153:                               //  %if.then350
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x1, x0, 45
	sb x1, 251 ( x2 )
	jalr x0, LBB1_239 ( x0 )
LBB1_154:                               //  %sw.bb352
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x3, 92 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 32
	beqz x1, LBB1_156
LBB1_155:                               //  %if.then355
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x1, 252 ( x2 )
	lw x5, 76 ( x2 )                //  4-byte Folded Reload
	nop
	srai x3, x5, 31
	addi x4, x1, 4
	sw x4, 252 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x3, 4 ( x1 )
	sw x5, 0 ( x1 )
	addi x7, x2, 224
	jalr x0, LBB1_158 ( x0 )
LBB1_156:                               //  %if.else358
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x1, x3, 16
	lw x4, 76 ( x2 )                //  4-byte Folded Reload
	addi x7, x2, 224
	beqz x1, LBB1_159
LBB1_157:                               //  %if.then361
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x1, 252 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 252 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x4, 0 ( x1 )
LBB1_158:                               //  %for.cond
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x5, 112 ( x2 )               //  4-byte Folded Reload
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_15 ( x0 )
LBB1_159:                               //  %if.else363
                                        //    in Loop: Header=BB1_15 Depth=2
	andi x1, x3, 64
	lw x5, 112 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB1_161
LBB1_160:                               //  %if.then366
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x1, 252 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 252 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sh x4, 0 ( x1 )
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_15 ( x0 )
LBB1_161:                               //  %if.else369
                                        //    in Loop: Header=BB1_15 Depth=2
	lw x1, 252 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 252 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x4, 0 ( x1 )
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_15 ( x0 )
LBB1_162:                               //  %sw.bb374
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x1, x0, 79
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	lw x7, 92 ( x2 )                //  4-byte Folded Reload
	nop
	ori x7, x7, 16
	jalr x0, LBB1_164 ( x0 )
LBB1_163:                               //  %sw.bb376.loopexit
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x1, x0, 111
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	lw x7, 92 ( x2 )                //  4-byte Folded Reload
	nop
LBB1_164:                               //  %sw.bb376
                                        //    in Loop: Header=BB1_14 Depth=1
	andi x1, x7, 32
	lw x8, 72 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_167
LBB1_165:                               //  %cond.true379
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x3, 252 ( x2 )
	add x1, x0, x0
LBB1_166:                               //  %nosign
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x4, x3, 4
	sw x4, 252 ( x2 )
	lw x9, 0 ( x3 )
	addi x3, x4, 4
	sw x3, 252 ( x2 )
	lw x11, 0 ( x4 )
	lw x4, 88 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_206 ( x0 )
LBB1_167:                               //  %cond.false381
                                        //    in Loop: Header=BB1_14 Depth=1
	andi x1, x7, 16
	beqz x1, LBB1_169
LBB1_168:                               //  %cond.true384
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 252 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 252 ( x2 )
	lw x9, 0 ( x1 )
	jalr x0, LBB1_171 ( x0 )
LBB1_169:                               //  %cond.false386
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 252 ( x2 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	addi x4, x1, 4
	sw x4, 252 ( x2 )
	srli x28, x28, 20
	andi x4, x7, 64
	add x5, x0, x0
	lw x9, 0 ( x1 )
	or x1, x3, x28
	beq x4, x5, LBB1_171
LBB1_170:                               //  %cond.false386
                                        //    in Loop: Header=BB1_14 Depth=1
	and x9, x1, x9
LBB1_171:                               //  %cond.false386
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x4, 88 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x0
	add x1, x0, x11
	jalr x0, LBB1_206 ( x0 )
LBB1_172:                               //  %sw.bb411
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 252 ( x2 )
	ori x28, x0, $.str.4 & 0xfff
	slli x28, x28, 20
	addi x3, x0, 48
	addi x4, x1, 4
	sw x4, 252 ( x2 )
	lui x4, $.str.4 >> 12 & 0xfffff
	srli x28, x28, 20
	lw x9, 0 ( x1 )
	sb x3, 118 ( x2 )
	add x11, x0, x0
	addi x1, x0, 120
	sb x1, 119 ( x2 )
	or x8, x4, x28
	lw x7, 92 ( x2 )                //  4-byte Folded Reload
	nop
	ori x7, x7, 2
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	addi x1, x0, 2
	lw x4, 88 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_206 ( x0 )
LBB1_173:                               //  %sw.bb416
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 252 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 252 ( x2 )
	lw x10, 0 ( x1 )
	sb x0, 251 ( x2 )
	bgtu x10, x0, LBB1_179
LBB1_174:                               //  %if.then420
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x1, x0, 6
	lw x8, 72 ( x2 )                //  4-byte Folded Reload
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x3, LBB1_176
LBB1_175:                               //  %if.then420
                                        //    in Loop: Header=BB1_14 Depth=1
	add x3, x0, x1
LBB1_176:                               //  %if.then420
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x1, x0, 115
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	lui x1, $.str.5 >> 12 & 0xfffff
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
LBB1_177:                               //  %sw.epilog609
                                        //    in Loop: Header=BB1_14 Depth=1
	add x1, x0, x0
	add x10, x0, x1
	add x4, x0, x1
LBB1_178:                               //  %sw.epilog609
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x7, x2, 224
	addi x5, x0, 16
	jalr x0, LBB1_238 ( x0 )
LBB1_179:                               //  %if.else427
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x8, 72 ( x2 )                //  4-byte Folded Reload
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	sw x10, 84 ( x2 )               //  4-byte Folded Spill
	bgt x0, x12, LBB1_183
LBB1_180:                               //  %if.then430
                                        //    in Loop: Header=BB1_14 Depth=1
	add x11, x0, x0
	call $memchr
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	add x4, x0, x0
	add x3, x0, x4
	beq x10, x4, LBB1_182
LBB1_181:                               //  %if.then430
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x10, x1
LBB1_182:                               //  %if.then430
                                        //    in Loop: Header=BB1_14 Depth=1
	add x4, x0, x1
	addi x1, x0, 115
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x3
	add x3, x0, x4
	add x4, x0, x10
	jalr x0, LBB1_178 ( x0 )
LBB1_183:                               //  %if.else440
                                        //    in Loop: Header=BB1_14 Depth=1
	call $strlen
	add x3, x0, x10
	addi x1, x0, 115
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB1_177 ( x0 )
LBB1_184:                               //  %sw.bb444
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x1, x0, 85
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	lw x7, 92 ( x2 )                //  4-byte Folded Reload
	nop
	ori x7, x7, 16
	jalr x0, LBB1_186 ( x0 )
LBB1_185:                               //  %sw.bb446.loopexit
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x1, x0, 117
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	lw x7, 92 ( x2 )                //  4-byte Folded Reload
	nop
LBB1_186:                               //  %sw.bb446
                                        //    in Loop: Header=BB1_14 Depth=1
	andi x1, x7, 32
	lw x8, 72 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_188
LBB1_187:                               //  %cond.true449
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x3, 252 ( x2 )
	slti x1, x0, 1
	jalr x0, LBB1_166 ( x0 )
LBB1_188:                               //  %cond.false451
                                        //    in Loop: Header=BB1_14 Depth=1
	andi x1, x7, 16
	beqz x1, LBB1_190
LBB1_189:                               //  %cond.true454
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 252 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 252 ( x2 )
	lw x9, 0 ( x1 )
	jalr x0, LBB1_192 ( x0 )
LBB1_190:                               //  %cond.false456
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 252 ( x2 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	addi x4, x1, 4
	sw x4, 252 ( x2 )
	srli x28, x28, 20
	andi x4, x7, 64
	add x5, x0, x0
	lw x9, 0 ( x1 )
	or x1, x3, x28
	beq x4, x5, LBB1_192
LBB1_191:                               //  %cond.false456
                                        //    in Loop: Header=BB1_14 Depth=1
	and x9, x1, x9
LBB1_192:                               //  %cond.false456
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x4, 88 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x0
	slti x1, x0, 1
	jalr x0, LBB1_206 ( x0 )
LBB1_193:                               //  %hex.loopexit2866
                                        //    in Loop: Header=BB1_14 Depth=1
	ori x28, x0, $.str.4 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.4 >> 12 & 0xfffff
	jalr x0, LBB1_195 ( x0 )
LBB1_194:                               //  %hex.loopexit
                                        //    in Loop: Header=BB1_14 Depth=1
	ori x28, x0, $.str.6 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.6 >> 12 & 0xfffff
LBB1_195:                               //  %hex
                                        //    in Loop: Header=BB1_14 Depth=1
	srli x28, x28, 20
	or x8, x1, x28
	lw x7, 92 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x7, 32
	beqz x1, LBB1_197
LBB1_196:                               //  %cond.true485
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 252 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 252 ( x2 )
	lw x9, 0 ( x1 )
	addi x1, x3, 4
	sw x1, 252 ( x2 )
	lw x11, 0 ( x3 )
	lw x4, 88 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_202 ( x0 )
LBB1_197:                               //  %cond.false487
                                        //    in Loop: Header=BB1_14 Depth=1
	andi x1, x7, 16
	beqz x1, LBB1_199
LBB1_198:                               //  %cond.true490
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 252 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 252 ( x2 )
	lw x9, 0 ( x1 )
	jalr x0, LBB1_201 ( x0 )
LBB1_199:                               //  %cond.false492
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 252 ( x2 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	addi x4, x1, 4
	sw x4, 252 ( x2 )
	srli x28, x28, 20
	andi x4, x7, 64
	add x5, x0, x0
	lw x9, 0 ( x1 )
	or x1, x3, x28
	beq x4, x5, LBB1_201
LBB1_200:                               //  %cond.false492
                                        //    in Loop: Header=BB1_14 Depth=1
	and x9, x1, x9
LBB1_201:                               //  %cond.false492
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x4, 88 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x0
LBB1_202:                               //  %cond.end515
                                        //    in Loop: Header=BB1_14 Depth=1
	andi x1, x7, 1
	beqz x1, LBB1_205
LBB1_203:                               //  %cond.end515
                                        //    in Loop: Header=BB1_14 Depth=1
	or x1, x11, x9
	beqz x1, LBB1_205
LBB1_204:                               //  %if.then522
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x1, x0, 48
	sb x1, 118 ( x2 )
	lw x1, 108 ( x2 )               //  4-byte Folded Reload
	nop
	sb x1, 119 ( x2 )
	ori x7, x7, 2
LBB1_205:                               //  %nosign
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x1, x0, 2
LBB1_206:                               //  %nosign
                                        //    in Loop: Header=BB1_14 Depth=1
	sb x0, 251 ( x2 )
LBB1_207:                               //  %number
                                        //    in Loop: Header=BB1_14 Depth=1
	not x3, x0
	ble x4, x3, LBB1_209
LBB1_208:                               //    in Loop: Header=BB1_14 Depth=1
	andi x7, x7, -129
LBB1_209:                               //  %number
                                        //    in Loop: Header=BB1_14 Depth=1
	sw x7, 92 ( x2 )                //  4-byte Folded Spill
	bgtu x4, x0, LBB1_211
LBB1_210:                               //  %number
                                        //    in Loop: Header=BB1_14 Depth=1
	or x3, x11, x9
	beqz x3, LBB1_229
LBB1_211:                               //  %if.then540
                                        //    in Loop: Header=BB1_14 Depth=1
	beqz x1, LBB1_215
LBB1_212:                               //  %if.then540
                                        //    in Loop: Header=BB1_14 Depth=1
	andi x1, x1, 255
	xori x3, x1, 1
	beqz x3, LBB1_220
LBB1_213:                               //  %if.then540
                                        //    in Loop: Header=BB1_14 Depth=1
	xori x1, x1, 2
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB1_228
LBB1_214:                               //  %do.body577
                                        //    Parent Loop BB1_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	andi x1, x9, 15
	add x1, x1, x8
	lb x1, 0 ( x1 )
	nop
	sb x1, -1 ( x5 )
	srli x1, x9, 4
	slli x3, x11, 28
	or x9, x3, x1
	addi x5, x5, -1
	srli x11, x11, 4
	or x1, x11, x9
	bgtu x1, x0, LBB1_214
	jalr x0, LBB1_234 ( x0 )
LBB1_215:                               //  %do.body543.preheader
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x1, x2, 159
LBB1_216:                               //  %do.body543
                                        //    Parent Loop BB1_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	srli x3, x9, 3
	slli x4, x11, 29
	or x4, x4, x3
	andi x3, x9, 7
	ori x3, x3, 48
	sb x3, 0 ( x1 )
	addi x1, x1, -1
	srli x11, x11, 3
	or x5, x11, x4
	add x9, x0, x4
	bgtu x5, x0, LBB1_216
LBB1_217:                               //  %do.end550
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x5, x1, 1
	andi x4, x7, 1
	beqz x4, LBB1_234
LBB1_218:                               //  %do.end550
                                        //    in Loop: Header=BB1_14 Depth=1
	xori x3, x3, 48
	beqz x3, LBB1_234
LBB1_219:                               //  %if.then557
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x3, x0, 48
	sb x3, 0 ( x1 )
	jalr x0, LBB1_233 ( x0 )
LBB1_220:                               //  %sw.bb560
                                        //    in Loop: Header=BB1_14 Depth=1
	add x1, x0, x0
	bne x11, x1, LBB1_222
LBB1_221:                               //    in Loop: Header=BB1_14 Depth=1
	sltiu x1, x9, 10
LBB1_222:                               //  %sw.bb560
                                        //    in Loop: Header=BB1_14 Depth=1
	beqz x1, LBB1_424
LBB1_423:                               //  %sw.bb560
                                        //    in Loop: Header=BB1_14 Depth=1
	jalr x0, LBB1_416 ( x0 )
LBB1_424:                               //  %sw.bb560
                                        //    in Loop: Header=BB1_14 Depth=1
LBB1_223:                               //    in Loop: Header=BB1_14 Depth=1
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	sw x8, 72 ( x2 )                //  4-byte Folded Spill
LBB1_224:                               //  %do.body568
                                        //    Parent Loop BB1_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x11, 80 ( x2 )               //  4-byte Folded Spill
	sw x5, 84 ( x2 )                //  4-byte Folded Spill
	addi x12, x0, 10
	add x13, x0, x0
	add x8, x0, x9
	add x10, x0, x8
	call $__umoddi3
	sw x10, 64 ( x2 )               //  4-byte Folded Spill
	sw x8, 60 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	addi x12, x0, 10
	add x13, x0, x0
	call $__udivdi3
	lw x8, 80 ( x2 )                //  4-byte Folded Reload
	add x1, x0, x0
	bne x8, x1, LBB1_226
LBB1_225:                               //    in Loop: Header=BB1_224 Depth=2
	addi x1, x0, 9
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sltu x1, x1, x3
	jalr x0, LBB1_227 ( x0 )
LBB1_226:                               //  %do.body568
                                        //    in Loop: Header=BB1_224 Depth=2
	sltu x1, x0, x8
LBB1_227:                               //  %do.body568
                                        //    in Loop: Header=BB1_224 Depth=2
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	ori x3, x3, 48
	sb x3, -1 ( x5 )
	addi x5, x5, -1
	add x9, x0, x10
	lw x8, 72 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB1_224
	jalr x0, LBB1_234 ( x0 )
LBB1_228:                               //  %sw.default
                                        //    in Loop: Header=BB1_14 Depth=1
	lui x1, $.str.7 >> 12 & 0xfffff
	ori x28, x0, $.str.7 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x1, x28
	sw x10, 84 ( x2 )               //  4-byte Folded Spill
	call $strlen
	add x3, x0, x10
	jalr x0, LBB1_235 ( x0 )
LBB1_229:                               //  %if.else586
                                        //    in Loop: Header=BB1_14 Depth=1
	andi x1, x1, 255
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB1_234
LBB1_230:                               //  %if.else586
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 1
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_234
LBB1_231:                               //  %if.then593
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x1, x0, 48
LBB1_232:                               //  %if.end596
                                        //    in Loop: Header=BB1_14 Depth=1
	sb x1, 159 ( x2 )
	addi x1, x2, 159
LBB1_233:                               //  %if.end596
                                        //    in Loop: Header=BB1_14 Depth=1
	add x5, x0, x1
LBB1_234:                               //  %if.end596
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	sw x5, 84 ( x2 )                //  4-byte Folded Spill
	sub x3, x1, x5
LBB1_235:                               //  %sw.epilog609
                                        //    in Loop: Header=BB1_14 Depth=1
	add x1, x0, x0
	add x10, x0, x1
	addi x7, x2, 224
	addi x5, x0, 16
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
	lw x4, 88 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_239 ( x0 )
LBB1_236:                               //  %if.end606
                                        //    in Loop: Header=BB1_14 Depth=1
	sb x3, 120 ( x2 )
	sb x0, 251 ( x2 )
LBB1_237:                               //  %sw.epilog609
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x1, x2, 120
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	add x10, x0, x1
	add x4, x0, x1
	slti x3, x0, 1
	addi x7, x2, 224
	addi x5, x0, 16
	lw x8, 72 ( x2 )                //  4-byte Folded Reload
LBB1_238:                               //  %sw.epilog609
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
LBB1_239:                               //  %sw.epilog609
                                        //    in Loop: Header=BB1_14 Depth=1
	add x1, x0, x4
	sw x4, 88 ( x2 )                //  4-byte Folded Spill
	bgt x4, x3, LBB1_241
LBB1_240:                               //  %sw.epilog609
                                        //    in Loop: Header=BB1_14 Depth=1
	add x1, x0, x3
LBB1_241:                               //  %sw.epilog609
                                        //    in Loop: Header=BB1_14 Depth=1
	sw x3, 80 ( x2 )                //  4-byte Folded Spill
	sw x8, 72 ( x2 )                //  4-byte Folded Spill
	lbu x3, 251 ( x2 )
	nop
	sltu x3, x0, x3
	andi x3, x3, 1
	add x3, x1, x3
	andi x1, x11, 2
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	srli x1, x1, 1
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_243
LBB1_242:                               //    in Loop: Header=BB1_14 Depth=1
	addi x3, x3, 2
LBB1_243:                               //  %sw.epilog609
                                        //    in Loop: Header=BB1_14 Depth=1
	andi x1, x11, 132
	sw x11, 92 ( x2 )               //  4-byte Folded Spill
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	sw x3, 64 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB1_245
LBB1_244:                               //    in Loop: Header=BB1_14 Depth=1
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_255 ( x0 )
LBB1_245:                               //  %if.then628
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	sub x8, x1, x3
	bgt x8, x0, LBB1_247
LBB1_246:                               //    in Loop: Header=BB1_14 Depth=1
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_255 ( x0 )
LBB1_247:                               //  %while.cond633.preheader
                                        //    in Loop: Header=BB1_14 Depth=1
	ori x28, x0, $_vfprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfprintf_r.blanks >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	slti x3, x8, 17
	bgtu x3, x0, LBB1_252
LBB1_248:                               //  %while.body636
                                        //    Parent Loop BB1_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x5, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 16
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_250
LBB1_249:                               //    in Loop: Header=BB1_248 Depth=2
	addi x4, x4, 8
	jalr x0, LBB1_251 ( x0 )
LBB1_250:                               //  %if.then646
                                        //    in Loop: Header=BB1_248 Depth=2
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__sprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	beqz x10, LBB1_426
LBB1_425:                               //  %if.then646
                                        //    in Loop: Header=BB1_248 Depth=2
	jalr x0, LBB1_411 ( x0 )
LBB1_426:                               //  %if.then646
                                        //    in Loop: Header=BB1_248 Depth=2
LBB1_251:                               //  %if.end652
                                        //    in Loop: Header=BB1_248 Depth=2
	ori x28, x0, $_vfprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfprintf_r.blanks >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	addi x8, x8, -16
	bgt x8, x5, LBB1_248
LBB1_252:                               //  %while.end654
                                        //    in Loop: Header=BB1_14 Depth=1
	sw x8, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	add x1, x8, x1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_254
LBB1_253:                               //    in Loop: Header=BB1_14 Depth=1
	addi x4, x4, 8
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_255 ( x0 )
LBB1_254:                               //  %if.then664
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__sprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB1_428
LBB1_427:                               //  %if.then664
                                        //    in Loop: Header=BB1_14 Depth=1
	jalr x0, LBB1_411 ( x0 )
LBB1_428:                               //  %if.then664
                                        //    in Loop: Header=BB1_14 Depth=1
LBB1_255:                               //  %if.end672
                                        //    in Loop: Header=BB1_14 Depth=1
	lbu x1, 251 ( x2 )
	nop
	beqz x1, LBB1_259
LBB1_256:                               //  %if.then674
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x1, x2, 251
	sw x1, 0 ( x4 )
	slti x1, x0, 1
	sw x1, 4 ( x4 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_258
LBB1_257:                               //    in Loop: Header=BB1_14 Depth=1
	addi x4, x4, 8
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_259 ( x0 )
LBB1_258:                               //  %if.then684
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__sprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB1_411
LBB1_259:                               //  %if.end691
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB1_263
LBB1_260:                               //  %if.then694
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x1, x2, 118
	sw x1, 0 ( x4 )
	addi x1, x0, 2
	sw x1, 4 ( x4 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 2
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_262
LBB1_261:                               //    in Loop: Header=BB1_14 Depth=1
	addi x4, x4, 8
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_263 ( x0 )
LBB1_262:                               //  %if.then705
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__sprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB1_411
LBB1_263:                               //  %if.end712
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	xori x1, x1, 128
	bgtu x1, x0, LBB1_274
LBB1_264:                               //  %if.then716
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x1, x3
	bgt x8, x0, LBB1_266
LBB1_265:                               //    in Loop: Header=BB1_14 Depth=1
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_274 ( x0 )
LBB1_266:                               //  %while.cond721.preheader
                                        //    in Loop: Header=BB1_14 Depth=1
	ori x28, x0, $_vfprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	slti x3, x8, 17
	bgtu x3, x0, LBB1_271
LBB1_267:                               //  %while.body724
                                        //    Parent Loop BB1_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x5, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 16
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_269
LBB1_268:                               //    in Loop: Header=BB1_267 Depth=2
	addi x4, x4, 8
	jalr x0, LBB1_270 ( x0 )
LBB1_269:                               //  %if.then734
                                        //    in Loop: Header=BB1_267 Depth=2
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__sprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	bgtu x10, x0, LBB1_411
LBB1_270:                               //  %if.end740
                                        //    in Loop: Header=BB1_267 Depth=2
	ori x28, x0, $_vfprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	addi x8, x8, -16
	bgt x8, x5, LBB1_267
LBB1_271:                               //  %while.end742
                                        //    in Loop: Header=BB1_14 Depth=1
	sw x8, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	add x1, x8, x1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_273
LBB1_272:                               //    in Loop: Header=BB1_14 Depth=1
	addi x4, x4, 8
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_274 ( x0 )
LBB1_273:                               //  %if.then752
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__sprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB1_411
LBB1_274:                               //  %if.end760
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x1, x3
	ble x8, x0, LBB1_283
LBB1_275:                               //  %while.cond765.preheader
                                        //    in Loop: Header=BB1_14 Depth=1
	ori x28, x0, $_vfprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	slti x3, x8, 17
	bgtu x3, x0, LBB1_280
LBB1_276:                               //  %while.body768
                                        //    Parent Loop BB1_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x5, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 16
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_278
LBB1_277:                               //    in Loop: Header=BB1_276 Depth=2
	addi x4, x4, 8
	jalr x0, LBB1_279 ( x0 )
LBB1_278:                               //  %if.then778
                                        //    in Loop: Header=BB1_276 Depth=2
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__sprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	bgtu x10, x0, LBB1_411
LBB1_279:                               //  %if.end784
                                        //    in Loop: Header=BB1_276 Depth=2
	ori x28, x0, $_vfprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	addi x8, x8, -16
	bgt x8, x5, LBB1_276
LBB1_280:                               //  %while.end786
                                        //    in Loop: Header=BB1_14 Depth=1
	sw x8, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	add x1, x8, x1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_282
LBB1_281:                               //    in Loop: Header=BB1_14 Depth=1
	addi x4, x4, 8
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_283 ( x0 )
LBB1_282:                               //  %if.then796
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__sprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB1_411
LBB1_283:                               //  %if.end803
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x10, 92 ( x2 )               //  4-byte Folded Reload
	nop
	andi x1, x10, 256
	bgtu x1, x0, LBB1_286
LBB1_284:                               //  %if.then807
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x4 )
	sw x3, 4 ( x4 )
	lw x1, 8 ( x7 )
	nop
	add x1, x3, x1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_369
LBB1_285:                               //    in Loop: Header=BB1_14 Depth=1
	addi x4, x4, 8
	jalr x0, LBB1_394 ( x0 )
LBB1_286:                               //  %if.else824
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 108 ( x2 )               //  4-byte Folded Reload
	nop
	slti x1, x1, 102
	bgtu x1, x0, LBB1_370
LBB1_287:                               //  %if.then827
                                        //    in Loop: Header=BB1_14 Depth=1
	sw x4, 68 ( x2 )                //  4-byte Folded Spill
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	add x13, x0, x12
	call $__nedf2
	bgtu x10, x0, LBB1_305
LBB1_288:                               //  %if.then831
                                        //    in Loop: Header=BB1_14 Depth=1
	ori x28, x0, $.str.8 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.8 >> 12 & 0xfffff
	or x1, x1, x28
	lw x7, 68 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x7 )
	slti x1, x0, 1
	sw x1, 4 ( x7 )
	addi x4, x2, 224
	lw x1, 8 ( x4 )
	nop
	addi x1, x1, 1
	sw x1, 8 ( x4 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_290
LBB1_289:                               //    in Loop: Header=BB1_14 Depth=1
	addi x7, x7, 8
	addi x5, x0, 16
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	add x4, x0, x7
	jalr x0, LBB1_291 ( x0 )
LBB1_290:                               //  %if.then841
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x4
	call $__sprint_r
	addi x1, x2, 160
	add x4, x0, x1
	addi x5, x0, 16
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB1_411
LBB1_291:                               //  %if.end847
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 1
	bgtu x1, x0, LBB1_294
LBB1_292:                               //  %if.end847
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 244 ( x2 )
	nop
	bgt x3, x1, LBB1_294
LBB1_293:                               //    in Loop: Header=BB1_14 Depth=1
	addi x7, x2, 224
	jalr x0, LBB1_394 ( x0 )
LBB1_294:                               //  %if.then853
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x4 )
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 4 ( x4 )
	addi x7, x2, 224
	lw x1, 8 ( x7 )
	nop
	add x1, x3, x1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_296
LBB1_295:                               //    in Loop: Header=BB1_14 Depth=1
	addi x4, x4, 8
	jalr x0, LBB1_297 ( x0 )
LBB1_296:                               //  %if.then863
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__sprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	bgtu x10, x0, LBB1_411
LBB1_297:                               //  %if.end869
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	slti x1, x3, 2
	bgtu x1, x0, LBB1_394
LBB1_298:                               //  %while.cond874.preheader
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x8, x3, -1
	ori x28, x0, $_vfprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	slti x3, x8, 17
	bgtu x3, x0, LBB1_303
LBB1_299:                               //  %while.body877
                                        //    Parent Loop BB1_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x5, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 16
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_301
LBB1_300:                               //    in Loop: Header=BB1_299 Depth=2
	addi x4, x4, 8
	jalr x0, LBB1_302 ( x0 )
LBB1_301:                               //  %if.then887
                                        //    in Loop: Header=BB1_299 Depth=2
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__sprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	bgtu x10, x0, LBB1_411
LBB1_302:                               //  %if.end893
                                        //    in Loop: Header=BB1_299 Depth=2
	ori x28, x0, $_vfprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	addi x8, x8, -16
	bgt x8, x5, LBB1_299
LBB1_303:                               //  %while.end895
                                        //    in Loop: Header=BB1_14 Depth=1
	sw x8, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	add x1, x8, x1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_369
LBB1_304:                               //    in Loop: Header=BB1_14 Depth=1
	addi x4, x4, 8
	jalr x0, LBB1_394 ( x0 )
LBB1_305:                               //  %if.else914
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x3, 244 ( x2 )
	addi x7, x2, 224
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	bgt x3, x0, LBB1_328
LBB1_306:                               //  %if.then917
                                        //    in Loop: Header=BB1_14 Depth=1
	ori x28, x0, $.str.8 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.8 >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	slti x1, x0, 1
	sw x1, 4 ( x4 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	add x5, x0, x4
	addi x4, x1, 1
	sw x4, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_308
LBB1_307:                               //    in Loop: Header=BB1_14 Depth=1
	addi x5, x5, 8
	add x9, x0, x5
	jalr x0, LBB1_310 ( x0 )
LBB1_308:                               //  %if.then927
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x7
	call $__sprint_r
	bgtu x10, x0, LBB1_411
LBB1_309:                               //  %if.then927.if.end933_crit_edge
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x3, 244 ( x2 )
	addi x1, x2, 160
	add x9, x0, x1
	addi x7, x2, 224
LBB1_310:                               //  %if.end933
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x5, x0, 16
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 1
	lw x4, 32 ( x2 )                //  4-byte Folded Reload
	nop
	or x1, x4, x1
	or x1, x3, x1
	bgtu x1, x0, LBB1_312
LBB1_311:                               //    in Loop: Header=BB1_14 Depth=1
	add x4, x0, x9
	jalr x0, LBB1_394 ( x0 )
LBB1_312:                               //  %if.then940
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x9 )
	lw x4, 52 ( x2 )                //  4-byte Folded Reload
	nop
	sw x4, 4 ( x9 )
	lw x1, 8 ( x7 )
	nop
	add x1, x4, x1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x4, x1, 1
	sw x4, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_314
LBB1_313:                               //    in Loop: Header=BB1_14 Depth=1
	addi x1, x9, 8
	jalr x0, LBB1_316 ( x0 )
LBB1_314:                               //  %if.then950
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x7
	call $__sprint_r
	bgtu x10, x0, LBB1_411
LBB1_315:                               //  %if.then950.if.end956_crit_edge
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x3, 244 ( x2 )
	addi x1, x2, 160
	addi x7, x2, 224
	addi x5, x0, 16
LBB1_316:                               //  %if.end956
                                        //    in Loop: Header=BB1_14 Depth=1
	bgt x0, x3, LBB1_318
LBB1_317:                               //    in Loop: Header=BB1_14 Depth=1
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_326 ( x0 )
LBB1_318:                               //  %while.cond961.preheader
                                        //    in Loop: Header=BB1_14 Depth=1
	sub x8, x0, x3
	ori x28, x0, $_vfprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, $_vfprintf_r.zeroes >> 12 & 0xfffff
	or x4, x4, x28
	sw x4, 0 ( x1 )
	addi x4, x1, 4
	addi x9, x0, -17
	bgt x3, x9, LBB1_323
LBB1_319:                               //  %while.body964
                                        //    Parent Loop BB1_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x5, 0 ( x4 )
	lw x3, 8 ( x7 )
	nop
	addi x3, x3, 16
	sw x3, 8 ( x7 )
	lw x3, 228 ( x2 )
	nop
	addi x4, x3, 1
	sw x4, 228 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB1_321
LBB1_320:                               //    in Loop: Header=BB1_319 Depth=2
	addi x1, x1, 8
	jalr x0, LBB1_322 ( x0 )
LBB1_321:                               //  %if.then974
                                        //    in Loop: Header=BB1_319 Depth=2
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__sprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	bgtu x10, x0, LBB1_411
LBB1_322:                               //  %if.end980
                                        //    in Loop: Header=BB1_319 Depth=2
	ori x28, x0, $_vfprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $_vfprintf_r.zeroes >> 12 & 0xfffff
	or x3, x3, x28
	sw x3, 0 ( x1 )
	addi x4, x1, 4
	addi x8, x8, -16
	bgt x8, x5, LBB1_319
LBB1_323:                               //  %while.end982
                                        //    in Loop: Header=BB1_14 Depth=1
	sw x8, 0 ( x4 )
	lw x3, 8 ( x7 )
	nop
	add x3, x8, x3
	sw x3, 8 ( x7 )
	lw x3, 228 ( x2 )
	nop
	addi x4, x3, 1
	sw x4, 228 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB1_325
LBB1_324:                               //    in Loop: Header=BB1_14 Depth=1
	addi x1, x1, 8
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_326 ( x0 )
LBB1_325:                               //  %if.then992
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__sprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB1_411
LBB1_326:                               //  %if.end999
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x4, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x4, 0 ( x1 )
	sw x3, 4 ( x1 )
	add x4, x0, x3
	lw x3, 8 ( x7 )
	nop
	add x3, x4, x3
	sw x3, 8 ( x7 )
	lw x3, 228 ( x2 )
	nop
	addi x4, x3, 1
	sw x4, 228 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB1_369
LBB1_327:                               //    in Loop: Header=BB1_14 Depth=1
	addi x4, x1, 8
	jalr x0, LBB1_394 ( x0 )
LBB1_328:                               //  %if.else1017
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x8, x0, x3
	addi x5, x0, 16
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x1, x3, LBB1_330
LBB1_329:                               //  %if.else1017
                                        //    in Loop: Header=BB1_14 Depth=1
	add x8, x0, x1
LBB1_330:                               //  %if.else1017
                                        //    in Loop: Header=BB1_14 Depth=1
	ble x8, x0, LBB1_334
LBB1_331:                               //  %if.then1029
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x4 )
	sw x8, 4 ( x4 )
	lw x1, 8 ( x7 )
	nop
	add x1, x8, x1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_333
LBB1_332:                               //    in Loop: Header=BB1_14 Depth=1
	addi x4, x4, 8
	jalr x0, LBB1_334 ( x0 )
LBB1_333:                               //  %if.then1039
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__sprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	bgtu x10, x0, LBB1_411
LBB1_334:                               //  %if.end1046
                                        //    in Loop: Header=BB1_14 Depth=1
	add x1, x0, x0
	bgt x8, x1, LBB1_336
LBB1_335:                               //  %if.end1046
                                        //    in Loop: Header=BB1_14 Depth=1
	add x8, x0, x1
LBB1_336:                               //  %if.end1046
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x1, x8
	ble x8, x0, LBB1_345
LBB1_337:                               //  %while.cond1057.preheader
                                        //    in Loop: Header=BB1_14 Depth=1
	ori x28, x0, $_vfprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	slti x3, x8, 17
	bgtu x3, x0, LBB1_342
LBB1_338:                               //  %while.body1060
                                        //    Parent Loop BB1_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x5, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 16
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_340
LBB1_339:                               //    in Loop: Header=BB1_338 Depth=2
	addi x4, x4, 8
	jalr x0, LBB1_341 ( x0 )
LBB1_340:                               //  %if.then1070
                                        //    in Loop: Header=BB1_338 Depth=2
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__sprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	bgtu x10, x0, LBB1_411
LBB1_341:                               //  %if.end1076
                                        //    in Loop: Header=BB1_338 Depth=2
	ori x28, x0, $_vfprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	addi x8, x8, -16
	bgt x8, x5, LBB1_338
LBB1_342:                               //  %while.end1078
                                        //    in Loop: Header=BB1_14 Depth=1
	sw x8, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	add x1, x8, x1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_344
LBB1_343:                               //    in Loop: Header=BB1_14 Depth=1
	addi x4, x4, 8
	jalr x0, LBB1_345 ( x0 )
LBB1_344:                               //  %if.then1088
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__sprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	bgtu x10, x0, LBB1_411
LBB1_345:                               //  %cleanup.cont
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 244 ( x2 )
	lw x3, 92 ( x2 )                //  4-byte Folded Reload
	nop
	andi x3, x3, 1
	bgtu x3, x0, LBB1_347
LBB1_346:                               //  %cleanup.cont
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	ble x3, x1, LBB1_351
LBB1_347:                               //  %if.then1102
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 0 ( x4 )
	add x9, x0, x4
	lw x4, 52 ( x2 )                //  4-byte Folded Reload
	nop
	sw x4, 4 ( x9 )
	lw x3, 8 ( x7 )
	nop
	add x3, x4, x3
	sw x3, 8 ( x7 )
	lw x3, 228 ( x2 )
	nop
	addi x4, x3, 1
	sw x4, 228 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB1_349
LBB1_348:                               //    in Loop: Header=BB1_14 Depth=1
	addi x9, x9, 8
	add x4, x0, x9
	jalr x0, LBB1_351 ( x0 )
LBB1_349:                               //  %if.then1112
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x7
	call $__sprint_r
	bgtu x10, x0, LBB1_411
LBB1_350:                               //  %if.then1112.if.end1119_crit_edge
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 244 ( x2 )
	addi x3, x2, 160
	add x4, x0, x3
	addi x7, x2, 224
	addi x5, x0, 16
LBB1_351:                               //  %if.end1119
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x9, 28 ( x2 )                //  4-byte Folded Reload
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x3, x1
	sub x3, x3, x9
	bgt x3, x8, LBB1_353
LBB1_352:                               //  %if.end1119
                                        //    in Loop: Header=BB1_14 Depth=1
	add x8, x0, x3
LBB1_353:                               //  %if.end1119
                                        //    in Loop: Header=BB1_14 Depth=1
	ble x8, x0, LBB1_358
LBB1_354:                               //  %if.then1133
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x9, x3
	sw x3, 0 ( x4 )
	sw x8, 4 ( x4 )
	lw x3, 8 ( x7 )
	nop
	add x3, x8, x3
	sw x3, 8 ( x7 )
	lw x3, 228 ( x2 )
	add x9, x0, x4
	addi x4, x3, 1
	sw x4, 228 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB1_356
LBB1_355:                               //    in Loop: Header=BB1_14 Depth=1
	addi x9, x9, 8
	add x4, x0, x9
	jalr x0, LBB1_358 ( x0 )
LBB1_356:                               //  %if.then1143
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x7
	call $__sprint_r
	bgtu x10, x0, LBB1_411
LBB1_357:                               //  %if.then1143.if.end1150_crit_edge
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 244 ( x2 )
	addi x3, x2, 160
	add x4, x0, x3
	addi x7, x2, 224
	addi x5, x0, 16
LBB1_358:                               //  %if.end1150
                                        //    in Loop: Header=BB1_14 Depth=1
	add x9, x0, x4
	add x3, x0, x0
	ble x8, x3, LBB1_360
LBB1_359:                               //    in Loop: Header=BB1_14 Depth=1
	sub x3, x0, x8
LBB1_360:                               //  %if.end1150
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x4, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x4, x1
	add x8, x3, x1
	bgt x8, x0, LBB1_362
LBB1_361:                               //    in Loop: Header=BB1_14 Depth=1
	add x4, x0, x9
	jalr x0, LBB1_394 ( x0 )
LBB1_362:                               //  %while.cond1162.preheader
                                        //    in Loop: Header=BB1_14 Depth=1
	ori x28, x0, $_vfprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	add x4, x0, x9
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	slti x3, x8, 17
	bgtu x3, x0, LBB1_367
LBB1_363:                               //  %while.body1165
                                        //    Parent Loop BB1_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x5, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 16
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_365
LBB1_364:                               //    in Loop: Header=BB1_363 Depth=2
	addi x4, x4, 8
	jalr x0, LBB1_366 ( x0 )
LBB1_365:                               //  %if.then1175
                                        //    in Loop: Header=BB1_363 Depth=2
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__sprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	bgtu x10, x0, LBB1_411
LBB1_366:                               //  %if.end1181
                                        //    in Loop: Header=BB1_363 Depth=2
	ori x28, x0, $_vfprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	addi x8, x8, -16
	bgt x8, x5, LBB1_363
LBB1_367:                               //  %while.end1183
                                        //    in Loop: Header=BB1_14 Depth=1
	sw x8, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	add x1, x8, x1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_369
LBB1_368:                               //    in Loop: Header=BB1_14 Depth=1
	addi x4, x4, 8
	jalr x0, LBB1_394 ( x0 )
LBB1_369:                               //  %if.then817
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__sprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	beqz x10, LBB1_394
	jalr x0, LBB1_411 ( x0 )
LBB1_370:                               //  %if.else1209
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x4 )
	slti x1, x0, 1
	add x5, x0, x1
	sw x5, 4 ( x4 )
	lw x1, 8 ( x7 )
	nop
	addi x3, x1, 1
	sw x3, 8 ( x7 )
	addi x11, x4, 8
	lw x4, 228 ( x2 )
	nop
	addi x1, x4, 1
	sw x1, 228 ( x2 )
	lw x9, 32 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x9, x5, LBB1_372
LBB1_371:                               //  %if.else1209
                                        //    in Loop: Header=BB1_14 Depth=1
	andi x5, x10, 1
	beqz x5, LBB1_389
LBB1_372:                               //  %if.then1215
                                        //    in Loop: Header=BB1_14 Depth=1
	slti x4, x4, 7
	bgtu x4, x0, LBB1_375
LBB1_373:                               //  %if.then1225
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x7
	add x12, x0, x8
	call $__sprint_r
	bgtu x10, x0, LBB1_411
LBB1_374:                               //  %if.then1225.if.end1231_crit_edge
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 228 ( x2 )
	lw x3, 8 ( x8 )
	addi x4, x2, 160
	add x11, x0, x4
	add x7, x0, x8
LBB1_375:                               //  %if.end1231
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sw x4, 0 ( x11 )
	lw x4, 52 ( x2 )                //  4-byte Folded Reload
	nop
	sw x4, 4 ( x11 )
	add x3, x4, x3
	sw x3, 8 ( x7 )
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_377
LBB1_376:                               //    in Loop: Header=BB1_14 Depth=1
	addi x11, x11, 8
	add x12, x0, x0
	jalr x0, LBB1_378 ( x0 )
LBB1_377:                               //  %if.then1242
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x7
	call $__sprint_r
	addi x1, x2, 160
	add x11, x0, x1
	add x12, x0, x0
	bgtu x10, x0, LBB1_411
LBB1_378:                               //  %if.end1248
                                        //    in Loop: Header=BB1_14 Depth=1
	sw x11, 108 ( x2 )              //  4-byte Folded Spill
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x12
	call $__eqdf2
	beqz x10, LBB1_381
LBB1_379:                               //  %if.then1251
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	lw x11, 108 ( x2 )              //  4-byte Folded Reload
	nop
	sw x1, 0 ( x11 )
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	sw x1, 4 ( x11 )
	addi x7, x2, 224
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_390
LBB1_380:                               //    in Loop: Header=BB1_14 Depth=1
	addi x11, x11, 8
	jalr x0, LBB1_391 ( x0 )
LBB1_381:                               //  %if.else1270
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	slti x1, x3, 2
	addi x7, x2, 224
	lw x11, 108 ( x2 )              //  4-byte Folded Reload
	bgtu x1, x0, LBB1_391
LBB1_382:                               //  %while.cond1275.preheader
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x8, x3, -1
	ori x28, x0, $_vfprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x11 )
	addi x1, x11, 4
	slti x3, x8, 17
	addi x4, x0, 16
	bgtu x3, x0, LBB1_387
LBB1_383:                               //  %while.body1278
                                        //    Parent Loop BB1_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x4, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 16
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_385
LBB1_384:                               //    in Loop: Header=BB1_383 Depth=2
	addi x11, x11, 8
	jalr x0, LBB1_386 ( x0 )
LBB1_385:                               //  %if.then1288
                                        //    in Loop: Header=BB1_383 Depth=2
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__sprint_r
	addi x4, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x11, x0, x1
	bgtu x10, x0, LBB1_411
LBB1_386:                               //  %if.end1294
                                        //    in Loop: Header=BB1_383 Depth=2
	ori x28, x0, $_vfprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x11 )
	addi x1, x11, 4
	addi x8, x8, -16
	bgt x8, x4, LBB1_383
LBB1_387:                               //  %while.end1296
                                        //    in Loop: Header=BB1_14 Depth=1
	sw x8, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	add x1, x8, x1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_390
LBB1_388:                               //    in Loop: Header=BB1_14 Depth=1
	addi x11, x11, 8
	jalr x0, LBB1_391 ( x0 )
LBB1_389:                               //  %if.else1315
                                        //    in Loop: Header=BB1_14 Depth=1
	slti x1, x4, 7
	bgtu x1, x0, LBB1_391
LBB1_390:                               //  %if.then1325
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__sprint_r
	addi x7, x2, 224
	addi x1, x2, 160
	add x11, x0, x1
	bgtu x10, x0, LBB1_411
LBB1_391:                               //  %if.end1332
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x1, x2, 237
	sw x1, 0 ( x11 )
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 4 ( x11 )
	lw x1, 8 ( x7 )
	nop
	add x1, x3, x1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_393
LBB1_392:                               //    in Loop: Header=BB1_14 Depth=1
	addi x4, x11, 8
	addi x5, x0, 16
	jalr x0, LBB1_394 ( x0 )
LBB1_393:                               //  %if.then1343
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__sprint_r
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	addi x5, x0, 16
	bgtu x10, x0, LBB1_411
LBB1_394:                               //  %if.end1351
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 4
	beqz x1, LBB1_403
LBB1_395:                               //  %if.then1354
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x1, x3
	ble x8, x0, LBB1_403
LBB1_396:                               //  %while.cond1359.preheader
                                        //    in Loop: Header=BB1_14 Depth=1
	ori x28, x0, $_vfprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfprintf_r.blanks >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	slti x3, x8, 17
	bgtu x3, x0, LBB1_401
LBB1_397:                               //  %while.body1362
                                        //    Parent Loop BB1_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x5, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 16
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_399
LBB1_398:                               //    in Loop: Header=BB1_397 Depth=2
	addi x4, x4, 8
	jalr x0, LBB1_400 ( x0 )
LBB1_399:                               //  %if.then1372
                                        //    in Loop: Header=BB1_397 Depth=2
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__sprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	bgtu x10, x0, LBB1_411
LBB1_400:                               //  %if.end1378
                                        //    in Loop: Header=BB1_397 Depth=2
	ori x28, x0, $_vfprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfprintf_r.blanks >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	addi x8, x8, -16
	bgt x8, x5, LBB1_397
LBB1_401:                               //  %while.end1380
                                        //    in Loop: Header=BB1_14 Depth=1
	sw x8, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	add x1, x8, x1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	bgtu x1, x0, LBB1_403
LBB1_402:                               //  %if.then1390
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__sprint_r
	addi x7, x2, 224
	bgtu x10, x0, LBB1_411
LBB1_403:                               //  %if.end1398
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x3, x1, LBB1_405
LBB1_404:                               //  %if.end1398
                                        //    in Loop: Header=BB1_14 Depth=1
	add x3, x0, x1
LBB1_405:                               //  %if.end1398
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	lw x1, 232 ( x2 )
	nop
	beqz x1, LBB1_407
LBB1_406:                               //  %land.lhs.true1408
                                        //    in Loop: Header=BB1_14 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__sprint_r
	addi x7, x2, 224
	bgtu x10, x0, LBB1_411
LBB1_407:                               //  %if.end1412
                                        //    in Loop: Header=BB1_14 Depth=1
	sw x0, 228 ( x2 )
	addi x5, x2, 160
	jalr x0, LBB1_14 ( x0 )
LBB1_408:                               //  %done
	lw x1, 232 ( x2 )
	nop
	beqz x1, LBB1_410
LBB1_409:                               //  %land.lhs.true1421
	addi x12, x2, 224
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	nop
	call $__sprint_r
	bgtu x10, x0, LBB1_411
LBB1_410:                               //  %if.end1425
	sw x0, 228 ( x2 )
LBB1_411:                               //  %if.end1431
	lw x1, 100 ( x2 )               //  4-byte Folded Reload
	nop
	lbu x1, 12 ( x1 )
	nop
	andi x1, x1, 64
	srli x1, x1, 6
	beqz x1, LBB1_413
LBB1_412:
	not x10, x0
	jalr x0, LBB1_414 ( x0 )
LBB1_413:                               //  %if.end1431
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
LBB1_414:                               //  %cleanup1453
	lw x8, 268 ( x2 )               //  4-byte Folded Reload
	lw x1, 276 ( x2 )
$cfi6:
	.cfi_same_value 1
	addi x2, x2, 280
$cfi7:
	.cfi_adjust_cfa_offset -280
$cfi8:
	.cfi_def_cfa 2, 0
	ret
LBB1_415:                               //  %if.else20.i
                                        //    in Loop: Header=BB1_14 Depth=1
	add x12, x0, x8
	addi x1, x0, 48
	addi x3, x2, 237
	sb x1, 2 ( x3 )
	addi x1, x10, 48
	sb x1, 240 ( x2 )
	add x1, x0, x9
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_135 ( x0 )
LBB1_416:                               //  %if.then563
                                        //    in Loop: Header=BB1_14 Depth=1
	addi x1, x9, 48
	jalr x0, LBB1_232 ( x0 )
$func_end1:
	.size	$_vfprintf_r, ($func_end1)-($_vfprintf_r)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	LBB1_408
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_30
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_32
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_35
	.long	LBB1_38
	.long	LBB1_236
	.long	LBB1_37
	.long	LBB1_39
	.long	LBB1_236
	.long	LBB1_48
	.long	LBB1_49
	.long	LBB1_49
	.long	LBB1_49
	.long	LBB1_49
	.long	LBB1_49
	.long	LBB1_49
	.long	LBB1_49
	.long	LBB1_49
	.long	LBB1_49
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_58
	.long	LBB1_72
	.long	LBB1_236
	.long	LBB1_72
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_51
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_162
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_184
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_194
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_57
	.long	LBB1_59
	.long	LBB1_72
	.long	LBB1_72
	.long	LBB1_72
	.long	LBB1_52
	.long	LBB1_59
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_53
	.long	LBB1_236
	.long	LBB1_154
	.long	LBB1_163
	.long	LBB1_172
	.long	LBB1_56
	.long	LBB1_236
	.long	LBB1_173
	.long	LBB1_236
	.long	LBB1_185
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_193

	.text
	.type	$__sbprintf,@function
$__sbprintf:                            //  @__sbprintf
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi9:
	.cfi_def_cfa 2, 0
$cfi10:
	.cfi_val_offset 2, 0
	addi x2, x2, -1152
$cfi11:
	.cfi_adjust_cfa_offset 1152
	sw x1, 1148 ( x2 )
$cfi12:
	.cfi_offset 1, -4
	sw x8, 1140 ( x2 )              //  4-byte Folded Spill
	add x8, x0, x11
	ori x28, x0, 65533 & 0xfff
	lhu x1, 12 ( x8 )
	slli x28, x28, 20
	lw x3, 100 ( x8 )
	lh x4, 14 ( x8 )
	lw x5, 28 ( x8 )
	lw x7, 36 ( x8 )
	addi x11, x2, 1036
	lui x9, 65533 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x15, x2, 12
	addi x14, x0, 1024
	or x9, x9, x28
	and x1, x9, x1
	sh x1, 12 ( x11 )
	sw x3, 100 ( x11 )
	sh x4, 14 ( x11 )
	sw x5, 28 ( x11 )
	sw x7, 36 ( x11 )
	sw x15, 1036 ( x2 )
	sw x15, 16 ( x11 )
	sw x14, 8 ( x11 )
	sw x14, 1056 ( x2 )
	sw x0, 24 ( x11 )
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	call $_vfprintf_r
	add x3, x0, x10
	bgt x0, x3, LBB2_3
LBB2_1:                                 //  %land.lhs.true
	addi x11, x2, 1036
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	call $_fflush_r
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	add x1, x0, x0
	beq x10, x1, LBB2_3
LBB2_2:                                 //  %land.lhs.true
	not x3, x0
LBB2_3:                                 //  %if.end
	lbu x1, 1048 ( x2 )
	nop
	andi x1, x1, 64
	beqz x1, LBB2_5
LBB2_4:                                 //  %if.then15
	lh x1, 12 ( x8 )
	nop
	ori x1, x1, 64
	sh x1, 12 ( x8 )
LBB2_5:                                 //  %if.end19
	add x10, x0, x3
	lw x8, 1140 ( x2 )              //  4-byte Folded Reload
	lw x1, 1148 ( x2 )
$cfi13:
	.cfi_same_value 1
	addi x2, x2, 1152
$cfi14:
	.cfi_adjust_cfa_offset -1152
$cfi15:
	.cfi_def_cfa 2, 0
	ret
$func_end2:
	.size	$__sbprintf, ($func_end2)-($__sbprintf)
	.cfi_endproc

	.address_space	0	
	.address_space	0	
	.type	$_vfprintf_r.blanks,@object //  @_vfprintf_r.blanks
	.section	.rodata,"a",@progbits
$_vfprintf_r.blanks:
	.zero	16,32
	.size	$_vfprintf_r.blanks, 16

	.address_space	0	
	.type	$_vfprintf_r.zeroes,@object //  @_vfprintf_r.zeroes
$_vfprintf_r.zeroes:
	.zero	16,48
	.size	$_vfprintf_r.zeroes, 16

	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"INF"
	.size	$.str, 4

	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
$.str.1:
	.asciz	"inf"
	.size	$.str.1, 4

	.address_space	0	
	.type	$.str.2,@object         //  @.str.2
$.str.2:
	.asciz	"NAN"
	.size	$.str.2, 4

	.address_space	0	
	.type	$.str.3,@object         //  @.str.3
$.str.3:
	.asciz	"nan"
	.size	$.str.3, 4

	.address_space	0	
	.type	$.str.4,@object         //  @.str.4
$.str.4:
	.asciz	"0123456789abcdef"
	.size	$.str.4, 17

	.address_space	0	
	.type	$.str.5,@object         //  @.str.5
$.str.5:
	.asciz	"(null)"
	.size	$.str.5, 7

	.address_space	0	
	.type	$.str.6,@object         //  @.str.6
$.str.6:
	.asciz	"0123456789ABCDEF"
	.size	$.str.6, 17

	.address_space	0	
	.type	$.str.7,@object         //  @.str.7
$.str.7:
	.asciz	"bug in vfprintf: bad base"
	.size	$.str.7, 26

	.address_space	0	
	.type	$.str.8,@object         //  @.str.8
$.str.8:
	.asciz	"0"
	.size	$.str.8, 2


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
