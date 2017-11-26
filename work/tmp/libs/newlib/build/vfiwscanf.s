	.text
	.file	"vfiwscanf.bc"
	.globl	$vfiwscanf
	.type	$vfiwscanf,@function
$vfiwscanf:                             //  @vfiwscanf
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi2:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x12
	add x4, x0, x11
	add x5, x0, x10
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x8, 0 ( x1 )
	nop
	beqz x8, LBB0_3
LBB0_1:                                 //  %land.lhs.true
	lw x1, 56 ( x8 )
	nop
	bgtu x1, x0, LBB0_3
LBB0_2:                                 //  %if.then
	add x10, x0, x8
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	sw x4, 12 ( x2 )                //  4-byte Folded Spill
	sw x5, 8 ( x2 )                 //  4-byte Folded Spill
	call $__sinit
	lw x5, 8 ( x2 )                 //  4-byte Folded Reload
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
LBB0_3:                                 //  %if.end
	add x10, x0, x8
	add x11, x0, x5
	add x12, x0, x4
	add x13, x0, x3
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi5:
	.cfi_adjust_cfa_offset -32
$cfi6:
	.cfi_def_cfa 2, 0
	j $__svfiwscanf_r
$func_end0:
	.size	$vfiwscanf, ($func_end0)-($vfiwscanf)
	.cfi_endproc

	.globl	$__svfiwscanf_r
	.type	$__svfiwscanf_r,@function
$__svfiwscanf_r:                        //  @__svfiwscanf_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -184
$cfi9:
	.cfi_adjust_cfa_offset 184
	sw x1, 180 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 172 ( x2 )               //  4-byte Folded Spill
	sw x10, 64 ( x2 )               //  4-byte Folded Spill
	sw x11, 60 ( x2 )               //  4-byte Folded Spill
	lh x3, 12 ( x11 )
	lui x1, 8192>>12 
	sw x13, 168 ( x2 )
	and x4, x1, x3
	bgtu x4, x0, LBB1_2
LBB1_1:                                 //  %if.then7
	or x3, x1, x3
	lw x4, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sh x3, 12 ( x4 )
	lw x3, 100 ( x4 )
	nop
	or x1, x1, x3
	sw x1, 100 ( x4 )
LBB1_2:                                 //  %for.cond.preheader
	lhu x4, 0 ( x12 )
	nop
	bgtu x4, x0, LBB1_4
LBB1_3:
	add x1, x0, x0
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_236 ( x0 )
LBB1_4:                                 //  %if.end17.lr.ph
	slli x1, x4, 16
	add x3, x0, x0
	srai x8, x1, 16
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	sw x3, 52 ( x2 )                //  4-byte Folded Spill
LBB1_5:                                 //  %if.end17
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_6 Depth 2
                                        //      Child Loop BB1_13 Depth 2
                                        //        Child Loop BB1_14 Depth 3
                                        //      Child Loop BB1_42 Depth 2
                                        //      Child Loop BB1_65 Depth 2
                                        //      Child Loop BB1_83 Depth 2
                                        //      Child Loop BB1_80 Depth 2
                                        //      Child Loop BB1_90 Depth 2
                                        //      Child Loop BB1_219 Depth 2
                                        //      Child Loop BB1_175 Depth 2
                                        //      Child Loop BB1_182 Depth 2
                                        //      Child Loop BB1_200 Depth 2
                                        //      Child Loop BB1_193 Depth 2
                                        //      Child Loop BB1_113 Depth 2
                                        //      Child Loop BB1_118 Depth 2
                                        //      Child Loop BB1_126 Depth 2
                                        //      Child Loop BB1_130 Depth 2
                                        //      Child Loop BB1_141 Depth 2
                                        //      Child Loop BB1_155 Depth 2
	sw x4, 68 ( x2 )                //  4-byte Folded Spill
	addi x12, x12, 2
	sw x12, 72 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $iswspace
	beqz x10, LBB1_10
LBB1_6:                                 //  %while.cond
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x8, x0, x10
	xori x1, x8, -1
	beqz x1, LBB1_22
LBB1_7:                                 //  %land.rhs
                                        //    in Loop: Header=BB1_6 Depth=2
	add x10, x0, x8
	call $iswspace
	bgtu x10, x0, LBB1_6
LBB1_8:                                 //  %if.then27
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
LBB1_9:                                 //  %for.cond.backedge
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x12, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_ungetwc_r
	jalr x0, LBB1_22 ( x0 )
LBB1_10:                                //  %if.end30
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	and x1, x1, x3
	xori x1, x1, 37
	beqz x1, LBB1_12
LBB1_11:                                //    in Loop: Header=BB1_5 Depth=1
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 72 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_17 ( x0 )
LBB1_12:                                //  %again.outer.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x9, 72 ( x2 )                //  4-byte Folded Reload
	add x1, x0, x0
	add x7, x0, x1
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
LBB1_13:                                //  %again.outer
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_14 Depth 3
	addi x9, x9, 2
LBB1_14:                                //  %again
                                        //    Parent Loop BB1_5 Depth=1
                                        //      Parent Loop BB1_13 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sw x9, 72 ( x2 )                //  4-byte Folded Spill
	lh x8, -2 ( x9 )
	addi x1, x0, 120
	bgeu x1, x8, LBB1_266
LBB1_265:                               //  %again
                                        //    in Loop: Header=BB1_14 Depth=3
	jalr x0, LBB1_236 ( x0 )
LBB1_266:                               //  %again
                                        //    in Loop: Header=BB1_14 Depth=3
LBB1_15:                                //  %again
                                        //    in Loop: Header=BB1_14 Depth=3
	sw x7, 68 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	addi x11, x0, 4
	call $__mulsi3
	ori x28, x0, JTI1_0 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI1_0 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB1_16:                                //  %literal.loopexit
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x8, x0, 37
LBB1_17:                                //  %literal
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x1, x0, x10
	xori x3, x1, -1
	beqz x3, LBB1_67
LBB1_18:                                //  %if.end41
                                        //    in Loop: Header=BB1_5 Depth=1
	beq x1, x8, LBB1_20
LBB1_19:                                //  %if.then44
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	lw x12, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_ungetwc_r
	jalr x0, LBB1_67 ( x0 )
LBB1_20:                                //  %if.end46
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
LBB1_21:                                //  %for.cond.backedge
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
LBB1_22:                                //  %for.cond.backedge
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	nop
LBB1_23:                                //  %for.cond.backedge
                                        //    in Loop: Header=BB1_5 Depth=1
	lhu x4, 0 ( x12 )
	nop
	slli x1, x4, 16
	srai x8, x1, 16
	bgtu x4, x0, LBB1_5
	jalr x0, LBB1_236 ( x0 )
LBB1_24:                                //  %sw.bb49
                                        //    in Loop: Header=BB1_13 Depth=2
	lw x9, 72 ( x2 )                //  4-byte Folded Reload
	nop
	lhu x1, 0 ( x9 )
	addi x3, x0, 108
	bne x1, x3, LBB1_26
LBB1_25:                                //    in Loop: Header=BB1_13 Depth=2
	addi x9, x9, 2
LBB1_26:                                //  %sw.bb49
                                        //    in Loop: Header=BB1_13 Depth=2
	addi x3, x0, 2
	addi x4, x0, 108
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	lw x7, 68 ( x2 )                //  4-byte Folded Reload
	beq x1, x4, LBB1_28
LBB1_27:                                //  %sw.bb49
                                        //    in Loop: Header=BB1_13 Depth=2
	slti x3, x0, 1
LBB1_28:                                //  %sw.bb49
                                        //    in Loop: Header=BB1_13 Depth=2
	or x5, x3, x5
	sw x5, 44 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_13 ( x0 )
LBB1_29:                                //  %again.outer.backedge.loopexit1533
                                        //    in Loop: Header=BB1_13 Depth=2
	addi x1, x0, 16
LBB1_30:                                //  %again.outer
                                        //    in Loop: Header=BB1_13 Depth=2
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	or x3, x1, x3
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
	lw x7, 68 ( x2 )                //  4-byte Folded Reload
	lw x9, 72 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_13 ( x0 )
LBB1_31:                                //  %again.outer.backedge.loopexit1687
                                        //    in Loop: Header=BB1_13 Depth=2
	addi x1, x0, 4
	jalr x0, LBB1_30 ( x0 )
LBB1_32:                                //  %again.outer.backedge.loopexit
                                        //    in Loop: Header=BB1_13 Depth=2
	addi x1, x0, 2
	jalr x0, LBB1_30 ( x0 )
LBB1_33:                                //  %sw.bb62
                                        //    in Loop: Header=BB1_14 Depth=3
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	addi x11, x0, 10
	call $__mulsi3
	add x1, x8, x10
	lw x9, 72 ( x2 )                //  4-byte Folded Reload
	nop
	addi x9, x9, 2
	addi x7, x1, -48
	jalr x0, LBB1_14 ( x0 )
LBB1_34:                                //  %sw.bb67
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_wcstoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_wcstoul_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	nop
	ori x5, x5, 512
LBB1_35:                                //  %sw.epilog
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	addi x1, x0, 3
	add x9, x0, x1
	addi x1, x0, 16
	add x3, x0, x1
	jalr x0, LBB1_62 ( x0 )
LBB1_36:                                //  %sw.bb70
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x7, 72 ( x2 )                //  4-byte Folded Reload
	nop
	lhu x3, 0 ( x7 )
	addi x1, x0, 94
	bne x3, x1, LBB1_38
LBB1_37:                                //    in Loop: Header=BB1_5 Depth=1
	addi x1, x7, 2
	jalr x0, LBB1_39 ( x0 )
LBB1_38:                                //  %sw.bb70
                                        //    in Loop: Header=BB1_5 Depth=1
	add x1, x0, x7
LBB1_39:                                //  %sw.bb70
                                        //    in Loop: Header=BB1_5 Depth=1
	lhu x4, 0 ( x1 )
	addi x5, x0, 93
	bne x4, x5, LBB1_41
LBB1_40:                                //    in Loop: Header=BB1_5 Depth=1
	addi x1, x1, 2
LBB1_41:                                //  %sw.bb70
                                        //    in Loop: Header=BB1_5 Depth=1
	xori x3, x3, 94
	seqz x3, x3
	andi x3, x3, 1
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
LBB1_42:                                //  %while.cond84
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x4, x1, 2
	lhu x3, 0 ( x1 )
	nop
	xori x1, x3, 93
	beqz x1, LBB1_44
LBB1_43:                                //  %while.cond84
                                        //    in Loop: Header=BB1_42 Depth=2
	add x1, x0, x4
	bgtu x3, x0, LBB1_42
LBB1_44:                                //  %while.end95
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x1, x4, -2
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	ori x5, x5, 64
	slti x1, x0, 1
	add x9, x0, x1
	sw x7, 32 ( x2 )                //  4-byte Folded Spill
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_62 ( x0 )
LBB1_45:                                //  %sw.bb98
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	nop
	ori x5, x5, 64
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	add x1, x0, x0
	add x9, x0, x1
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_62 ( x0 )
LBB1_46:                                //  %sw.bb100
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_wcstoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_wcstoul_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	nop
	ori x5, x5, 544
	jalr x0, LBB1_35 ( x0 )
LBB1_47:                                //  %sw.bb102
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 16
	bgtu x1, x0, LBB1_22
LBB1_48:                                //  %if.end106
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x3, 4
	lw x7, 72 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_50
LBB1_49:                                //  %if.then109
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 168 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	lw x1, 0 ( x1 )
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sh x3, 0 ( x1 )
	add x12, x0, x7
	jalr x0, LBB1_23 ( x0 )
LBB1_50:                                //  %if.else111
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x3, 1
	beqz x1, LBB1_52
LBB1_51:                                //  %if.then114
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 168 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	lw x1, 0 ( x1 )
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 0 ( x1 )
	add x12, x0, x7
	jalr x0, LBB1_23 ( x0 )
LBB1_52:                                //  %if.else116
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x3, 2
	beqz x1, LBB1_51
LBB1_53:                                //  %if.then119
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 168 ( x2 )
	lw x5, 56 ( x2 )                //  4-byte Folded Reload
	nop
	srai x3, x5, 31
	addi x4, x1, 4
	sw x4, 168 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x3, 4 ( x1 )
	sw x5, 0 ( x1 )
	add x12, x0, x7
	jalr x0, LBB1_23 ( x0 )
LBB1_54:                                //  %sw.epilog.loopexit
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_wcstol_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_wcstol_r >> 12 & 0xfffff
LBB1_55:                                //  %sw.epilog
                                        //    in Loop: Header=BB1_5 Depth=1
	or x1, x1, x28
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	addi x1, x0, 3
	add x9, x0, x1
	addi x1, x0, 10
	add x3, x0, x1
	jalr x0, LBB1_61 ( x0 )
LBB1_57:                                //  %sw.epilog.loopexit1382
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_wcstol_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_wcstol_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	addi x1, x0, 3
	add x9, x0, x1
	add x1, x0, x0
	add x3, x0, x1
	jalr x0, LBB1_61 ( x0 )
LBB1_58:                                //  %sw.epilog.loopexit1534
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_wcstoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_wcstoul_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	addi x1, x0, 3
	add x9, x0, x1
	addi x1, x0, 8
	add x3, x0, x1
	jalr x0, LBB1_61 ( x0 )
LBB1_59:                                //  %sw.epilog.loopexit1688
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_wcstoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_wcstoul_r >> 12 & 0xfffff
	jalr x0, LBB1_55 ( x0 )
LBB1_60:                                //  %sw.epilog.loopexit1840
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	addi x1, x0, 2
	add x9, x0, x1
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
LBB1_61:                                //  %sw.epilog
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
LBB1_62:                                //  %sw.epilog
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x4, 72 ( x2 )                //  4-byte Folded Spill
	andi x1, x5, 64
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB1_64
LBB1_63:                                //    in Loop: Header=BB1_5 Depth=1
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_72 ( x0 )
LBB1_64:                                //  %while.cond144.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x9, 36 ( x2 )                //  4-byte Folded Spill
	sw x5, 44 ( x2 )                //  4-byte Folded Spill
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x8, x0, x10
	xori x1, x8, -1
	beqz x1, LBB1_67
LBB1_65:                                //  %land.rhs148
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x10, x0, x8
	call $iswspace
	beqz x10, LBB1_71
LBB1_66:                                //  %while.body152
                                        //    in Loop: Header=BB1_65 Depth=2
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x8, x0, x10
	xori x1, x8, -1
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 1
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB1_65
LBB1_67:                                //  %input_failure
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB1_69
LBB1_68:                                //  %land.lhs.true756
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	lbu x1, 12 ( x1 )
	nop
	andi x1, x1, 64
	srli x1, x1, 6
	beqz x1, LBB1_236
LBB1_69:                                //  %cleanup.loopexit
	not x1, x0
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_236 ( x0 )
LBB1_71:                                //  %if.end158
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	lw x12, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_ungetwc_r
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	lw x9, 36 ( x2 )                //  4-byte Folded Reload
	nop
LBB1_72:                                //  %if.end160
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x9, 3
	xori x3, x1, 1
	beqz x3, LBB1_106
LBB1_73:                                //  %if.end160
                                        //    in Loop: Header=BB1_5 Depth=1
	xori x3, x1, 2
	beqz x3, LBB1_170
LBB1_74:                                //  %if.end160
                                        //    in Loop: Header=BB1_5 Depth=1
	xori x1, x1, 3
	beqz x1, LBB1_214
LBB1_75:                                //  %sw.bb161
                                        //    in Loop: Header=BB1_5 Depth=1
	slti x1, x0, 1
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	beq x4, x1, LBB1_77
LBB1_76:                                //  %sw.bb161
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x4, 68 ( x2 )                //  4-byte Folded Spill
LBB1_77:                                //  %sw.bb161
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x3, x5, 16
	andi x1, x5, 1
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB1_87
LBB1_78:                                //  %if.then168
                                        //    in Loop: Header=BB1_5 Depth=1
	beqz x3, LBB1_82
LBB1_79:                                //  %land.rhs177.us.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	add x8, x0, x0
LBB1_80:                                //  %land.rhs177.us
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	xori x1, x10, -1
	beqz x1, LBB1_85
LBB1_81:                                //  %if.end188.us
                                        //    in Loop: Header=BB1_80 Depth=2
	addi x8, x8, 1
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	bne x1, x8, LBB1_80
	jalr x0, LBB1_86 ( x0 )
LBB1_82:                                //  %land.rhs177.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 168 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	lw x3, 0 ( x1 )
	add x8, x0, x0
LBB1_83:                                //  %land.rhs177
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	xori x1, x10, -1
	beqz x1, LBB1_85
LBB1_84:                                //  %if.then185
                                        //    in Loop: Header=BB1_83 Depth=2
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sh x10, 0 ( x3 )
	addi x3, x3, 2
	addi x8, x8, 1
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	bne x1, x8, LBB1_83
	jalr x0, LBB1_86 ( x0 )
LBB1_85:                                //  %while.end190
                                        //    in Loop: Header=BB1_5 Depth=1
	beqz x8, LBB1_67
LBB1_86:                                //  %if.end194
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	seqz x1, x1
	andi x1, x1, 1
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x1
	sw x3, 52 ( x2 )                //  4-byte Folded Spill
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x8
	jalr x0, LBB1_21 ( x0 )
LBB1_87:                                //  %if.else201
                                        //    in Loop: Header=BB1_5 Depth=1
	bgtu x3, x0, LBB1_89
LBB1_88:                                //  %if.then204
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 168 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
LBB1_89:                                //  %if.end206
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x10, x2, 160
	add x8, x0, x0
	add x11, x0, x8
	addi x12, x0, 8
	call $memset
LBB1_90:                                //  %land.rhs211
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	xori x1, x10, -1
	beqz x1, LBB1_97
LBB1_91:                                //  %while.body216
                                        //    in Loop: Header=BB1_90 Depth=2
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	call $__locale_mb_cur_max
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB1_94
LBB1_92:                                //  %while.body216
                                        //    in Loop: Header=BB1_90 Depth=2
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x10, x1, LBB1_94
LBB1_93:                                //  %if.then222
                                        //    in Loop: Header=BB1_90 Depth=2
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 16
	srai x12, x1, 16
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	addi x13, x2, 160
	call $_wcrtomb_r
	add x8, x0, x10
	xori x1, x8, -1
	beqz x1, LBB1_67
	jalr x0, LBB1_101 ( x0 )
LBB1_94:                                //  %if.else229
                                        //    in Loop: Header=BB1_90 Depth=2
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 16
	srai x12, x1, 16
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 79
	addi x13, x2, 160
	call $_wcrtomb_r
	add x8, x0, x10
	xori x1, x8, -1
	beqz x1, LBB1_67
LBB1_95:                                //  %if.end235
                                        //    in Loop: Header=BB1_90 Depth=2
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	bgeu x1, x8, LBB1_99
LBB1_96:                                //  %if.then238
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	lw x12, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_ungetwc_r
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	nop
LBB1_97:                                //  %while.end254
                                        //    in Loop: Header=BB1_5 Depth=1
	add x1, x0, x8
	beqz x8, LBB1_67
LBB1_98:                                //    in Loop: Header=BB1_5 Depth=1
	sub x1, x0, x1
	jalr x0, LBB1_105 ( x0 )
LBB1_99:                                //  %if.end240
                                        //    in Loop: Header=BB1_90 Depth=2
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB1_101
LBB1_100:                               //  %if.then243
                                        //    in Loop: Header=BB1_90 Depth=2
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 79
	add x12, x0, x8
	call $memcpy
LBB1_101:                               //  %if.end247
                                        //    in Loop: Header=BB1_90 Depth=2
	add x1, x0, x0
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	bne x3, x1, LBB1_103
LBB1_102:                               //  %if.end247
                                        //    in Loop: Header=BB1_90 Depth=2
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x8, x1
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
LBB1_103:                               //  %if.end247
                                        //    in Loop: Header=BB1_90 Depth=2
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x8
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	nop
	addi x8, x8, -1
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB1_90
LBB1_104:                               //  %if.end258.loopexit
                                        //    in Loop: Header=BB1_5 Depth=1
	sub x1, x0, x8
LBB1_105:                               //  %if.end258
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	seqz x3, x3
	andi x3, x3, 1
	lw x4, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x4, x3
	sw x4, 52 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_264 ( x0 )
LBB1_106:                               //  %sw.bb266
                                        //    in Loop: Header=BB1_5 Depth=1
	not x8, x0
	add x1, x0, x0
	beq x4, x1, LBB1_108
LBB1_107:                               //  %sw.bb266
                                        //    in Loop: Header=BB1_5 Depth=1
	add x8, x0, x4
LBB1_108:                               //  %sw.bb266
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x4, x5, 16
	andi x1, x5, 1
	beqz x1, LBB1_123
LBB1_109:                               //  %sw.bb266
                                        //    in Loop: Header=BB1_5 Depth=1
	seqz x3, x4
	bgtu x3, x0, LBB1_123
LBB1_110:                               //  %while.cond277.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x8, x0, x10
	xori x1, x8, -1
	beqz x1, LBB1_236
LBB1_111:                               //  %land.lhs.true281.lr.ph
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	srai x1, x1, 1
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB1_117
LBB1_112:                               //  %land.lhs.true281.us.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	add x1, x0, x0
	add x3, x0, x1
LBB1_113:                               //  %land.lhs.true281.us
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	sw x3, 68 ( x2 )                //  4-byte Folded Spill
	beq x1, x3, LBB1_122
LBB1_114:                               //  %land.rhs285.us
                                        //    in Loop: Header=BB1_113 Depth=2
	slli x1, x8, 16
	srai x11, x1, 16
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $wmemchr
	bgtu x10, x0, LBB1_122
LBB1_115:                               //  %while.body304.us
                                        //    in Loop: Header=BB1_113 Depth=2
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x8, x0, x10
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 1
	xori x1, x8, -1
	bgtu x1, x0, LBB1_113
LBB1_116:                               //    in Loop: Header=BB1_5 Depth=1
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_169 ( x0 )
LBB1_117:                               //  %land.lhs.true281.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	add x1, x0, x0
	add x3, x0, x1
LBB1_118:                               //  %land.lhs.true281
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x3, 68 ( x2 )                //  4-byte Folded Spill
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	beq x1, x3, LBB1_122
LBB1_119:                               //  %land.rhs285
                                        //    in Loop: Header=BB1_118 Depth=2
	slli x1, x8, 16
	srai x11, x1, 16
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $wmemchr
	beqz x10, LBB1_122
LBB1_120:                               //  %while.body304
                                        //    in Loop: Header=BB1_118 Depth=2
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x8, x0, x10
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 1
	xori x1, x8, -1
	bgtu x1, x0, LBB1_118
LBB1_121:                               //    in Loop: Header=BB1_5 Depth=1
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_169 ( x0 )
LBB1_122:                               //  %if.end311
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	lw x12, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_ungetwc_r
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x3, x0, LBB1_169
	jalr x0, LBB1_236 ( x0 )
LBB1_123:                               //  %if.else316
                                        //    in Loop: Header=BB1_5 Depth=1
	beqz x1, LBB1_136
LBB1_124:                               //  %if.then319
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 168 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x4, x0, x10
	xori x1, x4, -1
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 68 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB1_134
LBB1_125:                               //  %land.lhs.true325.lr.ph
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	srai x1, x1, 1
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB1_130
LBB1_126:                               //  %land.lhs.true325.us
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	beqz x8, LBB1_133
LBB1_127:                               //  %land.end352.us
                                        //    in Loop: Header=BB1_126 Depth=2
	slli x1, x4, 16
	srai x11, x1, 16
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x4
	call $wmemchr
	bgtu x10, x0, LBB1_132
LBB1_128:                               //  %while.body353.us
                                        //    in Loop: Header=BB1_126 Depth=2
	add x1, x0, x8
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	nop
	addi x8, x8, -1
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	sh x1, 0 ( x3 )
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x4, x0, x10
	xori x1, x4, -1
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 2
	sw x3, 68 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB1_126
	jalr x0, LBB1_134 ( x0 )
LBB1_129:                               //  %while.body353
                                        //    in Loop: Header=BB1_130 Depth=2
	add x1, x0, x8
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	nop
	addi x8, x8, -1
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	sh x1, 0 ( x3 )
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x4, x0, x10
	xori x1, x4, -1
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 2
	sw x3, 68 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB1_134
LBB1_130:                               //  %land.lhs.true325
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	beqz x8, LBB1_133
LBB1_131:                               //  %land.end352
                                        //    in Loop: Header=BB1_130 Depth=2
	slli x1, x4, 16
	srai x11, x1, 16
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x4
	call $wmemchr
	bgtu x10, x0, LBB1_129
LBB1_132:                               //    in Loop: Header=BB1_5 Depth=1
	add x4, x0, x8
LBB1_133:                               //  %if.then359
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x4
	lw x12, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_ungetwc_r
LBB1_134:                               //  %if.end361
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x4, x1
	srai x3, x1, 1
	beqz x3, LBB1_236
LBB1_135:                               //  %if.end369
                                        //    in Loop: Header=BB1_5 Depth=1
	sh x0, 0 ( x4 )
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_169 ( x0 )
LBB1_136:                               //  %if.else371
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	sw x4, 36 ( x2 )                //  4-byte Folded Spill
	bgtu x4, x0, LBB1_138
LBB1_137:                               //  %if.then374
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 168 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
LBB1_138:                               //  %if.end376
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x10, x2, 160
	add x8, x0, x0
	add x11, x0, x8
	addi x12, x0, 8
	call $memset
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x4, x0, x10
	xori x1, x4, -1
	bgtu x1, x0, LBB1_140
LBB1_139:                               //    in Loop: Header=BB1_5 Depth=1
	add x3, x0, x8
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_167 ( x0 )
LBB1_140:                               //  %land.lhs.true382.lr.ph
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	srai x1, x1, 1
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x8
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_155
LBB1_141:                               //  %land.lhs.true382.us
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x3, 68 ( x2 )                //  4-byte Folded Spill
	beqz x8, LBB1_144
LBB1_142:                               //  %land.rhs386.us
                                        //    in Loop: Header=BB1_141 Depth=2
	sw x4, 12 ( x2 )                //  4-byte Folded Spill
	slli x1, x4, 16
	srai x11, x1, 16
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	lw x12, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $wmemchr
	beqz x10, LBB1_145
LBB1_143:                               //    in Loop: Header=BB1_5 Depth=1
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
LBB1_144:                               //  %if.then453
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x4
	lw x12, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_ungetwc_r
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_167 ( x0 )
LBB1_145:                               //  %while.body410.us
                                        //    in Loop: Header=BB1_141 Depth=2
	addi x8, x8, -1
	call $__locale_mb_cur_max
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB1_148
LBB1_146:                               //  %while.body410.us
                                        //    in Loop: Header=BB1_141 Depth=2
	bgtu x10, x8, LBB1_148
LBB1_147:                               //  %if.then417.us
                                        //    in Loop: Header=BB1_141 Depth=2
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	addi x13, x2, 160
	call $_wcrtomb_r
	add x8, x0, x10
	xori x1, x8, -1
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_67
	jalr x0, LBB1_152 ( x0 )
LBB1_148:                               //  %if.else424.us
                                        //    in Loop: Header=BB1_141 Depth=2
	addi x10, x2, 79
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	addi x12, x2, 160
	call $wcrtomb
	add x8, x0, x10
	xori x1, x8, -1
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_67
LBB1_149:                               //  %if.end431.us
                                        //    in Loop: Header=BB1_141 Depth=2
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x8, x1, LBB1_143
LBB1_150:                               //  %if.end435.us
                                        //    in Loop: Header=BB1_141 Depth=2
	bgtu x3, x0, LBB1_152
LBB1_151:                               //  %if.then438.us
                                        //    in Loop: Header=BB1_141 Depth=2
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 79
	add x12, x0, x8
	call $memcpy
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
LBB1_152:                               //  %if.end442.us
                                        //    in Loop: Header=BB1_141 Depth=2
	add x1, x0, x0
	bne x3, x1, LBB1_154
LBB1_153:                               //  %if.end442.us
                                        //    in Loop: Header=BB1_141 Depth=2
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x8, x1
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
LBB1_154:                               //  %if.end442.us
                                        //    in Loop: Header=BB1_141 Depth=2
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x1, x8
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x4, x0, x10
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 1
	xori x1, x4, -1
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	bgtu x1, x0, LBB1_141
	jalr x0, LBB1_167 ( x0 )
LBB1_155:                               //  %land.lhs.true382
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x3, 68 ( x2 )                //  4-byte Folded Spill
	beqz x8, LBB1_144
LBB1_156:                               //  %land.rhs386
                                        //    in Loop: Header=BB1_155 Depth=2
	sw x4, 12 ( x2 )                //  4-byte Folded Spill
	slli x1, x4, 16
	srai x11, x1, 16
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	lw x12, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $wmemchr
	beqz x10, LBB1_143
LBB1_157:                               //  %while.body410
                                        //    in Loop: Header=BB1_155 Depth=2
	addi x8, x8, -1
	call $__locale_mb_cur_max
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB1_160
LBB1_158:                               //  %while.body410
                                        //    in Loop: Header=BB1_155 Depth=2
	bgtu x10, x8, LBB1_160
LBB1_159:                               //  %if.then417
                                        //    in Loop: Header=BB1_155 Depth=2
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	addi x13, x2, 160
	call $_wcrtomb_r
	add x8, x0, x10
	xori x1, x8, -1
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_67
	jalr x0, LBB1_164 ( x0 )
LBB1_160:                               //  %if.else424
                                        //    in Loop: Header=BB1_155 Depth=2
	addi x10, x2, 79
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	addi x12, x2, 160
	call $wcrtomb
	add x8, x0, x10
	xori x1, x8, -1
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_67
LBB1_161:                               //  %if.end431
                                        //    in Loop: Header=BB1_155 Depth=2
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x8, x1, LBB1_143
LBB1_162:                               //  %if.end435
                                        //    in Loop: Header=BB1_155 Depth=2
	bgtu x3, x0, LBB1_164
LBB1_163:                               //  %if.then438
                                        //    in Loop: Header=BB1_155 Depth=2
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 79
	add x12, x0, x8
	call $memcpy
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
LBB1_164:                               //  %if.end442
                                        //    in Loop: Header=BB1_155 Depth=2
	add x1, x0, x0
	bne x3, x1, LBB1_166
LBB1_165:                               //  %if.end442
                                        //    in Loop: Header=BB1_155 Depth=2
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x8, x1
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
LBB1_166:                               //  %if.end442
                                        //    in Loop: Header=BB1_155 Depth=2
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x1, x8
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x4, x0, x10
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 1
	xori x1, x4, -1
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	bgtu x1, x0, LBB1_155
LBB1_167:                               //  %if.end455
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB1_169
LBB1_168:                               //  %if.then458
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sb x0, 0 ( x1 )
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
LBB1_169:                               //  %if.end462
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_23 ( x0 )
LBB1_170:                               //  %sw.bb464
                                        //    in Loop: Header=BB1_5 Depth=1
	not x8, x0
	add x1, x0, x0
	beq x4, x1, LBB1_172
LBB1_171:                               //  %sw.bb464
                                        //    in Loop: Header=BB1_5 Depth=1
	add x8, x0, x4
LBB1_172:                               //  %sw.bb464
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x4, x5, 16
	andi x1, x5, 1
	beqz x1, LBB1_180
LBB1_173:                               //  %sw.bb464
                                        //    in Loop: Header=BB1_5 Depth=1
	seqz x3, x4
	bgtu x3, x0, LBB1_180
LBB1_174:                               //  %while.cond475.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x3, x0, x10
LBB1_175:                               //  %while.cond475.preheader
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	xori x1, x3, -1
	beqz x1, LBB1_22
LBB1_176:                               //  %land.lhs.true479
                                        //    in Loop: Header=BB1_175 Depth=2
	sw x8, 68 ( x2 )                //  4-byte Folded Spill
	beqz x8, LBB1_179
LBB1_177:                               //  %land.rhs483
                                        //    in Loop: Header=BB1_175 Depth=2
	add x10, x0, x3
	add x8, x0, x3
	call $iswspace
	add x3, x0, x8
	bgtu x10, x0, LBB1_179
LBB1_178:                               //  %while.body487
                                        //    in Loop: Header=BB1_175 Depth=2
	lw x8, 68 ( x2 )                //  4-byte Folded Reload
	nop
	addi x8, x8, -1
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x3, x0, x10
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_175 ( x0 )
LBB1_179:                               //  %if.then492
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x3
	jalr x0, LBB1_9 ( x0 )
LBB1_180:                               //  %if.else495
                                        //    in Loop: Header=BB1_5 Depth=1
	beqz x1, LBB1_188
LBB1_181:                               //  %if.then498
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 168 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x4, x0, x10
	xori x1, x4, -1
	beqz x1, LBB1_186
LBB1_182:                               //  %land.lhs.true504
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x8, 68 ( x2 )                //  4-byte Folded Spill
	beqz x8, LBB1_185
LBB1_183:                               //  %land.end512
                                        //    in Loop: Header=BB1_182 Depth=2
	add x10, x0, x4
	add x8, x0, x4
	call $iswspace
	add x4, x0, x8
	bgtu x10, x0, LBB1_185
LBB1_184:                               //  %while.body513
                                        //    in Loop: Header=BB1_182 Depth=2
	lw x8, 68 ( x2 )                //  4-byte Folded Reload
	nop
	addi x8, x8, -1
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sh x4, 0 ( x1 )
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x4, x0, x10
	xori x1, x4, -1
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 1
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 2
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB1_182
	jalr x0, LBB1_186 ( x0 )
LBB1_185:                               //  %if.then520
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x4
	lw x12, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_ungetwc_r
LBB1_186:                               //  %if.end522
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sh x0, 0 ( x1 )
LBB1_187:                               //  %for.cond.backedge
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_22 ( x0 )
LBB1_188:                               //  %if.else524
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x4, 36 ( x2 )                //  4-byte Folded Spill
	bgtu x4, x0, LBB1_190
LBB1_189:                               //  %if.then527
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 168 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
LBB1_190:                               //  %if.end529
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x10, x2, 160
	add x11, x0, x0
	addi x12, x0, 8
	call $memset
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x4, x0, x10
	xori x3, x4, -1
	sltu x1, x0, x3
	beqz x8, LBB1_210
LBB1_191:                               //  %if.end529
                                        //    in Loop: Header=BB1_5 Depth=1
	beqz x3, LBB1_210
LBB1_192:                               //  %land.rhs538.lr.ph
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB1_200
LBB1_193:                               //  %land.rhs538.us
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x4, 44 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x4
	call $iswspace
	beqz x10, LBB1_195
LBB1_194:                               //    in Loop: Header=BB1_5 Depth=1
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_211 ( x0 )
LBB1_195:                               //  %while.body543.us
                                        //    in Loop: Header=BB1_193 Depth=2
	call $__locale_mb_cur_max
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 16
	srai x11, x1, 16
	addi x10, x2, 79
	addi x12, x2, 160
	call $wcrtomb
	xori x1, x10, -1
	beqz x1, LBB1_67
LBB1_196:                               //  %if.end564.us
                                        //    in Loop: Header=BB1_193 Depth=2
	bgeu x8, x10, LBB1_198
LBB1_197:                               //    in Loop: Header=BB1_5 Depth=1
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_211 ( x0 )
LBB1_198:                               //  %if.end575.us
                                        //    in Loop: Header=BB1_193 Depth=2
	sub x8, x8, x10
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x4, x0, x10
	xori x3, x4, -1
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	sltu x1, x0, x3
	beqz x8, LBB1_210
LBB1_199:                               //  %if.end575.us
                                        //    in Loop: Header=BB1_193 Depth=2
	bgtu x3, x0, LBB1_193
	jalr x0, LBB1_210 ( x0 )
LBB1_200:                               //  %land.rhs538
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x4, 44 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x4
	call $iswspace
	beqz x10, LBB1_202
LBB1_201:                               //    in Loop: Header=BB1_5 Depth=1
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_211 ( x0 )
LBB1_202:                               //  %while.body543
                                        //    in Loop: Header=BB1_200 Depth=2
	call $__locale_mb_cur_max
	sw x8, 68 ( x2 )                //  4-byte Folded Spill
	bgtu x10, x8, LBB1_204
LBB1_203:                               //  %if.then550
                                        //    in Loop: Header=BB1_200 Depth=2
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 16
	srai x11, x1, 16
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 160
	call $wcrtomb
	add x8, x0, x10
	xori x1, x8, -1
	beqz x1, LBB1_67
	jalr x0, LBB1_208 ( x0 )
LBB1_204:                               //  %if.else557
                                        //    in Loop: Header=BB1_200 Depth=2
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 16
	srai x11, x1, 16
	addi x10, x2, 79
	addi x12, x2, 160
	call $wcrtomb
	add x8, x0, x10
	xori x1, x8, -1
	beqz x1, LBB1_67
LBB1_205:                               //  %if.end564
                                        //    in Loop: Header=BB1_200 Depth=2
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	bgeu x1, x8, LBB1_207
LBB1_206:                               //    in Loop: Header=BB1_5 Depth=1
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_211 ( x0 )
LBB1_207:                               //  %if.then571
                                        //    in Loop: Header=BB1_200 Depth=2
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 79
	add x12, x0, x8
	call $memcpy
LBB1_208:                               //  %if.end575
                                        //    in Loop: Header=BB1_200 Depth=2
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x3, x8
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x8, x1
	add x8, x0, x3
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x4, x0, x10
	xori x3, x4, -1
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	sltu x1, x0, x3
	beqz x8, LBB1_210
LBB1_209:                               //  %if.end575
                                        //    in Loop: Header=BB1_200 Depth=2
	bgtu x3, x0, LBB1_200
LBB1_210:                               //  %while.end583
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x1, 1
	beqz x1, LBB1_212
LBB1_211:                               //  %if.then586
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x4
	lw x12, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_ungetwc_r
LBB1_212:                               //  %if.end588
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB1_22
LBB1_213:                               //  %if.then591
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sb x0, 0 ( x1 )
	jalr x0, LBB1_187 ( x0 )
LBB1_214:                               //  %sw.bb596
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x1, x4, -1
	addi x3, x0, 39
	add x7, x0, x3
	addi x3, x0, 38
	bgtu x1, x3, LBB1_216
LBB1_215:                               //  %sw.bb596
                                        //    in Loop: Header=BB1_5 Depth=1
	add x7, x0, x4
LBB1_216:                               //  %sw.bb596
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x5, x5, 1408
	bgtu x7, x0, LBB1_218
LBB1_217:                               //    in Loop: Header=BB1_5 Depth=1
	add x1, x0, x0
	add x3, x0, x1
	addi x1, x2, 80
	add x8, x0, x1
	jalr x0, LBB1_233 ( x0 )
LBB1_218:                               //  %for.body.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x7, 28 ( x2 )                //  4-byte Folded Spill
	addi x1, x2, 80
	add x8, x0, x1
	add x1, x0, x0
	add x3, x0, x1
LBB1_219:                               //  %for.body
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	sw x5, 68 ( x2 )                //  4-byte Folded Spill
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x8, x0, x10
	addi x10, x8, 1
	addi x1, x0, 121
	bgtu x10, x1, LBB1_231
LBB1_220:                               //  %for.body
                                        //    in Loop: Header=BB1_219 Depth=2
	addi x11, x0, 4
	call $__mulsi3
	ori x28, x0, JTI1_1 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI1_1 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
	jr x1
LBB1_221:                               //  %sw.bb608
                                        //    in Loop: Header=BB1_219 Depth=2
	add x1, x0, x0
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	bne x3, x1, LBB1_223
LBB1_222:                               //    in Loop: Header=BB1_219 Depth=2
	ori x5, x5, 512
LBB1_223:                               //  %sw.bb608
                                        //    in Loop: Header=BB1_219 Depth=2
	addi x1, x0, 8
	add x3, x0, x0
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
	nop
	beq x4, x3, LBB1_225
LBB1_224:                               //  %sw.bb608
                                        //    in Loop: Header=BB1_219 Depth=2
	add x1, x0, x4
LBB1_225:                               //  %sw.bb608
                                        //    in Loop: Header=BB1_219 Depth=2
	andi x3, x5, 1024
	beqz x3, LBB1_237
LBB1_226:                               //  %if.then616
                                        //    in Loop: Header=BB1_219 Depth=2
	andi x5, x5, -1409
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_242 ( x0 )
LBB1_228:                               //  %sw.bb621
                                        //    in Loop: Header=BB1_219 Depth=2
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 1
	ori x28, x0, $__svfiwscanf_r.basefix & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $__svfiwscanf_r.basefix >> 12 & 0xfffff
	or x3, x3, x28
	add x1, x3, x1
	andi x5, x5, -897
	lh x1, 0 ( x1 )
	nop
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_242 ( x0 )
LBB1_229:                               //  %sw.bb624
                                        //    in Loop: Header=BB1_219 Depth=2
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x4, 1
	ori x28, x0, $__svfiwscanf_r.basefix & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $__svfiwscanf_r.basefix >> 12 & 0xfffff
	or x3, x3, x28
	add x1, x3, x1
	lh x1, 0 ( x1 )
	addi x3, x4, -1
	sltiu x3, x3, 8
	beqz x3, LBB1_237
LBB1_230:                               //    in Loop: Header=BB1_5 Depth=1
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
LBB1_231:                               //  %if.then664
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	lw x12, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_ungetwc_r
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
LBB1_232:                               //  %for.body.for.end.loopexit_crit_edge
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
LBB1_233:                               //  %for.end
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x5, 256
	beqz x1, LBB1_246
LBB1_234:                               //  %if.then672
	ble x3, x0, LBB1_236
LBB1_235:                               //  %if.then676
	lh x11, -2 ( x8 )
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x12, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_ungetwc_r
LBB1_236:                               //  %cleanup
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x8, 172 ( x2 )               //  4-byte Folded Reload
	lw x1, 180 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 184
$cfi12:
	.cfi_adjust_cfa_offset -184
$cfi13:
	.cfi_def_cfa 2, 0
	ret
LBB1_237:                               //  %if.else618
                                        //    in Loop: Header=BB1_219 Depth=2
	andi x5, x5, -897
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_242 ( x0 )
LBB1_238:                               //  %sw.bb632
                                        //    in Loop: Header=BB1_219 Depth=2
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	slti x1, x1, 11
	bgtu x1, x0, LBB1_231
LBB1_239:                               //  %if.end636
                                        //    in Loop: Header=BB1_219 Depth=2
	andi x5, x5, -897
	jalr x0, LBB1_242 ( x0 )
LBB1_240:                               //  %sw.bb638
                                        //    in Loop: Header=BB1_219 Depth=2
	andi x1, x5, 128
	beqz x1, LBB1_231
LBB1_241:                               //  %if.then641
                                        //    in Loop: Header=BB1_219 Depth=2
	ori x28, x0, -65665 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -65665 >> 12 & 0xfffff
	or x1, x1, x28
	and x1, x1, x5
	lui x3, 65536>>12 
	or x5, x3, x1
LBB1_242:                               //  %ok
                                        //    in Loop: Header=BB1_219 Depth=2
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sh x8, 0 ( x1 )
	add x8, x0, x1
	addi x8, x8, 2
	addi x3, x3, 1
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	bne x1, x3, LBB1_219
	jalr x0, LBB1_233 ( x0 )
LBB1_243:                               //  %sw.bb645
                                        //    in Loop: Header=BB1_219 Depth=2
	andi x1, x5, 512
	beqz x1, LBB1_231
LBB1_244:                               //  %land.lhs.true648
                                        //    in Loop: Header=BB1_219 Depth=2
	srli x1, x5, 15
	andi x1, x1, 2
	addi x3, x2, 82
	add x1, x1, x3
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	bne x3, x1, LBB1_231
LBB1_245:                               //  %if.then658
                                        //    in Loop: Header=BB1_219 Depth=2
	andi x5, x5, -513
	addi x1, x0, 16
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_242 ( x0 )
LBB1_246:                               //  %if.end681
                                        //    in Loop: Header=BB1_5 Depth=1
	lh x11, -2 ( x8 )
	nop
	ori x1, x11, 32
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	xori x1, x1, 120
	sw x5, 68 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB1_248
LBB1_247:                               //  %if.then689
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x8, x8, -2
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x12, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $_ungetwc_r
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
LBB1_248:                               //  %if.end692
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	andi x1, x5, 16
	beqz x1, LBB1_250
LBB1_249:                               //    in Loop: Header=BB1_5 Depth=1
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_263 ( x0 )
LBB1_250:                               //  %if.then696
                                        //    in Loop: Header=BB1_5 Depth=1
	sh x0, 0 ( x8 )
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 80
	add x12, x0, x0
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 32
	beqz x1, LBB1_253
LBB1_251:                               //  %if.then701
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 168 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	lw x1, 0 ( x1 )
	nop
LBB1_252:                               //  %if.end733
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x10, 0 ( x1 )
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_262 ( x0 )
LBB1_253:                               //  %if.else703
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x3, 4
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB1_255
LBB1_254:                               //  %if.then706
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 168 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sh x10, 0 ( x1 )
	jalr x0, LBB1_262 ( x0 )
LBB1_255:                               //  %if.else709
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x3, 1
	bgtu x1, x0, LBB1_261
LBB1_256:                               //  %if.else714
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x3, 2
	beqz x1, LBB1_261
LBB1_257:                               //  %if.then717
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_wcstoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_wcstoul_r >> 12 & 0xfffff
	or x1, x1, x28
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	bne x3, x1, LBB1_259
LBB1_258:                               //  %if.then720
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 80
	add x12, x0, x0
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $_wcstoull_r
	jalr x0, LBB1_260 ( x0 )
LBB1_259:                               //  %if.else723
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 80
	add x12, x0, x0
	lw x13, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $_wcstoll_r
LBB1_260:                               //  %if.end726
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 168 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x11, 4 ( x1 )
	jalr x0, LBB1_252 ( x0 )
LBB1_261:                               //  %if.else728
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 168 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 168 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x10, 0 ( x1 )
LBB1_262:                               //  %if.end733
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
LBB1_263:                               //  %if.end735
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x1, x2, 80
	sub x1, x8, x1
	srai x1, x1, 1
LBB1_264:                               //  %for.cond.backedge
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x1
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_23 ( x0 )
$func_end1:
	.size	$__svfiwscanf_r, ($func_end1)-($__svfiwscanf_r)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	LBB1_69
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
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_16
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_29
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_33
	.long	LBB1_33
	.long	LBB1_33
	.long	LBB1_33
	.long	LBB1_33
	.long	LBB1_33
	.long	LBB1_33
	.long	LBB1_33
	.long	LBB1_33
	.long	LBB1_33
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
	.long	LBB1_32
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
	.long	LBB1_34
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_36
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_45
	.long	LBB1_54
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_31
	.long	LBB1_57
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_24
	.long	LBB1_236
	.long	LBB1_47
	.long	LBB1_58
	.long	LBB1_46
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_60
	.long	LBB1_236
	.long	LBB1_59
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_34
JTI1_1:
	.long	LBB1_232
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_240
	.long	LBB1_231
	.long	LBB1_240
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_221
	.long	LBB1_228
	.long	LBB1_228
	.long	LBB1_228
	.long	LBB1_228
	.long	LBB1_228
	.long	LBB1_228
	.long	LBB1_228
	.long	LBB1_229
	.long	LBB1_229
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_238
	.long	LBB1_238
	.long	LBB1_238
	.long	LBB1_238
	.long	LBB1_238
	.long	LBB1_238
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_243
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_238
	.long	LBB1_238
	.long	LBB1_238
	.long	LBB1_238
	.long	LBB1_238
	.long	LBB1_238
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_231
	.long	LBB1_243

	.text
	.globl	$__svfiwscanf
	.type	$__svfiwscanf,@function
$__svfiwscanf:                          //  @__svfiwscanf
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi14:
	.cfi_def_cfa 2, 0
$cfi15:
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
	j $__svfiwscanf_r
$func_end2:
	.size	$__svfiwscanf, ($func_end2)-($__svfiwscanf)
	.cfi_endproc

	.globl	$_vfiwscanf_r
	.type	$_vfiwscanf_r,@function
$_vfiwscanf_r:                          //  @_vfiwscanf_r
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi16:
	.cfi_def_cfa 2, 0
$cfi17:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi18:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi19:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	beqz x8, LBB3_3
LBB3_1:                                 //  %land.lhs.true
	lw x1, 56 ( x8 )
	nop
	bgtu x1, x0, LBB3_3
LBB3_2:                                 //  %if.then
	add x10, x0, x8
	sw x13, 16 ( x2 )               //  4-byte Folded Spill
	sw x12, 12 ( x2 )               //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	call $__sinit
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	lw x13, 16 ( x2 )               //  4-byte Folded Reload
LBB3_3:                                 //  %if.end
	add x10, x0, x8
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi20:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi21:
	.cfi_adjust_cfa_offset -32
$cfi22:
	.cfi_def_cfa 2, 0
	j $__svfiwscanf_r
$func_end3:
	.size	$_vfiwscanf_r, ($func_end3)-($_vfiwscanf_r)
	.cfi_endproc

	.address_space	0	
	.address_space	0	
	.type	$__svfiwscanf_r.basefix,@object //  @__svfiwscanf_r.basefix
	.section	.rodata,"a",@progbits
	.p2align	1
$__svfiwscanf_r.basefix:
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
	.size	$__svfiwscanf_r.basefix, 34


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
