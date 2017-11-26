	.text
	.file	"vfwscanf.bc"
	.globl	$vfwscanf
	.type	$vfwscanf,@function
$vfwscanf:                              //  @vfwscanf
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
	j $__svfwscanf_r
$func_end0:
	.size	$vfwscanf, ($func_end0)-($vfwscanf)
	.cfi_endproc

	.globl	$__svfwscanf_r
	.type	$__svfwscanf_r,@function
$__svfwscanf_r:                         //  @__svfwscanf_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -856
$cfi9:
	.cfi_adjust_cfa_offset 856
	sw x1, 852 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 844 ( x2 )               //  4-byte Folded Spill
	sw x12, 124 ( x2 )              //  4-byte Folded Spill
	add x8, x0, x11
	sw x13, 840 ( x2 )
	sw x10, 116 ( x2 )              //  4-byte Folded Spill
	call $_localeconv_r
	lh x3, 12 ( x8 )
	lw x4, 0 ( x10 )
	lui x1, 8192>>12 
	and x5, x1, x3
	lb x4, 0 ( x4 )
	bgtu x5, x0, LBB1_2
LBB1_1:                                 //  %if.then8
	or x3, x1, x3
	sh x3, 12 ( x8 )
	lw x3, 100 ( x8 )
	nop
	or x1, x1, x3
	sw x1, 100 ( x8 )
LBB1_2:                                 //  %for.cond.preheader
	sw x8, 112 ( x2 )               //  4-byte Folded Spill
	lw x5, 124 ( x2 )               //  4-byte Folded Reload
	nop
	lhu x7, 0 ( x5 )
	nop
	bgtu x7, x0, LBB1_4
LBB1_3:
	add x1, x0, x0
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_223 ( x0 )
LBB1_4:                                 //  %if.end18.lr.ph
	sw x4, 48 ( x2 )                //  4-byte Folded Spill
	addi x3, x2, 132
	slli x1, x7, 16
	add x4, x0, x0
	srai x8, x1, 16
	addi x1, x3, 1376
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	addi x1, x3, 1378
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	addi x1, x3, 2
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	sw x4, 80 ( x2 )                //  4-byte Folded Spill
	sw x4, 64 ( x2 )                //  4-byte Folded Spill
	sw x4, 60 ( x2 )                //  4-byte Folded Spill
	sw x4, 76 ( x2 )                //  4-byte Folded Spill
	sw x4, 72 ( x2 )                //  4-byte Folded Spill
	sw x4, 100 ( x2 )               //  4-byte Folded Spill
	sw x4, 108 ( x2 )               //  4-byte Folded Spill
	sw x4, 96 ( x2 )                //  4-byte Folded Spill
LBB1_5:                                 //  %if.end18
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_6 Depth 2
                                        //      Child Loop BB1_13 Depth 2
                                        //        Child Loop BB1_14 Depth 3
                                        //      Child Loop BB1_43 Depth 2
                                        //      Child Loop BB1_67 Depth 2
                                        //      Child Loop BB1_272 Depth 2
                                        //      Child Loop BB1_341 Depth 2
                                        //      Child Loop BB1_216 Depth 2
                                        //      Child Loop BB1_175 Depth 2
                                        //      Child Loop BB1_182 Depth 2
                                        //      Child Loop BB1_198 Depth 2
                                        //      Child Loop BB1_192 Depth 2
                                        //      Child Loop BB1_113 Depth 2
                                        //      Child Loop BB1_117 Depth 2
                                        //      Child Loop BB1_124 Depth 2
                                        //      Child Loop BB1_128 Depth 2
                                        //      Child Loop BB1_139 Depth 2
                                        //      Child Loop BB1_153 Depth 2
                                        //      Child Loop BB1_83 Depth 2
                                        //      Child Loop BB1_81 Depth 2
                                        //      Child Loop BB1_90 Depth 2
	sw x7, 120 ( x2 )               //  4-byte Folded Spill
	addi x5, x5, 2
	sw x5, 124 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	call $iswspace
	beqz x10, LBB1_10
LBB1_6:                                 //  %while.cond
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x11, 112 ( x2 )              //  4-byte Folded Reload
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
LBB1_8:                                 //  %if.then29
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x8
LBB1_9:                                 //  %for.cond.backedge
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x12, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $_ungetwc_r
	jalr x0, LBB1_22 ( x0 )
LBB1_10:                                //  %if.end32
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	lw x3, 120 ( x2 )               //  4-byte Folded Reload
	nop
	and x1, x1, x3
	xori x1, x1, 37
	beqz x1, LBB1_12
LBB1_11:                                //    in Loop: Header=BB1_5 Depth=1
	lw x1, 124 ( x2 )               //  4-byte Folded Reload
	nop
	sw x1, 124 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB1_17 ( x0 )
LBB1_12:                                //  %again.outer.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x9, 124 ( x2 )               //  4-byte Folded Reload
	add x1, x0, x0
	add x7, x0, x1
	sw x1, 104 ( x2 )               //  4-byte Folded Spill
LBB1_13:                                //  %again.outer
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_14 Depth 3
	addi x9, x9, 2
LBB1_14:                                //  %again
                                        //    Parent Loop BB1_5 Depth=1
                                        //      Parent Loop BB1_13 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sw x9, 124 ( x2 )               //  4-byte Folded Spill
	lh x8, -2 ( x9 )
	addi x1, x0, 120
	bgeu x1, x8, LBB1_371
LBB1_370:                               //  %again
                                        //    in Loop: Header=BB1_14 Depth=3
	jalr x0, LBB1_223 ( x0 )
LBB1_371:                               //  %again
                                        //    in Loop: Header=BB1_14 Depth=3
LBB1_15:                                //  %again
                                        //    in Loop: Header=BB1_14 Depth=3
	sw x7, 120 ( x2 )               //  4-byte Folded Spill
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
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x11, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x1, x0, x10
	xori x3, x1, -1
	beqz x3, LBB1_69
LBB1_18:                                //  %if.end43
                                        //    in Loop: Header=BB1_5 Depth=1
	beq x1, x8, LBB1_20
LBB1_19:                                //  %if.then46
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x1
	lw x12, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $_ungetwc_r
	jalr x0, LBB1_69 ( x0 )
LBB1_20:                                //  %if.end48
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 108 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, 1
LBB1_21:                                //  %for.cond.backedge
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
LBB1_22:                                //  %for.cond.backedge
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x5, 124 ( x2 )               //  4-byte Folded Reload
	nop
LBB1_23:                                //  %for.cond.backedge
                                        //    in Loop: Header=BB1_5 Depth=1
	lhu x7, 0 ( x5 )
	nop
	slli x1, x7, 16
	srai x8, x1, 16
	bgtu x7, x0, LBB1_5
	jalr x0, LBB1_223 ( x0 )
LBB1_24:                                //  %sw.bb51
                                        //    in Loop: Header=BB1_13 Depth=2
	lw x9, 124 ( x2 )               //  4-byte Folded Reload
	nop
	lhu x1, 0 ( x9 )
	addi x3, x0, 108
	bne x1, x3, LBB1_26
LBB1_25:                                //    in Loop: Header=BB1_13 Depth=2
	addi x9, x9, 2
LBB1_26:                                //  %sw.bb51
                                        //    in Loop: Header=BB1_13 Depth=2
	addi x3, x0, 2
	addi x4, x0, 108
	lw x5, 104 ( x2 )               //  4-byte Folded Reload
	lw x7, 120 ( x2 )               //  4-byte Folded Reload
	beq x1, x4, LBB1_28
LBB1_27:                                //  %sw.bb51
                                        //    in Loop: Header=BB1_13 Depth=2
	slti x3, x0, 1
LBB1_28:                                //  %sw.bb51
                                        //    in Loop: Header=BB1_13 Depth=2
	or x5, x3, x5
	sw x5, 104 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB1_13 ( x0 )
LBB1_29:                                //  %again.outer.backedge.loopexit2135
                                        //    in Loop: Header=BB1_13 Depth=2
	addi x1, x0, 16
LBB1_30:                                //  %again.outer
                                        //    in Loop: Header=BB1_13 Depth=2
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
	nop
	or x3, x1, x3
	sw x3, 104 ( x2 )               //  4-byte Folded Spill
	lw x7, 120 ( x2 )               //  4-byte Folded Reload
	lw x9, 124 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_13 ( x0 )
LBB1_31:                                //  %again.outer.backedge.loopexit2334
                                        //    in Loop: Header=BB1_13 Depth=2
	addi x1, x0, 4
	jalr x0, LBB1_30 ( x0 )
LBB1_32:                                //  %again.outer.backedge.loopexit
                                        //    in Loop: Header=BB1_13 Depth=2
	addi x1, x0, 2
	jalr x0, LBB1_30 ( x0 )
LBB1_33:                                //  %sw.bb64
                                        //    in Loop: Header=BB1_14 Depth=3
	lw x10, 120 ( x2 )              //  4-byte Folded Reload
	addi x11, x0, 10
	call $__mulsi3
	add x1, x8, x10
	lw x9, 124 ( x2 )               //  4-byte Folded Reload
	nop
	addi x9, x9, 2
	addi x7, x1, -48
	jalr x0, LBB1_14 ( x0 )
LBB1_34:                                //  %sw.bb69
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_wcstoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_wcstoul_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 72 ( x2 )                //  4-byte Folded Spill
	lw x7, 104 ( x2 )               //  4-byte Folded Reload
	nop
	ori x7, x7, 512
LBB1_35:                                //  %sw.epilog
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x5, 124 ( x2 )               //  4-byte Folded Reload
	addi x1, x0, 3
	add x3, x0, x1
	addi x1, x0, 16
	add x4, x0, x1
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_65 ( x0 )
LBB1_36:                                //  %sw.bb72
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x5, 124 ( x2 )               //  4-byte Folded Reload
	addi x1, x0, 2
	jalr x0, LBB1_63 ( x0 )
LBB1_37:                                //  %sw.bb73
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x4, 124 ( x2 )               //  4-byte Folded Reload
	nop
	lhu x3, 0 ( x4 )
	addi x1, x0, 94
	bne x3, x1, LBB1_39
LBB1_38:                                //    in Loop: Header=BB1_5 Depth=1
	addi x1, x4, 2
	jalr x0, LBB1_40 ( x0 )
LBB1_39:                                //  %sw.bb73
                                        //    in Loop: Header=BB1_5 Depth=1
	add x1, x0, x4
LBB1_40:                                //  %sw.bb73
                                        //    in Loop: Header=BB1_5 Depth=1
	lhu x4, 0 ( x1 )
	addi x5, x0, 93
	bne x4, x5, LBB1_42
LBB1_41:                                //    in Loop: Header=BB1_5 Depth=1
	addi x1, x1, 2
LBB1_42:                                //  %sw.bb73
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
	lw x7, 104 ( x2 )               //  4-byte Folded Reload
	xori x3, x3, 94
	seqz x3, x3
	andi x3, x3, 1
	sw x3, 64 ( x2 )                //  4-byte Folded Spill
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
LBB1_43:                                //  %while.cond87
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x5, x1, 2
	lhu x3, 0 ( x1 )
	nop
	xori x1, x3, 93
	beqz x1, LBB1_45
LBB1_44:                                //  %while.cond87
                                        //    in Loop: Header=BB1_43 Depth=2
	add x1, x0, x5
	bgtu x3, x0, LBB1_43
LBB1_45:                                //  %while.end98
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x1, x5, -2
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	ori x7, x7, 64
	slti x1, x0, 1
	add x3, x0, x1
	lw x1, 124 ( x2 )               //  4-byte Folded Reload
	nop
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_65 ( x0 )
LBB1_46:                                //  %sw.bb101
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x7, 104 ( x2 )               //  4-byte Folded Reload
	nop
	ori x7, x7, 64
	lw x5, 124 ( x2 )               //  4-byte Folded Reload
	add x1, x0, x0
	add x3, x0, x1
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_65 ( x0 )
LBB1_47:                                //  %sw.bb103
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_wcstoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_wcstoul_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 72 ( x2 )                //  4-byte Folded Spill
	lw x7, 104 ( x2 )               //  4-byte Folded Reload
	nop
	ori x7, x7, 544
	jalr x0, LBB1_35 ( x0 )
LBB1_48:                                //  %sw.bb105
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
	nop
	andi x1, x3, 16
	bgtu x1, x0, LBB1_22
LBB1_49:                                //  %if.end109
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x3, 4
	lw x5, 108 ( x2 )               //  4-byte Folded Reload
	lw x7, 124 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB1_51
LBB1_50:                                //  %if.then112
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 840 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 840 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sh x5, 0 ( x1 )
	add x5, x0, x7
	jalr x0, LBB1_23 ( x0 )
LBB1_51:                                //  %if.else114
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x3, 1
	beqz x1, LBB1_54
LBB1_52:                                //  %if.then117
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 840 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 840 ( x2 )
	lw x1, 0 ( x1 )
	nop
LBB1_53:                                //  %for.cond.backedge
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x5, 0 ( x1 )
	add x5, x0, x7
	jalr x0, LBB1_23 ( x0 )
LBB1_54:                                //  %if.else119
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x3, 2
	beqz x1, LBB1_52
LBB1_55:                                //  %if.then122
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 840 ( x2 )
	srai x3, x5, 31
	addi x4, x1, 4
	sw x4, 840 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x3, 4 ( x1 )
	jalr x0, LBB1_53 ( x0 )
LBB1_56:                                //  %sw.epilog.loopexit
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_wcstol_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_wcstol_r >> 12 & 0xfffff
LBB1_57:                                //  %sw.epilog
                                        //    in Loop: Header=BB1_5 Depth=1
	or x1, x1, x28
	sw x1, 72 ( x2 )                //  4-byte Folded Spill
	lw x5, 124 ( x2 )               //  4-byte Folded Reload
	addi x1, x0, 3
	add x3, x0, x1
	addi x1, x0, 10
LBB1_58:                                //  %sw.epilog
                                        //    in Loop: Header=BB1_5 Depth=1
	add x4, x0, x1
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_64 ( x0 )
LBB1_59:                                //  %sw.epilog.loopexit1939
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_wcstol_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_wcstol_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 72 ( x2 )                //  4-byte Folded Spill
	lw x5, 124 ( x2 )               //  4-byte Folded Reload
	addi x1, x0, 3
	add x3, x0, x1
	add x1, x0, x0
	jalr x0, LBB1_58 ( x0 )
LBB1_60:                                //  %sw.epilog.loopexit2136
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_wcstoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_wcstoul_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 72 ( x2 )                //  4-byte Folded Spill
	lw x5, 124 ( x2 )               //  4-byte Folded Reload
	addi x1, x0, 3
	add x3, x0, x1
	addi x1, x0, 8
	jalr x0, LBB1_58 ( x0 )
LBB1_61:                                //  %sw.epilog.loopexit2335
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_wcstoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_wcstoul_r >> 12 & 0xfffff
	jalr x0, LBB1_57 ( x0 )
LBB1_62:                                //  %sw.epilog.loopexit2531
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x5, 124 ( x2 )               //  4-byte Folded Reload
	addi x1, x0, 4
LBB1_63:                                //  %sw.epilog
                                        //    in Loop: Header=BB1_5 Depth=1
	add x3, x0, x1
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
LBB1_64:                                //  %sw.epilog
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x7, 104 ( x2 )               //  4-byte Folded Reload
LBB1_65:                                //  %sw.epilog
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x5, 124 ( x2 )               //  4-byte Folded Spill
	sw x7, 104 ( x2 )               //  4-byte Folded Spill
	andi x1, x7, 64
	sw x4, 100 ( x2 )               //  4-byte Folded Spill
	bgtu x1, x0, LBB1_74
LBB1_66:                                //  %while.cond147.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x3, 92 ( x2 )                //  4-byte Folded Spill
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x8
	call $_fgetwc_r
	add x8, x0, x10
	xori x1, x8, -1
	beqz x1, LBB1_69
LBB1_67:                                //  %land.rhs151
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x10, x0, x8
	call $iswspace
	beqz x10, LBB1_73
LBB1_68:                                //  %while.body155
                                        //    in Loop: Header=BB1_67 Depth=2
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x11, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x8, x0, x10
	xori x1, x8, -1
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	nop
	addi x3, x3, 1
	sw x3, 108 ( x2 )               //  4-byte Folded Spill
	bgtu x1, x0, LBB1_67
LBB1_69:                                //  %input_failure
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB1_71
LBB1_70:                                //  %land.lhs.true1069
	lw x1, 112 ( x2 )               //  4-byte Folded Reload
	nop
	lbu x1, 12 ( x1 )
	nop
	andi x1, x1, 64
	srli x1, x1, 6
	beqz x1, LBB1_223
LBB1_71:                                //  %cleanup1090.loopexit2532
	not x1, x0
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_223 ( x0 )
LBB1_73:                                //  %if.end161
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x8
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
	nop
	add x12, x0, x8
	call $_ungetwc_r
	lw x3, 92 ( x2 )                //  4-byte Folded Reload
	nop
LBB1_74:                                //  %if.end163
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x10, x3, 7
	addi x11, x0, 4
	bgtu x10, x11, LBB1_22
LBB1_75:                                //  %if.end163
                                        //    in Loop: Header=BB1_5 Depth=1
	call $__mulsi3
	ori x28, x0, JTI1_1 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI1_1 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB1_76:                                //  %sw.bb164
                                        //    in Loop: Header=BB1_5 Depth=1
	slti x1, x0, 1
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	lw x3, 120 ( x2 )               //  4-byte Folded Reload
	nop
	beq x3, x1, LBB1_78
LBB1_77:                                //  %sw.bb164
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x3, 92 ( x2 )                //  4-byte Folded Spill
LBB1_78:                                //  %sw.bb164
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	andi x3, x1, 16
	andi x1, x1, 1
	sw x3, 120 ( x2 )               //  4-byte Folded Spill
	beqz x1, LBB1_87
LBB1_79:                                //  %if.then171
                                        //    in Loop: Header=BB1_5 Depth=1
	add x8, x0, x0
	bgtu x3, x0, LBB1_83
LBB1_80:                                //  %land.rhs180.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 840 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 840 ( x2 )
	lw x3, 0 ( x1 )
	add x8, x0, x0
LBB1_81:                                //  %land.rhs180
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x3, 104 ( x2 )               //  4-byte Folded Spill
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x11, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	xori x1, x10, -1
	beqz x1, LBB1_85
LBB1_82:                                //  %if.then188
                                        //    in Loop: Header=BB1_81 Depth=2
	addi x8, x8, 1
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
	nop
	sh x10, 0 ( x3 )
	addi x3, x3, 2
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	bne x1, x8, LBB1_81
	jalr x0, LBB1_86 ( x0 )
LBB1_83:                                //  %land.rhs180.us
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x11, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	xori x1, x10, -1
	beqz x1, LBB1_85
LBB1_84:                                //  %if.end191.us
                                        //    in Loop: Header=BB1_83 Depth=2
	addi x8, x8, 1
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	bne x1, x8, LBB1_83
	jalr x0, LBB1_86 ( x0 )
LBB1_85:                                //  %while.end193
                                        //    in Loop: Header=BB1_5 Depth=1
	beqz x8, LBB1_69
LBB1_86:                                //  %if.end197
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 120 ( x2 )               //  4-byte Folded Reload
	nop
	seqz x1, x1
	andi x1, x1, 1
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x1
	sw x3, 96 ( x2 )                //  4-byte Folded Spill
	lw x1, 108 ( x2 )               //  4-byte Folded Reload
	nop
	add x1, x1, x8
	jalr x0, LBB1_21 ( x0 )
LBB1_87:                                //  %if.else204
                                        //    in Loop: Header=BB1_5 Depth=1
	bgtu x3, x0, LBB1_89
LBB1_88:                                //  %if.then207
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 840 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 840 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
LBB1_89:                                //  %if.end209
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x10, x2, 832
	add x1, x0, x0
	add x11, x0, x1
	addi x12, x0, 8
	call $memset
	add x3, x0, x0
LBB1_90:                                //  %land.rhs214
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x3, 104 ( x2 )               //  4-byte Folded Spill
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x8
	call $_fgetwc_r
	add x8, x0, x10
	xori x1, x8, -1
	beqz x1, LBB1_97
LBB1_91:                                //  %while.body219
                                        //    in Loop: Header=BB1_90 Depth=2
	call $__locale_mb_cur_max
	lw x1, 120 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB1_94
LBB1_92:                                //  %while.body219
                                        //    in Loop: Header=BB1_90 Depth=2
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x10, x1, LBB1_94
LBB1_93:                                //  %if.then225
                                        //    in Loop: Header=BB1_90 Depth=2
	slli x1, x8, 16
	srai x12, x1, 16
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	addi x13, x2, 832
	call $_wcrtomb_r
	add x8, x0, x10
	xori x1, x8, -1
	beqz x1, LBB1_69
	jalr x0, LBB1_101 ( x0 )
LBB1_94:                                //  %if.else232
                                        //    in Loop: Header=BB1_90 Depth=2
	sw x8, 88 ( x2 )                //  4-byte Folded Spill
	slli x1, x8, 16
	srai x12, x1, 16
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	addi x11, x2, 131
	addi x13, x2, 832
	call $_wcrtomb_r
	add x8, x0, x10
	xori x1, x8, -1
	beqz x1, LBB1_69
LBB1_95:                                //  %if.end238
                                        //    in Loop: Header=BB1_90 Depth=2
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	bgeu x1, x8, LBB1_99
LBB1_96:                                //  %if.then241
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x11, 88 ( x2 )               //  4-byte Folded Reload
	lw x12, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $_ungetwc_r
LBB1_97:                                //  %while.end257
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	beqz x1, LBB1_69
LBB1_98:                                //    in Loop: Header=BB1_5 Depth=1
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	sub x1, x0, x1
	jalr x0, LBB1_105 ( x0 )
LBB1_99:                                //  %if.end243
                                        //    in Loop: Header=BB1_90 Depth=2
	lw x1, 120 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB1_101
LBB1_100:                               //  %if.then246
                                        //    in Loop: Header=BB1_90 Depth=2
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 131
	add x12, x0, x8
	call $memcpy
LBB1_101:                               //  %if.end250
                                        //    in Loop: Header=BB1_90 Depth=2
	add x1, x0, x0
	lw x3, 120 ( x2 )               //  4-byte Folded Reload
	nop
	bne x3, x1, LBB1_103
LBB1_102:                               //  %if.end250
                                        //    in Loop: Header=BB1_90 Depth=2
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x8, x1
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
LBB1_103:                               //  %if.end250
                                        //    in Loop: Header=BB1_90 Depth=2
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x8
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
	nop
	addi x3, x3, -1
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB1_90
LBB1_104:                               //  %if.end261.loopexit
                                        //    in Loop: Header=BB1_5 Depth=1
	sub x1, x0, x3
LBB1_105:                               //  %if.end261
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x3, 120 ( x2 )               //  4-byte Folded Reload
	nop
	seqz x3, x3
	andi x3, x3, 1
	lw x4, 96 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x4, x3
	sw x4, 96 ( x2 )                //  4-byte Folded Spill
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	nop
	add x3, x3, x1
	sw x3, 108 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB1_22 ( x0 )
LBB1_106:                               //  %sw.bb269
                                        //    in Loop: Header=BB1_5 Depth=1
	not x1, x0
	add x4, x0, x1
	add x1, x0, x0
	lw x3, 120 ( x2 )               //  4-byte Folded Reload
	nop
	beq x3, x1, LBB1_108
LBB1_107:                               //  %sw.bb269
                                        //    in Loop: Header=BB1_5 Depth=1
	add x4, x0, x3
LBB1_108:                               //  %sw.bb269
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	andi x5, x1, 16
	andi x1, x1, 1
	sw x4, 104 ( x2 )               //  4-byte Folded Spill
	beqz x1, LBB1_121
LBB1_109:                               //  %sw.bb269
                                        //    in Loop: Header=BB1_5 Depth=1
	seqz x3, x5
	bgtu x3, x0, LBB1_121
LBB1_110:                               //  %while.cond280.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x8
	call $_fgetwc_r
	add x8, x0, x10
	xori x1, x8, -1
	beqz x1, LBB1_223
LBB1_111:                               //  %land.lhs.true284.lr.ph
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	lw x3, 76 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	srai x1, x1, 1
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	lw x4, 104 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB1_116
LBB1_112:                               //  %land.lhs.true284.us.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	add x1, x0, x0
	add x3, x0, x1
LBB1_113:                               //  %land.lhs.true284.us
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x3, 120 ( x2 )               //  4-byte Folded Spill
	beq x4, x3, LBB1_120
LBB1_114:                               //  %land.rhs288.us
                                        //    in Loop: Header=BB1_113 Depth=2
	slli x1, x8, 16
	srai x11, x1, 16
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	lw x12, 92 ( x2 )               //  4-byte Folded Reload
	nop
	call $wmemchr
	bgtu x10, x0, LBB1_120
LBB1_115:                               //  %while.body307.us
                                        //    in Loop: Header=BB1_113 Depth=2
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x11, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x8, x0, x10
	lw x3, 120 ( x2 )               //  4-byte Folded Reload
	nop
	addi x3, x3, 1
	xori x1, x8, -1
	lw x4, 104 ( x2 )               //  4-byte Folded Reload
	bgtu x1, x0, LBB1_113
	jalr x0, LBB1_167 ( x0 )
LBB1_116:                               //  %land.lhs.true284.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	add x1, x0, x0
	add x3, x0, x1
LBB1_117:                               //  %land.lhs.true284
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x3, 120 ( x2 )               //  4-byte Folded Spill
	beq x4, x3, LBB1_120
LBB1_118:                               //  %land.rhs288
                                        //    in Loop: Header=BB1_117 Depth=2
	slli x1, x8, 16
	srai x11, x1, 16
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	lw x12, 92 ( x2 )               //  4-byte Folded Reload
	nop
	call $wmemchr
	beqz x10, LBB1_120
LBB1_119:                               //  %while.body307
                                        //    in Loop: Header=BB1_117 Depth=2
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x11, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x8, x0, x10
	lw x3, 120 ( x2 )               //  4-byte Folded Reload
	nop
	addi x3, x3, 1
	xori x1, x8, -1
	lw x4, 104 ( x2 )               //  4-byte Folded Reload
	bgtu x1, x0, LBB1_117
	jalr x0, LBB1_167 ( x0 )
LBB1_120:                               //  %if.end314
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x8
	lw x12, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $_ungetwc_r
	lw x5, 124 ( x2 )               //  4-byte Folded Reload
	lw x3, 120 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x3, x0, LBB1_168
	jalr x0, LBB1_223 ( x0 )
LBB1_121:                               //  %if.else319
                                        //    in Loop: Header=BB1_5 Depth=1
	beqz x1, LBB1_134
LBB1_122:                               //  %if.then322
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 840 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 840 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x8
	add x8, x0, x4
	call $_fgetwc_r
	add x4, x0, x10
	xori x1, x4, -1
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 120 ( x2 )               //  4-byte Folded Spill
	beqz x1, LBB1_132
LBB1_123:                               //  %land.lhs.true328.lr.ph
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	lw x3, 76 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	srai x1, x1, 1
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 120 ( x2 )               //  4-byte Folded Spill
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB1_128
LBB1_124:                               //  %land.lhs.true328.us
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	beqz x8, LBB1_131
LBB1_125:                               //  %land.end355.us
                                        //    in Loop: Header=BB1_124 Depth=2
	slli x1, x4, 16
	srai x11, x1, 16
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	lw x12, 92 ( x2 )               //  4-byte Folded Reload
	sw x4, 104 ( x2 )               //  4-byte Folded Spill
	call $wmemchr
	bgtu x10, x0, LBB1_130
LBB1_126:                               //  %while.body356.us
                                        //    in Loop: Header=BB1_124 Depth=2
	addi x8, x8, -1
	lw x3, 120 ( x2 )               //  4-byte Folded Reload
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	sh x1, 0 ( x3 )
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x11, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x4, x0, x10
	xori x1, x4, -1
	lw x3, 120 ( x2 )               //  4-byte Folded Reload
	nop
	addi x3, x3, 2
	sw x3, 120 ( x2 )               //  4-byte Folded Spill
	bgtu x1, x0, LBB1_124
	jalr x0, LBB1_132 ( x0 )
LBB1_127:                               //  %while.body356
                                        //    in Loop: Header=BB1_128 Depth=2
	addi x8, x8, -1
	lw x3, 120 ( x2 )               //  4-byte Folded Reload
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	sh x1, 0 ( x3 )
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x11, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x4, x0, x10
	xori x1, x4, -1
	lw x3, 120 ( x2 )               //  4-byte Folded Reload
	nop
	addi x3, x3, 2
	sw x3, 120 ( x2 )               //  4-byte Folded Spill
	beqz x1, LBB1_132
LBB1_128:                               //  %land.lhs.true328
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	beqz x8, LBB1_131
LBB1_129:                               //  %land.end355
                                        //    in Loop: Header=BB1_128 Depth=2
	slli x1, x4, 16
	srai x11, x1, 16
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	lw x12, 92 ( x2 )               //  4-byte Folded Reload
	sw x4, 104 ( x2 )               //  4-byte Folded Spill
	call $wmemchr
	bgtu x10, x0, LBB1_127
LBB1_130:                               //    in Loop: Header=BB1_5 Depth=1
	lw x4, 104 ( x2 )               //  4-byte Folded Reload
LBB1_131:                               //  %if.then362
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x4
	lw x12, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $_ungetwc_r
LBB1_132:                               //  %if.end364
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	lw x4, 120 ( x2 )               //  4-byte Folded Reload
	nop
	sub x1, x4, x1
	srai x3, x1, 1
	lw x5, 124 ( x2 )               //  4-byte Folded Reload
	beqz x3, LBB1_223
LBB1_133:                               //  %if.end372
                                        //    in Loop: Header=BB1_5 Depth=1
	sh x0, 0 ( x4 )
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_168 ( x0 )
LBB1_134:                               //  %if.else374
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x5, 92 ( x2 )                //  4-byte Folded Spill
	bgtu x5, x0, LBB1_136
LBB1_135:                               //  %if.then377
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 840 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 840 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
LBB1_136:                               //  %if.end379
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x10, x2, 832
	add x1, x0, x0
	add x11, x0, x1
	addi x12, x0, 8
	call $memset
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x8
	call $_fgetwc_r
	add x4, x0, x10
	xori x1, x4, -1
	bgtu x1, x0, LBB1_138
LBB1_137:                               //    in Loop: Header=BB1_5 Depth=1
	add x3, x0, x0
	jalr x0, LBB1_165 ( x0 )
LBB1_138:                               //  %land.lhs.true385.lr.ph
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	lw x3, 76 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	srai x1, x1, 1
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x0
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	lw x5, 104 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB1_153
LBB1_139:                               //  %land.lhs.true385.us
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x3, 120 ( x2 )               //  4-byte Folded Spill
	add x1, x0, x5
	beqz x1, LBB1_142
LBB1_140:                               //  %land.rhs389.us
                                        //    in Loop: Header=BB1_139 Depth=2
	add x8, x0, x1
	sw x4, 84 ( x2 )                //  4-byte Folded Spill
	slli x1, x4, 16
	srai x11, x1, 16
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	sw x11, 68 ( x2 )               //  4-byte Folded Spill
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	nop
	call $wmemchr
	beqz x10, LBB1_143
LBB1_141:                               //    in Loop: Header=BB1_5 Depth=1
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
	lw x4, 84 ( x2 )                //  4-byte Folded Reload
LBB1_142:                               //  %if.then456
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x4
	add x12, x0, x8
	call $_ungetwc_r
	lw x3, 120 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_165 ( x0 )
LBB1_143:                               //  %while.body413.us
                                        //    in Loop: Header=BB1_139 Depth=2
	addi x8, x8, -1
	call $__locale_mb_cur_max
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	sw x8, 104 ( x2 )               //  4-byte Folded Spill
	bgtu x1, x0, LBB1_146
LBB1_144:                               //  %while.body413.us
                                        //    in Loop: Header=BB1_139 Depth=2
	bgtu x10, x8, LBB1_146
LBB1_145:                               //  %if.then420.us
                                        //    in Loop: Header=BB1_139 Depth=2
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	lw x12, 68 ( x2 )               //  4-byte Folded Reload
	addi x13, x2, 832
	call $_wcrtomb_r
	add x8, x0, x10
	xori x1, x8, -1
	lw x3, 92 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_69
	jalr x0, LBB1_150 ( x0 )
LBB1_146:                               //  %if.else427.us
                                        //    in Loop: Header=BB1_139 Depth=2
	addi x10, x2, 131
	lw x11, 68 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 832
	call $wcrtomb
	add x8, x0, x10
	xori x1, x8, -1
	lw x3, 92 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_69
LBB1_147:                               //  %if.end434.us
                                        //    in Loop: Header=BB1_139 Depth=2
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x8, x1, LBB1_141
LBB1_148:                               //  %if.end438.us
                                        //    in Loop: Header=BB1_139 Depth=2
	bgtu x3, x0, LBB1_150
LBB1_149:                               //  %if.then441.us
                                        //    in Loop: Header=BB1_139 Depth=2
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 131
	add x12, x0, x8
	call $memcpy
	lw x3, 92 ( x2 )                //  4-byte Folded Reload
LBB1_150:                               //  %if.end445.us
                                        //    in Loop: Header=BB1_139 Depth=2
	add x1, x0, x0
	bne x3, x1, LBB1_152
LBB1_151:                               //  %if.end445.us
                                        //    in Loop: Header=BB1_139 Depth=2
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x8, x1
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
LBB1_152:                               //  %if.end445.us
                                        //    in Loop: Header=BB1_139 Depth=2
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	sub x1, x1, x8
	sw x1, 104 ( x2 )               //  4-byte Folded Spill
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $_fgetwc_r
	lw x5, 104 ( x2 )               //  4-byte Folded Reload
	add x4, x0, x10
	lw x3, 120 ( x2 )               //  4-byte Folded Reload
	nop
	addi x3, x3, 1
	xori x1, x4, -1
	bgtu x1, x0, LBB1_139
	jalr x0, LBB1_165 ( x0 )
LBB1_153:                               //  %land.lhs.true385
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x3, 120 ( x2 )               //  4-byte Folded Spill
	add x1, x0, x5
	beqz x1, LBB1_142
LBB1_154:                               //  %land.rhs389
                                        //    in Loop: Header=BB1_153 Depth=2
	add x8, x0, x1
	sw x4, 84 ( x2 )                //  4-byte Folded Spill
	slli x1, x4, 16
	srai x11, x1, 16
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
	sw x11, 68 ( x2 )               //  4-byte Folded Spill
	lw x12, 88 ( x2 )               //  4-byte Folded Reload
	nop
	call $wmemchr
	beqz x10, LBB1_141
LBB1_155:                               //  %while.body413
                                        //    in Loop: Header=BB1_153 Depth=2
	addi x8, x8, -1
	call $__locale_mb_cur_max
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	sw x8, 104 ( x2 )               //  4-byte Folded Spill
	bgtu x1, x0, LBB1_158
LBB1_156:                               //  %while.body413
                                        //    in Loop: Header=BB1_153 Depth=2
	bgtu x10, x8, LBB1_158
LBB1_157:                               //  %if.then420
                                        //    in Loop: Header=BB1_153 Depth=2
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	lw x12, 68 ( x2 )               //  4-byte Folded Reload
	addi x13, x2, 832
	call $_wcrtomb_r
	add x8, x0, x10
	xori x1, x8, -1
	lw x3, 92 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_69
	jalr x0, LBB1_162 ( x0 )
LBB1_158:                               //  %if.else427
                                        //    in Loop: Header=BB1_153 Depth=2
	addi x10, x2, 131
	lw x11, 68 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 832
	call $wcrtomb
	add x8, x0, x10
	xori x1, x8, -1
	lw x3, 92 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_69
LBB1_159:                               //  %if.end434
                                        //    in Loop: Header=BB1_153 Depth=2
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x8, x1, LBB1_141
LBB1_160:                               //  %if.end438
                                        //    in Loop: Header=BB1_153 Depth=2
	bgtu x3, x0, LBB1_162
LBB1_161:                               //  %if.then441
                                        //    in Loop: Header=BB1_153 Depth=2
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 131
	add x12, x0, x8
	call $memcpy
	lw x3, 92 ( x2 )                //  4-byte Folded Reload
LBB1_162:                               //  %if.end445
                                        //    in Loop: Header=BB1_153 Depth=2
	add x1, x0, x0
	bne x3, x1, LBB1_164
LBB1_163:                               //  %if.end445
                                        //    in Loop: Header=BB1_153 Depth=2
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x8, x1
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
LBB1_164:                               //  %if.end445
                                        //    in Loop: Header=BB1_153 Depth=2
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	sub x1, x1, x8
	sw x1, 104 ( x2 )               //  4-byte Folded Spill
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $_fgetwc_r
	lw x5, 104 ( x2 )               //  4-byte Folded Reload
	add x4, x0, x10
	lw x3, 120 ( x2 )               //  4-byte Folded Reload
	nop
	addi x3, x3, 1
	xori x1, x4, -1
	bgtu x1, x0, LBB1_153
LBB1_165:                               //  %if.end458
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB1_167
LBB1_166:                               //  %if.then461
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sb x0, 0 ( x1 )
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
LBB1_167:                               //  %if.end465
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x5, 124 ( x2 )               //  4-byte Folded Reload
LBB1_168:                               //  %if.end465
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 108 ( x2 )               //  4-byte Folded Reload
	nop
	add x1, x1, x3
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB1_23 ( x0 )
LBB1_169:                               //  %sw.bb467
                                        //    in Loop: Header=BB1_5 Depth=1
	not x1, x0
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	lw x3, 120 ( x2 )               //  4-byte Folded Reload
	nop
	beq x3, x1, LBB1_171
LBB1_170:                               //  %sw.bb467
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x3, 92 ( x2 )                //  4-byte Folded Spill
LBB1_171:                               //  %sw.bb467
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	andi x4, x1, 16
	andi x1, x1, 1
	beqz x1, LBB1_179
LBB1_172:                               //  %sw.bb467
                                        //    in Loop: Header=BB1_5 Depth=1
	seqz x3, x4
	bgtu x3, x0, LBB1_179
LBB1_173:                               //  %while.cond478.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x8
	call $_fgetwc_r
	add x3, x0, x10
	xori x1, x3, -1
	beqz x1, LBB1_22
LBB1_174:                               //  %land.lhs.true482.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x8, 92 ( x2 )                //  4-byte Folded Reload
	nop
LBB1_175:                               //  %land.lhs.true482
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x8, 92 ( x2 )                //  4-byte Folded Spill
	beqz x8, LBB1_178
LBB1_176:                               //  %land.rhs486
                                        //    in Loop: Header=BB1_175 Depth=2
	add x10, x0, x3
	add x8, x0, x3
	call $iswspace
	add x3, x0, x8
	bgtu x10, x0, LBB1_178
LBB1_177:                               //  %while.body490
                                        //    in Loop: Header=BB1_175 Depth=2
	lw x8, 92 ( x2 )                //  4-byte Folded Reload
	nop
	addi x8, x8, -1
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x11, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x3, x0, x10
	lw x1, 108 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	xori x1, x3, -1
	beqz x1, LBB1_22
	jalr x0, LBB1_175 ( x0 )
LBB1_178:                               //  %if.then495
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x3
	jalr x0, LBB1_9 ( x0 )
LBB1_179:                               //  %if.else498
                                        //    in Loop: Header=BB1_5 Depth=1
	beqz x1, LBB1_187
LBB1_180:                               //  %if.then501
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 840 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 840 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 120 ( x2 )               //  4-byte Folded Spill
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x8
	call $_fgetwc_r
	add x4, x0, x10
	xori x1, x4, -1
	beqz x1, LBB1_186
LBB1_181:                               //  %land.lhs.true507.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x8, 92 ( x2 )                //  4-byte Folded Reload
	nop
LBB1_182:                               //  %land.lhs.true507
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x8, 92 ( x2 )                //  4-byte Folded Spill
	beqz x8, LBB1_185
LBB1_183:                               //  %land.end515
                                        //    in Loop: Header=BB1_182 Depth=2
	add x10, x0, x4
	add x8, x0, x4
	call $iswspace
	add x4, x0, x8
	bgtu x10, x0, LBB1_185
LBB1_184:                               //  %while.body516
                                        //    in Loop: Header=BB1_182 Depth=2
	lw x8, 92 ( x2 )                //  4-byte Folded Reload
	nop
	addi x8, x8, -1
	lw x1, 120 ( x2 )               //  4-byte Folded Reload
	nop
	sh x4, 0 ( x1 )
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x11, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x4, x0, x10
	xori x1, x4, -1
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	nop
	addi x3, x3, 1
	sw x3, 108 ( x2 )               //  4-byte Folded Spill
	lw x3, 120 ( x2 )               //  4-byte Folded Reload
	nop
	addi x3, x3, 2
	sw x3, 120 ( x2 )               //  4-byte Folded Spill
	bgtu x1, x0, LBB1_182
	jalr x0, LBB1_186 ( x0 )
LBB1_185:                               //  %if.then523
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x4
	lw x12, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $_ungetwc_r
LBB1_186:                               //  %if.end525
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 120 ( x2 )               //  4-byte Folded Reload
	nop
	sh x0, 0 ( x1 )
	jalr x0, LBB1_368 ( x0 )
LBB1_187:                               //  %if.else527
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x4, 104 ( x2 )               //  4-byte Folded Spill
	bgtu x4, x0, LBB1_189
LBB1_188:                               //  %if.then530
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 840 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 840 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
LBB1_189:                               //  %if.end532
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x10, x2, 832
	add x11, x0, x0
	addi x12, x0, 8
	call $memset
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x8
	call $_fgetwc_r
	add x5, x0, x10
	xori x3, x5, -1
	sltu x1, x0, x3
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x4, LBB1_208
LBB1_190:                               //  %if.end532
                                        //    in Loop: Header=BB1_5 Depth=1
	beqz x3, LBB1_208
LBB1_191:                               //  %land.rhs541.lr.ph
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	beqz x1, LBB1_198
LBB1_192:                               //  %land.rhs541.us
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x5, 120 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x5
	call $iswspace
	beqz x10, LBB1_194
LBB1_193:                               //    in Loop: Header=BB1_5 Depth=1
	lw x5, 120 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_209 ( x0 )
LBB1_194:                               //  %while.body546.us
                                        //    in Loop: Header=BB1_192 Depth=2
	call $__locale_mb_cur_max
	lw x1, 120 ( x2 )               //  4-byte Folded Reload
	nop
	slli x1, x1, 16
	srai x11, x1, 16
	addi x10, x2, 131
	addi x12, x2, 832
	call $wcrtomb
	xori x1, x10, -1
	beqz x1, LBB1_69
LBB1_195:                               //  %if.end567.us
                                        //    in Loop: Header=BB1_192 Depth=2
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x10, x1, LBB1_204
LBB1_196:                               //  %if.end578.us
                                        //    in Loop: Header=BB1_192 Depth=2
	sub x1, x1, x10
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $_fgetwc_r
	add x5, x0, x10
	xori x3, x5, -1
	lw x1, 108 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	sltu x1, x0, x3
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x4, LBB1_208
LBB1_197:                               //  %if.end578.us
                                        //    in Loop: Header=BB1_192 Depth=2
	bgtu x3, x0, LBB1_192
	jalr x0, LBB1_208 ( x0 )
LBB1_198:                               //  %land.rhs541
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x5, 120 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x5
	call $iswspace
	beqz x10, LBB1_200
LBB1_199:                               //    in Loop: Header=BB1_5 Depth=1
	lw x5, 120 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_209 ( x0 )
LBB1_200:                               //  %while.body546
                                        //    in Loop: Header=BB1_198 Depth=2
	call $__locale_mb_cur_max
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x10, x1, LBB1_202
LBB1_201:                               //  %if.then553
                                        //    in Loop: Header=BB1_198 Depth=2
	lw x1, 120 ( x2 )               //  4-byte Folded Reload
	nop
	slli x1, x1, 16
	srai x11, x1, 16
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 832
	call $wcrtomb
	add x8, x0, x10
	xori x1, x8, -1
	beqz x1, LBB1_69
	jalr x0, LBB1_206 ( x0 )
LBB1_202:                               //  %if.else560
                                        //    in Loop: Header=BB1_198 Depth=2
	lw x1, 120 ( x2 )               //  4-byte Folded Reload
	nop
	slli x1, x1, 16
	srai x11, x1, 16
	addi x10, x2, 131
	addi x12, x2, 832
	call $wcrtomb
	add x8, x0, x10
	xori x1, x8, -1
	beqz x1, LBB1_69
LBB1_203:                               //  %if.end567
                                        //    in Loop: Header=BB1_198 Depth=2
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	bgeu x1, x8, LBB1_205
LBB1_204:                               //    in Loop: Header=BB1_5 Depth=1
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
	lw x5, 120 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_209 ( x0 )
LBB1_205:                               //  %if.then574
                                        //    in Loop: Header=BB1_198 Depth=2
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 131
	add x12, x0, x8
	call $memcpy
LBB1_206:                               //  %if.end578
                                        //    in Loop: Header=BB1_198 Depth=2
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x8
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x8, x1
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $_fgetwc_r
	add x5, x0, x10
	xori x3, x5, -1
	lw x1, 108 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	sltu x1, x0, x3
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x4, LBB1_208
LBB1_207:                               //  %if.end578
                                        //    in Loop: Header=BB1_198 Depth=2
	bgtu x3, x0, LBB1_198
LBB1_208:                               //  %while.end586
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x1, 1
	beqz x1, LBB1_210
LBB1_209:                               //  %if.then589
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x5
	add x12, x0, x8
	call $_ungetwc_r
LBB1_210:                               //  %if.end591
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	beqz x1, LBB1_373
LBB1_372:                               //  %if.end591
                                        //    in Loop: Header=BB1_5 Depth=1
	jalr x0, LBB1_22 ( x0 )
LBB1_373:                               //  %if.end591
                                        //    in Loop: Header=BB1_5 Depth=1
LBB1_211:                               //  %if.then594
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sb x0, 0 ( x1 )
	jalr x0, LBB1_368 ( x0 )
LBB1_212:                               //  %sw.bb599
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x4, 120 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x4, -1
	addi x3, x0, 349
	add x9, x0, x3
	addi x3, x0, 348
	bgtu x1, x3, LBB1_214
LBB1_213:                               //  %sw.bb599
                                        //    in Loop: Header=BB1_5 Depth=1
	add x9, x0, x4
LBB1_214:                               //  %sw.bb599
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	ori x7, x1, 1408
	add x3, x0, x0
	addi x1, x2, 132
	add x5, x0, x1
	beqz x9, LBB1_220
LBB1_215:                               //  %for.body.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x9, 88 ( x2 )                //  4-byte Folded Spill
LBB1_216:                               //  %for.body
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x3, 104 ( x2 )               //  4-byte Folded Spill
	sw x7, 120 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x5
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x11, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	sw x10, 92 ( x2 )               //  4-byte Folded Spill
	addi x10, x10, 1
	addi x1, x0, 121
	bgeu x1, x10, LBB1_224
LBB1_217:                               //    in Loop: Header=BB1_5 Depth=1
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	nop
LBB1_218:                               //  %if.then667
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x4, 100 ( x2 )               //  4-byte Folded Spill
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
	lw x12, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $_ungetwc_r
	lw x7, 120 ( x2 )               //  4-byte Folded Reload
	add x5, x0, x8
LBB1_219:                               //  %for.body.for.end.loopexit_crit_edge
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
LBB1_220:                               //  %for.end
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x7, 256
	beqz x1, LBB1_246
LBB1_221:                               //  %if.then675
	ble x3, x0, LBB1_223
LBB1_222:                               //  %if.then679
	lh x11, -2 ( x5 )
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x12, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $_ungetwc_r
LBB1_223:                               //  %cleanup1090
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x8, 844 ( x2 )               //  4-byte Folded Reload
	lw x1, 852 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 856
$cfi12:
	.cfi_adjust_cfa_offset -856
$cfi13:
	.cfi_def_cfa 2, 0
	ret
LBB1_224:                               //  %for.body
                                        //    in Loop: Header=BB1_216 Depth=2
	addi x11, x0, 4
	call $__mulsi3
	ori x28, x0, JTI1_3 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI1_3 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	add x5, x0, x8
	lw x7, 120 ( x2 )               //  4-byte Folded Reload
	jr x1
LBB1_225:                               //  %sw.bb611
                                        //    in Loop: Header=BB1_216 Depth=2
	add x1, x0, x0
	bne x4, x1, LBB1_227
LBB1_226:                               //    in Loop: Header=BB1_216 Depth=2
	ori x7, x7, 512
LBB1_227:                               //  %sw.bb611
                                        //    in Loop: Header=BB1_216 Depth=2
	addi x1, x0, 8
	add x3, x0, x0
	lw x9, 88 ( x2 )                //  4-byte Folded Reload
	beq x4, x3, LBB1_229
LBB1_228:                               //  %sw.bb611
                                        //    in Loop: Header=BB1_216 Depth=2
	add x1, x0, x4
LBB1_229:                               //  %sw.bb611
                                        //    in Loop: Header=BB1_216 Depth=2
	andi x3, x7, 1024
	beqz x3, LBB1_232
LBB1_230:                               //  %if.then619
                                        //    in Loop: Header=BB1_216 Depth=2
	andi x7, x7, -1409
LBB1_231:                               //  %ok
                                        //    in Loop: Header=BB1_216 Depth=2
	sw x1, 100 ( x2 )               //  4-byte Folded Spill
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_239 ( x0 )
LBB1_232:                               //  %if.else621
                                        //    in Loop: Header=BB1_216 Depth=2
	andi x7, x7, -897
	jalr x0, LBB1_231 ( x0 )
LBB1_233:                               //  %sw.bb624
                                        //    in Loop: Header=BB1_216 Depth=2
	ori x28, x0, $__svfwscanf_r.basefix & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	slli x1, x4, 1
	lui x3, $__svfwscanf_r.basefix >> 12 & 0xfffff
	or x3, x3, x28
	add x1, x3, x1
	andi x7, x7, -897
	lh x1, 0 ( x1 )
	nop
	sw x1, 100 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB1_238 ( x0 )
LBB1_234:                               //  %sw.bb627
                                        //    in Loop: Header=BB1_216 Depth=2
	ori x28, x0, $__svfwscanf_r.basefix & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	addi x1, x4, -1
	slli x3, x4, 1
	lui x4, $__svfwscanf_r.basefix >> 12 & 0xfffff
	or x4, x4, x28
	add x3, x4, x3
	sltiu x1, x1, 8
	lh x4, 0 ( x3 )
	bgtu x1, x0, LBB1_218
LBB1_235:                               //  %if.end633
                                        //    in Loop: Header=BB1_216 Depth=2
	sw x4, 100 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB1_237 ( x0 )
LBB1_236:                               //  %sw.bb635
                                        //    in Loop: Header=BB1_216 Depth=2
	slti x1, x4, 11
	bgtu x1, x0, LBB1_218
LBB1_237:                               //  %if.end639
                                        //    in Loop: Header=BB1_216 Depth=2
	andi x7, x7, -897
LBB1_238:                               //  %ok
                                        //    in Loop: Header=BB1_216 Depth=2
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
	lw x9, 88 ( x2 )                //  4-byte Folded Reload
LBB1_239:                               //  %ok
                                        //    in Loop: Header=BB1_216 Depth=2
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	addi x3, x3, 1
	sh x1, 0 ( x5 )
	addi x5, x5, 2
	bne x9, x3, LBB1_216
	jalr x0, LBB1_220 ( x0 )
LBB1_240:                               //  %sw.bb641
                                        //    in Loop: Header=BB1_216 Depth=2
	andi x1, x7, 128
	beqz x1, LBB1_218
LBB1_241:                               //  %if.then644
                                        //    in Loop: Header=BB1_216 Depth=2
	ori x28, x0, -65665 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -65665 >> 12 & 0xfffff
	or x1, x1, x28
	and x1, x1, x7
	lui x3, 65536>>12 
	or x7, x3, x1
	jalr x0, LBB1_238 ( x0 )
LBB1_242:                               //  %sw.bb648
                                        //    in Loop: Header=BB1_216 Depth=2
	andi x1, x7, 512
	beqz x1, LBB1_218
LBB1_243:                               //  %land.lhs.true651
                                        //    in Loop: Header=BB1_216 Depth=2
	srli x1, x7, 15
	andi x1, x1, 2
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	bne x5, x1, LBB1_218
LBB1_244:                               //  %if.then661
                                        //    in Loop: Header=BB1_216 Depth=2
	andi x7, x7, -513
	addi x1, x0, 16
	sw x1, 100 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB1_238 ( x0 )
LBB1_246:                               //  %if.end684
                                        //    in Loop: Header=BB1_5 Depth=1
	lh x11, -2 ( x5 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	ori x1, x11, 32
	lui x3, 65535 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	xori x1, x1, 120
	beqz x1, LBB1_248
LBB1_247:                               //    in Loop: Header=BB1_5 Depth=1
	sw x5, 120 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB1_249 ( x0 )
LBB1_248:                               //  %if.then692
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x5, x5, -2
	sw x5, 120 ( x2 )               //  4-byte Folded Spill
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x12, 112 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x7
	call $_ungetwc_r
	add x7, x0, x8
LBB1_249:                               //  %if.end695
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x13, 100 ( x2 )              //  4-byte Folded Reload
	andi x1, x7, 16
	beqz x1, LBB1_251
LBB1_250:                               //    in Loop: Header=BB1_5 Depth=1
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	lw x5, 124 ( x2 )               //  4-byte Folded Reload
	lw x4, 120 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_263 ( x0 )
LBB1_251:                               //  %if.then699
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 120 ( x2 )               //  4-byte Folded Reload
	nop
	sh x0, 0 ( x1 )
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	addi x11, x2, 132
	add x12, x0, x0
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	add x8, x0, x7
	call_reg x1
	add x3, x0, x8
	andi x1, x3, 32
	bgtu x1, x0, LBB1_260
LBB1_252:                               //  %if.else706
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x3, 4
	beqz x1, LBB1_254
LBB1_253:                               //  %if.then709
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 840 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 840 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sh x10, 0 ( x1 )
	jalr x0, LBB1_262 ( x0 )
LBB1_254:                               //  %if.else712
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x3, 1
	bgtu x1, x0, LBB1_260
LBB1_255:                               //  %if.else717
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x3, 2
	beqz x1, LBB1_260
LBB1_256:                               //  %if.then720
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_wcstoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_wcstoul_r >> 12 & 0xfffff
	or x1, x1, x28
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	bne x3, x1, LBB1_258
LBB1_257:                               //  %if.then723
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	addi x11, x2, 132
	add x12, x0, x0
	lw x13, 100 ( x2 )              //  4-byte Folded Reload
	nop
	call $_wcstoull_r
	jalr x0, LBB1_259 ( x0 )
LBB1_258:                               //  %if.else726
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	addi x11, x2, 132
	add x12, x0, x0
	lw x13, 100 ( x2 )              //  4-byte Folded Reload
	nop
	call $_wcstoll_r
LBB1_259:                               //  %if.end729
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 840 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 840 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x11, 4 ( x1 )
	jalr x0, LBB1_261 ( x0 )
LBB1_260:                               //  %if.else731
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 840 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 840 ( x2 )
	lw x1, 0 ( x1 )
	nop
LBB1_261:                               //  %if.end736
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x10, 0 ( x1 )
LBB1_262:                               //  %if.end736
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	lw x5, 124 ( x2 )               //  4-byte Folded Reload
	lw x4, 120 ( x2 )               //  4-byte Folded Reload
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
LBB1_263:                               //  %if.end738
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x1, x2, 132
	sub x1, x4, x1
	srai x1, x1, 1
	add x3, x3, x1
	sw x3, 108 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB1_23 ( x0 )
LBB1_264:                               //  %sw.bb745
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x5, 120 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x5, -1
	addi x8, x0, 699
	add x9, x0, x8
	addi x3, x0, 698
	bgtu x1, x3, LBB1_266
LBB1_265:                               //  %sw.bb745
                                        //    in Loop: Header=BB1_5 Depth=1
	add x9, x0, x5
LBB1_266:                               //  %sw.bb745
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
	nop
	ori x4, x3, 1920
	sw x4, 92 ( x2 )                //  4-byte Folded Spill
	bgtu x9, x0, LBB1_268
LBB1_267:                               //    in Loop: Header=BB1_5 Depth=1
	add x1, x0, x0
	add x5, x0, x1
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
	sw x1, 104 ( x2 )               //  4-byte Folded Spill
	addi x1, x2, 132
	add x7, x0, x1
	jalr x0, LBB1_326 ( x0 )
LBB1_268:                               //  %for.body756.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x3, x0, 698
	bgeu x3, x1, LBB1_270
LBB1_269:                               //    in Loop: Header=BB1_5 Depth=1
	addi x1, x5, -699
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x0
	jalr x0, LBB1_271 ( x0 )
LBB1_270:                               //  %for.body756.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	add x3, x0, x0
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
LBB1_271:                               //  %for.body756.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x1, x2, 132
	add x7, x0, x1
	sw x3, 104 ( x2 )               //  4-byte Folded Spill
	sw x3, 68 ( x2 )                //  4-byte Folded Spill
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	sw x3, 28 ( x2 )                //  4-byte Folded Spill
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	add x5, x0, x3
LBB1_272:                               //  %for.body756
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x9, 84 ( x2 )                //  4-byte Folded Spill
	sw x7, 88 ( x2 )                //  4-byte Folded Spill
	sw x5, 120 ( x2 )               //  4-byte Folded Spill
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x11, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $_fgetwc_r
	add x8, x0, x10
	addi x10, x8, -43
	addi x1, x0, 78
	bgtu x10, x1, LBB1_321
LBB1_273:                               //  %for.body756
                                        //    in Loop: Header=BB1_272 Depth=2
	addi x11, x0, 4
	call $__mulsi3
	ori x28, x0, JTI1_2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI1_2 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB1_274:                               //  %sw.bb758
                                        //    in Loop: Header=BB1_272 Depth=2
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 256
	beqz x1, LBB1_279
LBB1_275:                               //  %if.then761
                                        //    in Loop: Header=BB1_272 Depth=2
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, -129
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	bgtu x3, x0, LBB1_277
LBB1_276:                               //    in Loop: Header=BB1_272 Depth=2
	add x1, x0, x0
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	lw x5, 120 ( x2 )               //  4-byte Folded Reload
	lw x9, 84 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_278 ( x0 )
LBB1_277:                               //  %if.then765
                                        //    in Loop: Header=BB1_272 Depth=2
	lw x9, 84 ( x2 )                //  4-byte Folded Reload
	nop
	addi x9, x9, 1
	addi x3, x3, -1
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	lw x5, 120 ( x2 )               //  4-byte Folded Reload
	nop
LBB1_278:                               //  %fskip
                                        //    in Loop: Header=BB1_272 Depth=2
	slli x1, x5, 1
	addi x3, x2, 132
	add x7, x1, x3
	lw x1, 108 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	addi x9, x9, -1
	bgtu x9, x0, LBB1_272
	jalr x0, LBB1_326 ( x0 )
LBB1_279:                               //  %sw.bb770
                                        //    in Loop: Header=BB1_272 Depth=2
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	slli x1, x1, 24
	srai x1, x1, 24
	sub x1, x0, x1
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	slli x3, x3, 24
	srai x3, x3, 24
	bne x3, x1, LBB1_304
LBB1_280:                               //  %if.then776
                                        //    in Loop: Header=BB1_272 Depth=2
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	nop
	andi x4, x4, -385
	jalr x0, LBB1_283 ( x0 )
LBB1_281:                               //  %sw.bb779
                                        //    in Loop: Header=BB1_272 Depth=2
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x4, 128
	beqz x1, LBB1_304
LBB1_282:                               //  %if.then782
                                        //    in Loop: Header=BB1_272 Depth=2
	andi x4, x4, -129
LBB1_283:                               //  %fok
                                        //    in Loop: Header=BB1_272 Depth=2
	lw x5, 120 ( x2 )               //  4-byte Folded Reload
	lw x7, 88 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_293 ( x0 )
LBB1_284:                               //  %sw.bb785
                                        //    in Loop: Header=BB1_272 Depth=2
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x4, 1792
	xori x1, x1, 1792
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB1_288
LBB1_285:                               //  %sw.bb785
                                        //    in Loop: Header=BB1_272 Depth=2
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB1_288
LBB1_286:                               //  %sw.bb785
                                        //    in Loop: Header=BB1_272 Depth=2
	andi x1, x3, 255
	bgtu x1, x0, LBB1_288
LBB1_287:                               //  %if.then796
                                        //    in Loop: Header=BB1_272 Depth=2
	andi x4, x4, -1921
	add x1, x0, x0
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	slti x1, x0, 1
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_283 ( x0 )
LBB1_288:                               //  %if.end798
                                        //    in Loop: Header=BB1_272 Depth=2
	andi x1, x3, 255
	xori x1, x1, 2
	addi x3, x0, 3
	lw x5, 120 ( x2 )               //  4-byte Folded Reload
	lw x7, 88 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB1_290
LBB1_289:                               //    in Loop: Header=BB1_272 Depth=2
	sw x3, 68 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_293 ( x0 )
LBB1_290:                               //  %if.end803
                                        //    in Loop: Header=BB1_272 Depth=2
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	andi x1, x1, 255
	xori x3, x1, 4
	beqz x3, LBB1_292
LBB1_291:                               //  %if.end803
                                        //    in Loop: Header=BB1_272 Depth=2
	xori x1, x1, 1
	bgtu x1, x0, LBB1_304
LBB1_292:                               //  %if.then811
                                        //    in Loop: Header=BB1_272 Depth=2
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 104 ( x2 )               //  4-byte Folded Spill
LBB1_293:                               //  %fok
                                        //    in Loop: Header=BB1_272 Depth=2
	sw x4, 92 ( x2 )                //  4-byte Folded Spill
	sh x8, 0 ( x7 )
	addi x5, x5, 1
	lw x9, 84 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_278 ( x0 )
LBB1_295:                               //  %sw.bb814
                                        //    in Loop: Header=BB1_272 Depth=2
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 255
	xori x1, x1, 1
	bgtu x1, x0, LBB1_304
LBB1_296:                               //    in Loop: Header=BB1_272 Depth=2
	addi x1, x0, 2
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_283 ( x0 )
LBB1_297:                               //  %sw.bb820
                                        //    in Loop: Header=BB1_272 Depth=2
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x4, 1792
	xori x1, x1, 1792
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
	bgtu x1, x0, LBB1_301
LBB1_298:                               //  %sw.bb820
                                        //    in Loop: Header=BB1_272 Depth=2
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB1_301
LBB1_299:                               //  %sw.bb820
                                        //    in Loop: Header=BB1_272 Depth=2
	andi x1, x3, 255
	bgtu x1, x0, LBB1_301
LBB1_300:                               //  %if.then831
                                        //    in Loop: Header=BB1_272 Depth=2
	andi x4, x4, -1921
	add x1, x0, x0
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	slti x1, x0, 1
	sw x1, 104 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB1_283 ( x0 )
LBB1_301:                               //  %if.end833
                                        //    in Loop: Header=BB1_272 Depth=2
	andi x1, x3, 255
	xori x3, x1, 5
	lw x5, 120 ( x2 )               //  4-byte Folded Reload
	lw x7, 88 ( x2 )                //  4-byte Folded Reload
	beqz x3, LBB1_292
LBB1_302:                               //  %if.end833
                                        //    in Loop: Header=BB1_272 Depth=2
	xori x1, x1, 3
	beqz x1, LBB1_292
LBB1_303:                               //    in Loop: Header=BB1_5 Depth=1
	addi x8, x0, 105
LBB1_304:                               //  %if.then896
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x8
	lw x12, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $_ungetwc_r
	jalr x0, LBB1_325 ( x0 )
LBB1_305:                               //  %sw.bb844
                                        //    in Loop: Header=BB1_272 Depth=2
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	andi x1, x1, 255
	xori x1, x1, 2
	bgtu x1, x0, LBB1_304
LBB1_306:                               //    in Loop: Header=BB1_272 Depth=2
	addi x1, x0, 3
	jalr x0, LBB1_311 ( x0 )
LBB1_307:                               //  %sw.bb850
                                        //    in Loop: Header=BB1_272 Depth=2
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	andi x1, x1, 255
	xori x1, x1, 6
	bgtu x1, x0, LBB1_304
LBB1_308:                               //    in Loop: Header=BB1_272 Depth=2
	addi x1, x0, 7
	jalr x0, LBB1_311 ( x0 )
LBB1_309:                               //  %sw.bb856
                                        //    in Loop: Header=BB1_272 Depth=2
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	andi x1, x1, 255
	xori x1, x1, 7
	bgtu x1, x0, LBB1_304
LBB1_310:                               //    in Loop: Header=BB1_272 Depth=2
	addi x1, x0, 8
LBB1_311:                               //  %fok
                                        //    in Loop: Header=BB1_272 Depth=2
	sw x1, 104 ( x2 )               //  4-byte Folded Spill
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_283 ( x0 )
LBB1_313:                               //  %sw.bb862
                                        //    in Loop: Header=BB1_272 Depth=2
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x5, 1280
	xori x1, x1, 1024
	lw x7, 88 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_316
LBB1_314:                               //  %lor.lhs.false866
                                        //    in Loop: Header=BB1_272 Depth=2
	andi x1, x5, 1024
	beqz x1, LBB1_304
LBB1_315:                               //  %lor.lhs.false866
                                        //    in Loop: Header=BB1_272 Depth=2
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB1_304
LBB1_316:                               //  %if.then871
                                        //    in Loop: Header=BB1_272 Depth=2
	andi x3, x5, 512
	add x1, x0, x7
	add x4, x0, x0
	beq x3, x4, LBB1_318
LBB1_317:                               //  %if.then871
                                        //    in Loop: Header=BB1_272 Depth=2
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
LBB1_318:                               //  %if.then871
                                        //    in Loop: Header=BB1_272 Depth=2
	add x4, x0, x0
	bne x3, x4, LBB1_320
LBB1_319:                               //    in Loop: Header=BB1_272 Depth=2
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	lw x4, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x4, x3
	sw x3, 28 ( x2 )                //  4-byte Folded Spill
LBB1_320:                               //  %if.then871
                                        //    in Loop: Header=BB1_272 Depth=2
	andi x3, x5, -1921
	ori x4, x3, 384
	add x3, x0, x0
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	lw x5, 120 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_293 ( x0 )
LBB1_321:                               //  %sw.default881
                                        //    in Loop: Header=BB1_272 Depth=2
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x4, 512
	beqz x1, LBB1_324
LBB1_322:                               //  %sw.default881
                                        //    in Loop: Header=BB1_272 Depth=2
	slli x1, x8, 16
	srai x1, x1, 16
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	bne x1, x3, LBB1_324
LBB1_323:                               //  %if.then890
                                        //    in Loop: Header=BB1_272 Depth=2
	andi x4, x4, -641
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_283 ( x0 )
LBB1_324:                               //  %sw.epilog893
                                        //    in Loop: Header=BB1_5 Depth=1
	xori x1, x8, -1
	bgtu x1, x0, LBB1_304
LBB1_325:                               //    in Loop: Header=BB1_5 Depth=1
	lw x5, 120 ( x2 )               //  4-byte Folded Reload
	lw x7, 88 ( x2 )                //  4-byte Folded Reload
LBB1_326:                               //  %for.end903
                                        //    in Loop: Header=BB1_5 Depth=1
	add x1, x0, x0
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	bne x3, x1, LBB1_328
LBB1_327:                               //    in Loop: Header=BB1_5 Depth=1
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_329 ( x0 )
LBB1_328:                               //  %for.end903
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	nop
	andi x4, x4, -257
LBB1_329:                               //  %for.end903
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 24
	srai x1, x1, 24
	addi x1, x1, -1
	slti x3, x0, 1
	bgtu x1, x3, LBB1_332
LBB1_330:                               //  %while.cond913.preheader
	addi x8, x2, 132
	bgeu x8, x7, LBB1_223
LBB1_331:                               //  %while.body917
                                        //  =>This Inner Loop Header: Depth=1
	sw x7, 88 ( x2 )                //  4-byte Folded Spill
	lh x11, -2 ( x7 )
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x12, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $_ungetwc_r
	lw x7, 88 ( x2 )                //  4-byte Folded Reload
	nop
	addi x7, x7, -2
	bgtu x7, x8, LBB1_331
	jalr x0, LBB1_223 ( x0 )
LBB1_332:                               //  %if.end923
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x4, 92 ( x2 )                //  4-byte Folded Spill
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	slli x1, x1, 24
	srai x1, x1, 24
	addi x3, x1, -1
	addi x4, x0, 6
	bgeu x4, x3, LBB1_334
LBB1_333:                               //    in Loop: Header=BB1_5 Depth=1
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_342 ( x0 )
LBB1_334:                               //  %if.then928
                                        //    in Loop: Header=BB1_5 Depth=1
	slti x1, x1, 3
	bgtu x1, x0, LBB1_337
LBB1_335:                               //  %while.cond933.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
	nop
	andi x1, x3, 255
	xori x1, x1, 3
	bgtu x1, x0, LBB1_340
LBB1_336:                               //    in Loop: Header=BB1_5 Depth=1
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_342 ( x0 )
LBB1_337:                               //  %while.cond945.preheader
	ble x5, x0, LBB1_223
LBB1_338:                               //  %while.body949.preheader
	slli x1, x5, 1
	addi x3, x2, 132
	add x1, x1, x3
	addi x1, x1, -2
	addi x8, x5, 1
LBB1_339:                               //  %while.body949
                                        //  =>This Inner Loop Header: Depth=1
	sw x1, 124 ( x2 )               //  4-byte Folded Spill
	lh x11, 0 ( x1 )
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x12, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $_ungetwc_r
	lw x1, 124 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, -2
	addi x8, x8, -1
	slti x3, x0, 1
	bgt x8, x3, LBB1_339
	jalr x0, LBB1_223 ( x0 )
LBB1_340:                               //  %while.body938.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	slli x1, x5, 1
	add x4, x0, x3
	addi x3, x2, 130
	add x8, x1, x3
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
LBB1_341:                               //  %while.body938
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x4, 104 ( x2 )               //  4-byte Folded Spill
	sw x3, 108 ( x2 )               //  4-byte Folded Spill
	sw x5, 120 ( x2 )               //  4-byte Folded Spill
	lh x11, 0 ( x8 )
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x12, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $_ungetwc_r
	lw x5, 120 ( x2 )               //  4-byte Folded Reload
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	slli x1, x1, 24
	ori x28, x0, -16777216 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, -16777216 >> 12 & 0xfffff
	or x3, x3, x28
	add x1, x3, x1
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	addi x8, x8, -2
	addi x3, x3, -1
	addi x5, x5, -1
	srai x4, x1, 24
	addi x1, x0, 3
	bgt x4, x1, LBB1_341
LBB1_342:                               //  %if.end956
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x3, 108 ( x2 )               //  4-byte Folded Spill
	slli x1, x5, 1
	addi x3, x2, 132
	add x8, x1, x3
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	nop
	andi x3, x4, 256
	bgtu x3, x0, LBB1_344
LBB1_343:                               //    in Loop: Header=BB1_5 Depth=1
	add x7, x0, x8
	lw x8, 116 ( x2 )               //  4-byte Folded Reload
	lw x5, 124 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_352 ( x0 )
LBB1_344:                               //  %if.then959
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x3, x4, 1024
	beqz x3, LBB1_348
LBB1_345:                               //  %while.cond963.preheader
	ble x5, x0, LBB1_223
LBB1_346:                               //  %while.body967.preheader
	addi x3, x2, 132
	add x1, x1, x3
	addi x1, x1, -2
	addi x8, x5, 1
LBB1_347:                               //  %while.body967
                                        //  =>This Inner Loop Header: Depth=1
	sw x1, 124 ( x2 )               //  4-byte Folded Spill
	lh x11, 0 ( x1 )
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x12, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $_ungetwc_r
	lw x1, 124 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, -2
	addi x8, x8, -1
	slti x3, x0, 1
	bgt x8, x3, LBB1_347
	jalr x0, LBB1_223 ( x0 )
LBB1_348:                               //  %if.end973
                                        //    in Loop: Header=BB1_5 Depth=1
	lhu x1, -2 ( x8 )
	nop
	slli x3, x1, 16
	srai x11, x3, 16
	ori x1, x1, 32
	xori x1, x1, 101
	bgtu x1, x0, LBB1_350
LBB1_349:                               //    in Loop: Header=BB1_5 Depth=1
	lw x1, 108 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	addi x1, x8, -2
	sw x1, 120 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB1_351 ( x0 )
LBB1_350:                               //  %if.then982
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
	lw x12, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $_ungetwc_r
	lw x1, 108 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, -2
	sw x1, 108 ( x2 )               //  4-byte Folded Spill
	addi x1, x8, -4
	sw x1, 120 ( x2 )               //  4-byte Folded Spill
	lh x11, -4 ( x8 )
LBB1_351:                               //  %if.end987
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x8, 116 ( x2 )               //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x12, 112 ( x2 )              //  4-byte Folded Reload
	nop
	call $_ungetwc_r
	lw x5, 124 ( x2 )               //  4-byte Folded Reload
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	lw x7, 120 ( x2 )               //  4-byte Folded Reload
LBB1_352:                               //  %if.end989
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x4, 16
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_375
LBB1_374:                               //  %if.end989
                                        //    in Loop: Header=BB1_5 Depth=1
	jalr x0, LBB1_23 ( x0 )
LBB1_375:                               //  %if.end989
                                        //    in Loop: Header=BB1_5 Depth=1
LBB1_353:                               //  %if.then993
                                        //    in Loop: Header=BB1_5 Depth=1
	sh x0, 0 ( x7 )
	andi x1, x4, 1536
	xori x1, x1, 1024
	beqz x1, LBB1_356
LBB1_354:                               //  %if.else1001
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB1_361
LBB1_355:                               //  %if.end1008.thread1588
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x11, x3, 2
	add x10, x0, x8
	add x12, x0, x0
	addi x13, x0, 10
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	call $_wcstol_r
	lw x7, 36 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x10, x1
	jalr x0, LBB1_358 ( x0 )
LBB1_356:                               //  %if.end1008
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x3, x1
	beqz x1, LBB1_361
LBB1_357:                               //    in Loop: Header=BB1_5 Depth=1
	sub x1, x0, x1
LBB1_358:                               //  %if.then1010
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x3, x7, LBB1_360
LBB1_359:                               //  %if.then1010
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x7, 40 ( x2 )                //  4-byte Folded Reload
LBB1_360:                               //  %if.then1010
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x1, 12 ( x2 )
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 8 ( x2 )
	addi x1, x0, 11
	sw x1, 4 ( x2 )
	sw x7, 0 ( x2 )
	call $swprintf
LBB1_361:                               //  %if.end1023
                                        //    in Loop: Header=BB1_5 Depth=1
	add x10, x0, x8
	addi x11, x2, 132
	add x12, x0, x0
	call $_wcstod_r
	add x8, x0, x11
	lw x3, 92 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 1
	beqz x1, LBB1_363
LBB1_362:                               //  %if.then1028
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 840 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 840 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x8, 4 ( x1 )
	jalr x0, LBB1_367 ( x0 )
LBB1_363:                               //  %if.else1030
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x3, 2
	bgtu x1, x0, LBB1_362
LBB1_364:                               //  %if.else1035
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 840 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 840 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 120 ( x2 )               //  4-byte Folded Spill
	sw x10, 104 ( x2 )              //  4-byte Folded Spill
	add x11, x0, x8
	call $__fpclassifyd
	bgtu x10, x0, LBB1_369
LBB1_365:                               //  %if.then1040
                                        //    in Loop: Header=BB1_5 Depth=1
	add x10, x0, x0
	call $nanf
LBB1_366:                               //  %for.cond.backedge
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 120 ( x2 )               //  4-byte Folded Reload
	nop
LBB1_367:                               //  %for.cond.backedge
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x10, 0 ( x1 )
LBB1_368:                               //  %for.cond.backedge
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_22 ( x0 )
LBB1_369:                               //  %if.else1042
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x8
	call $__truncdfsf2
	jalr x0, LBB1_366 ( x0 )
$func_end1:
	.size	$__svfwscanf_r, ($func_end1)-($__svfwscanf_r)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	LBB1_71
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_16
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_29
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
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
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_62
	.long	LBB1_223
	.long	LBB1_62
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_32
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_34
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_37
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_46
	.long	LBB1_56
	.long	LBB1_62
	.long	LBB1_62
	.long	LBB1_62
	.long	LBB1_31
	.long	LBB1_59
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_24
	.long	LBB1_223
	.long	LBB1_48
	.long	LBB1_60
	.long	LBB1_47
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_36
	.long	LBB1_223
	.long	LBB1_61
	.long	LBB1_223
	.long	LBB1_223
	.long	LBB1_34
JTI1_1:
	.long	LBB1_76
	.long	LBB1_106
	.long	LBB1_169
	.long	LBB1_212
	.long	LBB1_264
JTI1_2:
	.long	LBB1_281
	.long	LBB1_321
	.long	LBB1_281
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_274
	.long	LBB1_279
	.long	LBB1_279
	.long	LBB1_279
	.long	LBB1_279
	.long	LBB1_279
	.long	LBB1_279
	.long	LBB1_279
	.long	LBB1_279
	.long	LBB1_279
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_295
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_313
	.long	LBB1_305
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_284
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_307
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_309
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_295
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_313
	.long	LBB1_305
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_297
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_284
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_307
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_321
	.long	LBB1_309
JTI1_3:
	.long	LBB1_219
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_240
	.long	LBB1_218
	.long	LBB1_240
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_225
	.long	LBB1_233
	.long	LBB1_233
	.long	LBB1_233
	.long	LBB1_233
	.long	LBB1_233
	.long	LBB1_233
	.long	LBB1_233
	.long	LBB1_234
	.long	LBB1_234
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_242
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_236
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_242

	.text
	.globl	$__svfwscanf
	.type	$__svfwscanf,@function
$__svfwscanf:                           //  @__svfwscanf
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
	j $__svfwscanf_r
$func_end2:
	.size	$__svfwscanf, ($func_end2)-($__svfwscanf)
	.cfi_endproc

	.globl	$_vfwscanf_r
	.type	$_vfwscanf_r,@function
$_vfwscanf_r:                           //  @_vfwscanf_r
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
	j $__svfwscanf_r
$func_end3:
	.size	$_vfwscanf_r, ($func_end3)-($_vfwscanf_r)
	.cfi_endproc

	.address_space	0	
	.address_space	0	
	.type	$__svfwscanf_r.basefix,@object //  @__svfwscanf_r.basefix
	.section	.rodata,"a",@progbits
	.p2align	1
$__svfwscanf_r.basefix:
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
	.size	$__svfwscanf_r.basefix, 34

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
