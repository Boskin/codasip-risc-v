	.text
	.file	"vfwprintf.bc"
	.globl	$vfwprintf
	.type	$vfwprintf,@function
$vfwprintf:                             //  @vfwprintf
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
	j $_vfwprintf_r
$func_end0:
	.size	$vfwprintf, ($func_end0)-($vfwprintf)
	.cfi_endproc

	.globl	$_vfwprintf_r
	.type	$_vfwprintf_r,@function
$_vfwprintf_r:                          //  @_vfwprintf_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi2:
	.cfi_def_cfa 2, 0
$cfi3:
	.cfi_val_offset 2, 0
	addi x2, x2, -1328
$cfi4:
	.cfi_adjust_cfa_offset 1328
	sw x1, 1324 ( x2 )
$cfi5:
	.cfi_offset 1, -4
	sw x8, 1316 ( x2 )              //  4-byte Folded Spill
	sw x12, 112 ( x2 )              //  4-byte Folded Spill
	sw x11, 104 ( x2 )              //  4-byte Folded Spill
	add x8, x0, x10
	sw x13, 116 ( x2 )              //  4-byte Folded Spill
	sw x13, 168 ( x2 )
	sw x0, 136 ( x2 )
	call $_localeconv_r
	lw x1, 0 ( x10 )
	nop
	lb x1, 0 ( x1 )
	nop
	sh x1, 164 ( x2 )
	beqz x8, LBB1_3
LBB1_1:                                 //  %land.lhs.true
	lw x1, 56 ( x8 )
	nop
	bgtu x1, x0, LBB1_3
LBB1_2:                                 //  %if.then
	add x10, x0, x8
	call $__sinit
LBB1_3:                                 //  %if.end
	lw x5, 104 ( x2 )               //  4-byte Folded Reload
	nop
	lh x1, 12 ( x5 )
	lui x3, 8192>>12 
	and x4, x3, x1
	bgtu x4, x0, LBB1_5
LBB1_4:                                 //  %if.then14
	or x1, x3, x1
	sh x1, 12 ( x5 )
	lw x4, 100 ( x5 )
	nop
	or x3, x3, x4
	sw x3, 100 ( x5 )
LBB1_5:                                 //  %do.end22
	andi x3, x1, 8
	sw x8, 100 ( x2 )               //  4-byte Folded Spill
	beqz x3, LBB1_7
LBB1_6:                                 //  %lor.lhs.false
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
	nop
	lw x3, 16 ( x3 )
	nop
	bgtu x3, x0, LBB1_10
LBB1_7:                                 //  %land.lhs.true29
	add x10, x0, x8
	lw x8, 104 ( x2 )               //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__swsetup_r
	beqz x10, LBB1_9
LBB1_8:
	not x4, x0
	jalr x0, LBB1_416 ( x0 )
LBB1_9:                                 //  %land.lhs.true29.if.end45_crit_edge
	lh x1, 12 ( x8 )
	lw x8, 100 ( x2 )               //  4-byte Folded Reload
LBB1_10:                                //  %if.end45
	andi x3, x1, 26
	xori x3, x3, 10
	bgtu x3, x0, LBB1_19
LBB1_11:                                //  %land.lhs.true51
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
	nop
	lh x3, 14 ( x3 )
	nop
	bgt x0, x3, LBB1_19
LBB1_12:                                //  %if.then55
	ori x28, x0, 65533 & 0xfff
	slli x28, x28, 20
	lui x4, 65533 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	and x1, x4, x1
	addi x11, x2, 1212
	sh x1, 12 ( x11 )
	lw x5, 104 ( x2 )               //  4-byte Folded Reload
	nop
	lw x1, 100 ( x5 )
	lw x4, 28 ( x5 )
	lw x5, 36 ( x5 )
	addi x7, x2, 188
	addi x9, x0, 1024
	sw x1, 100 ( x11 )
	sh x3, 14 ( x11 )
	sw x4, 28 ( x11 )
	sw x5, 36 ( x11 )
	sw x7, 1212 ( x2 )
	sw x7, 16 ( x11 )
	sw x9, 8 ( x11 )
	sw x9, 1232 ( x2 )
	sw x0, 24 ( x11 )
	add x10, x0, x8
	lw x12, 112 ( x2 )              //  4-byte Folded Reload
	lw x13, 116 ( x2 )              //  4-byte Folded Reload
	nop
	call $_vfwprintf_r
	sw x10, 92 ( x2 )               //  4-byte Folded Spill
	bgez x10, LBB1_14
LBB1_13:
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_17 ( x0 )
LBB1_14:                                //  %land.lhs.true.i
	addi x11, x2, 1212
	add x10, x0, x8
	call $_fflush_r
	add x1, x0, x0
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	beq x10, x1, LBB1_16
LBB1_15:                                //  %land.lhs.true.i
	not x4, x0
LBB1_16:                                //  %land.lhs.true.i
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
LBB1_17:                                //  %if.end.i
	lbu x1, 1224 ( x2 )
	nop
	andi x1, x1, 64
	bgtu x1, x0, LBB1_419
LBB1_418:                               //  %if.end.i
	jalr x0, LBB1_416 ( x0 )
LBB1_419:                               //  %if.end.i
LBB1_18:                                //  %if.then15.i
	lh x1, 12 ( x3 )
	nop
	ori x1, x1, 64
	sh x1, 12 ( x3 )
	jalr x0, LBB1_416 ( x0 )
LBB1_19:                                //  %if.end69
	addi x1, x2, 142
	addi x3, x2, 1212
	addi x7, x2, 124
	add x4, x0, x0
	addi x5, x1, 6
	sw x5, 28 ( x2 )                //  4-byte Folded Spill
	addi x5, x2, 188
	sw x3, 124 ( x2 )
	sw x0, 8 ( x7 )
	addi x1, x1, 4
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	addi x1, x5, 80
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	sw x0, 128 ( x2 )
	sw x4, 92 ( x2 )                //  4-byte Folded Spill
	sw x4, 40 ( x2 )                //  4-byte Folded Spill
	sw x4, 52 ( x2 )                //  4-byte Folded Spill
	sw x4, 36 ( x2 )                //  4-byte Folded Spill
	sw x4, 76 ( x2 )                //  4-byte Folded Spill
	sw x4, 48 ( x2 )                //  4-byte Folded Spill
LBB1_20:                                //  %for.cond.outer
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_21 Depth 2
                                        //        Child Loop BB1_22 Depth 3
                                        //        Child Loop BB1_35 Depth 3
                                        //          Child Loop BB1_36 Depth 4
                                        //            Child Loop BB1_58 Depth 5
                                        //            Child Loop BB1_49 Depth 5
                                        //      Child Loop BB1_172 Depth 2
                                        //      Child Loop BB1_211 Depth 2
                                        //      Child Loop BB1_222 Depth 2
                                        //      Child Loop BB1_213 Depth 2
                                        //      Child Loop BB1_118 Depth 2
                                        //      Child Loop BB1_124 Depth 2
                                        //      Child Loop BB1_244 Depth 2
                                        //      Child Loop BB1_265 Depth 2
                                        //      Child Loop BB1_274 Depth 2
                                        //      Child Loop BB1_380 Depth 2
                                        //      Child Loop BB1_338 Depth 2
                                        //      Child Loop BB1_361 Depth 2
                                        //      Child Loop BB1_315 Depth 2
                                        //      Child Loop BB1_297 Depth 2
                                        //      Child Loop BB1_394 Depth 2
	addi x1, x2, 1212
	add x9, x0, x1
	lw x5, 112 ( x2 )               //  4-byte Folded Reload
	nop
LBB1_21:                                //  %for.cond
                                        //    Parent Loop BB1_20 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_22 Depth 3
                                        //        Child Loop BB1_35 Depth 3
                                        //          Child Loop BB1_36 Depth 4
                                        //            Child Loop BB1_58 Depth 5
                                        //            Child Loop BB1_49 Depth 5
	add x4, x0, x5
	add x8, x0, x5
LBB1_22:                                //  %while.cond
                                        //    Parent Loop BB1_20 Depth=1
                                        //      Parent Loop BB1_21 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lhu x1, 0 ( x8 )
	nop
	beqz x1, LBB1_25
LBB1_23:                                //  %while.cond
                                        //    in Loop: Header=BB1_22 Depth=3
	xori x3, x1, 37
	beqz x3, LBB1_25
LBB1_24:                                //  %while.body
                                        //    in Loop: Header=BB1_22 Depth=3
	addi x8, x8, 2
	jalr x0, LBB1_22 ( x0 )
LBB1_25:                                //  %while.end
                                        //    in Loop: Header=BB1_21 Depth=2
	sub x3, x8, x4
	srai x5, x3, 1
	bgtu x5, x0, LBB1_27
LBB1_26:                                //    in Loop: Header=BB1_21 Depth=2
	sw x9, 68 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_33 ( x0 )
LBB1_27:                                //  %if.then78
                                        //    in Loop: Header=BB1_21 Depth=2
	sw x3, 4 ( x9 )
	sw x4, 0 ( x9 )
	lw x4, 8 ( x7 )
	nop
	add x3, x3, x4
	sw x3, 8 ( x7 )
	lw x3, 128 ( x2 )
	nop
	addi x4, x3, 1
	slti x3, x3, 7
	sw x4, 128 ( x2 )
	beqz x3, LBB1_29
LBB1_28:                                //    in Loop: Header=BB1_21 Depth=2
	addi x9, x9, 8
	jalr x0, LBB1_32 ( x0 )
LBB1_29:                                //  %if.then85
                                        //    in Loop: Header=BB1_21 Depth=2
	sw x5, 116 ( x2 )               //  4-byte Folded Spill
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 104 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x7
	call $__sprint_r
	beqz x10, LBB1_31
LBB1_30:
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_413 ( x0 )
LBB1_31:                                //  %if.then85.if.end91_crit_edge
                                        //    in Loop: Header=BB1_21 Depth=2
	lh x1, 0 ( x8 )
	addi x3, x2, 1212
	add x9, x0, x3
	lw x5, 116 ( x2 )               //  4-byte Folded Reload
LBB1_32:                                //  %if.end91
                                        //    in Loop: Header=BB1_21 Depth=2
	sw x9, 68 ( x2 )                //  4-byte Folded Spill
	lw x3, 92 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x5
	sw x3, 92 ( x2 )                //  4-byte Folded Spill
LBB1_33:                                //  %if.end93
                                        //    in Loop: Header=BB1_21 Depth=2
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	bgtu x1, x0, LBB1_421
LBB1_420:                               //  %if.end93
                                        //    in Loop: Header=BB1_21 Depth=2
	jalr x0, LBB1_407 ( x0 )
LBB1_421:                               //  %if.end93
                                        //    in Loop: Header=BB1_21 Depth=2
LBB1_34:                                //  %if.end98
                                        //    in Loop: Header=BB1_21 Depth=2
	addi x1, x8, 2
	sh x0, 166 ( x2 )
	add x3, x0, x0
	sw x3, 96 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x3
	not x4, x0
	sw x4, 72 ( x2 )                //  4-byte Folded Spill
	sw x3, 88 ( x2 )                //  4-byte Folded Spill
LBB1_35:                                //  %rflag
                                        //    Parent Loop BB1_20 Depth=1
                                        //      Parent Loop BB1_21 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB1_36 Depth 4
                                        //            Child Loop BB1_58 Depth 5
                                        //            Child Loop BB1_49 Depth 5
	addi x8, x1, 2
	lh x7, 0 ( x1 )
LBB1_36:                                //  %reswitch
                                        //    Parent Loop BB1_20 Depth=1
                                        //      Parent Loop BB1_21 Depth=2
                                        //        Parent Loop BB1_35 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB1_58 Depth 5
                                        //            Child Loop BB1_49 Depth 5
	sw x10, 108 ( x2 )              //  4-byte Folded Spill
	sw x8, 112 ( x2 )               //  4-byte Folded Spill
	addi x1, x0, 120
	sw x7, 116 ( x2 )               //  4-byte Folded Spill
	bgeu x1, x7, LBB1_423
LBB1_422:                               //  %reswitch
                                        //    in Loop: Header=BB1_36 Depth=4
	jalr x0, LBB1_234 ( x0 )
LBB1_423:                               //  %reswitch
                                        //    in Loop: Header=BB1_36 Depth=4
LBB1_37:                                //  %reswitch
                                        //    in Loop: Header=BB1_36 Depth=4
	add x10, x0, x7
	addi x11, x0, 4
	call $__mulsi3
	lw x7, 116 ( x2 )               //  4-byte Folded Reload
	ori x28, x0, JTI1_0 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI1_0 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB1_38:                                //  %sw.bb
                                        //    in Loop: Header=BB1_35 Depth=3
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	nop
	and x3, x1, x3
	lw x4, 112 ( x2 )               //  4-byte Folded Reload
	nop
	add x1, x0, x4
	lw x10, 108 ( x2 )              //  4-byte Folded Reload
	bgtu x3, x0, LBB1_35
LBB1_39:                                //  %if.then103
                                        //    in Loop: Header=BB1_35 Depth=3
	addi x1, x0, 32
	sh x1, 166 ( x2 )
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x4
	jalr x0, LBB1_35 ( x0 )
LBB1_40:                                //  %sw.bb105
                                        //    in Loop: Header=BB1_35 Depth=3
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 1
LBB1_41:                                //  %rflag
                                        //    in Loop: Header=BB1_35 Depth=3
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
LBB1_42:                                //  %rflag
                                        //    in Loop: Header=BB1_35 Depth=3
	lw x1, 112 ( x2 )               //  4-byte Folded Reload
	lw x10, 108 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB1_35 ( x0 )
LBB1_43:                                //  %sw.bb107
                                        //    in Loop: Header=BB1_35 Depth=3
	lw x1, 168 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	lw x10, 0 ( x1 )
	lw x3, 112 ( x2 )               //  4-byte Folded Reload
	nop
	add x1, x0, x3
	bgez x10, LBB1_35
LBB1_44:                                //  %if.end111
                                        //    in Loop: Header=BB1_35 Depth=3
	sub x10, x0, x10
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 4
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x3
	jalr x0, LBB1_35 ( x0 )
LBB1_45:                                //  %sw.bb112.loopexit
                                        //    in Loop: Header=BB1_35 Depth=3
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 4
	jalr x0, LBB1_41 ( x0 )
LBB1_46:                                //  %sw.bb114
                                        //    in Loop: Header=BB1_35 Depth=3
	addi x1, x0, 43
	sh x1, 166 ( x2 )
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_42 ( x0 )
LBB1_47:                                //  %sw.bb115
                                        //    in Loop: Header=BB1_36 Depth=4
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
	nop
	lh x7, 0 ( x8 )
	addi x8, x8, 2
	xori x1, x7, 42
	beqz x1, LBB1_53
LBB1_48:                                //  %while.cond127.preheader
                                        //    in Loop: Header=BB1_36 Depth=4
	addi x3, x7, -48
	add x4, x0, x0
	addi x1, x0, 9
	bgtu x3, x1, LBB1_50
LBB1_49:                                //  %while.body131
                                        //    Parent Loop BB1_20 Depth=1
                                        //      Parent Loop BB1_21 Depth=2
                                        //        Parent Loop BB1_35 Depth=3
                                        //          Parent Loop BB1_36 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	sw x3, 116 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x4
	addi x11, x0, 10
	call $__mulsi3
	lh x7, 0 ( x8 )
	lw x1, 116 ( x2 )               //  4-byte Folded Reload
	nop
	add x4, x1, x10
	addi x8, x8, 2
	addi x3, x7, -48
	sltiu x1, x3, 10
	bgtu x1, x0, LBB1_49
LBB1_50:                                //  %while.end137
                                        //    in Loop: Header=BB1_36 Depth=4
	not x1, x0
	lw x10, 108 ( x2 )              //  4-byte Folded Reload
	bgt x4, x1, LBB1_52
LBB1_51:                                //  %while.end137
                                        //    in Loop: Header=BB1_36 Depth=4
	not x4, x0
LBB1_52:                                //  %while.end137
                                        //    in Loop: Header=BB1_36 Depth=4
	sw x4, 72 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_36 ( x0 )
LBB1_53:                                //  %if.then120
                                        //    in Loop: Header=BB1_35 Depth=3
	lw x1, 168 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	lw x3, 0 ( x1 )
	not x1, x0
	bgt x3, x1, LBB1_55
LBB1_54:                                //  %if.then120
                                        //    in Loop: Header=BB1_35 Depth=3
	not x1, x0
	add x3, x0, x1
LBB1_55:                                //  %if.then120
                                        //    in Loop: Header=BB1_35 Depth=3
	sw x3, 72 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x8
	lw x10, 108 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB1_35 ( x0 )
LBB1_56:                                //  %sw.bb143
                                        //    in Loop: Header=BB1_35 Depth=3
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 128
	jalr x0, LBB1_41 ( x0 )
LBB1_57:                                //  %do.body146.preheader
                                        //    in Loop: Header=BB1_36 Depth=4
	add x3, x0, x7
	add x1, x0, x0
	add x10, x0, x1
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
LBB1_58:                                //  %do.body146
                                        //    Parent Loop BB1_20 Depth=1
                                        //      Parent Loop BB1_21 Depth=2
                                        //        Parent Loop BB1_35 Depth=3
                                        //          Parent Loop BB1_36 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	sw x3, 116 ( x2 )               //  4-byte Folded Spill
	addi x11, x0, 10
	call $__mulsi3
	lh x7, 0 ( x8 )
	lw x1, 116 ( x2 )               //  4-byte Folded Reload
	nop
	add x1, x10, x1
	addi x8, x8, 2
	addi x10, x1, -48
	addi x1, x7, -48
	sltiu x1, x1, 10
	add x3, x0, x7
	bgtu x1, x0, LBB1_58
	jalr x0, LBB1_36 ( x0 )
LBB1_59:                                //  %sw.bb157
                                        //    in Loop: Header=BB1_35 Depth=3
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 8
	jalr x0, LBB1_41 ( x0 )
LBB1_60:                                //  %sw.bb159
                                        //    in Loop: Header=BB1_35 Depth=3
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 64
	jalr x0, LBB1_41 ( x0 )
LBB1_61:                                //  %sw.bb161
                                        //    in Loop: Header=BB1_35 Depth=3
	lw x3, 112 ( x2 )               //  4-byte Folded Reload
	nop
	lhu x1, 0 ( x3 )
	nop
	xori x1, x1, 108
	bgtu x1, x0, LBB1_63
LBB1_62:                                //  %if.then165
                                        //    in Loop: Header=BB1_35 Depth=3
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 32
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	addi x1, x3, 2
	lw x10, 108 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB1_35 ( x0 )
LBB1_63:                                //  %if.else
                                        //    in Loop: Header=BB1_35 Depth=3
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 16
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x3
	lw x10, 108 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB1_35 ( x0 )
LBB1_64:                                //  %sw.bb170
                                        //    in Loop: Header=BB1_35 Depth=3
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 32
	jalr x0, LBB1_41 ( x0 )
LBB1_65:                                //  %sw.bb172
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 168 ( x2 )
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	nop
	andi x3, x3, 16
	addi x4, x1, 4
	sw x4, 168 ( x2 )
	lw x10, 0 ( x1 )
	beqz x3, LBB1_69
LBB1_66:                                //    in Loop: Header=BB1_20 Depth=1
	add x8, x0, x0
	addi x3, x0, 99
LBB1_67:                                //  %if.end195
                                        //    in Loop: Header=BB1_20 Depth=1
	sh x10, 188 ( x2 )
	sh x0, 190 ( x2 )
	sh x0, 166 ( x2 )
	sw x3, 116 ( x2 )               //  4-byte Folded Spill
	addi x1, x2, 188
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
	sw x8, 56 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x8
	slti x1, x0, 1
	add x10, x0, x1
	add x1, x0, x3
	sw x8, 72 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_235 ( x0 )
LBB1_69:                                //  %if.then179
                                        //    in Loop: Header=BB1_20 Depth=1
	call $btowc
	xori x1, x10, -1
	add x8, x0, x0
	addi x3, x0, 99
	bgtu x1, x0, LBB1_67
LBB1_70:                                //  %cleanup
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
	nop
	lh x1, 12 ( x3 )
	nop
	ori x1, x1, 64
	sh x1, 12 ( x3 )
	jalr x0, LBB1_413 ( x0 )
LBB1_71:                                //  %sw.bb197
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 32
	beqz x1, LBB1_73
LBB1_72:                                //  %cond.true200
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 168 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	lw x9, 0 ( x1 )
	addi x1, x3, 4
	sw x1, 168 ( x2 )
	lw x11, 0 ( x3 )
	add x8, x0, x0
	slti x1, x0, 1
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_78 ( x0 )
LBB1_73:                                //  %cond.false202
                                        //    in Loop: Header=BB1_20 Depth=1
	andi x1, x3, 16
	beqz x1, LBB1_75
LBB1_74:                                //  %cond.true205
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 168 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	lw x9, 0 ( x1 )
	jalr x0, LBB1_77 ( x0 )
LBB1_75:                                //  %cond.false207
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 168 ( x2 )
	andi x3, x3, 64
	addi x4, x1, 4
	sw x4, 168 ( x2 )
	lw x9, 0 ( x1 )
	beqz x3, LBB1_77
LBB1_76:                                //  %cond.true210
                                        //    in Loop: Header=BB1_20 Depth=1
	slli x1, x9, 16
	srai x9, x1, 16
LBB1_77:                                //  %cond.end227
                                        //    in Loop: Header=BB1_20 Depth=1
	add x8, x0, x0
	slti x1, x0, 1
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	srai x11, x9, 31
LBB1_78:                                //  %cond.end230
                                        //    in Loop: Header=BB1_20 Depth=1
	bgt x0, x11, LBB1_80
LBB1_79:                                //    in Loop: Header=BB1_20 Depth=1
	lw x13, 96 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_204 ( x0 )
LBB1_80:                                //  %if.then234
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x3, x0, 45
	sh x3, 166 ( x2 )
	lw x13, 96 ( x2 )               //  4-byte Folded Reload
	bne x9, x8, LBB1_82
LBB1_81:                                //  %if.then234
                                        //    in Loop: Header=BB1_20 Depth=1
	add x1, x0, x8
LBB1_82:                                //  %if.then234
                                        //    in Loop: Header=BB1_20 Depth=1
	sub x3, x0, x11
	sub x11, x3, x1
	sub x9, x0, x9
	slti x1, x0, 1
	jalr x0, LBB1_204 ( x0 )
LBB1_83:                                //  %sw.bb237
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 168 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	lw x10, 0 ( x1 )
	addi x1, x3, 4
	sw x1, 168 ( x2 )
	lw x8, 0 ( x3 )
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x8
	call $__fpclassifyd
	xori x1, x10, 1
	sw x8, 40 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB1_90
LBB1_84:                                //  %if.then251
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x8, x0, x0
	add x12, x0, x8
	add x13, x0, x8
	call $__ltdf2
	bgez x10, LBB1_86
LBB1_85:                                //  %if.then255
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x1, x0, 45
	sh x1, 166 ( x2 )
LBB1_86:                                //  %if.end256
                                        //    in Loop: Header=BB1_20 Depth=1
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.1 >> 12 & 0xfffff
	or x1, x1, x28
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $.str >> 12 & 0xfffff
	or x3, x3, x28
	sw x3, 88 ( x2 )                //  4-byte Folded Spill
	addi x7, x2, 124
	addi x3, x0, 72
	lw x13, 96 ( x2 )               //  4-byte Folded Reload
	lw x9, 68 ( x2 )                //  4-byte Folded Reload
	lw x4, 116 ( x2 )               //  4-byte Folded Reload
	nop
	bgt x3, x4, LBB1_88
LBB1_87:                                //  %if.end256
                                        //    in Loop: Header=BB1_20 Depth=1
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
LBB1_88:                                //  %if.end256
                                        //    in Loop: Header=BB1_20 Depth=1
	andi x13, x13, -129
LBB1_89:                                //  %sw.epilog710
                                        //    in Loop: Header=BB1_20 Depth=1
	sw x8, 56 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x8
	addi x1, x0, 3
	add x10, x0, x1
	add x1, x0, x3
	sw x8, 72 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_237 ( x0 )
LBB1_90:                                //  %if.end263
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__fpclassifyd
	bgtu x10, x0, LBB1_94
LBB1_91:                                //  %if.then268
                                        //    in Loop: Header=BB1_20 Depth=1
	ori x28, x0, $.str.3 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.3 >> 12 & 0xfffff
	or x1, x1, x28
	ori x28, x0, $.str.2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $.str.2 >> 12 & 0xfffff
	or x3, x3, x28
	sw x3, 88 ( x2 )                //  4-byte Folded Spill
	addi x7, x2, 124
	addi x3, x0, 72
	lw x9, 68 ( x2 )                //  4-byte Folded Reload
	lw x4, 116 ( x2 )               //  4-byte Folded Reload
	nop
	bgt x3, x4, LBB1_93
LBB1_92:                                //  %if.then268
                                        //    in Loop: Header=BB1_20 Depth=1
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
LBB1_93:                                //  %if.then268
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, -129
	add x8, x0, x0
	add x13, x0, x1
	jalr x0, LBB1_89 ( x0 )
LBB1_94:                                //  %if.end275
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	nop
	xori x1, x4, -1
	addi x3, x0, 6
	add x13, x0, x3
	lw x8, 100 ( x2 )               //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	lw x12, 40 ( x2 )               //  4-byte Folded Reload
	lw x17, 116 ( x2 )              //  4-byte Folded Reload
	beqz x1, LBB1_99
LBB1_95:                                //  %if.else280
                                        //    in Loop: Header=BB1_20 Depth=1
	ori x1, x17, 32
	slti x3, x0, 1
	add x13, x0, x3
	addi x3, x0, 103
	beq x1, x3, LBB1_97
LBB1_96:                                //  %if.else280
                                        //    in Loop: Header=BB1_20 Depth=1
	add x13, x0, x4
LBB1_97:                                //  %if.else280
                                        //    in Loop: Header=BB1_20 Depth=1
	add x1, x0, x0
	beq x4, x1, LBB1_99
LBB1_98:                                //  %if.else280
                                        //    in Loop: Header=BB1_20 Depth=1
	add x13, x0, x4
LBB1_99:                                //  %if.end291
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	ori x14, x1, 256
	addi x1, x0, 40
	sw x1, 8 ( x2 )
	addi x1, x2, 188
	sw x1, 4 ( x2 )
	addi x1, x2, 136
	sw x1, 0 ( x2 )
	add x10, x0, x8
	sw x13, 84 ( x2 )               //  4-byte Folded Spill
	sw x14, 20 ( x2 )               //  4-byte Folded Spill
	addi x15, x2, 162
	addi x16, x2, 156
	call $wcvt
	add x3, x0, x8
	lw x8, 136 ( x2 )
	nop
	slti x1, x8, 41
	beqz x1, LBB1_101
LBB1_100:                               //    in Loop: Header=BB1_20 Depth=1
	sw x10, 88 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x0
	add x12, x0, x8
	sw x12, 72 ( x2 )               //  4-byte Folded Spill
	lw x4, 116 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_104 ( x0 )
LBB1_101:                               //  %if.then304
                                        //    in Loop: Header=BB1_20 Depth=1
	slli x11, x8, 1
	add x10, x0, x3
	call $_malloc_r
	sw x10, 72 ( x2 )               //  4-byte Folded Spill
	bgtu x10, x0, LBB1_103
LBB1_102:                               //  %if.then309
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
	nop
	lh x1, 12 ( x3 )
	add x11, x0, x0
	ori x1, x1, 64
	sh x1, 12 ( x3 )
	jalr x0, LBB1_411 ( x0 )
LBB1_103:                               //  %if.end314
                                        //    in Loop: Header=BB1_20 Depth=1
	sw x8, 8 ( x2 )
	sw x10, 4 ( x2 )
	addi x1, x2, 136
	sw x1, 0 ( x2 )
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	lw x12, 40 ( x2 )               //  4-byte Folded Reload
	lw x13, 84 ( x2 )               //  4-byte Folded Reload
	lw x14, 20 ( x2 )               //  4-byte Folded Reload
	addi x15, x2, 162
	addi x16, x2, 156
	lw x8, 116 ( x2 )               //  4-byte Folded Reload
	nop
	add x17, x0, x8
	call $wcvt
	add x4, x0, x8
	sw x10, 88 ( x2 )               //  4-byte Folded Spill
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x0
	add x12, x0, x8
LBB1_104:                               //  %if.end317
                                        //    in Loop: Header=BB1_20 Depth=1
	ori x1, x4, 32
	xori x1, x1, 103
	addi x7, x2, 124
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	lw x9, 68 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB1_109
LBB1_105:                               //  %if.then323
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x10, 156 ( x2 )
	addi x4, x4, -2
	sw x4, 116 ( x2 )               //  4-byte Folded Spill
	slti x1, x10, -3
	bgtu x1, x0, LBB1_111
LBB1_106:                               //  %if.then323
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x10, x1, LBB1_111
LBB1_107:                               //  %if.else374
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 136 ( x2 )
	nop
	bgt x1, x10, LBB1_136
LBB1_108:                               //  %if.then377
                                        //    in Loop: Header=BB1_20 Depth=1
	andi x1, x5, 1
	add x3, x1, x10
	jalr x0, LBB1_139 ( x0 )
LBB1_109:                               //  %if.end333
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x1, x0, 101
	bgt x4, x1, LBB1_128
LBB1_110:                               //  %if.end333.if.then336_crit_edge
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x10, 156 ( x2 )
LBB1_111:                               //  %if.then336
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x1, x0, 45
	slti x3, x0, 1
	bgt x3, x10, LBB1_113
LBB1_112:                               //  %if.then336
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x1, x0, 43
LBB1_113:                               //  %if.then336
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x3, x10, -1
	slti x4, x0, 1
	ble x4, x10, LBB1_115
LBB1_114:                               //    in Loop: Header=BB1_20 Depth=1
	sub x10, x4, x10
	jalr x0, LBB1_116 ( x0 )
LBB1_115:                               //  %if.then336
                                        //    in Loop: Header=BB1_20 Depth=1
	add x10, x0, x3
LBB1_116:                               //  %if.then336
                                        //    in Loop: Header=BB1_20 Depth=1
	sw x3, 156 ( x2 )
	lw x3, 116 ( x2 )               //  4-byte Folded Reload
	nop
	sh x3, 142 ( x2 )
	sh x1, 144 ( x2 )
	slti x1, x10, 10
	bgtu x1, x0, LBB1_126
LBB1_117:                               //  %do.body.i.preheader
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x1, x0, 14
	add x3, x0, x1
	addi x1, x2, 186
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	slti x1, x0, 1
	add x14, x0, x1
LBB1_118:                               //  %do.body.i
                                        //    Parent Loop BB1_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x14, 60 ( x2 )               //  4-byte Folded Spill
	sw x11, 64 ( x2 )               //  4-byte Folded Spill
	sw x10, 84 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x3
	addi x1, x0, 10
	add x11, x0, x1
	call $__modsi3
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	addi x1, x8, -2
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	addi x1, x10, 48
	lw x8, 80 ( x2 )                //  4-byte Folded Reload
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	sh x1, 0 ( x8 )
	lw x10, 84 ( x2 )               //  4-byte Folded Reload
	addi x11, x0, 10
	call $__divsi3
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	lw x14, 60 ( x2 )               //  4-byte Folded Reload
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
	addi x8, x8, -2
	sw x8, 80 ( x2 )                //  4-byte Folded Spill
	addi x11, x11, 2
	addi x14, x14, -1
	addi x1, x0, 99
	lw x4, 84 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x1, LBB1_118
LBB1_119:                               //  %do.end.i
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x15, 32 ( x2 )               //  4-byte Folded Reload
	lw x13, 36 ( x2 )               //  4-byte Folded Reload
	addi x3, x10, 48
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sh x3, 0 ( x1 )
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	addi x7, x2, 124
	slti x4, x0, 1
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	lw x9, 68 ( x2 )                //  4-byte Folded Reload
	add x8, x0, x0
	add x12, x0, x8
	bgt x14, x4, LBB1_127
LBB1_120:                               //  %for.inc.i.preheader
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x4, x14, -2
	sh x3, 146 ( x2 )
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	addi x3, x0, -2
	bgt x4, x3, LBB1_127
LBB1_121:                               //  %for.inc.for.inc_crit_edge.i.preheader
                                        //    in Loop: Header=BB1_20 Depth=1
	sh x15, 148 ( x2 )
	bgtu x14, x0, LBB1_123
LBB1_122:                               //    in Loop: Header=BB1_20 Depth=1
	add x1, x0, x11
	jalr x0, LBB1_127 ( x0 )
LBB1_123:                               //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge.preheader
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x1, x2, 150
	addi x4, x2, 174
LBB1_124:                               //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge
                                        //    Parent Loop BB1_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x3, x13, x4
	lh x3, 0 ( x3 )
	nop
	sh x3, 0 ( x1 )
	addi x1, x1, 2
	addi x13, x13, 2
	xori x3, x13, 14
	bgtu x3, x0, LBB1_124
LBB1_125:                               //    in Loop: Header=BB1_20 Depth=1
	add x1, x0, x11
	jalr x0, LBB1_127 ( x0 )
LBB1_126:                               //  %if.else20.i
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x1, x2, 142
	addi x3, x0, 48
	sh x3, 4 ( x1 )
	addi x1, x10, 48
	sh x1, 148 ( x2 )
	addi x1, x2, 150
LBB1_127:                               //  %wexponent.exit
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x3, 136 ( x2 )
	slti x4, x0, 1
	slt x4, x4, x3
	or x4, x5, x4
	addi x5, x2, 142
	sub x1, x1, x5
	srai x1, x1, 1
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	add x1, x3, x1
	andi x3, x4, 1
	add x3, x3, x1
	add x10, x0, x12
	jalr x0, LBB1_141 ( x0 )
LBB1_128:                               //  %if.else348
                                        //    in Loop: Header=BB1_20 Depth=1
	xori x1, x4, 102
	lw x10, 156 ( x2 )
	bgtu x1, x0, LBB1_107
LBB1_129:                               //  %if.then351
                                        //    in Loop: Header=BB1_20 Depth=1
	andi x1, x5, 1
	lw x4, 84 ( x2 )                //  4-byte Folded Reload
	nop
	or x1, x1, x4
	ble x10, x0, LBB1_133
LBB1_130:                               //  %if.then354
                                        //    in Loop: Header=BB1_20 Depth=1
	bgtu x1, x0, LBB1_132
LBB1_131:                               //    in Loop: Header=BB1_20 Depth=1
	add x3, x0, x10
	addi x1, x0, 102
	jalr x0, LBB1_140 ( x0 )
LBB1_132:                               //  %if.then359
                                        //    in Loop: Header=BB1_20 Depth=1
	add x1, x10, x4
	addi x3, x1, 1
	addi x1, x0, 102
	jalr x0, LBB1_140 ( x0 )
LBB1_133:                               //  %if.else363
                                        //    in Loop: Header=BB1_20 Depth=1
	slti x3, x0, 1
	beq x1, x12, LBB1_135
LBB1_134:                               //  %if.else363
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x3, x4, 2
LBB1_135:                               //  %if.else363
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x1, x0, 102
	jalr x0, LBB1_140 ( x0 )
LBB1_136:                               //  %if.else383
                                        //    in Loop: Header=BB1_20 Depth=1
	slti x3, x0, 1
	bgt x10, x12, LBB1_138
LBB1_137:                               //  %if.else383
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x3, x0, 2
	sub x3, x3, x10
LBB1_138:                               //  %if.else383
                                        //    in Loop: Header=BB1_20 Depth=1
	add x3, x1, x3
LBB1_139:                               //  %if.end394
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x1, x0, 103
LBB1_140:                               //  %if.end394
                                        //    in Loop: Header=BB1_20 Depth=1
	sw x1, 116 ( x2 )               //  4-byte Folded Spill
LBB1_141:                               //  %if.end394
                                        //    in Loop: Header=BB1_20 Depth=1
	sw x10, 56 ( x2 )               //  4-byte Folded Spill
	lhu x1, 162 ( x2 )
	nop
	bgtu x1, x0, LBB1_143
LBB1_142:                               //    in Loop: Header=BB1_20 Depth=1
	lw x13, 20 ( x2 )               //  4-byte Folded Reload
	add x1, x0, x12
	add x10, x0, x3
	jalr x0, LBB1_237 ( x0 )
LBB1_143:                               //  %if.then396
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x1, x0, 45
	sh x1, 166 ( x2 )
	jalr x0, LBB1_142 ( x0 )
LBB1_144:                               //  %sw.bb398
                                        //    in Loop: Header=BB1_21 Depth=2
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 32
	beqz x1, LBB1_146
LBB1_145:                               //  %if.then401
                                        //    in Loop: Header=BB1_21 Depth=2
	lw x1, 168 ( x2 )
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	nop
	srai x3, x5, 31
	addi x4, x1, 4
	sw x4, 168 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x3, 4 ( x1 )
	sw x5, 0 ( x1 )
	lw x5, 112 ( x2 )               //  4-byte Folded Reload
	addi x7, x2, 124
	lw x9, 68 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_21 ( x0 )
LBB1_146:                               //  %if.else404
                                        //    in Loop: Header=BB1_21 Depth=2
	andi x1, x3, 16
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	lw x5, 112 ( x2 )               //  4-byte Folded Reload
	addi x7, x2, 124
	lw x9, 68 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_148
LBB1_147:                               //  %if.then407
                                        //    in Loop: Header=BB1_21 Depth=2
	lw x1, 168 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x4, 0 ( x1 )
	jalr x0, LBB1_21 ( x0 )
LBB1_148:                               //  %if.else409
                                        //    in Loop: Header=BB1_21 Depth=2
	andi x1, x3, 64
	beqz x1, LBB1_147
LBB1_149:                               //  %if.then412
                                        //    in Loop: Header=BB1_21 Depth=2
	lw x1, 168 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sh x4, 0 ( x1 )
	jalr x0, LBB1_21 ( x0 )
LBB1_150:                               //  %sw.bb420
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 32
	beqz x1, LBB1_152
LBB1_151:                               //  %cond.true423
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 168 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	lw x9, 0 ( x1 )
	addi x1, x3, 4
	sw x1, 168 ( x2 )
	lw x11, 0 ( x3 )
	addi x7, x0, 111
	add x8, x0, x0
	lw x13, 96 ( x2 )               //  4-byte Folded Reload
	add x1, x0, x8
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_203 ( x0 )
LBB1_152:                               //  %cond.false425
                                        //    in Loop: Header=BB1_20 Depth=1
	andi x1, x3, 16
	add x4, x0, x3
	add x8, x0, x0
	beqz x1, LBB1_154
LBB1_153:                               //  %cond.true428
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 168 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	lw x9, 0 ( x1 )
	add x13, x0, x4
	jalr x0, LBB1_156 ( x0 )
LBB1_154:                               //  %cond.false430
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 168 ( x2 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	andi x3, x4, 64
	lw x9, 0 ( x1 )
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	add x13, x0, x4
	beq x3, x8, LBB1_156
LBB1_155:                               //  %cond.false430
                                        //    in Loop: Header=BB1_20 Depth=1
	and x9, x1, x9
LBB1_156:                               //  %cond.false430
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	addi x7, x0, 111
	add x11, x0, x8
	add x1, x0, x8
	jalr x0, LBB1_203 ( x0 )
LBB1_157:                               //  %sw.bb455
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 168 ( x2 )
	ori x28, x0, $.str.4 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	lw x9, 0 ( x1 )
	addi x1, x0, 48
	sh x1, 120 ( x2 )
	addi x7, x0, 120
	sh x7, 122 ( x2 )
	lui x3, $.str.4 >> 12 & 0xfffff
	or x3, x3, x28
	sw x3, 76 ( x2 )                //  4-byte Folded Spill
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	nop
	ori x3, x3, 2
	add x8, x0, x0
	add x13, x0, x3
	add x11, x0, x8
	addi x1, x0, 2
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_203 ( x0 )
LBB1_158:                               //  %sw.bb461
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 168 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	lw x10, 0 ( x1 )
	sh x0, 166 ( x2 )
	bgtu x10, x0, LBB1_162
LBB1_159:                               //  %if.then465
                                        //    in Loop: Header=BB1_20 Depth=1
	add x8, x0, x0
	addi x1, x0, 6
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x3, LBB1_161
LBB1_160:                               //  %if.then465
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x1, x0, 6
	add x3, x0, x1
LBB1_161:                               //  %if.then465
                                        //    in Loop: Header=BB1_20 Depth=1
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.5 >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 115
	sw x1, 116 ( x2 )               //  4-byte Folded Spill
	sw x8, 56 ( x2 )                //  4-byte Folded Spill
	add x4, x0, x8
	add x10, x0, x3
	sw x8, 72 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x4
	jalr x0, LBB1_235 ( x0 )
LBB1_162:                               //  %if.else472
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 16
	add x8, x0, x0
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	sw x10, 88 ( x2 )               //  4-byte Folded Spill
	bgtu x1, x0, LBB1_175
LBB1_163:                               //  %if.then478
                                        //    in Loop: Header=BB1_20 Depth=1
	bgt x0, x12, LBB1_166
LBB1_164:                               //  %if.then481
                                        //    in Loop: Header=BB1_20 Depth=1
	add x11, x0, x8
	call $memchr
	lw x11, 88 ( x2 )               //  4-byte Folded Reload
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	beq x10, x8, LBB1_167
LBB1_165:                               //  %if.then481
                                        //    in Loop: Header=BB1_20 Depth=1
	sub x4, x10, x11
	jalr x0, LBB1_167 ( x0 )
LBB1_166:                               //  %if.else491
                                        //    in Loop: Header=BB1_20 Depth=1
	add x8, x0, x10
	call $strlen
	add x11, x0, x8
	add x4, x0, x10
LBB1_167:                               //  %if.end493
                                        //    in Loop: Header=BB1_20 Depth=1
	sltiu x1, x4, 40
	add x8, x0, x4
	bgtu x1, x0, LBB1_170
LBB1_168:                               //  %if.then496
                                        //    in Loop: Header=BB1_20 Depth=1
	slli x1, x4, 1
	addi x11, x1, 2
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	nop
	call $_malloc_r
	bgtu x10, x0, LBB1_425
LBB1_424:                               //  %if.then496
                                        //    in Loop: Header=BB1_20 Depth=1
	jalr x0, LBB1_410 ( x0 )
LBB1_425:                               //  %if.then496
                                        //    in Loop: Header=BB1_20 Depth=1
LBB1_169:                               //    in Loop: Header=BB1_20 Depth=1
	sw x10, 72 ( x2 )               //  4-byte Folded Spill
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	add x3, x0, x10
	addi x7, x2, 124
	lw x9, 68 ( x2 )                //  4-byte Folded Reload
	lw x11, 88 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_171 ( x0 )
LBB1_170:                               //  %if.end510
                                        //    in Loop: Header=BB1_20 Depth=1
	add x1, x0, x0
	add x5, x0, x1
	sw x5, 72 ( x2 )                //  4-byte Folded Spill
	addi x1, x2, 188
	add x3, x0, x1
	add x1, x0, x5
	addi x7, x2, 124
	lw x9, 68 ( x2 )                //  4-byte Folded Reload
	beqz x4, LBB1_174
LBB1_171:                               //  %for.body.preheader
                                        //    in Loop: Header=BB1_20 Depth=1
	add x10, x0, x3
	add x1, x0, x3
	add x3, x0, x0
LBB1_172:                               //  %for.body
                                        //    Parent Loop BB1_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x4, x3, x11
	lb x4, 0 ( x4 )
	addi x3, x3, 1
	addi x5, x1, 2
	sh x4, 0 ( x1 )
	add x4, x0, x8
	add x1, x0, x5
	bne x4, x3, LBB1_172
LBB1_173:                               //    in Loop: Header=BB1_20 Depth=1
	add x1, x0, x4
	add x3, x0, x10
LBB1_174:                               //  %cleanup519.thread
                                        //    in Loop: Header=BB1_20 Depth=1
	add x10, x0, x1
	slli x1, x10, 1
	sw x3, 88 ( x2 )                //  4-byte Folded Spill
	add x1, x1, x3
	sh x0, 0 ( x1 )
	addi x1, x0, 115
	sw x1, 116 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x0
	sw x8, 56 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x8
	lw x13, 96 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_237 ( x0 )
LBB1_175:                               //  %if.else523
                                        //    in Loop: Header=BB1_20 Depth=1
	bgt x0, x12, LBB1_181
LBB1_176:                               //  %if.then526
                                        //    in Loop: Header=BB1_20 Depth=1
	add x11, x0, x8
	add x8, x0, x12
	call $wmemchr
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB1_178
LBB1_177:                               //    in Loop: Header=BB1_20 Depth=1
	addi x1, x0, 115
	sw x1, 116 ( x2 )               //  4-byte Folded Spill
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	add x4, x0, x1
	sw x4, 56 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	sw x4, 72 ( x2 )                //  4-byte Folded Spill
	addi x7, x2, 124
	lw x9, 68 ( x2 )                //  4-byte Folded Reload
	add x13, x0, x3
	jalr x0, LBB1_237 ( x0 )
LBB1_178:                               //  %if.then531
                                        //    in Loop: Header=BB1_20 Depth=1
	add x4, x0, x0
	lw x5, 88 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x10, x5
	srai x1, x1, 1
	addi x7, x2, 124
	lw x9, 68 ( x2 )                //  4-byte Folded Reload
	bgt x1, x8, LBB1_180
LBB1_179:                               //  %if.then531
                                        //    in Loop: Header=BB1_20 Depth=1
	add x8, x0, x1
LBB1_180:                               //  %if.then531
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x1, x0, 115
	sw x1, 116 ( x2 )               //  4-byte Folded Spill
	sw x5, 88 ( x2 )                //  4-byte Folded Spill
	sw x4, 56 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x4
	add x10, x0, x8
	sw x4, 72 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x3
	jalr x0, LBB1_237 ( x0 )
LBB1_181:                               //  %if.else542
                                        //    in Loop: Header=BB1_20 Depth=1
	call $wcslen
	addi x1, x0, 115
	sw x1, 116 ( x2 )               //  4-byte Folded Spill
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
	sw x8, 56 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x8
	sw x8, 72 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_235 ( x0 )
LBB1_182:                               //  %sw.bb547
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 32
	beqz x1, LBB1_184
LBB1_183:                               //  %cond.true550
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 168 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	lw x9, 0 ( x1 )
	addi x1, x3, 4
	sw x1, 168 ( x2 )
	lw x11, 0 ( x3 )
	addi x7, x0, 117
	slti x1, x0, 1
	add x8, x0, x0
	lw x13, 96 ( x2 )               //  4-byte Folded Reload
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_203 ( x0 )
LBB1_184:                               //  %cond.false552
                                        //    in Loop: Header=BB1_20 Depth=1
	andi x1, x3, 16
	add x4, x0, x3
	add x8, x0, x0
	beqz x1, LBB1_186
LBB1_185:                               //  %cond.true555
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 168 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	lw x9, 0 ( x1 )
	slti x1, x0, 1
	add x13, x0, x4
	jalr x0, LBB1_189 ( x0 )
LBB1_186:                               //  %cond.false557
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 168 ( x2 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	andi x3, x4, 64
	lw x9, 0 ( x1 )
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	add x13, x0, x4
	beq x3, x8, LBB1_188
LBB1_187:                               //  %cond.false557
                                        //    in Loop: Header=BB1_20 Depth=1
	and x9, x1, x9
LBB1_188:                               //  %cond.false557
                                        //    in Loop: Header=BB1_20 Depth=1
	slti x1, x0, 1
LBB1_189:                               //  %cond.end577
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	addi x7, x0, 117
	add x11, x0, x8
	jalr x0, LBB1_203 ( x0 )
LBB1_190:                               //  %hex.loopexit2947
                                        //    in Loop: Header=BB1_20 Depth=1
	ori x28, x0, $.str.4 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.4 >> 12 & 0xfffff
	jalr x0, LBB1_192 ( x0 )
LBB1_191:                               //  %hex.loopexit
                                        //    in Loop: Header=BB1_20 Depth=1
	ori x28, x0, $.str.6 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.6 >> 12 & 0xfffff
LBB1_192:                               //  %hex
                                        //    in Loop: Header=BB1_20 Depth=1
	or x1, x1, x28
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	lw x4, 96 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x4, 32
	add x8, x0, x0
	beqz x1, LBB1_194
LBB1_193:                               //  %cond.true586
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 168 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	lw x9, 0 ( x1 )
	addi x1, x3, 4
	sw x1, 168 ( x2 )
	lw x11, 0 ( x3 )
	add x13, x0, x4
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_199 ( x0 )
LBB1_194:                               //  %cond.false588
                                        //    in Loop: Header=BB1_20 Depth=1
	andi x1, x4, 16
	add x13, x0, x4
	beqz x1, LBB1_196
LBB1_195:                               //  %cond.true591
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 168 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	lw x9, 0 ( x1 )
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_198 ( x0 )
LBB1_196:                               //  %cond.false593
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 168 ( x2 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	andi x3, x13, 64
	lw x9, 0 ( x1 )
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	beq x3, x8, LBB1_198
LBB1_197:                               //  %cond.false593
                                        //    in Loop: Header=BB1_20 Depth=1
	and x9, x1, x9
LBB1_198:                               //  %cond.end613
                                        //    in Loop: Header=BB1_20 Depth=1
	add x11, x0, x8
LBB1_199:                               //  %cond.end616
                                        //    in Loop: Header=BB1_20 Depth=1
	andi x1, x13, 1
	beqz x1, LBB1_202
LBB1_200:                               //  %cond.end616
                                        //    in Loop: Header=BB1_20 Depth=1
	or x1, x11, x9
	beqz x1, LBB1_202
LBB1_201:                               //  %if.then623
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x1, x0, 48
	sh x1, 120 ( x2 )
	sh x7, 122 ( x2 )
	ori x13, x13, 2
LBB1_202:                               //  %nosign
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x1, x0, 2
LBB1_203:                               //  %nosign
                                        //    in Loop: Header=BB1_20 Depth=1
	sh x0, 166 ( x2 )
LBB1_204:                               //  %number
                                        //    in Loop: Header=BB1_20 Depth=1
	not x3, x0
	ble x4, x3, LBB1_206
LBB1_205:                               //    in Loop: Header=BB1_20 Depth=1
	andi x13, x13, -129
LBB1_206:                               //  %number
                                        //    in Loop: Header=BB1_20 Depth=1
	sw x7, 116 ( x2 )               //  4-byte Folded Spill
	bgtu x4, x0, LBB1_208
LBB1_207:                               //  %number
                                        //    in Loop: Header=BB1_20 Depth=1
	or x3, x11, x9
	beqz x3, LBB1_227
LBB1_208:                               //  %if.then640
                                        //    in Loop: Header=BB1_20 Depth=1
	beqz x1, LBB1_212
LBB1_209:                               //  %if.then640
                                        //    in Loop: Header=BB1_20 Depth=1
	andi x1, x1, 255
	xori x3, x1, 1
	beqz x3, LBB1_217
LBB1_210:                               //  %if.then640
                                        //    in Loop: Header=BB1_20 Depth=1
	xori x1, x1, 2
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB1_226
LBB1_211:                               //  %do.body677
                                        //    Parent Loop BB1_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	andi x1, x9, 15
	slli x1, x1, 1
	lw x3, 76 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	lh x1, 0 ( x1 )
	nop
	sh x1, -2 ( x5 )
	srli x1, x9, 4
	slli x3, x11, 28
	or x9, x3, x1
	addi x5, x5, -2
	srli x11, x11, 4
	or x1, x11, x9
	bgtu x1, x0, LBB1_211
	jalr x0, LBB1_232 ( x0 )
LBB1_212:                               //  %do.body643.preheader
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x1, x2, 266
LBB1_213:                               //  %do.body643
                                        //    Parent Loop BB1_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	srli x3, x9, 3
	slli x4, x11, 29
	or x4, x4, x3
	andi x3, x9, 7
	ori x3, x3, 48
	sh x3, 0 ( x1 )
	addi x1, x1, -2
	srli x11, x11, 3
	or x5, x11, x4
	add x9, x0, x4
	bgtu x5, x0, LBB1_213
LBB1_214:                               //  %do.end650
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x5, x1, 2
	andi x4, x13, 1
	beqz x4, LBB1_232
LBB1_215:                               //  %do.end650
                                        //    in Loop: Header=BB1_20 Depth=1
	xori x3, x3, 48
	beqz x3, LBB1_232
LBB1_216:                               //  %if.then657
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x3, x0, 48
	sh x3, 0 ( x1 )
	jalr x0, LBB1_231 ( x0 )
LBB1_217:                               //  %sw.bb660
                                        //    in Loop: Header=BB1_20 Depth=1
	bne x11, x8, LBB1_219
LBB1_218:                               //    in Loop: Header=BB1_20 Depth=1
	sltiu x1, x9, 10
	jalr x0, LBB1_220 ( x0 )
LBB1_219:                               //  %sw.bb660
                                        //    in Loop: Header=BB1_20 Depth=1
	add x1, x0, x8
LBB1_220:                               //  %sw.bb660
                                        //    in Loop: Header=BB1_20 Depth=1
	beqz x1, LBB1_427
LBB1_426:                               //  %sw.bb660
                                        //    in Loop: Header=BB1_20 Depth=1
	jalr x0, LBB1_417 ( x0 )
LBB1_427:                               //  %sw.bb660
                                        //    in Loop: Header=BB1_20 Depth=1
LBB1_221:                               //    in Loop: Header=BB1_20 Depth=1
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	sw x13, 96 ( x2 )               //  4-byte Folded Spill
LBB1_222:                               //  %do.body668
                                        //    Parent Loop BB1_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x11, 84 ( x2 )               //  4-byte Folded Spill
	sw x5, 88 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x9
	sw x10, 80 ( x2 )               //  4-byte Folded Spill
	addi x8, x0, 10
	add x12, x0, x8
	add x13, x0, x0
	call $__umoddi3
	sw x10, 64 ( x2 )               //  4-byte Folded Spill
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	add x8, x0, x0
	add x13, x0, x8
	call $__udivdi3
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	bne x1, x8, LBB1_224
LBB1_223:                               //    in Loop: Header=BB1_222 Depth=2
	addi x1, x0, 9
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sltu x1, x1, x3
	jalr x0, LBB1_225 ( x0 )
LBB1_224:                               //  %do.body668
                                        //    in Loop: Header=BB1_222 Depth=2
	sltu x1, x0, x1
LBB1_225:                               //  %do.body668
                                        //    in Loop: Header=BB1_222 Depth=2
	lw x5, 88 ( x2 )                //  4-byte Folded Reload
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	ori x3, x3, 48
	sh x3, -2 ( x5 )
	addi x5, x5, -2
	add x9, x0, x10
	lw x13, 96 ( x2 )               //  4-byte Folded Reload
	bgtu x1, x0, LBB1_222
	jalr x0, LBB1_232 ( x0 )
LBB1_226:                               //  %sw.default
                                        //    in Loop: Header=BB1_20 Depth=1
	ori x28, x0, $.str.7 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.7 >> 12 & 0xfffff
	sw x13, 96 ( x2 )               //  4-byte Folded Spill
	or x10, x1, x28
	sw x10, 88 ( x2 )               //  4-byte Folded Spill
	call $wcslen
	lw x13, 96 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_233 ( x0 )
LBB1_227:                               //  %if.else686
                                        //    in Loop: Header=BB1_20 Depth=1
	andi x1, x1, 255
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB1_232
LBB1_228:                               //  %if.else686
                                        //    in Loop: Header=BB1_20 Depth=1
	andi x1, x13, 1
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_232
LBB1_229:                               //  %if.then693
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x1, x0, 48
LBB1_230:                               //  %if.end696
                                        //    in Loop: Header=BB1_20 Depth=1
	sh x1, 266 ( x2 )
	addi x1, x2, 266
LBB1_231:                               //  %if.end696
                                        //    in Loop: Header=BB1_20 Depth=1
	add x5, x0, x1
LBB1_232:                               //  %if.end696
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	sw x5, 88 ( x2 )                //  4-byte Folded Spill
	sub x1, x1, x5
	srai x10, x1, 1
LBB1_233:                               //  %sw.epilog710
                                        //    in Loop: Header=BB1_20 Depth=1
	sw x8, 56 ( x2 )                //  4-byte Folded Spill
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	sw x8, 72 ( x2 )                //  4-byte Folded Spill
	addi x7, x2, 124
	jalr x0, LBB1_236 ( x0 )
LBB1_234:                               //  %if.end707
                                        //    in Loop: Header=BB1_20 Depth=1
	sh x7, 188 ( x2 )
	sh x0, 166 ( x2 )
	addi x1, x2, 188
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x0
	sw x8, 56 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x8
	slti x1, x0, 1
	add x10, x0, x1
	sw x8, 72 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x3
LBB1_235:                               //  %sw.epilog710
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x7, x2, 124
	lw x13, 96 ( x2 )               //  4-byte Folded Reload
LBB1_236:                               //  %sw.epilog710
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x9, 68 ( x2 )                //  4-byte Folded Reload
LBB1_237:                               //  %sw.epilog710
                                        //    in Loop: Header=BB1_20 Depth=1
	add x3, x0, x1
	sw x10, 84 ( x2 )               //  4-byte Folded Spill
	sw x3, 60 ( x2 )                //  4-byte Folded Spill
	bgt x3, x10, LBB1_239
LBB1_238:                               //  %sw.epilog710
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
LBB1_239:                               //  %sw.epilog710
                                        //    in Loop: Header=BB1_20 Depth=1
	lhu x3, 166 ( x2 )
	nop
	sltu x3, x0, x3
	andi x3, x3, 1
	add x4, x1, x3
	andi x5, x13, 2
	srli x1, x5, 1
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB1_241
LBB1_240:                               //    in Loop: Header=BB1_20 Depth=1
	addi x4, x4, 2
LBB1_241:                               //  %sw.epilog710
                                        //    in Loop: Header=BB1_20 Depth=1
	andi x8, x13, 132
	sw x13, 96 ( x2 )               //  4-byte Folded Spill
	sw x4, 80 ( x2 )                //  4-byte Folded Spill
	sw x5, 68 ( x2 )                //  4-byte Folded Spill
	sw x8, 64 ( x2 )                //  4-byte Folded Spill
	bgtu x8, x0, LBB1_252
LBB1_242:                               //  %if.then729
                                        //    in Loop: Header=BB1_20 Depth=1
	sub x11, x3, x4
	ble x11, x0, LBB1_252
LBB1_243:                               //  %while.cond734.preheader
                                        //    in Loop: Header=BB1_20 Depth=1
	ori x28, x0, $_vfwprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfwprintf_r.blanks >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	slti x1, x11, 17
	bgtu x1, x0, LBB1_247
LBB1_244:                               //  %while.body737
                                        //    Parent Loop BB1_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x1, x0, 32
	sw x1, 4 ( x9 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 32
	sw x1, 8 ( x7 )
	lw x1, 128 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 128 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_249
LBB1_245:                               //    in Loop: Header=BB1_244 Depth=2
	addi x9, x9, 8
LBB1_246:                               //  %if.end753
                                        //    in Loop: Header=BB1_244 Depth=2
	ori x28, x0, $_vfwprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfwprintf_r.blanks >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	addi x11, x11, -16
	addi x1, x0, 16
	bgt x11, x1, LBB1_244
LBB1_247:                               //  %while.end755
                                        //    in Loop: Header=BB1_20 Depth=1
	slli x1, x11, 1
	sw x1, 4 ( x9 )
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 128 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 128 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_251
LBB1_248:                               //    in Loop: Header=BB1_20 Depth=1
	addi x9, x9, 8
	jalr x0, LBB1_252 ( x0 )
LBB1_249:                               //  %if.then747
                                        //    in Loop: Header=BB1_244 Depth=2
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x11
	lw x11, 104 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 124
	call $__sprint_r
	add x11, x0, x8
	addi x7, x2, 124
	addi x1, x2, 1212
	add x9, x0, x1
	beqz x10, LBB1_246
LBB1_250:
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_411 ( x0 )
LBB1_251:                               //  %if.then767
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 104 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 124
	call $__sprint_r
	addi x7, x2, 124
	addi x1, x2, 1212
	add x9, x0, x1
	bgtu x10, x0, LBB1_250
LBB1_252:                               //  %if.end775
                                        //    in Loop: Header=BB1_20 Depth=1
	lhu x1, 166 ( x2 )
	nop
	beqz x1, LBB1_256
LBB1_253:                               //  %if.then777
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x1, x2, 166
	sw x1, 0 ( x9 )
	addi x1, x0, 2
	sw x1, 4 ( x9 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 2
	sw x1, 8 ( x7 )
	lw x1, 128 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 128 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_255
LBB1_254:                               //    in Loop: Header=BB1_20 Depth=1
	addi x9, x9, 8
	jalr x0, LBB1_256 ( x0 )
LBB1_255:                               //  %if.then787
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 104 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 124
	call $__sprint_r
	addi x7, x2, 124
	addi x1, x2, 1212
	add x9, x0, x1
	bgtu x10, x0, LBB1_250
LBB1_256:                               //  %if.end794
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB1_260
LBB1_257:                               //  %if.then797
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x1, x2, 120
	sw x1, 0 ( x9 )
	addi x1, x0, 4
	sw x1, 4 ( x9 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 4
	sw x1, 8 ( x7 )
	lw x1, 128 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 128 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_259
LBB1_258:                               //    in Loop: Header=BB1_20 Depth=1
	addi x9, x9, 8
	jalr x0, LBB1_260 ( x0 )
LBB1_259:                               //  %if.then808
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 104 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 124
	call $__sprint_r
	addi x7, x2, 124
	addi x1, x2, 1212
	add x9, x0, x1
	bgtu x10, x0, LBB1_250
LBB1_260:                               //  %if.end815
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	xori x1, x1, 128
	beqz x1, LBB1_262
LBB1_261:                               //    in Loop: Header=BB1_20 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_272 ( x0 )
LBB1_262:                               //  %if.then819
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 108 ( x2 )               //  4-byte Folded Reload
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x1, x3
	bgt x8, x0, LBB1_264
LBB1_263:                               //    in Loop: Header=BB1_20 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_272 ( x0 )
LBB1_264:                               //  %while.cond824.preheader
                                        //    in Loop: Header=BB1_20 Depth=1
	ori x28, x0, $_vfwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	slti x1, x8, 17
	bgtu x1, x0, LBB1_269
LBB1_265:                               //  %while.body827
                                        //    Parent Loop BB1_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x1, x0, 32
	sw x1, 4 ( x9 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 32
	sw x1, 8 ( x7 )
	lw x1, 128 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 128 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_267
LBB1_266:                               //    in Loop: Header=BB1_265 Depth=2
	addi x9, x9, 8
	jalr x0, LBB1_268 ( x0 )
LBB1_267:                               //  %if.then837
                                        //    in Loop: Header=BB1_265 Depth=2
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 104 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 124
	call $__sprint_r
	addi x7, x2, 124
	addi x1, x2, 1212
	add x9, x0, x1
	bgtu x10, x0, LBB1_250
LBB1_268:                               //  %if.end843
                                        //    in Loop: Header=BB1_265 Depth=2
	ori x28, x0, $_vfwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	addi x8, x8, -16
	addi x1, x0, 16
	bgt x8, x1, LBB1_265
LBB1_269:                               //  %while.end845
                                        //    in Loop: Header=BB1_20 Depth=1
	slli x1, x8, 1
	sw x1, 4 ( x9 )
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 128 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 128 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_271
LBB1_270:                               //    in Loop: Header=BB1_20 Depth=1
	addi x9, x9, 8
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_272 ( x0 )
LBB1_271:                               //  %if.then857
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 104 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 124
	call $__sprint_r
	addi x7, x2, 124
	addi x1, x2, 1212
	add x9, x0, x1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB1_250
LBB1_272:                               //  %if.end865
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x3, x1
	ble x8, x0, LBB1_281
LBB1_273:                               //  %while.cond870.preheader
                                        //    in Loop: Header=BB1_20 Depth=1
	ori x28, x0, $_vfwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	slti x1, x8, 17
	bgtu x1, x0, LBB1_278
LBB1_274:                               //  %while.body873
                                        //    Parent Loop BB1_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x1, x0, 32
	sw x1, 4 ( x9 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 32
	sw x1, 8 ( x7 )
	lw x1, 128 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 128 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_276
LBB1_275:                               //    in Loop: Header=BB1_274 Depth=2
	addi x9, x9, 8
	jalr x0, LBB1_277 ( x0 )
LBB1_276:                               //  %if.then883
                                        //    in Loop: Header=BB1_274 Depth=2
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 104 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 124
	call $__sprint_r
	addi x7, x2, 124
	addi x1, x2, 1212
	add x9, x0, x1
	bgtu x10, x0, LBB1_250
LBB1_277:                               //  %if.end889
                                        //    in Loop: Header=BB1_274 Depth=2
	ori x28, x0, $_vfwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	addi x8, x8, -16
	addi x1, x0, 16
	bgt x8, x1, LBB1_274
LBB1_278:                               //  %while.end891
                                        //    in Loop: Header=BB1_20 Depth=1
	slli x1, x8, 1
	sw x1, 4 ( x9 )
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 128 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 128 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_280
LBB1_279:                               //    in Loop: Header=BB1_20 Depth=1
	addi x9, x9, 8
	jalr x0, LBB1_281 ( x0 )
LBB1_280:                               //  %if.then903
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 104 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 124
	call $__sprint_r
	addi x7, x2, 124
	addi x1, x2, 1212
	add x9, x0, x1
	bgtu x10, x0, LBB1_250
LBB1_281:                               //  %if.end910
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	nop
	andi x1, x10, 256
	bgtu x1, x0, LBB1_284
LBB1_282:                               //  %if.then914
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x9 )
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 1
	sw x1, 4 ( x9 )
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 128 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 128 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_390
LBB1_283:                               //    in Loop: Header=BB1_20 Depth=1
	addi x9, x9, 8
	jalr x0, LBB1_391 ( x0 )
LBB1_284:                               //  %if.else933
                                        //    in Loop: Header=BB1_20 Depth=1
	add x12, x0, x0
	lw x1, 116 ( x2 )               //  4-byte Folded Reload
	nop
	slti x1, x1, 102
	bgtu x1, x0, LBB1_367
LBB1_285:                               //  %if.then936
                                        //    in Loop: Header=BB1_20 Depth=1
	add x8, x0, x9
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x12
	call $__nedf2
	bgtu x10, x0, LBB1_303
LBB1_286:                               //  %if.then940
                                        //    in Loop: Header=BB1_20 Depth=1
	ori x28, x0, $.str.8 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.8 >> 12 & 0xfffff
	or x1, x1, x28
	add x9, x0, x8
	sw x1, 0 ( x9 )
	addi x1, x0, 2
	sw x1, 4 ( x9 )
	addi x4, x2, 124
	lw x1, 8 ( x4 )
	nop
	addi x1, x1, 2
	sw x1, 8 ( x4 )
	lw x1, 128 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 128 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_288
LBB1_287:                               //    in Loop: Header=BB1_20 Depth=1
	addi x9, x9, 8
	jalr x0, LBB1_289 ( x0 )
LBB1_288:                               //  %if.then950
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x8, 104 ( x2 )               //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x4
	call $__sprint_r
	addi x1, x2, 1212
	add x9, x0, x1
	bgtu x10, x0, LBB1_345
LBB1_289:                               //  %if.end956
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	lw x8, 136 ( x2 )
	andi x1, x1, 1
	bgtu x1, x0, LBB1_292
LBB1_290:                               //  %if.end956
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 156 ( x2 )
	nop
	bgt x8, x1, LBB1_292
LBB1_291:                               //    in Loop: Header=BB1_20 Depth=1
	addi x7, x2, 124
	jalr x0, LBB1_391 ( x0 )
LBB1_292:                               //  %if.then962
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x1, x2, 164
	sw x1, 0 ( x9 )
	addi x1, x0, 2
	sw x1, 4 ( x9 )
	addi x7, x2, 124
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 2
	sw x1, 8 ( x7 )
	lw x1, 128 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 128 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_294
LBB1_293:                               //    in Loop: Header=BB1_20 Depth=1
	addi x9, x9, 8
	jalr x0, LBB1_295 ( x0 )
LBB1_294:                               //  %if.then972
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 104 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 124
	call $__sprint_r
	addi x7, x2, 124
	addi x1, x2, 1212
	add x9, x0, x1
	bgtu x10, x0, LBB1_250
LBB1_295:                               //  %if.end978
                                        //    in Loop: Header=BB1_20 Depth=1
	slti x1, x8, 2
	bgtu x1, x0, LBB1_391
LBB1_296:                               //  %while.cond983.preheader
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x8, x8, -1
	ori x28, x0, $_vfwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	slti x1, x8, 17
	bgtu x1, x0, LBB1_301
LBB1_297:                               //  %while.body986
                                        //    Parent Loop BB1_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x1, x0, 32
	sw x1, 4 ( x9 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 32
	sw x1, 8 ( x7 )
	lw x1, 128 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 128 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_299
LBB1_298:                               //    in Loop: Header=BB1_297 Depth=2
	addi x9, x9, 8
	jalr x0, LBB1_300 ( x0 )
LBB1_299:                               //  %if.then996
                                        //    in Loop: Header=BB1_297 Depth=2
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 104 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 124
	call $__sprint_r
	addi x7, x2, 124
	addi x1, x2, 1212
	add x9, x0, x1
	bgtu x10, x0, LBB1_250
LBB1_300:                               //  %if.end1002
                                        //    in Loop: Header=BB1_297 Depth=2
	ori x28, x0, $_vfwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	addi x8, x8, -16
	addi x1, x0, 16
	bgt x8, x1, LBB1_297
LBB1_301:                               //  %while.end1004
                                        //    in Loop: Header=BB1_20 Depth=1
	slli x1, x8, 1
	sw x1, 4 ( x9 )
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 128 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 128 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_390
LBB1_302:                               //    in Loop: Header=BB1_20 Depth=1
	addi x9, x9, 8
	jalr x0, LBB1_391 ( x0 )
LBB1_303:                               //  %if.else1025
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x3, 156 ( x2 )
	addi x7, x2, 124
	add x9, x0, x8
	bgt x3, x0, LBB1_324
LBB1_304:                               //  %if.then1028
                                        //    in Loop: Header=BB1_20 Depth=1
	ori x28, x0, $.str.8 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.8 >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	addi x1, x0, 2
	sw x1, 4 ( x9 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 2
	sw x1, 8 ( x7 )
	lw x1, 128 ( x2 )
	nop
	addi x4, x1, 1
	sw x4, 128 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_306
LBB1_305:                               //    in Loop: Header=BB1_20 Depth=1
	addi x9, x9, 8
	jalr x0, LBB1_308 ( x0 )
LBB1_306:                               //  %if.then1038
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 104 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x7
	call $__sprint_r
	bgtu x10, x0, LBB1_250
LBB1_307:                               //  %if.then1038.if.end1044_crit_edge
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x3, 156 ( x2 )
	addi x1, x2, 1212
	add x9, x0, x1
	addi x7, x2, 124
LBB1_308:                               //  %if.end1044
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x5, 1
	or x1, x1, x3
	lw x8, 136 ( x2 )
	nop
	or x1, x8, x1
	beqz x1, LBB1_391
LBB1_309:                               //  %if.then1051
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x1, x2, 164
	sw x1, 0 ( x9 )
	addi x1, x0, 2
	sw x1, 4 ( x9 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 2
	sw x1, 8 ( x7 )
	lw x1, 128 ( x2 )
	nop
	addi x4, x1, 1
	sw x4, 128 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_311
LBB1_310:                               //    in Loop: Header=BB1_20 Depth=1
	addi x1, x9, 8
	jalr x0, LBB1_313 ( x0 )
LBB1_311:                               //  %if.then1061
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 104 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x7
	call $__sprint_r
	bgtu x10, x0, LBB1_250
LBB1_312:                               //  %if.then1061.if.end1067_crit_edge
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x3, 156 ( x2 )
	addi x1, x2, 1212
	addi x7, x2, 124
LBB1_313:                               //  %if.end1067
                                        //    in Loop: Header=BB1_20 Depth=1
	bgez x3, LBB1_322
LBB1_314:                               //  %while.cond1072.preheader
                                        //    in Loop: Header=BB1_20 Depth=1
	sw x8, 116 ( x2 )               //  4-byte Folded Spill
	sub x8, x0, x3
	ori x28, x0, $_vfwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, $_vfwprintf_r.zeroes >> 12 & 0xfffff
	or x4, x4, x28
	sw x4, 0 ( x1 )
	addi x4, x0, -17
	bgt x3, x4, LBB1_319
LBB1_315:                               //  %while.body1075
                                        //    Parent Loop BB1_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x3, x0, 32
	sw x3, 4 ( x1 )
	lw x3, 8 ( x7 )
	nop
	addi x3, x3, 32
	sw x3, 8 ( x7 )
	lw x3, 128 ( x2 )
	nop
	addi x4, x3, 1
	sw x4, 128 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB1_317
LBB1_316:                               //    in Loop: Header=BB1_315 Depth=2
	addi x1, x1, 8
	jalr x0, LBB1_318 ( x0 )
LBB1_317:                               //  %if.then1085
                                        //    in Loop: Header=BB1_315 Depth=2
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 104 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 124
	call $__sprint_r
	addi x7, x2, 124
	addi x1, x2, 1212
	bgtu x10, x0, LBB1_250
LBB1_318:                               //  %if.end1091
                                        //    in Loop: Header=BB1_315 Depth=2
	ori x28, x0, $_vfwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $_vfwprintf_r.zeroes >> 12 & 0xfffff
	or x3, x3, x28
	sw x3, 0 ( x1 )
	addi x8, x8, -16
	addi x3, x0, 16
	bgt x8, x3, LBB1_315
LBB1_319:                               //  %while.end1093
                                        //    in Loop: Header=BB1_20 Depth=1
	slli x3, x8, 1
	sw x3, 4 ( x1 )
	lw x4, 8 ( x7 )
	nop
	add x3, x3, x4
	sw x3, 8 ( x7 )
	lw x3, 128 ( x2 )
	nop
	addi x4, x3, 1
	sw x4, 128 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB1_321
LBB1_320:                               //    in Loop: Header=BB1_20 Depth=1
	addi x1, x1, 8
	lw x8, 116 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_322 ( x0 )
LBB1_321:                               //  %if.then1105
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 104 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 124
	call $__sprint_r
	addi x7, x2, 124
	addi x1, x2, 1212
	lw x8, 116 ( x2 )               //  4-byte Folded Reload
	bgtu x10, x0, LBB1_250
LBB1_322:                               //  %if.end1112
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 0 ( x1 )
	slli x3, x8, 1
	sw x3, 4 ( x1 )
	lw x4, 8 ( x7 )
	nop
	add x3, x3, x4
	sw x3, 8 ( x7 )
	lw x3, 128 ( x2 )
	nop
	addi x4, x3, 1
	sw x4, 128 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB1_390
LBB1_323:                               //    in Loop: Header=BB1_20 Depth=1
	addi x9, x1, 8
	jalr x0, LBB1_391 ( x0 )
LBB1_324:                               //  %if.else1132
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x4, 136 ( x2 )
	nop
	slli x1, x4, 1
	srai x1, x1, 1
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x8, x0, x3
	bgt x1, x3, LBB1_326
LBB1_325:                               //  %if.else1132
                                        //    in Loop: Header=BB1_20 Depth=1
	add x8, x0, x1
LBB1_326:                               //  %if.else1132
                                        //    in Loop: Header=BB1_20 Depth=1
	sw x4, 116 ( x2 )               //  4-byte Folded Spill
	ble x8, x0, LBB1_330
LBB1_327:                               //  %if.then1145
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x9 )
	slli x1, x8, 1
	sw x1, 4 ( x9 )
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 128 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 128 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_329
LBB1_328:                               //    in Loop: Header=BB1_20 Depth=1
	addi x9, x9, 8
	jalr x0, LBB1_330 ( x0 )
LBB1_329:                               //  %if.then1157
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 104 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 124
	call $__sprint_r
	addi x7, x2, 124
	addi x1, x2, 1212
	add x9, x0, x1
	bgtu x10, x0, LBB1_250
LBB1_330:                               //  %if.end1164
                                        //    in Loop: Header=BB1_20 Depth=1
	add x1, x0, x0
	bgt x8, x1, LBB1_332
LBB1_331:                               //  %if.end1164
                                        //    in Loop: Header=BB1_20 Depth=1
	add x8, x0, x0
LBB1_332:                               //  %if.end1164
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x1, x8
	bgt x8, x0, LBB1_337
LBB1_333:                               //    in Loop: Header=BB1_20 Depth=1
	lw x8, 104 ( x2 )               //  4-byte Folded Reload
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
LBB1_334:                               //  %cleanup.cont1218
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 156 ( x2 )
	andi x3, x3, 1
	lw x5, 116 ( x2 )               //  4-byte Folded Reload
	bgtu x3, x0, LBB1_346
LBB1_335:                               //  %cleanup.cont1218
                                        //    in Loop: Header=BB1_20 Depth=1
	bgt x5, x1, LBB1_346
LBB1_336:                               //    in Loop: Header=BB1_20 Depth=1
	lw x4, 56 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_350 ( x0 )
LBB1_337:                               //  %while.cond1175.preheader
                                        //    in Loop: Header=BB1_20 Depth=1
	ori x28, x0, $_vfwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	slti x1, x8, 17
	bgtu x1, x0, LBB1_342
LBB1_338:                               //  %while.body1178
                                        //    Parent Loop BB1_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x1, x0, 32
	sw x1, 4 ( x9 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 32
	sw x1, 8 ( x7 )
	lw x1, 128 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 128 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_340
LBB1_339:                               //    in Loop: Header=BB1_338 Depth=2
	addi x9, x9, 8
	jalr x0, LBB1_341 ( x0 )
LBB1_340:                               //  %if.then1188
                                        //    in Loop: Header=BB1_338 Depth=2
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 104 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 124
	call $__sprint_r
	addi x7, x2, 124
	addi x1, x2, 1212
	add x9, x0, x1
	bgtu x10, x0, LBB1_250
LBB1_341:                               //  %if.end1194
                                        //    in Loop: Header=BB1_338 Depth=2
	ori x28, x0, $_vfwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	addi x8, x8, -16
	addi x1, x0, 16
	bgt x8, x1, LBB1_338
LBB1_342:                               //  %while.end1196
                                        //    in Loop: Header=BB1_20 Depth=1
	slli x1, x8, 1
	sw x1, 4 ( x9 )
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 128 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 128 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_344
LBB1_343:                               //    in Loop: Header=BB1_20 Depth=1
	addi x9, x9, 8
	jalr x0, LBB1_333 ( x0 )
LBB1_344:                               //  %if.then1208
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 104 ( x2 )              //  4-byte Folded Reload
	nop
	add x8, x0, x11
	addi x12, x2, 124
	call $__sprint_r
	addi x7, x2, 124
	addi x1, x2, 1212
	add x9, x0, x1
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB1_334
LBB1_345:
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x3, x0, x8
	jalr x0, LBB1_411 ( x0 )
LBB1_346:                               //  %if.then1225
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x3, x2, 164
	sw x3, 0 ( x9 )
	addi x3, x0, 2
	sw x3, 4 ( x9 )
	lw x3, 8 ( x7 )
	nop
	addi x3, x3, 2
	sw x3, 8 ( x7 )
	lw x3, 128 ( x2 )
	nop
	addi x4, x3, 1
	sw x4, 128 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB1_348
LBB1_347:                               //    in Loop: Header=BB1_20 Depth=1
	addi x9, x9, 8
	lw x4, 56 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_350 ( x0 )
LBB1_348:                               //  %if.then1235
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x7
	call $__sprint_r
	bgtu x10, x0, LBB1_345
LBB1_349:                               //  %if.then1235.if.end1242_crit_edge
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 156 ( x2 )
	addi x3, x2, 1212
	add x9, x0, x3
	addi x7, x2, 124
	lw x4, 56 ( x2 )                //  4-byte Folded Reload
	lw x5, 116 ( x2 )               //  4-byte Folded Reload
	nop
LBB1_350:                               //  %if.end1242
                                        //    in Loop: Header=BB1_20 Depth=1
	sub x8, x5, x1
	sub x3, x5, x4
	slli x3, x3, 1
	srai x3, x3, 1
	bgt x3, x8, LBB1_352
LBB1_351:                               //  %if.end1242
                                        //    in Loop: Header=BB1_20 Depth=1
	add x8, x0, x3
LBB1_352:                               //  %if.end1242
                                        //    in Loop: Header=BB1_20 Depth=1
	ble x8, x0, LBB1_357
LBB1_353:                               //  %if.then1257
                                        //    in Loop: Header=BB1_20 Depth=1
	slli x3, x4, 1
	lw x4, 88 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x4
	sw x3, 0 ( x9 )
	slli x3, x8, 1
	sw x3, 4 ( x9 )
	lw x4, 8 ( x7 )
	nop
	add x3, x3, x4
	sw x3, 8 ( x7 )
	lw x3, 128 ( x2 )
	nop
	addi x4, x3, 1
	sw x4, 128 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB1_355
LBB1_354:                               //    in Loop: Header=BB1_20 Depth=1
	addi x9, x9, 8
	jalr x0, LBB1_357 ( x0 )
LBB1_355:                               //  %if.then1269
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 104 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x7
	call $__sprint_r
	bgtu x10, x0, LBB1_250
LBB1_356:                               //  %if.then1269.if.end1276_crit_edge
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 156 ( x2 )
	addi x3, x2, 1212
	add x9, x0, x3
	addi x7, x2, 124
	lw x5, 116 ( x2 )               //  4-byte Folded Reload
LBB1_357:                               //  %if.end1276
                                        //    in Loop: Header=BB1_20 Depth=1
	add x3, x0, x0
	ble x8, x3, LBB1_359
LBB1_358:                               //    in Loop: Header=BB1_20 Depth=1
	sub x3, x0, x8
LBB1_359:                               //  %if.end1276
                                        //    in Loop: Header=BB1_20 Depth=1
	sub x1, x5, x1
	add x8, x3, x1
	ble x8, x0, LBB1_391
LBB1_360:                               //  %while.cond1288.preheader
                                        //    in Loop: Header=BB1_20 Depth=1
	ori x28, x0, $_vfwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	slti x1, x8, 17
	bgtu x1, x0, LBB1_365
LBB1_361:                               //  %while.body1291
                                        //    Parent Loop BB1_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x1, x0, 32
	sw x1, 4 ( x9 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 32
	sw x1, 8 ( x7 )
	lw x1, 128 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 128 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_363
LBB1_362:                               //    in Loop: Header=BB1_361 Depth=2
	addi x9, x9, 8
	jalr x0, LBB1_364 ( x0 )
LBB1_363:                               //  %if.then1301
                                        //    in Loop: Header=BB1_361 Depth=2
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 104 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 124
	call $__sprint_r
	addi x7, x2, 124
	addi x1, x2, 1212
	add x9, x0, x1
	bgtu x10, x0, LBB1_250
LBB1_364:                               //  %if.end1307
                                        //    in Loop: Header=BB1_361 Depth=2
	ori x28, x0, $_vfwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	addi x8, x8, -16
	addi x1, x0, 16
	bgt x8, x1, LBB1_361
LBB1_365:                               //  %while.end1309
                                        //    in Loop: Header=BB1_20 Depth=1
	slli x1, x8, 1
	sw x1, 4 ( x9 )
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 128 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 128 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_390
LBB1_366:                               //    in Loop: Header=BB1_20 Depth=1
	addi x9, x9, 8
	jalr x0, LBB1_391 ( x0 )
LBB1_367:                               //  %if.else1337
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x11, 136 ( x2 )
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x9 )
	addi x1, x0, 2
	sw x1, 4 ( x9 )
	lw x1, 8 ( x7 )
	nop
	addi x3, x1, 2
	sw x3, 8 ( x7 )
	addi x9, x9, 8
	lw x4, 128 ( x2 )
	nop
	addi x1, x4, 1
	sw x1, 128 ( x2 )
	andi x5, x10, 1
	bgtu x5, x0, LBB1_369
LBB1_368:                               //  %if.else1337
                                        //    in Loop: Header=BB1_20 Depth=1
	slti x5, x11, 2
	bgtu x5, x0, LBB1_386
LBB1_369:                               //  %if.then1343
                                        //    in Loop: Header=BB1_20 Depth=1
	sw x11, 116 ( x2 )              //  4-byte Folded Spill
	slti x4, x4, 7
	add x8, x0, x12
	bgtu x4, x0, LBB1_372
LBB1_370:                               //  %if.then1353
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 104 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x7
	add x12, x0, x8
	call $__sprint_r
	bgtu x10, x0, LBB1_250
LBB1_371:                               //  %if.then1353.if.end1359_crit_edge
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 128 ( x2 )
	lw x3, 8 ( x8 )
	addi x4, x2, 1212
	add x9, x0, x4
	add x7, x0, x8
	add x8, x0, x0
LBB1_372:                               //  %if.end1359
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x4, x2, 164
	sw x4, 0 ( x9 )
	addi x4, x0, 2
	sw x4, 4 ( x9 )
	addi x3, x3, 2
	sw x3, 8 ( x7 )
	addi x3, x1, 1
	sw x3, 128 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_374
LBB1_373:                               //    in Loop: Header=BB1_20 Depth=1
	addi x9, x9, 8
	jalr x0, LBB1_375 ( x0 )
LBB1_374:                               //  %if.then1370
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 104 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x7
	call $__sprint_r
	addi x1, x2, 1212
	add x9, x0, x1
	bgtu x10, x0, LBB1_250
LBB1_375:                               //  %if.end1376
                                        //    in Loop: Header=BB1_20 Depth=1
	sw x9, 84 ( x2 )                //  4-byte Folded Spill
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	add x13, x0, x8
	call $__eqdf2
	beqz x10, LBB1_378
LBB1_376:                               //  %if.then1379
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 2
	lw x9, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x9 )
	lw x1, 116 ( x2 )               //  4-byte Folded Reload
	nop
	slli x1, x1, 1
	addi x1, x1, -2
	sw x1, 4 ( x9 )
	addi x7, x2, 124
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 128 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 128 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_387
LBB1_377:                               //    in Loop: Header=BB1_20 Depth=1
	addi x9, x9, 8
	jalr x0, LBB1_388 ( x0 )
LBB1_378:                               //  %if.else1400
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x3, 116 ( x2 )               //  4-byte Folded Reload
	nop
	slti x1, x3, 2
	addi x7, x2, 124
	lw x9, 84 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB1_388
LBB1_379:                               //  %while.cond1405.preheader
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x8, x3, -1
	ori x28, x0, $_vfwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	slti x1, x8, 17
	bgtu x1, x0, LBB1_384
LBB1_380:                               //  %while.body1408
                                        //    Parent Loop BB1_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x1, x0, 32
	sw x1, 4 ( x9 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 32
	sw x1, 8 ( x7 )
	lw x1, 128 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 128 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_382
LBB1_381:                               //    in Loop: Header=BB1_380 Depth=2
	addi x9, x9, 8
	jalr x0, LBB1_383 ( x0 )
LBB1_382:                               //  %if.then1418
                                        //    in Loop: Header=BB1_380 Depth=2
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 104 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 124
	call $__sprint_r
	addi x7, x2, 124
	addi x1, x2, 1212
	add x9, x0, x1
	bgtu x10, x0, LBB1_250
LBB1_383:                               //  %if.end1424
                                        //    in Loop: Header=BB1_380 Depth=2
	ori x28, x0, $_vfwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	addi x8, x8, -16
	addi x1, x0, 16
	bgt x8, x1, LBB1_380
LBB1_384:                               //  %while.end1426
                                        //    in Loop: Header=BB1_20 Depth=1
	slli x1, x8, 1
	sw x1, 4 ( x9 )
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 128 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 128 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_387
LBB1_385:                               //    in Loop: Header=BB1_20 Depth=1
	addi x9, x9, 8
	jalr x0, LBB1_388 ( x0 )
LBB1_386:                               //  %if.else1447
                                        //    in Loop: Header=BB1_20 Depth=1
	slti x1, x4, 7
	bgtu x1, x0, LBB1_388
LBB1_387:                               //  %if.then1393
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 104 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 124
	call $__sprint_r
	addi x7, x2, 124
	addi x1, x2, 1212
	add x9, x0, x1
	bgtu x10, x0, LBB1_250
LBB1_388:                               //  %if.end1464
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x1, x2, 142
	sw x1, 0 ( x9 )
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 1
	sw x1, 4 ( x9 )
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 128 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 128 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_390
LBB1_389:                               //    in Loop: Header=BB1_20 Depth=1
	addi x9, x9, 8
	jalr x0, LBB1_391 ( x0 )
LBB1_390:                               //  %if.then926
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 104 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 124
	call $__sprint_r
	addi x7, x2, 124
	addi x1, x2, 1212
	add x9, x0, x1
	bgtu x10, x0, LBB1_250
LBB1_391:                               //  %if.end1485
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 4
	beqz x1, LBB1_400
LBB1_392:                               //  %if.then1488
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 108 ( x2 )               //  4-byte Folded Reload
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x1, x3
	ble x8, x0, LBB1_400
LBB1_393:                               //  %while.cond1493.preheader
                                        //    in Loop: Header=BB1_20 Depth=1
	ori x28, x0, $_vfwprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfwprintf_r.blanks >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	slti x1, x8, 17
	bgtu x1, x0, LBB1_398
LBB1_394:                               //  %while.body1496
                                        //    Parent Loop BB1_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x1, x0, 32
	sw x1, 4 ( x9 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 32
	sw x1, 8 ( x7 )
	lw x1, 128 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 128 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_396
LBB1_395:                               //    in Loop: Header=BB1_394 Depth=2
	addi x9, x9, 8
	jalr x0, LBB1_397 ( x0 )
LBB1_396:                               //  %if.then1506
                                        //    in Loop: Header=BB1_394 Depth=2
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 104 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 124
	call $__sprint_r
	addi x7, x2, 124
	addi x1, x2, 1212
	add x9, x0, x1
	bgtu x10, x0, LBB1_250
LBB1_397:                               //  %if.end1512
                                        //    in Loop: Header=BB1_394 Depth=2
	ori x28, x0, $_vfwprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfwprintf_r.blanks >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	addi x8, x8, -16
	addi x1, x0, 16
	bgt x8, x1, LBB1_394
LBB1_398:                               //  %while.end1514
                                        //    in Loop: Header=BB1_20 Depth=1
	slli x1, x8, 1
	sw x1, 4 ( x9 )
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 128 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 128 ( x2 )
	slti x1, x1, 7
	bgtu x1, x0, LBB1_400
LBB1_399:                               //  %if.then1526
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 104 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 124
	call $__sprint_r
	addi x7, x2, 124
	bgtu x10, x0, LBB1_250
LBB1_400:                               //  %if.end1534
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x3, x1, LBB1_402
LBB1_401:                               //  %if.end1534
                                        //    in Loop: Header=BB1_20 Depth=1
	add x3, x0, x1
LBB1_402:                               //  %if.end1534
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	lw x1, 132 ( x2 )
	lw x11, 104 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x0
	beqz x1, LBB1_405
LBB1_403:                               //  %land.lhs.true1544
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 124
	add x8, x0, x11
	call $__sprint_r
	add x3, x0, x8
	add x8, x0, x0
	addi x7, x2, 124
	beqz x10, LBB1_405
LBB1_404:
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_411 ( x0 )
LBB1_405:                               //  %if.end1548
                                        //    in Loop: Header=BB1_20 Depth=1
	sw x0, 128 ( x2 )
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB1_429
LBB1_428:                               //  %if.end1548
                                        //    in Loop: Header=BB1_20 Depth=1
	jalr x0, LBB1_20 ( x0 )
LBB1_429:                               //  %if.end1548
                                        //    in Loop: Header=BB1_20 Depth=1
LBB1_406:                               //  %if.then1553
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $_free_r
	addi x7, x2, 124
	sw x8, 48 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_20 ( x0 )
LBB1_407:                               //  %done
	lw x1, 132 ( x2 )
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB1_409
LBB1_408:                               //  %land.lhs.true1557
	addi x12, x2, 124
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x3
	add x8, x0, x3
	call $__sprint_r
	add x3, x0, x8
	bgtu x10, x0, LBB1_413
LBB1_409:                               //  %if.end1561
	sw x0, 128 ( x2 )
	jalr x0, LBB1_413 ( x0 )
LBB1_410:                               //  %cleanup519
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
	nop
	lh x1, 12 ( x3 )
	add x11, x0, x0
	ori x1, x1, 64
	sh x1, 12 ( x3 )
	sw x10, 72 ( x2 )               //  4-byte Folded Spill
LBB1_411:                               //  %error
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB1_413
LBB1_412:                               //  %if.then1566
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x3
	call $_free_r
	add x3, x0, x8
LBB1_413:                               //  %if.end1567
	lbu x1, 12 ( x3 )
	nop
	andi x1, x1, 64
	srli x1, x1, 6
	beqz x1, LBB1_415
LBB1_414:
	not x4, x0
	jalr x0, LBB1_416 ( x0 )
LBB1_415:                               //  %if.end1567
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	nop
LBB1_416:                               //  %cleanup1589
	add x10, x0, x4
	lw x8, 1316 ( x2 )              //  4-byte Folded Reload
	lw x1, 1324 ( x2 )
$cfi6:
	.cfi_same_value 1
	addi x2, x2, 1328
$cfi7:
	.cfi_adjust_cfa_offset -1328
$cfi8:
	.cfi_def_cfa 2, 0
	ret
LBB1_417:                               //  %if.then663
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x1, x9, 48
	jalr x0, LBB1_230 ( x0 )
$func_end1:
	.size	$_vfwprintf_r, ($func_end1)-($_vfwprintf_r)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	LBB1_407
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_38
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_40
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_43
	.long	LBB1_46
	.long	LBB1_234
	.long	LBB1_45
	.long	LBB1_47
	.long	LBB1_234
	.long	LBB1_56
	.long	LBB1_57
	.long	LBB1_57
	.long	LBB1_57
	.long	LBB1_57
	.long	LBB1_57
	.long	LBB1_57
	.long	LBB1_57
	.long	LBB1_57
	.long	LBB1_57
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_83
	.long	LBB1_234
	.long	LBB1_83
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_59
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_191
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_65
	.long	LBB1_71
	.long	LBB1_83
	.long	LBB1_83
	.long	LBB1_83
	.long	LBB1_60
	.long	LBB1_71
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_61
	.long	LBB1_234
	.long	LBB1_144
	.long	LBB1_150
	.long	LBB1_157
	.long	LBB1_64
	.long	LBB1_234
	.long	LBB1_158
	.long	LBB1_234
	.long	LBB1_182
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_190

	.text
	.type	$wcvt,@function
$wcvt:                                  //  @wcvt
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi9:
	.cfi_def_cfa 2, 0
$cfi10:
	.cfi_val_offset 2, 0
	addi x2, x2, -56
$cfi11:
	.cfi_adjust_cfa_offset 56
	sw x1, 52 ( x2 )
$cfi12:
	.cfi_offset 1, -4
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	sw x16, 32 ( x2 )               //  4-byte Folded Spill
	sw x14, 8 ( x2 )                //  4-byte Folded Spill
	sw x13, 20 ( x2 )               //  4-byte Folded Spill
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	add x3, x0, x12
	sw x17, 28 ( x2 )               //  4-byte Folded Spill
	add x4, x0, x11
	srai x1, x3, 31
	andi x1, x1, 45
	sh x1, 0 ( x15 )
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	add x8, x0, x0
	or x11, x1, x28
	add x10, x0, x8
	sw x4, 12 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x4
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x3
	call $__subdf3
	add x3, x0, x10
	add x4, x0, x11
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	ori x5, x1, 32
	addi x1, x0, 102
	bne x5, x1, LBB2_2
LBB2_1:
	addi x13, x0, 3
	jalr x0, LBB2_3 ( x0 )
LBB2_2:                                 //  %entry
	addi x13, x0, 2
LBB2_3:                                 //  %entry
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x7, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x8, x1, LBB2_5
LBB2_4:                                 //  %entry
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
LBB2_5:                                 //  %entry
	bgt x8, x1, LBB2_7
LBB2_6:                                 //  %entry
	add x4, x0, x1
LBB2_7:                                 //  %entry
	xori x1, x5, 101
	seqz x1, x1
	andi x1, x1, 1
	add x14, x7, x1
	addi x16, x2, 40
	addi x17, x2, 36
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x3
	sw x4, 20 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x4
	sw x14, 12 ( x2 )               //  4-byte Folded Spill
	lw x15, 32 ( x2 )               //  4-byte Folded Reload
	sw x5, 28 ( x2 )                //  4-byte Folded Spill
	call $_dtoa_r
	lw x4, 28 ( x2 )                //  4-byte Folded Reload
	add x5, x0, x10
	lw x7, 64 ( x2 )
	lw x3, 56 ( x2 )
	xori x1, x4, 103
	bgtu x1, x0, LBB2_10
LBB2_8:                                 //  %lor.lhs.false17
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	andi x1, x1, 1
	bgtu x1, x0, LBB2_10
LBB2_9:                                 //  %lor.lhs.false17.if.end40_crit_edge
	lw x1, 36 ( x2 )
	jalr x0, LBB2_23 ( x0 )
LBB2_10:                                //  %if.then20
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x1, x5
	xori x1, x4, 102
	sw x5, 28 ( x2 )                //  4-byte Folded Spill
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB2_12
LBB2_11:
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB2_17 ( x0 )
LBB2_12:                                //  %if.then24
	add x12, x0, x0
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x12
	call $__eqdf2
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB2_14
LBB2_13:                                //  %if.then24
	lb x1, 0 ( x1 )
	nop
	andi x1, x1, 255
	xori x1, x1, 48
	beqz x1, LBB2_15
LBB2_14:                                //  %if.then24.if.end31_crit_edge
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x1 )
	jalr x0, LBB2_16 ( x0 )
LBB2_15:                                //  %if.then29
	slti x1, x0, 1
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
LBB2_16:                                //  %if.end31
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x1, x3
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
LBB2_17:                                //  %if.end33
	add x12, x0, x0
	add x13, x0, x12
	call $__nedf2
	bgtu x10, x0, LBB2_19
LBB2_18:                                //  %while.cond.preheader.thread
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 36 ( x2 )
	lw x5, 28 ( x2 )                //  4-byte Folded Reload
	lw x7, 64 ( x2 )
	jalr x0, LBB2_22 ( x0 )
LBB2_19:                                //  %while.cond.preheader
	lw x1, 36 ( x2 )
	lw x5, 28 ( x2 )                //  4-byte Folded Reload
	lw x7, 64 ( x2 )
	lw x9, 16 ( x2 )                //  4-byte Folded Reload
	nop
	bgeu x1, x9, LBB2_22
LBB2_20:                                //  %while.body.preheader
	addi x3, x0, 48
LBB2_21:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	addi x4, x1, 1
	sw x4, 36 ( x2 )
	sb x3, 0 ( x1 )
	lw x1, 36 ( x2 )
	nop
	bgtu x9, x1, LBB2_21
LBB2_22:                                //  %if.end40.loopexit
	lw x3, 56 ( x2 )
LBB2_23:                                //  %if.end40
	lw x10, 60 ( x2 )
	sub x1, x1, x5
	sw x1, 0 ( x3 )
	ble x7, x0, LBB2_28
LBB2_24:                                //  %if.end40
	ble x1, x0, LBB2_28
LBB2_25:                                //  %for.body.preheader
	add x3, x0, x10
LBB2_26:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x4, x8, x5
	lb x4, 0 ( x4 )
	nop
	sh x4, 0 ( x3 )
	addi x8, x8, 1
	ble x7, x8, LBB2_28
LBB2_27:                                //  %for.body
                                        //    in Loop: Header=BB2_26 Depth=1
	addi x3, x3, 2
	bgt x1, x8, LBB2_26
LBB2_28:                                //  %for.end
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )
$cfi13:
	.cfi_same_value 1
	addi x2, x2, 56
$cfi14:
	.cfi_adjust_cfa_offset -56
$cfi15:
	.cfi_def_cfa 2, 0
	ret
$func_end2:
	.size	$wcvt, ($func_end2)-($wcvt)
	.cfi_endproc

	.address_space	0	
	.address_space	0	
	.type	$_vfwprintf_r.blanks,@object //  @_vfwprintf_r.blanks
	.section	.rodata,"a",@progbits
	.p2align	1
$_vfwprintf_r.blanks:
	.short	32                      //  0x20
	.short	32                      //  0x20
	.short	32                      //  0x20
	.short	32                      //  0x20
	.short	32                      //  0x20
	.short	32                      //  0x20
	.short	32                      //  0x20
	.short	32                      //  0x20
	.short	32                      //  0x20
	.short	32                      //  0x20
	.short	32                      //  0x20
	.short	32                      //  0x20
	.short	32                      //  0x20
	.short	32                      //  0x20
	.short	32                      //  0x20
	.short	32                      //  0x20
	.size	$_vfwprintf_r.blanks, 32

	.address_space	0	
	.type	$_vfwprintf_r.zeroes,@object //  @_vfwprintf_r.zeroes
	.p2align	1
$_vfwprintf_r.zeroes:
	.short	48                      //  0x30
	.short	48                      //  0x30
	.short	48                      //  0x30
	.short	48                      //  0x30
	.short	48                      //  0x30
	.short	48                      //  0x30
	.short	48                      //  0x30
	.short	48                      //  0x30
	.short	48                      //  0x30
	.short	48                      //  0x30
	.short	48                      //  0x30
	.short	48                      //  0x30
	.short	48                      //  0x30
	.short	48                      //  0x30
	.short	48                      //  0x30
	.short	48                      //  0x30
	.size	$_vfwprintf_r.zeroes, 32

	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str2.2,"aMS",@progbits,2
	.p2align	1
$.str:
	.short	73                      //  0x49
	.short	78                      //  0x4e
	.short	70                      //  0x46
	.short	0                       //  0x0
	.size	$.str, 8

	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
	.p2align	1
$.str.1:
	.short	105                     //  0x69
	.short	110                     //  0x6e
	.short	102                     //  0x66
	.short	0                       //  0x0
	.size	$.str.1, 8

	.address_space	0	
	.type	$.str.2,@object         //  @.str.2
	.p2align	1
$.str.2:
	.short	78                      //  0x4e
	.short	65                      //  0x41
	.short	78                      //  0x4e
	.short	0                       //  0x0
	.size	$.str.2, 8

	.address_space	0	
	.type	$.str.3,@object         //  @.str.3
	.p2align	1
$.str.3:
	.short	110                     //  0x6e
	.short	97                      //  0x61
	.short	110                     //  0x6e
	.short	0                       //  0x0
	.size	$.str.3, 8

	.address_space	0	
	.type	$.str.4,@object         //  @.str.4
	.p2align	1
$.str.4:
	.short	48                      //  0x30
	.short	49                      //  0x31
	.short	50                      //  0x32
	.short	51                      //  0x33
	.short	52                      //  0x34
	.short	53                      //  0x35
	.short	54                      //  0x36
	.short	55                      //  0x37
	.short	56                      //  0x38
	.short	57                      //  0x39
	.short	97                      //  0x61
	.short	98                      //  0x62
	.short	99                      //  0x63
	.short	100                     //  0x64
	.short	101                     //  0x65
	.short	102                     //  0x66
	.short	0                       //  0x0
	.size	$.str.4, 34

	.address_space	0	
	.type	$.str.5,@object         //  @.str.5
	.p2align	1
$.str.5:
	.short	40                      //  0x28
	.short	110                     //  0x6e
	.short	117                     //  0x75
	.short	108                     //  0x6c
	.short	108                     //  0x6c
	.short	41                      //  0x29
	.short	0                       //  0x0
	.size	$.str.5, 14

	.address_space	0	
	.type	$.str.6,@object         //  @.str.6
	.p2align	1
$.str.6:
	.short	48                      //  0x30
	.short	49                      //  0x31
	.short	50                      //  0x32
	.short	51                      //  0x33
	.short	52                      //  0x34
	.short	53                      //  0x35
	.short	54                      //  0x36
	.short	55                      //  0x37
	.short	56                      //  0x38
	.short	57                      //  0x39
	.short	65                      //  0x41
	.short	66                      //  0x42
	.short	67                      //  0x43
	.short	68                      //  0x44
	.short	69                      //  0x45
	.short	70                      //  0x46
	.short	0                       //  0x0
	.size	$.str.6, 34

	.address_space	0	
	.type	$.str.7,@object         //  @.str.7
	.p2align	1
$.str.7:
	.short	98                      //  0x62
	.short	117                     //  0x75
	.short	103                     //  0x67
	.short	32                      //  0x20
	.short	105                     //  0x69
	.short	110                     //  0x6e
	.short	32                      //  0x20
	.short	118                     //  0x76
	.short	102                     //  0x66
	.short	112                     //  0x70
	.short	114                     //  0x72
	.short	105                     //  0x69
	.short	110                     //  0x6e
	.short	116                     //  0x74
	.short	102                     //  0x66
	.short	58                      //  0x3a
	.short	32                      //  0x20
	.short	98                      //  0x62
	.short	97                      //  0x61
	.short	100                     //  0x64
	.short	32                      //  0x20
	.short	98                      //  0x62
	.short	97                      //  0x61
	.short	115                     //  0x73
	.short	101                     //  0x65
	.short	0                       //  0x0
	.size	$.str.7, 52

	.address_space	0	
	.type	$.str.8,@object         //  @.str.8
	.p2align	1
$.str.8:
	.short	48                      //  0x30
	.short	0                       //  0x0
	.size	$.str.8, 4


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
