	.text
	.file	"svfwscanf.bc"
	.globl	$__ssvfwscanf_r
	.type	$__ssvfwscanf_r,@function
$__ssvfwscanf_r:                        //  @__ssvfwscanf_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -864
$cfi2:
	.cfi_adjust_cfa_offset 864
	sw x1, 860 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 852 ( x2 )               //  4-byte Folded Spill
	sw x12, 132 ( x2 )              //  4-byte Folded Spill
	add x8, x0, x11
	sw x13, 848 ( x2 )
	sw x10, 120 ( x2 )              //  4-byte Folded Spill
	call $_localeconv_r
	add x12, x0, x8
	lh x3, 12 ( x12 )
	lw x4, 0 ( x10 )
	lui x1, 8192>>12 
	and x5, x1, x3
	lb x4, 0 ( x4 )
	nop
	sw x4, 72 ( x2 )                //  4-byte Folded Spill
	bgtu x5, x0, LBB0_2
LBB0_1:                                 //  %if.then
	or x3, x1, x3
	sh x3, 12 ( x12 )
	lw x3, 100 ( x12 )
	nop
	or x1, x1, x3
	sw x1, 100 ( x12 )
LBB0_2:                                 //  %for.cond.preheader
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	nop
	lhu x7, 0 ( x5 )
	nop
	bgtu x7, x0, LBB0_4
LBB0_3:
	add x1, x0, x0
	jalr x0, LBB0_651 ( x0 )
LBB0_4:                                 //  %if.end10.lr.ph
	addi x3, x2, 140
	slli x1, x7, 16
	add x4, x0, x0
	srai x8, x1, 16
	addi x1, x3, 1376
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	addi x1, x3, 1378
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	addi x1, x3, 2
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	addi x1, x12, 65
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	addi x1, x12, 64
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	sw x4, 92 ( x2 )                //  4-byte Folded Spill
	sw x4, 64 ( x2 )                //  4-byte Folded Spill
	sw x4, 60 ( x2 )                //  4-byte Folded Spill
	sw x4, 88 ( x2 )                //  4-byte Folded Spill
	sw x4, 68 ( x2 )                //  4-byte Folded Spill
	sw x4, 104 ( x2 )               //  4-byte Folded Spill
	sw x4, 116 ( x2 )               //  4-byte Folded Spill
	sw x4, 108 ( x2 )               //  4-byte Folded Spill
	sw x12, 124 ( x2 )              //  4-byte Folded Spill
LBB0_5:                                 //  %if.end10
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_6 Depth 2
                                        //      Child Loop BB0_25 Depth 2
                                        //        Child Loop BB0_26 Depth 3
                                        //          Child Loop BB0_27 Depth 4
                                        //      Child Loop BB0_65 Depth 2
                                        //      Child Loop BB0_90 Depth 2
                                        //      Child Loop BB0_464 Depth 2
                                        //      Child Loop BB0_552 Depth 2
                                        //      Child Loop BB0_377 Depth 2
                                        //      Child Loop BB0_294 Depth 2
                                        //      Child Loop BB0_309 Depth 2
                                        //      Child Loop BB0_331 Depth 2
                                        //      Child Loop BB0_335 Depth 2
                                        //      Child Loop BB0_172 Depth 2
                                        //      Child Loop BB0_186 Depth 2
                                        //      Child Loop BB0_204 Depth 2
                                        //      Child Loop BB0_217 Depth 2
                                        //      Child Loop BB0_236 Depth 2
                                        //      Child Loop BB0_261 Depth 2
                                        //      Child Loop BB0_116 Depth 2
                                        //      Child Loop BB0_121 Depth 2
                                        //      Child Loop BB0_132 Depth 2
                                        //      Child Loop BB0_136 Depth 2
	sw x7, 128 ( x2 )               //  4-byte Folded Spill
	addi x5, x5, 2
	sw x5, 132 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $iswspace
	beqz x10, LBB0_23
LBB0_6:                                 //  %while.cond
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	nop
	lw x1, 4 ( x12 )
	nop
	bgt x1, x0, LBB0_10
LBB0_7:                                 //  %land.lhs.true.i
                                        //    in Loop: Header=BB0_6 Depth=2
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x12
	add x11, x0, x8
	call $__ssrefill_r
	beqz x10, LBB0_9
LBB0_8:                                 //    in Loop: Header=BB0_5 Depth=1
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_45 ( x0 )
LBB0_9:                                 //  %land.lhs.true.if.end_crit_edge.i
                                        //    in Loop: Header=BB0_6 Depth=2
	lw x1, 4 ( x8 )
	add x12, x0, x8
LBB0_10:                                //  %_sfgetwc_r.exit
                                        //    in Loop: Header=BB0_6 Depth=2
	lw x3, 0 ( x12 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lhu x8, 0 ( x3 )
	addi x3, x3, 2
	addi x1, x1, -2
	lui x4, 65535 >> 12 & 0xfffff
	or x4, x4, x28
	sw x3, 0 ( x12 )
	sw x1, 4 ( x12 )
	bne x8, x4, LBB0_12
LBB0_11:                                //    in Loop: Header=BB0_5 Depth=1
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_45 ( x0 )
LBB0_12:                                //  %land.rhs
                                        //    in Loop: Header=BB0_6 Depth=2
	slli x1, x8, 16
	srai x10, x1, 16
	call $iswspace
	bgtu x10, x0, LBB0_6
LBB0_13:                                //  %if.end.i1531
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, 65503 & 0xfff
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	nop
	lhu x1, 12 ( x12 )
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x12 )
	lw x1, 48 ( x12 )
	nop
	beqz x1, LBB0_17
LBB0_14:                                //  %if.then4.i
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 52 ( x12 )
	lw x3, 4 ( x12 )
	nop
	ble x1, x3, LBB0_654
LBB0_653:                               //  %if.then4.i
                                        //    in Loop: Header=BB0_5 Depth=1
	jalr x0, LBB0_306 ( x0 )
LBB0_654:                               //  %if.then4.i
                                        //    in Loop: Header=BB0_5 Depth=1
LBB0_15:                                //  %land.lhs.true.i1535
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	lw x11, 124 ( x2 )              //  4-byte Folded Reload
	nop
	call $__submore
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	bgtu x10, x0, LBB0_656
LBB0_655:                               //  %land.lhs.true.i1535
                                        //    in Loop: Header=BB0_5 Depth=1
	jalr x0, LBB0_306 ( x0 )
LBB0_656:                               //  %land.lhs.true.i1535
                                        //    in Loop: Header=BB0_5 Depth=1
LBB0_16:                                //    in Loop: Header=BB0_5 Depth=1
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_45 ( x0 )
LBB0_17:                                //  %if.end14.i
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 16 ( x12 )
	nop
	bgtu x3, x0, LBB0_20
LBB0_18:                                //  %if.end14.if.end34_crit_edge.i
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
LBB0_19:                                //  %if.end34.i
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 4 ( x12 )
	nop
	sw x3, 60 ( x12 )
	sw x1, 56 ( x12 )
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x12 )
	addi x1, x0, 3
	sw x1, 52 ( x12 )
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x12 )
	sh x8, 65 ( x12 )
	addi x1, x0, 2
	sw x1, 4 ( x12 )
	jalr x0, LBB0_45 ( x0 )
LBB0_20:                                //  %land.lhs.true18.i
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	bgeu x3, x1, LBB0_19
LBB0_21:                                //  %land.lhs.true24.i
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x3, -2 ( x1 )
	nop
	bne x3, x8, LBB0_19
LBB0_22:                                //  %if.then29.i
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x1, -2
	sw x1, 0 ( x12 )
	lw x1, 4 ( x12 )
	nop
	addi x1, x1, 2
	sw x1, 4 ( x12 )
	jalr x0, LBB0_45 ( x0 )
LBB0_23:                                //  %if.end24
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x8, 112 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	lw x3, 128 ( x2 )               //  4-byte Folded Reload
	nop
	and x1, x1, x3
	xori x1, x1, 37
	bgtu x1, x0, LBB0_30
LBB0_24:                                //  %again.outer.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x7, 132 ( x2 )               //  4-byte Folded Reload
	add x1, x0, x0
	add x5, x0, x1
LBB0_25:                                //  %again.outer
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_26 Depth 3
                                        //          Child Loop BB0_27 Depth 4
	sw x1, 112 ( x2 )               //  4-byte Folded Spill
LBB0_26:                                //  %again.outer
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_25 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_27 Depth 4
	addi x7, x7, 2
LBB0_27:                                //  %again
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_25 Depth=2
                                        //        Parent Loop BB0_26 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	lh x8, -2 ( x7 )
	addi x1, x0, 120
	bgeu x1, x8, LBB0_658
LBB0_657:                               //  %again
                                        //    in Loop: Header=BB0_27 Depth=4
	jalr x0, LBB0_652 ( x0 )
LBB0_658:                               //  %again
                                        //    in Loop: Header=BB0_27 Depth=4
LBB0_28:                                //  %again
                                        //    in Loop: Header=BB0_27 Depth=4
	sw x7, 132 ( x2 )               //  4-byte Folded Spill
	sw x5, 128 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	addi x11, x0, 4
	call $__mulsi3
	ori x28, x0, JTI0_0 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI0_0 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB0_29:                                //  %literal.loopexit
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x0, 37
	sw x1, 112 ( x2 )               //  4-byte Folded Spill
LBB0_30:                                //  %literal
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x9, 132 ( x2 )               //  4-byte Folded Reload
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	nop
	lw x3, 4 ( x12 )
	nop
	bgt x3, x0, LBB0_33
LBB0_31:                                //  %land.lhs.true.i1543
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	lw x11, 124 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x9
	call $__ssrefill_r
	add x9, x0, x8
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	beqz x10, LBB0_660
LBB0_659:                               //  %land.lhs.true.i1543
                                        //    in Loop: Header=BB0_5 Depth=1
	jalr x0, LBB0_648 ( x0 )
LBB0_660:                               //  %land.lhs.true.i1543
                                        //    in Loop: Header=BB0_5 Depth=1
LBB0_32:                                //  %land.lhs.true.if.end_crit_edge.i1545
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 4 ( x12 )
LBB0_33:                                //  %_sfgetwc_r.exit1552
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x4, 0 ( x12 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lhu x8, 0 ( x4 )
	addi x1, x4, 2
	addi x5, x3, -2
	lui x7, 65535 >> 12 & 0xfffff
	or x7, x7, x28
	sw x1, 0 ( x12 )
	sw x5, 4 ( x12 )
	bne x8, x7, LBB0_662
LBB0_661:                               //  %_sfgetwc_r.exit1552
                                        //    in Loop: Header=BB0_5 Depth=1
	jalr x0, LBB0_648 ( x0 )
LBB0_662:                               //  %_sfgetwc_r.exit1552
                                        //    in Loop: Header=BB0_5 Depth=1
LBB0_34:                                //  %if.end35
                                        //    in Loop: Header=BB0_5 Depth=1
	slli x7, x8, 16
	srai x7, x7, 16
	lw x10, 112 ( x2 )              //  4-byte Folded Reload
	nop
	beq x7, x10, LBB0_44
LBB0_35:                                //  %if.end.i1557
	ori x28, x0, 65503 & 0xfff
	lhu x7, 12 ( x12 )
	slli x28, x28, 20
	srli x28, x28, 20
	lui x9, 65503 >> 12 & 0xfffff
	or x9, x9, x28
	and x7, x9, x7
	sh x7, 12 ( x12 )
	lw x7, 48 ( x12 )
	nop
	beqz x7, LBB0_40
LBB0_36:                                //  %if.then4.i1561
	lw x3, 52 ( x12 )
	nop
	bgt x3, x5, LBB0_39
LBB0_37:                                //  %land.lhs.true.i1564
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	lw x11, 124 ( x2 )              //  4-byte Folded Reload
	nop
	call $__submore
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	beqz x10, LBB0_664
LBB0_663:                               //  %land.lhs.true.i1564
	jalr x0, LBB0_648 ( x0 )
LBB0_664:                               //  %land.lhs.true.i1564
LBB0_38:                                //  %land.lhs.true.i1564.if.end9.i1569_crit_edge
	lw x1, 0 ( x12 )
	nop
LBB0_39:                                //  %if.end9.i1569
	addi x3, x1, -2
	sw x3, 0 ( x12 )
	sb x8, -2 ( x1 )
	lw x1, 4 ( x12 )
	nop
	addi x1, x1, 2
	sw x1, 4 ( x12 )
	jalr x0, LBB0_648 ( x0 )
LBB0_40:                                //  %if.end14.i1572
	lw x7, 16 ( x12 )
	nop
	bgtu x7, x0, LBB0_666
LBB0_665:                               //  %if.end14.i1572
	jalr x0, LBB0_647 ( x0 )
LBB0_666:                               //  %if.end14.i1572
LBB0_41:                                //  %if.end14.i1572
	bgtu x1, x7, LBB0_668
LBB0_667:                               //  %if.end14.i1572
	jalr x0, LBB0_647 ( x0 )
LBB0_668:                               //  %if.end14.i1572
LBB0_42:                                //  %land.lhs.true24.i1583
	lhu x7, 0 ( x4 )
	nop
	beq x7, x8, LBB0_670
LBB0_669:                               //  %land.lhs.true24.i1583
	jalr x0, LBB0_647 ( x0 )
LBB0_670:                               //  %land.lhs.true24.i1583
LBB0_43:                                //  %if.then29.i1586
	sw x4, 0 ( x12 )
	sw x3, 4 ( x12 )
	jalr x0, LBB0_648 ( x0 )
LBB0_44:                                //  %if.end40
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 116 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 116 ( x2 )               //  4-byte Folded Spill
	add x5, x0, x9
LBB0_45:                                //  %for.cond.backedge
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x7, 0 ( x5 )
	nop
	slli x1, x7, 16
	srai x8, x1, 16
	bgtu x7, x0, LBB0_5
	jalr x0, LBB0_652 ( x0 )
LBB0_46:                                //  %sw.bb43
                                        //    in Loop: Header=BB0_25 Depth=2
	lw x7, 132 ( x2 )               //  4-byte Folded Reload
	nop
	lhu x1, 0 ( x7 )
	addi x3, x0, 108
	bne x1, x3, LBB0_48
LBB0_47:                                //    in Loop: Header=BB0_25 Depth=2
	addi x7, x7, 2
LBB0_48:                                //  %sw.bb43
                                        //    in Loop: Header=BB0_25 Depth=2
	addi x3, x0, 2
	addi x4, x0, 108
	lw x5, 128 ( x2 )               //  4-byte Folded Reload
	beq x1, x4, LBB0_50
LBB0_49:                                //  %sw.bb43
                                        //    in Loop: Header=BB0_25 Depth=2
	slti x3, x0, 1
LBB0_50:                                //  %sw.bb43
                                        //    in Loop: Header=BB0_25 Depth=2
	lw x1, 112 ( x2 )               //  4-byte Folded Reload
	nop
	or x1, x3, x1
	jalr x0, LBB0_25 ( x0 )
LBB0_51:                                //  %again.outer.backedge.loopexit3116
                                        //    in Loop: Header=BB0_26 Depth=3
	addi x1, x0, 16
LBB0_52:                                //  %again.outer
                                        //    in Loop: Header=BB0_26 Depth=3
	lw x3, 112 ( x2 )               //  4-byte Folded Reload
	nop
	or x3, x1, x3
	sw x3, 112 ( x2 )               //  4-byte Folded Spill
	lw x5, 128 ( x2 )               //  4-byte Folded Reload
	lw x7, 132 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_26 ( x0 )
LBB0_53:                                //  %again.outer.backedge.loopexit3344
                                        //    in Loop: Header=BB0_26 Depth=3
	addi x1, x0, 4
	jalr x0, LBB0_52 ( x0 )
LBB0_54:                                //  %again.outer.backedge.loopexit
                                        //    in Loop: Header=BB0_26 Depth=3
	addi x1, x0, 2
	jalr x0, LBB0_52 ( x0 )
LBB0_55:                                //  %sw.bb56
                                        //    in Loop: Header=BB0_27 Depth=4
	lw x10, 128 ( x2 )              //  4-byte Folded Reload
	addi x11, x0, 10
	call $__mulsi3
	add x1, x8, x10
	lw x7, 132 ( x2 )               //  4-byte Folded Reload
	nop
	addi x7, x7, 2
	addi x5, x1, -48
	jalr x0, LBB0_27 ( x0 )
LBB0_56:                                //  %sw.bb61
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, $_wcstoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_wcstoul_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
	lw x3, 112 ( x2 )               //  4-byte Folded Reload
	nop
	ori x3, x3, 512
LBB0_57:                                //  %sw.epilog
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x4, 132 ( x2 )               //  4-byte Folded Reload
	addi x1, x0, 3
	sw x1, 100 ( x2 )               //  4-byte Folded Spill
	addi x1, x0, 16
	add x8, x0, x1
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB0_88 ( x0 )
LBB0_58:                                //  %sw.bb64
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x4, 132 ( x2 )               //  4-byte Folded Reload
	addi x1, x0, 2
	jalr x0, LBB0_86 ( x0 )
LBB0_59:                                //  %sw.bb65
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x7, 132 ( x2 )               //  4-byte Folded Reload
	nop
	lhu x3, 0 ( x7 )
	addi x1, x0, 94
	bne x3, x1, LBB0_61
LBB0_60:                                //    in Loop: Header=BB0_5 Depth=1
	addi x1, x7, 2
	jalr x0, LBB0_62 ( x0 )
LBB0_61:                                //  %sw.bb65
                                        //    in Loop: Header=BB0_5 Depth=1
	add x1, x0, x7
LBB0_62:                                //  %sw.bb65
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x4, 0 ( x1 )
	addi x5, x0, 93
	bne x4, x5, LBB0_64
LBB0_63:                                //    in Loop: Header=BB0_5 Depth=1
	addi x1, x1, 2
LBB0_64:                                //  %sw.bb65
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x8, 104 ( x2 )               //  4-byte Folded Reload
	xori x3, x3, 94
	seqz x3, x3
	andi x3, x3, 1
	sw x3, 64 ( x2 )                //  4-byte Folded Spill
LBB0_65:                                //  %while.cond79
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x4, x1, 2
	lhu x3, 0 ( x1 )
	nop
	xori x1, x3, 93
	beqz x1, LBB0_67
LBB0_66:                                //  %while.cond79
                                        //    in Loop: Header=BB0_65 Depth=2
	add x1, x0, x4
	bgtu x3, x0, LBB0_65
LBB0_67:                                //  %while.end90
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x4, -2
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	lw x3, 112 ( x2 )               //  4-byte Folded Reload
	nop
	ori x3, x3, 64
	slti x1, x0, 1
	sw x1, 100 ( x2 )               //  4-byte Folded Spill
	sw x7, 88 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_88 ( x0 )
LBB0_68:                                //  %sw.bb93
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 112 ( x2 )               //  4-byte Folded Reload
	nop
	ori x3, x3, 64
	lw x4, 132 ( x2 )               //  4-byte Folded Reload
	add x1, x0, x0
	sw x1, 100 ( x2 )               //  4-byte Folded Spill
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x8, 104 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_88 ( x0 )
LBB0_69:                                //  %sw.bb95
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, $_wcstoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_wcstoul_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
	lw x3, 112 ( x2 )               //  4-byte Folded Reload
	nop
	ori x3, x3, 544
	jalr x0, LBB0_57 ( x0 )
LBB0_70:                                //  %sw.bb97
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 112 ( x2 )               //  4-byte Folded Reload
	nop
	andi x1, x3, 16
	beqz x1, LBB0_72
LBB0_71:                                //    in Loop: Header=BB0_5 Depth=1
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_45 ( x0 )
LBB0_72:                                //  %if.end101
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x3, 4
	lw x5, 116 ( x2 )               //  4-byte Folded Reload
	lw x7, 132 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB0_74
LBB0_73:                                //  %if.then104
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 848 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 848 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sh x5, 0 ( x1 )
	add x5, x0, x7
	jalr x0, LBB0_45 ( x0 )
LBB0_74:                                //  %if.else106
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x3, 1
	beqz x1, LBB0_77
LBB0_75:                                //  %if.then109
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 848 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 848 ( x2 )
	lw x1, 0 ( x1 )
	nop
LBB0_76:                                //  %for.cond.backedge
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x5, 0 ( x1 )
	add x5, x0, x7
	jalr x0, LBB0_45 ( x0 )
LBB0_77:                                //  %if.else111
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x3, 2
	beqz x1, LBB0_75
LBB0_78:                                //  %if.then114
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 848 ( x2 )
	srai x3, x5, 31
	addi x4, x1, 4
	sw x4, 848 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x3, 4 ( x1 )
	jalr x0, LBB0_76 ( x0 )
LBB0_79:                                //  %sw.epilog.loopexit
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, $_wcstol_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_wcstol_r >> 12 & 0xfffff
LBB0_80:                                //  %sw.epilog
                                        //    in Loop: Header=BB0_5 Depth=1
	or x1, x1, x28
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
	lw x4, 132 ( x2 )               //  4-byte Folded Reload
	addi x1, x0, 3
	sw x1, 100 ( x2 )               //  4-byte Folded Spill
	addi x1, x0, 10
LBB0_81:                                //  %sw.epilog
                                        //    in Loop: Header=BB0_5 Depth=1
	add x8, x0, x1
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB0_87 ( x0 )
LBB0_82:                                //  %sw.epilog.loopexit2897
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, $_wcstol_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_wcstol_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
	lw x4, 132 ( x2 )               //  4-byte Folded Reload
	addi x1, x0, 3
	sw x1, 100 ( x2 )               //  4-byte Folded Spill
	add x1, x0, x0
	jalr x0, LBB0_81 ( x0 )
LBB0_83:                                //  %sw.epilog.loopexit3117
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, $_wcstoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_wcstoul_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
	lw x4, 132 ( x2 )               //  4-byte Folded Reload
	addi x1, x0, 3
	sw x1, 100 ( x2 )               //  4-byte Folded Spill
	addi x1, x0, 8
	jalr x0, LBB0_81 ( x0 )
LBB0_84:                                //  %sw.epilog.loopexit3345
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, $_wcstoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_wcstoul_r >> 12 & 0xfffff
	jalr x0, LBB0_80 ( x0 )
LBB0_85:                                //  %sw.epilog.loopexit3564
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x4, 132 ( x2 )               //  4-byte Folded Reload
	addi x1, x0, 4
LBB0_86:                                //  %sw.epilog
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x1, 100 ( x2 )               //  4-byte Folded Spill
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x8, 104 ( x2 )               //  4-byte Folded Reload
LBB0_87:                                //  %sw.epilog
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 112 ( x2 )               //  4-byte Folded Reload
LBB0_88:                                //  %sw.epilog
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x4, 132 ( x2 )               //  4-byte Folded Spill
	andi x1, x3, 64
	sw x8, 104 ( x2 )               //  4-byte Folded Spill
	sw x3, 112 ( x2 )               //  4-byte Folded Spill
	beqz x1, LBB0_90
LBB0_89:                                //    in Loop: Header=BB0_5 Depth=1
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_108 ( x0 )
LBB0_90:                                //  %while.cond127
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 4 ( x12 )
	nop
	bgt x1, x0, LBB0_93
LBB0_91:                                //  %land.lhs.true.i1601
                                        //    in Loop: Header=BB0_90 Depth=2
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	lw x11, 124 ( x2 )              //  4-byte Folded Reload
	nop
	call $__ssrefill_r
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	beqz x10, LBB0_672
LBB0_671:                               //  %land.lhs.true.i1601
                                        //    in Loop: Header=BB0_90 Depth=2
	jalr x0, LBB0_648 ( x0 )
LBB0_672:                               //  %land.lhs.true.i1601
                                        //    in Loop: Header=BB0_90 Depth=2
LBB0_92:                                //  %land.lhs.true.if.end_crit_edge.i1603
                                        //    in Loop: Header=BB0_90 Depth=2
	lw x1, 4 ( x12 )
LBB0_93:                                //  %_sfgetwc_r.exit1610
                                        //    in Loop: Header=BB0_90 Depth=2
	lw x3, 0 ( x12 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lhu x8, 0 ( x3 )
	addi x3, x3, 2
	addi x1, x1, -2
	lui x4, 65535 >> 12 & 0xfffff
	or x4, x4, x28
	sw x3, 0 ( x12 )
	sw x1, 4 ( x12 )
	bne x8, x4, LBB0_674
LBB0_673:                               //  %_sfgetwc_r.exit1610
                                        //    in Loop: Header=BB0_90 Depth=2
	jalr x0, LBB0_648 ( x0 )
LBB0_674:                               //  %_sfgetwc_r.exit1610
                                        //    in Loop: Header=BB0_90 Depth=2
LBB0_94:                                //  %land.rhs131
                                        //    in Loop: Header=BB0_90 Depth=2
	slli x1, x8, 16
	srai x10, x1, 16
	call $iswspace
	beqz x10, LBB0_96
LBB0_95:                                //  %while.body135
                                        //    in Loop: Header=BB0_90 Depth=2
	lw x1, 116 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 116 ( x2 )               //  4-byte Folded Spill
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB0_90 ( x0 )
LBB0_96:                                //  %if.end.i1615
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, 65503 & 0xfff
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	nop
	lhu x1, 12 ( x12 )
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x12 )
	lw x1, 48 ( x12 )
	nop
	beqz x1, LBB0_101
LBB0_97:                                //  %if.then4.i1619
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 52 ( x12 )
	lw x3, 4 ( x12 )
	nop
	bgt x1, x3, LBB0_100
LBB0_98:                                //  %land.lhs.true.i1622
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	lw x11, 124 ( x2 )              //  4-byte Folded Reload
	nop
	call $__submore
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	beqz x10, LBB0_100
LBB0_99:                                //    in Loop: Header=BB0_5 Depth=1
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_108 ( x0 )
LBB0_100:                               //  %if.end9.i1627
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
	nop
	addi x3, x1, -2
	sw x3, 0 ( x12 )
	sb x8, -2 ( x1 )
	lw x1, 4 ( x12 )
	nop
	addi x1, x1, 2
	sw x1, 4 ( x12 )
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_108 ( x0 )
LBB0_101:                               //  %if.end14.i1630
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 16 ( x12 )
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	bgtu x3, x0, LBB0_104
LBB0_102:                               //  %if.end14.if.end34_crit_edge.i1634
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
LBB0_103:                               //  %if.end34.i1653
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 4 ( x12 )
	nop
	sw x3, 60 ( x12 )
	sw x1, 56 ( x12 )
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x12 )
	addi x1, x0, 3
	sw x1, 52 ( x12 )
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x12 )
	sh x8, 65 ( x12 )
	addi x1, x0, 2
	jalr x0, LBB0_107 ( x0 )
LBB0_104:                               //  %land.lhs.true18.i1637
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
	nop
	bgeu x3, x1, LBB0_103
LBB0_105:                               //  %land.lhs.true24.i1641
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x3, -2 ( x1 )
	nop
	bne x3, x8, LBB0_103
LBB0_106:                               //  %if.then29.i1644
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x1, -2
	sw x1, 0 ( x12 )
	lw x1, 4 ( x12 )
	nop
	addi x1, x1, 2
LBB0_107:                               //  %if.end143
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x1, 4 ( x12 )
LBB0_108:                               //  %if.end143
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x10, x4, 7
	addi x11, x0, 4
	bgeu x11, x10, LBB0_110
LBB0_109:                               //    in Loop: Header=BB0_5 Depth=1
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_45 ( x0 )
LBB0_110:                               //  %if.end143
                                        //    in Loop: Header=BB0_5 Depth=1
	call $__mulsi3
	ori x28, x0, JTI0_1 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI0_1 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB0_111:                               //  %sw.bb144
                                        //    in Loop: Header=BB0_5 Depth=1
	slti x1, x0, 1
	add x7, x0, x1
	add x1, x0, x0
	lw x3, 128 ( x2 )               //  4-byte Folded Reload
	nop
	beq x3, x1, LBB0_113
LBB0_112:                               //  %sw.bb144
                                        //    in Loop: Header=BB0_5 Depth=1
	add x7, x0, x3
LBB0_113:                               //  %sw.bb144
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 112 ( x2 )               //  4-byte Folded Reload
	nop
	andi x3, x1, 16
	andi x1, x1, 1
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	sw x7, 128 ( x2 )               //  4-byte Folded Spill
	sw x3, 96 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB0_130
LBB0_114:                               //  %if.then151
                                        //    in Loop: Header=BB0_5 Depth=1
	bgtu x3, x0, LBB0_120
LBB0_115:                               //  %land.rhs160.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 848 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 848 ( x2 )
	lw x9, 0 ( x1 )
	lw x1, 4 ( x12 )
	add x8, x0, x0
LBB0_116:                               //  %land.rhs160
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	bgt x1, x0, LBB0_127
LBB0_117:                               //  %land.lhs.true.i1659
                                        //    in Loop: Header=BB0_116 Depth=2
	sw x9, 112 ( x2 )               //  4-byte Folded Spill
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x12
	call $__ssrefill_r
	beqz x10, LBB0_126
LBB0_118:                               //    in Loop: Header=BB0_5 Depth=1
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
LBB0_119:                               //  %while.end173
                                        //    in Loop: Header=BB0_5 Depth=1
	bgtu x8, x0, LBB0_129
	jalr x0, LBB0_648 ( x0 )
LBB0_120:                               //  %land.rhs160.us.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 4 ( x12 )
	add x8, x0, x0
LBB0_121:                               //  %land.rhs160.us
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	bgt x1, x0, LBB0_124
LBB0_122:                               //  %land.lhs.true.i1659.us
                                        //    in Loop: Header=BB0_121 Depth=2
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x12
	call $__ssrefill_r
	bgtu x10, x0, LBB0_118
LBB0_123:                               //  %land.lhs.true.if.end_crit_edge.i1661.us
                                        //    in Loop: Header=BB0_121 Depth=2
	lw x3, 124 ( x2 )               //  4-byte Folded Reload
	nop
	lw x1, 4 ( x3 )
	add x12, x0, x3
	lw x7, 128 ( x2 )               //  4-byte Folded Reload
LBB0_124:                               //  %_sfgetwc_r.exit1668.us
                                        //    in Loop: Header=BB0_121 Depth=2
	lw x3, 0 ( x12 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lhu x4, 0 ( x3 )
	addi x3, x3, 2
	addi x1, x1, -2
	lui x5, 65535 >> 12 & 0xfffff
	or x5, x5, x28
	sw x3, 0 ( x12 )
	sw x1, 4 ( x12 )
	beq x4, x5, LBB0_119
LBB0_125:                               //  %if.end171.us
                                        //    in Loop: Header=BB0_121 Depth=2
	addi x8, x8, 1
	bne x7, x8, LBB0_121
	jalr x0, LBB0_129 ( x0 )
LBB0_126:                               //  %land.lhs.true.if.end_crit_edge.i1661
                                        //    in Loop: Header=BB0_116 Depth=2
	lw x3, 124 ( x2 )               //  4-byte Folded Reload
	nop
	lw x1, 4 ( x3 )
	add x12, x0, x3
	lw x7, 128 ( x2 )               //  4-byte Folded Reload
	lw x9, 112 ( x2 )               //  4-byte Folded Reload
LBB0_127:                               //  %_sfgetwc_r.exit1668
                                        //    in Loop: Header=BB0_116 Depth=2
	lw x4, 0 ( x12 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lhu x3, 0 ( x4 )
	addi x4, x4, 2
	addi x1, x1, -2
	lui x5, 65535 >> 12 & 0xfffff
	or x5, x5, x28
	sw x4, 0 ( x12 )
	sw x1, 4 ( x12 )
	beq x3, x5, LBB0_119
LBB0_128:                               //  %if.then168
                                        //    in Loop: Header=BB0_116 Depth=2
	addi x8, x8, 1
	sh x3, 0 ( x9 )
	addi x9, x9, 2
	bne x7, x8, LBB0_116
LBB0_129:                               //  %if.end177
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	seqz x1, x1
	andi x1, x1, 1
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	nop
	add x3, x3, x1
	sw x3, 108 ( x2 )               //  4-byte Folded Spill
	lw x1, 116 ( x2 )               //  4-byte Folded Reload
	nop
	add x1, x1, x8
	jalr x0, LBB0_645 ( x0 )
LBB0_130:                               //  %if.else184
                                        //    in Loop: Header=BB0_5 Depth=1
	bgtu x3, x0, LBB0_135
LBB0_131:                               //  %land.rhs194.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 848 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 848 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	addi x10, x2, 840
	add x8, x0, x0
	add x11, x0, x8
	addi x12, x0, 8
	call $memset
	sw x8, 112 ( x2 )               //  4-byte Folded Spill
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x5, 128 ( x2 )               //  4-byte Folded Reload
LBB0_132:                               //  %land.rhs194
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 4 ( x12 )
	sw x5, 128 ( x2 )               //  4-byte Folded Spill
	bgt x1, x0, LBB0_145
LBB0_133:                               //  %land.lhs.true.i1673
                                        //    in Loop: Header=BB0_132 Depth=2
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x12
	add x11, x0, x8
	call $__ssrefill_r
	beqz x10, LBB0_144
LBB0_134:                               //    in Loop: Header=BB0_5 Depth=1
	add x12, x0, x8
	jalr x0, LBB0_158 ( x0 )
LBB0_135:                               //  %land.rhs194.us.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x10, x2, 840
	add x8, x0, x0
	add x11, x0, x8
	addi x12, x0, 8
	call $memset
	sw x8, 112 ( x2 )               //  4-byte Folded Spill
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lui x4, 65535 >> 12 & 0xfffff
	lw x5, 128 ( x2 )               //  4-byte Folded Reload
LBB0_136:                               //  %land.rhs194.us
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 4 ( x12 )
	sw x5, 128 ( x2 )               //  4-byte Folded Spill
	bgt x1, x0, LBB0_140
LBB0_137:                               //  %land.lhs.true.i1673.us
                                        //    in Loop: Header=BB0_136 Depth=2
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x12
	add x11, x0, x8
	call $__ssrefill_r
	beqz x10, LBB0_139
LBB0_138:                               //    in Loop: Header=BB0_5 Depth=1
	add x12, x0, x8
	jalr x0, LBB0_158 ( x0 )
LBB0_139:                               //  %land.lhs.true.if.end_crit_edge.i1675.us
                                        //    in Loop: Header=BB0_136 Depth=2
	lw x1, 4 ( x8 )
	add x12, x0, x8
	lui x4, 65535 >> 12 & 0xfffff
LBB0_140:                               //  %_sfgetwc_r.exit1682.us
                                        //    in Loop: Header=BB0_136 Depth=2
	lw x3, 0 ( x12 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lhu x8, 0 ( x3 )
	addi x3, x3, 2
	addi x1, x1, -2
	or x4, x4, x28
	sw x3, 0 ( x12 )
	sw x1, 4 ( x12 )
	beq x8, x4, LBB0_158
LBB0_141:                               //  %while.body199.us
                                        //    in Loop: Header=BB0_136 Depth=2
	call $__locale_mb_cur_max
	sw x8, 100 ( x2 )               //  4-byte Folded Spill
	slli x1, x8, 16
	srai x12, x1, 16
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	addi x11, x2, 139
	addi x13, x2, 840
	call $_wcrtomb_r
	lw x5, 128 ( x2 )               //  4-byte Folded Reload
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	xori x1, x10, -1
	bgtu x1, x0, LBB0_676
LBB0_675:                               //  %while.body199.us
                                        //    in Loop: Header=BB0_136 Depth=2
	jalr x0, LBB0_648 ( x0 )
LBB0_676:                               //  %while.body199.us
                                        //    in Loop: Header=BB0_136 Depth=2
LBB0_142:                               //  %if.end218.us
                                        //    in Loop: Header=BB0_136 Depth=2
	bgtu x10, x5, LBB0_150
LBB0_143:                               //  %if.end230.us
                                        //    in Loop: Header=BB0_136 Depth=2
	sub x5, x5, x10
	lw x1, 112 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 112 ( x2 )               //  4-byte Folded Spill
	lui x4, 65535 >> 12 & 0xfffff
	bgtu x5, x0, LBB0_136
	jalr x0, LBB0_165 ( x0 )
LBB0_144:                               //  %land.lhs.true.if.end_crit_edge.i1675
                                        //    in Loop: Header=BB0_132 Depth=2
	lw x1, 4 ( x8 )
	add x12, x0, x8
	lw x5, 128 ( x2 )               //  4-byte Folded Reload
LBB0_145:                               //  %_sfgetwc_r.exit1682
                                        //    in Loop: Header=BB0_132 Depth=2
	lw x3, 0 ( x12 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lhu x7, 0 ( x3 )
	addi x3, x3, 2
	addi x1, x1, -2
	lui x4, 65535 >> 12 & 0xfffff
	or x4, x4, x28
	sw x3, 0 ( x12 )
	sw x1, 4 ( x12 )
	beq x7, x4, LBB0_158
LBB0_146:                               //  %while.body199
                                        //    in Loop: Header=BB0_132 Depth=2
	sw x7, 100 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x5
	call $__locale_mb_cur_max
	bgtu x10, x8, LBB0_148
LBB0_147:                               //  %if.then205
                                        //    in Loop: Header=BB0_132 Depth=2
	lw x1, 100 ( x2 )               //  4-byte Folded Reload
	nop
	slli x1, x1, 16
	srai x12, x1, 16
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
	addi x13, x2, 840
	call $_wcrtomb_r
	add x8, x0, x10
	xori x1, x8, -1
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x5, 128 ( x2 )               //  4-byte Folded Reload
	bgtu x1, x0, LBB0_164
	jalr x0, LBB0_648 ( x0 )
LBB0_148:                               //  %if.else212
                                        //    in Loop: Header=BB0_132 Depth=2
	lw x1, 100 ( x2 )               //  4-byte Folded Reload
	nop
	slli x1, x1, 16
	srai x12, x1, 16
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	addi x11, x2, 139
	addi x13, x2, 840
	call $_wcrtomb_r
	add x8, x0, x10
	xori x1, x8, -1
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x3, 128 ( x2 )               //  4-byte Folded Reload
	bgtu x1, x0, LBB0_678
LBB0_677:                               //  %if.else212
                                        //    in Loop: Header=BB0_132 Depth=2
	jalr x0, LBB0_648 ( x0 )
LBB0_678:                               //  %if.else212
                                        //    in Loop: Header=BB0_132 Depth=2
LBB0_149:                               //  %if.end218
                                        //    in Loop: Header=BB0_132 Depth=2
	bgeu x3, x8, LBB0_163
LBB0_150:                               //  %if.end.i1687
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, 65503 & 0xfff
	lhu x1, 12 ( x12 )
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x12 )
	lw x1, 48 ( x12 )
	nop
	beqz x1, LBB0_154
LBB0_151:                               //  %if.then4.i1691
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 52 ( x12 )
	lw x3, 4 ( x12 )
	nop
	bgt x1, x3, LBB0_153
LBB0_152:                               //  %land.lhs.true.i1694
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	lw x11, 124 ( x2 )              //  4-byte Folded Reload
	nop
	call $__submore
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	bgtu x10, x0, LBB0_158
LBB0_153:                               //  %if.end9.i1699
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
	nop
	addi x3, x1, -2
	sw x3, 0 ( x12 )
	lw x3, 100 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, -2 ( x1 )
	jalr x0, LBB0_162 ( x0 )
LBB0_154:                               //  %if.end14.i1702
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 16 ( x12 )
	nop
	bgtu x3, x0, LBB0_159
LBB0_155:                               //  %if.end14.if.end34_crit_edge.i1706
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
LBB0_156:                               //  %if.end34.i1725
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 4 ( x12 )
	nop
	sw x3, 60 ( x12 )
	sw x1, 56 ( x12 )
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x12 )
	addi x1, x0, 3
	sw x1, 52 ( x12 )
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x12 )
	sh x4, 65 ( x12 )
	addi x1, x0, 2
LBB0_157:                               //  %while.end237
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x1, 4 ( x12 )
LBB0_158:                               //  %while.end237
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 112 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_165
	jalr x0, LBB0_648 ( x0 )
LBB0_159:                               //  %land.lhs.true18.i1709
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	bgeu x3, x1, LBB0_156
LBB0_160:                               //  %land.lhs.true24.i1713
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x3, -2 ( x1 )
	nop
	bne x3, x4, LBB0_156
LBB0_161:                               //  %if.then29.i1716
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x1, -2
	sw x1, 0 ( x12 )
LBB0_162:                               //  %while.end237
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 4 ( x12 )
	nop
	addi x1, x1, 2
	jalr x0, LBB0_157 ( x0 )
LBB0_163:                               //  %if.then226
                                        //    in Loop: Header=BB0_132 Depth=2
	lw x10, 92 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 139
	add x12, x0, x8
	call $memcpy
	lw x5, 128 ( x2 )               //  4-byte Folded Reload
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
LBB0_164:                               //  %if.end230
                                        //    in Loop: Header=BB0_132 Depth=2
	sub x5, x5, x8
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x8, x1
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	lw x1, 112 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 112 ( x2 )               //  4-byte Folded Spill
	bgtu x5, x0, LBB0_132
LBB0_165:                               //  %if.end241
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	seqz x1, x1
	andi x1, x1, 1
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	nop
	add x3, x3, x1
	sw x3, 108 ( x2 )               //  4-byte Folded Spill
	lw x1, 116 ( x2 )               //  4-byte Folded Reload
	lw x3, 112 ( x2 )               //  4-byte Folded Reload
	nop
	add x1, x1, x3
	jalr x0, LBB0_645 ( x0 )
LBB0_166:                               //  %sw.bb249
                                        //    in Loop: Header=BB0_5 Depth=1
	not x1, x0
	sw x1, 100 ( x2 )               //  4-byte Folded Spill
	lui x8, 65535 >> 12 & 0xfffff
	add x1, x0, x0
	lw x3, 128 ( x2 )               //  4-byte Folded Reload
	nop
	beq x3, x1, LBB0_168
LBB0_167:                               //  %sw.bb249
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x3, 100 ( x2 )               //  4-byte Folded Spill
LBB0_168:                               //  %sw.bb249
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 112 ( x2 )               //  4-byte Folded Reload
	nop
	andi x4, x1, 16
	andi x1, x1, 1
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB0_202
LBB0_169:                               //  %sw.bb249
                                        //    in Loop: Header=BB0_5 Depth=1
	seqz x3, x4
	bgtu x3, x0, LBB0_202
LBB0_170:                               //  %while.cond260.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	srai x1, x1, 1
	sw x1, 112 ( x2 )               //  4-byte Folded Spill
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_185
LBB0_171:                               //  %while.cond260.us.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	add x1, x0, x0
	add x4, x0, x1
LBB0_172:                               //  %while.cond260.us
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 4 ( x12 )
	nop
	bgt x1, x0, LBB0_176
LBB0_173:                               //  %land.lhs.true.i1731.us
                                        //    in Loop: Header=BB0_172 Depth=2
	sw x4, 128 ( x2 )               //  4-byte Folded Spill
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x12
	add x11, x0, x8
	call $__ssrefill_r
	beqz x10, LBB0_175
LBB0_174:                               //    in Loop: Header=BB0_5 Depth=1
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	lw x4, 128 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x4, x0, LBB0_289
	jalr x0, LBB0_652 ( x0 )
LBB0_175:                               //  %land.lhs.true.if.end_crit_edge.i1733.us
                                        //    in Loop: Header=BB0_172 Depth=2
	lw x1, 4 ( x8 )
	add x12, x0, x8
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	lw x4, 128 ( x2 )               //  4-byte Folded Reload
LBB0_176:                               //  %_sfgetwc_r.exit1740.us
                                        //    in Loop: Header=BB0_172 Depth=2
	lw x3, 0 ( x12 )
	nop
	lhu x7, 0 ( x3 )
	addi x3, x3, 2
	sw x3, 0 ( x12 )
	addi x1, x1, -2
	sw x1, 4 ( x12 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	beq x7, x1, LBB0_201
LBB0_177:                               //  %land.lhs.true264.us
                                        //    in Loop: Header=BB0_172 Depth=2
	lw x1, 100 ( x2 )               //  4-byte Folded Reload
	nop
	beq x1, x4, LBB0_180
LBB0_178:                               //  %land.rhs268.us
                                        //    in Loop: Header=BB0_172 Depth=2
	add x8, x0, x4
	slli x1, x7, 16
	srai x11, x1, 16
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x12, 112 ( x2 )              //  4-byte Folded Reload
	sw x7, 128 ( x2 )               //  4-byte Folded Spill
	call $wmemchr
	beqz x10, LBB0_184
LBB0_179:                               //    in Loop: Header=BB0_5 Depth=1
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	add x4, x0, x8
	lw x7, 128 ( x2 )               //  4-byte Folded Reload
LBB0_180:                               //  %if.end.i1745
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x1, 12 ( x12 )
	ori x28, x0, 65503 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x12 )
	lw x1, 48 ( x12 )
	nop
	beqz x1, LBB0_194
LBB0_181:                               //  %if.then4.i1749
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 52 ( x12 )
	lw x3, 4 ( x12 )
	nop
	bgt x1, x3, LBB0_193
LBB0_182:                               //  %land.lhs.true.i1752
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	lw x11, 124 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x4
	sw x7, 128 ( x2 )               //  4-byte Folded Spill
	call $__submore
	lw x7, 128 ( x2 )               //  4-byte Folded Reload
	add x4, x0, x8
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	beqz x10, LBB0_193
LBB0_183:                               //    in Loop: Header=BB0_5 Depth=1
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	bgtu x4, x0, LBB0_289
	jalr x0, LBB0_652 ( x0 )
LBB0_184:                               //  %while.body284.us
                                        //    in Loop: Header=BB0_172 Depth=2
	add x4, x0, x8
	addi x4, x4, 1
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_172 ( x0 )
LBB0_185:                               //  %while.cond260.preheader3578
                                        //    in Loop: Header=BB0_5 Depth=1
	add x1, x0, x0
	add x4, x0, x1
LBB0_186:                               //  %while.cond260
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 4 ( x12 )
	nop
	bgt x1, x0, LBB0_189
LBB0_187:                               //  %land.lhs.true.i1731
                                        //    in Loop: Header=BB0_186 Depth=2
	sw x4, 128 ( x2 )               //  4-byte Folded Spill
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x12
	add x11, x0, x8
	call $__ssrefill_r
	bgtu x10, x0, LBB0_174
LBB0_188:                               //  %land.lhs.true.if.end_crit_edge.i1733
                                        //    in Loop: Header=BB0_186 Depth=2
	lw x1, 4 ( x8 )
	add x12, x0, x8
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	lw x4, 128 ( x2 )               //  4-byte Folded Reload
LBB0_189:                               //  %_sfgetwc_r.exit1740
                                        //    in Loop: Header=BB0_186 Depth=2
	lw x3, 0 ( x12 )
	nop
	lhu x7, 0 ( x3 )
	addi x3, x3, 2
	sw x3, 0 ( x12 )
	addi x1, x1, -2
	sw x1, 4 ( x12 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	beq x7, x1, LBB0_201
LBB0_190:                               //  %land.lhs.true264
                                        //    in Loop: Header=BB0_186 Depth=2
	lw x1, 100 ( x2 )               //  4-byte Folded Reload
	nop
	beq x1, x4, LBB0_180
LBB0_191:                               //  %land.rhs268
                                        //    in Loop: Header=BB0_186 Depth=2
	add x8, x0, x4
	slli x1, x7, 16
	srai x11, x1, 16
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x12, 112 ( x2 )              //  4-byte Folded Reload
	sw x7, 128 ( x2 )               //  4-byte Folded Spill
	call $wmemchr
	beqz x10, LBB0_179
LBB0_192:                               //  %while.body284
                                        //    in Loop: Header=BB0_186 Depth=2
	add x4, x0, x8
	addi x4, x4, 1
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_186 ( x0 )
LBB0_193:                               //  %if.end9.i1757
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
	nop
	addi x3, x1, -2
	sw x3, 0 ( x12 )
	sb x7, -2 ( x1 )
	lw x1, 4 ( x12 )
	nop
	addi x1, x1, 2
	sw x1, 4 ( x12 )
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	bgtu x4, x0, LBB0_289
	jalr x0, LBB0_652 ( x0 )
LBB0_194:                               //  %if.end14.i1760
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 16 ( x12 )
	nop
	bgtu x3, x0, LBB0_197
LBB0_195:                               //  %if.end14.if.end34_crit_edge.i1764
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
LBB0_196:                               //  %if.end34.i1783
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 4 ( x12 )
	nop
	sw x3, 60 ( x12 )
	sw x1, 56 ( x12 )
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x12 )
	addi x1, x0, 3
	sw x1, 52 ( x12 )
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x12 )
	sh x7, 65 ( x12 )
	addi x1, x0, 2
	jalr x0, LBB0_200 ( x0 )
LBB0_197:                               //  %land.lhs.true18.i1767
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
	nop
	bgeu x3, x1, LBB0_196
LBB0_198:                               //  %land.lhs.true24.i1771
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x3, -2 ( x1 )
	nop
	bne x3, x7, LBB0_196
LBB0_199:                               //  %if.then29.i1774
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x1, -2
	sw x1, 0 ( x12 )
	lw x1, 4 ( x12 )
	nop
	addi x1, x1, 2
LBB0_200:                               //  %if.end291
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x1, 4 ( x12 )
LBB0_201:                               //  %if.end291
                                        //    in Loop: Header=BB0_5 Depth=1
	bgtu x4, x0, LBB0_289
	jalr x0, LBB0_652 ( x0 )
LBB0_202:                               //  %if.else296
                                        //    in Loop: Header=BB0_5 Depth=1
	beqz x1, LBB0_233
LBB0_203:                               //  %if.then299
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 848 ( x2 )
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	lw x4, 88 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x3, x4
	srai x3, x3, 1
	sw x3, 112 ( x2 )               //  4-byte Folded Spill
	addi x3, x1, 4
	sw x3, 848 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	sw x1, 128 ( x2 )               //  4-byte Folded Spill
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_217
LBB0_204:                               //  %while.cond301.us
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 4 ( x12 )
	nop
	bgt x1, x0, LBB0_208
LBB0_205:                               //  %land.lhs.true.i1789.us
                                        //    in Loop: Header=BB0_204 Depth=2
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x12
	add x11, x0, x8
	call $__ssrefill_r
	beqz x10, LBB0_207
LBB0_206:                               //    in Loop: Header=BB0_5 Depth=1
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_231 ( x0 )
LBB0_207:                               //  %land.lhs.true.if.end_crit_edge.i1791.us
                                        //    in Loop: Header=BB0_204 Depth=2
	lw x1, 4 ( x8 )
	add x12, x0, x8
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
LBB0_208:                               //  %_sfgetwc_r.exit1798.us
                                        //    in Loop: Header=BB0_204 Depth=2
	lw x3, 0 ( x12 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lhu x8, 0 ( x3 )
	addi x3, x3, 2
	addi x1, x1, -2
	lui x4, 65535 >> 12 & 0xfffff
	or x4, x4, x28
	sw x3, 0 ( x12 )
	sw x1, 4 ( x12 )
	beq x8, x4, LBB0_231
LBB0_209:                               //  %land.lhs.true305.us
                                        //    in Loop: Header=BB0_204 Depth=2
	lw x1, 100 ( x2 )               //  4-byte Folded Reload
	nop
	beqz x1, LBB0_212
LBB0_210:                               //  %land.end332.us
                                        //    in Loop: Header=BB0_204 Depth=2
	slli x1, x8, 16
	srai x11, x1, 16
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x12, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $wmemchr
	beqz x10, LBB0_216
LBB0_211:                               //    in Loop: Header=BB0_5 Depth=1
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
LBB0_212:                               //  %if.end.i1803
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, 65503 & 0xfff
	lhu x1, 12 ( x12 )
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x12 )
	lw x1, 48 ( x12 )
	nop
	beqz x1, LBB0_224
LBB0_213:                               //  %if.then4.i1807
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 52 ( x12 )
	lw x3, 4 ( x12 )
	nop
	bgt x1, x3, LBB0_215
LBB0_214:                               //  %land.lhs.true.i1810
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	lw x11, 124 ( x2 )              //  4-byte Folded Reload
	nop
	call $__submore
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	bgtu x10, x0, LBB0_206
LBB0_215:                               //  %if.end9.i1815
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
	nop
	addi x3, x1, -2
	sw x3, 0 ( x12 )
	sb x8, -2 ( x1 )
	lw x1, 4 ( x12 )
	nop
	addi x1, x1, 2
	sw x1, 4 ( x12 )
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_231 ( x0 )
LBB0_216:                               //  %while.body333.us
                                        //    in Loop: Header=BB0_204 Depth=2
	lw x1, 100 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	sw x1, 100 ( x2 )               //  4-byte Folded Spill
	lw x1, 128 ( x2 )               //  4-byte Folded Reload
	nop
	sh x8, 0 ( x1 )
	addi x1, x1, 2
	sw x1, 128 ( x2 )               //  4-byte Folded Spill
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_204 ( x0 )
LBB0_217:                               //  %while.cond301
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 4 ( x12 )
	nop
	bgt x1, x0, LBB0_220
LBB0_218:                               //  %land.lhs.true.i1789
                                        //    in Loop: Header=BB0_217 Depth=2
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x12
	add x11, x0, x8
	call $__ssrefill_r
	bgtu x10, x0, LBB0_206
LBB0_219:                               //  %land.lhs.true.if.end_crit_edge.i1791
                                        //    in Loop: Header=BB0_217 Depth=2
	lw x1, 4 ( x8 )
	add x12, x0, x8
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
LBB0_220:                               //  %_sfgetwc_r.exit1798
                                        //    in Loop: Header=BB0_217 Depth=2
	lw x3, 0 ( x12 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lhu x8, 0 ( x3 )
	addi x3, x3, 2
	addi x1, x1, -2
	lui x4, 65535 >> 12 & 0xfffff
	or x4, x4, x28
	sw x3, 0 ( x12 )
	sw x1, 4 ( x12 )
	beq x8, x4, LBB0_231
LBB0_221:                               //  %land.lhs.true305
                                        //    in Loop: Header=BB0_217 Depth=2
	lw x1, 100 ( x2 )               //  4-byte Folded Reload
	nop
	beqz x1, LBB0_212
LBB0_222:                               //  %land.end332
                                        //    in Loop: Header=BB0_217 Depth=2
	slli x1, x8, 16
	srai x11, x1, 16
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x12, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $wmemchr
	beqz x10, LBB0_211
LBB0_223:                               //  %while.body333
                                        //    in Loop: Header=BB0_217 Depth=2
	lw x1, 100 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	sw x1, 100 ( x2 )               //  4-byte Folded Spill
	lw x1, 128 ( x2 )               //  4-byte Folded Reload
	nop
	sh x8, 0 ( x1 )
	addi x1, x1, 2
	sw x1, 128 ( x2 )               //  4-byte Folded Spill
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_217 ( x0 )
LBB0_224:                               //  %if.end14.i1818
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 16 ( x12 )
	nop
	bgtu x3, x0, LBB0_227
LBB0_225:                               //  %if.end14.if.end34_crit_edge.i1822
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
LBB0_226:                               //  %if.end34.i1841
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 4 ( x12 )
	nop
	sw x3, 60 ( x12 )
	sw x1, 56 ( x12 )
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x12 )
	addi x1, x0, 3
	sw x1, 52 ( x12 )
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x12 )
	sh x8, 65 ( x12 )
	addi x1, x0, 2
	jalr x0, LBB0_230 ( x0 )
LBB0_227:                               //  %land.lhs.true18.i1825
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
	nop
	bgeu x3, x1, LBB0_226
LBB0_228:                               //  %land.lhs.true24.i1829
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x3, -2 ( x1 )
	nop
	bne x3, x8, LBB0_226
LBB0_229:                               //  %if.then29.i1832
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x1, -2
	sw x1, 0 ( x12 )
	lw x1, 4 ( x12 )
	nop
	addi x1, x1, 2
LBB0_230:                               //  %if.end341
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x1, 4 ( x12 )
LBB0_231:                               //  %if.end341
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 128 ( x2 )               //  4-byte Folded Reload
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x3, x1
	srai x4, x1, 1
	bgtu x4, x0, LBB0_680
LBB0_679:                               //  %if.end341
                                        //    in Loop: Header=BB0_5 Depth=1
	jalr x0, LBB0_652 ( x0 )
LBB0_680:                               //  %if.end341
                                        //    in Loop: Header=BB0_5 Depth=1
LBB0_232:                               //  %if.end349
                                        //    in Loop: Header=BB0_5 Depth=1
	sh x0, 0 ( x3 )
	jalr x0, LBB0_288 ( x0 )
LBB0_233:                               //  %if.else351
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x4, 112 ( x2 )               //  4-byte Folded Spill
	bgtu x4, x0, LBB0_235
LBB0_234:                               //  %if.then354
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 848 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 848 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
LBB0_235:                               //  %if.end356
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x10, x2, 840
	add x1, x0, x0
	add x11, x0, x1
	addi x12, x0, 8
	call $memset
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	srai x1, x1, 1
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	sw x1, 128 ( x2 )               //  4-byte Folded Spill
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB0_261
LBB0_236:                               //  %while.cond358.us
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 4 ( x12 )
	nop
	bgt x1, x0, LBB0_240
LBB0_237:                               //  %land.lhs.true.i1847.us
                                        //    in Loop: Header=BB0_236 Depth=2
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x12
	add x11, x0, x8
	call $__ssrefill_r
	beqz x10, LBB0_239
LBB0_238:                               //    in Loop: Header=BB0_5 Depth=1
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	lw x4, 128 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_286 ( x0 )
LBB0_239:                               //  %land.lhs.true.if.end_crit_edge.i1849.us
                                        //    in Loop: Header=BB0_236 Depth=2
	lw x1, 4 ( x8 )
	add x12, x0, x8
	lui x8, 65535 >> 12 & 0xfffff
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
LBB0_240:                               //  %_sfgetwc_r.exit1856.us
                                        //    in Loop: Header=BB0_236 Depth=2
	lw x3, 0 ( x12 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lhu x7, 0 ( x3 )
	addi x3, x3, 2
	addi x1, x1, -2
	or x4, x8, x28
	sw x3, 0 ( x12 )
	sw x1, 4 ( x12 )
	bne x7, x4, LBB0_242
LBB0_241:                               //    in Loop: Header=BB0_5 Depth=1
	lw x4, 128 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_286 ( x0 )
LBB0_242:                               //  %land.lhs.true362.us
                                        //    in Loop: Header=BB0_236 Depth=2
	lw x1, 100 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_248
LBB0_243:                               //    in Loop: Header=BB0_5 Depth=1
	lw x4, 128 ( x2 )               //  4-byte Folded Reload
LBB0_244:                               //  %if.end.i1861
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, 65503 & 0xfff
	lhu x1, 12 ( x12 )
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x12 )
	lw x1, 48 ( x12 )
	nop
	beqz x1, LBB0_279
LBB0_245:                               //  %if.then4.i1865
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 52 ( x12 )
	lw x3, 4 ( x12 )
	nop
	bgt x1, x3, LBB0_278
LBB0_246:                               //  %land.lhs.true.i1868
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	lw x11, 124 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x4
	sw x7, 76 ( x2 )                //  4-byte Folded Spill
	call $__submore
	lw x7, 76 ( x2 )                //  4-byte Folded Reload
	add x4, x0, x8
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	beqz x10, LBB0_278
LBB0_247:                               //    in Loop: Header=BB0_5 Depth=1
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_286 ( x0 )
LBB0_248:                               //  %land.rhs366.us
                                        //    in Loop: Header=BB0_236 Depth=2
	sw x7, 76 ( x2 )                //  4-byte Folded Spill
	slli x1, x7, 16
	srai x8, x1, 16
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	lw x12, 96 ( x2 )               //  4-byte Folded Reload
	nop
	call $wmemchr
	beqz x10, LBB0_250
LBB0_249:                               //    in Loop: Header=BB0_5 Depth=1
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	lw x4, 128 ( x2 )               //  4-byte Folded Reload
	lw x7, 76 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_244 ( x0 )
LBB0_250:                               //  %while.body390.us
                                        //    in Loop: Header=BB0_236 Depth=2
	lw x1, 100 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	sw x1, 100 ( x2 )               //  4-byte Folded Spill
	call $__locale_mb_cur_max
	lw x1, 112 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_253
LBB0_251:                               //  %while.body390.us
                                        //    in Loop: Header=BB0_236 Depth=2
	lw x1, 100 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x10, x1, LBB0_253
LBB0_252:                               //  %if.then397.us
                                        //    in Loop: Header=BB0_236 Depth=2
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	addi x13, x2, 840
	call $_wcrtomb_r
	add x8, x0, x10
	xori x1, x8, -1
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x4, 128 ( x2 )               //  4-byte Folded Reload
	lw x5, 100 ( x2 )               //  4-byte Folded Reload
	bgtu x1, x0, LBB0_258
	jalr x0, LBB0_648 ( x0 )
LBB0_253:                               //  %if.else404.us
                                        //    in Loop: Header=BB0_236 Depth=2
	addi x10, x2, 139
	add x11, x0, x8
	addi x12, x2, 840
	call $wcrtomb
	add x8, x0, x10
	xori x1, x8, -1
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x4, 128 ( x2 )               //  4-byte Folded Reload
	lw x5, 100 ( x2 )               //  4-byte Folded Reload
	bgtu x1, x0, LBB0_682
LBB0_681:                               //  %if.else404.us
                                        //    in Loop: Header=BB0_236 Depth=2
	jalr x0, LBB0_648 ( x0 )
LBB0_682:                               //  %if.else404.us
                                        //    in Loop: Header=BB0_236 Depth=2
LBB0_254:                               //  %if.end411.us
                                        //    in Loop: Header=BB0_236 Depth=2
	bgeu x5, x8, LBB0_256
LBB0_255:                               //    in Loop: Header=BB0_5 Depth=1
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	lw x7, 76 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_244 ( x0 )
LBB0_256:                               //  %if.end415.us
                                        //    in Loop: Header=BB0_236 Depth=2
	lw x1, 112 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_258
LBB0_257:                               //  %if.then418.us
                                        //    in Loop: Header=BB0_236 Depth=2
	lw x10, 92 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 139
	add x12, x0, x8
	call $memcpy
	lw x5, 100 ( x2 )               //  4-byte Folded Reload
	lw x4, 128 ( x2 )               //  4-byte Folded Reload
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
LBB0_258:                               //  %if.end422.us
                                        //    in Loop: Header=BB0_236 Depth=2
	add x1, x0, x0
	lw x3, 112 ( x2 )               //  4-byte Folded Reload
	nop
	bne x3, x1, LBB0_260
LBB0_259:                               //  %if.end422.us
                                        //    in Loop: Header=BB0_236 Depth=2
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x8, x1
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
LBB0_260:                               //  %if.end422.us
                                        //    in Loop: Header=BB0_236 Depth=2
	sub x1, x5, x8
	sw x1, 100 ( x2 )               //  4-byte Folded Spill
	addi x4, x4, 1
	sw x4, 128 ( x2 )               //  4-byte Folded Spill
	lui x8, 65535 >> 12 & 0xfffff
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_236 ( x0 )
LBB0_261:                               //  %while.cond358
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 4 ( x12 )
	nop
	bgt x1, x0, LBB0_264
LBB0_262:                               //  %land.lhs.true.i1847
                                        //    in Loop: Header=BB0_261 Depth=2
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x12
	add x11, x0, x8
	call $__ssrefill_r
	bgtu x10, x0, LBB0_238
LBB0_263:                               //  %land.lhs.true.if.end_crit_edge.i1849
                                        //    in Loop: Header=BB0_261 Depth=2
	lw x1, 4 ( x8 )
	add x12, x0, x8
	lui x8, 65535 >> 12 & 0xfffff
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
LBB0_264:                               //  %_sfgetwc_r.exit1856
                                        //    in Loop: Header=BB0_261 Depth=2
	lw x3, 0 ( x12 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lhu x7, 0 ( x3 )
	addi x3, x3, 2
	addi x1, x1, -2
	or x4, x8, x28
	sw x3, 0 ( x12 )
	sw x1, 4 ( x12 )
	bne x7, x4, LBB0_266
LBB0_265:                               //    in Loop: Header=BB0_5 Depth=1
	lw x4, 128 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_286 ( x0 )
LBB0_266:                               //  %land.lhs.true362
                                        //    in Loop: Header=BB0_261 Depth=2
	lw x1, 100 ( x2 )               //  4-byte Folded Reload
	nop
	beqz x1, LBB0_243
LBB0_267:                               //  %land.rhs366
                                        //    in Loop: Header=BB0_261 Depth=2
	sw x7, 76 ( x2 )                //  4-byte Folded Spill
	slli x1, x7, 16
	srai x8, x1, 16
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	lw x12, 96 ( x2 )               //  4-byte Folded Reload
	nop
	call $wmemchr
	beqz x10, LBB0_249
LBB0_268:                               //  %while.body390
                                        //    in Loop: Header=BB0_261 Depth=2
	lw x1, 100 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	sw x1, 100 ( x2 )               //  4-byte Folded Spill
	call $__locale_mb_cur_max
	lw x1, 112 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_271
LBB0_269:                               //  %while.body390
                                        //    in Loop: Header=BB0_261 Depth=2
	lw x1, 100 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x10, x1, LBB0_271
LBB0_270:                               //  %if.then397
                                        //    in Loop: Header=BB0_261 Depth=2
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	addi x13, x2, 840
	call $_wcrtomb_r
	add x8, x0, x10
	xori x1, x8, -1
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x4, 128 ( x2 )               //  4-byte Folded Reload
	lw x5, 100 ( x2 )               //  4-byte Folded Reload
	bgtu x1, x0, LBB0_275
	jalr x0, LBB0_648 ( x0 )
LBB0_271:                               //  %if.else404
                                        //    in Loop: Header=BB0_261 Depth=2
	addi x10, x2, 139
	add x11, x0, x8
	addi x12, x2, 840
	call $wcrtomb
	add x8, x0, x10
	xori x1, x8, -1
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x4, 128 ( x2 )               //  4-byte Folded Reload
	lw x5, 100 ( x2 )               //  4-byte Folded Reload
	bgtu x1, x0, LBB0_684
LBB0_683:                               //  %if.else404
                                        //    in Loop: Header=BB0_261 Depth=2
	jalr x0, LBB0_648 ( x0 )
LBB0_684:                               //  %if.else404
                                        //    in Loop: Header=BB0_261 Depth=2
LBB0_272:                               //  %if.end411
                                        //    in Loop: Header=BB0_261 Depth=2
	bgtu x8, x5, LBB0_255
LBB0_273:                               //  %if.end415
                                        //    in Loop: Header=BB0_261 Depth=2
	lw x1, 112 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_275
LBB0_274:                               //  %if.then418
                                        //    in Loop: Header=BB0_261 Depth=2
	lw x10, 92 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 139
	add x12, x0, x8
	call $memcpy
	lw x5, 100 ( x2 )               //  4-byte Folded Reload
	lw x4, 128 ( x2 )               //  4-byte Folded Reload
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
LBB0_275:                               //  %if.end422
                                        //    in Loop: Header=BB0_261 Depth=2
	add x1, x0, x0
	lw x3, 112 ( x2 )               //  4-byte Folded Reload
	nop
	bne x3, x1, LBB0_277
LBB0_276:                               //  %if.end422
                                        //    in Loop: Header=BB0_261 Depth=2
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x8, x1
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
LBB0_277:                               //  %if.end422
                                        //    in Loop: Header=BB0_261 Depth=2
	sub x1, x5, x8
	sw x1, 100 ( x2 )               //  4-byte Folded Spill
	addi x4, x4, 1
	sw x4, 128 ( x2 )               //  4-byte Folded Spill
	lui x8, 65535 >> 12 & 0xfffff
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_261 ( x0 )
LBB0_278:                               //  %if.end9.i1873
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
	nop
	addi x3, x1, -2
	sw x3, 0 ( x12 )
	sb x7, -2 ( x1 )
	lw x1, 4 ( x12 )
	nop
	addi x1, x1, 2
	sw x1, 4 ( x12 )
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_286 ( x0 )
LBB0_279:                               //  %if.end14.i1876
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 16 ( x12 )
	nop
	bgtu x3, x0, LBB0_282
LBB0_280:                               //  %if.end14.if.end34_crit_edge.i1880
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
LBB0_281:                               //  %if.end34.i1899
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 4 ( x12 )
	nop
	sw x3, 60 ( x12 )
	sw x1, 56 ( x12 )
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x12 )
	addi x1, x0, 3
	sw x1, 52 ( x12 )
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x12 )
	sh x7, 65 ( x12 )
	addi x1, x0, 2
	jalr x0, LBB0_285 ( x0 )
LBB0_282:                               //  %land.lhs.true18.i1883
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
	nop
	bgeu x3, x1, LBB0_281
LBB0_283:                               //  %land.lhs.true24.i1887
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x3, -2 ( x1 )
	nop
	bne x3, x7, LBB0_281
LBB0_284:                               //  %if.then29.i1890
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x1, -2
	sw x1, 0 ( x12 )
	lw x1, 4 ( x12 )
	nop
	addi x1, x1, 2
LBB0_285:                               //  %if.end435
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x1, 4 ( x12 )
LBB0_286:                               //  %if.end435
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 112 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_289
LBB0_287:                               //  %if.then438
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	sb x0, 0 ( x1 )
LBB0_288:                               //  %if.end442
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 108 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
LBB0_289:                               //  %if.end442
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 116 ( x2 )               //  4-byte Folded Reload
	nop
	add x1, x1, x4
	sw x1, 116 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB0_45 ( x0 )
LBB0_290:                               //  %sw.bb444
                                        //    in Loop: Header=BB0_5 Depth=1
	not x1, x0
	add x7, x0, x1
	lui x8, 65535 >> 12 & 0xfffff
	add x1, x0, x0
	lw x3, 128 ( x2 )               //  4-byte Folded Reload
	nop
	beq x3, x1, LBB0_292
LBB0_291:                               //  %sw.bb444
                                        //    in Loop: Header=BB0_5 Depth=1
	add x7, x0, x3
LBB0_292:                               //  %sw.bb444
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 112 ( x2 )               //  4-byte Folded Reload
	nop
	andi x4, x1, 16
	andi x1, x1, 1
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB0_307
LBB0_293:                               //  %sw.bb444
                                        //    in Loop: Header=BB0_5 Depth=1
	seqz x3, x4
	bgtu x3, x0, LBB0_307
LBB0_294:                               //  %while.cond455
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 4 ( x12 )
	nop
	bgt x1, x0, LBB0_298
LBB0_295:                               //  %land.lhs.true.i1905
                                        //    in Loop: Header=BB0_294 Depth=2
	sw x7, 128 ( x2 )               //  4-byte Folded Spill
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x12
	add x11, x0, x8
	call $__ssrefill_r
	beqz x10, LBB0_297
LBB0_296:                               //    in Loop: Header=BB0_5 Depth=1
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_45 ( x0 )
LBB0_297:                               //  %land.lhs.true.if.end_crit_edge.i1907
                                        //    in Loop: Header=BB0_294 Depth=2
	lw x1, 4 ( x8 )
	add x12, x0, x8
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	lw x7, 128 ( x2 )               //  4-byte Folded Reload
LBB0_298:                               //  %_sfgetwc_r.exit1914
                                        //    in Loop: Header=BB0_294 Depth=2
	lw x3, 0 ( x12 )
	nop
	lhu x8, 0 ( x3 )
	addi x3, x3, 2
	sw x3, 0 ( x12 )
	addi x1, x1, -2
	sw x1, 4 ( x12 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	bne x8, x1, LBB0_686
LBB0_685:                               //  %_sfgetwc_r.exit1914
                                        //    in Loop: Header=BB0_294 Depth=2
	jalr x0, LBB0_45 ( x0 )
LBB0_686:                               //  %_sfgetwc_r.exit1914
                                        //    in Loop: Header=BB0_294 Depth=2
LBB0_299:                               //  %land.lhs.true459
                                        //    in Loop: Header=BB0_294 Depth=2
	beqz x7, LBB0_302
LBB0_300:                               //  %land.rhs463
                                        //    in Loop: Header=BB0_294 Depth=2
	slli x1, x8, 16
	srai x10, x1, 16
	sw x8, 128 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x7
	call $iswspace
	add x7, x0, x8
	lw x8, 128 ( x2 )               //  4-byte Folded Reload
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	bgtu x10, x0, LBB0_302
LBB0_301:                               //  %while.body467
                                        //    in Loop: Header=BB0_294 Depth=2
	addi x7, x7, -1
	lw x1, 116 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 116 ( x2 )               //  4-byte Folded Spill
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_294 ( x0 )
LBB0_302:                               //  %if.end.i1919
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x1, 12 ( x12 )
	ori x28, x0, 65503 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x12 )
	lw x1, 48 ( x12 )
	nop
	bgtu x1, x0, LBB0_688
LBB0_687:                               //  %if.end.i1919
                                        //    in Loop: Header=BB0_5 Depth=1
	jalr x0, LBB0_17 ( x0 )
LBB0_688:                               //  %if.end.i1919
                                        //    in Loop: Header=BB0_5 Depth=1
LBB0_303:                               //  %if.then4.i1923
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 52 ( x12 )
	lw x3, 4 ( x12 )
	nop
	bgt x1, x3, LBB0_306
LBB0_304:                               //  %land.lhs.true.i1926
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	lw x11, 124 ( x2 )              //  4-byte Folded Reload
	nop
	call $__submore
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	beqz x10, LBB0_306
LBB0_305:                               //    in Loop: Header=BB0_5 Depth=1
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_45 ( x0 )
LBB0_306:                               //  %if.end9.i
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
	nop
	addi x3, x1, -2
	sw x3, 0 ( x12 )
	sb x8, -2 ( x1 )
	lw x1, 4 ( x12 )
	nop
	addi x1, x1, 2
	sw x1, 4 ( x12 )
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_45 ( x0 )
LBB0_307:                               //  %if.else475
                                        //    in Loop: Header=BB0_5 Depth=1
	beqz x1, LBB0_329
LBB0_308:                               //  %if.then478
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 848 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 848 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 112 ( x2 )               //  4-byte Folded Spill
	lw x8, 116 ( x2 )               //  4-byte Folded Reload
LBB0_309:                               //  %while.cond480
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 4 ( x12 )
	sw x7, 128 ( x2 )               //  4-byte Folded Spill
	bgt x1, x0, LBB0_312
LBB0_310:                               //  %land.lhs.true.i1963
                                        //    in Loop: Header=BB0_309 Depth=2
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	lw x11, 124 ( x2 )              //  4-byte Folded Reload
	nop
	call $__ssrefill_r
	lw x7, 128 ( x2 )               //  4-byte Folded Reload
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	bgtu x10, x0, LBB0_328
LBB0_311:                               //  %land.lhs.true.if.end_crit_edge.i1965
                                        //    in Loop: Header=BB0_309 Depth=2
	lw x1, 4 ( x12 )
LBB0_312:                               //  %_sfgetwc_r.exit1972
                                        //    in Loop: Header=BB0_309 Depth=2
	lw x3, 0 ( x12 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lhu x9, 0 ( x3 )
	addi x3, x3, 2
	addi x1, x1, -2
	lui x4, 65535 >> 12 & 0xfffff
	or x4, x4, x28
	sw x3, 0 ( x12 )
	sw x1, 4 ( x12 )
	beq x9, x4, LBB0_328
LBB0_313:                               //  %land.lhs.true484
                                        //    in Loop: Header=BB0_309 Depth=2
	sw x9, 100 ( x2 )               //  4-byte Folded Spill
	beqz x7, LBB0_316
LBB0_314:                               //  %land.end492
                                        //    in Loop: Header=BB0_309 Depth=2
	slli x1, x9, 16
	srai x10, x1, 16
	call $iswspace
	lw x9, 100 ( x2 )               //  4-byte Folded Reload
	lw x7, 128 ( x2 )               //  4-byte Folded Reload
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	bgtu x10, x0, LBB0_316
LBB0_315:                               //  %while.body493
                                        //    in Loop: Header=BB0_309 Depth=2
	addi x7, x7, -1
	lw x1, 112 ( x2 )               //  4-byte Folded Reload
	nop
	sh x9, 0 ( x1 )
	addi x8, x8, 1
	addi x1, x1, 2
	sw x1, 112 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB0_309 ( x0 )
LBB0_316:                               //  %if.end.i1977
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, 65503 & 0xfff
	lhu x1, 12 ( x12 )
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x12 )
	lw x1, 48 ( x12 )
	nop
	beqz x1, LBB0_320
LBB0_317:                               //  %if.then4.i1981
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 52 ( x12 )
	lw x3, 4 ( x12 )
	nop
	bgt x1, x3, LBB0_319
LBB0_318:                               //  %land.lhs.true.i1984
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	lw x11, 124 ( x2 )              //  4-byte Folded Reload
	nop
	call $__submore
	lw x9, 100 ( x2 )               //  4-byte Folded Reload
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	bgtu x10, x0, LBB0_328
LBB0_319:                               //  %if.end9.i1989
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
	nop
	addi x3, x1, -2
	sw x3, 0 ( x12 )
	sb x9, -2 ( x1 )
	jalr x0, LBB0_326 ( x0 )
LBB0_320:                               //  %if.end14.i1992
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 16 ( x12 )
	nop
	bgtu x3, x0, LBB0_323
LBB0_321:                               //  %if.end14.if.end34_crit_edge.i1996
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
LBB0_322:                               //  %if.end34.i2015
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 4 ( x12 )
	nop
	sw x3, 60 ( x12 )
	sw x1, 56 ( x12 )
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x12 )
	addi x1, x0, 3
	sw x1, 52 ( x12 )
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x12 )
	sh x9, 65 ( x12 )
	addi x1, x0, 2
	jalr x0, LBB0_327 ( x0 )
LBB0_323:                               //  %land.lhs.true18.i1999
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
	nop
	bgeu x3, x1, LBB0_322
LBB0_324:                               //  %land.lhs.true24.i2003
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x3, -2 ( x1 )
	nop
	bne x3, x9, LBB0_322
LBB0_325:                               //  %if.then29.i2006
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x1, -2
	sw x1, 0 ( x12 )
LBB0_326:                               //  %if.end502
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 4 ( x12 )
	nop
	addi x1, x1, 2
LBB0_327:                               //  %if.end502
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x1, 4 ( x12 )
LBB0_328:                               //  %if.end502
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x8, 116 ( x2 )               //  4-byte Folded Spill
	lw x1, 112 ( x2 )               //  4-byte Folded Reload
	nop
	sh x0, 0 ( x1 )
	lw x1, 108 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_45 ( x0 )
LBB0_329:                               //  %if.else504
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x7, 128 ( x2 )               //  4-byte Folded Spill
	sw x4, 100 ( x2 )               //  4-byte Folded Spill
	bgtu x4, x0, LBB0_334
LBB0_330:                               //  %while.cond511.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 848 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 848 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	addi x10, x2, 840
	add x11, x0, x0
	addi x12, x0, 8
	call $memset
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x5, 116 ( x2 )               //  4-byte Folded Reload
	lw x7, 128 ( x2 )               //  4-byte Folded Reload
LBB0_331:                               //  %while.cond511
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 4 ( x12 )
	sw x7, 128 ( x2 )               //  4-byte Folded Spill
	sw x5, 116 ( x2 )               //  4-byte Folded Spill
	bgt x1, x0, LBB0_345
LBB0_332:                               //  %land.lhs.true.i2021
                                        //    in Loop: Header=BB0_331 Depth=2
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x12
	add x11, x0, x8
	call $__ssrefill_r
	beqz x10, LBB0_344
LBB0_333:                               //    in Loop: Header=BB0_5 Depth=1
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_370 ( x0 )
LBB0_334:                               //  %while.cond511.us.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x10, x2, 840
	add x11, x0, x0
	addi x12, x0, 8
	call $memset
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x7, 128 ( x2 )               //  4-byte Folded Reload
LBB0_335:                               //  %while.cond511.us
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 4 ( x12 )
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	sw x7, 128 ( x2 )               //  4-byte Folded Spill
	bgt x1, x0, LBB0_338
LBB0_336:                               //  %land.lhs.true.i2021.us
                                        //    in Loop: Header=BB0_335 Depth=2
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x12
	add x11, x0, x8
	call $__ssrefill_r
	bgtu x10, x0, LBB0_333
LBB0_337:                               //  %land.lhs.true.if.end_crit_edge.i2023.us
                                        //    in Loop: Header=BB0_335 Depth=2
	lw x1, 4 ( x8 )
	add x12, x0, x8
	lui x8, 65535 >> 12 & 0xfffff
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	lw x7, 128 ( x2 )               //  4-byte Folded Reload
LBB0_338:                               //  %_sfgetwc_r.exit2030.us
                                        //    in Loop: Header=BB0_335 Depth=2
	lw x3, 0 ( x12 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lhu x9, 0 ( x3 )
	or x4, x8, x28
	addi x3, x3, 2
	addi x1, x1, -2
	xor x4, x4, x9
	sw x3, 0 ( x12 )
	sw x1, 4 ( x12 )
	sltu x1, x0, x4
	beqz x7, LBB0_347
LBB0_339:                               //  %_sfgetwc_r.exit2030.us
                                        //    in Loop: Header=BB0_335 Depth=2
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x8, x28
	beq x9, x3, LBB0_347
LBB0_340:                               //  %land.rhs518.us
                                        //    in Loop: Header=BB0_335 Depth=2
	sw x9, 112 ( x2 )               //  4-byte Folded Spill
	slli x1, x9, 16
	srai x8, x1, 16
	add x10, x0, x8
	call $iswspace
	bgtu x10, x0, LBB0_354
LBB0_341:                               //  %while.body523.us
                                        //    in Loop: Header=BB0_335 Depth=2
	call $__locale_mb_cur_max
	addi x10, x2, 139
	add x11, x0, x8
	addi x12, x2, 840
	call $wcrtomb
	xori x1, x10, -1
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	bgtu x1, x0, LBB0_690
LBB0_689:                               //  %while.body523.us
                                        //    in Loop: Header=BB0_335 Depth=2
	jalr x0, LBB0_648 ( x0 )
LBB0_690:                               //  %while.body523.us
                                        //    in Loop: Header=BB0_335 Depth=2
LBB0_342:                               //  %if.end544.us
                                        //    in Loop: Header=BB0_335 Depth=2
	lw x7, 128 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x10, x7, LBB0_359
LBB0_343:                               //  %if.end555.us
                                        //    in Loop: Header=BB0_335 Depth=2
	sub x7, x7, x10
	lw x1, 116 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 116 ( x2 )               //  4-byte Folded Spill
	lui x8, 65535 >> 12 & 0xfffff
	jalr x0, LBB0_335 ( x0 )
LBB0_344:                               //  %land.lhs.true.if.end_crit_edge.i2023
                                        //    in Loop: Header=BB0_331 Depth=2
	lw x1, 4 ( x8 )
	add x12, x0, x8
	lui x8, 65535 >> 12 & 0xfffff
	lw x7, 128 ( x2 )               //  4-byte Folded Reload
LBB0_345:                               //  %_sfgetwc_r.exit2030
                                        //    in Loop: Header=BB0_331 Depth=2
	lw x3, 0 ( x12 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lhu x9, 0 ( x3 )
	or x4, x8, x28
	addi x3, x3, 2
	addi x1, x1, -2
	xor x4, x4, x9
	sw x3, 0 ( x12 )
	sw x1, 4 ( x12 )
	sltu x1, x0, x4
	bgtu x7, x0, LBB0_352
LBB0_346:                               //    in Loop: Header=BB0_5 Depth=1
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
LBB0_347:                               //  %while.end563
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x9, 112 ( x2 )               //  4-byte Folded Spill
	andi x1, x1, 1
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB0_370
LBB0_348:                               //  %if.end.i2035
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, 65503 & 0xfff
	lhu x1, 12 ( x12 )
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x12 )
	lw x1, 48 ( x12 )
	nop
	beqz x1, LBB0_363
LBB0_349:                               //  %if.then4.i2039
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 52 ( x12 )
	lw x3, 4 ( x12 )
	nop
	bgt x1, x3, LBB0_362
LBB0_350:                               //  %land.lhs.true.i2042
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	lw x11, 124 ( x2 )              //  4-byte Folded Reload
	nop
	call $__submore
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	beqz x10, LBB0_362
LBB0_351:                               //    in Loop: Header=BB0_5 Depth=1
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_370 ( x0 )
LBB0_352:                               //  %_sfgetwc_r.exit2030
                                        //    in Loop: Header=BB0_331 Depth=2
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x8, x28
	beq x9, x3, LBB0_346
LBB0_353:                               //  %land.rhs518
                                        //    in Loop: Header=BB0_331 Depth=2
	sw x9, 112 ( x2 )               //  4-byte Folded Spill
	slli x1, x9, 16
	srai x8, x1, 16
	add x10, x0, x8
	call $iswspace
	beqz x10, LBB0_355
LBB0_354:                               //    in Loop: Header=BB0_5 Depth=1
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB0_359 ( x0 )
LBB0_355:                               //  %while.body523
                                        //    in Loop: Header=BB0_331 Depth=2
	call $__locale_mb_cur_max
	lw x1, 128 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x10, x1, LBB0_357
LBB0_356:                               //  %if.then530
                                        //    in Loop: Header=BB0_331 Depth=2
	lw x10, 92 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	addi x12, x2, 840
	call $wcrtomb
	add x8, x0, x10
	xori x1, x8, -1
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	bgtu x1, x0, LBB0_361
	jalr x0, LBB0_648 ( x0 )
LBB0_357:                               //  %if.else537
                                        //    in Loop: Header=BB0_331 Depth=2
	addi x10, x2, 139
	add x11, x0, x8
	addi x12, x2, 840
	call $wcrtomb
	add x8, x0, x10
	xori x1, x8, -1
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	bgtu x1, x0, LBB0_692
LBB0_691:                               //  %if.else537
                                        //    in Loop: Header=BB0_331 Depth=2
	jalr x0, LBB0_648 ( x0 )
LBB0_692:                               //  %if.else537
                                        //    in Loop: Header=BB0_331 Depth=2
LBB0_358:                               //  %if.end544
                                        //    in Loop: Header=BB0_331 Depth=2
	lw x1, 128 ( x2 )               //  4-byte Folded Reload
	nop
	bgeu x1, x8, LBB0_360
LBB0_359:                               //    in Loop: Header=BB0_5 Depth=1
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_348 ( x0 )
LBB0_360:                               //  %if.then551
                                        //    in Loop: Header=BB0_331 Depth=2
	lw x10, 92 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 139
	add x12, x0, x8
	call $memcpy
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
LBB0_361:                               //  %if.end555
                                        //    in Loop: Header=BB0_331 Depth=2
	lw x7, 128 ( x2 )               //  4-byte Folded Reload
	nop
	sub x7, x7, x8
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x8, x1
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	lw x5, 116 ( x2 )               //  4-byte Folded Reload
	nop
	addi x5, x5, 1
	lui x8, 65535 >> 12 & 0xfffff
	jalr x0, LBB0_331 ( x0 )
LBB0_362:                               //  %if.end9.i2047
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
	nop
	addi x3, x1, -2
	sw x3, 0 ( x12 )
	lw x3, 112 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, -2 ( x1 )
	lw x1, 4 ( x12 )
	nop
	addi x1, x1, 2
	sw x1, 4 ( x12 )
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_370 ( x0 )
LBB0_363:                               //  %if.end14.i2050
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 16 ( x12 )
	nop
	bgtu x3, x0, LBB0_366
LBB0_364:                               //  %if.end14.if.end34_crit_edge.i2054
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
	lw x7, 112 ( x2 )               //  4-byte Folded Reload
LBB0_365:                               //  %if.end34.i2073
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 4 ( x12 )
	nop
	sw x3, 60 ( x12 )
	sw x1, 56 ( x12 )
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x12 )
	addi x1, x0, 3
	sw x1, 52 ( x12 )
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x12 )
	sh x7, 65 ( x12 )
	addi x1, x0, 2
	jalr x0, LBB0_369 ( x0 )
LBB0_366:                               //  %land.lhs.true18.i2057
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
	lw x7, 112 ( x2 )               //  4-byte Folded Reload
	bgeu x3, x1, LBB0_365
LBB0_367:                               //  %land.lhs.true24.i2061
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x3, -2 ( x1 )
	nop
	bne x3, x7, LBB0_365
LBB0_368:                               //  %if.then29.i2064
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x1, -2
	sw x1, 0 ( x12 )
	lw x1, 4 ( x12 )
	nop
	addi x1, x1, 2
LBB0_369:                               //  %if.end568
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x1, 4 ( x12 )
LBB0_370:                               //  %if.end568
                                        //    in Loop: Header=BB0_5 Depth=1
	beqz x4, LBB0_694
LBB0_693:                               //  %if.end568
                                        //    in Loop: Header=BB0_5 Depth=1
	jalr x0, LBB0_45 ( x0 )
LBB0_694:                               //  %if.end568
                                        //    in Loop: Header=BB0_5 Depth=1
LBB0_371:                               //  %if.then571
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	sb x0, 0 ( x1 )
	lw x1, 108 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB0_45 ( x0 )
LBB0_372:                               //  %sw.bb576
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x4, 128 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x4, -1
	addi x3, x0, 349
	add x7, x0, x3
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	addi x3, x0, 348
	bgtu x1, x3, LBB0_374
LBB0_373:                               //  %sw.bb576
                                        //    in Loop: Header=BB0_5 Depth=1
	add x7, x0, x4
LBB0_374:                               //  %sw.bb576
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 112 ( x2 )               //  4-byte Folded Reload
	nop
	ori x5, x1, 1408
	bgtu x7, x0, LBB0_376
LBB0_375:                               //    in Loop: Header=BB0_5 Depth=1
	addi x1, x2, 140
	add x7, x0, x1
	add x1, x0, x0
	add x9, x0, x1
	jalr x0, LBB0_413 ( x0 )
LBB0_376:                               //  %for.body.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x7, 76 ( x2 )                //  4-byte Folded Spill
	lw x11, 4 ( x12 )
	add x1, x0, x0
	add x9, x0, x1
	addi x1, x2, 140
LBB0_377:                               //  %for.body
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x9, 100 ( x2 )               //  4-byte Folded Spill
	sw x5, 112 ( x2 )               //  4-byte Folded Spill
	sw x1, 128 ( x2 )               //  4-byte Folded Spill
	bgt x11, x0, LBB0_381
LBB0_378:                               //  %land.lhs.true.i2079
                                        //    in Loop: Header=BB0_377 Depth=2
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x12
	add x11, x0, x8
	call $__ssrefill_r
	beqz x10, LBB0_380
LBB0_379:                               //    in Loop: Header=BB0_5 Depth=1
	add x12, x0, x8
	lw x7, 128 ( x2 )               //  4-byte Folded Reload
	lw x5, 112 ( x2 )               //  4-byte Folded Reload
	lw x9, 100 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_413 ( x0 )
LBB0_380:                               //  %land.lhs.true.if.end_crit_edge.i2081
                                        //    in Loop: Header=BB0_377 Depth=2
	lw x11, 4 ( x8 )
	add x12, x0, x8
LBB0_381:                               //  %_sfgetwc_r.exit2088
                                        //    in Loop: Header=BB0_377 Depth=2
	lw x3, 0 ( x12 )
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	addi x11, x11, -2
	lh x1, 0 ( x3 )
	sw x3, 52 ( x2 )                //  4-byte Folded Spill
	addi x3, x3, 2
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	sw x3, 0 ( x12 )
	sw x11, 4 ( x12 )
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	addi x10, x1, 1
	addi x1, x0, 121
	bgeu x1, x10, LBB0_383
LBB0_382:                               //    in Loop: Header=BB0_5 Depth=1
	lw x7, 128 ( x2 )               //  4-byte Folded Reload
	lw x5, 112 ( x2 )               //  4-byte Folded Reload
	lw x9, 100 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_402 ( x0 )
LBB0_383:                               //  %_sfgetwc_r.exit2088
                                        //    in Loop: Header=BB0_377 Depth=2
	add x8, x0, x11
	addi x11, x0, 4
	call $__mulsi3
	add x11, x0, x8
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	ori x28, x0, JTI0_3 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI0_3 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	lw x7, 128 ( x2 )               //  4-byte Folded Reload
	lw x5, 112 ( x2 )               //  4-byte Folded Reload
	lw x9, 100 ( x2 )               //  4-byte Folded Reload
	jr x1
LBB0_384:                               //  %sw.bb588
                                        //    in Loop: Header=BB0_377 Depth=2
	add x1, x0, x0
	lw x4, 104 ( x2 )               //  4-byte Folded Reload
	nop
	bne x4, x1, LBB0_386
LBB0_385:                               //    in Loop: Header=BB0_377 Depth=2
	ori x5, x5, 512
LBB0_386:                               //  %sw.bb588
                                        //    in Loop: Header=BB0_377 Depth=2
	addi x1, x0, 8
	add x3, x0, x0
	beq x4, x3, LBB0_388
LBB0_387:                               //  %sw.bb588
                                        //    in Loop: Header=BB0_377 Depth=2
	add x1, x0, x4
LBB0_388:                               //  %sw.bb588
                                        //    in Loop: Header=BB0_377 Depth=2
	andi x3, x5, 1024
	beqz x3, LBB0_391
LBB0_389:                               //  %if.then596
                                        //    in Loop: Header=BB0_377 Depth=2
	andi x5, x5, -1409
	sw x1, 104 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB0_397 ( x0 )
LBB0_391:                               //  %if.else598
                                        //    in Loop: Header=BB0_377 Depth=2
	andi x5, x5, -897
	sw x1, 104 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB0_397 ( x0 )
LBB0_392:                               //  %sw.bb601
                                        //    in Loop: Header=BB0_377 Depth=2
	ori x28, x0, $__ssvfwscanf_r.basefix & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	slli x1, x1, 1
	lui x3, $__ssvfwscanf_r.basefix >> 12 & 0xfffff
	or x3, x3, x28
	add x1, x3, x1
	andi x5, x5, -897
	lh x1, 0 ( x1 )
	nop
	sw x1, 104 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB0_397 ( x0 )
LBB0_393:                               //  %sw.bb604
                                        //    in Loop: Header=BB0_377 Depth=2
	ori x28, x0, $__ssvfwscanf_r.basefix & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x3, -1
	slli x3, x3, 1
	lui x4, $__ssvfwscanf_r.basefix >> 12 & 0xfffff
	or x4, x4, x28
	add x3, x4, x3
	sltiu x1, x1, 8
	lh x3, 0 ( x3 )
	nop
	sw x3, 104 ( x2 )               //  4-byte Folded Spill
	bgtu x1, x0, LBB0_402
LBB0_394:                               //  %if.end610
                                        //    in Loop: Header=BB0_377 Depth=2
	andi x5, x5, -897
	jalr x0, LBB0_397 ( x0 )
LBB0_395:                               //  %sw.bb618
                                        //    in Loop: Header=BB0_377 Depth=2
	andi x1, x5, 128
	beqz x1, LBB0_402
LBB0_396:                               //  %if.then621
                                        //    in Loop: Header=BB0_377 Depth=2
	ori x28, x0, -65665 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -65665 >> 12 & 0xfffff
	or x1, x1, x28
	and x1, x1, x5
	lui x3, 65536>>12 
	or x5, x3, x1
LBB0_397:                               //  %ok
                                        //    in Loop: Header=BB0_377 Depth=2
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	addi x1, x7, 2
	addi x9, x9, 1
	sh x3, 0 ( x7 )
	add x7, x0, x1
	lw x3, 76 ( x2 )                //  4-byte Folded Reload
	nop
	bne x3, x9, LBB0_377
	jalr x0, LBB0_413 ( x0 )
LBB0_398:                               //  %sw.bb625
                                        //    in Loop: Header=BB0_377 Depth=2
	andi x1, x5, 512
	beqz x1, LBB0_402
LBB0_399:                               //  %land.lhs.true628
                                        //    in Loop: Header=BB0_377 Depth=2
	srli x1, x5, 15
	andi x1, x1, 2
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	bne x7, x1, LBB0_402
LBB0_400:                               //  %if.then638
                                        //    in Loop: Header=BB0_377 Depth=2
	andi x5, x5, -513
	addi x1, x0, 16
	sw x1, 104 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB0_397 ( x0 )
LBB0_401:                               //  %sw.bb612
                                        //    in Loop: Header=BB0_377 Depth=2
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	slti x1, x1, 11
	beqz x1, LBB0_394
LBB0_402:                               //  %if.end.i2093
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, 65503 & 0xfff
	lhu x1, 12 ( x12 )
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x12 )
	lw x1, 48 ( x12 )
	nop
	beqz x1, LBB0_407
LBB0_403:                               //  %if.then4.i2097
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 52 ( x12 )
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	bgt x1, x11, LBB0_406
LBB0_404:                               //  %land.lhs.true.i2100
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x12
	add x11, x0, x8
	call $__submore
	bgtu x10, x0, LBB0_379
LBB0_405:                               //  %land.lhs.true.i2100.if.end9.i2105_crit_edge
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 0 ( x8 )
	add x12, x0, x8
	lw x7, 128 ( x2 )               //  4-byte Folded Reload
	lw x5, 112 ( x2 )               //  4-byte Folded Reload
	lw x9, 100 ( x2 )               //  4-byte Folded Reload
LBB0_406:                               //  %if.end9.i2105
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x3, -2
	sw x1, 0 ( x12 )
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	sb x1, -2 ( x3 )
	lw x1, 4 ( x12 )
	nop
	addi x1, x1, 2
	jalr x0, LBB0_412 ( x0 )
LBB0_407:                               //  %if.end14.i2108
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 16 ( x12 )
	lw x4, 96 ( x2 )                //  4-byte Folded Reload
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB0_411
LBB0_408:                               //  %if.end14.i2108
                                        //    in Loop: Header=BB0_5 Depth=1
	bgeu x1, x10, LBB0_411
LBB0_409:                               //  %land.lhs.true24.i2119
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	lhu x1, 0 ( x1 )
	srli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	or x3, x3, x28
	and x3, x3, x4
	bne x1, x3, LBB0_411
LBB0_410:                               //  %if.then29.i2122
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x12 )
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_412 ( x0 )
LBB0_411:                               //  %if.end34.i2131
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x11, 60 ( x12 )
	sw x10, 56 ( x12 )
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x12 )
	addi x1, x0, 3
	sw x1, 52 ( x12 )
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x12 )
	sh x4, 65 ( x12 )
	addi x1, x0, 2
LBB0_412:                               //  %for.end
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x1, 4 ( x12 )
LBB0_413:                               //  %for.end
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x5, 256
	beqz x1, LBB0_427
LBB0_414:                               //  %if.then652
	bgt x9, x0, LBB0_696
LBB0_695:                               //  %if.then652
	jalr x0, LBB0_652 ( x0 )
LBB0_696:                               //  %if.then652
LBB0_415:                               //  %if.then656
	ori x28, x0, 65535 & 0xfff
	lhu x8, -2 ( x7 )
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	bne x8, x1, LBB0_698
LBB0_697:                               //  %if.then656
	jalr x0, LBB0_652 ( x0 )
LBB0_698:                               //  %if.then656
LBB0_416:                               //  %if.end.i2137
	ori x28, x0, 65503 & 0xfff
	lhu x1, 12 ( x12 )
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x12 )
	lw x1, 48 ( x12 )
	nop
	beqz x1, LBB0_420
LBB0_417:                               //  %if.then4.i2141
	lw x1, 52 ( x12 )
	lw x3, 4 ( x12 )
	nop
	bgt x1, x3, LBB0_419
LBB0_418:                               //  %land.lhs.true.i2144
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	lw x11, 124 ( x2 )              //  4-byte Folded Reload
	nop
	call $__submore
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	beqz x10, LBB0_700
LBB0_699:                               //  %land.lhs.true.i2144
	jalr x0, LBB0_652 ( x0 )
LBB0_700:                               //  %land.lhs.true.i2144
LBB0_419:                               //  %if.end9.i2149
	lw x1, 0 ( x12 )
	nop
	addi x3, x1, -2
	sw x3, 0 ( x12 )
	sb x8, -2 ( x1 )
	jalr x0, LBB0_426 ( x0 )
LBB0_420:                               //  %if.end14.i2152
	lw x3, 16 ( x12 )
	nop
	bgtu x3, x0, LBB0_423
LBB0_421:                               //  %if.end14.if.end34_crit_edge.i2156
	lw x1, 0 ( x12 )
LBB0_422:                               //  %if.end34.i2174
	lw x3, 4 ( x12 )
	addi x4, x0, 3
	addi x5, x0, 2
	sw x3, 60 ( x12 )
	sw x1, 56 ( x12 )
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x12 )
	sw x4, 52 ( x12 )
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x12 )
	sh x8, 65 ( x12 )
	sw x5, 4 ( x12 )
	jalr x0, LBB0_652 ( x0 )
LBB0_423:                               //  %land.lhs.true18.i2159
	lw x1, 0 ( x12 )
	nop
	bgeu x3, x1, LBB0_422
LBB0_424:                               //  %land.lhs.true24.i2163
	lhu x3, -2 ( x1 )
	nop
	bne x3, x8, LBB0_422
LBB0_425:                               //  %if.then29.i2166
	addi x1, x1, -2
	sw x1, 0 ( x12 )
LBB0_426:                               //  %cleanup1043
	lw x1, 4 ( x12 )
	nop
	addi x1, x1, 2
	sw x1, 4 ( x12 )
	jalr x0, LBB0_652 ( x0 )
LBB0_427:                               //  %if.end661
                                        //    in Loop: Header=BB0_5 Depth=1
	lh x8, -2 ( x7 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	ori x1, x8, 32
	lui x4, 65535 >> 12 & 0xfffff
	or x3, x4, x28
	and x1, x3, x1
	xori x1, x1, 120
	bgtu x1, x0, LBB0_441
LBB0_428:                               //  %if.then669
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x4, x28
	and x3, x1, x8
	addi x7, x7, -2
	beq x3, x1, LBB0_441
LBB0_429:                               //  %if.end.i2180
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, 65503 & 0xfff
	lhu x1, 12 ( x12 )
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x12 )
	lw x1, 48 ( x12 )
	nop
	beqz x1, LBB0_434
LBB0_430:                               //  %if.then4.i2184
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x5, 112 ( x2 )               //  4-byte Folded Spill
	sw x7, 128 ( x2 )               //  4-byte Folded Spill
	lw x1, 52 ( x12 )
	lw x3, 4 ( x12 )
	nop
	bgt x1, x3, LBB0_433
LBB0_431:                               //  %land.lhs.true.i2187
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	lw x11, 124 ( x2 )              //  4-byte Folded Reload
	nop
	call $__submore
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	beqz x10, LBB0_433
LBB0_432:                               //    in Loop: Header=BB0_5 Depth=1
	lw x7, 128 ( x2 )               //  4-byte Folded Reload
	lw x5, 112 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_441 ( x0 )
LBB0_433:                               //  %if.end9.i2192
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
	nop
	addi x3, x1, -2
	sw x3, 0 ( x12 )
	sb x8, -2 ( x1 )
	lw x1, 4 ( x12 )
	nop
	addi x1, x1, 2
	sw x1, 4 ( x12 )
	jalr x0, LBB0_432 ( x0 )
LBB0_434:                               //  %if.end14.i2195
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 16 ( x12 )
	nop
	bgtu x3, x0, LBB0_437
LBB0_435:                               //  %if.end14.if.end34_crit_edge.i2199
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
LBB0_436:                               //  %if.end34.i2217
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 4 ( x12 )
	nop
	sw x3, 60 ( x12 )
	sw x1, 56 ( x12 )
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x12 )
	addi x1, x0, 3
	sw x1, 52 ( x12 )
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x12 )
	sh x8, 65 ( x12 )
	addi x1, x0, 2
	jalr x0, LBB0_440 ( x0 )
LBB0_437:                               //  %land.lhs.true18.i2202
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
	nop
	bgeu x3, x1, LBB0_436
LBB0_438:                               //  %land.lhs.true24.i2206
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	or x3, x3, x28
	and x3, x3, x8
	lhu x4, -2 ( x1 )
	nop
	bne x4, x3, LBB0_436
LBB0_439:                               //  %if.then29.i2209
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x1, -2
	sw x1, 0 ( x12 )
	lw x1, 4 ( x12 )
	nop
	addi x1, x1, 2
LBB0_440:                               //  %if.end672
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x1, 4 ( x12 )
LBB0_441:                               //  %if.end672
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x5, 16
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB0_443
LBB0_442:                               //    in Loop: Header=BB0_5 Depth=1
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_455 ( x0 )
LBB0_443:                               //  %if.then676
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x7, 128 ( x2 )               //  4-byte Folded Spill
	sh x0, 0 ( x7 )
	add x8, x0, x5
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	addi x11, x2, 140
	add x12, x0, x0
	sw x3, 104 ( x2 )               //  4-byte Folded Spill
	add x13, x0, x3
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	andi x1, x8, 32
	bgtu x1, x0, LBB0_452
LBB0_444:                               //  %if.else683
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x8, 4
	beqz x1, LBB0_446
LBB0_445:                               //  %if.then686
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 848 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 848 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sh x10, 0 ( x1 )
	jalr x0, LBB0_454 ( x0 )
LBB0_446:                               //  %if.else689
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x8, 1
	bgtu x1, x0, LBB0_452
LBB0_447:                               //  %if.else694
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x8, 2
	beqz x1, LBB0_452
LBB0_448:                               //  %if.then697
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, $_wcstoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_wcstoul_r >> 12 & 0xfffff
	or x1, x1, x28
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	bne x3, x1, LBB0_450
LBB0_449:                               //  %if.then700
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	addi x11, x2, 140
	add x12, x0, x0
	lw x13, 104 ( x2 )              //  4-byte Folded Reload
	nop
	call $_wcstoull_r
	jalr x0, LBB0_451 ( x0 )
LBB0_450:                               //  %if.else703
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	addi x11, x2, 140
	add x12, x0, x0
	lw x13, 104 ( x2 )              //  4-byte Folded Reload
	nop
	call $_wcstoll_r
LBB0_451:                               //  %if.end706
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 848 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 848 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x11, 4 ( x1 )
	jalr x0, LBB0_453 ( x0 )
LBB0_452:                               //  %if.else708
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 848 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 848 ( x2 )
	lw x1, 0 ( x1 )
	nop
LBB0_453:                               //  %if.end713
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x10, 0 ( x1 )
LBB0_454:                               //  %if.end713
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 108 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	lw x7, 128 ( x2 )               //  4-byte Folded Reload
LBB0_455:                               //  %if.end715
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x2, 140
	sub x1, x7, x1
	srai x1, x1, 1
	lw x3, 116 ( x2 )               //  4-byte Folded Reload
	nop
	add x3, x3, x1
	sw x3, 116 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB0_45 ( x0 )
LBB0_456:                               //  %sw.bb722
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x4, 128 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x4, -1
	addi x8, x0, 699
	add x11, x0, x8
	addi x3, x0, 698
	bgtu x1, x3, LBB0_458
LBB0_457:                               //  %sw.bb722
                                        //    in Loop: Header=BB0_5 Depth=1
	add x11, x0, x4
LBB0_458:                               //  %sw.bb722
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 112 ( x2 )               //  4-byte Folded Reload
	nop
	ori x7, x3, 1920
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x5, 116 ( x2 )               //  4-byte Folded Reload
	bgtu x11, x0, LBB0_460
LBB0_459:                               //    in Loop: Header=BB0_5 Depth=1
	add x1, x0, x0
	add x9, x0, x1
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	addi x1, x2, 140
	add x10, x0, x1
	jalr x0, LBB0_531 ( x0 )
LBB0_460:                               //  %for.body733.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x3, x0, 698
	bgeu x3, x1, LBB0_462
LBB0_461:                               //    in Loop: Header=BB0_5 Depth=1
	addi x1, x4, -699
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x0
	jalr x0, LBB0_463 ( x0 )
LBB0_462:                               //  %for.body733.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	add x3, x0, x0
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
LBB0_463:                               //  %for.body733.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x2, 140
	add x10, x0, x1
	sw x3, 76 ( x2 )                //  4-byte Folded Spill
	sw x3, 52 ( x2 )                //  4-byte Folded Spill
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	sw x3, 28 ( x2 )                //  4-byte Folded Spill
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	add x9, x0, x3
LBB0_464:                               //  %for.body733
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x11, 96 ( x2 )               //  4-byte Folded Spill
	sw x10, 100 ( x2 )              //  4-byte Folded Spill
	sw x7, 112 ( x2 )               //  4-byte Folded Spill
	lw x1, 4 ( x12 )
	sw x5, 116 ( x2 )               //  4-byte Folded Spill
	sw x9, 128 ( x2 )               //  4-byte Folded Spill
	bgt x1, x0, LBB0_467
LBB0_465:                               //  %land.lhs.true.i2223
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x12
	call $__ssrefill_r
	lw x9, 128 ( x2 )               //  4-byte Folded Reload
	lw x5, 116 ( x2 )               //  4-byte Folded Reload
	not x8, x0
	bgtu x10, x0, LBB0_512
LBB0_466:                               //  %land.lhs.true.if.end_crit_edge.i2225
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	nop
	lw x1, 4 ( x12 )
LBB0_467:                               //  %_sfgetwc_r.exit2232
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x3, 0 ( x12 )
	nop
	lh x8, 0 ( x3 )
	addi x3, x3, 2
	sw x3, 0 ( x12 )
	addi x1, x1, -2
	sw x1, 4 ( x12 )
	addi x10, x8, -43
	addi x1, x0, 78
	bgtu x10, x1, LBB0_512
LBB0_468:                               //  %_sfgetwc_r.exit2232
                                        //    in Loop: Header=BB0_464 Depth=2
	addi x11, x0, 4
	call $__mulsi3
	lw x9, 128 ( x2 )               //  4-byte Folded Reload
	lw x5, 116 ( x2 )               //  4-byte Folded Reload
	ori x28, x0, JTI0_2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI0_2 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB0_469:                               //  %sw.bb735
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x1, 112 ( x2 )               //  4-byte Folded Reload
	nop
	andi x1, x1, 256
	beqz x1, LBB0_473
LBB0_470:                               //  %if.then738
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	lw x7, 112 ( x2 )               //  4-byte Folded Reload
	nop
	andi x7, x7, -129
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_472
LBB0_471:                               //    in Loop: Header=BB0_464 Depth=2
	add x1, x0, x0
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB0_529 ( x0 )
LBB0_472:                               //  %if.then742
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x11, 96 ( x2 )               //  4-byte Folded Reload
	nop
	addi x11, x11, 1
	addi x1, x1, -1
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB0_530 ( x0 )
LBB0_473:                               //  %sw.bb747
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 24
	srai x1, x1, 24
	sub x1, x0, x1
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	slli x3, x3, 24
	srai x3, x3, 24
	beq x3, x1, LBB0_475
LBB0_474:                               //    in Loop: Header=BB0_5 Depth=1
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x7, 112 ( x2 )               //  4-byte Folded Reload
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB0_516 ( x0 )
LBB0_475:                               //  %if.then753
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x7, 112 ( x2 )               //  4-byte Folded Reload
	nop
	andi x7, x7, -385
	jalr x0, LBB0_479 ( x0 )
LBB0_476:                               //  %sw.bb756
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x7, 112 ( x2 )               //  4-byte Folded Reload
	nop
	andi x1, x7, 128
	bgtu x1, x0, LBB0_478
LBB0_477:                               //    in Loop: Header=BB0_5 Depth=1
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB0_516 ( x0 )
LBB0_478:                               //  %if.then759
                                        //    in Loop: Header=BB0_464 Depth=2
	andi x7, x7, -129
LBB0_479:                               //  %fok
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB0_528 ( x0 )
LBB0_480:                               //  %sw.bb762
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x7, 112 ( x2 )               //  4-byte Folded Reload
	nop
	andi x1, x7, 1792
	xori x1, x1, 1792
	bgtu x1, x0, LBB0_484
LBB0_481:                               //  %sw.bb762
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_484
LBB0_482:                               //  %sw.bb762
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 255
	bgtu x1, x0, LBB0_484
LBB0_483:                               //  %if.then773
                                        //    in Loop: Header=BB0_464 Depth=2
	andi x7, x7, -1921
	add x1, x0, x0
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	slti x1, x0, 1
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_479 ( x0 )
LBB0_484:                               //  %if.end775
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 255
	xori x1, x1, 2
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	bgtu x1, x0, LBB0_486
LBB0_485:                               //    in Loop: Header=BB0_464 Depth=2
	addi x1, x0, 3
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_528 ( x0 )
LBB0_486:                               //  %if.end780
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 255
	xori x3, x1, 4
	beqz x3, LBB0_488
LBB0_487:                               //  %if.end780
                                        //    in Loop: Header=BB0_464 Depth=2
	xori x1, x1, 1
	bgtu x1, x0, LBB0_516
LBB0_488:                               //  %if.then788
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_528 ( x0 )
LBB0_489:                               //  %sw.bb791
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 255
	xori x1, x1, 1
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x7, 112 ( x2 )               //  4-byte Folded Reload
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	bgtu x1, x0, LBB0_516
LBB0_490:                               //    in Loop: Header=BB0_464 Depth=2
	addi x1, x0, 2
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_528 ( x0 )
LBB0_491:                               //  %sw.bb797
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x7, 112 ( x2 )               //  4-byte Folded Reload
	nop
	andi x1, x7, 1792
	xori x1, x1, 1792
	bgtu x1, x0, LBB0_495
LBB0_492:                               //  %sw.bb797
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_495
LBB0_493:                               //  %sw.bb797
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 255
	bgtu x1, x0, LBB0_495
LBB0_494:                               //  %if.then808
                                        //    in Loop: Header=BB0_464 Depth=2
	andi x7, x7, -1921
	addi x8, x0, 105
	add x1, x0, x0
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	slti x1, x0, 1
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_479 ( x0 )
LBB0_495:                               //  %if.end810
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 255
	xori x3, x1, 5
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	beqz x3, LBB0_527
LBB0_496:                               //  %if.end810
                                        //    in Loop: Header=BB0_464 Depth=2
	xori x1, x1, 3
	beqz x1, LBB0_527
LBB0_497:                               //    in Loop: Header=BB0_5 Depth=1
	addi x8, x0, 105
	jalr x0, LBB0_516 ( x0 )
LBB0_498:                               //  %sw.bb821
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 255
	xori x1, x1, 2
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x7, 112 ( x2 )               //  4-byte Folded Reload
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	bgtu x1, x0, LBB0_516
LBB0_499:                               //    in Loop: Header=BB0_464 Depth=2
	addi x1, x0, 3
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_528 ( x0 )
LBB0_500:                               //  %sw.bb827
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 255
	xori x1, x1, 6
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x7, 112 ( x2 )               //  4-byte Folded Reload
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	bgtu x1, x0, LBB0_516
LBB0_501:                               //    in Loop: Header=BB0_464 Depth=2
	addi x1, x0, 7
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_528 ( x0 )
LBB0_502:                               //  %sw.bb833
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 255
	xori x1, x1, 7
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x7, 112 ( x2 )               //  4-byte Folded Reload
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	bgtu x1, x0, LBB0_516
LBB0_503:                               //    in Loop: Header=BB0_464 Depth=2
	addi x1, x0, 8
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_528 ( x0 )
LBB0_504:                               //  %sw.bb839
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x7, 112 ( x2 )               //  4-byte Folded Reload
	nop
	andi x1, x7, 1280
	xori x1, x1, 1024
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	beqz x1, LBB0_507
LBB0_505:                               //  %lor.lhs.false843
                                        //    in Loop: Header=BB0_464 Depth=2
	andi x1, x7, 1024
	beqz x1, LBB0_516
LBB0_506:                               //  %lor.lhs.false843
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_516
LBB0_507:                               //  %if.then848
                                        //    in Loop: Header=BB0_464 Depth=2
	andi x3, x7, 512
	add x1, x0, x10
	add x4, x0, x0
	beq x3, x4, LBB0_509
LBB0_508:                               //  %if.then848
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
LBB0_509:                               //  %if.then848
                                        //    in Loop: Header=BB0_464 Depth=2
	add x4, x0, x0
	bne x3, x4, LBB0_511
LBB0_510:                               //    in Loop: Header=BB0_464 Depth=2
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	lw x4, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x4, x3
	sw x3, 28 ( x2 )                //  4-byte Folded Spill
LBB0_511:                               //  %if.then848
                                        //    in Loop: Header=BB0_464 Depth=2
	andi x3, x7, -1921
	ori x7, x3, 384
	add x3, x0, x0
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_528 ( x0 )
LBB0_512:                               //  %sw.default858
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x7, 112 ( x2 )               //  4-byte Folded Reload
	nop
	andi x1, x7, 512
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB0_515
LBB0_513:                               //  %sw.default858
                                        //    in Loop: Header=BB0_464 Depth=2
	bne x8, x3, LBB0_515
LBB0_514:                               //  %if.then867
                                        //    in Loop: Header=BB0_464 Depth=2
	andi x7, x7, -641
	add x8, x0, x3
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_479 ( x0 )
LBB0_515:                               //  %sw.epilog870
                                        //    in Loop: Header=BB0_5 Depth=1
	xori x1, x8, -1
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	beqz x1, LBB0_531
LBB0_516:                               //  %if.end.i2237
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x1, 12 ( x12 )
	ori x28, x0, 65503 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x12 )
	lw x1, 48 ( x12 )
	nop
	beqz x1, LBB0_521
LBB0_517:                               //  %if.then4.i2241
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 52 ( x12 )
	lw x3, 4 ( x12 )
	nop
	bgt x1, x3, LBB0_520
LBB0_518:                               //  %land.lhs.true.i2244
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	lw x11, 124 ( x2 )              //  4-byte Folded Reload
	nop
	call $__submore
	lw x9, 128 ( x2 )               //  4-byte Folded Reload
	lw x5, 116 ( x2 )               //  4-byte Folded Reload
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	beqz x10, LBB0_520
LBB0_519:                               //    in Loop: Header=BB0_5 Depth=1
	lw x7, 112 ( x2 )               //  4-byte Folded Reload
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB0_531 ( x0 )
LBB0_520:                               //  %if.end9.i2249
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
	nop
	addi x3, x1, -2
	sw x3, 0 ( x12 )
	sb x8, -2 ( x1 )
	lw x1, 4 ( x12 )
	nop
	addi x1, x1, 2
	sw x1, 4 ( x12 )
	jalr x0, LBB0_519 ( x0 )
LBB0_521:                               //  %if.end14.i2252
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 16 ( x12 )
	nop
	bgtu x3, x0, LBB0_524
LBB0_522:                               //  %if.end14.if.end34_crit_edge.i2256
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
LBB0_523:                               //  %if.end34.i2275
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 4 ( x12 )
	nop
	sw x3, 60 ( x12 )
	sw x1, 56 ( x12 )
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x12 )
	addi x1, x0, 3
	sw x1, 52 ( x12 )
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x12 )
	sh x8, 65 ( x12 )
	addi x1, x0, 2
	sw x1, 4 ( x12 )
	jalr x0, LBB0_531 ( x0 )
LBB0_524:                               //  %land.lhs.true18.i2259
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
	nop
	bgeu x3, x1, LBB0_523
LBB0_525:                               //  %land.lhs.true24.i2263
                                        //    in Loop: Header=BB0_5 Depth=1
	lh x3, -2 ( x1 )
	nop
	bne x3, x8, LBB0_523
LBB0_526:                               //  %if.then29.i2266
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x1, -2
	sw x1, 0 ( x12 )
	lw x1, 4 ( x12 )
	nop
	addi x1, x1, 2
	sw x1, 4 ( x12 )
	jalr x0, LBB0_531 ( x0 )
LBB0_527:                               //  %if.then818
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	addi x8, x0, 105
LBB0_528:                               //  %fok
                                        //    in Loop: Header=BB0_464 Depth=2
	sh x8, 0 ( x10 )
	addi x9, x9, 1
LBB0_529:                               //  %fskip
                                        //    in Loop: Header=BB0_464 Depth=2
	lw x11, 96 ( x2 )               //  4-byte Folded Reload
LBB0_530:                               //  %fskip
                                        //    in Loop: Header=BB0_464 Depth=2
	slli x1, x9, 1
	addi x3, x2, 140
	add x10, x1, x3
	addi x5, x5, 1
	addi x11, x11, -1
	bgtu x11, x0, LBB0_464
LBB0_531:                               //  %for.end880
                                        //    in Loop: Header=BB0_5 Depth=1
	add x1, x0, x0
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	beq x3, x1, LBB0_533
LBB0_532:                               //  %for.end880
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x7, x7, -257
LBB0_533:                               //  %for.end880
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 24
	srai x1, x1, 24
	addi x1, x1, -1
	slti x3, x0, 1
	bgtu x1, x3, LBB0_548
LBB0_534:                               //  %while.cond890.preheader
	addi x4, x2, 140
	bgeu x4, x10, LBB0_652
LBB0_535:                               //  %while.body894
                                        //  =>This Inner Loop Header: Depth=1
	add x1, x0, x10
	addi x3, x1, -2
	sw x3, 100 ( x2 )               //  4-byte Folded Spill
	lhu x8, -2 ( x1 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	bne x8, x1, LBB0_537
LBB0_536:                               //  %while.cond890.backedge
                                        //    in Loop: Header=BB0_535 Depth=1
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	nop
	bgtu x10, x4, LBB0_535
	jalr x0, LBB0_652 ( x0 )
LBB0_537:                               //  %if.end.i2281
                                        //    in Loop: Header=BB0_535 Depth=1
	lhu x1, 12 ( x12 )
	ori x28, x0, 65503 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x12 )
	lw x1, 48 ( x12 )
	nop
	beqz x1, LBB0_541
LBB0_538:                               //  %if.then4.i2285
                                        //    in Loop: Header=BB0_535 Depth=1
	lw x1, 52 ( x12 )
	lw x3, 4 ( x12 )
	nop
	bgt x1, x3, LBB0_540
LBB0_539:                               //  %land.lhs.true.i2288
                                        //    in Loop: Header=BB0_535 Depth=1
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	lw x11, 124 ( x2 )              //  4-byte Folded Reload
	nop
	call $__submore
	addi x4, x2, 140
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	bgtu x10, x0, LBB0_536
LBB0_540:                               //  %if.end9.i2293
                                        //    in Loop: Header=BB0_535 Depth=1
	lw x1, 0 ( x12 )
	nop
	addi x3, x1, -2
	sw x3, 0 ( x12 )
	sb x8, -2 ( x1 )
	jalr x0, LBB0_547 ( x0 )
LBB0_541:                               //  %if.end14.i2296
                                        //    in Loop: Header=BB0_535 Depth=1
	lw x3, 16 ( x12 )
	nop
	bgtu x3, x0, LBB0_544
LBB0_542:                               //  %if.end14.if.end34_crit_edge.i2300
                                        //    in Loop: Header=BB0_535 Depth=1
	lw x1, 0 ( x12 )
LBB0_543:                               //  %if.end34.i2318
                                        //    in Loop: Header=BB0_535 Depth=1
	lw x3, 4 ( x12 )
	nop
	sw x3, 60 ( x12 )
	sw x1, 56 ( x12 )
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x12 )
	addi x1, x0, 3
	sw x1, 52 ( x12 )
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x12 )
	sh x8, 65 ( x12 )
	addi x1, x0, 2
	sw x1, 4 ( x12 )
	jalr x0, LBB0_536 ( x0 )
LBB0_544:                               //  %land.lhs.true18.i2303
                                        //    in Loop: Header=BB0_535 Depth=1
	lw x1, 0 ( x12 )
	nop
	bgeu x3, x1, LBB0_543
LBB0_545:                               //  %land.lhs.true24.i2307
                                        //    in Loop: Header=BB0_535 Depth=1
	lhu x3, -2 ( x1 )
	nop
	bne x3, x8, LBB0_543
LBB0_546:                               //  %if.then29.i2310
                                        //    in Loop: Header=BB0_535 Depth=1
	addi x1, x1, -2
	sw x1, 0 ( x12 )
LBB0_547:                               //  %while.cond890.backedge
                                        //    in Loop: Header=BB0_535 Depth=1
	lw x1, 4 ( x12 )
	nop
	addi x1, x1, 2
	sw x1, 4 ( x12 )
	jalr x0, LBB0_536 ( x0 )
LBB0_548:                               //  %if.end900
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 24
	srai x1, x1, 24
	addi x3, x1, -1
	addi x4, x0, 6
	sw x7, 112 ( x2 )               //  4-byte Folded Spill
	bgtu x3, x4, LBB0_570
LBB0_549:                               //  %if.then905
                                        //    in Loop: Header=BB0_5 Depth=1
	slti x1, x1, 3
	bgtu x1, x0, LBB0_557
LBB0_550:                               //  %while.cond910.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x4, 76 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x4, 255
	xori x1, x1, 3
	beqz x1, LBB0_570
LBB0_551:                               //  %while.body915.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	slli x1, x9, 1
	addi x3, x2, 138
	add x8, x1, x3
LBB0_552:                               //  %while.body915
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	slli x1, x4, 24
	ori x28, x0, -16777216 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, -16777216 >> 12 & 0xfffff
	or x3, x3, x28
	add x1, x3, x1
	srai x4, x1, 24
	lhu x7, 0 ( x8 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	beq x7, x1, LBB0_569
LBB0_553:                               //  %if.end.i2324
                                        //    in Loop: Header=BB0_552 Depth=2
	lhu x1, 12 ( x12 )
	ori x28, x0, 65503 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x12 )
	lw x1, 48 ( x12 )
	nop
	beqz x1, LBB0_561
LBB0_554:                               //  %if.then4.i2328
                                        //    in Loop: Header=BB0_552 Depth=2
	lw x1, 52 ( x12 )
	lw x3, 4 ( x12 )
	nop
	bgt x1, x3, LBB0_556
LBB0_555:                               //  %land.lhs.true.i2331
                                        //    in Loop: Header=BB0_552 Depth=2
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	lw x11, 124 ( x2 )              //  4-byte Folded Reload
	sw x5, 116 ( x2 )               //  4-byte Folded Spill
	sw x9, 128 ( x2 )               //  4-byte Folded Spill
	sw x4, 76 ( x2 )                //  4-byte Folded Spill
	sw x7, 100 ( x2 )               //  4-byte Folded Spill
	call $__submore
	lw x7, 100 ( x2 )               //  4-byte Folded Reload
	lw x4, 76 ( x2 )                //  4-byte Folded Reload
	lw x9, 128 ( x2 )               //  4-byte Folded Reload
	lw x5, 116 ( x2 )               //  4-byte Folded Reload
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	bgtu x10, x0, LBB0_569
LBB0_556:                               //  %if.end9.i2336
                                        //    in Loop: Header=BB0_552 Depth=2
	lw x1, 0 ( x12 )
	nop
	addi x3, x1, -2
	sw x3, 0 ( x12 )
	sb x7, -2 ( x1 )
	jalr x0, LBB0_567 ( x0 )
LBB0_557:                               //  %while.cond922.preheader
	ble x9, x0, LBB0_652
LBB0_558:                               //  %while.body926.preheader
	slli x1, x9, 1
	addi x3, x2, 140
	add x1, x1, x3
	addi x4, x1, -2
	addi x8, x9, 1
	slti x5, x0, 1
LBB0_559:                               //  %while.body926
                                        //  =>This Inner Loop Header: Depth=1
	lhu x7, 0 ( x4 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	bne x7, x1, LBB0_572
LBB0_560:                               //  %while.cond922.backedge
                                        //    in Loop: Header=BB0_559 Depth=1
	addi x4, x4, -2
	addi x8, x8, -1
	bgt x8, x5, LBB0_559
	jalr x0, LBB0_652 ( x0 )
LBB0_561:                               //  %if.end14.i2339
                                        //    in Loop: Header=BB0_552 Depth=2
	lw x3, 16 ( x12 )
	nop
	bgtu x3, x0, LBB0_564
LBB0_562:                               //  %if.end14.if.end34_crit_edge.i2343
                                        //    in Loop: Header=BB0_552 Depth=2
	lw x1, 0 ( x12 )
LBB0_563:                               //  %if.end34.i2361
                                        //    in Loop: Header=BB0_552 Depth=2
	lw x3, 4 ( x12 )
	nop
	sw x3, 60 ( x12 )
	sw x1, 56 ( x12 )
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x12 )
	addi x1, x0, 3
	sw x1, 52 ( x12 )
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x12 )
	sh x7, 65 ( x12 )
	addi x1, x0, 2
	jalr x0, LBB0_568 ( x0 )
LBB0_564:                               //  %land.lhs.true18.i2346
                                        //    in Loop: Header=BB0_552 Depth=2
	lw x1, 0 ( x12 )
	nop
	bgeu x3, x1, LBB0_563
LBB0_565:                               //  %land.lhs.true24.i2350
                                        //    in Loop: Header=BB0_552 Depth=2
	lhu x3, -2 ( x1 )
	nop
	bne x3, x7, LBB0_563
LBB0_566:                               //  %if.then29.i2353
                                        //    in Loop: Header=BB0_552 Depth=2
	addi x1, x1, -2
	sw x1, 0 ( x12 )
LBB0_567:                               //  %_sungetwc_r.exit2362
                                        //    in Loop: Header=BB0_552 Depth=2
	lw x1, 4 ( x12 )
	nop
	addi x1, x1, 2
LBB0_568:                               //  %_sungetwc_r.exit2362
                                        //    in Loop: Header=BB0_552 Depth=2
	sw x1, 4 ( x12 )
LBB0_569:                               //  %_sungetwc_r.exit2362
                                        //    in Loop: Header=BB0_552 Depth=2
	addi x9, x9, -1
	addi x8, x8, -2
	addi x5, x5, -1
	addi x1, x0, 3
	bgt x4, x1, LBB0_552
LBB0_570:                               //  %if.end933
                                        //    in Loop: Header=BB0_5 Depth=1
	slli x1, x9, 1
	addi x3, x2, 140
	add x11, x1, x3
	lw x4, 112 ( x2 )               //  4-byte Folded Reload
	nop
	andi x3, x4, 256
	bgtu x3, x0, LBB0_583
LBB0_571:                               //    in Loop: Header=BB0_5 Depth=1
	add x7, x0, x5
	add x9, x0, x11
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_628 ( x0 )
LBB0_572:                               //  %if.end.i2367
                                        //    in Loop: Header=BB0_559 Depth=1
	lhu x1, 12 ( x12 )
	ori x28, x0, 65503 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x12 )
	lw x1, 48 ( x12 )
	nop
	beqz x1, LBB0_576
LBB0_573:                               //  %if.then4.i2371
                                        //    in Loop: Header=BB0_559 Depth=1
	lw x1, 52 ( x12 )
	lw x3, 4 ( x12 )
	nop
	bgt x1, x3, LBB0_575
LBB0_574:                               //  %land.lhs.true.i2374
                                        //    in Loop: Header=BB0_559 Depth=1
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	lw x11, 124 ( x2 )              //  4-byte Folded Reload
	sw x4, 132 ( x2 )               //  4-byte Folded Spill
	sw x7, 128 ( x2 )               //  4-byte Folded Spill
	call $__submore
	lw x7, 128 ( x2 )               //  4-byte Folded Reload
	slti x5, x0, 1
	lw x4, 132 ( x2 )               //  4-byte Folded Reload
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	bgtu x10, x0, LBB0_560
LBB0_575:                               //  %if.end9.i2379
                                        //    in Loop: Header=BB0_559 Depth=1
	lw x1, 0 ( x12 )
	nop
	addi x3, x1, -2
	sw x3, 0 ( x12 )
	sb x7, -2 ( x1 )
	jalr x0, LBB0_582 ( x0 )
LBB0_576:                               //  %if.end14.i2382
                                        //    in Loop: Header=BB0_559 Depth=1
	lw x3, 16 ( x12 )
	nop
	bgtu x3, x0, LBB0_579
LBB0_577:                               //  %if.end14.if.end34_crit_edge.i2386
                                        //    in Loop: Header=BB0_559 Depth=1
	lw x1, 0 ( x12 )
LBB0_578:                               //  %if.end34.i2404
                                        //    in Loop: Header=BB0_559 Depth=1
	lw x3, 4 ( x12 )
	nop
	sw x3, 60 ( x12 )
	sw x1, 56 ( x12 )
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x12 )
	addi x1, x0, 3
	sw x1, 52 ( x12 )
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x12 )
	sh x7, 65 ( x12 )
	addi x1, x0, 2
	sw x1, 4 ( x12 )
	jalr x0, LBB0_560 ( x0 )
LBB0_579:                               //  %land.lhs.true18.i2389
                                        //    in Loop: Header=BB0_559 Depth=1
	lw x1, 0 ( x12 )
	nop
	bgeu x3, x1, LBB0_578
LBB0_580:                               //  %land.lhs.true24.i2393
                                        //    in Loop: Header=BB0_559 Depth=1
	lhu x3, -2 ( x1 )
	nop
	bne x3, x7, LBB0_578
LBB0_581:                               //  %if.then29.i2396
                                        //    in Loop: Header=BB0_559 Depth=1
	addi x1, x1, -2
	sw x1, 0 ( x12 )
LBB0_582:                               //  %while.cond922.backedge
                                        //    in Loop: Header=BB0_559 Depth=1
	lw x1, 4 ( x12 )
	nop
	addi x1, x1, 2
	sw x1, 4 ( x12 )
	jalr x0, LBB0_560 ( x0 )
LBB0_583:                               //  %if.then936
                                        //    in Loop: Header=BB0_5 Depth=1
	add x8, x0, x5
	andi x3, x4, 1024
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	beqz x3, LBB0_599
LBB0_584:                               //  %while.cond940.preheader
	ble x9, x0, LBB0_652
LBB0_585:                               //  %while.body944.preheader
	addi x3, x2, 140
	add x1, x1, x3
	addi x4, x1, -2
	addi x8, x9, 1
	slti x5, x0, 1
LBB0_586:                               //  %while.body944
                                        //  =>This Inner Loop Header: Depth=1
	lhu x7, 0 ( x4 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	bne x7, x1, LBB0_588
LBB0_587:                               //  %while.cond940.backedge
                                        //    in Loop: Header=BB0_586 Depth=1
	addi x4, x4, -2
	addi x8, x8, -1
	bgt x8, x5, LBB0_586
	jalr x0, LBB0_652 ( x0 )
LBB0_588:                               //  %if.end.i2410
                                        //    in Loop: Header=BB0_586 Depth=1
	lhu x1, 12 ( x12 )
	ori x28, x0, 65503 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x12 )
	lw x1, 48 ( x12 )
	nop
	beqz x1, LBB0_592
LBB0_589:                               //  %if.then4.i2414
                                        //    in Loop: Header=BB0_586 Depth=1
	lw x1, 52 ( x12 )
	lw x3, 4 ( x12 )
	nop
	bgt x1, x3, LBB0_591
LBB0_590:                               //  %land.lhs.true.i2417
                                        //    in Loop: Header=BB0_586 Depth=1
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	lw x11, 124 ( x2 )              //  4-byte Folded Reload
	sw x4, 132 ( x2 )               //  4-byte Folded Spill
	sw x7, 128 ( x2 )               //  4-byte Folded Spill
	call $__submore
	lw x7, 128 ( x2 )               //  4-byte Folded Reload
	slti x5, x0, 1
	lw x4, 132 ( x2 )               //  4-byte Folded Reload
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	bgtu x10, x0, LBB0_587
LBB0_591:                               //  %if.end9.i2422
                                        //    in Loop: Header=BB0_586 Depth=1
	lw x1, 0 ( x12 )
	nop
	addi x3, x1, -2
	sw x3, 0 ( x12 )
	sb x7, -2 ( x1 )
	jalr x0, LBB0_598 ( x0 )
LBB0_592:                               //  %if.end14.i2425
                                        //    in Loop: Header=BB0_586 Depth=1
	lw x3, 16 ( x12 )
	nop
	bgtu x3, x0, LBB0_595
LBB0_593:                               //  %if.end14.if.end34_crit_edge.i2429
                                        //    in Loop: Header=BB0_586 Depth=1
	lw x1, 0 ( x12 )
LBB0_594:                               //  %if.end34.i2447
                                        //    in Loop: Header=BB0_586 Depth=1
	lw x3, 4 ( x12 )
	nop
	sw x3, 60 ( x12 )
	sw x1, 56 ( x12 )
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x12 )
	addi x1, x0, 3
	sw x1, 52 ( x12 )
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x12 )
	sh x7, 65 ( x12 )
	addi x1, x0, 2
	sw x1, 4 ( x12 )
	jalr x0, LBB0_587 ( x0 )
LBB0_595:                               //  %land.lhs.true18.i2432
                                        //    in Loop: Header=BB0_586 Depth=1
	lw x1, 0 ( x12 )
	nop
	bgeu x3, x1, LBB0_594
LBB0_596:                               //  %land.lhs.true24.i2436
                                        //    in Loop: Header=BB0_586 Depth=1
	lhu x3, -2 ( x1 )
	nop
	bne x3, x7, LBB0_594
LBB0_597:                               //  %if.then29.i2439
                                        //    in Loop: Header=BB0_586 Depth=1
	addi x1, x1, -2
	sw x1, 0 ( x12 )
LBB0_598:                               //  %while.cond940.backedge
                                        //    in Loop: Header=BB0_586 Depth=1
	lw x1, 4 ( x12 )
	nop
	addi x1, x1, 2
	sw x1, 4 ( x12 )
	jalr x0, LBB0_587 ( x0 )
LBB0_599:                               //  %if.end950
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x7, x8, -1
	addi x9, x11, -2
	lhu x14, -2 ( x11 )
	nop
	slli x1, x14, 16
	srai x13, x1, 16
	xori x1, x14, 69
	beqz x1, LBB0_615
LBB0_600:                               //  %if.end950
                                        //    in Loop: Header=BB0_5 Depth=1
	xori x1, x14, 101
	beqz x1, LBB0_615
LBB0_601:                               //  %if.end950
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	add x4, x0, x8
	beq x14, x1, LBB0_614
LBB0_602:                               //  %if.end.i2453
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x1, 12 ( x12 )
	ori x28, x0, 65503 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x12 )
	lw x1, 48 ( x12 )
	nop
	beqz x1, LBB0_606
LBB0_603:                               //  %if.then4.i2457
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 52 ( x12 )
	lw x3, 4 ( x12 )
	nop
	bgt x1, x3, LBB0_605
LBB0_604:                               //  %land.lhs.true.i2460
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	sw x11, 128 ( x2 )              //  4-byte Folded Spill
	lw x11, 124 ( x2 )              //  4-byte Folded Reload
	sw x14, 116 ( x2 )              //  4-byte Folded Spill
	call $__submore
	lw x14, 116 ( x2 )              //  4-byte Folded Reload
	lw x11, 128 ( x2 )              //  4-byte Folded Reload
	add x4, x0, x8
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	bgtu x10, x0, LBB0_614
LBB0_605:                               //  %if.end9.i2465
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
	nop
	addi x3, x1, -2
	sw x3, 0 ( x12 )
	sb x14, -2 ( x1 )
	jalr x0, LBB0_612 ( x0 )
LBB0_606:                               //  %if.end14.i2468
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 16 ( x12 )
	nop
	bgtu x3, x0, LBB0_609
LBB0_607:                               //  %if.end14.if.end34_crit_edge.i2472
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
LBB0_608:                               //  %if.end34.i2490
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 4 ( x12 )
	nop
	sw x3, 60 ( x12 )
	sw x1, 56 ( x12 )
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x12 )
	addi x1, x0, 3
	sw x1, 52 ( x12 )
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x12 )
	sh x14, 65 ( x12 )
	addi x1, x0, 2
	jalr x0, LBB0_613 ( x0 )
LBB0_609:                               //  %land.lhs.true18.i2475
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
	nop
	bgeu x3, x1, LBB0_608
LBB0_610:                               //  %land.lhs.true24.i2479
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x3, -2 ( x1 )
	nop
	bne x3, x14, LBB0_608
LBB0_611:                               //  %if.then29.i2482
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x1, -2
	sw x1, 0 ( x12 )
LBB0_612:                               //  %_sungetwc_r.exit2491
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 4 ( x12 )
	nop
	addi x1, x1, 2
LBB0_613:                               //  %_sungetwc_r.exit2491
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x1, 4 ( x12 )
LBB0_614:                               //  %_sungetwc_r.exit2491
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x7, x4, -2
	addi x9, x11, -4
	lh x13, -4 ( x11 )
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	lw x4, 112 ( x2 )               //  4-byte Folded Reload
LBB0_615:                               //  %if.end964
                                        //    in Loop: Header=BB0_5 Depth=1
	xori x1, x13, -1
	beqz x1, LBB0_628
LBB0_616:                               //  %if.end.i2496
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x1, 12 ( x12 )
	ori x28, x0, 65503 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x12 )
	lw x1, 48 ( x12 )
	nop
	beqz x1, LBB0_621
LBB0_617:                               //  %if.then4.i2500
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 52 ( x12 )
	lw x3, 4 ( x12 )
	nop
	bgt x1, x3, LBB0_620
LBB0_618:                               //  %land.lhs.true.i2503
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	lw x11, 124 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x7
	sw x9, 128 ( x2 )               //  4-byte Folded Spill
	sw x13, 116 ( x2 )              //  4-byte Folded Spill
	call $__submore
	lw x13, 116 ( x2 )              //  4-byte Folded Reload
	lw x9, 128 ( x2 )               //  4-byte Folded Reload
	add x7, x0, x8
	lw x12, 124 ( x2 )              //  4-byte Folded Reload
	beqz x10, LBB0_620
LBB0_619:                               //    in Loop: Header=BB0_5 Depth=1
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	lw x4, 112 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_628 ( x0 )
LBB0_620:                               //  %if.end9.i2508
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
	nop
	addi x3, x1, -2
	sw x3, 0 ( x12 )
	sb x13, -2 ( x1 )
	lw x1, 4 ( x12 )
	nop
	addi x1, x1, 2
	sw x1, 4 ( x12 )
	jalr x0, LBB0_619 ( x0 )
LBB0_621:                               //  %if.end14.i2511
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 16 ( x12 )
	nop
	bgtu x3, x0, LBB0_624
LBB0_622:                               //  %if.end14.if.end34_crit_edge.i2515
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
LBB0_623:                               //  %if.end34.i2534
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 4 ( x12 )
	nop
	sw x3, 60 ( x12 )
	sw x1, 56 ( x12 )
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x12 )
	addi x1, x0, 3
	sw x1, 52 ( x12 )
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x12 )
	sh x13, 65 ( x12 )
	addi x1, x0, 2
	jalr x0, LBB0_627 ( x0 )
LBB0_624:                               //  %land.lhs.true18.i2518
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x12 )
	nop
	bgeu x3, x1, LBB0_623
LBB0_625:                               //  %land.lhs.true24.i2522
                                        //    in Loop: Header=BB0_5 Depth=1
	lh x3, -2 ( x1 )
	nop
	bne x3, x13, LBB0_623
LBB0_626:                               //  %if.then29.i2525
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x1, -2
	sw x1, 0 ( x12 )
	lw x1, 4 ( x12 )
	nop
	addi x1, x1, 2
LBB0_627:                               //  %if.end966
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x1, 4 ( x12 )
LBB0_628:                               //  %if.end966
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x4, 16
	beqz x1, LBB0_630
LBB0_629:                               //    in Loop: Header=BB0_5 Depth=1
	sw x7, 116 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB0_45 ( x0 )
LBB0_630:                               //  %if.then970
                                        //    in Loop: Header=BB0_5 Depth=1
	sh x0, 0 ( x9 )
	andi x1, x4, 1536
	xori x1, x1, 1024
	sw x7, 128 ( x2 )               //  4-byte Folded Spill
	beqz x1, LBB0_633
LBB0_631:                               //  %if.else978
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_638
LBB0_632:                               //  %if.end985.thread2578
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	addi x11, x8, 2
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x0
	addi x13, x0, 10
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	call $_wcstol_r
	add x4, x0, x8
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x10, x1
	jalr x0, LBB0_635 ( x0 )
LBB0_633:                               //  %if.end985
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x3, x1
	beqz x1, LBB0_638
LBB0_634:                               //    in Loop: Header=BB0_5 Depth=1
	sub x1, x0, x1
	add x4, x0, x9
LBB0_635:                               //  %if.then987
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x3, x4, LBB0_637
LBB0_636:                               //  %if.then987
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
LBB0_637:                               //  %if.then987
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x1, 12 ( x2 )
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 8 ( x2 )
	addi x1, x0, 11
	sw x1, 4 ( x2 )
	sw x4, 0 ( x2 )
	call $swprintf
LBB0_638:                               //  %if.end1000
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	addi x11, x2, 140
	add x12, x0, x0
	call $_wcstod_r
	lw x3, 112 ( x2 )               //  4-byte Folded Reload
	nop
	andi x1, x3, 1
	beqz x1, LBB0_640
LBB0_639:                               //  %if.then1005
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 848 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 848 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x11, 4 ( x1 )
	jalr x0, LBB0_644 ( x0 )
LBB0_640:                               //  %if.else1007
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x3, 2
	bgtu x1, x0, LBB0_639
LBB0_641:                               //  %if.else1012
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 848 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 848 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 116 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x10
	sw x11, 112 ( x2 )              //  4-byte Folded Spill
	call $__fpclassifyd
	bgtu x10, x0, LBB0_646
LBB0_642:                               //  %if.then1017
                                        //    in Loop: Header=BB0_5 Depth=1
	add x10, x0, x0
	call $nanf
LBB0_643:                               //  %for.cond.backedge
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 116 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_644:                               //  %for.cond.backedge
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x10, 0 ( x1 )
	lw x1, 108 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	lw x1, 128 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_645:                               //  %for.cond.backedge
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x1, 116 ( x2 )               //  4-byte Folded Spill
	lw x5, 132 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_45 ( x0 )
LBB0_646:                               //  %if.else1019
                                        //    in Loop: Header=BB0_5 Depth=1
	add x10, x0, x8
	lw x11, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $__truncdfsf2
	jalr x0, LBB0_643 ( x0 )
LBB0_647:                               //  %if.end34.i1595
	addi x3, x0, 3
	addi x4, x0, 2
	sw x5, 60 ( x12 )
	sw x1, 56 ( x12 )
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x12 )
	sw x3, 52 ( x12 )
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x12 )
	sh x8, 65 ( x12 )
	sw x4, 4 ( x12 )
LBB0_648:                               //  %input_failure
	lw x1, 108 ( x2 )               //  4-byte Folded Reload
	nop
	beqz x1, LBB0_650
LBB0_649:                               //  %land.lhs.true1034
	lbu x1, 12 ( x12 )
	nop
	andi x1, x1, 64
	srli x1, x1, 6
	beqz x1, LBB0_652
LBB0_650:                               //  %cleanup1043.loopexit3565
	not x1, x0
LBB0_651:                               //  %cleanup1043
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
LBB0_652:                               //  %cleanup1043
	lw x10, 108 ( x2 )              //  4-byte Folded Reload
	lw x8, 852 ( x2 )               //  4-byte Folded Reload
	lw x1, 860 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 864
$cfi5:
	.cfi_adjust_cfa_offset -864
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__ssvfwscanf_r, ($func_end0)-($__ssvfwscanf_r)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	LBB0_650
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_29
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_51
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_55
	.long	LBB0_55
	.long	LBB0_55
	.long	LBB0_55
	.long	LBB0_55
	.long	LBB0_55
	.long	LBB0_55
	.long	LBB0_55
	.long	LBB0_55
	.long	LBB0_55
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_85
	.long	LBB0_652
	.long	LBB0_85
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_54
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_56
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_59
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_68
	.long	LBB0_79
	.long	LBB0_85
	.long	LBB0_85
	.long	LBB0_85
	.long	LBB0_53
	.long	LBB0_82
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_46
	.long	LBB0_652
	.long	LBB0_70
	.long	LBB0_83
	.long	LBB0_69
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_58
	.long	LBB0_652
	.long	LBB0_84
	.long	LBB0_652
	.long	LBB0_652
	.long	LBB0_56
JTI0_1:
	.long	LBB0_111
	.long	LBB0_166
	.long	LBB0_290
	.long	LBB0_372
	.long	LBB0_456
JTI0_2:
	.long	LBB0_476
	.long	LBB0_512
	.long	LBB0_476
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_469
	.long	LBB0_473
	.long	LBB0_473
	.long	LBB0_473
	.long	LBB0_473
	.long	LBB0_473
	.long	LBB0_473
	.long	LBB0_473
	.long	LBB0_473
	.long	LBB0_473
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_489
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_504
	.long	LBB0_498
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_480
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_500
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_502
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_489
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_504
	.long	LBB0_498
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_491
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_480
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_500
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_512
	.long	LBB0_502
JTI0_3:
	.long	LBB0_413
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_395
	.long	LBB0_402
	.long	LBB0_395
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_384
	.long	LBB0_392
	.long	LBB0_392
	.long	LBB0_392
	.long	LBB0_392
	.long	LBB0_392
	.long	LBB0_392
	.long	LBB0_392
	.long	LBB0_393
	.long	LBB0_393
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_401
	.long	LBB0_401
	.long	LBB0_401
	.long	LBB0_401
	.long	LBB0_401
	.long	LBB0_401
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_398
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_401
	.long	LBB0_401
	.long	LBB0_401
	.long	LBB0_401
	.long	LBB0_401
	.long	LBB0_401
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_402
	.long	LBB0_398

	.address_space	0	
	.type	$__ssvfwscanf_r.basefix,@object //  @__ssvfwscanf_r.basefix
	.p2align	1
$__ssvfwscanf_r.basefix:
	.short	10                      //  0xa
	.short	1                       //  0x1
	.short	2                       //  0x2
	.short	3                       //  0x3
	.short	4                       //  0x4
	.short	5                       //  0x5
	.short	6                       //  0x6
	.short	7                       //  0x7
	.short	8                       //  0x8
	.short	9                       //  0x9
	.short	10                      //  0xa
	.short	11                      //  0xb
	.short	12                      //  0xc
	.short	13                      //  0xd
	.short	14                      //  0xe
	.short	15                      //  0xf
	.short	16                      //  0x10
	.size	$__ssvfwscanf_r.basefix, 34

	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str2.2,"aMS",@progbits,2
	.p2align	1
$.str:
	.short	101                     //  0x65
	.short	37                      //  0x25
	.short	108                     //  0x6c
	.short	100                     //  0x64
	.short	0                       //  0x0
	.size	$.str, 10


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
