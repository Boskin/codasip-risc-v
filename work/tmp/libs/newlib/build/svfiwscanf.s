	.text
	.file	"svfiwscanf.bc"
	.globl	$__ssvfiwscanf_r
	.type	$__ssvfiwscanf_r,@function
$__ssvfiwscanf_r:                       //  @__ssvfiwscanf_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -200
$cfi2:
	.cfi_adjust_cfa_offset 200
	sw x1, 196 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 188 ( x2 )               //  4-byte Folded Spill
	sw x10, 76 ( x2 )               //  4-byte Folded Spill
	lh x3, 12 ( x11 )
	lui x1, 8192>>12 
	sw x13, 184 ( x2 )
	and x4, x1, x3
	bgtu x4, x0, LBB0_2
LBB0_1:                                 //  %if.then
	or x3, x1, x3
	sh x3, 12 ( x11 )
	lw x3, 100 ( x11 )
	nop
	or x1, x1, x3
	sw x1, 100 ( x11 )
LBB0_2:                                 //  %for.cond.preheader
	lhu x4, 0 ( x12 )
	nop
	bgtu x4, x0, LBB0_4
LBB0_3:
	add x1, x0, x0
	jalr x0, LBB0_465 ( x0 )
LBB0_4:                                 //  %if.end8.lr.ph
	slli x1, x4, 16
	add x3, x0, x0
	srai x8, x1, 16
	addi x1, x11, 65
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	addi x1, x11, 64
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	sw x3, 52 ( x2 )                //  4-byte Folded Spill
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
	sw x3, 60 ( x2 )                //  4-byte Folded Spill
	sw x3, 72 ( x2 )                //  4-byte Folded Spill
	sw x3, 68 ( x2 )                //  4-byte Folded Spill
	sw x11, 80 ( x2 )               //  4-byte Folded Spill
LBB0_5:                                 //  %if.end8
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_6 Depth 2
                                        //      Child Loop BB0_28 Depth 2
                                        //        Child Loop BB0_29 Depth 3
                                        //          Child Loop BB0_30 Depth 4
                                        //      Child Loop BB0_68 Depth 2
                                        //      Child Loop BB0_92 Depth 2
                                        //      Child Loop BB0_119 Depth 2
                                        //      Child Loop BB0_124 Depth 2
                                        //      Child Loop BB0_136 Depth 2
                                        //      Child Loop BB0_140 Depth 2
                                        //      Child Loop BB0_381 Depth 2
                                        //      Child Loop BB0_299 Depth 2
                                        //      Child Loop BB0_313 Depth 2
                                        //      Child Loop BB0_336 Depth 2
                                        //      Child Loop BB0_340 Depth 2
                                        //      Child Loop BB0_176 Depth 2
                                        //      Child Loop BB0_190 Depth 2
                                        //      Child Loop BB0_208 Depth 2
                                        //      Child Loop BB0_221 Depth 2
                                        //      Child Loop BB0_241 Depth 2
                                        //      Child Loop BB0_266 Depth 2
	sw x4, 84 ( x2 )                //  4-byte Folded Spill
	addi x12, x12, 2
	sw x12, 88 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $iswspace
	beqz x10, LBB0_26
LBB0_6:                                 //  %while.cond
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	nop
	lw x1, 4 ( x11 )
	nop
	bgt x1, x0, LBB0_10
LBB0_7:                                 //  %land.lhs.true.i
                                        //    in Loop: Header=BB0_6 Depth=2
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x11
	call $__ssrefill_r
	beqz x10, LBB0_9
LBB0_8:                                 //    in Loop: Header=BB0_5 Depth=1
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_48 ( x0 )
LBB0_9:                                 //  %land.lhs.true.if.end_crit_edge.i
                                        //    in Loop: Header=BB0_6 Depth=2
	lw x1, 4 ( x8 )
	add x11, x0, x8
LBB0_10:                                //  %_sfgetwc_r.exit
                                        //    in Loop: Header=BB0_6 Depth=2
	lw x3, 0 ( x11 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lhu x8, 0 ( x3 )
	addi x3, x3, 2
	addi x1, x1, -2
	lui x4, 65535 >> 12 & 0xfffff
	or x4, x4, x28
	sw x3, 0 ( x11 )
	sw x1, 4 ( x11 )
	bne x8, x4, LBB0_12
LBB0_11:                                //    in Loop: Header=BB0_5 Depth=1
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_48 ( x0 )
LBB0_12:                                //  %land.rhs
                                        //    in Loop: Header=BB0_6 Depth=2
	slli x1, x8, 16
	srai x10, x1, 16
	call $iswspace
	bgtu x10, x0, LBB0_6
LBB0_13:                                //  %if.end.i1082
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, 65503 & 0xfff
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	nop
	lhu x1, 12 ( x11 )
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x11 )
	lw x1, 48 ( x11 )
	nop
	beqz x1, LBB0_18
LBB0_14:                                //  %if.then4.i
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 52 ( x11 )
	lw x3, 4 ( x11 )
	nop
	bgt x1, x3, LBB0_17
LBB0_15:                                //  %land.lhs.true.i1086
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	nop
	call $__submore
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	beqz x10, LBB0_17
LBB0_16:                                //    in Loop: Header=BB0_5 Depth=1
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_48 ( x0 )
LBB0_17:                                //  %if.end9.i
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x11 )
	nop
	addi x3, x1, -2
	sw x3, 0 ( x11 )
	sb x8, -2 ( x1 )
	lw x1, 4 ( x11 )
	nop
	addi x1, x1, 2
	sw x1, 4 ( x11 )
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_48 ( x0 )
LBB0_18:                                //  %if.end14.i
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 16 ( x11 )
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	bgtu x3, x0, LBB0_22
LBB0_19:                                //  %if.end14.if.end34_crit_edge.i
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x11 )
LBB0_20:                                //  %if.end34.i
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 4 ( x11 )
	nop
	sw x3, 60 ( x11 )
	sw x1, 56 ( x11 )
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x11 )
	addi x1, x0, 3
	sw x1, 52 ( x11 )
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x11 )
	sh x8, 65 ( x11 )
	addi x1, x0, 2
	sw x1, 4 ( x11 )
	jalr x0, LBB0_48 ( x0 )
LBB0_21:                                //  %if.end14.i1485
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 16 ( x11 )
	nop
	beqz x3, LBB0_19
LBB0_22:                                //  %land.lhs.true18.i
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x11 )
	nop
	bgeu x3, x1, LBB0_20
LBB0_23:                                //  %land.lhs.true24.i
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x3, -2 ( x1 )
	nop
	bne x3, x8, LBB0_20
LBB0_24:                                //  %if.then29.i
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x1, -2
	sw x1, 0 ( x11 )
LBB0_25:                                //  %for.cond.backedge
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 4 ( x11 )
	nop
	addi x1, x1, 2
	sw x1, 4 ( x11 )
	jalr x0, LBB0_48 ( x0 )
LBB0_26:                                //  %if.end21
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x8, 64 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	and x1, x1, x3
	xori x1, x1, 37
	bgtu x1, x0, LBB0_33
LBB0_27:                                //  %again.outer.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x7, 88 ( x2 )                //  4-byte Folded Reload
	add x1, x0, x0
	add x5, x0, x1
LBB0_28:                                //  %again.outer
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_29 Depth 3
                                        //          Child Loop BB0_30 Depth 4
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
LBB0_29:                                //  %again.outer
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_28 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_30 Depth 4
	addi x7, x7, 2
LBB0_30:                                //  %again
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_28 Depth=2
                                        //        Parent Loop BB0_29 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	lh x8, -2 ( x7 )
	addi x1, x0, 120
	bgeu x1, x8, LBB0_468
LBB0_467:                               //  %again
                                        //    in Loop: Header=BB0_30 Depth=4
	jalr x0, LBB0_466 ( x0 )
LBB0_468:                               //  %again
                                        //    in Loop: Header=BB0_30 Depth=4
LBB0_31:                                //  %again
                                        //    in Loop: Header=BB0_30 Depth=4
	sw x7, 88 ( x2 )                //  4-byte Folded Spill
	sw x5, 84 ( x2 )                //  4-byte Folded Spill
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
LBB0_32:                                //  %literal.loopexit
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x0, 37
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
LBB0_33:                                //  %literal
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x9, 88 ( x2 )                //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	nop
	lw x3, 4 ( x11 )
	nop
	bgt x3, x0, LBB0_36
LBB0_34:                                //  %land.lhs.true.i1094
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x9
	call $__ssrefill_r
	add x9, x0, x8
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	beqz x10, LBB0_470
LBB0_469:                               //  %land.lhs.true.i1094
                                        //    in Loop: Header=BB0_5 Depth=1
	jalr x0, LBB0_462 ( x0 )
LBB0_470:                               //  %land.lhs.true.i1094
                                        //    in Loop: Header=BB0_5 Depth=1
LBB0_35:                                //  %land.lhs.true.if.end_crit_edge.i1096
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 4 ( x11 )
LBB0_36:                                //  %_sfgetwc_r.exit1103
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x4, 0 ( x11 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lhu x8, 0 ( x4 )
	addi x1, x4, 2
	addi x5, x3, -2
	lui x7, 65535 >> 12 & 0xfffff
	or x7, x7, x28
	sw x1, 0 ( x11 )
	sw x5, 4 ( x11 )
	bne x8, x7, LBB0_472
LBB0_471:                               //  %_sfgetwc_r.exit1103
                                        //    in Loop: Header=BB0_5 Depth=1
	jalr x0, LBB0_462 ( x0 )
LBB0_472:                               //  %_sfgetwc_r.exit1103
                                        //    in Loop: Header=BB0_5 Depth=1
LBB0_37:                                //  %if.end32
                                        //    in Loop: Header=BB0_5 Depth=1
	slli x7, x8, 16
	srai x7, x7, 16
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	nop
	beq x7, x10, LBB0_47
LBB0_38:                                //  %if.end.i1108
	ori x28, x0, 65503 & 0xfff
	lhu x7, 12 ( x11 )
	slli x28, x28, 20
	srli x28, x28, 20
	lui x9, 65503 >> 12 & 0xfffff
	or x9, x9, x28
	and x7, x9, x7
	sh x7, 12 ( x11 )
	lw x7, 48 ( x11 )
	nop
	beqz x7, LBB0_43
LBB0_39:                                //  %if.then4.i1112
	lw x3, 52 ( x11 )
	nop
	bgt x3, x5, LBB0_42
LBB0_40:                                //  %land.lhs.true.i1115
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	nop
	call $__submore
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	beqz x10, LBB0_474
LBB0_473:                               //  %land.lhs.true.i1115
	jalr x0, LBB0_462 ( x0 )
LBB0_474:                               //  %land.lhs.true.i1115
LBB0_41:                                //  %land.lhs.true.i1115.if.end9.i1120_crit_edge
	lw x1, 0 ( x11 )
	nop
LBB0_42:                                //  %if.end9.i1120
	addi x3, x1, -2
	sw x3, 0 ( x11 )
	sb x8, -2 ( x1 )
	lw x1, 4 ( x11 )
	nop
	addi x1, x1, 2
	sw x1, 4 ( x11 )
	jalr x0, LBB0_462 ( x0 )
LBB0_43:                                //  %if.end14.i1123
	lw x7, 16 ( x11 )
	nop
	bgtu x7, x0, LBB0_476
LBB0_475:                               //  %if.end14.i1123
	jalr x0, LBB0_461 ( x0 )
LBB0_476:                               //  %if.end14.i1123
LBB0_44:                                //  %if.end14.i1123
	bgtu x1, x7, LBB0_478
LBB0_477:                               //  %if.end14.i1123
	jalr x0, LBB0_461 ( x0 )
LBB0_478:                               //  %if.end14.i1123
LBB0_45:                                //  %land.lhs.true24.i1134
	lhu x7, 0 ( x4 )
	nop
	beq x7, x8, LBB0_480
LBB0_479:                               //  %land.lhs.true24.i1134
	jalr x0, LBB0_461 ( x0 )
LBB0_480:                               //  %land.lhs.true24.i1134
LBB0_46:                                //  %if.then29.i1137
	sw x4, 0 ( x11 )
	sw x3, 4 ( x11 )
	jalr x0, LBB0_462 ( x0 )
LBB0_47:                                //  %if.end37
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 72 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x9
LBB0_48:                                //  %for.cond.backedge
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x4, 0 ( x12 )
	nop
	slli x1, x4, 16
	srai x8, x1, 16
	bgtu x4, x0, LBB0_5
	jalr x0, LBB0_466 ( x0 )
LBB0_49:                                //  %sw.bb40
                                        //    in Loop: Header=BB0_28 Depth=2
	lw x7, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lhu x1, 0 ( x7 )
	addi x3, x0, 108
	bne x1, x3, LBB0_51
LBB0_50:                                //    in Loop: Header=BB0_28 Depth=2
	addi x7, x7, 2
LBB0_51:                                //  %sw.bb40
                                        //    in Loop: Header=BB0_28 Depth=2
	addi x3, x0, 2
	addi x4, x0, 108
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	beq x1, x4, LBB0_53
LBB0_52:                                //  %sw.bb40
                                        //    in Loop: Header=BB0_28 Depth=2
	slti x3, x0, 1
LBB0_53:                                //  %sw.bb40
                                        //    in Loop: Header=BB0_28 Depth=2
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	or x1, x3, x1
	jalr x0, LBB0_28 ( x0 )
LBB0_54:                                //  %again.outer.backedge.loopexit2191
                                        //    in Loop: Header=BB0_29 Depth=3
	addi x1, x0, 16
LBB0_55:                                //  %again.outer
                                        //    in Loop: Header=BB0_29 Depth=3
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	or x3, x1, x3
	sw x3, 64 ( x2 )                //  4-byte Folded Spill
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	lw x7, 88 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_29 ( x0 )
LBB0_56:                                //  %again.outer.backedge.loopexit2376
                                        //    in Loop: Header=BB0_29 Depth=3
	addi x1, x0, 4
	jalr x0, LBB0_55 ( x0 )
LBB0_57:                                //  %again.outer.backedge.loopexit
                                        //    in Loop: Header=BB0_29 Depth=3
	addi x1, x0, 2
	jalr x0, LBB0_55 ( x0 )
LBB0_58:                                //  %sw.bb53
                                        //    in Loop: Header=BB0_30 Depth=4
	lw x10, 84 ( x2 )               //  4-byte Folded Reload
	addi x11, x0, 10
	call $__mulsi3
	add x1, x8, x10
	lw x7, 88 ( x2 )                //  4-byte Folded Reload
	nop
	addi x7, x7, 2
	addi x5, x1, -48
	jalr x0, LBB0_30 ( x0 )
LBB0_59:                                //  %sw.bb58
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, $_wcstoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_wcstoul_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	nop
	ori x4, x4, 512
LBB0_60:                                //  %sw.epilog
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	addi x1, x0, 3
	add x3, x0, x1
	addi x1, x0, 16
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
LBB0_61:                                //  %sw.epilog
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	lui x8, 65535 >> 12 & 0xfffff
	jalr x0, LBB0_89 ( x0 )
LBB0_62:                                //  %sw.bb61
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x7, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lhu x3, 0 ( x7 )
	addi x1, x0, 94
	bne x3, x1, LBB0_64
LBB0_63:                                //    in Loop: Header=BB0_5 Depth=1
	addi x1, x7, 2
	jalr x0, LBB0_65 ( x0 )
LBB0_64:                                //  %sw.bb61
                                        //    in Loop: Header=BB0_5 Depth=1
	add x1, x0, x7
LBB0_65:                                //  %sw.bb61
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x4, 0 ( x1 )
	addi x5, x0, 93
	bne x4, x5, LBB0_67
LBB0_66:                                //    in Loop: Header=BB0_5 Depth=1
	addi x1, x1, 2
LBB0_67:                                //  %sw.bb61
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	lui x8, 65535 >> 12 & 0xfffff
	xori x3, x3, 94
	seqz x3, x3
	andi x3, x3, 1
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
LBB0_68:                                //  %while.cond75
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x12, x1, 2
	lhu x3, 0 ( x1 )
	nop
	xori x1, x3, 93
	beqz x1, LBB0_70
LBB0_69:                                //  %while.cond75
                                        //    in Loop: Header=BB0_68 Depth=2
	add x1, x0, x12
	bgtu x3, x0, LBB0_68
LBB0_70:                                //  %while.end86
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x12, -2
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	ori x4, x4, 64
	slti x1, x0, 1
	add x3, x0, x1
	sw x7, 52 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_89 ( x0 )
LBB0_71:                                //  %sw.bb89
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	nop
	ori x4, x4, 64
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	add x1, x0, x0
	add x3, x0, x1
	jalr x0, LBB0_61 ( x0 )
LBB0_72:                                //  %sw.bb91
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, $_wcstoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_wcstoul_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	nop
	ori x4, x4, 544
	jalr x0, LBB0_60 ( x0 )
LBB0_73:                                //  %sw.bb93
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 16
	beqz x1, LBB0_75
LBB0_74:                                //    in Loop: Header=BB0_5 Depth=1
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_48 ( x0 )
LBB0_75:                                //  %if.end97
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x3, 4
	lw x7, 88 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB0_77
LBB0_76:                                //  %if.then100
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 184 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 184 ( x2 )
	lw x1, 0 ( x1 )
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	sh x3, 0 ( x1 )
	add x12, x0, x7
	jalr x0, LBB0_48 ( x0 )
LBB0_77:                                //  %if.else102
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x3, 1
	beqz x1, LBB0_79
LBB0_78:                                //  %if.then105
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 184 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 184 ( x2 )
	lw x1, 0 ( x1 )
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 0 ( x1 )
	add x12, x0, x7
	jalr x0, LBB0_48 ( x0 )
LBB0_79:                                //  %if.else107
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x3, 2
	beqz x1, LBB0_78
LBB0_80:                                //  %if.then110
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 184 ( x2 )
	lw x5, 72 ( x2 )                //  4-byte Folded Reload
	nop
	srai x3, x5, 31
	addi x4, x1, 4
	sw x4, 184 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x3, 4 ( x1 )
	sw x5, 0 ( x1 )
	add x12, x0, x7
	jalr x0, LBB0_48 ( x0 )
LBB0_81:                                //  %sw.epilog.loopexit
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, $_wcstol_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_wcstol_r >> 12 & 0xfffff
LBB0_82:                                //  %sw.epilog
                                        //    in Loop: Header=BB0_5 Depth=1
	or x1, x1, x28
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	addi x1, x0, 3
	add x3, x0, x1
	addi x1, x0, 10
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_88 ( x0 )
LBB0_84:                                //  %sw.epilog.loopexit2014
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, $_wcstol_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_wcstol_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	addi x1, x0, 3
	add x3, x0, x1
	add x1, x0, x0
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_88 ( x0 )
LBB0_85:                                //  %sw.epilog.loopexit2192
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, $_wcstoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_wcstoul_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	addi x1, x0, 3
	add x3, x0, x1
	addi x1, x0, 8
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_88 ( x0 )
LBB0_86:                                //  %sw.epilog.loopexit2377
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, $_wcstoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_wcstoul_r >> 12 & 0xfffff
	jalr x0, LBB0_82 ( x0 )
LBB0_87:                                //  %sw.epilog.loopexit2554
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	addi x1, x0, 2
	add x3, x0, x1
LBB0_88:                                //  %sw.epilog
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	lui x8, 65535 >> 12 & 0xfffff
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_89:                                //  %sw.epilog
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x4, 64
	sw x12, 88 ( x2 )               //  4-byte Folded Spill
	beqz x1, LBB0_91
LBB0_90:                                //    in Loop: Header=BB0_5 Depth=1
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_111 ( x0 )
LBB0_91:                                //  %while.cond123.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	sw x4, 64 ( x2 )                //  4-byte Folded Spill
LBB0_92:                                //  %while.cond123
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 4 ( x11 )
	nop
	bgt x1, x0, LBB0_95
LBB0_93:                                //  %land.lhs.true.i1152
                                        //    in Loop: Header=BB0_92 Depth=2
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ssrefill_r
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	beqz x10, LBB0_482
LBB0_481:                               //  %land.lhs.true.i1152
                                        //    in Loop: Header=BB0_92 Depth=2
	jalr x0, LBB0_462 ( x0 )
LBB0_482:                               //  %land.lhs.true.i1152
                                        //    in Loop: Header=BB0_92 Depth=2
LBB0_94:                                //  %land.lhs.true.if.end_crit_edge.i1154
                                        //    in Loop: Header=BB0_92 Depth=2
	lw x1, 4 ( x11 )
LBB0_95:                                //  %_sfgetwc_r.exit1161
                                        //    in Loop: Header=BB0_92 Depth=2
	lw x3, 0 ( x11 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lhu x8, 0 ( x3 )
	addi x3, x3, 2
	addi x1, x1, -2
	lui x4, 65535 >> 12 & 0xfffff
	or x4, x4, x28
	sw x3, 0 ( x11 )
	sw x1, 4 ( x11 )
	bne x8, x4, LBB0_484
LBB0_483:                               //  %_sfgetwc_r.exit1161
                                        //    in Loop: Header=BB0_92 Depth=2
	jalr x0, LBB0_462 ( x0 )
LBB0_484:                               //  %_sfgetwc_r.exit1161
                                        //    in Loop: Header=BB0_92 Depth=2
LBB0_96:                                //  %land.rhs127
                                        //    in Loop: Header=BB0_92 Depth=2
	slli x1, x8, 16
	srai x10, x1, 16
	call $iswspace
	beqz x10, LBB0_98
LBB0_97:                                //  %while.body131
                                        //    in Loop: Header=BB0_92 Depth=2
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 72 ( x2 )                //  4-byte Folded Spill
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_92 ( x0 )
LBB0_98:                                //  %if.end.i1166
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, 65503 & 0xfff
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	nop
	lhu x1, 12 ( x11 )
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x11 )
	lw x1, 48 ( x11 )
	nop
	beqz x1, LBB0_103
LBB0_99:                                //  %if.then4.i1170
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 52 ( x11 )
	lw x3, 4 ( x11 )
	nop
	bgt x1, x3, LBB0_102
LBB0_100:                               //  %land.lhs.true.i1173
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	nop
	call $__submore
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	beqz x10, LBB0_102
LBB0_101:                               //    in Loop: Header=BB0_5 Depth=1
	lui x8, 65535 >> 12 & 0xfffff
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_110 ( x0 )
LBB0_102:                               //  %if.end9.i1178
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x11 )
	nop
	addi x3, x1, -2
	sw x3, 0 ( x11 )
	sb x8, -2 ( x1 )
	lw x1, 4 ( x11 )
	nop
	addi x1, x1, 2
	sw x1, 4 ( x11 )
	jalr x0, LBB0_101 ( x0 )
LBB0_103:                               //  %if.end14.i1181
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 16 ( x11 )
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	bgtu x3, x0, LBB0_106
LBB0_104:                               //  %if.end14.if.end34_crit_edge.i1185
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x11 )
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
LBB0_105:                               //  %if.end34.i1204
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 4 ( x11 )
	nop
	sw x3, 60 ( x11 )
	sw x1, 56 ( x11 )
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x11 )
	addi x1, x0, 3
	sw x1, 52 ( x11 )
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x11 )
	sh x8, 65 ( x11 )
	addi x1, x0, 2
	jalr x0, LBB0_109 ( x0 )
LBB0_106:                               //  %land.lhs.true18.i1188
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x11 )
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	bgeu x3, x1, LBB0_105
LBB0_107:                               //  %land.lhs.true24.i1192
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x3, -2 ( x1 )
	nop
	bne x3, x8, LBB0_105
LBB0_108:                               //  %if.then29.i1195
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x1, -2
	sw x1, 0 ( x11 )
	lw x1, 4 ( x11 )
	nop
	addi x1, x1, 2
LBB0_109:                               //  %if.end139
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x1, 4 ( x11 )
	lui x8, 65535 >> 12 & 0xfffff
LBB0_110:                               //  %if.end139
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_111:                               //  %if.end139
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x3, 3
	xori x3, x1, 1
	beqz x3, LBB0_170
LBB0_112:                               //  %if.end139
                                        //    in Loop: Header=BB0_5 Depth=1
	xori x3, x1, 2
	beqz x3, LBB0_295
LBB0_113:                               //  %if.end139
                                        //    in Loop: Header=BB0_5 Depth=1
	xori x1, x1, 3
	bgtu x1, x0, LBB0_486
LBB0_485:                               //  %if.end139
                                        //    in Loop: Header=BB0_5 Depth=1
	jalr x0, LBB0_376 ( x0 )
LBB0_486:                               //  %if.end139
                                        //    in Loop: Header=BB0_5 Depth=1
LBB0_114:                               //  %sw.bb140
                                        //    in Loop: Header=BB0_5 Depth=1
	slti x1, x0, 1
	add x7, x0, x1
	add x1, x0, x0
	beq x5, x1, LBB0_116
LBB0_115:                               //  %sw.bb140
                                        //    in Loop: Header=BB0_5 Depth=1
	add x7, x0, x5
LBB0_116:                               //  %sw.bb140
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x3, x4, 16
	andi x1, x4, 1
	sw x7, 84 ( x2 )                //  4-byte Folded Spill
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB0_134
LBB0_117:                               //  %if.then147
                                        //    in Loop: Header=BB0_5 Depth=1
	bgtu x3, x0, LBB0_123
LBB0_118:                               //  %land.rhs156.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 184 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 184 ( x2 )
	lw x5, 0 ( x1 )
	lw x1, 4 ( x11 )
	add x8, x0, x0
LBB0_119:                               //  %land.rhs156
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	bgt x1, x0, LBB0_130
LBB0_120:                               //  %land.lhs.true.i1210
                                        //    in Loop: Header=BB0_119 Depth=2
	sw x5, 64 ( x2 )                //  4-byte Folded Spill
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ssrefill_r
	beqz x10, LBB0_129
LBB0_121:                               //    in Loop: Header=BB0_5 Depth=1
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
LBB0_122:                               //  %while.end169
                                        //    in Loop: Header=BB0_5 Depth=1
	bgtu x8, x0, LBB0_132
	jalr x0, LBB0_462 ( x0 )
LBB0_123:                               //  %land.rhs156.us.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 4 ( x11 )
	add x8, x0, x0
LBB0_124:                               //  %land.rhs156.us
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	bgt x1, x0, LBB0_127
LBB0_125:                               //  %land.lhs.true.i1210.us
                                        //    in Loop: Header=BB0_124 Depth=2
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ssrefill_r
	bgtu x10, x0, LBB0_121
LBB0_126:                               //  %land.lhs.true.if.end_crit_edge.i1212.us
                                        //    in Loop: Header=BB0_124 Depth=2
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x3 )
	add x11, x0, x3
	lw x7, 84 ( x2 )                //  4-byte Folded Reload
LBB0_127:                               //  %_sfgetwc_r.exit1219.us
                                        //    in Loop: Header=BB0_124 Depth=2
	lw x3, 0 ( x11 )
	nop
	lhu x4, 0 ( x3 )
	addi x3, x3, 2
	sw x3, 0 ( x11 )
	addi x1, x1, -2
	sw x1, 4 ( x11 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	or x3, x3, x28
	beq x4, x3, LBB0_122
LBB0_128:                               //  %if.end167.us
                                        //    in Loop: Header=BB0_124 Depth=2
	addi x8, x8, 1
	bne x7, x8, LBB0_124
	jalr x0, LBB0_132 ( x0 )
LBB0_129:                               //  %land.lhs.true.if.end_crit_edge.i1212
                                        //    in Loop: Header=BB0_119 Depth=2
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x3 )
	add x11, x0, x3
	lw x7, 84 ( x2 )                //  4-byte Folded Reload
	lw x5, 64 ( x2 )                //  4-byte Folded Reload
LBB0_130:                               //  %_sfgetwc_r.exit1219
                                        //    in Loop: Header=BB0_119 Depth=2
	lw x4, 0 ( x11 )
	nop
	lhu x3, 0 ( x4 )
	addi x4, x4, 2
	sw x4, 0 ( x11 )
	addi x1, x1, -2
	sw x1, 4 ( x11 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, 65535 >> 12 & 0xfffff
	or x4, x4, x28
	beq x3, x4, LBB0_122
LBB0_131:                               //  %if.then164
                                        //    in Loop: Header=BB0_119 Depth=2
	sh x3, 0 ( x5 )
	addi x5, x5, 2
	addi x8, x8, 1
	bne x7, x8, LBB0_119
LBB0_132:                               //  %if.end173
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	seqz x1, x1
	andi x1, x1, 1
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x1
	sw x3, 68 ( x2 )                //  4-byte Folded Spill
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x8
LBB0_133:                               //  %for.cond.backedge
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x1, 72 ( x2 )                //  4-byte Folded Spill
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_48 ( x0 )
LBB0_134:                               //  %if.else180
                                        //    in Loop: Header=BB0_5 Depth=1
	bgtu x3, x0, LBB0_139
LBB0_135:                               //  %land.rhs190.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 184 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 184 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	addi x10, x2, 176
	add x8, x0, x0
	add x11, x0, x8
	addi x12, x0, 8
	call $memset
	sw x8, 64 ( x2 )                //  4-byte Folded Spill
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	lw x4, 84 ( x2 )                //  4-byte Folded Reload
LBB0_136:                               //  %land.rhs190
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 4 ( x11 )
	sw x4, 84 ( x2 )                //  4-byte Folded Spill
	bgt x1, x0, LBB0_149
LBB0_137:                               //  %land.lhs.true.i1224
                                        //    in Loop: Header=BB0_136 Depth=2
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x11
	call $__ssrefill_r
	beqz x10, LBB0_148
LBB0_138:                               //    in Loop: Header=BB0_5 Depth=1
	add x11, x0, x8
	jalr x0, LBB0_162 ( x0 )
LBB0_139:                               //  %land.rhs190.us.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x10, x2, 176
	add x1, x0, x0
	add x11, x0, x1
	addi x12, x0, 8
	call $memset
	add x1, x0, x0
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	lw x4, 84 ( x2 )                //  4-byte Folded Reload
LBB0_140:                               //  %land.rhs190.us
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 4 ( x11 )
	sw x4, 84 ( x2 )                //  4-byte Folded Spill
	bgt x1, x0, LBB0_144
LBB0_141:                               //  %land.lhs.true.i1224.us
                                        //    in Loop: Header=BB0_140 Depth=2
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x11
	call $__ssrefill_r
	beqz x10, LBB0_143
LBB0_142:                               //    in Loop: Header=BB0_5 Depth=1
	add x11, x0, x8
	jalr x0, LBB0_162 ( x0 )
LBB0_143:                               //  %land.lhs.true.if.end_crit_edge.i1226.us
                                        //    in Loop: Header=BB0_140 Depth=2
	lw x1, 4 ( x8 )
	add x11, x0, x8
	lui x8, 65535 >> 12 & 0xfffff
LBB0_144:                               //  %_sfgetwc_r.exit1233.us
                                        //    in Loop: Header=BB0_140 Depth=2
	lw x3, 0 ( x11 )
	nop
	lhu x5, 0 ( x3 )
	addi x3, x3, 2
	sw x3, 0 ( x11 )
	addi x1, x1, -2
	sw x1, 4 ( x11 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x8, x28
	beq x5, x1, LBB0_162
LBB0_145:                               //  %while.body195.us
                                        //    in Loop: Header=BB0_140 Depth=2
	add x8, x0, x5
	call $__locale_mb_cur_max
	sw x8, 48 ( x2 )                //  4-byte Folded Spill
	slli x1, x8, 16
	srai x12, x1, 16
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 95
	addi x13, x2, 176
	call $_wcrtomb_r
	lw x4, 84 ( x2 )                //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	xori x1, x10, -1
	bgtu x1, x0, LBB0_488
LBB0_487:                               //  %while.body195.us
                                        //    in Loop: Header=BB0_140 Depth=2
	jalr x0, LBB0_462 ( x0 )
LBB0_488:                               //  %while.body195.us
                                        //    in Loop: Header=BB0_140 Depth=2
LBB0_146:                               //  %if.end214.us
                                        //    in Loop: Header=BB0_140 Depth=2
	bgtu x10, x4, LBB0_154
LBB0_147:                               //  %if.end226.us
                                        //    in Loop: Header=BB0_140 Depth=2
	sub x4, x4, x10
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	lui x8, 65535 >> 12 & 0xfffff
	bgtu x4, x0, LBB0_140
	jalr x0, LBB0_169 ( x0 )
LBB0_148:                               //  %land.lhs.true.if.end_crit_edge.i1226
                                        //    in Loop: Header=BB0_136 Depth=2
	lw x1, 4 ( x8 )
	add x11, x0, x8
	lw x4, 84 ( x2 )                //  4-byte Folded Reload
LBB0_149:                               //  %_sfgetwc_r.exit1233
                                        //    in Loop: Header=BB0_136 Depth=2
	lw x3, 0 ( x11 )
	nop
	lhu x5, 0 ( x3 )
	addi x3, x3, 2
	sw x3, 0 ( x11 )
	addi x1, x1, -2
	sw x1, 4 ( x11 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	beq x5, x1, LBB0_162
LBB0_150:                               //  %while.body195
                                        //    in Loop: Header=BB0_136 Depth=2
	sw x5, 48 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x4
	call $__locale_mb_cur_max
	bgtu x10, x8, LBB0_152
LBB0_151:                               //  %if.then201
                                        //    in Loop: Header=BB0_136 Depth=2
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 16
	srai x12, x1, 16
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	addi x13, x2, 176
	call $_wcrtomb_r
	add x8, x0, x10
	xori x1, x8, -1
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	lw x4, 84 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB0_168
	jalr x0, LBB0_462 ( x0 )
LBB0_152:                               //  %if.else208
                                        //    in Loop: Header=BB0_136 Depth=2
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 16
	srai x12, x1, 16
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 95
	addi x13, x2, 176
	call $_wcrtomb_r
	add x8, x0, x10
	xori x1, x8, -1
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB0_490
LBB0_489:                               //  %if.else208
                                        //    in Loop: Header=BB0_136 Depth=2
	jalr x0, LBB0_462 ( x0 )
LBB0_490:                               //  %if.else208
                                        //    in Loop: Header=BB0_136 Depth=2
LBB0_153:                               //  %if.end214
                                        //    in Loop: Header=BB0_136 Depth=2
	bgeu x3, x8, LBB0_167
LBB0_154:                               //  %if.end.i1238
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x1, 12 ( x11 )
	ori x28, x0, 65503 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x11 )
	lw x1, 48 ( x11 )
	nop
	beqz x1, LBB0_158
LBB0_155:                               //  %if.then4.i1242
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 52 ( x11 )
	lw x3, 4 ( x11 )
	nop
	bgt x1, x3, LBB0_157
LBB0_156:                               //  %land.lhs.true.i1245
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	nop
	call $__submore
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	bgtu x10, x0, LBB0_162
LBB0_157:                               //  %if.end9.i1250
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x11 )
	nop
	addi x3, x1, -2
	sw x3, 0 ( x11 )
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, -2 ( x1 )
	jalr x0, LBB0_166 ( x0 )
LBB0_158:                               //  %if.end14.i1253
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 16 ( x11 )
	nop
	bgtu x3, x0, LBB0_163
LBB0_159:                               //  %if.end14.if.end34_crit_edge.i1257
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x11 )
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
LBB0_160:                               //  %if.end34.i1276
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 4 ( x11 )
	nop
	sw x3, 60 ( x11 )
	sw x1, 56 ( x11 )
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x11 )
	addi x1, x0, 3
	sw x1, 52 ( x11 )
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x11 )
	sh x4, 65 ( x11 )
	addi x1, x0, 2
LBB0_161:                               //  %while.end233
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x1, 4 ( x11 )
LBB0_162:                               //  %while.end233
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_169
	jalr x0, LBB0_462 ( x0 )
LBB0_163:                               //  %land.lhs.true18.i1260
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x11 )
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
	bgeu x3, x1, LBB0_160
LBB0_164:                               //  %land.lhs.true24.i1264
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x3, -2 ( x1 )
	nop
	bne x3, x4, LBB0_160
LBB0_165:                               //  %if.then29.i1267
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x1, -2
	sw x1, 0 ( x11 )
LBB0_166:                               //  %while.end233
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 4 ( x11 )
	nop
	addi x1, x1, 2
	jalr x0, LBB0_161 ( x0 )
LBB0_167:                               //  %if.then222
                                        //    in Loop: Header=BB0_136 Depth=2
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 95
	add x12, x0, x8
	call $memcpy
	lw x4, 84 ( x2 )                //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
LBB0_168:                               //  %if.end226
                                        //    in Loop: Header=BB0_136 Depth=2
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x8, x1
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	sub x4, x4, x8
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	bgtu x4, x0, LBB0_136
LBB0_169:                               //  %if.end237
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	seqz x1, x1
	andi x1, x1, 1
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x1
	sw x3, 68 ( x2 )                //  4-byte Folded Spill
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	jalr x0, LBB0_133 ( x0 )
LBB0_170:                               //  %sw.bb245
                                        //    in Loop: Header=BB0_5 Depth=1
	not x1, x0
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	beq x5, x1, LBB0_172
LBB0_171:                               //  %sw.bb245
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x5, 84 ( x2 )                //  4-byte Folded Spill
LBB0_172:                               //  %sw.bb245
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x5, x4, 16
	andi x1, x4, 1
	beqz x1, LBB0_206
LBB0_173:                               //  %sw.bb245
                                        //    in Loop: Header=BB0_5 Depth=1
	seqz x3, x5
	bgtu x3, x0, LBB0_206
LBB0_174:                               //  %while.cond256.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	srai x1, x1, 1
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_189
LBB0_175:                               //  %while.cond256.us.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	add x1, x0, x0
	add x4, x0, x1
LBB0_176:                               //  %while.cond256.us
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 4 ( x11 )
	nop
	bgt x1, x0, LBB0_180
LBB0_177:                               //  %land.lhs.true.i1282.us
                                        //    in Loop: Header=BB0_176 Depth=2
	sw x4, 64 ( x2 )                //  4-byte Folded Spill
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x11
	call $__ssrefill_r
	beqz x10, LBB0_179
LBB0_178:                               //    in Loop: Header=BB0_5 Depth=1
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x4, x0, LBB0_294
	jalr x0, LBB0_466 ( x0 )
LBB0_179:                               //  %land.lhs.true.if.end_crit_edge.i1284.us
                                        //    in Loop: Header=BB0_176 Depth=2
	lw x1, 4 ( x8 )
	add x11, x0, x8
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
LBB0_180:                               //  %_sfgetwc_r.exit1291.us
                                        //    in Loop: Header=BB0_176 Depth=2
	lw x3, 0 ( x11 )
	nop
	lhu x5, 0 ( x3 )
	addi x3, x3, 2
	sw x3, 0 ( x11 )
	addi x1, x1, -2
	sw x1, 4 ( x11 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	beq x5, x1, LBB0_205
LBB0_181:                               //  %land.lhs.true260.us
                                        //    in Loop: Header=BB0_176 Depth=2
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	beq x1, x4, LBB0_184
LBB0_182:                               //  %land.rhs264.us
                                        //    in Loop: Header=BB0_176 Depth=2
	add x8, x0, x4
	slli x1, x5, 16
	srai x11, x1, 16
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	sw x5, 64 ( x2 )                //  4-byte Folded Spill
	call $wmemchr
	beqz x10, LBB0_188
LBB0_183:                               //    in Loop: Header=BB0_5 Depth=1
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	add x4, x0, x8
	lw x5, 64 ( x2 )                //  4-byte Folded Reload
LBB0_184:                               //  %if.end.i1296
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x1, 12 ( x11 )
	ori x28, x0, 65503 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x11 )
	lw x1, 48 ( x11 )
	nop
	beqz x1, LBB0_197
LBB0_185:                               //  %if.then4.i1300
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 52 ( x11 )
	lw x3, 4 ( x11 )
	nop
	bgt x1, x3, LBB0_187
LBB0_186:                               //  %land.lhs.true.i1303
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x4
	sw x5, 64 ( x2 )                //  4-byte Folded Spill
	call $__submore
	lw x5, 64 ( x2 )                //  4-byte Folded Reload
	add x4, x0, x8
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	bgtu x10, x0, LBB0_205
LBB0_187:                               //  %if.end9.i1308
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x11 )
	nop
	addi x3, x1, -2
	sw x3, 0 ( x11 )
	sb x5, -2 ( x1 )
	jalr x0, LBB0_203 ( x0 )
LBB0_188:                               //  %while.body280.us
                                        //    in Loop: Header=BB0_176 Depth=2
	add x4, x0, x8
	addi x4, x4, 1
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_176 ( x0 )
LBB0_189:                               //  %while.cond256.preheader2567
                                        //    in Loop: Header=BB0_5 Depth=1
	add x1, x0, x0
	add x4, x0, x1
LBB0_190:                               //  %while.cond256
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 4 ( x11 )
	nop
	bgt x1, x0, LBB0_193
LBB0_191:                               //  %land.lhs.true.i1282
                                        //    in Loop: Header=BB0_190 Depth=2
	sw x4, 64 ( x2 )                //  4-byte Folded Spill
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x11
	call $__ssrefill_r
	bgtu x10, x0, LBB0_178
LBB0_192:                               //  %land.lhs.true.if.end_crit_edge.i1284
                                        //    in Loop: Header=BB0_190 Depth=2
	lw x1, 4 ( x8 )
	add x11, x0, x8
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
LBB0_193:                               //  %_sfgetwc_r.exit1291
                                        //    in Loop: Header=BB0_190 Depth=2
	lw x3, 0 ( x11 )
	nop
	lhu x5, 0 ( x3 )
	addi x3, x3, 2
	sw x3, 0 ( x11 )
	addi x1, x1, -2
	sw x1, 4 ( x11 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	beq x5, x1, LBB0_205
LBB0_194:                               //  %land.lhs.true260
                                        //    in Loop: Header=BB0_190 Depth=2
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	beq x1, x4, LBB0_184
LBB0_195:                               //  %land.rhs264
                                        //    in Loop: Header=BB0_190 Depth=2
	add x8, x0, x4
	slli x1, x5, 16
	srai x11, x1, 16
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	sw x5, 64 ( x2 )                //  4-byte Folded Spill
	call $wmemchr
	beqz x10, LBB0_183
LBB0_196:                               //  %while.body280
                                        //    in Loop: Header=BB0_190 Depth=2
	add x4, x0, x8
	addi x4, x4, 1
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_190 ( x0 )
LBB0_197:                               //  %if.end14.i1311
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 16 ( x11 )
	nop
	bgtu x3, x0, LBB0_200
LBB0_198:                               //  %if.end14.if.end34_crit_edge.i1315
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x11 )
LBB0_199:                               //  %if.end34.i1334
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 4 ( x11 )
	nop
	sw x3, 60 ( x11 )
	sw x1, 56 ( x11 )
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x11 )
	addi x1, x0, 3
	sw x1, 52 ( x11 )
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x11 )
	sh x5, 65 ( x11 )
	addi x1, x0, 2
	jalr x0, LBB0_204 ( x0 )
LBB0_200:                               //  %land.lhs.true18.i1318
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x11 )
	nop
	bgeu x3, x1, LBB0_199
LBB0_201:                               //  %land.lhs.true24.i1322
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x3, -2 ( x1 )
	nop
	bne x3, x5, LBB0_199
LBB0_202:                               //  %if.then29.i1325
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x1, -2
	sw x1, 0 ( x11 )
LBB0_203:                               //  %if.end287
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 4 ( x11 )
	nop
	addi x1, x1, 2
LBB0_204:                               //  %if.end287
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x1, 4 ( x11 )
LBB0_205:                               //  %if.end287
                                        //    in Loop: Header=BB0_5 Depth=1
	bgtu x4, x0, LBB0_294
	jalr x0, LBB0_466 ( x0 )
LBB0_206:                               //  %if.else292
                                        //    in Loop: Header=BB0_5 Depth=1
	beqz x1, LBB0_238
LBB0_207:                               //  %if.then295
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 184 ( x2 )
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	lw x4, 52 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x3, x4
	srai x3, x3, 1
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	addi x3, x1, 4
	sw x3, 184 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_221
LBB0_208:                               //  %while.cond297.us
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 4 ( x11 )
	nop
	bgt x1, x0, LBB0_212
LBB0_209:                               //  %land.lhs.true.i1340.us
                                        //    in Loop: Header=BB0_208 Depth=2
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x11
	call $__ssrefill_r
	beqz x10, LBB0_211
LBB0_210:                               //    in Loop: Header=BB0_5 Depth=1
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_236 ( x0 )
LBB0_211:                               //  %land.lhs.true.if.end_crit_edge.i1342.us
                                        //    in Loop: Header=BB0_208 Depth=2
	lw x1, 4 ( x8 )
	add x11, x0, x8
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
LBB0_212:                               //  %_sfgetwc_r.exit1349.us
                                        //    in Loop: Header=BB0_208 Depth=2
	lw x3, 0 ( x11 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lhu x8, 0 ( x3 )
	addi x3, x3, 2
	addi x1, x1, -2
	lui x4, 65535 >> 12 & 0xfffff
	or x4, x4, x28
	sw x3, 0 ( x11 )
	sw x1, 4 ( x11 )
	beq x8, x4, LBB0_236
LBB0_213:                               //  %land.lhs.true301.us
                                        //    in Loop: Header=BB0_208 Depth=2
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_216
LBB0_214:                               //  %land.end328.us
                                        //    in Loop: Header=BB0_208 Depth=2
	slli x1, x8, 16
	srai x11, x1, 16
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $wmemchr
	beqz x10, LBB0_220
LBB0_215:                               //    in Loop: Header=BB0_5 Depth=1
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
LBB0_216:                               //  %if.end.i1354
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, 65503 & 0xfff
	lhu x1, 12 ( x11 )
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x11 )
	lw x1, 48 ( x11 )
	nop
	beqz x1, LBB0_228
LBB0_217:                               //  %if.then4.i1358
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 52 ( x11 )
	lw x3, 4 ( x11 )
	nop
	bgt x1, x3, LBB0_219
LBB0_218:                               //  %land.lhs.true.i1361
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	nop
	call $__submore
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	bgtu x10, x0, LBB0_236
LBB0_219:                               //  %if.end9.i1366
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x11 )
	nop
	addi x3, x1, -2
	sw x3, 0 ( x11 )
	sb x8, -2 ( x1 )
	jalr x0, LBB0_234 ( x0 )
LBB0_220:                               //  %while.body329.us
                                        //    in Loop: Header=BB0_208 Depth=2
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	sh x8, 0 ( x1 )
	addi x1, x1, 2
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_208 ( x0 )
LBB0_221:                               //  %while.cond297
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 4 ( x11 )
	nop
	bgt x1, x0, LBB0_224
LBB0_222:                               //  %land.lhs.true.i1340
                                        //    in Loop: Header=BB0_221 Depth=2
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x11
	call $__ssrefill_r
	bgtu x10, x0, LBB0_210
LBB0_223:                               //  %land.lhs.true.if.end_crit_edge.i1342
                                        //    in Loop: Header=BB0_221 Depth=2
	lw x1, 4 ( x8 )
	add x11, x0, x8
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
LBB0_224:                               //  %_sfgetwc_r.exit1349
                                        //    in Loop: Header=BB0_221 Depth=2
	lw x3, 0 ( x11 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lhu x8, 0 ( x3 )
	addi x3, x3, 2
	addi x1, x1, -2
	lui x4, 65535 >> 12 & 0xfffff
	or x4, x4, x28
	sw x3, 0 ( x11 )
	sw x1, 4 ( x11 )
	beq x8, x4, LBB0_236
LBB0_225:                               //  %land.lhs.true301
                                        //    in Loop: Header=BB0_221 Depth=2
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_216
LBB0_226:                               //  %land.end328
                                        //    in Loop: Header=BB0_221 Depth=2
	slli x1, x8, 16
	srai x11, x1, 16
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $wmemchr
	beqz x10, LBB0_215
LBB0_227:                               //  %while.body329
                                        //    in Loop: Header=BB0_221 Depth=2
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	sh x8, 0 ( x1 )
	addi x1, x1, 2
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_221 ( x0 )
LBB0_228:                               //  %if.end14.i1369
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 16 ( x11 )
	nop
	bgtu x3, x0, LBB0_231
LBB0_229:                               //  %if.end14.if.end34_crit_edge.i1373
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x11 )
LBB0_230:                               //  %if.end34.i1392
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 4 ( x11 )
	nop
	sw x3, 60 ( x11 )
	sw x1, 56 ( x11 )
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x11 )
	addi x1, x0, 3
	sw x1, 52 ( x11 )
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x11 )
	sh x8, 65 ( x11 )
	addi x1, x0, 2
	jalr x0, LBB0_235 ( x0 )
LBB0_231:                               //  %land.lhs.true18.i1376
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x11 )
	nop
	bgeu x3, x1, LBB0_230
LBB0_232:                               //  %land.lhs.true24.i1380
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x3, -2 ( x1 )
	nop
	bne x3, x8, LBB0_230
LBB0_233:                               //  %if.then29.i1383
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x1, -2
	sw x1, 0 ( x11 )
LBB0_234:                               //  %if.end337
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 4 ( x11 )
	nop
	addi x1, x1, 2
LBB0_235:                               //  %if.end337
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x1, 4 ( x11 )
LBB0_236:                               //  %if.end337
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x3, x1
	srai x4, x1, 1
	bgtu x4, x0, LBB0_492
LBB0_491:                               //  %if.end337
                                        //    in Loop: Header=BB0_5 Depth=1
	jalr x0, LBB0_466 ( x0 )
LBB0_492:                               //  %if.end337
                                        //    in Loop: Header=BB0_5 Depth=1
LBB0_237:                               //  %if.end345
                                        //    in Loop: Header=BB0_5 Depth=1
	sh x0, 0 ( x3 )
	jalr x0, LBB0_293 ( x0 )
LBB0_238:                               //  %if.else347
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x5, 48 ( x2 )                //  4-byte Folded Spill
	bgtu x5, x0, LBB0_240
LBB0_239:                               //  %if.then350
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 184 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 184 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
LBB0_240:                               //  %if.end352
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x10, x2, 176
	add x1, x0, x0
	add x11, x0, x1
	addi x12, x0, 8
	call $memset
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	srai x1, x1, 1
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB0_266
LBB0_241:                               //  %while.cond354.us
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 4 ( x11 )
	nop
	bgt x1, x0, LBB0_245
LBB0_242:                               //  %land.lhs.true.i1398.us
                                        //    in Loop: Header=BB0_241 Depth=2
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x11
	call $__ssrefill_r
	beqz x10, LBB0_244
LBB0_243:                               //    in Loop: Header=BB0_5 Depth=1
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_291 ( x0 )
LBB0_244:                               //  %land.lhs.true.if.end_crit_edge.i1400.us
                                        //    in Loop: Header=BB0_241 Depth=2
	lw x1, 4 ( x8 )
	add x11, x0, x8
	lui x8, 65535 >> 12 & 0xfffff
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
LBB0_245:                               //  %_sfgetwc_r.exit1407.us
                                        //    in Loop: Header=BB0_241 Depth=2
	lw x3, 0 ( x11 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lhu x7, 0 ( x3 )
	addi x3, x3, 2
	addi x1, x1, -2
	or x4, x8, x28
	sw x3, 0 ( x11 )
	sw x1, 4 ( x11 )
	bne x7, x4, LBB0_247
LBB0_246:                               //    in Loop: Header=BB0_5 Depth=1
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_291 ( x0 )
LBB0_247:                               //  %land.lhs.true358.us
                                        //    in Loop: Header=BB0_241 Depth=2
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_253
LBB0_248:                               //    in Loop: Header=BB0_5 Depth=1
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
LBB0_249:                               //  %if.end.i1412
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, 65503 & 0xfff
	lhu x1, 12 ( x11 )
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x11 )
	lw x1, 48 ( x11 )
	nop
	beqz x1, LBB0_284
LBB0_250:                               //  %if.then4.i1416
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 52 ( x11 )
	lw x3, 4 ( x11 )
	nop
	bgt x1, x3, LBB0_283
LBB0_251:                               //  %land.lhs.true.i1419
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x4
	sw x7, 28 ( x2 )                //  4-byte Folded Spill
	call $__submore
	lw x7, 28 ( x2 )                //  4-byte Folded Reload
	add x4, x0, x8
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	beqz x10, LBB0_283
LBB0_252:                               //    in Loop: Header=BB0_5 Depth=1
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_291 ( x0 )
LBB0_253:                               //  %land.rhs362.us
                                        //    in Loop: Header=BB0_241 Depth=2
	sw x7, 28 ( x2 )                //  4-byte Folded Spill
	slli x1, x7, 16
	srai x8, x1, 16
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	lw x12, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $wmemchr
	beqz x10, LBB0_255
LBB0_254:                               //    in Loop: Header=BB0_5 Depth=1
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	lw x7, 28 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_249 ( x0 )
LBB0_255:                               //  %while.body386.us
                                        //    in Loop: Header=BB0_241 Depth=2
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	call $__locale_mb_cur_max
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_258
LBB0_256:                               //  %while.body386.us
                                        //    in Loop: Header=BB0_241 Depth=2
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x10, x1, LBB0_258
LBB0_257:                               //  %if.then393.us
                                        //    in Loop: Header=BB0_241 Depth=2
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	addi x13, x2, 176
	call $_wcrtomb_r
	add x8, x0, x10
	xori x1, x8, -1
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB0_263
	jalr x0, LBB0_462 ( x0 )
LBB0_258:                               //  %if.else400.us
                                        //    in Loop: Header=BB0_241 Depth=2
	addi x10, x2, 95
	add x11, x0, x8
	addi x12, x2, 176
	call $wcrtomb
	add x8, x0, x10
	xori x1, x8, -1
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB0_494
LBB0_493:                               //  %if.else400.us
                                        //    in Loop: Header=BB0_241 Depth=2
	jalr x0, LBB0_462 ( x0 )
LBB0_494:                               //  %if.else400.us
                                        //    in Loop: Header=BB0_241 Depth=2
LBB0_259:                               //  %if.end407.us
                                        //    in Loop: Header=BB0_241 Depth=2
	bgeu x3, x8, LBB0_261
LBB0_260:                               //    in Loop: Header=BB0_5 Depth=1
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	lw x7, 28 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_249 ( x0 )
LBB0_261:                               //  %if.end411.us
                                        //    in Loop: Header=BB0_241 Depth=2
	bgtu x5, x0, LBB0_263
LBB0_262:                               //  %if.then414.us
                                        //    in Loop: Header=BB0_241 Depth=2
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 95
	add x12, x0, x8
	call $memcpy
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
LBB0_263:                               //  %if.end418.us
                                        //    in Loop: Header=BB0_241 Depth=2
	add x1, x0, x0
	bne x5, x1, LBB0_265
LBB0_264:                               //  %if.end418.us
                                        //    in Loop: Header=BB0_241 Depth=2
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x8, x1
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
LBB0_265:                               //  %if.end418.us
                                        //    in Loop: Header=BB0_241 Depth=2
	sub x1, x3, x8
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	addi x4, x4, 1
	sw x4, 64 ( x2 )                //  4-byte Folded Spill
	lui x8, 65535 >> 12 & 0xfffff
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_241 ( x0 )
LBB0_266:                               //  %while.cond354
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 4 ( x11 )
	nop
	bgt x1, x0, LBB0_269
LBB0_267:                               //  %land.lhs.true.i1398
                                        //    in Loop: Header=BB0_266 Depth=2
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x11
	call $__ssrefill_r
	bgtu x10, x0, LBB0_243
LBB0_268:                               //  %land.lhs.true.if.end_crit_edge.i1400
                                        //    in Loop: Header=BB0_266 Depth=2
	lw x1, 4 ( x8 )
	add x11, x0, x8
	lui x8, 65535 >> 12 & 0xfffff
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
LBB0_269:                               //  %_sfgetwc_r.exit1407
                                        //    in Loop: Header=BB0_266 Depth=2
	lw x3, 0 ( x11 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lhu x7, 0 ( x3 )
	addi x3, x3, 2
	addi x1, x1, -2
	or x4, x8, x28
	sw x3, 0 ( x11 )
	sw x1, 4 ( x11 )
	bne x7, x4, LBB0_271
LBB0_270:                               //    in Loop: Header=BB0_5 Depth=1
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_291 ( x0 )
LBB0_271:                               //  %land.lhs.true358
                                        //    in Loop: Header=BB0_266 Depth=2
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_248
LBB0_272:                               //  %land.rhs362
                                        //    in Loop: Header=BB0_266 Depth=2
	sw x7, 28 ( x2 )                //  4-byte Folded Spill
	slli x1, x7, 16
	srai x8, x1, 16
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	lw x12, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $wmemchr
	beqz x10, LBB0_254
LBB0_273:                               //  %while.body386
                                        //    in Loop: Header=BB0_266 Depth=2
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	call $__locale_mb_cur_max
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_276
LBB0_274:                               //  %while.body386
                                        //    in Loop: Header=BB0_266 Depth=2
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x10, x1, LBB0_276
LBB0_275:                               //  %if.then393
                                        //    in Loop: Header=BB0_266 Depth=2
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	addi x13, x2, 176
	call $_wcrtomb_r
	add x8, x0, x10
	xori x1, x8, -1
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB0_280
	jalr x0, LBB0_462 ( x0 )
LBB0_276:                               //  %if.else400
                                        //    in Loop: Header=BB0_266 Depth=2
	addi x10, x2, 95
	add x11, x0, x8
	addi x12, x2, 176
	call $wcrtomb
	add x8, x0, x10
	xori x1, x8, -1
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB0_462
LBB0_277:                               //  %if.end407
                                        //    in Loop: Header=BB0_266 Depth=2
	bgtu x8, x3, LBB0_260
LBB0_278:                               //  %if.end411
                                        //    in Loop: Header=BB0_266 Depth=2
	bgtu x5, x0, LBB0_280
LBB0_279:                               //  %if.then414
                                        //    in Loop: Header=BB0_266 Depth=2
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 95
	add x12, x0, x8
	call $memcpy
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
LBB0_280:                               //  %if.end418
                                        //    in Loop: Header=BB0_266 Depth=2
	add x1, x0, x0
	bne x5, x1, LBB0_282
LBB0_281:                               //  %if.end418
                                        //    in Loop: Header=BB0_266 Depth=2
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x8, x1
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
LBB0_282:                               //  %if.end418
                                        //    in Loop: Header=BB0_266 Depth=2
	sub x1, x3, x8
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	addi x4, x4, 1
	sw x4, 64 ( x2 )                //  4-byte Folded Spill
	lui x8, 65535 >> 12 & 0xfffff
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_266 ( x0 )
LBB0_283:                               //  %if.end9.i1424
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x11 )
	nop
	addi x3, x1, -2
	sw x3, 0 ( x11 )
	sb x7, -2 ( x1 )
	lw x1, 4 ( x11 )
	nop
	addi x1, x1, 2
	sw x1, 4 ( x11 )
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_291 ( x0 )
LBB0_284:                               //  %if.end14.i1427
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 16 ( x11 )
	nop
	bgtu x3, x0, LBB0_287
LBB0_285:                               //  %if.end14.if.end34_crit_edge.i1431
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x11 )
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
LBB0_286:                               //  %if.end34.i1450
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 4 ( x11 )
	nop
	sw x3, 60 ( x11 )
	sw x1, 56 ( x11 )
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x11 )
	addi x1, x0, 3
	sw x1, 52 ( x11 )
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x11 )
	sh x7, 65 ( x11 )
	addi x1, x0, 2
	jalr x0, LBB0_290 ( x0 )
LBB0_287:                               //  %land.lhs.true18.i1434
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x11 )
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	bgeu x3, x1, LBB0_286
LBB0_288:                               //  %land.lhs.true24.i1438
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x3, -2 ( x1 )
	nop
	bne x3, x7, LBB0_286
LBB0_289:                               //  %if.then29.i1441
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x1, -2
	sw x1, 0 ( x11 )
	lw x1, 4 ( x11 )
	nop
	addi x1, x1, 2
LBB0_290:                               //  %if.end431
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x1, 4 ( x11 )
LBB0_291:                               //  %if.end431
                                        //    in Loop: Header=BB0_5 Depth=1
	bgtu x5, x0, LBB0_294
LBB0_292:                               //  %if.then434
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sb x0, 0 ( x1 )
LBB0_293:                               //  %if.end438
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
LBB0_294:                               //  %if.end438
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x4
	sw x1, 72 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_48 ( x0 )
LBB0_295:                               //  %sw.bb440
                                        //    in Loop: Header=BB0_5 Depth=1
	not x1, x0
	add x7, x0, x1
	add x1, x0, x0
	beq x5, x1, LBB0_297
LBB0_296:                               //  %sw.bb440
                                        //    in Loop: Header=BB0_5 Depth=1
	add x7, x0, x5
LBB0_297:                               //  %sw.bb440
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x5, x4, 16
	andi x1, x4, 1
	beqz x1, LBB0_311
LBB0_298:                               //  %sw.bb440
                                        //    in Loop: Header=BB0_5 Depth=1
	seqz x3, x5
	bgtu x3, x0, LBB0_311
LBB0_299:                               //  %while.cond451
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 4 ( x11 )
	nop
	bgt x1, x0, LBB0_303
LBB0_300:                               //  %land.lhs.true.i1456
                                        //    in Loop: Header=BB0_299 Depth=2
	sw x7, 84 ( x2 )                //  4-byte Folded Spill
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x11
	call $__ssrefill_r
	beqz x10, LBB0_302
LBB0_301:                               //    in Loop: Header=BB0_5 Depth=1
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_48 ( x0 )
LBB0_302:                               //  %land.lhs.true.if.end_crit_edge.i1458
                                        //    in Loop: Header=BB0_299 Depth=2
	lw x1, 4 ( x8 )
	add x11, x0, x8
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	lw x7, 84 ( x2 )                //  4-byte Folded Reload
LBB0_303:                               //  %_sfgetwc_r.exit1465
                                        //    in Loop: Header=BB0_299 Depth=2
	lw x3, 0 ( x11 )
	nop
	lhu x8, 0 ( x3 )
	addi x3, x3, 2
	sw x3, 0 ( x11 )
	addi x1, x1, -2
	sw x1, 4 ( x11 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	bne x8, x1, LBB0_496
LBB0_495:                               //  %_sfgetwc_r.exit1465
                                        //    in Loop: Header=BB0_299 Depth=2
	jalr x0, LBB0_48 ( x0 )
LBB0_496:                               //  %_sfgetwc_r.exit1465
                                        //    in Loop: Header=BB0_299 Depth=2
LBB0_304:                               //  %land.lhs.true455
                                        //    in Loop: Header=BB0_299 Depth=2
	beqz x7, LBB0_307
LBB0_305:                               //  %land.rhs459
                                        //    in Loop: Header=BB0_299 Depth=2
	slli x1, x8, 16
	srai x10, x1, 16
	sw x8, 84 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x7
	call $iswspace
	add x7, x0, x8
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	bgtu x10, x0, LBB0_307
LBB0_306:                               //  %while.body463
                                        //    in Loop: Header=BB0_299 Depth=2
	addi x7, x7, -1
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 72 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_299 ( x0 )
LBB0_307:                               //  %if.end.i1470
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x1, 12 ( x11 )
	ori x28, x0, 65503 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x11 )
	lw x1, 48 ( x11 )
	nop
	bgtu x1, x0, LBB0_498
LBB0_497:                               //  %if.end.i1470
                                        //    in Loop: Header=BB0_5 Depth=1
	jalr x0, LBB0_21 ( x0 )
LBB0_498:                               //  %if.end.i1470
                                        //    in Loop: Header=BB0_5 Depth=1
LBB0_308:                               //  %if.then4.i1474
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 52 ( x11 )
	lw x3, 4 ( x11 )
	nop
	bgt x1, x3, LBB0_310
LBB0_309:                               //  %land.lhs.true.i1477
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	nop
	call $__submore
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	beqz x10, LBB0_500
LBB0_499:                               //  %land.lhs.true.i1477
                                        //    in Loop: Header=BB0_5 Depth=1
	jalr x0, LBB0_48 ( x0 )
LBB0_500:                               //  %land.lhs.true.i1477
                                        //    in Loop: Header=BB0_5 Depth=1
LBB0_310:                               //  %if.end9.i1482
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x11 )
	nop
	addi x3, x1, -2
	sw x3, 0 ( x11 )
	sb x8, -2 ( x1 )
	jalr x0, LBB0_25 ( x0 )
LBB0_311:                               //  %if.else471
                                        //    in Loop: Header=BB0_5 Depth=1
	beqz x1, LBB0_334
LBB0_312:                               //  %if.then474
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 184 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 184 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
LBB0_313:                               //  %while.cond476
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 4 ( x11 )
	nop
	bgt x1, x0, LBB0_316
LBB0_314:                               //  %land.lhs.true.i1514
                                        //    in Loop: Header=BB0_313 Depth=2
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x7
	call $__ssrefill_r
	add x7, x0, x8
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	bgtu x10, x0, LBB0_332
LBB0_315:                               //  %land.lhs.true.if.end_crit_edge.i1516
                                        //    in Loop: Header=BB0_313 Depth=2
	lw x1, 4 ( x11 )
LBB0_316:                               //  %_sfgetwc_r.exit1523
                                        //    in Loop: Header=BB0_313 Depth=2
	lw x3, 0 ( x11 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lhu x8, 0 ( x3 )
	addi x3, x3, 2
	addi x1, x1, -2
	lui x4, 65535 >> 12 & 0xfffff
	or x4, x4, x28
	sw x3, 0 ( x11 )
	sw x1, 4 ( x11 )
	beq x8, x4, LBB0_332
LBB0_317:                               //  %land.lhs.true480
                                        //    in Loop: Header=BB0_313 Depth=2
	beqz x7, LBB0_320
LBB0_318:                               //  %land.end488
                                        //    in Loop: Header=BB0_313 Depth=2
	slli x1, x8, 16
	srai x10, x1, 16
	sw x8, 64 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x7
	call $iswspace
	add x7, x0, x8
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	bgtu x10, x0, LBB0_320
LBB0_319:                               //  %while.body489
                                        //    in Loop: Header=BB0_313 Depth=2
	addi x7, x7, -1
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sh x8, 0 ( x3 )
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 72 ( x2 )                //  4-byte Folded Spill
	addi x3, x3, 2
	sw x3, 84 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_313 ( x0 )
LBB0_320:                               //  %if.end.i1528
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, 65503 & 0xfff
	lhu x1, 12 ( x11 )
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x11 )
	lw x1, 48 ( x11 )
	nop
	beqz x1, LBB0_324
LBB0_321:                               //  %if.then4.i1532
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 52 ( x11 )
	lw x3, 4 ( x11 )
	nop
	bgt x1, x3, LBB0_323
LBB0_322:                               //  %land.lhs.true.i1535
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	nop
	call $__submore
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	bgtu x10, x0, LBB0_332
LBB0_323:                               //  %if.end9.i1540
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x11 )
	nop
	addi x3, x1, -2
	sw x3, 0 ( x11 )
	sb x8, -2 ( x1 )
	jalr x0, LBB0_330 ( x0 )
LBB0_324:                               //  %if.end14.i1543
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 16 ( x11 )
	nop
	bgtu x3, x0, LBB0_327
LBB0_325:                               //  %if.end14.if.end34_crit_edge.i1547
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x11 )
LBB0_326:                               //  %if.end34.i1566
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 4 ( x11 )
	nop
	sw x3, 60 ( x11 )
	sw x1, 56 ( x11 )
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x11 )
	addi x1, x0, 3
	sw x1, 52 ( x11 )
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x11 )
	sh x8, 65 ( x11 )
	addi x1, x0, 2
	jalr x0, LBB0_331 ( x0 )
LBB0_327:                               //  %land.lhs.true18.i1550
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x11 )
	nop
	bgeu x3, x1, LBB0_326
LBB0_328:                               //  %land.lhs.true24.i1554
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x3, -2 ( x1 )
	nop
	bne x3, x8, LBB0_326
LBB0_329:                               //  %if.then29.i1557
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x1, -2
	sw x1, 0 ( x11 )
LBB0_330:                               //  %if.end498
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 4 ( x11 )
	nop
	addi x1, x1, 2
LBB0_331:                               //  %if.end498
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x1, 4 ( x11 )
LBB0_332:                               //  %if.end498
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sh x0, 0 ( x1 )
LBB0_333:                               //  %for.cond.backedge
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_48 ( x0 )
LBB0_334:                               //  %if.else500
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x7, 84 ( x2 )                //  4-byte Folded Spill
	sw x5, 48 ( x2 )                //  4-byte Folded Spill
	bgtu x5, x0, LBB0_339
LBB0_335:                               //  %while.cond507.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 184 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 184 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	addi x10, x2, 176
	add x11, x0, x0
	addi x12, x0, 8
	call $memset
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
LBB0_336:                               //  %while.cond507
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 4 ( x11 )
	sw x5, 84 ( x2 )                //  4-byte Folded Spill
	bgt x1, x0, LBB0_350
LBB0_337:                               //  %land.lhs.true.i1572
                                        //    in Loop: Header=BB0_336 Depth=2
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x11
	call $__ssrefill_r
	beqz x10, LBB0_349
LBB0_338:                               //    in Loop: Header=BB0_5 Depth=1
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_374 ( x0 )
LBB0_339:                               //  %while.cond507.us.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x10, x2, 176
	add x11, x0, x0
	addi x12, x0, 8
	call $memset
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
LBB0_340:                               //  %while.cond507.us
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 4 ( x11 )
	sw x5, 84 ( x2 )                //  4-byte Folded Spill
	bgt x1, x0, LBB0_343
LBB0_341:                               //  %land.lhs.true.i1572.us
                                        //    in Loop: Header=BB0_340 Depth=2
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x11
	call $__ssrefill_r
	bgtu x10, x0, LBB0_338
LBB0_342:                               //  %land.lhs.true.if.end_crit_edge.i1574.us
                                        //    in Loop: Header=BB0_340 Depth=2
	lw x1, 4 ( x8 )
	add x11, x0, x8
	lui x8, 65535 >> 12 & 0xfffff
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
LBB0_343:                               //  %_sfgetwc_r.exit1581.us
                                        //    in Loop: Header=BB0_340 Depth=2
	lw x3, 0 ( x11 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lhu x7, 0 ( x3 )
	or x4, x8, x28
	addi x3, x3, 2
	addi x1, x1, -2
	xor x4, x4, x7
	sw x3, 0 ( x11 )
	sw x1, 4 ( x11 )
	sltu x1, x0, x4
	beqz x5, LBB0_361
LBB0_344:                               //  %_sfgetwc_r.exit1581.us
                                        //    in Loop: Header=BB0_340 Depth=2
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x8, x28
	beq x7, x3, LBB0_361
LBB0_345:                               //  %land.rhs514.us
                                        //    in Loop: Header=BB0_340 Depth=2
	sw x7, 64 ( x2 )                //  4-byte Folded Spill
	slli x1, x7, 16
	srai x8, x1, 16
	add x10, x0, x8
	call $iswspace
	bgtu x10, x0, LBB0_353
LBB0_346:                               //  %while.body519.us
                                        //    in Loop: Header=BB0_340 Depth=2
	call $__locale_mb_cur_max
	addi x10, x2, 95
	add x11, x0, x8
	addi x12, x2, 176
	call $wcrtomb
	xori x1, x10, -1
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB0_462
LBB0_347:                               //  %if.end540.us
                                        //    in Loop: Header=BB0_340 Depth=2
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x10, x5, LBB0_358
LBB0_348:                               //  %if.end551.us
                                        //    in Loop: Header=BB0_340 Depth=2
	sub x5, x5, x10
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 72 ( x2 )                //  4-byte Folded Spill
	lui x8, 65535 >> 12 & 0xfffff
	jalr x0, LBB0_340 ( x0 )
LBB0_349:                               //  %land.lhs.true.if.end_crit_edge.i1574
                                        //    in Loop: Header=BB0_336 Depth=2
	lw x1, 4 ( x8 )
	add x11, x0, x8
	lui x8, 65535 >> 12 & 0xfffff
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
LBB0_350:                               //  %_sfgetwc_r.exit1581
                                        //    in Loop: Header=BB0_336 Depth=2
	lw x3, 0 ( x11 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lhu x7, 0 ( x3 )
	or x4, x8, x28
	addi x3, x3, 2
	addi x1, x1, -2
	xor x4, x4, x7
	sw x3, 0 ( x11 )
	sw x1, 4 ( x11 )
	sltu x1, x0, x4
	beqz x5, LBB0_361
LBB0_351:                               //  %_sfgetwc_r.exit1581
                                        //    in Loop: Header=BB0_336 Depth=2
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x8, x28
	beq x7, x3, LBB0_361
LBB0_352:                               //  %land.rhs514
                                        //    in Loop: Header=BB0_336 Depth=2
	sw x7, 64 ( x2 )                //  4-byte Folded Spill
	slli x1, x7, 16
	srai x8, x1, 16
	add x10, x0, x8
	call $iswspace
	beqz x10, LBB0_354
LBB0_353:                               //    in Loop: Header=BB0_5 Depth=1
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_358 ( x0 )
LBB0_354:                               //  %while.body519
                                        //    in Loop: Header=BB0_336 Depth=2
	call $__locale_mb_cur_max
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x10, x1, LBB0_356
LBB0_355:                               //  %if.then526
                                        //    in Loop: Header=BB0_336 Depth=2
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	addi x12, x2, 176
	call $wcrtomb
	add x8, x0, x10
	xori x1, x8, -1
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	bgtu x1, x0, LBB0_360
	jalr x0, LBB0_462 ( x0 )
LBB0_356:                               //  %if.else533
                                        //    in Loop: Header=BB0_336 Depth=2
	addi x10, x2, 95
	add x11, x0, x8
	addi x12, x2, 176
	call $wcrtomb
	add x8, x0, x10
	xori x1, x8, -1
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB0_462
LBB0_357:                               //  %if.end540
                                        //    in Loop: Header=BB0_336 Depth=2
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	bgeu x1, x8, LBB0_359
LBB0_358:                               //    in Loop: Header=BB0_5 Depth=1
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_362 ( x0 )
LBB0_359:                               //  %if.then547
                                        //    in Loop: Header=BB0_336 Depth=2
	lw x10, 56 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 95
	add x12, x0, x8
	call $memcpy
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
LBB0_360:                               //  %if.end551
                                        //    in Loop: Header=BB0_336 Depth=2
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sub x5, x5, x8
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x8, x1
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 72 ( x2 )                //  4-byte Folded Spill
	lui x8, 65535 >> 12 & 0xfffff
	jalr x0, LBB0_336 ( x0 )
LBB0_361:                               //  %while.end559
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x7, 64 ( x2 )                //  4-byte Folded Spill
	andi x1, x1, 1
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB0_374
LBB0_362:                               //  %if.end.i1586
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, 65503 & 0xfff
	lhu x1, 12 ( x11 )
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x11 )
	lw x1, 48 ( x11 )
	nop
	beqz x1, LBB0_366
LBB0_363:                               //  %if.then4.i1590
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 52 ( x11 )
	lw x3, 4 ( x11 )
	nop
	bgt x1, x3, LBB0_365
LBB0_364:                               //  %land.lhs.true.i1593
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	nop
	call $__submore
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	bgtu x10, x0, LBB0_374
LBB0_365:                               //  %if.end9.i1598
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x11 )
	nop
	addi x3, x1, -2
	sw x3, 0 ( x11 )
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, -2 ( x1 )
	jalr x0, LBB0_372 ( x0 )
LBB0_366:                               //  %if.end14.i1601
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 16 ( x11 )
	nop
	bgtu x3, x0, LBB0_369
LBB0_367:                               //  %if.end14.if.end34_crit_edge.i1605
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x11 )
	lw x5, 64 ( x2 )                //  4-byte Folded Reload
LBB0_368:                               //  %if.end34.i1624
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 4 ( x11 )
	nop
	sw x3, 60 ( x11 )
	sw x1, 56 ( x11 )
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x11 )
	addi x1, x0, 3
	sw x1, 52 ( x11 )
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x11 )
	sh x5, 65 ( x11 )
	addi x1, x0, 2
	jalr x0, LBB0_373 ( x0 )
LBB0_369:                               //  %land.lhs.true18.i1608
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x11 )
	lw x5, 64 ( x2 )                //  4-byte Folded Reload
	bgeu x3, x1, LBB0_368
LBB0_370:                               //  %land.lhs.true24.i1612
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x3, -2 ( x1 )
	nop
	bne x3, x5, LBB0_368
LBB0_371:                               //  %if.then29.i1615
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x1, -2
	sw x1, 0 ( x11 )
LBB0_372:                               //  %if.end564
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 4 ( x11 )
	nop
	addi x1, x1, 2
LBB0_373:                               //  %if.end564
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x1, 4 ( x11 )
LBB0_374:                               //  %if.end564
                                        //    in Loop: Header=BB0_5 Depth=1
	beqz x4, LBB0_502
LBB0_501:                               //  %if.end564
                                        //    in Loop: Header=BB0_5 Depth=1
	jalr x0, LBB0_48 ( x0 )
LBB0_502:                               //  %if.end564
                                        //    in Loop: Header=BB0_5 Depth=1
LBB0_375:                               //  %if.then567
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sb x0, 0 ( x1 )
	jalr x0, LBB0_333 ( x0 )
LBB0_376:                               //  %sw.bb572
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x5, -1
	addi x3, x0, 39
	add x9, x0, x3
	addi x3, x0, 38
	bgtu x1, x3, LBB0_378
LBB0_377:                               //  %sw.bb572
                                        //    in Loop: Header=BB0_5 Depth=1
	add x9, x0, x5
LBB0_378:                               //  %sw.bb572
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x7, x4, 1408
	bgtu x9, x0, LBB0_380
LBB0_379:                               //    in Loop: Header=BB0_5 Depth=1
	add x1, x0, x0
	add x9, x0, x1
	addi x1, x2, 96
	add x5, x0, x1
	jalr x0, LBB0_418 ( x0 )
LBB0_380:                               //  %for.body.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x9, 28 ( x2 )                //  4-byte Folded Spill
	lw x13, 4 ( x11 )
	addi x1, x2, 96
	add x5, x0, x1
	add x1, x0, x0
	add x9, x0, x1
LBB0_381:                               //  %for.body
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x9, 48 ( x2 )                //  4-byte Folded Spill
	sw x7, 64 ( x2 )                //  4-byte Folded Spill
	sw x5, 84 ( x2 )                //  4-byte Folded Spill
	bgt x13, x0, LBB0_385
LBB0_382:                               //  %land.lhs.true.i1630
                                        //    in Loop: Header=BB0_381 Depth=2
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x11
	call $__ssrefill_r
	beqz x10, LBB0_384
LBB0_383:                               //    in Loop: Header=BB0_5 Depth=1
	add x11, x0, x8
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	lw x7, 64 ( x2 )                //  4-byte Folded Reload
	lw x9, 48 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_418 ( x0 )
LBB0_384:                               //  %land.lhs.true.if.end_crit_edge.i1632
                                        //    in Loop: Header=BB0_381 Depth=2
	lw x13, 4 ( x8 )
	add x11, x0, x8
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
LBB0_385:                               //  %_sfgetwc_r.exit1639
                                        //    in Loop: Header=BB0_381 Depth=2
	lw x3, 0 ( x11 )
	nop
	lh x1, 0 ( x3 )
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	addi x3, x3, 2
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	sw x3, 0 ( x11 )
	sw x13, 16 ( x2 )               //  4-byte Folded Spill
	addi x13, x13, -2
	sw x13, 4 ( x11 )
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	addi x10, x1, 1
	addi x1, x0, 121
	bgeu x1, x10, LBB0_392
LBB0_386:                               //    in Loop: Header=BB0_5 Depth=1
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	lw x7, 64 ( x2 )                //  4-byte Folded Reload
	lw x9, 48 ( x2 )                //  4-byte Folded Reload
LBB0_387:                               //  %if.end.i1644
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x1, 12 ( x11 )
	ori x28, x0, 65503 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x11 )
	lw x1, 48 ( x11 )
	nop
	beqz x1, LBB0_412
LBB0_388:                               //  %if.then4.i1648
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 52 ( x11 )
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	bgt x1, x13, LBB0_391
LBB0_389:                               //  %land.lhs.true.i1651
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x11
	call $__submore
	bgtu x10, x0, LBB0_383
LBB0_390:                               //  %land.lhs.true.i1651.if.end9.i1656_crit_edge
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 0 ( x8 )
	add x11, x0, x8
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	lw x7, 64 ( x2 )                //  4-byte Folded Reload
	lw x9, 48 ( x2 )                //  4-byte Folded Reload
LBB0_391:                               //  %if.end9.i1656
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x3, -2
	sw x1, 0 ( x11 )
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sb x1, -2 ( x3 )
	lw x1, 4 ( x11 )
	nop
	addi x1, x1, 2
	jalr x0, LBB0_417 ( x0 )
LBB0_392:                               //  %_sfgetwc_r.exit1639
                                        //    in Loop: Header=BB0_381 Depth=2
	addi x11, x0, 4
	add x8, x0, x13
	call $__mulsi3
	add x13, x0, x8
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	ori x28, x0, JTI0_1 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI0_1 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	lw x7, 64 ( x2 )                //  4-byte Folded Reload
	lw x9, 48 ( x2 )                //  4-byte Folded Reload
	jr x1
LBB0_393:                               //  %sw.bb584
                                        //    in Loop: Header=BB0_381 Depth=2
	add x1, x0, x0
	lw x4, 60 ( x2 )                //  4-byte Folded Reload
	nop
	bne x4, x1, LBB0_395
LBB0_394:                               //    in Loop: Header=BB0_381 Depth=2
	ori x7, x7, 512
LBB0_395:                               //  %sw.bb584
                                        //    in Loop: Header=BB0_381 Depth=2
	addi x1, x0, 8
	add x3, x0, x0
	beq x4, x3, LBB0_397
LBB0_396:                               //  %sw.bb584
                                        //    in Loop: Header=BB0_381 Depth=2
	add x1, x0, x4
LBB0_397:                               //  %sw.bb584
                                        //    in Loop: Header=BB0_381 Depth=2
	andi x3, x7, 1024
	beqz x3, LBB0_403
LBB0_398:                               //  %if.then592
                                        //    in Loop: Header=BB0_381 Depth=2
	andi x7, x7, -1409
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_408 ( x0 )
LBB0_400:                               //  %sw.bb597
                                        //    in Loop: Header=BB0_381 Depth=2
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 1
	ori x28, x0, $__ssvfiwscanf_r.basefix & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $__ssvfiwscanf_r.basefix >> 12 & 0xfffff
	or x3, x3, x28
	add x1, x3, x1
	andi x7, x7, -897
	lh x1, 0 ( x1 )
	nop
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_408 ( x0 )
LBB0_401:                               //  %sw.bb600
                                        //    in Loop: Header=BB0_381 Depth=2
	lw x4, 60 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x4, 1
	ori x28, x0, $__ssvfiwscanf_r.basefix & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $__ssvfiwscanf_r.basefix >> 12 & 0xfffff
	or x3, x3, x28
	add x1, x3, x1
	lh x1, 0 ( x1 )
	addi x3, x4, -1
	sltiu x3, x3, 8
	beqz x3, LBB0_403
LBB0_402:                               //    in Loop: Header=BB0_5 Depth=1
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_387 ( x0 )
LBB0_403:                               //  %if.else594
                                        //    in Loop: Header=BB0_381 Depth=2
	andi x7, x7, -897
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_408 ( x0 )
LBB0_404:                               //  %sw.bb608
                                        //    in Loop: Header=BB0_381 Depth=2
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	slti x1, x1, 11
	bgtu x1, x0, LBB0_387
LBB0_405:                               //  %if.end612
                                        //    in Loop: Header=BB0_381 Depth=2
	andi x7, x7, -897
	jalr x0, LBB0_408 ( x0 )
LBB0_406:                               //  %sw.bb614
                                        //    in Loop: Header=BB0_381 Depth=2
	andi x1, x7, 128
	beqz x1, LBB0_387
LBB0_407:                               //  %if.then617
                                        //    in Loop: Header=BB0_381 Depth=2
	ori x28, x0, -65665 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -65665 >> 12 & 0xfffff
	or x1, x1, x28
	and x1, x1, x7
	lui x3, 65536>>12 
	or x7, x3, x1
LBB0_408:                               //  %ok
                                        //    in Loop: Header=BB0_381 Depth=2
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sh x1, 0 ( x5 )
	addi x5, x5, 2
	addi x9, x9, 1
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	bne x1, x9, LBB0_381
	jalr x0, LBB0_418 ( x0 )
LBB0_409:                               //  %sw.bb621
                                        //    in Loop: Header=BB0_381 Depth=2
	andi x1, x7, 512
	beqz x1, LBB0_387
LBB0_410:                               //  %land.lhs.true624
                                        //    in Loop: Header=BB0_381 Depth=2
	srli x1, x7, 15
	andi x1, x1, 2
	addi x3, x2, 98
	add x1, x1, x3
	bne x5, x1, LBB0_387
LBB0_411:                               //  %if.then634
                                        //    in Loop: Header=BB0_381 Depth=2
	andi x7, x7, -513
	addi x1, x0, 16
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_408 ( x0 )
LBB0_412:                               //  %if.end14.i1659
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 16 ( x11 )
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB0_416
LBB0_413:                               //  %if.end14.i1659
                                        //    in Loop: Header=BB0_5 Depth=1
	bgeu x1, x10, LBB0_416
LBB0_414:                               //  %land.lhs.true24.i1670
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	and x1, x1, x4
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	lhu x3, 0 ( x3 )
	nop
	bne x3, x1, LBB0_416
LBB0_415:                               //  %if.then29.i1673
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x11 )
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_417 ( x0 )
LBB0_416:                               //  %if.end34.i1682
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x13, 60 ( x11 )
	sw x10, 56 ( x11 )
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x11 )
	addi x1, x0, 3
	sw x1, 52 ( x11 )
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x11 )
	sh x4, 65 ( x11 )
	addi x1, x0, 2
LBB0_417:                               //  %for.end
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x1, 4 ( x11 )
LBB0_418:                               //  %for.end
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x7, 256
	beqz x1, LBB0_432
LBB0_419:                               //  %if.then648
	ble x9, x0, LBB0_466
LBB0_420:                               //  %if.then652
	lhu x8, -2 ( x5 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	beq x8, x1, LBB0_466
LBB0_421:                               //  %if.end.i1688
	lhu x1, 12 ( x11 )
	ori x28, x0, 65503 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x11 )
	lw x1, 48 ( x11 )
	nop
	beqz x1, LBB0_425
LBB0_422:                               //  %if.then4.i1692
	lw x1, 52 ( x11 )
	lw x3, 4 ( x11 )
	nop
	bgt x1, x3, LBB0_424
LBB0_423:                               //  %land.lhs.true.i1695
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	nop
	call $__submore
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	bgtu x10, x0, LBB0_466
LBB0_424:                               //  %if.end9.i1700
	lw x1, 0 ( x11 )
	nop
	addi x3, x1, -2
	sw x3, 0 ( x11 )
	sb x8, -2 ( x1 )
	jalr x0, LBB0_431 ( x0 )
LBB0_425:                               //  %if.end14.i1703
	lw x3, 16 ( x11 )
	nop
	bgtu x3, x0, LBB0_428
LBB0_426:                               //  %if.end14.if.end34_crit_edge.i1707
	lw x1, 0 ( x11 )
LBB0_427:                               //  %if.end34.i1725
	lw x3, 4 ( x11 )
	nop
	sw x3, 60 ( x11 )
	sw x1, 56 ( x11 )
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x11 )
	addi x1, x0, 3
	sw x1, 52 ( x11 )
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x11 )
	sh x8, 65 ( x11 )
	addi x1, x0, 2
	sw x1, 4 ( x11 )
	jalr x0, LBB0_466 ( x0 )
LBB0_428:                               //  %land.lhs.true18.i1710
	lw x1, 0 ( x11 )
	nop
	bgeu x3, x1, LBB0_427
LBB0_429:                               //  %land.lhs.true24.i1714
	lhu x3, -2 ( x1 )
	nop
	bne x3, x8, LBB0_427
LBB0_430:                               //  %if.then29.i1717
	addi x1, x1, -2
	sw x1, 0 ( x11 )
LBB0_431:                               //  %cleanup
	lw x1, 4 ( x11 )
	nop
	addi x1, x1, 2
	sw x1, 4 ( x11 )
	jalr x0, LBB0_466 ( x0 )
LBB0_432:                               //  %if.end657
                                        //    in Loop: Header=BB0_5 Depth=1
	lh x8, -2 ( x5 )
	nop
	ori x1, x8, 32
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, 65535 >> 12 & 0xfffff
	or x3, x4, x28
	and x1, x3, x1
	xori x1, x1, 120
	bgtu x1, x0, LBB0_446
LBB0_433:                               //  %if.then665
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x5, x5, -2
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x4, x28
	and x3, x1, x8
	beq x3, x1, LBB0_446
LBB0_434:                               //  %if.end.i1731
                                        //    in Loop: Header=BB0_5 Depth=1
	lhu x1, 12 ( x11 )
	ori x28, x0, 65503 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65503 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	sh x1, 12 ( x11 )
	lw x1, 48 ( x11 )
	nop
	beqz x1, LBB0_439
LBB0_435:                               //  %if.then4.i1735
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x7, 64 ( x2 )                //  4-byte Folded Spill
	sw x5, 84 ( x2 )                //  4-byte Folded Spill
	lw x1, 52 ( x11 )
	lw x3, 4 ( x11 )
	nop
	bgt x1, x3, LBB0_438
LBB0_436:                               //  %land.lhs.true.i1738
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	nop
	call $__submore
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	beqz x10, LBB0_438
LBB0_437:                               //    in Loop: Header=BB0_5 Depth=1
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	lw x7, 64 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_446 ( x0 )
LBB0_438:                               //  %if.end9.i1743
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x11 )
	nop
	addi x3, x1, -2
	sw x3, 0 ( x11 )
	sb x8, -2 ( x1 )
	lw x1, 4 ( x11 )
	nop
	addi x1, x1, 2
	sw x1, 4 ( x11 )
	jalr x0, LBB0_437 ( x0 )
LBB0_439:                               //  %if.end14.i1746
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 16 ( x11 )
	nop
	bgtu x3, x0, LBB0_442
LBB0_440:                               //  %if.end14.if.end34_crit_edge.i1750
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x11 )
LBB0_441:                               //  %if.end34.i1768
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 4 ( x11 )
	nop
	sw x3, 60 ( x11 )
	sw x1, 56 ( x11 )
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x11 )
	addi x1, x0, 3
	sw x1, 52 ( x11 )
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x11 )
	sh x8, 65 ( x11 )
	addi x1, x0, 2
	jalr x0, LBB0_445 ( x0 )
LBB0_442:                               //  %land.lhs.true18.i1753
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x11 )
	nop
	bgeu x3, x1, LBB0_441
LBB0_443:                               //  %land.lhs.true24.i1757
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	or x3, x3, x28
	and x3, x3, x8
	lhu x4, -2 ( x1 )
	nop
	bne x4, x3, LBB0_441
LBB0_444:                               //  %if.then29.i1760
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x1, -2
	sw x1, 0 ( x11 )
	lw x1, 4 ( x11 )
	nop
	addi x1, x1, 2
LBB0_445:                               //  %if.end668
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x1, 4 ( x11 )
LBB0_446:                               //  %if.end668
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x7, 16
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB0_460
LBB0_447:                               //  %if.then672
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x5, 84 ( x2 )                //  4-byte Folded Spill
	sh x0, 0 ( x5 )
	add x8, x0, x7
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 96
	add x12, x0, x0
	sw x3, 60 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x3
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	andi x1, x8, 32
	beqz x1, LBB0_450
LBB0_448:                               //  %if.then677
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 184 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 184 ( x2 )
	lw x1, 0 ( x1 )
	nop
LBB0_449:                               //  %if.end709
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x10, 0 ( x1 )
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_459 ( x0 )
LBB0_450:                               //  %if.else679
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x8, 4
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB0_452
LBB0_451:                               //  %if.then682
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 184 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 184 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sh x10, 0 ( x1 )
	jalr x0, LBB0_459 ( x0 )
LBB0_452:                               //  %if.else685
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x8, 1
	bgtu x1, x0, LBB0_458
LBB0_453:                               //  %if.else690
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x8, 2
	beqz x1, LBB0_458
LBB0_454:                               //  %if.then693
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, $_wcstoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_wcstoul_r >> 12 & 0xfffff
	or x1, x1, x28
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	bne x3, x1, LBB0_456
LBB0_455:                               //  %if.then696
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 96
	add x12, x0, x0
	lw x13, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_wcstoull_r
	jalr x0, LBB0_457 ( x0 )
LBB0_456:                               //  %if.else699
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 96
	add x12, x0, x0
	lw x13, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_wcstoll_r
LBB0_457:                               //  %if.end702
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 184 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 184 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x11, 4 ( x1 )
	jalr x0, LBB0_449 ( x0 )
LBB0_458:                               //  %if.else704
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 184 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 184 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x10, 0 ( x1 )
LBB0_459:                               //  %if.end709
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
LBB0_460:                               //  %if.end711
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x2, 96
	sub x1, x5, x1
	srai x1, x1, 1
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x1
	sw x3, 72 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_48 ( x0 )
LBB0_461:                               //  %if.end34.i1146
	addi x3, x0, 3
	addi x4, x0, 2
	sw x5, 60 ( x11 )
	sw x1, 56 ( x11 )
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x11 )
	sw x3, 52 ( x11 )
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x11 )
	sh x8, 65 ( x11 )
	sw x4, 4 ( x11 )
LBB0_462:                               //  %input_failure
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_464
LBB0_463:                               //  %land.lhs.true720
	lbu x1, 12 ( x11 )
	nop
	andi x1, x1, 64
	srli x1, x1, 6
	beqz x1, LBB0_466
LBB0_464:                               //  %cleanup.loopexit
	not x1, x0
LBB0_465:                               //  %cleanup
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
LBB0_466:                               //  %cleanup
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	lw x8, 188 ( x2 )               //  4-byte Folded Reload
	lw x1, 196 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 200
$cfi5:
	.cfi_adjust_cfa_offset -200
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__ssvfiwscanf_r, ($func_end0)-($__ssvfiwscanf_r)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	LBB0_464
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_32
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_54
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_58
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_57
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_59
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_62
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_71
	.long	LBB0_81
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_56
	.long	LBB0_84
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_49
	.long	LBB0_466
	.long	LBB0_73
	.long	LBB0_85
	.long	LBB0_72
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_87
	.long	LBB0_466
	.long	LBB0_86
	.long	LBB0_466
	.long	LBB0_466
	.long	LBB0_59
JTI0_1:
	.long	LBB0_418
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_406
	.long	LBB0_387
	.long	LBB0_406
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_393
	.long	LBB0_400
	.long	LBB0_400
	.long	LBB0_400
	.long	LBB0_400
	.long	LBB0_400
	.long	LBB0_400
	.long	LBB0_400
	.long	LBB0_401
	.long	LBB0_401
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_404
	.long	LBB0_404
	.long	LBB0_404
	.long	LBB0_404
	.long	LBB0_404
	.long	LBB0_404
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_409
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_404
	.long	LBB0_404
	.long	LBB0_404
	.long	LBB0_404
	.long	LBB0_404
	.long	LBB0_404
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_387
	.long	LBB0_409

	.address_space	0	
	.type	$__ssvfiwscanf_r.basefix,@object //  @__ssvfiwscanf_r.basefix
	.p2align	1
$__ssvfiwscanf_r.basefix:
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
	.size	$__ssvfiwscanf_r.basefix, 34


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
