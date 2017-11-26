	.text
	.file	"vfiscanf.bc"
	.globl	$vfiscanf
	.type	$vfiscanf,@function
$vfiscanf:                              //  @vfiscanf
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
	j $__svfiscanf_r
$func_end0:
	.size	$vfiscanf, ($func_end0)-($vfiscanf)
	.cfi_endproc

	.globl	$__svfiscanf_r
	.type	$__svfiscanf_r,@function
$__svfiscanf_r:                         //  @__svfiscanf_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -384
$cfi9:
	.cfi_adjust_cfa_offset 384
	sw x1, 380 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 372 ( x2 )               //  4-byte Folded Spill
	add x7, x0, x11
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	lh x1, 12 ( x7 )
	lui x3, 8192>>12 
	sw x13, 368 ( x2 )
	and x4, x3, x1
	bgtu x4, x0, LBB1_2
LBB1_1:                                 //  %if.then7
	or x1, x3, x1
	sh x1, 12 ( x7 )
	ori x28, x0, -8193 & 0xfff
	lw x1, 100 ( x7 )
	slli x28, x28, 20
	lui x3, -8193 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	and x1, x3, x1
	sw x1, 100 ( x7 )
LBB1_2:                                 //  %for.cond.preheader
	lbu x1, 0 ( x12 )
	nop
	sh x1, 366 ( x2 )
	add x9, x0, x12
	bgtu x1, x0, LBB1_4
LBB1_3:
	add x1, x0, x0
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_50 ( x0 )
LBB1_4:                                 //  %land.lhs.true.lr.ph
	add x3, x0, x0
	lui x14, $__ctype_ptr__ >> 12 & 0xfffff
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	add x5, x0, x3
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	sw x7, 48 ( x2 )                //  4-byte Folded Spill
LBB1_5:                                 //  %land.lhs.true
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_7 Depth 2
                                        //      Child Loop BB1_16 Depth 2
                                        //        Child Loop BB1_17 Depth 3
                                        //      Child Loop BB1_69 Depth 2
                                        //      Child Loop BB1_83 Depth 2
                                        //      Child Loop BB1_87 Depth 2
                                        //      Child Loop BB1_106 Depth 2
                                        //      Child Loop BB1_206 Depth 2
                                        //      Child Loop BB1_149 Depth 2
                                        //      Child Loop BB1_153 Depth 2
                                        //      Child Loop BB1_172 Depth 2
                                        //      Child Loop BB1_184 Depth 2
                                        //      Child Loop BB1_192 Depth 2
                                        //      Child Loop BB1_122 Depth 2
                                        //      Child Loop BB1_130 Depth 2
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x14, x28
	lw x3, 0 ( x3 )
	andi x1, x1, 255
	addi x9, x9, 1
	addi x4, x3, 1
	add x3, x1, x4
	lbu x3, 0 ( x3 )
	nop
	andi x3, x3, 8
	beqz x3, LBB1_13
LBB1_6:                                 //  %for.cond27.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x9, 56 ( x2 )                //  4-byte Folded Spill
	lw x1, 4 ( x7 )
	nop
LBB1_7:                                 //  %for.cond27
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	bgt x1, x0, LBB1_10
LBB1_8:                                 //  %land.lhs.true30
                                        //    in Loop: Header=BB1_7 Depth=2
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x7
	add x8, x0, x5
	call $__srefill_r
	add x5, x0, x8
	lui x11, $__ctype_ptr__ >> 12 & 0xfffff
	add x14, x0, x11
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB1_10
LBB1_9:                                 //    in Loop: Header=BB1_5 Depth=1
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_49 ( x0 )
LBB1_10:                                //  %lor.lhs.false
                                        //    in Loop: Header=BB1_7 Depth=2
	ori x28, x0, $__ctype_ptr__ & 0xfff
	lw x1, 0 ( x7 )
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x14, x28
	lw x3, 0 ( x3 )
	lbu x4, 0 ( x1 )
	nop
	add x3, x4, x3
	lbu x3, 1 ( x3 )
	nop
	andi x3, x3, 8
	bgtu x3, x0, LBB1_12
LBB1_11:                                //    in Loop: Header=BB1_5 Depth=1
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_49 ( x0 )
LBB1_12:                                //  %if.end39
                                        //    in Loop: Header=BB1_7 Depth=2
	lw x3, 4 ( x7 )
	addi x4, x1, 1
	addi x5, x5, 1
	addi x1, x3, -1
	sw x1, 4 ( x7 )
	sw x4, 0 ( x7 )
	jalr x0, LBB1_7 ( x0 )
LBB1_13:                                //  %if.end42
                                        //    in Loop: Header=BB1_5 Depth=1
	xori x1, x1, 37
	beqz x1, LBB1_15
LBB1_14:                                //    in Loop: Header=BB1_5 Depth=1
	sw x9, 56 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_20 ( x0 )
LBB1_15:                                //  %again.outer.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x4, 28 ( x2 )                //  4-byte Folded Spill
	sw x5, 40 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	add x3, x0, x1
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
LBB1_16:                                //  %again.outer
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_17 Depth 3
	sw x3, 52 ( x2 )                //  4-byte Folded Spill
	addi x9, x9, 1
LBB1_17:                                //  %again
                                        //    Parent Loop BB1_5 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sw x9, 56 ( x2 )                //  4-byte Folded Spill
	lbu x8, -1 ( x9 )
	addi x1, x0, 120
	bgtu x8, x1, LBB1_53
LBB1_18:                                //  %again
                                        //    in Loop: Header=BB1_17 Depth=3
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
LBB1_19:                                //  %literal.loopexit
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	lui x11, $__ctype_ptr__ >> 12 & 0xfffff
	add x14, x0, x11
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
LBB1_20:                                //  %literal
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 4 ( x7 )
	nop
	bgt x1, x0, LBB1_22
LBB1_21:                                //  %land.lhs.true57
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x7
	add x8, x0, x5
	call $__srefill_r
	add x5, x0, x8
	lui x11, $__ctype_ptr__ >> 12 & 0xfffff
	add x14, x0, x11
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB1_109
LBB1_22:                                //  %if.end61
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 0 ( x7 )
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	nop
	lbu x3, -1 ( x9 )
	lbu x4, 0 ( x1 )
	nop
	bne x4, x3, LBB1_50
LBB1_23:                                //  %if.end68
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x3, 4 ( x7 )
	addi x1, x1, 1
	addi x5, x5, 1
	addi x3, x3, -1
	sw x3, 4 ( x7 )
	sw x1, 0 ( x7 )
	jalr x0, LBB1_49 ( x0 )
LBB1_24:                                //  %sw.bb79
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	nop
	lbu x1, 0 ( x9 )
	addi x3, x0, 108
	bne x1, x3, LBB1_26
LBB1_25:                                //    in Loop: Header=BB1_16 Depth=2
	addi x9, x9, 1
LBB1_26:                                //  %sw.bb79
                                        //    in Loop: Header=BB1_16 Depth=2
	addi x3, x0, 2
	addi x4, x0, 108
	beq x1, x4, LBB1_28
LBB1_27:                                //  %sw.bb79
                                        //    in Loop: Header=BB1_16 Depth=2
	slti x3, x0, 1
LBB1_28:                                //  %sw.bb79
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	or x1, x3, x1
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_16 ( x0 )
LBB1_29:                                //  %again.outer.backedge.loopexit1488
                                        //    in Loop: Header=BB1_16 Depth=2
	addi x1, x0, 16
LBB1_30:                                //  %again.outer
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	or x3, x1, x3
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_16 ( x0 )
LBB1_31:                                //  %again.outer.backedge.loopexit1635
                                        //    in Loop: Header=BB1_16 Depth=2
	addi x1, x0, 4
	jalr x0, LBB1_30 ( x0 )
LBB1_32:                                //  %again.outer.backedge.loopexit
                                        //    in Loop: Header=BB1_16 Depth=2
	addi x1, x0, 2
	jalr x0, LBB1_30 ( x0 )
LBB1_33:                                //  %sw.bb92
                                        //    in Loop: Header=BB1_17 Depth=3
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	addi x11, x0, 10
	call $__mulsi3
	add x1, x8, x10
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	nop
	addi x9, x9, 1
	addi x1, x1, -48
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_17 ( x0 )
LBB1_34:                                //  %sw.bb93
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_strtol_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtol_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 1
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_57 ( x0 )
LBB1_35:                                //  %sw.bb97
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_strtoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtoul_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 1
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_61 ( x0 )
LBB1_36:                                //  %sw.bb101
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_strtoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtoul_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 512
LBB1_37:                                //  %sw.epilog
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	addi x8, x0, 3
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 16
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_65 ( x0 )
LBB1_38:                                //  %sw.bb104
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x10, x2, 110
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $__sccl
	sw x10, 56 ( x2 )               //  4-byte Folded Spill
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 64
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	slti x8, x0, 1
	jalr x0, LBB1_64 ( x0 )
LBB1_39:                                //  %sw.bb107
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 64
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x0
	jalr x0, LBB1_64 ( x0 )
LBB1_40:                                //  %sw.bb109
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_strtoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtoul_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 544
	jalr x0, LBB1_37 ( x0 )
LBB1_41:                                //  %sw.bb111
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 16
	beqz x1, LBB1_44
LBB1_42:                                //    in Loop: Header=BB1_5 Depth=1
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
LBB1_43:                                //  %for.cond.backedge
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	lui x11, $__ctype_ptr__ >> 12 & 0xfffff
	add x14, x0, x11
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_49 ( x0 )
LBB1_44:                                //  %if.end115
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x3, 4
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	lui x11, $__ctype_ptr__ >> 12 & 0xfffff
	add x14, x0, x11
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_46
LBB1_45:                                //  %if.then118
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 368 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 368 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sh x5, 0 ( x1 )
	jalr x0, LBB1_49 ( x0 )
LBB1_46:                                //  %if.else120
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x3, 1
	beqz x1, LBB1_51
LBB1_47:                                //  %if.then123
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 368 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 368 ( x2 )
	lw x1, 0 ( x1 )
	nop
LBB1_48:                                //  %for.cond.backedge
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x5, 0 ( x1 )
LBB1_49:                                //  %for.cond.backedge
                                        //    in Loop: Header=BB1_5 Depth=1
	lbu x1, 0 ( x9 )
	nop
	sh x1, 366 ( x2 )
	bgtu x1, x0, LBB1_5
LBB1_50:                                //  %cleanup749
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x8, 372 ( x2 )               //  4-byte Folded Reload
	lw x1, 380 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 384
$cfi12:
	.cfi_adjust_cfa_offset -384
$cfi13:
	.cfi_def_cfa 2, 0
	ret
LBB1_51:                                //  %if.else125
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x3, 2
	beqz x1, LBB1_47
LBB1_52:                                //  %if.then128
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 368 ( x2 )
	srai x3, x5, 31
	addi x4, x1, 4
	sw x4, 368 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x3, 4 ( x1 )
	jalr x0, LBB1_48 ( x0 )
LBB1_53:                                //  %sw.default
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x8, x1
	lbu x1, 0 ( x1 )
	ori x28, x0, $_strtol_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	andi x1, x1, 3
	xori x1, x1, 1
	seqz x1, x1
	andi x1, x1, 1
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	or x3, x3, x1
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_55 ( x0 )
LBB1_54:                                //  %sw.epilog.loopexit
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_strtol_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
LBB1_55:                                //  %sw.epilog
                                        //    in Loop: Header=BB1_5 Depth=1
	lui x1, $_strtol_r >> 12 & 0xfffff
LBB1_56:                                //  %sw.epilog
                                        //    in Loop: Header=BB1_5 Depth=1
	or x1, x1, x28
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
LBB1_57:                                //  %sw.epilog
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x8, x0, 3
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 10
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_65 ( x0 )
LBB1_59:                                //  %sw.epilog.loopexit1327
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_strtol_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtol_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	addi x8, x0, 3
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_65 ( x0 )
LBB1_60:                                //  %sw.epilog.loopexit1489
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_strtoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtoul_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
LBB1_61:                                //  %sw.epilog
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x8, x0, 3
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 8
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_65 ( x0 )
LBB1_62:                                //  %sw.epilog.loopexit1636
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_strtoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtoul_r >> 12 & 0xfffff
	jalr x0, LBB1_56 ( x0 )
LBB1_63:                                //  %sw.epilog.loopexit1783
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x8, x0, 2
LBB1_64:                                //  %sw.epilog
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
LBB1_65:                                //  %sw.epilog
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	lui x11, $__ctype_ptr__ >> 12 & 0xfffff
	add x14, x0, x11
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	lw x1, 4 ( x7 )
	nop
	bgt x1, x0, LBB1_67
LBB1_66:                                //  %land.lhs.true161
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x7
	call $__srefill_r
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	lui x11, $__ctype_ptr__ >> 12 & 0xfffff
	add x14, x0, x11
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB1_109
LBB1_67:                                //  %if.end165
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 64
	bgtu x1, x0, LBB1_75
LBB1_68:                                //  %while.cond.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $__ctype_ptr__ & 0xfff
	lw x1, 0 ( x7 )
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x14, x28
	lw x3, 0 ( x3 )
	lbu x4, 0 ( x1 )
	nop
LBB1_69:                                //  %while.cond.preheader
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x3, x4, x3
	lbu x3, 1 ( x3 )
	nop
	andi x3, x3, 8
	beqz x3, LBB1_75
LBB1_70:                                //  %while.body
                                        //    in Loop: Header=BB1_69 Depth=2
	lw x3, 4 ( x7 )
	nop
	addi x4, x3, -1
	slti x3, x3, 2
	sw x4, 4 ( x7 )
	bgtu x3, x0, LBB1_73
LBB1_71:                                //  %if.then182
                                        //    in Loop: Header=BB1_69 Depth=2
	addi x1, x1, 1
	sw x1, 0 ( x7 )
LBB1_72:                                //  %while.cond.backedge
                                        //    in Loop: Header=BB1_69 Depth=2
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x14, x28
	lbu x4, 0 ( x1 )
	lw x3, 0 ( x3 )
	addi x5, x5, 1
	jalr x0, LBB1_69 ( x0 )
LBB1_73:                                //  %if.else185
                                        //    in Loop: Header=BB1_69 Depth=2
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x7
	add x8, x0, x5
	call $__srefill_r
	add x5, x0, x8
	lui x11, $__ctype_ptr__ >> 12 & 0xfffff
	add x14, x0, x11
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB1_109
LBB1_74:                                //  %if.else185.while.cond.backedge_crit_edge
                                        //    in Loop: Header=BB1_69 Depth=2
	lw x1, 0 ( x7 )
	jalr x0, LBB1_72 ( x0 )
LBB1_75:                                //  %if.end191
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 3
	xori x3, x1, 1
	sw x5, 40 ( x2 )                //  4-byte Folded Spill
	beqz x3, LBB1_117
LBB1_76:                                //  %if.end191
                                        //    in Loop: Header=BB1_5 Depth=1
	xori x3, x1, 2
	beqz x3, LBB1_140
LBB1_77:                                //  %if.end191
                                        //    in Loop: Header=BB1_5 Depth=1
	xori x1, x1, 3
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x9, 36 ( x2 )                //  4-byte Folded Reload
	lw x4, 52 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_198
LBB1_78:                                //  %sw.bb192
                                        //    in Loop: Header=BB1_5 Depth=1
	slti x1, x0, 1
	add x13, x0, x1
	add x8, x0, x0
	add x11, x0, x8
	beq x4, x11, LBB1_80
LBB1_79:                                //  %sw.bb192
                                        //    in Loop: Header=BB1_5 Depth=1
	add x13, x0, x4
LBB1_80:                                //  %sw.bb192
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x8, 1
	beqz x1, LBB1_104
LBB1_81:                                //  %if.then199
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x13, 52 ( x2 )               //  4-byte Folded Spill
	addi x10, x2, 60
	addi x12, x0, 8
	call $memset
	andi x1, x8, 16
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB1_86
LBB1_82:                                //  %while.body211.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	add x8, x0, x0
LBB1_83:                                //  %while.body211
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	call $__locale_mb_cur_max
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	beq x8, x10, LBB1_109
LBB1_84:                                //  %if.end216
                                        //    in Loop: Header=BB1_83 Depth=2
	addi x12, x2, 70
	add x1, x8, x12
	lw x3, 0 ( x7 )
	nop
	lb x4, 0 ( x3 )
	nop
	sb x4, 0 ( x1 )
	lw x1, 4 ( x7 )
	nop
	addi x1, x1, -1
	sw x1, 4 ( x7 )
	addi x1, x3, 1
	sw x1, 0 ( x7 )
	addi x8, x8, 1
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x0
	add x13, x0, x8
	addi x14, x2, 60
	call $_mbrtowc_r
	xori x1, x10, -2
	bgtu x1, x0, LBB1_97
LBB1_85:                                //    in Loop: Header=BB1_83 Depth=2
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_99 ( x0 )
LBB1_86:                                //  %while.body211.us.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 368 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 368 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x0
LBB1_87:                                //  %while.body211.us
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	call $__locale_mb_cur_max
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	beq x8, x10, LBB1_109
LBB1_88:                                //  %if.end216.us
                                        //    in Loop: Header=BB1_87 Depth=2
	addi x12, x2, 70
	add x1, x8, x12
	lw x3, 0 ( x7 )
	nop
	lb x4, 0 ( x3 )
	nop
	sb x4, 0 ( x1 )
	lw x1, 4 ( x7 )
	nop
	addi x1, x1, -1
	sw x1, 4 ( x7 )
	addi x1, x3, 1
	sw x1, 0 ( x7 )
	addi x8, x8, 1
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	addi x14, x2, 60
	call $_mbrtowc_r
	xori x1, x10, -2
	bgtu x1, x0, LBB1_90
LBB1_89:                                //    in Loop: Header=BB1_87 Depth=2
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_94 ( x0 )
LBB1_90:                                //  %if.end216.us
                                        //    in Loop: Header=BB1_87 Depth=2
	beqz x10, LBB1_92
LBB1_91:                                //  %if.end216.us
                                        //    in Loop: Header=BB1_87 Depth=2
	xori x1, x10, -1
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB1_93
	jalr x0, LBB1_109 ( x0 )
LBB1_92:                                //  %if.then235.us
                                        //    in Loop: Header=BB1_87 Depth=2
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sh x0, 0 ( x1 )
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
LBB1_93:                                //  %if.then239.us
                                        //    in Loop: Header=BB1_87 Depth=2
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x8
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 2
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, -1
	add x8, x0, x0
LBB1_94:                                //  %if.end247.us
                                        //    in Loop: Header=BB1_87 Depth=2
	lw x1, 4 ( x7 )
	sw x3, 52 ( x2 )                //  4-byte Folded Spill
	bgt x1, x0, LBB1_96
LBB1_95:                                //  %land.lhs.true251.us
                                        //    in Loop: Header=BB1_87 Depth=2
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x7
	call $__srefill_r
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB1_102
LBB1_96:                                //  %while.cond208.backedge.us
                                        //    in Loop: Header=BB1_87 Depth=2
	bgtu x3, x0, LBB1_87
	jalr x0, LBB1_103 ( x0 )
LBB1_97:                                //  %if.end216
                                        //    in Loop: Header=BB1_83 Depth=2
	xori x1, x10, -1
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_109
LBB1_98:                                //  %if.then239
                                        //    in Loop: Header=BB1_83 Depth=2
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x8
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, -1
	add x8, x0, x0
LBB1_99:                                //  %if.end247
                                        //    in Loop: Header=BB1_83 Depth=2
	lw x1, 4 ( x7 )
	sw x3, 52 ( x2 )                //  4-byte Folded Spill
	ble x1, x0, LBB1_101
LBB1_100:                               //  %while.cond208.backedge
                                        //    in Loop: Header=BB1_83 Depth=2
	bgtu x3, x0, LBB1_83
	jalr x0, LBB1_103 ( x0 )
LBB1_101:                               //  %land.lhs.true251
                                        //    in Loop: Header=BB1_83 Depth=2
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x7
	call $__srefill_r
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB1_100
LBB1_102:                               //  %if.then254
                                        //    in Loop: Header=BB1_5 Depth=1
	bgtu x8, x0, LBB1_109
LBB1_103:                               //  %cleanup
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	srli x1, x1, 4
	xori x1, x1, 1
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x1
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_43 ( x0 )
LBB1_104:                               //  %if.else266
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x8, 16
	beqz x1, LBB1_115
LBB1_105:                               //  %for.cond270.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	add x8, x0, x11
LBB1_106:                               //  %for.cond270
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 4 ( x7 )
	nop
	ble x13, x1, LBB1_113
LBB1_107:                               //  %if.then274
                                        //    in Loop: Header=BB1_106 Depth=2
	lw x3, 0 ( x7 )
	nop
	add x3, x1, x3
	sw x3, 0 ( x7 )
	sub x13, x13, x1
	sw x13, 52 ( x2 )               //  4-byte Folded Spill
	add x8, x8, x1
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x7
	call $__srefill_r
	lw x13, 52 ( x2 )               //  4-byte Folded Reload
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	lui x11, $__ctype_ptr__ >> 12 & 0xfffff
	add x14, x0, x11
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB1_106
LBB1_108:                               //  %if.then281
                                        //    in Loop: Header=BB1_5 Depth=1
	bgtu x8, x0, LBB1_114
LBB1_109:                               //  %input_failure
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB1_111
LBB1_110:                               //  %land.lhs.true729
	lbu x1, 12 ( x7 )
	nop
	andi x1, x1, 64
	srli x1, x1, 6
	beqz x1, LBB1_50
LBB1_111:                               //  %cleanup749.loopexit
	not x1, x0
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_50 ( x0 )
LBB1_113:                               //  %if.else287
                                        //    in Loop: Header=BB1_5 Depth=1
	sub x1, x1, x13
	sw x1, 4 ( x7 )
	lw x1, 0 ( x7 )
	nop
	add x1, x13, x1
	sw x1, 0 ( x7 )
	add x8, x8, x13
LBB1_114:                               //  %cleanup296.thread
                                        //    in Loop: Header=BB1_5 Depth=1
	add x5, x5, x8
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_49 ( x0 )
LBB1_115:                               //  %if.else299
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 368 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 368 ( x2 )
	lw x11, 0 ( x1 )
	slti x12, x0, 1
	add x14, x0, x7
	call $_fread_r
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	lui x11, $__ctype_ptr__ >> 12 & 0xfffff
	add x14, x0, x11
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB1_109
LBB1_116:                               //    in Loop: Header=BB1_5 Depth=1
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	add x5, x5, x10
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_49 ( x0 )
LBB1_117:                               //  %sw.bb313
                                        //    in Loop: Header=BB1_5 Depth=1
	not x1, x0
	add x10, x0, x1
	add x1, x0, x0
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	beq x3, x1, LBB1_119
LBB1_118:                               //  %sw.bb313
                                        //    in Loop: Header=BB1_5 Depth=1
	add x10, x0, x3
LBB1_119:                               //  %sw.bb313
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 16
	beqz x1, LBB1_128
LBB1_120:                               //  %while.cond321.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 0 ( x7 )
	nop
	lbu x3, 0 ( x1 )
	addi x4, x2, 110
	add x3, x3, x4
	lbu x3, 0 ( x3 )
	nop
	beqz x3, LBB1_50
LBB1_121:                               //  %while.body325.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	slti x3, x0, 1
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
LBB1_122:                               //  %while.body325
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x12, x0, x3
	lw x3, 4 ( x7 )
	addi x1, x1, 1
	addi x4, x3, -1
	sw x4, 4 ( x7 )
	sw x1, 0 ( x7 )
	beq x10, x12, LBB1_138
LBB1_123:                               //  %if.end335
                                        //    in Loop: Header=BB1_122 Depth=2
	slti x3, x3, 2
	bgtu x3, x0, LBB1_125
LBB1_124:                               //  %while.cond321.backedge
                                        //    in Loop: Header=BB1_122 Depth=2
	lbu x4, 0 ( x1 )
	addi x3, x12, 1
	addi x5, x2, 110
	add x4, x4, x5
	lbu x4, 0 ( x4 )
	nop
	bgtu x4, x0, LBB1_122
	jalr x0, LBB1_138 ( x0 )
LBB1_125:                               //  %land.lhs.true339
                                        //    in Loop: Header=BB1_122 Depth=2
	sw x12, 52 ( x2 )               //  4-byte Folded Spill
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x7
	add x8, x0, x7
	call $__srefill_r
	beqz x10, LBB1_127
LBB1_126:                               //    in Loop: Header=BB1_5 Depth=1
	add x7, x0, x8
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	lui x11, $__ctype_ptr__ >> 12 & 0xfffff
	add x14, x0, x11
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	nop
	add x5, x5, x12
	jalr x0, LBB1_49 ( x0 )
LBB1_127:                               //  %land.lhs.true339.while.cond321.backedge_crit_edge
                                        //    in Loop: Header=BB1_122 Depth=2
	lw x1, 0 ( x8 )
	add x7, x0, x8
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	lui x11, $__ctype_ptr__ >> 12 & 0xfffff
	add x14, x0, x11
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_124 ( x0 )
LBB1_128:                               //  %if.else353
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 0 ( x7 )
	lw x3, 368 ( x2 )
	lbu x4, 0 ( x1 )
	addi x5, x3, 4
	sw x5, 368 ( x2 )
	lw x5, 0 ( x3 )
	addi x3, x2, 110
	add x3, x4, x3
	lbu x4, 0 ( x3 )
	add x3, x0, x5
	beqz x4, LBB1_136
LBB1_129:                               //  %while.body360.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x9, x10, -1
	add x8, x0, x0
	sw x5, 32 ( x2 )                //  4-byte Folded Spill
	sw x9, 28 ( x2 )                //  4-byte Folded Spill
LBB1_130:                               //  %while.body360
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x3, 4 ( x7 )
	addi x4, x1, 1
	add x11, x8, x5
	addi x3, x3, -1
	sw x3, 4 ( x7 )
	sw x4, 0 ( x7 )
	lb x1, 0 ( x1 )
	nop
	sb x1, 0 ( x11 )
	beq x9, x8, LBB1_135
LBB1_131:                               //  %if.end370
                                        //    in Loop: Header=BB1_130 Depth=2
	lw x1, 4 ( x7 )
	nop
	ble x1, x0, LBB1_133
LBB1_132:                               //  %while.cond355.backedge
                                        //    in Loop: Header=BB1_130 Depth=2
	lw x1, 0 ( x7 )
	addi x8, x8, 1
	lbu x3, 0 ( x1 )
	addi x4, x2, 110
	add x3, x3, x4
	lbu x3, 0 ( x3 )
	nop
	bgtu x3, x0, LBB1_130
	jalr x0, LBB1_135 ( x0 )
LBB1_133:                               //  %land.lhs.true374
                                        //    in Loop: Header=BB1_130 Depth=2
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x7
	call $__srefill_r
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	lw x9, 28 ( x2 )                //  4-byte Folded Reload
	lw x5, 32 ( x2 )                //  4-byte Folded Reload
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB1_132
LBB1_134:                               //  %if.then377
                                        //    in Loop: Header=BB1_5 Depth=1
	xori x1, x8, -1
	beqz x1, LBB1_109
LBB1_135:                               //  %while.end383.loopexit
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x3, x11, 1
LBB1_136:                               //  %while.end383
                                        //    in Loop: Header=BB1_5 Depth=1
	sub x12, x3, x5
	beqz x12, LBB1_50
LBB1_137:                               //  %if.end387
                                        //    in Loop: Header=BB1_5 Depth=1
	sb x0, 0 ( x3 )
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	lui x11, $__ctype_ptr__ >> 12 & 0xfffff
	add x14, x0, x11
LBB1_138:                               //  %if.end389
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x5, x5, x12
	jalr x0, LBB1_49 ( x0 )
LBB1_140:                               //  %sw.bb391
                                        //    in Loop: Header=BB1_5 Depth=1
	not x1, x0
	add x10, x0, x1
	add x1, x0, x0
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	beq x3, x1, LBB1_142
LBB1_141:                               //  %sw.bb391
                                        //    in Loop: Header=BB1_5 Depth=1
	add x10, x0, x3
LBB1_142:                               //  %sw.bb391
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 1
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	beqz x1, LBB1_181
LBB1_143:                               //  %if.then398
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x10, x2, 60
	add x8, x0, x0
	add x11, x0, x8
	addi x12, x0, 8
	add x8, x0, x3
	call $memset
	andi x4, x8, 16
	addi x1, x2, 366
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	bgtu x4, x0, LBB1_145
LBB1_144:                               //  %if.then404
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 368 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 368 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
LBB1_145:                               //  %while.cond408.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__ctype_ptr__ >> 12 & 0xfffff
	or x1, x1, x28
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	sw x4, 28 ( x2 )                //  4-byte Folded Spill
	beqz x3, LBB1_179
LBB1_146:                               //  %while.cond408.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 0 ( x1 )
	lw x3, 0 ( x7 )
	nop
	lbu x3, 0 ( x3 )
	nop
	add x1, x3, x1
	lbu x1, 1 ( x1 )
	nop
	andi x1, x1, 8
	bgtu x1, x0, LBB1_179
LBB1_147:                               //  %while.body418.lr.ph
                                        //    in Loop: Header=BB1_5 Depth=1
	beqz x4, LBB1_152
LBB1_148:                               //    in Loop: Header=BB1_5 Depth=1
	add x8, x0, x0
LBB1_149:                               //  %while.body418
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	call $__locale_mb_cur_max
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	beq x8, x10, LBB1_109
LBB1_150:                               //  %if.end423
                                        //    in Loop: Header=BB1_149 Depth=2
	lw x1, 0 ( x7 )
	addi x12, x2, 70
	add x3, x8, x12
	addi x8, x8, 1
	lb x4, 0 ( x1 )
	addi x1, x1, 1
	sb x4, 0 ( x3 )
	lw x3, 4 ( x7 )
	nop
	addi x3, x3, -1
	sw x3, 4 ( x7 )
	sw x1, 0 ( x7 )
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	addi x14, x2, 60
	call $_mbrtowc_r
	xori x1, x10, -2
	bgtu x1, x0, LBB1_166
LBB1_151:                               //    in Loop: Header=BB1_149 Depth=2
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	lw x5, 52 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_174 ( x0 )
LBB1_152:                               //  %while.body418.us.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	add x8, x0, x0
LBB1_153:                               //  %while.body418.us
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	call $__locale_mb_cur_max
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	beq x8, x10, LBB1_109
LBB1_154:                               //  %if.end423.us
                                        //    in Loop: Header=BB1_153 Depth=2
	lw x1, 0 ( x7 )
	addi x12, x2, 70
	add x3, x8, x12
	addi x8, x8, 1
	lb x4, 0 ( x1 )
	addi x1, x1, 1
	sb x4, 0 ( x3 )
	lw x3, 4 ( x7 )
	nop
	addi x3, x3, -1
	sw x3, 4 ( x7 )
	sw x1, 0 ( x7 )
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	addi x14, x2, 60
	call $_mbrtowc_r
	xori x1, x10, -2
	bgtu x1, x0, LBB1_156
LBB1_155:                               //    in Loop: Header=BB1_153 Depth=2
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	lw x5, 52 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_162 ( x0 )
LBB1_156:                               //  %if.end423.us
                                        //    in Loop: Header=BB1_153 Depth=2
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB1_159
LBB1_157:                               //  %if.end423.us
                                        //    in Loop: Header=BB1_153 Depth=2
	xori x1, x10, -1
	beqz x1, LBB1_109
LBB1_158:                               //  %if.end423.us.if.then443.us_crit_edge
                                        //    in Loop: Header=BB1_153 Depth=2
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lh x1, 0 ( x1 )
	jalr x0, LBB1_160 ( x0 )
LBB1_159:                               //  %if.then439.us
                                        //    in Loop: Header=BB1_153 Depth=2
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sh x0, 0 ( x1 )
	add x1, x0, x0
LBB1_160:                               //  %if.then443.us
                                        //    in Loop: Header=BB1_153 Depth=2
	slli x1, x1, 16
	srai x10, x1, 16
	call $iswspace
	bgtu x10, x0, LBB1_171
LBB1_161:                               //  %if.end457.us
                                        //    in Loop: Header=BB1_153 Depth=2
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x4, x8
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 2
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	lw x5, 52 ( x2 )                //  4-byte Folded Reload
	nop
	addi x5, x5, -1
	add x8, x0, x0
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	nop
LBB1_162:                               //  %if.end466.us
                                        //    in Loop: Header=BB1_153 Depth=2
	lw x1, 4 ( x7 )
	lui x3, $__ctype_ptr__ >> 12 & 0xfffff
	sw x4, 40 ( x2 )                //  4-byte Folded Spill
	sw x5, 52 ( x2 )                //  4-byte Folded Spill
	bgt x1, x0, LBB1_164
LBB1_163:                               //  %land.lhs.true470.us
                                        //    in Loop: Header=BB1_153 Depth=2
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x7
	call $__srefill_r
	lw x5, 52 ( x2 )                //  4-byte Folded Reload
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	lui x3, $__ctype_ptr__ >> 12 & 0xfffff
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB1_178
LBB1_164:                               //  %while.cond408.backedge.us
                                        //    in Loop: Header=BB1_153 Depth=2
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x3, x28
	beqz x5, LBB1_179
LBB1_165:                               //  %while.cond408.backedge.us
                                        //    in Loop: Header=BB1_153 Depth=2
	lw x1, 0 ( x1 )
	lw x3, 0 ( x7 )
	nop
	lbu x3, 0 ( x3 )
	nop
	add x1, x3, x1
	lbu x1, 1 ( x1 )
	nop
	andi x1, x1, 8
	beqz x1, LBB1_153
	jalr x0, LBB1_179 ( x0 )
LBB1_166:                               //  %if.end423
                                        //    in Loop: Header=BB1_149 Depth=2
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB1_169
LBB1_167:                               //  %if.end423
                                        //    in Loop: Header=BB1_149 Depth=2
	xori x1, x10, -1
	beqz x1, LBB1_109
LBB1_168:                               //  %if.end423.if.then443_crit_edge
                                        //    in Loop: Header=BB1_149 Depth=2
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lh x1, 0 ( x1 )
	jalr x0, LBB1_170 ( x0 )
LBB1_169:                               //  %if.then439
                                        //    in Loop: Header=BB1_149 Depth=2
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sh x0, 0 ( x1 )
	add x1, x0, x0
LBB1_170:                               //  %if.then443
                                        //    in Loop: Header=BB1_149 Depth=2
	slli x1, x1, 16
	srai x10, x1, 16
	call $iswspace
	beqz x10, LBB1_173
LBB1_171:                               //    in Loop: Header=BB1_5 Depth=1
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	beqz x8, LBB1_179
LBB1_172:                               //  %while.body451
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x1, x2, 70
	add x1, x8, x1
	lbu x11, -1 ( x1 )
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x7
	call $_ungetc_r
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	addi x8, x8, -1
	bgtu x8, x0, LBB1_172
	jalr x0, LBB1_179 ( x0 )
LBB1_173:                               //  %if.end457
                                        //    in Loop: Header=BB1_149 Depth=2
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x4, x8
	lw x5, 52 ( x2 )                //  4-byte Folded Reload
	nop
	addi x5, x5, -1
	add x8, x0, x0
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	nop
LBB1_174:                               //  %if.end466
                                        //    in Loop: Header=BB1_149 Depth=2
	lw x1, 4 ( x7 )
	lui x3, $__ctype_ptr__ >> 12 & 0xfffff
	sw x4, 40 ( x2 )                //  4-byte Folded Spill
	sw x5, 52 ( x2 )                //  4-byte Folded Spill
	ble x1, x0, LBB1_177
LBB1_175:                               //  %while.cond408.backedge
                                        //    in Loop: Header=BB1_149 Depth=2
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x3, x28
	beqz x5, LBB1_179
LBB1_176:                               //  %while.cond408.backedge
                                        //    in Loop: Header=BB1_149 Depth=2
	lw x1, 0 ( x1 )
	lw x3, 0 ( x7 )
	nop
	lbu x3, 0 ( x3 )
	nop
	add x1, x3, x1
	lbu x1, 1 ( x1 )
	nop
	andi x1, x1, 8
	beqz x1, LBB1_149
	jalr x0, LBB1_179 ( x0 )
LBB1_177:                               //  %land.lhs.true470
                                        //    in Loop: Header=BB1_149 Depth=2
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x7
	call $__srefill_r
	lw x5, 52 ( x2 )                //  4-byte Folded Reload
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	lui x3, $__ctype_ptr__ >> 12 & 0xfffff
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB1_175
LBB1_178:                               //  %if.then473
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x4, 40 ( x2 )                //  4-byte Folded Spill
	bgtu x8, x0, LBB1_109
LBB1_179:                               //  %while.end479
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB1_43
LBB1_180:                               //  %if.then482
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sh x0, 0 ( x1 )
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_43 ( x0 )
LBB1_181:                               //  %if.else488
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x3, 16
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	ori x28, x0, $__ctype_ptr__ & 0xfff
	beqz x1, LBB1_190
LBB1_182:                               //  %while.cond492.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 0 ( x7 )
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x14, x28
	lw x3, 0 ( x3 )
	lbu x4, 0 ( x1 )
	nop
	add x3, x4, x3
	lbu x3, 1 ( x3 )
	nop
	andi x3, x3, 8
	add x4, x0, x0
	add x12, x0, x4
	bgtu x3, x0, LBB1_189
LBB1_183:                               //  %while.body500.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	slti x3, x0, 1
LBB1_184:                               //  %while.body500
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x12, x0, x3
	lw x3, 4 ( x7 )
	addi x1, x1, 1
	addi x4, x3, -1
	sw x4, 4 ( x7 )
	sw x1, 0 ( x7 )
	beq x10, x12, LBB1_189
LBB1_185:                               //  %if.end510
                                        //    in Loop: Header=BB1_184 Depth=2
	slti x3, x3, 2
	bgtu x3, x0, LBB1_187
LBB1_186:                               //  %while.cond492.backedge
                                        //    in Loop: Header=BB1_184 Depth=2
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x14, x28
	lbu x4, 0 ( x1 )
	lw x5, 0 ( x3 )
	addi x3, x12, 1
	add x4, x4, x5
	lbu x4, 1 ( x4 )
	nop
	andi x4, x4, 8
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	beqz x4, LBB1_184
	jalr x0, LBB1_189 ( x0 )
LBB1_187:                               //  %land.lhs.true514
                                        //    in Loop: Header=BB1_184 Depth=2
	sw x12, 32 ( x2 )               //  4-byte Folded Spill
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x7
	add x8, x0, x7
	call $__srefill_r
	beqz x10, LBB1_255
LBB1_188:                               //    in Loop: Header=BB1_5 Depth=1
	add x7, x0, x8
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	lui x11, $__ctype_ptr__ >> 12 & 0xfffff
	add x14, x0, x11
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	lw x12, 32 ( x2 )               //  4-byte Folded Reload
	nop
LBB1_189:                               //  %while.end519
                                        //    in Loop: Header=BB1_5 Depth=1
	add x5, x5, x12
	jalr x0, LBB1_49 ( x0 )
LBB1_190:                               //  %if.else521
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 0 ( x7 )
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x14, x28
	lw x3, 0 ( x3 )
	lbu x4, 0 ( x1 )
	lw x5, 368 ( x2 )
	add x3, x4, x3
	lbu x3, 1 ( x3 )
	addi x4, x5, 4
	sw x4, 368 ( x2 )
	lw x4, 0 ( x5 )
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	andi x3, x3, 8
	sw x4, 32 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x4
	bgtu x3, x0, LBB1_197
LBB1_191:                               //  %while.body532.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	slti x3, x0, 1
	sub x8, x3, x10
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 1
LBB1_192:                               //  %while.body532
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x12, x0, x3
	lw x3, 4 ( x7 )
	addi x4, x1, 1
	addi x3, x3, -1
	sw x3, 4 ( x7 )
	sw x4, 0 ( x7 )
	lb x1, 0 ( x1 )
	nop
	sb x1, -1 ( x12 )
	beqz x8, LBB1_197
LBB1_193:                               //  %if.end542
                                        //    in Loop: Header=BB1_192 Depth=2
	lw x1, 4 ( x7 )
	nop
	ble x1, x0, LBB1_195
LBB1_194:                               //  %while.cond523.backedge
                                        //    in Loop: Header=BB1_192 Depth=2
	ori x28, x0, $__ctype_ptr__ & 0xfff
	lw x1, 0 ( x7 )
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x14, x28
	lw x4, 0 ( x3 )
	lbu x5, 0 ( x1 )
	addi x3, x12, 1
	addi x8, x8, 1
	add x4, x5, x4
	lbu x4, 1 ( x4 )
	nop
	andi x4, x4, 8
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	beqz x4, LBB1_192
	jalr x0, LBB1_197 ( x0 )
LBB1_195:                               //  %land.lhs.true546
                                        //    in Loop: Header=BB1_192 Depth=2
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x7
	sw x12, 52 ( x2 )               //  4-byte Folded Spill
	call $__srefill_r
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	lui x11, $__ctype_ptr__ >> 12 & 0xfffff
	add x14, x0, x11
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB1_194
LBB1_196:                               //    in Loop: Header=BB1_5 Depth=1
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
LBB1_197:                               //  %while.end551
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x5, x1
	sb x0, 0 ( x12 )
	add x5, x12, x1
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_49 ( x0 )
LBB1_198:                               //  %sw.bb559
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x1, x4, -1
	addi x3, x0, 39
	add x12, x0, x3
	addi x3, x0, 38
	bgtu x1, x3, LBB1_200
LBB1_199:                               //  %sw.bb559
                                        //    in Loop: Header=BB1_5 Depth=1
	add x12, x0, x4
LBB1_200:                               //  %sw.bb559
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, 3456 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 3456 >> 12 & 0xfffff
	or x3, x3, x28
	lw x4, 32 ( x2 )                //  4-byte Folded Reload
	nop
	or x10, x3, x4
	add x3, x0, x0
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	bgtu x12, x0, LBB1_202
LBB1_201:                               //    in Loop: Header=BB1_5 Depth=1
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	add x12, x0, x3
	jalr x0, LBB1_235 ( x0 )
LBB1_202:                               //  %for.body570.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x4, x0, 38
	sw x12, 28 ( x2 )               //  4-byte Folded Spill
	bgeu x4, x1, LBB1_204
LBB1_203:                               //    in Loop: Header=BB1_5 Depth=1
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -39
	sw x1, 4 ( x2 )                 //  4-byte Folded Spill
	jalr x0, LBB1_205 ( x0 )
LBB1_204:                               //  %for.body570.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x3, 4 ( x2 )                 //  4-byte Folded Spill
LBB1_205:                               //  %for.body570.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x1, x2, 70
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x3
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
LBB1_206:                               //  %for.body570
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x3, 0 ( x7 )
	nop
	lbu x4, 0 ( x3 )
	nop
	addi x10, x4, -43
	addi x1, x0, 77
	bgtu x10, x1, LBB1_235
LBB1_207:                               //  %for.body570
                                        //    in Loop: Header=BB1_206 Depth=2
	sw x4, 24 ( x2 )                //  4-byte Folded Spill
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 4
	sw x9, 36 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x12
	call $__mulsi3
	add x12, x0, x8
	lw x9, 36 ( x2 )                //  4-byte Folded Reload
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	lui x11, $__ctype_ptr__ >> 12 & 0xfffff
	add x14, x0, x11
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	ori x28, x0, JTI1_1 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI1_1 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB1_208:                               //  %sw.bb573
                                        //    in Loop: Header=BB1_206 Depth=2
	ori x28, x0, 2048 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 2048 >> 12 & 0xfffff
	or x1, x1, x28
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	nop
	and x1, x1, x10
	beqz x1, LBB1_230
LBB1_209:                               //  %if.end577
                                        //    in Loop: Header=BB1_206 Depth=2
	add x1, x0, x0
	bne x9, x1, LBB1_211
LBB1_210:                               //    in Loop: Header=BB1_206 Depth=2
	ori x10, x10, 512
LBB1_211:                               //  %if.end577
                                        //    in Loop: Header=BB1_206 Depth=2
	lw x13, 4 ( x2 )                //  4-byte Folded Reload
	addi x1, x0, 8
	add x3, x0, x0
	beq x9, x3, LBB1_213
LBB1_212:                               //  %if.end577
                                        //    in Loop: Header=BB1_206 Depth=2
	add x1, x0, x9
LBB1_213:                               //  %if.end577
                                        //    in Loop: Header=BB1_206 Depth=2
	andi x3, x10, 1024
	beqz x3, LBB1_215
LBB1_214:                               //  %if.then585
                                        //    in Loop: Header=BB1_206 Depth=2
	andi x10, x10, -1409
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB1_229 ( x0 )
LBB1_215:                               //  %if.end587
                                        //    in Loop: Header=BB1_206 Depth=2
	add x3, x0, x0
	add x4, x0, x3
	lw x9, 8 ( x2 )                 //  4-byte Folded Reload
	beq x13, x4, LBB1_217
LBB1_216:                               //  %if.end587
                                        //    in Loop: Header=BB1_206 Depth=2
	addi x3, x13, -1
LBB1_217:                               //  %if.end587
                                        //    in Loop: Header=BB1_206 Depth=2
	sltu x4, x0, x13
	andi x4, x4, 1
	lw x13, 28 ( x2 )               //  4-byte Folded Reload
	nop
	add x13, x4, x13
	sw x13, 28 ( x2 )               //  4-byte Folded Spill
	addi x9, x9, 1
	sw x9, 8 ( x2 )                 //  4-byte Folded Spill
	andi x10, x10, -897
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	add x9, x0, x1
	sw x3, 4 ( x2 )                 //  4-byte Folded Spill
	jalr x0, LBB1_231 ( x0 )
LBB1_218:                               //  %sw.bb595
                                        //    in Loop: Header=BB1_206 Depth=2
	ori x28, x0, -2945 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -2945 >> 12 & 0xfffff
	or x1, x1, x28
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	and x3, x1, x3
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	slli x1, x9, 1
	ori x28, x0, $__svfiscanf_r.basefix & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $__svfiscanf_r.basefix >> 12 & 0xfffff
	or x3, x3, x28
	add x1, x3, x1
	lh x9, 0 ( x1 )
	jalr x0, LBB1_230 ( x0 )
LBB1_219:                               //  %sw.bb599
                                        //    in Loop: Header=BB1_206 Depth=2
	slli x1, x9, 1
	ori x28, x0, $__svfiscanf_r.basefix & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $__svfiscanf_r.basefix >> 12 & 0xfffff
	or x3, x3, x28
	add x1, x3, x1
	lh x1, 0 ( x1 )
	addi x3, x9, -1
	sltiu x3, x3, 8
	beqz x3, LBB1_221
LBB1_220:                               //    in Loop: Header=BB1_5 Depth=1
	add x9, x0, x1
	jalr x0, LBB1_235 ( x0 )
LBB1_221:                               //  %if.end605
                                        //    in Loop: Header=BB1_206 Depth=2
	ori x28, x0, -2945 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, -2945 >> 12 & 0xfffff
	or x3, x3, x28
	lw x4, 32 ( x2 )                //  4-byte Folded Reload
	nop
	and x4, x3, x4
	sw x4, 32 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_229 ( x0 )
LBB1_222:                               //  %sw.bb607
                                        //    in Loop: Header=BB1_206 Depth=2
	slti x1, x9, 11
	bgtu x1, x0, LBB1_235
LBB1_223:                               //  %if.end611
                                        //    in Loop: Header=BB1_206 Depth=2
	ori x28, x0, -2945 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -2945 >> 12 & 0xfffff
	or x1, x1, x28
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	and x3, x1, x3
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_230 ( x0 )
LBB1_224:                               //  %sw.bb613
                                        //    in Loop: Header=BB1_206 Depth=2
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 128
	beqz x1, LBB1_235
LBB1_225:                               //  %if.then616
                                        //    in Loop: Header=BB1_206 Depth=2
	andi x3, x3, -129
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_230 ( x0 )
LBB1_227:                               //  %sw.bb619
                                        //    in Loop: Header=BB1_206 Depth=2
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 1536
	xori x1, x1, 512
	bgtu x1, x0, LBB1_235
LBB1_228:                               //  %if.then623
                                        //    in Loop: Header=BB1_206 Depth=2
	andi x1, x3, -1793
	ori x1, x1, 1280
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 16
LBB1_229:                               //  %ok
                                        //    in Loop: Header=BB1_206 Depth=2
	add x9, x0, x1
LBB1_230:                               //  %ok
                                        //    in Loop: Header=BB1_206 Depth=2
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, 0 ( x1 )
	addi x12, x12, 1
LBB1_231:                               //  %skip
                                        //    in Loop: Header=BB1_206 Depth=2
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	addi x8, x2, 70
	lw x1, 4 ( x7 )
	nop
	addi x3, x1, -1
	sw x3, 4 ( x7 )
	slti x1, x1, 2
	bgtu x1, x0, LBB1_233
LBB1_232:                               //  %if.then634
                                        //    in Loop: Header=BB1_206 Depth=2
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 0 ( x7 )
	jalr x0, LBB1_234 ( x0 )
LBB1_233:                               //  %if.else637
                                        //    in Loop: Header=BB1_206 Depth=2
	add x11, x0, x7
	sw x9, 36 ( x2 )                //  4-byte Folded Spill
	sw x12, 52 ( x2 )               //  4-byte Folded Spill
	call $__srefill_r
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	lw x9, 36 ( x2 )                //  4-byte Folded Reload
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	lui x11, $__ctype_ptr__ >> 12 & 0xfffff
	add x14, x0, x11
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB1_235
LBB1_234:                               //  %for.inc643
                                        //    in Loop: Header=BB1_206 Depth=2
	add x1, x12, x8
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB1_206
LBB1_235:                               //  %for.end645
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x9, 36 ( x2 )                //  4-byte Folded Spill
	addi x1, x2, 70
	add x8, x12, x1
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 256
	bgtu x1, x0, LBB1_237
LBB1_236:                               //    in Loop: Header=BB1_5 Depth=1
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_240 ( x0 )
LBB1_237:                               //  %if.then648
                                        //    in Loop: Header=BB1_5 Depth=1
	ble x12, x0, LBB1_239
LBB1_238:                               //  %if.then652
                                        //    in Loop: Header=BB1_5 Depth=1
	lb x11, -1 ( x8 )
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x7
	call $_ungetc_r
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	lui x11, $__ctype_ptr__ >> 12 & 0xfffff
	add x14, x0, x11
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	addi x8, x8, -1
LBB1_239:                               //  %if.end656
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	addi x1, x2, 70
	bne x8, x1, LBB1_257
LBB1_256:                               //  %if.end656
                                        //    in Loop: Header=BB1_5 Depth=1
	jalr x0, LBB1_50 ( x0 )
LBB1_257:                               //  %if.end656
                                        //    in Loop: Header=BB1_5 Depth=1
LBB1_240:                               //  %if.end662
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x3, 16
	beqz x1, LBB1_242
LBB1_241:                               //    in Loop: Header=BB1_5 Depth=1
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	jalr x0, LBB1_254 ( x0 )
LBB1_242:                               //  %if.then666
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x8, 52 ( x2 )                //  4-byte Folded Spill
	sb x0, 0 ( x8 )
	add x8, x0, x3
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 70
	add x12, x0, x0
	lw x13, 36 ( x2 )               //  4-byte Folded Reload
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	andi x1, x8, 32
	bgtu x1, x0, LBB1_251
LBB1_243:                               //  %if.else673
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x8, 4
	beqz x1, LBB1_245
LBB1_244:                               //  %if.then676
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 368 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 368 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sh x10, 0 ( x1 )
	jalr x0, LBB1_252 ( x0 )
LBB1_245:                               //  %if.else679
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x8, 1
	bgtu x1, x0, LBB1_251
LBB1_246:                               //  %if.else684
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x8, 2
	beqz x1, LBB1_251
LBB1_247:                               //  %if.then687
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_strtoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtoul_r >> 12 & 0xfffff
	or x1, x1, x28
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	lw x13, 36 ( x2 )               //  4-byte Folded Reload
	bne x3, x1, LBB1_249
LBB1_248:                               //  %if.then690
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 70
	add x12, x0, x0
	call $_strtoull_r
	jalr x0, LBB1_250 ( x0 )
LBB1_249:                               //  %if.else693
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 70
	add x12, x0, x0
	call $_strtoll_r
LBB1_250:                               //  %if.end696
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	lw x1, 368 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 368 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x11, 4 ( x1 )
	sw x10, 0 ( x1 )
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	lui x11, $__ctype_ptr__ >> 12 & 0xfffff
	add x14, x0, x11
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	jalr x0, LBB1_253 ( x0 )
LBB1_251:                               //  %if.else698
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 368 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 368 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x10, 0 ( x1 )
LBB1_252:                               //  %if.end703
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	lui x11, $__ctype_ptr__ >> 12 & 0xfffff
	add x14, x0, x11
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
LBB1_253:                               //  %if.end703
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
LBB1_254:                               //  %cleanup712.thread
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x1, x2, 70
	sub x1, x5, x1
	add x1, x3, x1
	add x5, x8, x1
	jalr x0, LBB1_49 ( x0 )
LBB1_255:                               //  %land.lhs.true514.while.cond492.backedge_crit_edge
                                        //    in Loop: Header=BB1_184 Depth=2
	lw x1, 0 ( x8 )
	add x7, x0, x8
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	lui x11, $__ctype_ptr__ >> 12 & 0xfffff
	add x14, x0, x11
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x12, 32 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_186 ( x0 )
$func_end1:
	.size	$__svfiscanf_r, ($func_end1)-($__svfiscanf_r)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	LBB1_111
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_19
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_29
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
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
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_34
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_32
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_35
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_36
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_38
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_39
	.long	LBB1_54
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_31
	.long	LBB1_59
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_24
	.long	LBB1_53
	.long	LBB1_41
	.long	LBB1_60
	.long	LBB1_40
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_63
	.long	LBB1_53
	.long	LBB1_62
	.long	LBB1_53
	.long	LBB1_53
	.long	LBB1_36
JTI1_1:
	.long	LBB1_224
	.long	LBB1_235
	.long	LBB1_224
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_208
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_218
	.long	LBB1_219
	.long	LBB1_219
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_222
	.long	LBB1_222
	.long	LBB1_222
	.long	LBB1_222
	.long	LBB1_222
	.long	LBB1_222
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_227
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_222
	.long	LBB1_222
	.long	LBB1_222
	.long	LBB1_222
	.long	LBB1_222
	.long	LBB1_222
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_235
	.long	LBB1_227

	.text
	.globl	$__svfiscanf
	.type	$__svfiscanf,@function
$__svfiscanf:                           //  @__svfiscanf
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
	j $__svfiscanf_r
$func_end2:
	.size	$__svfiscanf, ($func_end2)-($__svfiscanf)
	.cfi_endproc

	.globl	$_vfiscanf_r
	.type	$_vfiscanf_r,@function
$_vfiscanf_r:                           //  @_vfiscanf_r
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
	j $__svfiscanf_r
$func_end3:
	.size	$_vfiscanf_r, ($func_end3)-($_vfiscanf_r)
	.cfi_endproc

	.address_space	0	
	.address_space	0	
	.type	$__svfiscanf_r.basefix,@object //  @__svfiscanf_r.basefix
	.section	.rodata,"a",@progbits
	.p2align	1
$__svfiscanf_r.basefix:
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
	.size	$__svfiscanf_r.basefix, 34

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
