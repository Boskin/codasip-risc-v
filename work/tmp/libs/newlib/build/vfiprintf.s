	.text
	.file	"vfiprintf.bc"
	.globl	$__sprint_r
	.type	$__sprint_r,@function
$__sprint_r:                            //  @__sprint_r
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
	add x8, x0, x12
	add x4, x0, x11
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	lw x1, 8 ( x8 )
	nop
	bgtu x1, x0, LBB0_2
LBB0_1:
	add x10, x0, x0
	jalr x0, LBB0_14 ( x0 )
LBB0_2:                                 //  %if.end
	lbu x3, 101 ( x4 )
	nop
	andi x3, x3, 32
	beqz x3, LBB0_12
LBB0_3:                                 //  %for.body.preheader
	lw x7, 0 ( x8 )
	add x5, x0, x0
	sw x8, 8 ( x2 )                 //  4-byte Folded Spill
	sw x4, 12 ( x2 )                //  4-byte Folded Spill
LBB0_4:                                 //  %for.body
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_7 Depth 2
	lw x3, 4 ( x7 )
	nop
	srli x3, x3, 1
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	beqz x3, LBB0_10
LBB0_5:                                 //  %for.body6.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x7, 4 ( x2 )                 //  4-byte Folded Spill
	lw x3, 0 ( x7 )
	add x8, x0, x5
	jalr x0, LBB0_7 ( x0 )
LBB0_6:                                 //  %for.cond4
                                        //    in Loop: Header=BB0_7 Depth=2
	addi x8, x8, 1
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 2
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	ble x1, x8, LBB0_9
LBB0_7:                                 //  %for.body6
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	lh x11, 0 ( x3 )
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x4
	call $_fputwc_r
	xori x1, x10, -1
	bgtu x1, x0, LBB0_6
LBB0_8:
	lw x8, 8 ( x2 )                 //  4-byte Folded Reload
	not x10, x0
	jalr x0, LBB0_13 ( x0 )
LBB0_9:                                 //  %for.inc10.loopexit
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x8, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	lw x1, 8 ( x8 )
	add x5, x0, x0
	lw x7, 4 ( x2 )                 //  4-byte Folded Reload
LBB0_10:                                //  %for.inc10
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	slli x3, x3, 1
	sub x1, x1, x3
	sw x1, 8 ( x8 )
	addi x7, x7, 8
	bgtu x1, x0, LBB0_4
LBB0_11:
	add x10, x0, x5
	jalr x0, LBB0_13 ( x0 )
LBB0_12:                                //  %if.else
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x4
	add x12, x0, x8
	call $__sfvwrite_r
LBB0_13:                                //  %out
	sw x0, 8 ( x8 )
LBB0_14:                                //  %cleanup20.sink.split
	sw x0, 4 ( x8 )
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
	.size	$__sprint_r, ($func_end0)-($__sprint_r)
	.cfi_endproc

	.globl	$vfiprintf
	.type	$vfiprintf,@function
$vfiprintf:                             //  @vfiprintf
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
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
	j $_vfiprintf_r
$func_end1:
	.size	$vfiprintf, ($func_end1)-($vfiprintf)
	.cfi_endproc

	.globl	$_vfiprintf_r
	.type	$_vfiprintf_r,@function
$_vfiprintf_r:                          //  @_vfiprintf_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi9:
	.cfi_def_cfa 2, 0
$cfi10:
	.cfi_val_offset 2, 0
	addi x2, x2, -216
$cfi11:
	.cfi_adjust_cfa_offset 216
	sw x1, 212 ( x2 )
$cfi12:
	.cfi_offset 1, -4
	sw x8, 204 ( x2 )               //  4-byte Folded Spill
	sw x12, 72 ( x2 )               //  4-byte Folded Spill
	add x9, x0, x11
	add x8, x0, x10
	sw x13, 68 ( x2 )               //  4-byte Folded Spill
	sw x13, 200 ( x2 )
	sw x9, 64 ( x2 )                //  4-byte Folded Spill
	beqz x8, LBB2_3
LBB2_1:                                 //  %land.lhs.true
	lw x1, 56 ( x8 )
	nop
	bgtu x1, x0, LBB2_3
LBB2_2:                                 //  %if.then
	add x10, x0, x8
	call $__sinit
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	nop
LBB2_3:                                 //  %if.end
	lh x1, 12 ( x9 )
	lui x3, 8192>>12 
	and x4, x3, x1
	bgtu x4, x0, LBB2_5
LBB2_4:                                 //  %if.then12
	or x1, x3, x1
	sh x1, 12 ( x9 )
	ori x28, x0, -8193 & 0xfff
	lw x3, 100 ( x9 )
	slli x28, x28, 20
	lui x4, -8193 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	and x3, x4, x3
	sw x3, 100 ( x9 )
LBB2_5:                                 //  %do.end20
	andi x3, x1, 8
	sw x8, 60 ( x2 )                //  4-byte Folded Spill
	beqz x3, LBB2_7
LBB2_6:                                 //  %lor.lhs.false
	lw x3, 16 ( x9 )
	nop
	bgtu x3, x0, LBB2_10
LBB2_7:                                 //  %land.lhs.true27
	add x10, x0, x8
	add x11, x0, x9
	add x8, x0, x9
	call $__swsetup_r
	beqz x10, LBB2_9
LBB2_8:
	not x10, x0
	jalr x0, LBB2_376 ( x0 )
LBB2_9:                                 //  %land.lhs.true27.if.end42_crit_edge
	lh x1, 12 ( x8 )
	add x9, x0, x8
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
LBB2_10:                                //  %if.end42
	andi x1, x1, 26
	xori x1, x1, 10
	bgtu x1, x0, LBB2_13
LBB2_11:                                //  %land.lhs.true48
	lh x1, 14 ( x9 )
	nop
	bgt x0, x1, LBB2_13
LBB2_12:                                //  %if.then52
	add x10, x0, x8
	add x11, x0, x9
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	lw x13, 68 ( x2 )               //  4-byte Folded Reload
	nop
	call $__sbprintf
	jalr x0, LBB2_376 ( x0 )
LBB2_13:                                //  %if.end66
	addi x4, x2, 120
	addi x11, x2, 184
	add x3, x0, x0
	addi x1, x2, 80
	sw x4, 184 ( x2 )
	sw x0, 8 ( x11 )
	addi x1, x1, 40
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	sw x0, 188 ( x2 )
	add x1, x0, x3
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
LBB2_14:                                //  %for.cond.outer
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB2_15 Depth 2
                                        //        Child Loop BB2_16 Depth 3
                                        //          Child Loop BB2_17 Depth 4
                                        //          Child Loop BB2_28 Depth 4
                                        //            Child Loop BB2_31 Depth 5
                                        //          Child Loop BB2_40 Depth 4
                                        //            Child Loop BB2_41 Depth 5
                                        //              Child Loop BB2_63 Depth 6
                                        //              Child Loop BB2_54 Depth 6
                                        //      Child Loop BB2_142 Depth 2
                                        //      Child Loop BB2_152 Depth 2
                                        //      Child Loop BB2_144 Depth 2
                                        //      Child Loop BB2_175 Depth 2
                                        //        Child Loop BB2_181 Depth 3
                                        //          Child Loop BB2_184 Depth 4
                                        //      Child Loop BB2_196 Depth 2
                                        //        Child Loop BB2_199 Depth 3
                                        //      Child Loop BB2_211 Depth 2
                                        //        Child Loop BB2_214 Depth 3
                                        //      Child Loop BB2_226 Depth 2
                                        //        Child Loop BB2_229 Depth 3
                                        //      Child Loop BB2_237 Depth 2
                                        //        Child Loop BB2_243 Depth 3
                                        //          Child Loop BB2_246 Depth 4
                                        //      Child Loop BB2_258 Depth 2
                                        //        Child Loop BB2_261 Depth 3
                                        //      Child Loop BB2_269 Depth 2
                                        //        Child Loop BB2_275 Depth 3
                                        //          Child Loop BB2_278 Depth 4
                                        //      Child Loop BB2_290 Depth 2
                                        //        Child Loop BB2_293 Depth 3
                                        //      Child Loop BB2_304 Depth 2
                                        //        Child Loop BB2_307 Depth 3
                                        //      Child Loop BB2_319 Depth 2
                                        //        Child Loop BB2_325 Depth 3
                                        //          Child Loop BB2_328 Depth 4
                                        //      Child Loop BB2_338 Depth 2
                                        //        Child Loop BB2_341 Depth 3
                                        //      Child Loop BB2_352 Depth 2
                                        //        Child Loop BB2_355 Depth 3
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	add x5, x0, x4
LBB2_15:                                //  %for.cond
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB2_16 Depth 3
                                        //          Child Loop BB2_17 Depth 4
                                        //          Child Loop BB2_28 Depth 4
                                        //            Child Loop BB2_31 Depth 5
                                        //          Child Loop BB2_40 Depth 4
                                        //            Child Loop BB2_41 Depth 5
                                        //              Child Loop BB2_63 Depth 6
                                        //              Child Loop BB2_54 Depth 6
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	nop
LBB2_16:                                //  %for.cond
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_15 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB2_17 Depth 4
                                        //          Child Loop BB2_28 Depth 4
                                        //            Child Loop BB2_31 Depth 5
                                        //          Child Loop BB2_40 Depth 4
                                        //            Child Loop BB2_41 Depth 5
                                        //              Child Loop BB2_63 Depth 6
                                        //              Child Loop BB2_54 Depth 6
	add x8, x0, x4
LBB2_17:                                //  %while.cond
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_15 Depth=2
                                        //        Parent Loop BB2_16 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	lbu x1, 0 ( x8 )
	nop
	beqz x1, LBB2_20
LBB2_18:                                //  %while.cond
                                        //    in Loop: Header=BB2_17 Depth=4
	xori x3, x1, 37
	beqz x3, LBB2_20
LBB2_19:                                //  %while.body
                                        //    in Loop: Header=BB2_17 Depth=4
	addi x8, x8, 1
	jalr x0, LBB2_17 ( x0 )
LBB2_20:                                //  %while.end
                                        //    in Loop: Header=BB2_16 Depth=3
	sub x7, x8, x4
	bgtu x7, x0, LBB2_22
LBB2_21:                                //    in Loop: Header=BB2_16 Depth=3
	sw x5, 20 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB2_38 ( x0 )
LBB2_22:                                //  %if.then75
                                        //    in Loop: Header=BB2_16 Depth=3
	sw x7, 4 ( x5 )
	sw x4, 0 ( x5 )
	lw x1, 8 ( x11 )
	nop
	add x1, x7, x1
	sw x1, 8 ( x11 )
	lw x3, 188 ( x2 )
	nop
	addi x4, x3, 1
	slti x3, x3, 7
	sw x4, 188 ( x2 )
	beqz x3, LBB2_24
LBB2_23:                                //    in Loop: Header=BB2_16 Depth=3
	addi x5, x5, 8
	jalr x0, LBB2_37 ( x0 )
LBB2_24:                                //  %if.then80
                                        //    in Loop: Header=BB2_16 Depth=3
	bgtu x1, x0, LBB2_26
LBB2_25:                                //  %__sprint_r.exit1119.thread
                                        //    in Loop: Header=BB2_16 Depth=3
	sw x0, 188 ( x2 )
	addi x1, x2, 120
	add x5, x0, x1
	jalr x0, LBB2_37 ( x0 )
LBB2_26:                                //  %if.end.i1090
                                        //    in Loop: Header=BB2_16 Depth=3
	lbu x3, 101 ( x9 )
	nop
	andi x3, x3, 32
	sw x7, 52 ( x2 )                //  4-byte Folded Spill
	beqz x3, LBB2_36
LBB2_27:                                //  %for.body.preheader.i1092
                                        //    in Loop: Header=BB2_16 Depth=3
	lw x4, 184 ( x2 )
	nop
LBB2_28:                                //  %for.body.i1097
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_15 Depth=2
                                        //        Parent Loop BB2_16 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB2_31 Depth 5
	lw x3, 4 ( x4 )
	nop
	srli x3, x3, 1
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	beqz x3, LBB2_34
LBB2_29:                                //  %for.body6.i1105.preheader
                                        //    in Loop: Header=BB2_28 Depth=4
	sw x4, 48 ( x2 )                //  4-byte Folded Spill
	lw x3, 0 ( x4 )
	add x1, x0, x0
	add x4, x0, x1
	jalr x0, LBB2_31 ( x0 )
LBB2_30:                                //  %for.cond4.i1099
                                        //    in Loop: Header=BB2_31 Depth=5
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	nop
	addi x4, x4, 1
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 2
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	ble x1, x4, LBB2_33
LBB2_31:                                //  %for.body6.i1105
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_15 Depth=2
                                        //        Parent Loop BB2_16 Depth=3
                                        //          Parent Loop BB2_28 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	sw x4, 68 ( x2 )                //  4-byte Folded Spill
	sw x3, 72 ( x2 )                //  4-byte Folded Spill
	lh x11, 0 ( x3 )
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x9
	call $_fputwc_r
	xori x1, x10, -1
	bgtu x1, x0, LBB2_30
LBB2_32:                                //  %__sprint_r.exit1119.thread1508
	addi x1, x2, 184
	sw x0, 8 ( x1 )
	sw x0, 188 ( x2 )
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB2_373 ( x0 )
LBB2_33:                                //  %for.inc10.loopexit.i1107
                                        //    in Loop: Header=BB2_28 Depth=4
	lw x1, 192 ( x2 )
	addi x11, x2, 184
	lw x7, 52 ( x2 )                //  4-byte Folded Reload
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
LBB2_34:                                //  %for.inc10.i1112
                                        //    in Loop: Header=BB2_28 Depth=4
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	slli x3, x3, 1
	sub x1, x1, x3
	addi x4, x4, 8
	sw x1, 192 ( x2 )
	bgtu x1, x0, LBB2_28
LBB2_35:                                //  %__sprint_r.exit1119.thread1506
                                        //    in Loop: Header=BB2_16 Depth=3
	sw x0, 8 ( x11 )
	jalr x0, LBB2_25 ( x0 )
LBB2_36:                                //  %__sprint_r.exit1119
                                        //    in Loop: Header=BB2_16 Depth=3
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x9
	addi x12, x2, 184
	call $__sfvwrite_r
	lw x7, 52 ( x2 )                //  4-byte Folded Reload
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	addi x1, x2, 184
	sw x0, 8 ( x1 )
	sw x0, 188 ( x2 )
	addi x1, x2, 120
	add x5, x0, x1
	beqz x10, LBB2_379
LBB2_378:                               //  %__sprint_r.exit1119
                                        //    in Loop: Header=BB2_16 Depth=3
	jalr x0, LBB2_373 ( x0 )
LBB2_379:                               //  %__sprint_r.exit1119
                                        //    in Loop: Header=BB2_16 Depth=3
LBB2_37:                                //  %if.end86
                                        //    in Loop: Header=BB2_16 Depth=3
	sw x5, 20 ( x2 )                //  4-byte Folded Spill
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x7
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	lb x1, 0 ( x8 )
	nop
LBB2_38:                                //  %if.end88
                                        //    in Loop: Header=BB2_16 Depth=3
	andi x1, x1, 255
	bgtu x1, x0, LBB2_381
LBB2_380:                               //  %if.end88
                                        //    in Loop: Header=BB2_16 Depth=3
	jalr x0, LBB2_361 ( x0 )
LBB2_381:                               //  %if.end88
                                        //    in Loop: Header=BB2_16 Depth=3
LBB2_39:                                //  %if.end93
                                        //    in Loop: Header=BB2_16 Depth=3
	addi x1, x8, 1
	sb x0, 199 ( x2 )
	add x3, x0, x0
	sw x3, 52 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x3
	not x4, x0
	sw x4, 48 ( x2 )                //  4-byte Folded Spill
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
LBB2_40:                                //  %rflag
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_15 Depth=2
                                        //        Parent Loop BB2_16 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB2_41 Depth 5
                                        //              Child Loop BB2_63 Depth 6
                                        //              Child Loop BB2_54 Depth 6
	addi x8, x1, 1
	lb x4, 0 ( x1 )
LBB2_41:                                //  %reswitch
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_15 Depth=2
                                        //        Parent Loop BB2_16 Depth=3
                                        //          Parent Loop BB2_40 Depth=4
                                        //  =>        This Loop Header: Depth=5
                                        //              Child Loop BB2_63 Depth 6
                                        //              Child Loop BB2_54 Depth 6
	sw x10, 68 ( x2 )               //  4-byte Folded Spill
	sw x8, 72 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 120
	bgtu x4, x1, LBB2_164
LBB2_42:                                //  %reswitch
                                        //    in Loop: Header=BB2_41 Depth=5
	add x10, x0, x4
	addi x11, x0, 4
	add x8, x0, x4
	call $__mulsi3
	add x4, x0, x8
	ori x28, x0, JTI2_0 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI2_0 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB2_43:                                //  %sw.bb
                                        //    in Loop: Header=BB2_40 Depth=4
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	andi x3, x1, 255
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x0, x4
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	bgtu x3, x0, LBB2_40
LBB2_44:                                //  %if.then98
                                        //    in Loop: Header=BB2_40 Depth=4
	addi x1, x0, 32
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	sb x1, 199 ( x2 )
	add x1, x0, x4
	jalr x0, LBB2_40 ( x0 )
LBB2_45:                                //  %sw.bb100
                                        //    in Loop: Header=BB2_40 Depth=4
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 1
LBB2_46:                                //  %rflag
                                        //    in Loop: Header=BB2_40 Depth=4
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
LBB2_47:                                //  %rflag
                                        //    in Loop: Header=BB2_40 Depth=4
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB2_40 ( x0 )
LBB2_48:                                //  %sw.bb102
                                        //    in Loop: Header=BB2_40 Depth=4
	lw x1, 200 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 200 ( x2 )
	lw x10, 0 ( x1 )
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x0, x3
	bgez x10, LBB2_40
LBB2_49:                                //  %if.end106
                                        //    in Loop: Header=BB2_40 Depth=4
	sub x10, x0, x10
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 4
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x3
	jalr x0, LBB2_40 ( x0 )
LBB2_50:                                //  %sw.bb107.loopexit
                                        //    in Loop: Header=BB2_40 Depth=4
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 4
	jalr x0, LBB2_46 ( x0 )
LBB2_51:                                //  %sw.bb109
                                        //    in Loop: Header=BB2_40 Depth=4
	addi x1, x0, 43
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	sb x1, 199 ( x2 )
	jalr x0, LBB2_47 ( x0 )
LBB2_52:                                //  %sw.bb110
                                        //    in Loop: Header=BB2_41 Depth=5
	lw x8, 72 ( x2 )                //  4-byte Folded Reload
	nop
	lb x4, 0 ( x8 )
	addi x8, x8, 1
	xori x1, x4, 42
	beqz x1, LBB2_58
LBB2_53:                                //  %while.cond122.preheader
                                        //    in Loop: Header=BB2_41 Depth=5
	addi x5, x4, -48
	add x10, x0, x0
	addi x1, x0, 9
	bgtu x5, x1, LBB2_55
LBB2_54:                                //  %while.body126
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_15 Depth=2
                                        //        Parent Loop BB2_16 Depth=3
                                        //          Parent Loop BB2_40 Depth=4
                                        //            Parent Loop BB2_41 Depth=5
                                        //  =>          This Inner Loop Header: Depth=6
	sw x5, 72 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 10
	call $__mulsi3
	lb x4, 0 ( x8 )
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x1, x10
	addi x8, x8, 1
	addi x5, x4, -48
	sltiu x1, x5, 10
	bgtu x1, x0, LBB2_54
LBB2_55:                                //  %while.end131
                                        //    in Loop: Header=BB2_41 Depth=5
	not x1, x0
	bgt x10, x1, LBB2_57
LBB2_56:                                //  %while.end131
                                        //    in Loop: Header=BB2_41 Depth=5
	add x10, x0, x1
LBB2_57:                                //  %while.end131
                                        //    in Loop: Header=BB2_41 Depth=5
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB2_41 ( x0 )
LBB2_58:                                //  %if.then115
                                        //    in Loop: Header=BB2_40 Depth=4
	lw x3, 200 ( x2 )
	not x1, x0
	addi x4, x3, 4
	sw x4, 200 ( x2 )
	lw x3, 0 ( x3 )
	nop
	bgt x3, x1, LBB2_60
LBB2_59:                                //  %if.then115
                                        //    in Loop: Header=BB2_40 Depth=4
	add x3, x0, x1
LBB2_60:                                //  %if.then115
                                        //    in Loop: Header=BB2_40 Depth=4
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x8
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB2_40 ( x0 )
LBB2_61:                                //  %sw.bb137
                                        //    in Loop: Header=BB2_40 Depth=4
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 128
	jalr x0, LBB2_46 ( x0 )
LBB2_62:                                //  %do.body140.preheader
                                        //    in Loop: Header=BB2_41 Depth=5
	add x10, x0, x0
	add x3, x0, x4
	lw x8, 72 ( x2 )                //  4-byte Folded Reload
LBB2_63:                                //  %do.body140
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_15 Depth=2
                                        //        Parent Loop BB2_16 Depth=3
                                        //          Parent Loop BB2_40 Depth=4
                                        //            Parent Loop BB2_41 Depth=5
                                        //  =>          This Inner Loop Header: Depth=6
	sw x3, 72 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 10
	call $__mulsi3
	lb x4, 0 ( x8 )
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x10, x1
	addi x8, x8, 1
	addi x10, x1, -48
	addi x1, x4, -48
	sltiu x1, x1, 10
	add x3, x0, x4
	bgtu x1, x0, LBB2_63
	jalr x0, LBB2_41 ( x0 )
LBB2_64:                                //  %sw.bb151
                                        //    in Loop: Header=BB2_40 Depth=4
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 64
	jalr x0, LBB2_46 ( x0 )
LBB2_65:                                //  %sw.bb153
                                        //    in Loop: Header=BB2_40 Depth=4
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	lbu x1, 0 ( x3 )
	nop
	xori x1, x1, 108
	bgtu x1, x0, LBB2_67
LBB2_66:                                //  %if.then157
                                        //    in Loop: Header=BB2_40 Depth=4
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 32
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	addi x1, x3, 1
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB2_40 ( x0 )
LBB2_67:                                //  %if.else
                                        //    in Loop: Header=BB2_40 Depth=4
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 16
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x3
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB2_40 ( x0 )
LBB2_68:                                //  %sw.bb162
                                        //    in Loop: Header=BB2_40 Depth=4
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 32
	jalr x0, LBB2_46 ( x0 )
LBB2_69:                                //  %sw.bb164
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x1, 200 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 200 ( x2 )
	lw x1, 0 ( x1 )
	sb x0, 199 ( x2 )
	sb x1, 80 ( x2 )
	jalr x0, LBB2_165 ( x0 )
LBB2_70:                                //  %sw.bb168
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	nop
	ori x9, x9, 16
	jalr x0, LBB2_72 ( x0 )
LBB2_71:                                //  %sw.bb170.loopexit
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	nop
LBB2_72:                                //  %sw.bb170
                                        //    in Loop: Header=BB2_14 Depth=1
	andi x1, x9, 32
	beqz x1, LBB2_74
LBB2_73:                                //  %cond.true173
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x1, 200 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 200 ( x2 )
	lw x8, 0 ( x1 )
	addi x1, x3, 4
	sw x1, 200 ( x2 )
	lw x11, 0 ( x3 )
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB2_79 ( x0 )
LBB2_74:                                //  %cond.false175
                                        //    in Loop: Header=BB2_14 Depth=1
	andi x1, x9, 16
	beqz x1, LBB2_76
LBB2_75:                                //  %cond.true178
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x1, 200 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 200 ( x2 )
	lw x8, 0 ( x1 )
	jalr x0, LBB2_78 ( x0 )
LBB2_76:                                //  %cond.false180
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x1, 200 ( x2 )
	andi x3, x9, 64
	addi x4, x1, 4
	sw x4, 200 ( x2 )
	lw x8, 0 ( x1 )
	beqz x3, LBB2_78
LBB2_77:                                //  %cond.true183
                                        //    in Loop: Header=BB2_14 Depth=1
	slli x1, x8, 16
	srai x8, x1, 16
LBB2_78:                                //  %cond.end200
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	srai x11, x8, 31
LBB2_79:                                //  %cond.end203
                                        //    in Loop: Header=BB2_14 Depth=1
	bgt x0, x11, LBB2_81
LBB2_80:                                //    in Loop: Header=BB2_14 Depth=1
	slti x1, x0, 1
	jalr x0, LBB2_135 ( x0 )
LBB2_81:                                //  %if.then207
                                        //    in Loop: Header=BB2_14 Depth=1
	addi x1, x0, 45
	add x3, x0, x0
	sb x1, 199 ( x2 )
	slti x1, x0, 1
	add x4, x0, x1
	bne x8, x3, LBB2_83
LBB2_82:                                //  %if.then207
                                        //    in Loop: Header=BB2_14 Depth=1
	add x4, x0, x3
LBB2_83:                                //  %if.then207
                                        //    in Loop: Header=BB2_14 Depth=1
	sub x3, x0, x11
	sub x11, x3, x4
	sub x8, x0, x8
	jalr x0, LBB2_135 ( x0 )
LBB2_84:                                //  %sw.bb210
                                        //    in Loop: Header=BB2_16 Depth=3
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 32
	beqz x1, LBB2_86
LBB2_85:                                //  %if.then213
                                        //    in Loop: Header=BB2_16 Depth=3
	lw x1, 200 ( x2 )
	lw x5, 36 ( x2 )                //  4-byte Folded Reload
	nop
	srai x3, x5, 31
	addi x4, x1, 4
	sw x4, 200 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x3, 4 ( x1 )
	sw x5, 0 ( x1 )
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	addi x11, x2, 184
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB2_16 ( x0 )
LBB2_86:                                //  %if.else216
                                        //    in Loop: Header=BB2_16 Depth=3
	andi x1, x3, 16
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	addi x11, x2, 184
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB2_88
LBB2_87:                                //  %if.then219
                                        //    in Loop: Header=BB2_15 Depth=2
	lw x1, 200 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 200 ( x2 )
	lw x1, 0 ( x1 )
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 0 ( x1 )
	jalr x0, LBB2_15 ( x0 )
LBB2_88:                                //  %if.else221
                                        //    in Loop: Header=BB2_16 Depth=3
	andi x1, x3, 64
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB2_90
LBB2_89:                                //  %if.then224
                                        //    in Loop: Header=BB2_16 Depth=3
	lw x1, 200 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 200 ( x2 )
	lw x1, 0 ( x1 )
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sh x3, 0 ( x1 )
	jalr x0, LBB2_16 ( x0 )
LBB2_90:                                //  %if.else227
                                        //    in Loop: Header=BB2_16 Depth=3
	lw x1, 200 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 200 ( x2 )
	lw x1, 0 ( x1 )
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 0 ( x1 )
	jalr x0, LBB2_16 ( x0 )
LBB2_91:                                //  %sw.bb232
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	nop
	ori x9, x9, 16
	jalr x0, LBB2_93 ( x0 )
LBB2_92:                                //  %sw.bb234.loopexit
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	nop
LBB2_93:                                //  %sw.bb234
                                        //    in Loop: Header=BB2_14 Depth=1
	andi x1, x9, 32
	beqz x1, LBB2_96
LBB2_94:                                //  %cond.true237
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x3, 200 ( x2 )
	add x1, x0, x0
LBB2_95:                                //  %nosign
                                        //    in Loop: Header=BB2_14 Depth=1
	addi x4, x3, 4
	sw x4, 200 ( x2 )
	lw x8, 0 ( x3 )
	addi x3, x4, 4
	sw x3, 200 ( x2 )
	lw x11, 0 ( x4 )
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB2_134 ( x0 )
LBB2_96:                                //  %cond.false239
                                        //    in Loop: Header=BB2_14 Depth=1
	andi x1, x9, 16
	beqz x1, LBB2_98
LBB2_97:                                //  %cond.true242
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x1, 200 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 200 ( x2 )
	lw x8, 0 ( x1 )
	jalr x0, LBB2_100 ( x0 )
LBB2_98:                                //  %cond.false244
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x1, 200 ( x2 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	addi x4, x1, 4
	sw x4, 200 ( x2 )
	srli x28, x28, 20
	andi x4, x9, 64
	add x5, x0, x0
	lw x8, 0 ( x1 )
	or x1, x3, x28
	beq x4, x5, LBB2_100
LBB2_99:                                //  %cond.false244
                                        //    in Loop: Header=BB2_14 Depth=1
	and x8, x1, x8
LBB2_100:                               //  %cond.false244
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x0
	add x1, x0, x11
	jalr x0, LBB2_134 ( x0 )
LBB2_101:                               //  %sw.bb269
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x1, 200 ( x2 )
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	addi x3, x0, 48
	addi x4, x1, 4
	sw x4, 200 ( x2 )
	addi x4, x0, 120
	lui x5, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	lw x8, 0 ( x1 )
	sb x3, 78 ( x2 )
	sb x4, 79 ( x2 )
	add x11, x0, x0
	or x1, x5, x28
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	nop
	ori x9, x9, 2
	addi x1, x0, 2
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB2_134 ( x0 )
LBB2_102:                               //  %sw.bb274
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x1, 200 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 200 ( x2 )
	lw x10, 0 ( x1 )
	sb x0, 199 ( x2 )
	bgtu x10, x0, LBB2_107
LBB2_103:                               //  %if.then278
                                        //    in Loop: Header=BB2_14 Depth=1
	addi x1, x0, 6
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x3, LBB2_105
LBB2_104:                               //  %if.then278
                                        //    in Loop: Header=BB2_14 Depth=1
	add x3, x0, x1
LBB2_105:                               //  %if.then278
                                        //    in Loop: Header=BB2_14 Depth=1
	add x10, x0, x3
	lui x1, $.str.1 >> 12 & 0xfffff
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
LBB2_106:                               //  %sw.epilog467
                                        //    in Loop: Header=BB2_14 Depth=1
	add x1, x0, x0
	add x3, x0, x1
	jalr x0, LBB2_166 ( x0 )
LBB2_107:                               //  %if.else285
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	bgt x0, x8, LBB2_111
LBB2_108:                               //  %if.then288
                                        //    in Loop: Header=BB2_14 Depth=1
	add x11, x0, x0
	add x12, x0, x8
	call $memchr
	add x3, x0, x0
	beq x10, x3, LBB2_110
LBB2_109:                               //  %if.then288
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x10, x1
LBB2_110:                               //  %if.then288
                                        //    in Loop: Header=BB2_14 Depth=1
	add x10, x0, x8
	jalr x0, LBB2_166 ( x0 )
LBB2_111:                               //  %if.else298
                                        //    in Loop: Header=BB2_14 Depth=1
	call $strlen
	jalr x0, LBB2_106 ( x0 )
LBB2_112:                               //  %sw.bb302
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	nop
	ori x9, x9, 16
	jalr x0, LBB2_114 ( x0 )
LBB2_113:                               //  %sw.bb304.loopexit
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	nop
LBB2_114:                               //  %sw.bb304
                                        //    in Loop: Header=BB2_14 Depth=1
	andi x1, x9, 32
	beqz x1, LBB2_116
LBB2_115:                               //  %cond.true307
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x3, 200 ( x2 )
	slti x1, x0, 1
	jalr x0, LBB2_95 ( x0 )
LBB2_116:                               //  %cond.false309
                                        //    in Loop: Header=BB2_14 Depth=1
	andi x1, x9, 16
	beqz x1, LBB2_118
LBB2_117:                               //  %cond.true312
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x1, 200 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 200 ( x2 )
	lw x8, 0 ( x1 )
	jalr x0, LBB2_120 ( x0 )
LBB2_118:                               //  %cond.false314
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x1, 200 ( x2 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	addi x4, x1, 4
	sw x4, 200 ( x2 )
	srli x28, x28, 20
	andi x4, x9, 64
	add x5, x0, x0
	lw x8, 0 ( x1 )
	or x1, x3, x28
	beq x4, x5, LBB2_120
LBB2_119:                               //  %cond.false314
                                        //    in Loop: Header=BB2_14 Depth=1
	and x8, x1, x8
LBB2_120:                               //  %cond.false314
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x0
	slti x1, x0, 1
	jalr x0, LBB2_134 ( x0 )
LBB2_121:                               //  %hex.loopexit2363
                                        //    in Loop: Header=BB2_14 Depth=1
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 120
	jalr x0, LBB2_123 ( x0 )
LBB2_122:                               //  %hex.loopexit
                                        //    in Loop: Header=BB2_14 Depth=1
	ori x28, x0, $.str.2 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.2 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 88
LBB2_123:                               //  %hex
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	nop
	andi x3, x9, 32
	beqz x3, LBB2_125
LBB2_124:                               //  %cond.true343
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x3, 200 ( x2 )
	nop
	addi x4, x3, 4
	sw x4, 200 ( x2 )
	lw x8, 0 ( x3 )
	addi x3, x4, 4
	sw x3, 200 ( x2 )
	lw x11, 0 ( x4 )
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB2_130 ( x0 )
LBB2_125:                               //  %cond.false345
                                        //    in Loop: Header=BB2_14 Depth=1
	andi x3, x9, 16
	beqz x3, LBB2_127
LBB2_126:                               //  %cond.true348
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x3, 200 ( x2 )
	nop
	addi x4, x3, 4
	sw x4, 200 ( x2 )
	lw x8, 0 ( x3 )
	jalr x0, LBB2_129 ( x0 )
LBB2_127:                               //  %cond.false350
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x3, 200 ( x2 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x4, 65535 >> 12 & 0xfffff
	addi x5, x3, 4
	sw x5, 200 ( x2 )
	srli x28, x28, 20
	andi x5, x9, 64
	add x7, x0, x0
	lw x8, 0 ( x3 )
	or x3, x4, x28
	beq x5, x7, LBB2_129
LBB2_128:                               //  %cond.false350
                                        //    in Loop: Header=BB2_14 Depth=1
	and x8, x3, x8
LBB2_129:                               //  %cond.false350
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x0
LBB2_130:                               //  %cond.end373
                                        //    in Loop: Header=BB2_14 Depth=1
	andi x3, x9, 1
	beqz x3, LBB2_133
LBB2_131:                               //  %cond.end373
                                        //    in Loop: Header=BB2_14 Depth=1
	or x3, x11, x8
	beqz x3, LBB2_133
LBB2_132:                               //  %if.then380
                                        //    in Loop: Header=BB2_14 Depth=1
	addi x3, x0, 48
	sb x3, 78 ( x2 )
	sb x1, 79 ( x2 )
	ori x9, x9, 2
LBB2_133:                               //  %nosign
                                        //    in Loop: Header=BB2_14 Depth=1
	addi x1, x0, 2
LBB2_134:                               //  %nosign
                                        //    in Loop: Header=BB2_14 Depth=1
	sb x0, 199 ( x2 )
LBB2_135:                               //  %number
                                        //    in Loop: Header=BB2_14 Depth=1
	not x3, x0
	ble x5, x3, LBB2_137
LBB2_136:                               //    in Loop: Header=BB2_14 Depth=1
	andi x9, x9, -129
LBB2_137:                               //  %number
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x9, 52 ( x2 )                //  4-byte Folded Spill
	bgtu x5, x0, LBB2_139
LBB2_138:                               //  %number
                                        //    in Loop: Header=BB2_14 Depth=1
	or x3, x11, x8
	beqz x3, LBB2_157
LBB2_139:                               //  %if.then398
                                        //    in Loop: Header=BB2_14 Depth=1
	beqz x1, LBB2_143
LBB2_140:                               //  %if.then398
                                        //    in Loop: Header=BB2_14 Depth=1
	andi x1, x1, 255
	xori x3, x1, 1
	beqz x3, LBB2_148
LBB2_141:                               //  %if.then398
                                        //    in Loop: Header=BB2_14 Depth=1
	xori x1, x1, 2
	lw x5, 28 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB2_156
LBB2_142:                               //  %do.body435
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	andi x1, x8, 15
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	lb x1, 0 ( x1 )
	nop
	sb x1, -1 ( x5 )
	srli x1, x8, 4
	slli x3, x11, 28
	or x8, x3, x1
	addi x5, x5, -1
	srli x11, x11, 4
	or x1, x11, x8
	bgtu x1, x0, LBB2_142
	jalr x0, LBB2_162 ( x0 )
LBB2_143:                               //  %do.body401.preheader
                                        //    in Loop: Header=BB2_14 Depth=1
	addi x1, x2, 119
LBB2_144:                               //  %do.body401
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	srli x3, x8, 3
	slli x4, x11, 29
	or x4, x4, x3
	andi x3, x8, 7
	ori x3, x3, 48
	sb x3, 0 ( x1 )
	addi x1, x1, -1
	srli x11, x11, 3
	or x5, x11, x4
	add x8, x0, x4
	bgtu x5, x0, LBB2_144
LBB2_145:                               //  %do.end408
                                        //    in Loop: Header=BB2_14 Depth=1
	addi x5, x1, 1
	andi x4, x9, 1
	beqz x4, LBB2_162
LBB2_146:                               //  %do.end408
                                        //    in Loop: Header=BB2_14 Depth=1
	xori x3, x3, 48
	beqz x3, LBB2_162
LBB2_147:                               //  %if.then415
                                        //    in Loop: Header=BB2_14 Depth=1
	addi x3, x0, 48
	sb x3, 0 ( x1 )
	jalr x0, LBB2_161 ( x0 )
LBB2_148:                               //  %sw.bb418
                                        //    in Loop: Header=BB2_14 Depth=1
	add x1, x0, x0
	bne x11, x1, LBB2_150
LBB2_149:                               //    in Loop: Header=BB2_14 Depth=1
	sltiu x1, x8, 10
LBB2_150:                               //  %sw.bb418
                                        //    in Loop: Header=BB2_14 Depth=1
	beqz x1, LBB2_383
LBB2_382:                               //  %sw.bb418
                                        //    in Loop: Header=BB2_14 Depth=1
	jalr x0, LBB2_377 ( x0 )
LBB2_383:                               //  %sw.bb418
                                        //    in Loop: Header=BB2_14 Depth=1
LBB2_151:                               //    in Loop: Header=BB2_14 Depth=1
	lw x5, 28 ( x2 )                //  4-byte Folded Reload
LBB2_152:                               //  %do.body426
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x11, 56 ( x2 )               //  4-byte Folded Spill
	sw x5, 44 ( x2 )                //  4-byte Folded Spill
	addi x12, x0, 10
	add x13, x0, x0
	add x10, x0, x8
	call $__umoddi3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	sw x8, 24 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	addi x12, x0, 10
	add x13, x0, x0
	call $__udivdi3
	lw x8, 56 ( x2 )                //  4-byte Folded Reload
	add x1, x0, x0
	bne x8, x1, LBB2_154
LBB2_153:                               //    in Loop: Header=BB2_152 Depth=2
	addi x1, x0, 9
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sltu x1, x1, x3
	jalr x0, LBB2_155 ( x0 )
LBB2_154:                               //  %do.body426
                                        //    in Loop: Header=BB2_152 Depth=2
	sltu x1, x0, x8
LBB2_155:                               //  %do.body426
                                        //    in Loop: Header=BB2_152 Depth=2
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	ori x3, x3, 48
	sb x3, -1 ( x5 )
	addi x5, x5, -1
	add x8, x0, x10
	bgtu x1, x0, LBB2_152
	jalr x0, LBB2_162 ( x0 )
LBB2_156:                               //  %sw.default
                                        //    in Loop: Header=BB2_14 Depth=1
	lui x1, $.str.3 >> 12 & 0xfffff
	ori x28, x0, $.str.3 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x1, x28
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	call $strlen
	jalr x0, LBB2_163 ( x0 )
LBB2_157:                               //  %if.else444
                                        //    in Loop: Header=BB2_14 Depth=1
	andi x1, x1, 255
	lw x5, 28 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB2_162
LBB2_158:                               //  %if.else444
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 1
	lw x5, 28 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB2_162
LBB2_159:                               //  %if.then451
                                        //    in Loop: Header=BB2_14 Depth=1
	addi x1, x0, 48
LBB2_160:                               //  %if.end454
                                        //    in Loop: Header=BB2_14 Depth=1
	sb x1, 119 ( x2 )
	addi x1, x2, 119
LBB2_161:                               //  %if.end454
                                        //    in Loop: Header=BB2_14 Depth=1
	add x5, x0, x1
LBB2_162:                               //  %if.end454
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	sw x5, 44 ( x2 )                //  4-byte Folded Spill
	sub x10, x1, x5
LBB2_163:                               //  %sw.epilog467
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	addi x11, x2, 184
	addi x12, x0, 16
	lw x7, 52 ( x2 )                //  4-byte Folded Reload
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB2_167 ( x0 )
LBB2_164:                               //  %if.end464
                                        //    in Loop: Header=BB2_14 Depth=1
	sb x4, 80 ( x2 )
	sb x0, 199 ( x2 )
LBB2_165:                               //  %sw.epilog467
                                        //    in Loop: Header=BB2_14 Depth=1
	addi x1, x2, 80
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	add x3, x0, x1
	slti x1, x0, 1
	add x10, x0, x1
LBB2_166:                               //  %sw.epilog467
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	addi x11, x2, 184
	addi x12, x0, 16
	lw x7, 52 ( x2 )                //  4-byte Folded Reload
LBB2_167:                               //  %sw.epilog467
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x13, 20 ( x2 )               //  4-byte Folded Reload
	add x1, x0, x3
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	bgt x3, x10, LBB2_169
LBB2_168:                               //  %sw.epilog467
                                        //    in Loop: Header=BB2_14 Depth=1
	add x1, x0, x10
LBB2_169:                               //  %sw.epilog467
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	lbu x3, 199 ( x2 )
	nop
	sltu x3, x0, x3
	andi x3, x3, 1
	add x14, x1, x3
	andi x8, x7, 2
	srli x1, x8, 1
	beqz x1, LBB2_171
LBB2_170:                               //    in Loop: Header=BB2_14 Depth=1
	addi x14, x14, 2
LBB2_171:                               //  %sw.epilog467
                                        //    in Loop: Header=BB2_14 Depth=1
	andi x15, x7, 132
	sw x14, 24 ( x2 )               //  4-byte Folded Spill
	sw x7, 52 ( x2 )                //  4-byte Folded Spill
	bgtu x15, x0, LBB2_204
LBB2_172:                               //  %if.then486
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	sub x17, x1, x14
	ble x17, x0, LBB2_204
LBB2_173:                               //  %while.cond491.preheader
                                        //    in Loop: Header=BB2_14 Depth=1
	ori x28, x0, $_vfiprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfiprintf_r.blanks >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x13 )
	addi x4, x13, 4
	lw x3, 188 ( x2 )
	lw x1, 8 ( x11 )
	slti x5, x17, 17
	bgtu x5, x0, LBB2_190
LBB2_174:                               //  %while.body494.preheader
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x15, 16 ( x2 )               //  4-byte Folded Spill
LBB2_175:                               //  %while.body494
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB2_181 Depth 3
                                        //          Child Loop BB2_184 Depth 4
	sw x12, 0 ( x4 )
	addi x1, x1, 16
	sw x1, 8 ( x11 )
	addi x4, x3, 1
	sw x4, 188 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB2_177
LBB2_176:                               //    in Loop: Header=BB2_175 Depth=2
	addi x13, x13, 8
	add x3, x0, x4
	jalr x0, LBB2_189 ( x0 )
LBB2_177:                               //  %if.then504
                                        //    in Loop: Header=BB2_175 Depth=2
	bgtu x1, x0, LBB2_179
LBB2_178:                               //  %__sprint_r.exit1154.thread
                                        //    in Loop: Header=BB2_175 Depth=2
	sw x0, 188 ( x2 )
	add x1, x0, x0
	add x3, x0, x1
	addi x4, x2, 120
	add x13, x0, x4
	jalr x0, LBB2_189 ( x0 )
LBB2_179:                               //  %if.end.i1125
                                        //    in Loop: Header=BB2_175 Depth=2
	lbu x3, 101 ( x9 )
	nop
	andi x3, x3, 32
	sw x17, 12 ( x2 )               //  4-byte Folded Spill
	beqz x3, LBB2_188
LBB2_180:                               //  %for.body.preheader.i1127
                                        //    in Loop: Header=BB2_175 Depth=2
	lw x4, 184 ( x2 )
	sw x8, 8 ( x2 )                 //  4-byte Folded Spill
LBB2_181:                               //  %for.body.i1132
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_175 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB2_184 Depth 4
	lw x3, 4 ( x4 )
	nop
	srli x3, x3, 1
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	beqz x3, LBB2_186
LBB2_182:                               //  %for.body6.i1140.preheader
                                        //    in Loop: Header=BB2_181 Depth=3
	sw x4, 4 ( x2 )                 //  4-byte Folded Spill
	lw x3, 0 ( x4 )
	add x8, x0, x0
	jalr x0, LBB2_184 ( x0 )
LBB2_183:                               //  %for.cond4.i1134
                                        //    in Loop: Header=BB2_184 Depth=4
	addi x8, x8, 1
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 2
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	ble x1, x8, LBB2_185
LBB2_184:                               //  %for.body6.i1140
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_175 Depth=2
                                        //        Parent Loop BB2_181 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	lh x11, 0 ( x3 )
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x9
	call $_fputwc_r
	xori x1, x10, -1
	bgtu x1, x0, LBB2_183
	jalr x0, LBB2_32 ( x0 )
LBB2_185:                               //  %for.inc10.loopexit.i1142
                                        //    in Loop: Header=BB2_181 Depth=3
	lw x1, 192 ( x2 )
	addi x11, x2, 184
	addi x12, x0, 16
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	lw x15, 16 ( x2 )               //  4-byte Folded Reload
	lw x8, 8 ( x2 )                 //  4-byte Folded Reload
	lw x17, 12 ( x2 )               //  4-byte Folded Reload
	lw x4, 4 ( x2 )                 //  4-byte Folded Reload
LBB2_186:                               //  %for.inc10.i1147
                                        //    in Loop: Header=BB2_181 Depth=3
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	slli x3, x3, 1
	sub x1, x1, x3
	addi x4, x4, 8
	sw x1, 192 ( x2 )
	bgtu x1, x0, LBB2_181
LBB2_187:                               //  %__sprint_r.exit1154.thread1511
                                        //    in Loop: Header=BB2_175 Depth=2
	sw x0, 8 ( x11 )
	jalr x0, LBB2_178 ( x0 )
LBB2_188:                               //  %__sprint_r.exit1154
                                        //    in Loop: Header=BB2_175 Depth=2
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x9
	addi x12, x2, 184
	call $__sfvwrite_r
	lw x17, 12 ( x2 )               //  4-byte Folded Reload
	lw x15, 16 ( x2 )               //  4-byte Folded Reload
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	addi x12, x0, 16
	addi x11, x2, 184
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	sw x0, 8 ( x11 )
	sw x0, 188 ( x2 )
	add x1, x0, x0
	add x3, x0, x1
	addi x4, x2, 120
	add x13, x0, x4
	bgtu x10, x0, LBB2_373
LBB2_189:                               //  %if.end510
                                        //    in Loop: Header=BB2_175 Depth=2
	ori x28, x0, $_vfiprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, $_vfiprintf_r.blanks >> 12 & 0xfffff
	or x4, x4, x28
	sw x4, 0 ( x13 )
	addi x4, x13, 4
	addi x17, x17, -16
	bgt x17, x12, LBB2_175
LBB2_190:                               //  %while.end512
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x17, 0 ( x4 )
	add x1, x17, x1
	sw x1, 8 ( x11 )
	addi x4, x3, 1
	sw x4, 188 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB2_192
LBB2_191:                               //    in Loop: Header=BB2_14 Depth=1
	addi x13, x13, 8
	jalr x0, LBB2_204 ( x0 )
LBB2_192:                               //  %if.then522
                                        //    in Loop: Header=BB2_14 Depth=1
	bgtu x1, x0, LBB2_194
LBB2_193:                               //  %__sprint_r.exit1189.thread
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x0, 188 ( x2 )
	addi x1, x2, 120
	add x13, x0, x1
	jalr x0, LBB2_204 ( x0 )
LBB2_194:                               //  %if.end.i1160
                                        //    in Loop: Header=BB2_14 Depth=1
	lbu x3, 101 ( x9 )
	nop
	andi x3, x3, 32
	sw x15, 16 ( x2 )               //  4-byte Folded Spill
	beqz x3, LBB2_203
LBB2_195:                               //  %for.body.preheader.i1162
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x4, 184 ( x2 )
	sw x8, 8 ( x2 )                 //  4-byte Folded Spill
LBB2_196:                               //  %for.body.i1167
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB2_199 Depth 3
	lw x3, 4 ( x4 )
	nop
	srli x3, x3, 1
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	beqz x3, LBB2_201
LBB2_197:                               //  %for.body6.i1175.preheader
                                        //    in Loop: Header=BB2_196 Depth=2
	sw x4, 12 ( x2 )                //  4-byte Folded Spill
	lw x3, 0 ( x4 )
	add x8, x0, x0
	jalr x0, LBB2_199 ( x0 )
LBB2_198:                               //  %for.cond4.i1169
                                        //    in Loop: Header=BB2_199 Depth=3
	addi x8, x8, 1
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 2
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	ble x1, x8, LBB2_200
LBB2_199:                               //  %for.body6.i1175
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_196 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	lh x11, 0 ( x3 )
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x9
	call $_fputwc_r
	xori x1, x10, -1
	bgtu x1, x0, LBB2_198
	jalr x0, LBB2_32 ( x0 )
LBB2_200:                               //  %for.inc10.loopexit.i1177
                                        //    in Loop: Header=BB2_196 Depth=2
	lw x1, 192 ( x2 )
	addi x11, x2, 184
	addi x12, x0, 16
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	lw x15, 16 ( x2 )               //  4-byte Folded Reload
	lw x8, 8 ( x2 )                 //  4-byte Folded Reload
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
LBB2_201:                               //  %for.inc10.i1182
                                        //    in Loop: Header=BB2_196 Depth=2
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	slli x3, x3, 1
	sub x1, x1, x3
	addi x4, x4, 8
	sw x1, 192 ( x2 )
	bgtu x1, x0, LBB2_196
LBB2_202:                               //  %__sprint_r.exit1189.thread1516
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x0, 8 ( x11 )
	jalr x0, LBB2_193 ( x0 )
LBB2_203:                               //  %__sprint_r.exit1189
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x9
	addi x12, x2, 184
	call $__sfvwrite_r
	lw x15, 16 ( x2 )               //  4-byte Folded Reload
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	addi x12, x0, 16
	addi x11, x2, 184
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	sw x0, 8 ( x11 )
	sw x0, 188 ( x2 )
	addi x1, x2, 120
	add x13, x0, x1
	bgtu x10, x0, LBB2_373
LBB2_204:                               //  %if.end530
                                        //    in Loop: Header=BB2_14 Depth=1
	lbu x1, 199 ( x2 )
	nop
	beqz x1, LBB2_219
LBB2_205:                               //  %if.then532
                                        //    in Loop: Header=BB2_14 Depth=1
	addi x1, x2, 199
	sw x1, 0 ( x13 )
	slti x1, x0, 1
	sw x1, 4 ( x13 )
	lw x1, 8 ( x11 )
	nop
	addi x1, x1, 1
	sw x1, 8 ( x11 )
	lw x3, 188 ( x2 )
	nop
	addi x4, x3, 1
	sw x4, 188 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB2_207
LBB2_206:                               //    in Loop: Header=BB2_14 Depth=1
	addi x13, x13, 8
	jalr x0, LBB2_219 ( x0 )
LBB2_207:                               //  %if.then542
                                        //    in Loop: Header=BB2_14 Depth=1
	bgtu x1, x0, LBB2_209
LBB2_208:                               //  %__sprint_r.exit1224.thread
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x0, 188 ( x2 )
	addi x1, x2, 120
	add x13, x0, x1
	jalr x0, LBB2_219 ( x0 )
LBB2_209:                               //  %if.end.i1195
                                        //    in Loop: Header=BB2_14 Depth=1
	lbu x3, 101 ( x9 )
	nop
	andi x3, x3, 32
	sw x15, 16 ( x2 )               //  4-byte Folded Spill
	beqz x3, LBB2_218
LBB2_210:                               //  %for.body.preheader.i1197
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x4, 184 ( x2 )
	sw x8, 8 ( x2 )                 //  4-byte Folded Spill
LBB2_211:                               //  %for.body.i1202
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB2_214 Depth 3
	lw x3, 4 ( x4 )
	nop
	srli x3, x3, 1
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	beqz x3, LBB2_216
LBB2_212:                               //  %for.body6.i1210.preheader
                                        //    in Loop: Header=BB2_211 Depth=2
	sw x4, 12 ( x2 )                //  4-byte Folded Spill
	lw x3, 0 ( x4 )
	add x8, x0, x0
	jalr x0, LBB2_214 ( x0 )
LBB2_213:                               //  %for.cond4.i1204
                                        //    in Loop: Header=BB2_214 Depth=3
	addi x8, x8, 1
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 2
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	ble x1, x8, LBB2_215
LBB2_214:                               //  %for.body6.i1210
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_211 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	lh x11, 0 ( x3 )
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x9
	call $_fputwc_r
	xori x1, x10, -1
	bgtu x1, x0, LBB2_213
	jalr x0, LBB2_32 ( x0 )
LBB2_215:                               //  %for.inc10.loopexit.i1212
                                        //    in Loop: Header=BB2_211 Depth=2
	lw x1, 192 ( x2 )
	addi x11, x2, 184
	addi x12, x0, 16
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	lw x15, 16 ( x2 )               //  4-byte Folded Reload
	lw x8, 8 ( x2 )                 //  4-byte Folded Reload
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
LBB2_216:                               //  %for.inc10.i1217
                                        //    in Loop: Header=BB2_211 Depth=2
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	slli x3, x3, 1
	sub x1, x1, x3
	addi x4, x4, 8
	sw x1, 192 ( x2 )
	bgtu x1, x0, LBB2_211
LBB2_217:                               //  %__sprint_r.exit1224.thread1521
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x0, 8 ( x11 )
	jalr x0, LBB2_208 ( x0 )
LBB2_218:                               //  %__sprint_r.exit1224
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x9
	addi x12, x2, 184
	call $__sfvwrite_r
	lw x15, 16 ( x2 )               //  4-byte Folded Reload
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	addi x12, x0, 16
	addi x11, x2, 184
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	sw x0, 8 ( x11 )
	sw x0, 188 ( x2 )
	addi x1, x2, 120
	add x13, x0, x1
	bgtu x10, x0, LBB2_373
LBB2_219:                               //  %if.end549
                                        //    in Loop: Header=BB2_14 Depth=1
	beqz x8, LBB2_234
LBB2_220:                               //  %if.then552
                                        //    in Loop: Header=BB2_14 Depth=1
	addi x1, x2, 78
	sw x1, 0 ( x13 )
	addi x1, x0, 2
	sw x1, 4 ( x13 )
	lw x1, 8 ( x11 )
	nop
	addi x1, x1, 2
	sw x1, 8 ( x11 )
	lw x3, 188 ( x2 )
	nop
	addi x4, x3, 1
	sw x4, 188 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB2_222
LBB2_221:                               //    in Loop: Header=BB2_14 Depth=1
	addi x13, x13, 8
	jalr x0, LBB2_234 ( x0 )
LBB2_222:                               //  %if.then563
                                        //    in Loop: Header=BB2_14 Depth=1
	bgtu x1, x0, LBB2_224
LBB2_223:                               //  %__sprint_r.exit1259.thread
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x0, 188 ( x2 )
	addi x1, x2, 120
	add x13, x0, x1
	jalr x0, LBB2_234 ( x0 )
LBB2_224:                               //  %if.end.i1230
                                        //    in Loop: Header=BB2_14 Depth=1
	lbu x3, 101 ( x9 )
	nop
	andi x3, x3, 32
	beqz x3, LBB2_233
LBB2_225:                               //  %for.body.preheader.i1232
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x4, 184 ( x2 )
	sw x15, 16 ( x2 )               //  4-byte Folded Spill
LBB2_226:                               //  %for.body.i1237
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB2_229 Depth 3
	lw x3, 4 ( x4 )
	nop
	srli x3, x3, 1
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	beqz x3, LBB2_231
LBB2_227:                               //  %for.body6.i1245.preheader
                                        //    in Loop: Header=BB2_226 Depth=2
	sw x4, 12 ( x2 )                //  4-byte Folded Spill
	lw x3, 0 ( x4 )
	add x8, x0, x0
	jalr x0, LBB2_229 ( x0 )
LBB2_228:                               //  %for.cond4.i1239
                                        //    in Loop: Header=BB2_229 Depth=3
	addi x8, x8, 1
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 2
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	ble x1, x8, LBB2_230
LBB2_229:                               //  %for.body6.i1245
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_226 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	lh x11, 0 ( x3 )
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x9
	call $_fputwc_r
	xori x1, x10, -1
	bgtu x1, x0, LBB2_228
	jalr x0, LBB2_32 ( x0 )
LBB2_230:                               //  %for.inc10.loopexit.i1247
                                        //    in Loop: Header=BB2_226 Depth=2
	lw x1, 192 ( x2 )
	addi x11, x2, 184
	addi x12, x0, 16
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	lw x15, 16 ( x2 )               //  4-byte Folded Reload
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
LBB2_231:                               //  %for.inc10.i1252
                                        //    in Loop: Header=BB2_226 Depth=2
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	slli x3, x3, 1
	sub x1, x1, x3
	addi x4, x4, 8
	sw x1, 192 ( x2 )
	bgtu x1, x0, LBB2_226
LBB2_232:                               //  %__sprint_r.exit1259.thread1526
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x0, 8 ( x11 )
	jalr x0, LBB2_223 ( x0 )
LBB2_233:                               //  %__sprint_r.exit1259
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x9
	addi x12, x2, 184
	add x8, x0, x15
	call $__sfvwrite_r
	add x15, x0, x8
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	addi x12, x0, 16
	addi x11, x2, 184
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	sw x0, 8 ( x11 )
	sw x0, 188 ( x2 )
	addi x1, x2, 120
	add x13, x0, x1
	bgtu x10, x0, LBB2_373
LBB2_234:                               //  %if.end570
                                        //    in Loop: Header=BB2_14 Depth=1
	xori x1, x15, 128
	bgtu x1, x0, LBB2_266
LBB2_235:                               //  %if.then574
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x1, x14
	ble x8, x0, LBB2_266
LBB2_236:                               //  %while.cond579.preheader
                                        //    in Loop: Header=BB2_14 Depth=1
	ori x28, x0, $_vfiprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfiprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x13 )
	addi x4, x13, 4
	lw x3, 188 ( x2 )
	lw x1, 8 ( x11 )
	slti x5, x8, 17
	bgtu x5, x0, LBB2_252
LBB2_237:                               //  %while.body582
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB2_243 Depth 3
                                        //          Child Loop BB2_246 Depth 4
	sw x12, 0 ( x4 )
	addi x1, x1, 16
	sw x1, 8 ( x11 )
	addi x4, x3, 1
	sw x4, 188 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB2_239
LBB2_238:                               //    in Loop: Header=BB2_237 Depth=2
	addi x13, x13, 8
	add x3, x0, x4
	jalr x0, LBB2_251 ( x0 )
LBB2_239:                               //  %if.then592
                                        //    in Loop: Header=BB2_237 Depth=2
	bgtu x1, x0, LBB2_241
LBB2_240:                               //  %__sprint_r.exit1294.thread
                                        //    in Loop: Header=BB2_237 Depth=2
	sw x0, 188 ( x2 )
	add x1, x0, x0
	add x3, x0, x1
	addi x4, x2, 120
	add x13, x0, x4
	jalr x0, LBB2_251 ( x0 )
LBB2_241:                               //  %if.end.i1265
                                        //    in Loop: Header=BB2_237 Depth=2
	lbu x3, 101 ( x9 )
	nop
	andi x3, x3, 32
	beqz x3, LBB2_250
LBB2_242:                               //  %for.body.preheader.i1267
                                        //    in Loop: Header=BB2_237 Depth=2
	lw x4, 184 ( x2 )
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
LBB2_243:                               //  %for.body.i1272
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_237 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB2_246 Depth 4
	lw x3, 4 ( x4 )
	nop
	srli x3, x3, 1
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	beqz x3, LBB2_248
LBB2_244:                               //  %for.body6.i1280.preheader
                                        //    in Loop: Header=BB2_243 Depth=3
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	lw x3, 0 ( x4 )
	add x8, x0, x0
	jalr x0, LBB2_246 ( x0 )
LBB2_245:                               //  %for.cond4.i1274
                                        //    in Loop: Header=BB2_246 Depth=4
	addi x8, x8, 1
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 2
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	ble x1, x8, LBB2_247
LBB2_246:                               //  %for.body6.i1280
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_237 Depth=2
                                        //        Parent Loop BB2_243 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	lh x11, 0 ( x3 )
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x9
	call $_fputwc_r
	xori x1, x10, -1
	bgtu x1, x0, LBB2_245
	jalr x0, LBB2_32 ( x0 )
LBB2_247:                               //  %for.inc10.loopexit.i1282
                                        //    in Loop: Header=BB2_243 Depth=3
	lw x1, 192 ( x2 )
	addi x11, x2, 184
	addi x12, x0, 16
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
LBB2_248:                               //  %for.inc10.i1287
                                        //    in Loop: Header=BB2_243 Depth=3
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	slli x3, x3, 1
	sub x1, x1, x3
	addi x4, x4, 8
	sw x1, 192 ( x2 )
	bgtu x1, x0, LBB2_243
LBB2_249:                               //  %__sprint_r.exit1294.thread1531
                                        //    in Loop: Header=BB2_237 Depth=2
	sw x0, 8 ( x11 )
	jalr x0, LBB2_240 ( x0 )
LBB2_250:                               //  %__sprint_r.exit1294
                                        //    in Loop: Header=BB2_237 Depth=2
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x9
	addi x12, x2, 184
	call $__sfvwrite_r
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	addi x12, x0, 16
	addi x11, x2, 184
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	sw x0, 8 ( x11 )
	sw x0, 188 ( x2 )
	add x1, x0, x0
	add x3, x0, x1
	addi x4, x2, 120
	add x13, x0, x4
	bgtu x10, x0, LBB2_373
LBB2_251:                               //  %if.end598
                                        //    in Loop: Header=BB2_237 Depth=2
	ori x28, x0, $_vfiprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, $_vfiprintf_r.zeroes >> 12 & 0xfffff
	or x4, x4, x28
	sw x4, 0 ( x13 )
	addi x4, x13, 4
	addi x8, x8, -16
	bgt x8, x12, LBB2_237
LBB2_252:                               //  %while.end600
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x8, 0 ( x4 )
	add x1, x8, x1
	sw x1, 8 ( x11 )
	addi x4, x3, 1
	sw x4, 188 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB2_254
LBB2_253:                               //    in Loop: Header=BB2_14 Depth=1
	addi x13, x13, 8
	jalr x0, LBB2_266 ( x0 )
LBB2_254:                               //  %if.then610
                                        //    in Loop: Header=BB2_14 Depth=1
	bgtu x1, x0, LBB2_256
LBB2_255:                               //  %__sprint_r.exit1329.thread
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x0, 188 ( x2 )
	addi x1, x2, 120
	add x13, x0, x1
	jalr x0, LBB2_266 ( x0 )
LBB2_256:                               //  %if.end.i1300
                                        //    in Loop: Header=BB2_14 Depth=1
	lbu x3, 101 ( x9 )
	nop
	andi x3, x3, 32
	beqz x3, LBB2_265
LBB2_257:                               //  %for.body.preheader.i1302
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x4, 184 ( x2 )
	nop
LBB2_258:                               //  %for.body.i1307
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB2_261 Depth 3
	lw x3, 4 ( x4 )
	nop
	srli x3, x3, 1
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	beqz x3, LBB2_263
LBB2_259:                               //  %for.body6.i1315.preheader
                                        //    in Loop: Header=BB2_258 Depth=2
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	lw x3, 0 ( x4 )
	add x8, x0, x0
	jalr x0, LBB2_261 ( x0 )
LBB2_260:                               //  %for.cond4.i1309
                                        //    in Loop: Header=BB2_261 Depth=3
	addi x8, x8, 1
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 2
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	ble x1, x8, LBB2_262
LBB2_261:                               //  %for.body6.i1315
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_258 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	lh x11, 0 ( x3 )
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x9
	call $_fputwc_r
	xori x1, x10, -1
	bgtu x1, x0, LBB2_260
	jalr x0, LBB2_32 ( x0 )
LBB2_262:                               //  %for.inc10.loopexit.i1317
                                        //    in Loop: Header=BB2_258 Depth=2
	lw x1, 192 ( x2 )
	addi x11, x2, 184
	addi x12, x0, 16
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
LBB2_263:                               //  %for.inc10.i1322
                                        //    in Loop: Header=BB2_258 Depth=2
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	slli x3, x3, 1
	sub x1, x1, x3
	addi x4, x4, 8
	sw x1, 192 ( x2 )
	bgtu x1, x0, LBB2_258
LBB2_264:                               //  %__sprint_r.exit1329.thread1536
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x0, 8 ( x11 )
	jalr x0, LBB2_255 ( x0 )
LBB2_265:                               //  %__sprint_r.exit1329
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x9
	addi x12, x2, 184
	call $__sfvwrite_r
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	addi x12, x0, 16
	addi x11, x2, 184
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	sw x0, 8 ( x11 )
	sw x0, 188 ( x2 )
	addi x1, x2, 120
	add x13, x0, x1
	bgtu x10, x0, LBB2_373
LBB2_266:                               //  %if.end618
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x1, x3
	bgt x8, x0, LBB2_268
LBB2_267:                               //  %if.end618.if.end661_crit_edge
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x4, 188 ( x2 )
	lw x1, 8 ( x11 )
	jalr x0, LBB2_298 ( x0 )
LBB2_268:                               //  %while.cond623.preheader
                                        //    in Loop: Header=BB2_14 Depth=1
	ori x28, x0, $_vfiprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfiprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x13 )
	addi x4, x13, 4
	lw x3, 188 ( x2 )
	lw x1, 8 ( x11 )
	slti x5, x8, 17
	bgtu x5, x0, LBB2_284
LBB2_269:                               //  %while.body626
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB2_275 Depth 3
                                        //          Child Loop BB2_278 Depth 4
	sw x12, 0 ( x4 )
	addi x1, x1, 16
	sw x1, 8 ( x11 )
	addi x4, x3, 1
	sw x4, 188 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB2_271
LBB2_270:                               //    in Loop: Header=BB2_269 Depth=2
	addi x13, x13, 8
	add x3, x0, x4
	jalr x0, LBB2_283 ( x0 )
LBB2_271:                               //  %if.then636
                                        //    in Loop: Header=BB2_269 Depth=2
	bgtu x1, x0, LBB2_273
LBB2_272:                               //  %__sprint_r.exit1364.thread
                                        //    in Loop: Header=BB2_269 Depth=2
	sw x0, 188 ( x2 )
	add x1, x0, x0
	add x3, x0, x1
	addi x4, x2, 120
	add x13, x0, x4
	jalr x0, LBB2_283 ( x0 )
LBB2_273:                               //  %if.end.i1335
                                        //    in Loop: Header=BB2_269 Depth=2
	lbu x3, 101 ( x9 )
	nop
	andi x3, x3, 32
	beqz x3, LBB2_282
LBB2_274:                               //  %for.body.preheader.i1337
                                        //    in Loop: Header=BB2_269 Depth=2
	lw x4, 184 ( x2 )
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
LBB2_275:                               //  %for.body.i1342
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_269 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB2_278 Depth 4
	lw x3, 4 ( x4 )
	nop
	srli x3, x3, 1
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	beqz x3, LBB2_280
LBB2_276:                               //  %for.body6.i1350.preheader
                                        //    in Loop: Header=BB2_275 Depth=3
	sw x4, 32 ( x2 )                //  4-byte Folded Spill
	lw x3, 0 ( x4 )
	add x8, x0, x0
	jalr x0, LBB2_278 ( x0 )
LBB2_277:                               //  %for.cond4.i1344
                                        //    in Loop: Header=BB2_278 Depth=4
	addi x8, x8, 1
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 2
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	ble x1, x8, LBB2_279
LBB2_278:                               //  %for.body6.i1350
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_269 Depth=2
                                        //        Parent Loop BB2_275 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	lh x11, 0 ( x3 )
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x9
	call $_fputwc_r
	xori x1, x10, -1
	bgtu x1, x0, LBB2_277
	jalr x0, LBB2_32 ( x0 )
LBB2_279:                               //  %for.inc10.loopexit.i1352
                                        //    in Loop: Header=BB2_275 Depth=3
	lw x1, 192 ( x2 )
	addi x11, x2, 184
	addi x12, x0, 16
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	lw x8, 16 ( x2 )                //  4-byte Folded Reload
	lw x4, 32 ( x2 )                //  4-byte Folded Reload
LBB2_280:                               //  %for.inc10.i1357
                                        //    in Loop: Header=BB2_275 Depth=3
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	slli x3, x3, 1
	sub x1, x1, x3
	addi x4, x4, 8
	sw x1, 192 ( x2 )
	bgtu x1, x0, LBB2_275
LBB2_281:                               //  %__sprint_r.exit1364.thread1541
                                        //    in Loop: Header=BB2_269 Depth=2
	sw x0, 8 ( x11 )
	jalr x0, LBB2_272 ( x0 )
LBB2_282:                               //  %__sprint_r.exit1364
                                        //    in Loop: Header=BB2_269 Depth=2
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x9
	addi x12, x2, 184
	call $__sfvwrite_r
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	addi x12, x0, 16
	addi x11, x2, 184
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	sw x0, 8 ( x11 )
	sw x0, 188 ( x2 )
	add x1, x0, x0
	add x3, x0, x1
	addi x4, x2, 120
	add x13, x0, x4
	bgtu x10, x0, LBB2_373
LBB2_283:                               //  %if.end642
                                        //    in Loop: Header=BB2_269 Depth=2
	ori x28, x0, $_vfiprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, $_vfiprintf_r.zeroes >> 12 & 0xfffff
	or x4, x4, x28
	sw x4, 0 ( x13 )
	addi x4, x13, 4
	addi x8, x8, -16
	bgt x8, x12, LBB2_269
LBB2_284:                               //  %while.end644
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x8, 0 ( x4 )
	add x1, x8, x1
	sw x1, 8 ( x11 )
	addi x4, x3, 1
	sw x4, 188 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB2_286
LBB2_285:                               //    in Loop: Header=BB2_14 Depth=1
	addi x13, x13, 8
	jalr x0, LBB2_298 ( x0 )
LBB2_286:                               //  %if.then654
                                        //    in Loop: Header=BB2_14 Depth=1
	bgtu x1, x0, LBB2_288
LBB2_287:                               //  %__sprint_r.exit1399.thread
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x0, 188 ( x2 )
	add x1, x0, x0
	add x4, x0, x1
	addi x3, x2, 120
	add x13, x0, x3
	jalr x0, LBB2_298 ( x0 )
LBB2_288:                               //  %if.end.i1370
                                        //    in Loop: Header=BB2_14 Depth=1
	lbu x3, 101 ( x9 )
	nop
	andi x3, x3, 32
	beqz x3, LBB2_297
LBB2_289:                               //  %for.body.preheader.i1372
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x4, 184 ( x2 )
	nop
LBB2_290:                               //  %for.body.i1377
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB2_293 Depth 3
	lw x3, 4 ( x4 )
	nop
	srli x3, x3, 1
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	beqz x3, LBB2_295
LBB2_291:                               //  %for.body6.i1385.preheader
                                        //    in Loop: Header=BB2_290 Depth=2
	sw x4, 32 ( x2 )                //  4-byte Folded Spill
	lw x3, 0 ( x4 )
	add x8, x0, x0
	jalr x0, LBB2_293 ( x0 )
LBB2_292:                               //  %for.cond4.i1379
                                        //    in Loop: Header=BB2_293 Depth=3
	addi x8, x8, 1
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 2
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	ble x1, x8, LBB2_294
LBB2_293:                               //  %for.body6.i1385
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_290 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	lh x11, 0 ( x3 )
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x9
	call $_fputwc_r
	xori x1, x10, -1
	bgtu x1, x0, LBB2_292
	jalr x0, LBB2_32 ( x0 )
LBB2_294:                               //  %for.inc10.loopexit.i1387
                                        //    in Loop: Header=BB2_290 Depth=2
	lw x1, 192 ( x2 )
	addi x11, x2, 184
	addi x12, x0, 16
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	lw x4, 32 ( x2 )                //  4-byte Folded Reload
LBB2_295:                               //  %for.inc10.i1392
                                        //    in Loop: Header=BB2_290 Depth=2
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	slli x3, x3, 1
	sub x1, x1, x3
	addi x4, x4, 8
	sw x1, 192 ( x2 )
	bgtu x1, x0, LBB2_290
LBB2_296:                               //  %__sprint_r.exit1399.thread1546
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x0, 8 ( x11 )
	jalr x0, LBB2_287 ( x0 )
LBB2_297:                               //  %__sprint_r.exit1399
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x9
	addi x12, x2, 184
	call $__sfvwrite_r
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	addi x12, x0, 16
	addi x11, x2, 184
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	sw x0, 8 ( x11 )
	sw x0, 188 ( x2 )
	add x1, x0, x0
	add x4, x0, x1
	addi x3, x2, 120
	add x13, x0, x3
	bgtu x10, x0, LBB2_373
LBB2_298:                               //  %if.end661
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 0 ( x13 )
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 4 ( x13 )
	add x1, x3, x1
	sw x1, 8 ( x11 )
	addi x3, x4, 1
	sw x3, 188 ( x2 )
	slti x4, x4, 7
	beqz x4, LBB2_300
LBB2_299:                               //    in Loop: Header=BB2_14 Depth=1
	addi x4, x13, 8
	jalr x0, LBB2_312 ( x0 )
LBB2_300:                               //  %if.then671
                                        //    in Loop: Header=BB2_14 Depth=1
	bgtu x1, x0, LBB2_302
LBB2_301:                               //  %__sprint_r.exit1434.thread
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x0, 188 ( x2 )
	add x1, x0, x0
	add x3, x0, x1
	addi x4, x2, 120
	jalr x0, LBB2_312 ( x0 )
LBB2_302:                               //  %if.end.i1405
                                        //    in Loop: Header=BB2_14 Depth=1
	lbu x3, 101 ( x9 )
	nop
	andi x3, x3, 32
	beqz x3, LBB2_311
LBB2_303:                               //  %for.body.preheader.i1407
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x4, 184 ( x2 )
	nop
LBB2_304:                               //  %for.body.i1412
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB2_307 Depth 3
	lw x3, 4 ( x4 )
	nop
	srli x3, x3, 1
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	beqz x3, LBB2_309
LBB2_305:                               //  %for.body6.i1420.preheader
                                        //    in Loop: Header=BB2_304 Depth=2
	sw x4, 44 ( x2 )                //  4-byte Folded Spill
	lw x3, 0 ( x4 )
	add x8, x0, x0
	jalr x0, LBB2_307 ( x0 )
LBB2_306:                               //  %for.cond4.i1414
                                        //    in Loop: Header=BB2_307 Depth=3
	addi x8, x8, 1
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 2
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	ble x1, x8, LBB2_308
LBB2_307:                               //  %for.body6.i1420
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_304 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	lh x11, 0 ( x3 )
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x9
	call $_fputwc_r
	xori x1, x10, -1
	bgtu x1, x0, LBB2_306
	jalr x0, LBB2_32 ( x0 )
LBB2_308:                               //  %for.inc10.loopexit.i1422
                                        //    in Loop: Header=BB2_304 Depth=2
	lw x1, 192 ( x2 )
	addi x11, x2, 184
	addi x12, x0, 16
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
LBB2_309:                               //  %for.inc10.i1427
                                        //    in Loop: Header=BB2_304 Depth=2
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	slli x3, x3, 1
	sub x1, x1, x3
	addi x4, x4, 8
	sw x1, 192 ( x2 )
	bgtu x1, x0, LBB2_304
LBB2_310:                               //  %__sprint_r.exit1434.thread1551
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x0, 8 ( x11 )
	jalr x0, LBB2_301 ( x0 )
LBB2_311:                               //  %__sprint_r.exit1434
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x9
	addi x12, x2, 184
	call $__sfvwrite_r
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	addi x12, x0, 16
	addi x11, x2, 184
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	sw x0, 8 ( x11 )
	sw x0, 188 ( x2 )
	add x1, x0, x0
	add x3, x0, x1
	addi x4, x2, 120
	bgtu x10, x0, LBB2_373
LBB2_312:                               //  %if.end677
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x5, 52 ( x2 )                //  4-byte Folded Reload
	nop
	andi x5, x5, 4
	bgtu x5, x0, LBB2_317
LBB2_313:                               //    in Loop: Header=BB2_14 Depth=1
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x14, LBB2_315
LBB2_314:                               //  %if.end724
                                        //    in Loop: Header=BB2_14 Depth=1
	add x4, x0, x14
LBB2_315:                               //  %if.end724
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x4
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB2_350
LBB2_316:                               //    in Loop: Header=BB2_14 Depth=1
	addi x4, x2, 120
	jalr x0, LBB2_360 ( x0 )
LBB2_317:                               //  %if.then680
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x5, x14
	ble x8, x0, LBB2_313
LBB2_318:                               //  %while.cond685.preheader
                                        //    in Loop: Header=BB2_14 Depth=1
	ori x28, x0, $_vfiprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x5, $_vfiprintf_r.blanks >> 12 & 0xfffff
	or x5, x5, x28
	sw x5, 0 ( x4 )
	addi x5, x4, 4
	slti x7, x8, 17
	bgtu x7, x0, LBB2_334
LBB2_319:                               //  %while.body688
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB2_325 Depth 3
                                        //          Child Loop BB2_328 Depth 4
	sw x12, 0 ( x5 )
	addi x1, x1, 16
	sw x1, 8 ( x11 )
	addi x5, x3, 1
	sw x5, 188 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB2_321
LBB2_320:                               //    in Loop: Header=BB2_319 Depth=2
	addi x4, x4, 8
	add x3, x0, x5
	jalr x0, LBB2_333 ( x0 )
LBB2_321:                               //  %if.then698
                                        //    in Loop: Header=BB2_319 Depth=2
	bgtu x1, x0, LBB2_323
LBB2_322:                               //  %__sprint_r.exit1469.thread
                                        //    in Loop: Header=BB2_319 Depth=2
	sw x0, 188 ( x2 )
	add x1, x0, x0
	add x3, x0, x1
	addi x4, x2, 120
	jalr x0, LBB2_333 ( x0 )
LBB2_323:                               //  %if.end.i1440
                                        //    in Loop: Header=BB2_319 Depth=2
	lbu x3, 101 ( x9 )
	nop
	andi x3, x3, 32
	beqz x3, LBB2_332
LBB2_324:                               //  %for.body.preheader.i1442
                                        //    in Loop: Header=BB2_319 Depth=2
	lw x4, 184 ( x2 )
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
LBB2_325:                               //  %for.body.i1447
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_319 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB2_328 Depth 4
	lw x3, 4 ( x4 )
	nop
	srli x3, x3, 1
	sw x3, 52 ( x2 )                //  4-byte Folded Spill
	beqz x3, LBB2_330
LBB2_326:                               //  %for.body6.i1455.preheader
                                        //    in Loop: Header=BB2_325 Depth=3
	sw x4, 48 ( x2 )                //  4-byte Folded Spill
	lw x3, 0 ( x4 )
	add x8, x0, x0
	jalr x0, LBB2_328 ( x0 )
LBB2_327:                               //  %for.cond4.i1449
                                        //    in Loop: Header=BB2_328 Depth=4
	addi x8, x8, 1
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 2
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	ble x1, x8, LBB2_329
LBB2_328:                               //  %for.body6.i1455
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_319 Depth=2
                                        //        Parent Loop BB2_325 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	lh x11, 0 ( x3 )
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x9
	call $_fputwc_r
	xori x1, x10, -1
	bgtu x1, x0, LBB2_327
	jalr x0, LBB2_32 ( x0 )
LBB2_329:                               //  %for.inc10.loopexit.i1457
                                        //    in Loop: Header=BB2_325 Depth=3
	lw x1, 192 ( x2 )
	addi x11, x2, 184
	addi x12, x0, 16
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
LBB2_330:                               //  %for.inc10.i1462
                                        //    in Loop: Header=BB2_325 Depth=3
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	slli x3, x3, 1
	sub x1, x1, x3
	addi x4, x4, 8
	sw x1, 192 ( x2 )
	bgtu x1, x0, LBB2_325
LBB2_331:                               //  %__sprint_r.exit1469.thread1556
                                        //    in Loop: Header=BB2_319 Depth=2
	sw x0, 8 ( x11 )
	jalr x0, LBB2_322 ( x0 )
LBB2_332:                               //  %__sprint_r.exit1469
                                        //    in Loop: Header=BB2_319 Depth=2
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x9
	addi x12, x2, 184
	call $__sfvwrite_r
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	addi x12, x0, 16
	addi x11, x2, 184
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	sw x0, 8 ( x11 )
	sw x0, 188 ( x2 )
	add x1, x0, x0
	add x3, x0, x1
	addi x4, x2, 120
	bgtu x10, x0, LBB2_373
LBB2_333:                               //  %if.end704
                                        //    in Loop: Header=BB2_319 Depth=2
	ori x28, x0, $_vfiprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x5, $_vfiprintf_r.blanks >> 12 & 0xfffff
	or x5, x5, x28
	sw x5, 0 ( x4 )
	addi x5, x4, 4
	addi x8, x8, -16
	bgt x8, x12, LBB2_319
LBB2_334:                               //  %while.end706
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x8, 0 ( x5 )
	add x1, x8, x1
	sw x1, 8 ( x11 )
	addi x4, x3, 1
	sw x4, 188 ( x2 )
	slti x3, x3, 7
	bgtu x3, x0, LBB2_313
LBB2_335:                               //  %if.then716
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB2_345
LBB2_336:                               //  %if.end.i1475
                                        //    in Loop: Header=BB2_14 Depth=1
	lbu x3, 101 ( x9 )
	nop
	andi x3, x3, 32
	beqz x3, LBB2_346
LBB2_337:                               //  %for.body.preheader.i1477
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x4, 184 ( x2 )
	nop
LBB2_338:                               //  %for.body.i1482
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB2_341 Depth 3
	lw x3, 4 ( x4 )
	nop
	srli x3, x3, 1
	sw x3, 52 ( x2 )                //  4-byte Folded Spill
	beqz x3, LBB2_343
LBB2_339:                               //  %for.body6.i1490.preheader
                                        //    in Loop: Header=BB2_338 Depth=2
	sw x4, 48 ( x2 )                //  4-byte Folded Spill
	lw x3, 0 ( x4 )
	add x8, x0, x0
	jalr x0, LBB2_341 ( x0 )
LBB2_340:                               //  %for.cond4.i1484
                                        //    in Loop: Header=BB2_341 Depth=3
	addi x8, x8, 1
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 2
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	ble x1, x8, LBB2_342
LBB2_341:                               //  %for.body6.i1490
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_338 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	lh x11, 0 ( x3 )
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x9
	call $_fputwc_r
	xori x1, x10, -1
	bgtu x1, x0, LBB2_340
	jalr x0, LBB2_32 ( x0 )
LBB2_342:                               //  %for.inc10.loopexit.i1492
                                        //    in Loop: Header=BB2_338 Depth=2
	lw x1, 192 ( x2 )
	addi x11, x2, 184
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
LBB2_343:                               //  %for.inc10.i1497
                                        //    in Loop: Header=BB2_338 Depth=2
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	slli x3, x3, 1
	sub x1, x1, x3
	addi x4, x4, 8
	sw x1, 192 ( x2 )
	bgtu x1, x0, LBB2_338
LBB2_344:                               //  %__sprint_r.exit1504.thread1561
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x0, 192 ( x2 )
LBB2_345:                               //  %if.end724.thread.sink.split
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x0, 188 ( x2 )
	jalr x0, LBB2_347 ( x0 )
LBB2_346:                               //  %__sprint_r.exit1504
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x9
	addi x12, x2, 184
	call $__sfvwrite_r
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
	addi x11, x2, 184
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	sw x0, 8 ( x11 )
	sw x0, 188 ( x2 )
	bgtu x10, x0, LBB2_373
LBB2_347:                               //  %if.end724.thread
                                        //    in Loop: Header=BB2_14 Depth=1
	addi x4, x2, 120
	bgt x5, x14, LBB2_349
LBB2_348:                               //  %if.end724.thread
                                        //    in Loop: Header=BB2_14 Depth=1
	add x5, x0, x14
LBB2_349:                               //  %if.end724.thread
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x5
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB2_360 ( x0 )
LBB2_350:                               //  %if.end.i1055
                                        //    in Loop: Header=BB2_14 Depth=1
	lbu x3, 101 ( x9 )
	nop
	andi x3, x3, 32
	beqz x3, LBB2_359
LBB2_351:                               //  %for.body.preheader.i1057
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x5, 184 ( x2 )
	addi x4, x2, 120
LBB2_352:                               //  %for.body.i1062
                                        //    Parent Loop BB2_14 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB2_355 Depth 3
	lw x3, 4 ( x5 )
	nop
	srli x3, x3, 1
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	beqz x3, LBB2_357
LBB2_353:                               //  %for.body6.i1070.preheader
                                        //    in Loop: Header=BB2_352 Depth=2
	sw x5, 52 ( x2 )                //  4-byte Folded Spill
	lw x3, 0 ( x5 )
	add x8, x0, x0
	jalr x0, LBB2_355 ( x0 )
LBB2_354:                               //  %for.cond4.i1064
                                        //    in Loop: Header=BB2_355 Depth=3
	addi x8, x8, 1
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 2
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	ble x1, x8, LBB2_356
LBB2_355:                               //  %for.body6.i1070
                                        //    Parent Loop BB2_14 Depth=1
                                        //      Parent Loop BB2_352 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sw x3, 68 ( x2 )                //  4-byte Folded Spill
	lh x11, 0 ( x3 )
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x9
	call $_fputwc_r
	xori x1, x10, -1
	bgtu x1, x0, LBB2_354
	jalr x0, LBB2_32 ( x0 )
LBB2_356:                               //  %for.inc10.loopexit.i1072
                                        //    in Loop: Header=BB2_352 Depth=2
	lw x1, 192 ( x2 )
	addi x11, x2, 184
	addi x4, x2, 120
	lw x5, 52 ( x2 )                //  4-byte Folded Reload
LBB2_357:                               //  %for.inc10.i1077
                                        //    in Loop: Header=BB2_352 Depth=2
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	slli x3, x3, 1
	sub x1, x1, x3
	addi x5, x5, 8
	sw x1, 192 ( x2 )
	bgtu x1, x0, LBB2_352
LBB2_358:                               //  %__sprint_r.exit1084.thread
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x0, 8 ( x11 )
	sw x0, 188 ( x2 )
	jalr x0, LBB2_360 ( x0 )
LBB2_359:                               //  %__sprint_r.exit1084
                                        //    in Loop: Header=BB2_14 Depth=1
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x9
	addi x12, x2, 184
	call $__sfvwrite_r
	addi x11, x2, 184
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	sw x0, 8 ( x11 )
	sw x0, 188 ( x2 )
	addi x4, x2, 120
	bgtu x10, x0, LBB2_373
LBB2_360:                               //  %if.end738
                                        //    in Loop: Header=BB2_14 Depth=1
	sw x0, 188 ( x2 )
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB2_14 ( x0 )
LBB2_361:                               //  %done
	lw x1, 192 ( x2 )
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB2_372
LBB2_362:                               //  %if.end.i
	lbu x3, 101 ( x9 )
	nop
	andi x3, x3, 32
	beqz x3, LBB2_371
LBB2_363:                               //  %for.body.preheader.i
	lw x5, 184 ( x2 )
	add x8, x0, x0
	addi x4, x2, 184
LBB2_364:                               //  %for.body.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB2_367 Depth 2
	lw x3, 4 ( x5 )
	nop
	srli x3, x3, 1
	sw x3, 68 ( x2 )                //  4-byte Folded Spill
	beqz x3, LBB2_369
LBB2_365:                               //  %for.body6.i.preheader
                                        //    in Loop: Header=BB2_364 Depth=1
	sw x5, 56 ( x2 )                //  4-byte Folded Spill
	lw x3, 0 ( x5 )
	jalr x0, LBB2_367 ( x0 )
LBB2_366:                               //  %for.cond4.i
                                        //    in Loop: Header=BB2_367 Depth=2
	addi x8, x8, 1
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 2
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	ble x1, x8, LBB2_368
LBB2_367:                               //  %for.body6.i
                                        //    Parent Loop BB2_364 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x3, 72 ( x2 )                //  4-byte Folded Spill
	lh x11, 0 ( x3 )
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x9
	call $_fputwc_r
	xori x1, x10, -1
	bgtu x1, x0, LBB2_366
	jalr x0, LBB2_32 ( x0 )
LBB2_368:                               //  %for.inc10.loopexit.i
                                        //    in Loop: Header=BB2_364 Depth=1
	lw x1, 192 ( x2 )
	addi x4, x2, 184
	lw x5, 56 ( x2 )                //  4-byte Folded Reload
	add x8, x0, x0
LBB2_369:                               //  %for.inc10.i
                                        //    in Loop: Header=BB2_364 Depth=1
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	slli x3, x3, 1
	sub x1, x1, x3
	addi x5, x5, 8
	sw x1, 192 ( x2 )
	bgtu x1, x0, LBB2_364
LBB2_370:                               //  %__sprint_r.exit.thread
	sw x0, 8 ( x4 )
	sw x0, 188 ( x2 )
	jalr x0, LBB2_372 ( x0 )
LBB2_371:                               //  %__sprint_r.exit
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x9
	addi x8, x2, 184
	add x12, x0, x8
	call $__sfvwrite_r
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
	sw x0, 8 ( x8 )
	sw x0, 188 ( x2 )
	bgtu x10, x0, LBB2_373
LBB2_372:                               //  %if.end751
	sw x0, 188 ( x2 )
LBB2_373:                               //  %if.end757
	lbu x1, 12 ( x9 )
	nop
	andi x1, x1, 64
	srli x1, x1, 6
	beqz x1, LBB2_375
LBB2_374:
	not x10, x0
	jalr x0, LBB2_376 ( x0 )
LBB2_375:                               //  %if.end757
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
LBB2_376:                               //  %cleanup
	lw x8, 204 ( x2 )               //  4-byte Folded Reload
	lw x1, 212 ( x2 )
$cfi13:
	.cfi_same_value 1
	addi x2, x2, 216
$cfi14:
	.cfi_adjust_cfa_offset -216
$cfi15:
	.cfi_def_cfa 2, 0
	ret
LBB2_377:                               //  %if.then421
                                        //    in Loop: Header=BB2_14 Depth=1
	addi x1, x8, 48
	jalr x0, LBB2_160 ( x0 )
$func_end2:
	.size	$_vfiprintf_r, ($func_end2)-($_vfiprintf_r)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI2_0:
	.long	LBB2_361
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_43
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_45
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_48
	.long	LBB2_51
	.long	LBB2_164
	.long	LBB2_50
	.long	LBB2_52
	.long	LBB2_164
	.long	LBB2_61
	.long	LBB2_62
	.long	LBB2_62
	.long	LBB2_62
	.long	LBB2_62
	.long	LBB2_62
	.long	LBB2_62
	.long	LBB2_62
	.long	LBB2_62
	.long	LBB2_62
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_70
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_91
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_112
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_122
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_69
	.long	LBB2_71
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_64
	.long	LBB2_71
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_65
	.long	LBB2_164
	.long	LBB2_84
	.long	LBB2_92
	.long	LBB2_101
	.long	LBB2_68
	.long	LBB2_164
	.long	LBB2_102
	.long	LBB2_164
	.long	LBB2_113
	.long	LBB2_164
	.long	LBB2_164
	.long	LBB2_121

	.text
	.type	$__sbprintf,@function
$__sbprintf:                            //  @__sbprintf
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi16:
	.cfi_def_cfa 2, 0
$cfi17:
	.cfi_val_offset 2, 0
	addi x2, x2, -1152
$cfi18:
	.cfi_adjust_cfa_offset 1152
	sw x1, 1148 ( x2 )
$cfi19:
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
	call $_vfiprintf_r
	add x3, x0, x10
	bgt x0, x3, LBB3_3
LBB3_1:                                 //  %land.lhs.true
	addi x11, x2, 1036
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	call $_fflush_r
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	add x1, x0, x0
	beq x10, x1, LBB3_3
LBB3_2:                                 //  %land.lhs.true
	not x3, x0
LBB3_3:                                 //  %if.end
	lbu x1, 1048 ( x2 )
	nop
	andi x1, x1, 64
	beqz x1, LBB3_5
LBB3_4:                                 //  %if.then15
	lh x1, 12 ( x8 )
	nop
	ori x1, x1, 64
	sh x1, 12 ( x8 )
LBB3_5:                                 //  %if.end19
	add x10, x0, x3
	lw x8, 1140 ( x2 )              //  4-byte Folded Reload
	lw x1, 1148 ( x2 )
$cfi20:
	.cfi_same_value 1
	addi x2, x2, 1152
$cfi21:
	.cfi_adjust_cfa_offset -1152
$cfi22:
	.cfi_def_cfa 2, 0
	ret
$func_end3:
	.size	$__sbprintf, ($func_end3)-($__sbprintf)
	.cfi_endproc

	.address_space	0	
	.address_space	0	
	.type	$_vfiprintf_r.blanks,@object //  @_vfiprintf_r.blanks
	.section	.rodata,"a",@progbits
$_vfiprintf_r.blanks:
	.zero	16,32
	.size	$_vfiprintf_r.blanks, 16

	.address_space	0	
	.type	$_vfiprintf_r.zeroes,@object //  @_vfiprintf_r.zeroes
$_vfiprintf_r.zeroes:
	.zero	16,48
	.size	$_vfiprintf_r.zeroes, 16

	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"0123456789abcdef"
	.size	$.str, 17

	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
$.str.1:
	.asciz	"(null)"
	.size	$.str.1, 7

	.address_space	0	
	.type	$.str.2,@object         //  @.str.2
$.str.2:
	.asciz	"0123456789ABCDEF"
	.size	$.str.2, 17

	.address_space	0	
	.type	$.str.3,@object         //  @.str.3
$.str.3:
	.asciz	"bug in vfprintf: bad base"
	.size	$.str.3, 26


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
