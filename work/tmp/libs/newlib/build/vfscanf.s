	.text
	.file	"vfscanf.bc"
	.globl	$vfscanf
	.type	$vfscanf,@function
$vfscanf:                               //  @vfscanf
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
	j $__svfscanf_r
$func_end0:
	.size	$vfscanf, ($func_end0)-($vfscanf)
	.cfi_endproc

	.globl	$__svfscanf_r
	.type	$__svfscanf_r,@function
$__svfscanf_r:                          //  @__svfscanf_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -736
$cfi9:
	.cfi_adjust_cfa_offset 736
	sw x1, 732 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 724 ( x2 )               //  4-byte Folded Spill
	sw x10, 88 ( x2 )               //  4-byte Folded Spill
	lh x1, 12 ( x11 )
	lui x3, 8192>>12 
	sw x13, 720 ( x2 )
	and x4, x3, x1
	bgtu x4, x0, LBB1_2
LBB1_1:                                 //  %if.then7
	or x1, x3, x1
	sh x1, 12 ( x11 )
	ori x28, x0, -8193 & 0xfff
	lw x1, 100 ( x11 )
	slli x28, x28, 20
	lui x3, -8193 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	and x1, x3, x1
	sw x1, 100 ( x11 )
LBB1_2:                                 //  %for.cond.preheader
	lbu x1, 0 ( x12 )
	nop
	sh x1, 718 ( x2 )
	add x4, x0, x12
	bgtu x1, x0, LBB1_4
LBB1_3:
	add x1, x0, x0
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_53 ( x0 )
LBB1_4:                                 //  %land.lhs.true.lr.ph
	add x3, x0, x0
	addi x5, x2, 112
	addi x5, x5, 339
	sw x5, 44 ( x2 )                //  4-byte Folded Spill
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	sw x3, 52 ( x2 )                //  4-byte Folded Spill
	sw x3, 68 ( x2 )                //  4-byte Folded Spill
	add x5, x0, x3
	sw x3, 60 ( x2 )                //  4-byte Folded Spill
	sw x11, 84 ( x2 )               //  4-byte Folded Spill
LBB1_5:                                 //  %land.lhs.true
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_7 Depth 2
                                        //      Child Loop BB1_16 Depth 2
                                        //        Child Loop BB1_17 Depth 3
                                        //      Child Loop BB1_75 Depth 2
                                        //      Child Loop BB1_270 Depth 2
                                        //        Child Loop BB1_271 Depth 3
                                        //      Child Loop BB1_335 Depth 2
                                        //      Child Loop BB1_212 Depth 2
                                        //      Child Loop BB1_154 Depth 2
                                        //      Child Loop BB1_158 Depth 2
                                        //      Child Loop BB1_177 Depth 2
                                        //      Child Loop BB1_190 Depth 2
                                        //      Child Loop BB1_198 Depth 2
                                        //      Child Loop BB1_126 Depth 2
                                        //      Child Loop BB1_135 Depth 2
                                        //      Child Loop BB1_87 Depth 2
                                        //      Child Loop BB1_91 Depth 2
                                        //      Child Loop BB1_110 Depth 2
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x7, x28
	lw x3, 0 ( x3 )
	andi x1, x1, 255
	addi x4, x4, 1
	addi x9, x3, 1
	add x3, x1, x9
	lbu x3, 0 ( x3 )
	nop
	andi x3, x3, 8
	beqz x3, LBB1_13
LBB1_6:                                 //  %for.cond27.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x4, 100 ( x2 )               //  4-byte Folded Spill
	lw x1, 4 ( x11 )
	nop
LBB1_7:                                 //  %for.cond27
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	bgt x1, x0, LBB1_10
LBB1_8:                                 //  %land.lhs.true30
                                        //    in Loop: Header=BB1_7 Depth=2
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	sw x5, 92 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	call $__srefill_r
	add x11, x0, x8
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	beqz x10, LBB1_10
LBB1_9:                                 //    in Loop: Header=BB1_5 Depth=1
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_52 ( x0 )
LBB1_10:                                //  %lor.lhs.false
                                        //    in Loop: Header=BB1_7 Depth=2
	ori x28, x0, $__ctype_ptr__ & 0xfff
	lw x1, 0 ( x11 )
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x7, x28
	lw x3, 0 ( x3 )
	lbu x4, 0 ( x1 )
	nop
	add x3, x4, x3
	lbu x3, 1 ( x3 )
	nop
	andi x3, x3, 8
	bgtu x3, x0, LBB1_12
LBB1_11:                                //    in Loop: Header=BB1_5 Depth=1
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_52 ( x0 )
LBB1_12:                                //  %if.end39
                                        //    in Loop: Header=BB1_7 Depth=2
	lw x3, 4 ( x11 )
	addi x4, x1, 1
	addi x5, x5, 1
	addi x1, x3, -1
	sw x1, 4 ( x11 )
	sw x4, 0 ( x11 )
	jalr x0, LBB1_7 ( x0 )
LBB1_13:                                //  %if.end42
                                        //    in Loop: Header=BB1_5 Depth=1
	xori x1, x1, 37
	beqz x1, LBB1_15
LBB1_14:                                //    in Loop: Header=BB1_5 Depth=1
	sw x4, 100 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB1_20 ( x0 )
LBB1_15:                                //  %again.outer.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x9, 76 ( x2 )                //  4-byte Folded Spill
	sw x5, 92 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
LBB1_16:                                //  %again.outer
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_17 Depth 3
	addi x4, x4, 1
LBB1_17:                                //  %again
                                        //    Parent Loop BB1_5 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sw x4, 100 ( x2 )               //  4-byte Folded Spill
	lbu x8, -1 ( x4 )
	addi x1, x0, 120
	bgtu x8, x1, LBB1_56
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
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
LBB1_20:                                //  %literal
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 4 ( x11 )
	add x8, x0, x11
	bgt x1, x0, LBB1_22
LBB1_21:                                //  %land.lhs.true57
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	sw x5, 92 ( x2 )                //  4-byte Folded Spill
	call $__srefill_r
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB1_113
LBB1_22:                                //  %if.end61
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 0 ( x8 )
	lw x3, 100 ( x2 )               //  4-byte Folded Reload
	nop
	lbu x3, -1 ( x3 )
	lbu x4, 0 ( x1 )
	add x11, x0, x8
	bne x4, x3, LBB1_53
LBB1_23:                                //  %if.end68
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x3, 4 ( x11 )
	addi x1, x1, 1
	addi x5, x5, 1
	addi x3, x3, -1
	sw x3, 4 ( x11 )
	sw x1, 0 ( x11 )
	jalr x0, LBB1_51 ( x0 )
LBB1_24:                                //  %sw.bb79
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	nop
	lbu x1, 0 ( x4 )
	addi x3, x0, 108
	bne x1, x3, LBB1_26
LBB1_25:                                //    in Loop: Header=BB1_16 Depth=2
	addi x4, x4, 1
LBB1_26:                                //  %sw.bb79
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x7, 80 ( x2 )                //  4-byte Folded Reload
	addi x3, x0, 2
	addi x5, x0, 108
	beq x1, x5, LBB1_28
LBB1_27:                                //  %sw.bb79
                                        //    in Loop: Header=BB1_16 Depth=2
	slti x3, x0, 1
LBB1_28:                                //  %sw.bb79
                                        //    in Loop: Header=BB1_16 Depth=2
	or x7, x3, x7
	sw x7, 80 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_16 ( x0 )
LBB1_29:                                //  %again.outer.backedge.loopexit2033
                                        //    in Loop: Header=BB1_16 Depth=2
	addi x1, x0, 16
LBB1_30:                                //  %again.outer
                                        //    in Loop: Header=BB1_16 Depth=2
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	or x3, x1, x3
	sw x3, 80 ( x2 )                //  4-byte Folded Spill
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_16 ( x0 )
LBB1_31:                                //  %again.outer.backedge.loopexit2194
                                        //    in Loop: Header=BB1_16 Depth=2
	addi x1, x0, 4
	jalr x0, LBB1_30 ( x0 )
LBB1_32:                                //  %again.outer.backedge.loopexit
                                        //    in Loop: Header=BB1_16 Depth=2
	addi x1, x0, 2
	jalr x0, LBB1_30 ( x0 )
LBB1_33:                                //  %sw.bb92
                                        //    in Loop: Header=BB1_17 Depth=3
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	addi x11, x0, 10
	call $__mulsi3
	add x1, x8, x10
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	nop
	addi x4, x4, 1
	addi x1, x1, -48
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_17 ( x0 )
LBB1_34:                                //  %sw.bb93
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_strtol_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtol_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 1
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_60 ( x0 )
LBB1_35:                                //  %sw.bb97
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_strtoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtoul_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 1
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_64 ( x0 )
LBB1_36:                                //  %sw.bb101
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_strtoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtoul_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 512
LBB1_37:                                //  %sw.epilog
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 3
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 16
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_68 ( x0 )
LBB1_38:                                //  %sw.bb104
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x1, x0, 2
	jalr x0, LBB1_67 ( x0 )
LBB1_39:                                //  %sw.bb105
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x10, x2, 462
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	nop
	call $__sccl
	sw x10, 100 ( x2 )              //  4-byte Folded Spill
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 64
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	slti x1, x0, 1
	jalr x0, LBB1_67 ( x0 )
LBB1_40:                                //  %sw.bb108
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 64
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	jalr x0, LBB1_67 ( x0 )
LBB1_41:                                //  %sw.bb110
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_strtoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtoul_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 544
	jalr x0, LBB1_37 ( x0 )
LBB1_42:                                //  %sw.bb112
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 16
	beqz x1, LBB1_45
LBB1_43:                                //    in Loop: Header=BB1_5 Depth=1
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
LBB1_44:                                //  %for.cond.backedge
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_52 ( x0 )
LBB1_45:                                //  %if.end116
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x3, 4
	beqz x1, LBB1_47
LBB1_46:                                //  %if.then119
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 720 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 720 ( x2 )
	lw x1, 0 ( x1 )
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	nop
	sh x5, 0 ( x1 )
	jalr x0, LBB1_50 ( x0 )
LBB1_47:                                //  %if.else121
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x3, 1
	beqz x1, LBB1_54
LBB1_48:                                //  %if.then124
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 720 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 720 ( x2 )
	lw x1, 0 ( x1 )
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	nop
LBB1_49:                                //  %for.cond.backedge
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x5, 0 ( x1 )
LBB1_50:                                //  %for.cond.backedge
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
LBB1_51:                                //  %for.cond.backedge
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
LBB1_52:                                //  %for.cond.backedge
                                        //    in Loop: Header=BB1_5 Depth=1
	lbu x1, 0 ( x4 )
	nop
	sh x1, 718 ( x2 )
	bgtu x1, x0, LBB1_5
LBB1_53:                                //  %cleanup1075
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	lw x8, 724 ( x2 )               //  4-byte Folded Reload
	lw x1, 732 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 736
$cfi12:
	.cfi_adjust_cfa_offset -736
$cfi13:
	.cfi_def_cfa 2, 0
	ret
LBB1_54:                                //  %if.else126
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x3, 2
	beqz x1, LBB1_48
LBB1_55:                                //  %if.then129
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 720 ( x2 )
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	nop
	srai x3, x5, 31
	addi x4, x1, 4
	sw x4, 720 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x3, 4 ( x1 )
	jalr x0, LBB1_49 ( x0 )
LBB1_56:                                //  %sw.default
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
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
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	or x3, x3, x1
	sw x3, 80 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_58 ( x0 )
LBB1_57:                                //  %sw.epilog.loopexit
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_strtol_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
LBB1_58:                                //  %sw.epilog
                                        //    in Loop: Header=BB1_5 Depth=1
	lui x1, $_strtol_r >> 12 & 0xfffff
LBB1_59:                                //  %sw.epilog
                                        //    in Loop: Header=BB1_5 Depth=1
	or x1, x1, x28
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
LBB1_60:                                //  %sw.epilog
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x1, x0, 3
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 10
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_68 ( x0 )
LBB1_62:                                //  %sw.epilog.loopexit1859
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_strtol_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtol_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 3
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_68 ( x0 )
LBB1_63:                                //  %sw.epilog.loopexit2034
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_strtoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtoul_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
LBB1_64:                                //  %sw.epilog
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x1, x0, 3
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 8
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_68 ( x0 )
LBB1_65:                                //  %sw.epilog.loopexit2195
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_strtoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtoul_r >> 12 & 0xfffff
	jalr x0, LBB1_59 ( x0 )
LBB1_66:                                //  %sw.epilog.loopexit2356
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x1, x0, 4
LBB1_67:                                //  %sw.epilog
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
LBB1_68:                                //  %sw.epilog
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	nop
	lw x1, 4 ( x11 )
	nop
	bgt x1, x0, LBB1_70
LBB1_69:                                //  %land.lhs.true162
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	nop
	call $__srefill_r
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB1_113
LBB1_70:                                //  %if.end166
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 64
	beqz x1, LBB1_74
LBB1_71:                                //    in Loop: Header=BB1_5 Depth=1
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
LBB1_72:                                //  %if.end192
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	andi x10, x1, 7
	addi x11, x0, 4
	bgeu x11, x10, LBB1_81
LBB1_73:                                //    in Loop: Header=BB1_5 Depth=1
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_52 ( x0 )
LBB1_74:                                //  %while.cond.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $__ctype_ptr__ & 0xfff
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x1 )
	slli x28, x28, 20
	srli x28, x28, 20
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	or x3, x7, x28
	lw x3, 0 ( x3 )
	lbu x4, 0 ( x1 )
	nop
LBB1_75:                                //  %while.cond.preheader
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x3, x4, x3
	lbu x3, 1 ( x3 )
	nop
	andi x3, x3, 8
	beqz x3, LBB1_72
LBB1_76:                                //  %while.body
                                        //    in Loop: Header=BB1_75 Depth=2
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 4 ( x8 )
	nop
	addi x4, x3, -1
	slti x3, x3, 2
	sw x4, 4 ( x8 )
	bgtu x3, x0, LBB1_79
LBB1_77:                                //  %if.then183
                                        //    in Loop: Header=BB1_75 Depth=2
	addi x1, x1, 1
	sw x1, 0 ( x8 )
LBB1_78:                                //  %while.cond.backedge
                                        //    in Loop: Header=BB1_75 Depth=2
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x7, x28
	lbu x4, 0 ( x1 )
	lw x3, 0 ( x3 )
	addi x5, x5, 1
	jalr x0, LBB1_75 ( x0 )
LBB1_79:                                //  %if.else186
                                        //    in Loop: Header=BB1_75 Depth=2
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	sw x5, 92 ( x2 )                //  4-byte Folded Spill
	call $__srefill_r
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB1_113
LBB1_80:                                //  %if.else186.while.cond.backedge_crit_edge
                                        //    in Loop: Header=BB1_75 Depth=2
	lw x1, 0 ( x8 )
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	jalr x0, LBB1_78 ( x0 )
LBB1_81:                                //  %if.end192
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x5, 92 ( x2 )                //  4-byte Folded Spill
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
LBB1_82:                                //  %sw.bb193
                                        //    in Loop: Header=BB1_5 Depth=1
	slti x1, x0, 1
	add x13, x0, x1
	add x1, x0, x0
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	nop
	beq x3, x1, LBB1_84
LBB1_83:                                //  %sw.bb193
                                        //    in Loop: Header=BB1_5 Depth=1
	add x13, x0, x3
LBB1_84:                                //  %sw.bb193
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 1
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_108
LBB1_85:                                //  %if.then200
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x13, 96 ( x2 )               //  4-byte Folded Spill
	addi x10, x2, 104
	add x8, x0, x0
	add x11, x0, x8
	addi x12, x0, 8
	add x8, x0, x3
	call $memset
	andi x1, x8, 16
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB1_90
LBB1_86:                                //    in Loop: Header=BB1_5 Depth=1
	add x8, x0, x0
LBB1_87:                                //  %while.body212
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	call $__locale_mb_cur_max
	beq x8, x10, LBB1_113
LBB1_88:                                //  %if.end217
                                        //    in Loop: Header=BB1_87 Depth=2
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x5 )
	addi x12, x2, 112
	add x3, x8, x12
	addi x8, x8, 1
	lb x4, 0 ( x1 )
	addi x1, x1, 1
	sb x4, 0 ( x3 )
	lw x3, 4 ( x5 )
	nop
	addi x3, x3, -1
	sw x3, 4 ( x5 )
	sw x1, 0 ( x5 )
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x0
	add x13, x0, x8
	addi x14, x2, 104
	call $_mbrtowc_r
	xori x1, x10, -2
	bgtu x1, x0, LBB1_101
LBB1_89:                                //    in Loop: Header=BB1_87 Depth=2
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_103 ( x0 )
LBB1_90:                                //  %while.body212.us.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 720 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 720 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x0
LBB1_91:                                //  %while.body212.us
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	call $__locale_mb_cur_max
	beq x8, x10, LBB1_113
LBB1_92:                                //  %if.end217.us
                                        //    in Loop: Header=BB1_91 Depth=2
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x5 )
	addi x12, x2, 112
	add x3, x8, x12
	addi x8, x8, 1
	lb x4, 0 ( x1 )
	addi x1, x1, 1
	sb x4, 0 ( x3 )
	lw x3, 4 ( x5 )
	nop
	addi x3, x3, -1
	sw x3, 4 ( x5 )
	sw x1, 0 ( x5 )
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	addi x14, x2, 104
	call $_mbrtowc_r
	xori x1, x10, -2
	bgtu x1, x0, LBB1_94
LBB1_93:                                //    in Loop: Header=BB1_91 Depth=2
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_98 ( x0 )
LBB1_94:                                //  %if.end217.us
                                        //    in Loop: Header=BB1_91 Depth=2
	beqz x10, LBB1_96
LBB1_95:                                //  %if.end217.us
                                        //    in Loop: Header=BB1_91 Depth=2
	xori x1, x10, -1
	bgtu x1, x0, LBB1_97
	jalr x0, LBB1_113 ( x0 )
LBB1_96:                                //  %if.then236.us
                                        //    in Loop: Header=BB1_91 Depth=2
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sh x0, 0 ( x1 )
LBB1_97:                                //  %if.then240.us
                                        //    in Loop: Header=BB1_91 Depth=2
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x8
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 2
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, -1
	add x8, x0, x0
LBB1_98:                                //  %if.end248.us
                                        //    in Loop: Header=BB1_91 Depth=2
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x1 )
	sw x3, 96 ( x2 )                //  4-byte Folded Spill
	bgt x1, x0, LBB1_100
LBB1_99:                                //  %land.lhs.true252.us
                                        //    in Loop: Header=BB1_91 Depth=2
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $__srefill_r
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB1_106
LBB1_100:                               //  %while.cond209.backedge.us
                                        //    in Loop: Header=BB1_91 Depth=2
	bgtu x3, x0, LBB1_91
	jalr x0, LBB1_107 ( x0 )
LBB1_101:                               //  %if.end217
                                        //    in Loop: Header=BB1_87 Depth=2
	xori x1, x10, -1
	beqz x1, LBB1_113
LBB1_102:                               //  %if.then240
                                        //    in Loop: Header=BB1_87 Depth=2
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x8
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, -1
	add x8, x0, x0
LBB1_103:                               //  %if.end248
                                        //    in Loop: Header=BB1_87 Depth=2
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x1 )
	sw x3, 96 ( x2 )                //  4-byte Folded Spill
	ble x1, x0, LBB1_105
LBB1_104:                               //  %while.cond209.backedge
                                        //    in Loop: Header=BB1_87 Depth=2
	bgtu x3, x0, LBB1_87
	jalr x0, LBB1_107 ( x0 )
LBB1_105:                               //  %land.lhs.true252
                                        //    in Loop: Header=BB1_87 Depth=2
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $__srefill_r
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB1_104
LBB1_106:                               //  %if.then255
                                        //    in Loop: Header=BB1_5 Depth=1
	bgtu x8, x0, LBB1_113
LBB1_107:                               //  %cleanup
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	srli x1, x1, 4
	xori x1, x1, 1
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x1
	sw x3, 60 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_43 ( x0 )
LBB1_108:                               //  %if.else267
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x3, 16
	beqz x1, LBB1_119
LBB1_109:                               //  %for.cond271.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	add x4, x0, x8
	add x8, x0, x0
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
LBB1_110:                               //  %for.cond271
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 4 ( x4 )
	nop
	ble x13, x1, LBB1_117
LBB1_111:                               //  %if.then275
                                        //    in Loop: Header=BB1_110 Depth=2
	lw x3, 0 ( x4 )
	sub x13, x13, x1
	sw x13, 96 ( x2 )               //  4-byte Folded Spill
	add x8, x8, x1
	add x1, x1, x3
	sw x1, 0 ( x4 )
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $__srefill_r
	lw x4, 84 ( x2 )                //  4-byte Folded Reload
	lw x13, 96 ( x2 )               //  4-byte Folded Reload
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB1_110
LBB1_112:                               //  %if.then282
                                        //    in Loop: Header=BB1_5 Depth=1
	bgtu x8, x0, LBB1_118
LBB1_113:                               //  %input_failure
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB1_115
LBB1_114:                               //  %land.lhs.true1055
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	lbu x1, 12 ( x1 )
	nop
	andi x1, x1, 64
	srli x1, x1, 6
	beqz x1, LBB1_53
LBB1_115:                               //  %cleanup1075.loopexit2357
	not x1, x0
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_53 ( x0 )
LBB1_117:                               //  %if.else288
                                        //    in Loop: Header=BB1_5 Depth=1
	sub x1, x1, x13
	sw x1, 4 ( x4 )
	lw x1, 0 ( x4 )
	nop
	add x1, x13, x1
	sw x1, 0 ( x4 )
	add x8, x8, x13
LBB1_118:                               //  %cleanup297.thread
                                        //    in Loop: Header=BB1_5 Depth=1
	add x5, x5, x8
	add x11, x0, x4
	jalr x0, LBB1_51 ( x0 )
LBB1_119:                               //  %if.else300
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 720 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 720 ( x2 )
	lw x11, 0 ( x1 )
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	slti x12, x0, 1
	add x14, x0, x8
	call $_fread_r
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB1_113
LBB1_120:                               //    in Loop: Header=BB1_5 Depth=1
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	add x5, x5, x10
	add x11, x0, x8
	jalr x0, LBB1_51 ( x0 )
LBB1_121:                               //  %sw.bb314
                                        //    in Loop: Header=BB1_5 Depth=1
	not x1, x0
	add x9, x0, x1
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	add x1, x0, x0
	lw x4, 96 ( x2 )                //  4-byte Folded Reload
	nop
	beq x4, x1, LBB1_123
LBB1_122:                               //  %sw.bb314
                                        //    in Loop: Header=BB1_5 Depth=1
	add x9, x0, x4
LBB1_123:                               //  %sw.bb314
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 16
	beqz x1, LBB1_133
LBB1_124:                               //  %while.cond322.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 0 ( x3 )
	nop
	lbu x3, 0 ( x1 )
	addi x4, x2, 462
	add x3, x3, x4
	lbu x3, 0 ( x3 )
	nop
	beqz x3, LBB1_53
LBB1_125:                               //  %while.body326.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	slti x3, x0, 1
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	sw x9, 76 ( x2 )                //  4-byte Folded Spill
LBB1_126:                               //  %while.body326
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x10, x0, x3
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 4 ( x5 )
	addi x1, x1, 1
	addi x4, x3, -1
	sw x4, 4 ( x5 )
	sw x1, 0 ( x5 )
	bne x9, x10, LBB1_128
LBB1_127:                               //    in Loop: Header=BB1_5 Depth=1
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_143 ( x0 )
LBB1_128:                               //  %if.end336
                                        //    in Loop: Header=BB1_126 Depth=2
	slti x3, x3, 2
	bgtu x3, x0, LBB1_130
LBB1_129:                               //  %while.cond322.backedge
                                        //    in Loop: Header=BB1_126 Depth=2
	lbu x4, 0 ( x1 )
	addi x3, x10, 1
	addi x5, x2, 462
	add x4, x4, x5
	lbu x4, 0 ( x4 )
	nop
	bgtu x4, x0, LBB1_126
	jalr x0, LBB1_127 ( x0 )
LBB1_130:                               //  %land.lhs.true340
                                        //    in Loop: Header=BB1_126 Depth=2
	sw x10, 96 ( x2 )               //  4-byte Folded Spill
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__srefill_r
	beqz x10, LBB1_132
LBB1_131:                               //    in Loop: Header=BB1_5 Depth=1
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_144 ( x0 )
LBB1_132:                               //  %land.lhs.true340.while.cond322.backedge_crit_edge
                                        //    in Loop: Header=BB1_126 Depth=2
	lw x1, 0 ( x8 )
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	lw x9, 76 ( x2 )                //  4-byte Folded Reload
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_129 ( x0 )
LBB1_133:                               //  %if.else354
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 0 ( x3 )
	lw x3, 720 ( x2 )
	lbu x4, 0 ( x1 )
	addi x5, x3, 4
	sw x5, 720 ( x2 )
	lw x5, 0 ( x3 )
	addi x3, x2, 462
	add x3, x4, x3
	lbu x4, 0 ( x3 )
	add x3, x0, x5
	beqz x4, LBB1_141
LBB1_134:                               //  %while.body361.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x7, x9, -1
	add x8, x0, x0
	lw x9, 84 ( x2 )                //  4-byte Folded Reload
	sw x5, 80 ( x2 )                //  4-byte Folded Spill
	sw x7, 76 ( x2 )                //  4-byte Folded Spill
LBB1_135:                               //  %while.body361
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x3, 4 ( x9 )
	addi x4, x1, 1
	add x11, x8, x5
	addi x3, x3, -1
	sw x3, 4 ( x9 )
	sw x4, 0 ( x9 )
	lb x1, 0 ( x1 )
	nop
	sb x1, 0 ( x11 )
	beq x7, x8, LBB1_140
LBB1_136:                               //  %if.end371
                                        //    in Loop: Header=BB1_135 Depth=2
	lw x1, 4 ( x9 )
	nop
	ble x1, x0, LBB1_138
LBB1_137:                               //  %while.cond356.backedge
                                        //    in Loop: Header=BB1_135 Depth=2
	lw x1, 0 ( x9 )
	addi x8, x8, 1
	lbu x3, 0 ( x1 )
	addi x4, x2, 462
	add x3, x3, x4
	lbu x3, 0 ( x3 )
	nop
	bgtu x3, x0, LBB1_135
	jalr x0, LBB1_140 ( x0 )
LBB1_138:                               //  %land.lhs.true375
                                        //    in Loop: Header=BB1_135 Depth=2
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	sw x11, 96 ( x2 )               //  4-byte Folded Spill
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $__srefill_r
	lw x11, 96 ( x2 )               //  4-byte Folded Reload
	lw x9, 84 ( x2 )                //  4-byte Folded Reload
	lw x7, 76 ( x2 )                //  4-byte Folded Reload
	lw x5, 80 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB1_137
LBB1_139:                               //  %if.then378
                                        //    in Loop: Header=BB1_5 Depth=1
	xori x1, x8, -1
	beqz x1, LBB1_113
LBB1_140:                               //  %while.end384.loopexit
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x3, x11, 1
LBB1_141:                               //  %while.end384
                                        //    in Loop: Header=BB1_5 Depth=1
	sub x10, x3, x5
	beqz x10, LBB1_53
LBB1_142:                               //  %if.end388
                                        //    in Loop: Header=BB1_5 Depth=1
	sb x0, 0 ( x3 )
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
LBB1_143:                               //  %if.end390
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	nop
LBB1_144:                               //  %if.end390
                                        //    in Loop: Header=BB1_5 Depth=1
	add x5, x5, x10
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_52 ( x0 )
LBB1_145:                               //  %sw.bb392
                                        //    in Loop: Header=BB1_5 Depth=1
	not x1, x0
	add x9, x0, x1
	add x1, x0, x0
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	nop
	beq x3, x1, LBB1_147
LBB1_146:                               //  %sw.bb392
                                        //    in Loop: Header=BB1_5 Depth=1
	add x9, x0, x3
LBB1_147:                               //  %sw.bb392
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x8, 80 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x8, 1
	lw x10, 84 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB1_187
LBB1_148:                               //  %if.then399
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x9, 96 ( x2 )                //  4-byte Folded Spill
	addi x10, x2, 104
	add x11, x0, x0
	addi x12, x0, 8
	call $memset
	andi x4, x8, 16
	addi x1, x2, 718
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	bgtu x4, x0, LBB1_150
LBB1_149:                               //  %if.then405
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 720 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 720 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
LBB1_150:                               //  %while.cond409.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__ctype_ptr__ >> 12 & 0xfffff
	or x1, x1, x28
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	sw x4, 76 ( x2 )                //  4-byte Folded Spill
	beqz x5, LBB1_184
LBB1_151:                               //  %while.cond409.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 0 ( x1 )
	lw x3, 0 ( x3 )
	nop
	lbu x3, 0 ( x3 )
	nop
	add x1, x3, x1
	lbu x1, 1 ( x1 )
	nop
	andi x1, x1, 8
	bgtu x1, x0, LBB1_184
LBB1_152:                               //  %while.body419.lr.ph
                                        //    in Loop: Header=BB1_5 Depth=1
	beqz x4, LBB1_157
LBB1_153:                               //    in Loop: Header=BB1_5 Depth=1
	add x8, x0, x0
LBB1_154:                               //  %while.body419
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x5, 96 ( x2 )                //  4-byte Folded Spill
	call $__locale_mb_cur_max
	beq x8, x10, LBB1_113
LBB1_155:                               //  %if.end424
                                        //    in Loop: Header=BB1_154 Depth=2
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x5 )
	addi x12, x2, 112
	add x3, x8, x12
	addi x8, x8, 1
	lb x4, 0 ( x1 )
	addi x1, x1, 1
	sb x4, 0 ( x3 )
	lw x3, 4 ( x5 )
	nop
	addi x3, x3, -1
	sw x3, 4 ( x5 )
	sw x1, 0 ( x5 )
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	addi x14, x2, 104
	call $_mbrtowc_r
	xori x1, x10, -2
	bgtu x1, x0, LBB1_171
LBB1_156:                               //    in Loop: Header=BB1_154 Depth=2
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_179 ( x0 )
LBB1_157:                               //  %while.body419.us.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	add x8, x0, x0
LBB1_158:                               //  %while.body419.us
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	call $__locale_mb_cur_max
	beq x8, x10, LBB1_113
LBB1_159:                               //  %if.end424.us
                                        //    in Loop: Header=BB1_158 Depth=2
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x5 )
	addi x12, x2, 112
	add x3, x8, x12
	addi x8, x8, 1
	lb x4, 0 ( x1 )
	addi x1, x1, 1
	sb x4, 0 ( x3 )
	lw x3, 4 ( x5 )
	nop
	addi x3, x3, -1
	sw x3, 4 ( x5 )
	sw x1, 0 ( x5 )
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	addi x14, x2, 104
	call $_mbrtowc_r
	xori x1, x10, -2
	bgtu x1, x0, LBB1_161
LBB1_160:                               //    in Loop: Header=BB1_158 Depth=2
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	lw x4, 96 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_167 ( x0 )
LBB1_161:                               //  %if.end424.us
                                        //    in Loop: Header=BB1_158 Depth=2
	beqz x10, LBB1_164
LBB1_162:                               //  %if.end424.us
                                        //    in Loop: Header=BB1_158 Depth=2
	xori x1, x10, -1
	beqz x1, LBB1_113
LBB1_163:                               //  %if.end424.us.if.then444.us_crit_edge
                                        //    in Loop: Header=BB1_158 Depth=2
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	lh x1, 0 ( x1 )
	jalr x0, LBB1_165 ( x0 )
LBB1_164:                               //  %if.then440.us
                                        //    in Loop: Header=BB1_158 Depth=2
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sh x0, 0 ( x1 )
	add x1, x0, x0
LBB1_165:                               //  %if.then444.us
                                        //    in Loop: Header=BB1_158 Depth=2
	slli x1, x1, 16
	srai x10, x1, 16
	call $iswspace
	bgtu x10, x0, LBB1_176
LBB1_166:                               //  %if.end458.us
                                        //    in Loop: Header=BB1_158 Depth=2
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x8
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 2
	sw x3, 80 ( x2 )                //  4-byte Folded Spill
	lw x4, 96 ( x2 )                //  4-byte Folded Reload
	nop
	addi x4, x4, -1
	add x8, x0, x0
LBB1_167:                               //  %if.end467.us
                                        //    in Loop: Header=BB1_158 Depth=2
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x1 )
	lui x3, $__ctype_ptr__ >> 12 & 0xfffff
	sw x4, 96 ( x2 )                //  4-byte Folded Spill
	bgt x1, x0, LBB1_169
LBB1_168:                               //  %land.lhs.true471.us
                                        //    in Loop: Header=BB1_158 Depth=2
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $__srefill_r
	lw x4, 96 ( x2 )                //  4-byte Folded Reload
	lui x3, $__ctype_ptr__ >> 12 & 0xfffff
	bgtu x10, x0, LBB1_183
LBB1_169:                               //  %while.cond409.backedge.us
                                        //    in Loop: Header=BB1_158 Depth=2
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x3, x28
	beqz x4, LBB1_184
LBB1_170:                               //  %while.cond409.backedge.us
                                        //    in Loop: Header=BB1_158 Depth=2
	lw x1, 0 ( x1 )
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 0 ( x3 )
	nop
	lbu x3, 0 ( x3 )
	nop
	add x1, x3, x1
	lbu x1, 1 ( x1 )
	nop
	andi x1, x1, 8
	beqz x1, LBB1_158
	jalr x0, LBB1_184 ( x0 )
LBB1_171:                               //  %if.end424
                                        //    in Loop: Header=BB1_154 Depth=2
	beqz x10, LBB1_174
LBB1_172:                               //  %if.end424
                                        //    in Loop: Header=BB1_154 Depth=2
	xori x1, x10, -1
	beqz x1, LBB1_113
LBB1_173:                               //  %if.end424.if.then444_crit_edge
                                        //    in Loop: Header=BB1_154 Depth=2
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	lh x1, 0 ( x1 )
	jalr x0, LBB1_175 ( x0 )
LBB1_174:                               //  %if.then440
                                        //    in Loop: Header=BB1_154 Depth=2
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sh x0, 0 ( x1 )
	add x1, x0, x0
LBB1_175:                               //  %if.then444
                                        //    in Loop: Header=BB1_154 Depth=2
	slli x1, x1, 16
	srai x10, x1, 16
	call $iswspace
	beqz x10, LBB1_178
LBB1_176:                               //  %while.cond449.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	beqz x8, LBB1_184
LBB1_177:                               //  %while.body452
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x1, x2, 112
	add x1, x8, x1
	lbu x11, -1 ( x1 )
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x12, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $_ungetc_r
	addi x8, x8, -1
	bgtu x8, x0, LBB1_177
	jalr x0, LBB1_184 ( x0 )
LBB1_178:                               //  %if.end458
                                        //    in Loop: Header=BB1_154 Depth=2
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x4, x8
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	nop
	addi x5, x5, -1
	add x8, x0, x0
LBB1_179:                               //  %if.end467
                                        //    in Loop: Header=BB1_154 Depth=2
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x1 )
	lui x3, $__ctype_ptr__ >> 12 & 0xfffff
	sw x4, 92 ( x2 )                //  4-byte Folded Spill
	ble x1, x0, LBB1_182
LBB1_180:                               //  %while.cond409.backedge
                                        //    in Loop: Header=BB1_154 Depth=2
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x3, x28
	beqz x5, LBB1_184
LBB1_181:                               //  %while.cond409.backedge
                                        //    in Loop: Header=BB1_154 Depth=2
	lw x1, 0 ( x1 )
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 0 ( x3 )
	nop
	lbu x3, 0 ( x3 )
	nop
	add x1, x3, x1
	lbu x1, 1 ( x1 )
	nop
	andi x1, x1, 8
	beqz x1, LBB1_154
	jalr x0, LBB1_184 ( x0 )
LBB1_182:                               //  %land.lhs.true471
                                        //    in Loop: Header=BB1_154 Depth=2
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	sw x5, 96 ( x2 )                //  4-byte Folded Spill
	call $__srefill_r
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	lui x3, $__ctype_ptr__ >> 12 & 0xfffff
	beqz x10, LBB1_180
LBB1_183:                               //  %if.then474
                                        //    in Loop: Header=BB1_5 Depth=1
	bgtu x8, x0, LBB1_113
LBB1_184:                               //  %while.end480
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB1_43
LBB1_185:                               //  %if.then483
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sh x0, 0 ( x1 )
LBB1_186:                               //    in Loop: Header=BB1_5 Depth=1
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_43 ( x0 )
LBB1_187:                               //  %if.else489
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x8, 16
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	ori x28, x0, $__ctype_ptr__ & 0xfff
	beqz x1, LBB1_196
LBB1_188:                               //  %while.cond493.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 0 ( x10 )
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x7, x28
	lw x3, 0 ( x3 )
	lbu x4, 0 ( x1 )
	nop
	add x3, x4, x3
	lbu x3, 1 ( x3 )
	nop
	andi x3, x3, 8
	add x4, x0, x0
	add x10, x0, x4
	bgtu x3, x0, LBB1_195
LBB1_189:                               //  %while.body501.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	slti x3, x0, 1
	sw x9, 96 ( x2 )                //  4-byte Folded Spill
LBB1_190:                               //  %while.body501
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x10, x0, x3
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 4 ( x5 )
	addi x1, x1, 1
	addi x4, x3, -1
	sw x4, 4 ( x5 )
	sw x1, 0 ( x5 )
	beq x9, x10, LBB1_195
LBB1_191:                               //  %if.end511
                                        //    in Loop: Header=BB1_190 Depth=2
	slti x3, x3, 2
	bgtu x3, x0, LBB1_193
LBB1_192:                               //  %while.cond493.backedge
                                        //    in Loop: Header=BB1_190 Depth=2
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x7, x28
	lbu x4, 0 ( x1 )
	lw x5, 0 ( x3 )
	addi x3, x10, 1
	add x4, x4, x5
	lbu x4, 1 ( x4 )
	nop
	andi x4, x4, 8
	beqz x4, LBB1_190
	jalr x0, LBB1_195 ( x0 )
LBB1_193:                               //  %land.lhs.true515
                                        //    in Loop: Header=BB1_190 Depth=2
	sw x10, 80 ( x2 )               //  4-byte Folded Spill
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__srefill_r
	beqz x10, LBB1_366
LBB1_194:                               //    in Loop: Header=BB1_5 Depth=1
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
LBB1_195:                               //  %while.end520
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	nop
	add x5, x5, x10
	jalr x0, LBB1_73 ( x0 )
LBB1_196:                               //  %if.else522
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 0 ( x10 )
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x7, x28
	lw x3, 0 ( x3 )
	lbu x4, 0 ( x1 )
	lw x5, 720 ( x2 )
	add x3, x4, x3
	lbu x3, 1 ( x3 )
	addi x4, x5, 4
	sw x4, 720 ( x2 )
	lw x4, 0 ( x5 )
	andi x3, x3, 8
	sw x4, 80 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x4
	add x11, x0, x10
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	bgtu x3, x0, LBB1_203
LBB1_197:                               //  %while.body533.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	slti x3, x0, 1
	sub x8, x3, x9
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 1
LBB1_198:                               //  %while.body533
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x12, x0, x3
	lw x3, 4 ( x11 )
	addi x4, x1, 1
	addi x3, x3, -1
	sw x3, 4 ( x11 )
	sw x4, 0 ( x11 )
	lb x1, 0 ( x1 )
	nop
	sb x1, -1 ( x12 )
	beqz x8, LBB1_203
LBB1_199:                               //  %if.end543
                                        //    in Loop: Header=BB1_198 Depth=2
	lw x1, 4 ( x11 )
	nop
	ble x1, x0, LBB1_201
LBB1_200:                               //  %while.cond524.backedge
                                        //    in Loop: Header=BB1_198 Depth=2
	ori x28, x0, $__ctype_ptr__ & 0xfff
	lw x1, 0 ( x11 )
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x7, x28
	lw x4, 0 ( x3 )
	lbu x5, 0 ( x1 )
	addi x3, x12, 1
	addi x8, x8, 1
	add x4, x5, x4
	lbu x4, 1 ( x4 )
	nop
	andi x4, x4, 8
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	beqz x4, LBB1_198
	jalr x0, LBB1_203 ( x0 )
LBB1_201:                               //  %land.lhs.true547
                                        //    in Loop: Header=BB1_198 Depth=2
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	sw x12, 96 ( x2 )               //  4-byte Folded Spill
	call $__srefill_r
	lw x12, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	beqz x10, LBB1_200
LBB1_202:                               //    in Loop: Header=BB1_5 Depth=1
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
LBB1_203:                               //  %while.end552
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x5, x1
	sb x0, 0 ( x12 )
	add x5, x12, x1
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_52 ( x0 )
LBB1_204:                               //  %sw.bb560
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x4, 96 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x4, -1
	addi x3, x0, 349
	add x5, x0, x3
	addi x3, x0, 348
	bgtu x1, x3, LBB1_206
LBB1_205:                               //  %sw.bb560
                                        //    in Loop: Header=BB1_5 Depth=1
	add x5, x0, x4
LBB1_206:                               //  %sw.bb560
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, 3456 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 3456 >> 12 & 0xfffff
	or x3, x3, x28
	lw x4, 80 ( x2 )                //  4-byte Folded Reload
	nop
	or x4, x3, x4
	sw x4, 80 ( x2 )                //  4-byte Folded Spill
	bgtu x5, x0, LBB1_208
LBB1_207:                               //    in Loop: Header=BB1_5 Depth=1
	add x1, x0, x0
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_241 ( x0 )
LBB1_208:                               //  %for.body571.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x3, x0, 348
	sw x5, 76 ( x2 )                //  4-byte Folded Spill
	bgeu x3, x1, LBB1_210
LBB1_209:                               //    in Loop: Header=BB1_5 Depth=1
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -349
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	jalr x0, LBB1_211 ( x0 )
LBB1_210:                               //  %for.body571.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	add x1, x0, x0
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
LBB1_211:                               //  %for.body571.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x3, x2, 112
	sw x3, 72 ( x2 )                //  4-byte Folded Spill
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
LBB1_212:                               //  %for.body571
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 0 ( x1 )
	nop
	lbu x8, 0 ( x3 )
	nop
	addi x10, x8, -43
	addi x1, x0, 77
	bgtu x10, x1, LBB1_241
LBB1_213:                               //  %for.body571
                                        //    in Loop: Header=BB1_212 Depth=2
	sw x3, 64 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 4
	call $__mulsi3
	ori x28, x0, JTI1_3 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI1_3 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB1_214:                               //  %sw.bb574
                                        //    in Loop: Header=BB1_212 Depth=2
	ori x28, x0, 2048 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 2048 >> 12 & 0xfffff
	or x1, x1, x28
	lw x5, 80 ( x2 )                //  4-byte Folded Reload
	nop
	and x1, x1, x5
	bgtu x1, x0, LBB1_216
LBB1_215:                               //    in Loop: Header=BB1_212 Depth=2
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_236 ( x0 )
LBB1_216:                               //  %if.end578
                                        //    in Loop: Header=BB1_212 Depth=2
	add x1, x0, x0
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	bne x3, x1, LBB1_218
LBB1_217:                               //    in Loop: Header=BB1_212 Depth=2
	ori x5, x5, 512
LBB1_218:                               //  %if.end578
                                        //    in Loop: Header=BB1_212 Depth=2
	addi x1, x0, 8
	add x3, x0, x0
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	nop
	beq x4, x3, LBB1_220
LBB1_219:                               //  %if.end578
                                        //    in Loop: Header=BB1_212 Depth=2
	add x1, x0, x4
LBB1_220:                               //  %if.end578
                                        //    in Loop: Header=BB1_212 Depth=2
	andi x3, x5, 1024
	beqz x3, LBB1_222
LBB1_221:                               //  %if.then586
                                        //    in Loop: Header=BB1_212 Depth=2
	andi x5, x5, -1409
	jalr x0, LBB1_235 ( x0 )
LBB1_222:                               //  %if.end588
                                        //    in Loop: Header=BB1_212 Depth=2
	add x3, x0, x0
	add x4, x0, x3
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	nop
	beq x7, x4, LBB1_224
LBB1_223:                               //  %if.end588
                                        //    in Loop: Header=BB1_212 Depth=2
	addi x3, x7, -1
LBB1_224:                               //  %if.end588
                                        //    in Loop: Header=BB1_212 Depth=2
	sltu x4, x0, x7
	andi x4, x4, 1
	lw x7, 76 ( x2 )                //  4-byte Folded Reload
	nop
	add x7, x4, x7
	sw x7, 76 ( x2 )                //  4-byte Folded Spill
	lw x4, 56 ( x2 )                //  4-byte Folded Reload
	nop
	addi x4, x4, 1
	sw x4, 56 ( x2 )                //  4-byte Folded Spill
	andi x5, x5, -897
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	lw x8, 96 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_237 ( x0 )
LBB1_225:                               //  %sw.bb596
                                        //    in Loop: Header=BB1_212 Depth=2
	ori x28, x0, -2945 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -2945 >> 12 & 0xfffff
	or x1, x1, x28
	lw x5, 80 ( x2 )                //  4-byte Folded Reload
	nop
	and x5, x1, x5
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 1
	ori x28, x0, $__svfscanf_r.basefix & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $__svfscanf_r.basefix >> 12 & 0xfffff
	or x3, x3, x28
	add x1, x3, x1
	lh x3, 0 ( x1 )
	jalr x0, LBB1_236 ( x0 )
LBB1_226:                               //  %sw.bb600
                                        //    in Loop: Header=BB1_212 Depth=2
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x4, 1
	ori x28, x0, $__svfscanf_r.basefix & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $__svfscanf_r.basefix >> 12 & 0xfffff
	or x3, x3, x28
	add x1, x3, x1
	lh x1, 0 ( x1 )
	addi x3, x4, -1
	sltiu x3, x3, 8
	beqz x3, LBB1_228
LBB1_227:                               //    in Loop: Header=BB1_5 Depth=1
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_241 ( x0 )
LBB1_228:                               //  %if.end606
                                        //    in Loop: Header=BB1_212 Depth=2
	ori x28, x0, -2945 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, -2945 >> 12 & 0xfffff
	or x3, x3, x28
	lw x5, 80 ( x2 )                //  4-byte Folded Reload
	nop
	and x5, x3, x5
	jalr x0, LBB1_235 ( x0 )
LBB1_229:                               //  %sw.bb608
                                        //    in Loop: Header=BB1_212 Depth=2
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	slti x1, x3, 11
	bgtu x1, x0, LBB1_241
LBB1_230:                               //  %if.end612
                                        //    in Loop: Header=BB1_212 Depth=2
	ori x28, x0, -2945 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -2945 >> 12 & 0xfffff
	or x1, x1, x28
	lw x5, 80 ( x2 )                //  4-byte Folded Reload
	nop
	and x5, x1, x5
	jalr x0, LBB1_236 ( x0 )
LBB1_231:                               //  %sw.bb614
                                        //    in Loop: Header=BB1_212 Depth=2
	lw x5, 80 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x5, 128
	beqz x1, LBB1_241
LBB1_232:                               //  %if.then617
                                        //    in Loop: Header=BB1_212 Depth=2
	andi x5, x5, -129
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_236 ( x0 )
LBB1_233:                               //  %sw.bb620
                                        //    in Loop: Header=BB1_212 Depth=2
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 1536
	xori x1, x1, 512
	bgtu x1, x0, LBB1_241
LBB1_234:                               //  %if.then624
                                        //    in Loop: Header=BB1_212 Depth=2
	andi x1, x3, -1793
	ori x5, x1, 1280
	addi x1, x0, 16
LBB1_235:                               //  %ok
                                        //    in Loop: Header=BB1_212 Depth=2
	add x3, x0, x1
LBB1_236:                               //  %ok
                                        //    in Loop: Header=BB1_212 Depth=2
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	sw x3, 68 ( x2 )                //  4-byte Folded Spill
	sb x8, 0 ( x1 )
	lw x8, 96 ( x2 )                //  4-byte Folded Reload
	nop
	addi x8, x8, 1
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
LBB1_237:                               //  %skip
                                        //    in Loop: Header=BB1_212 Depth=2
	sw x5, 80 ( x2 )                //  4-byte Folded Spill
	lw x1, 4 ( x11 )
	nop
	addi x3, x1, -1
	sw x3, 4 ( x11 )
	slti x1, x1, 2
	sw x8, 96 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB1_239
LBB1_238:                               //  %if.then635
                                        //    in Loop: Header=BB1_212 Depth=2
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 0 ( x11 )
	jalr x0, LBB1_240 ( x0 )
LBB1_239:                               //  %if.else638
                                        //    in Loop: Header=BB1_212 Depth=2
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	nop
	call $__srefill_r
	bgtu x10, x0, LBB1_241
LBB1_240:                               //  %for.inc644
                                        //    in Loop: Header=BB1_212 Depth=2
	addi x1, x2, 112
	add x1, x8, x1
	sw x1, 72 ( x2 )                //  4-byte Folded Spill
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB1_212
LBB1_241:                               //  %for.end646
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x4, 80 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x4, 256
	addi x3, x2, 112
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	nop
	add x8, x5, x3
	bgtu x1, x0, LBB1_243
LBB1_242:                               //    in Loop: Header=BB1_5 Depth=1
	lw x13, 68 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_246 ( x0 )
LBB1_243:                               //  %if.then649
                                        //    in Loop: Header=BB1_5 Depth=1
	ble x5, x0, LBB1_245
LBB1_244:                               //  %if.then653
                                        //    in Loop: Header=BB1_5 Depth=1
	lb x11, -1 ( x8 )
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x12, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $_ungetc_r
	lw x4, 80 ( x2 )                //  4-byte Folded Reload
	addi x8, x8, -1
LBB1_245:                               //  %if.end657
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x13, 68 ( x2 )               //  4-byte Folded Reload
	addi x1, x2, 112
	bne x8, x1, LBB1_368
LBB1_367:                               //  %if.end657
                                        //    in Loop: Header=BB1_5 Depth=1
	jalr x0, LBB1_53 ( x0 )
LBB1_368:                               //  %if.end657
                                        //    in Loop: Header=BB1_5 Depth=1
LBB1_246:                               //  %if.end663
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x4, 16
	beqz x1, LBB1_248
LBB1_247:                               //    in Loop: Header=BB1_5 Depth=1
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	addi x1, x2, 112
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_261 ( x0 )
LBB1_248:                               //  %if.then667
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x8, 96 ( x2 )                //  4-byte Folded Spill
	sb x0, 0 ( x8 )
	add x8, x0, x4
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 112
	add x12, x0, x0
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	andi x1, x8, 32
	beqz x1, LBB1_250
LBB1_249:                               //  %if.then672
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 720 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 720 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x10, 0 ( x1 )
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_259 ( x0 )
LBB1_250:                               //  %if.else674
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x8, 4
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_252
LBB1_251:                               //  %if.then677
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 720 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 720 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sh x10, 0 ( x1 )
	jalr x0, LBB1_259 ( x0 )
LBB1_252:                               //  %if.else680
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x8, 1
	bgtu x1, x0, LBB1_258
LBB1_253:                               //  %if.else685
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x8, 2
	beqz x1, LBB1_258
LBB1_254:                               //  %if.then688
                                        //    in Loop: Header=BB1_5 Depth=1
	ori x28, x0, $_strtoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtoul_r >> 12 & 0xfffff
	or x1, x1, x28
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	lw x8, 96 ( x2 )                //  4-byte Folded Reload
	bne x3, x1, LBB1_256
LBB1_255:                               //  %if.then691
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 112
	add x12, x0, x0
	lw x13, 68 ( x2 )               //  4-byte Folded Reload
	nop
	call $_strtoull_r
	jalr x0, LBB1_257 ( x0 )
LBB1_256:                               //  %if.else694
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 112
	add x12, x0, x0
	lw x13, 68 ( x2 )               //  4-byte Folded Reload
	nop
	call $_strtoll_r
LBB1_257:                               //  %if.end697
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	lw x1, 720 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 720 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x11, 4 ( x1 )
	sw x10, 0 ( x1 )
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	jalr x0, LBB1_260 ( x0 )
LBB1_258:                               //  %if.else699
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 720 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 720 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x10, 0 ( x1 )
LBB1_259:                               //  %if.end704
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x8, 96 ( x2 )                //  4-byte Folded Reload
LBB1_260:                               //  %if.end704
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	addi x1, x2, 112
LBB1_261:                               //  %cleanup713.thread
                                        //    in Loop: Header=BB1_5 Depth=1
	sub x1, x5, x1
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x3, x1
	add x5, x8, x1
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_52 ( x0 )
LBB1_262:                               //  %sw.bb716
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x4, 96 ( x2 )                //  4-byte Folded Reload
	nop
	addi x5, x4, -1
	addi x8, x0, 349
	addi x1, x0, 348
	sw x5, 76 ( x2 )                //  4-byte Folded Spill
	bgtu x5, x1, LBB1_264
LBB1_263:                               //  %sw.bb716
                                        //    in Loop: Header=BB1_5 Depth=1
	add x8, x0, x4
LBB1_264:                               //  %sw.bb716
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	nop
	call $_localeconv_r
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 1920
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	bgtu x8, x0, LBB1_266
LBB1_265:                               //    in Loop: Header=BB1_5 Depth=1
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x1
	add x12, x0, x1
	jalr x0, LBB1_325 ( x0 )
LBB1_266:                               //  %for.body729.preheader.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 0 ( x10 )
	nop
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 348
	lw x3, 76 ( x2 )                //  4-byte Folded Reload
	nop
	bgeu x1, x3, LBB1_268
LBB1_267:                               //    in Loop: Header=BB1_5 Depth=1
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -349
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	jalr x0, LBB1_269 ( x0 )
LBB1_268:                               //  %for.body729.preheader.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	add x1, x0, x0
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
LBB1_269:                               //  %for.body729.preheader.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	add x7, x0, x1
	add x9, x0, x1
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
LBB1_270:                               //  %for.body729.preheader
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_271 Depth 3
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
LBB1_271:                               //  %for.body729
                                        //    Parent Loop BB1_5 Depth=1
                                        //      Parent Loop BB1_270 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sw x8, 92 ( x2 )                //  4-byte Folded Spill
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x1 )
	nop
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	lbu x11, 0 ( x1 )
	nop
	addi x10, x11, -43
	addi x1, x0, 78
	bgtu x10, x1, LBB1_311
LBB1_272:                               //  %for.body729
                                        //    in Loop: Header=BB1_271 Depth=3
	sw x11, 72 ( x2 )               //  4-byte Folded Spill
	addi x11, x0, 4
	sw x7, 76 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x9
	call $__mulsi3
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	add x9, x0, x8
	lw x7, 76 ( x2 )                //  4-byte Folded Reload
	ori x28, x0, JTI1_2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI1_2 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB1_273:                               //  %sw.bb732
                                        //    in Loop: Header=BB1_271 Depth=3
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 256
	beqz x1, LBB1_277
LBB1_274:                               //  %if.then735
                                        //    in Loop: Header=BB1_271 Depth=3
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, -129
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	bgtu x3, x0, LBB1_276
LBB1_275:                               //    in Loop: Header=BB1_271 Depth=3
	add x1, x0, x0
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x9
	add x12, x0, x7
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_318 ( x0 )
LBB1_276:                               //  %if.then739
                                        //    in Loop: Header=BB1_271 Depth=3
	lw x8, 92 ( x2 )                //  4-byte Folded Reload
	nop
	addi x8, x8, 1
	addi x3, x3, -1
	sw x3, 28 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x9
	add x12, x0, x7
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_319 ( x0 )
LBB1_277:                               //  %sw.bb744
                                        //    in Loop: Header=BB1_271 Depth=3
	slli x1, x7, 24
	srai x1, x1, 24
	sub x1, x0, x1
	slli x3, x9, 24
	srai x3, x3, 24
	bne x3, x1, LBB1_304
LBB1_278:                               //  %if.then750
                                        //    in Loop: Header=BB1_271 Depth=3
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, -385
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_314 ( x0 )
LBB1_279:                               //  %sw.bb753
                                        //    in Loop: Header=BB1_271 Depth=3
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 128
	beqz x1, LBB1_304
LBB1_280:                               //  %if.then756
                                        //    in Loop: Header=BB1_271 Depth=3
	andi x3, x3, -129
	sw x3, 64 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_314 ( x0 )
LBB1_281:                               //  %sw.bb759
                                        //    in Loop: Header=BB1_271 Depth=3
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 1792
	xori x1, x1, 1792
	bgtu x1, x0, LBB1_285
LBB1_282:                               //  %sw.bb759
                                        //    in Loop: Header=BB1_271 Depth=3
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB1_285
LBB1_283:                               //  %sw.bb759
                                        //    in Loop: Header=BB1_271 Depth=3
	andi x1, x9, 255
	bgtu x1, x0, LBB1_285
LBB1_284:                               //  %if.then770
                                        //    in Loop: Header=BB1_271 Depth=3
	andi x3, x3, -1921
	sw x3, 64 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	slti x1, x0, 1
	add x13, x0, x1
	jalr x0, LBB1_315 ( x0 )
LBB1_285:                               //  %if.end772
                                        //    in Loop: Header=BB1_271 Depth=3
	andi x1, x9, 255
	xori x1, x1, 2
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB1_287
LBB1_286:                               //    in Loop: Header=BB1_271 Depth=3
	addi x1, x0, 3
	add x13, x0, x1
	add x12, x0, x7
	jalr x0, LBB1_317 ( x0 )
LBB1_287:                               //  %if.end777
                                        //    in Loop: Header=BB1_271 Depth=3
	andi x1, x7, 255
	xori x3, x1, 4
	beqz x3, LBB1_289
LBB1_288:                               //  %if.end777
                                        //    in Loop: Header=BB1_271 Depth=3
	xori x1, x1, 1
	bgtu x1, x0, LBB1_304
LBB1_289:                               //  %if.then785
                                        //    in Loop: Header=BB1_271 Depth=3
	addi x12, x7, 1
	add x13, x0, x9
	jalr x0, LBB1_317 ( x0 )
LBB1_290:                               //  %sw.bb788
                                        //    in Loop: Header=BB1_271 Depth=3
	andi x1, x9, 255
	xori x1, x1, 1
	addi x3, x0, 2
	add x13, x0, x3
	add x12, x0, x7
	jalr x0, LBB1_299 ( x0 )
LBB1_291:                               //  %sw.bb794
                                        //    in Loop: Header=BB1_271 Depth=3
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 1792
	xori x1, x1, 1792
	bgtu x1, x0, LBB1_295
LBB1_292:                               //  %sw.bb794
                                        //    in Loop: Header=BB1_271 Depth=3
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB1_295
LBB1_293:                               //  %sw.bb794
                                        //    in Loop: Header=BB1_271 Depth=3
	andi x1, x7, 255
	bgtu x1, x0, LBB1_295
LBB1_294:                               //  %if.then805
                                        //    in Loop: Header=BB1_271 Depth=3
	andi x3, x3, -1921
	sw x3, 64 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x9
	slti x8, x0, 1
	add x12, x0, x8
	jalr x0, LBB1_316 ( x0 )
LBB1_295:                               //  %if.end807
                                        //    in Loop: Header=BB1_271 Depth=3
	andi x1, x7, 255
	xori x3, x1, 5
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	beqz x3, LBB1_289
LBB1_296:                               //  %if.end807
                                        //    in Loop: Header=BB1_271 Depth=3
	xori x1, x1, 3
	beqz x1, LBB1_289
	jalr x0, LBB1_304 ( x0 )
LBB1_297:                               //  %sw.bb818
                                        //    in Loop: Header=BB1_271 Depth=3
	andi x1, x7, 255
	xori x1, x1, 2
	add x13, x0, x9
	addi x8, x0, 3
LBB1_298:                               //  %sw.bb818
                                        //    in Loop: Header=BB1_271 Depth=3
	add x12, x0, x8
LBB1_299:                               //  %sw.bb818
                                        //    in Loop: Header=BB1_271 Depth=3
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB1_304
	jalr x0, LBB1_317 ( x0 )
LBB1_300:                               //  %sw.bb824
                                        //    in Loop: Header=BB1_271 Depth=3
	andi x1, x7, 255
	xori x1, x1, 6
	add x13, x0, x9
	addi x8, x0, 7
	jalr x0, LBB1_298 ( x0 )
LBB1_301:                               //  %sw.bb830
                                        //    in Loop: Header=BB1_271 Depth=3
	andi x1, x7, 255
	xori x1, x1, 7
	add x13, x0, x9
	addi x8, x0, 8
	jalr x0, LBB1_298 ( x0 )
LBB1_302:                               //  %sw.bb836
                                        //    in Loop: Header=BB1_271 Depth=3
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x4, 1280
	xori x1, x1, 1024
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_306
LBB1_303:                               //  %lor.lhs.false840
                                        //    in Loop: Header=BB1_271 Depth=3
	andi x1, x4, 1024
	bgtu x1, x0, LBB1_305
LBB1_304:                               //    in Loop: Header=BB1_5 Depth=1
	add x13, x0, x9
	add x12, x0, x7
	jalr x0, LBB1_325 ( x0 )
LBB1_305:                               //  %lor.lhs.false840
                                        //    in Loop: Header=BB1_271 Depth=3
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB1_304
LBB1_306:                               //  %if.then845
                                        //    in Loop: Header=BB1_271 Depth=3
	andi x1, x4, 512
	add x3, x0, x0
	bne x1, x3, LBB1_308
LBB1_307:                               //    in Loop: Header=BB1_271 Depth=3
	addi x3, x2, 112
	add x3, x5, x3
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
LBB1_308:                               //  %if.then845
                                        //    in Loop: Header=BB1_271 Depth=3
	add x3, x0, x0
	bne x1, x3, LBB1_310
LBB1_309:                               //    in Loop: Header=BB1_271 Depth=3
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x3, x1
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
LBB1_310:                               //  %if.then845
                                        //    in Loop: Header=BB1_271 Depth=3
	andi x1, x4, -1921
	ori x1, x1, 384
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x9
	add x12, x0, x7
	jalr x0, LBB1_317 ( x0 )
LBB1_311:                               //  %sw.default855
                                        //    in Loop: Header=BB1_271 Depth=3
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 512
	beqz x1, LBB1_304
LBB1_312:                               //  %sw.default855
                                        //    in Loop: Header=BB1_271 Depth=3
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lb x1, 0 ( x1 )
	nop
	andi x1, x1, 255
	bne x11, x1, LBB1_304
LBB1_313:                               //  %if.then865
                                        //    in Loop: Header=BB1_271 Depth=3
	andi x3, x3, -641
	sw x3, 64 ( x2 )                //  4-byte Folded Spill
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
LBB1_314:                               //  %fok
                                        //    in Loop: Header=BB1_271 Depth=3
	add x13, x0, x9
LBB1_315:                               //  %fok
                                        //    in Loop: Header=BB1_271 Depth=3
	add x12, x0, x7
LBB1_316:                               //  %fok
                                        //    in Loop: Header=BB1_271 Depth=3
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
LBB1_317:                               //  %fok
                                        //    in Loop: Header=BB1_271 Depth=3
	addi x1, x2, 112
	add x1, x5, x1
	sb x11, 0 ( x1 )
	addi x5, x5, 1
LBB1_318:                               //  %fskip
                                        //    in Loop: Header=BB1_271 Depth=3
	lw x8, 92 ( x2 )                //  4-byte Folded Reload
LBB1_319:                               //  %fskip
                                        //    in Loop: Header=BB1_271 Depth=3
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	nop
	lw x1, 4 ( x11 )
	nop
	addi x3, x1, -1
	sw x3, 4 ( x11 )
	addi x8, x8, -1
	slti x1, x1, 2
	sw x5, 96 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB1_322
LBB1_320:                               //  %if.then877
                                        //    in Loop: Header=BB1_270 Depth=2
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 0 ( x11 )
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	add x7, x0, x12
	add x9, x0, x13
	bgtu x8, x0, LBB1_270
LBB1_321:                               //  %for.end886.loopexit2366
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_325 ( x0 )
LBB1_322:                               //  %if.else880
                                        //    in Loop: Header=BB1_271 Depth=3
	sw x13, 76 ( x2 )               //  4-byte Folded Spill
	sw x12, 92 ( x2 )               //  4-byte Folded Spill
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	nop
	call $__srefill_r
	bgtu x8, x0, LBB1_324
LBB1_323:                               //    in Loop: Header=BB1_5 Depth=1
	lw x12, 92 ( x2 )               //  4-byte Folded Reload
	lw x13, 76 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_325 ( x0 )
LBB1_324:                               //  %if.else880
                                        //    in Loop: Header=BB1_271 Depth=3
	lw x13, 76 ( x2 )               //  4-byte Folded Reload
	nop
	add x9, x0, x13
	lw x12, 92 ( x2 )               //  4-byte Folded Reload
	nop
	add x7, x0, x12
	beqz x10, LBB1_271
LBB1_325:                               //  %for.end886
                                        //    in Loop: Header=BB1_5 Depth=1
	add x1, x0, x0
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	beq x3, x1, LBB1_327
LBB1_326:                               //  %for.end886
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, -257
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
LBB1_327:                               //  %for.end886
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	slli x1, x13, 24
	srai x1, x1, 24
	addi x1, x1, -1
	slti x3, x0, 1
	bgtu x1, x3, LBB1_331
LBB1_328:                               //  %while.cond896.preheader
	bgt x5, x0, LBB1_370
LBB1_369:                               //  %while.cond896.preheader
	jalr x0, LBB1_53 ( x0 )
LBB1_370:                               //  %while.cond896.preheader
LBB1_329:                               //  %while.body900.preheader
	addi x1, x2, 112
	add x8, x5, x1
LBB1_330:                               //  %while.body900
                                        //  =>This Inner Loop Header: Depth=1
	lb x11, -1 ( x8 )
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x12, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $_ungetc_r
	addi x8, x8, -1
	addi x1, x2, 112
	bgtu x8, x1, LBB1_330
	jalr x0, LBB1_53 ( x0 )
LBB1_331:                               //  %if.end906
                                        //    in Loop: Header=BB1_5 Depth=1
	slli x1, x12, 24
	srai x1, x1, 24
	addi x3, x1, -1
	addi x4, x0, 6
	bgeu x4, x3, LBB1_333
LBB1_332:                               //    in Loop: Header=BB1_5 Depth=1
	lw x8, 80 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_336 ( x0 )
LBB1_333:                               //  %if.then911
                                        //    in Loop: Header=BB1_5 Depth=1
	slti x1, x1, 3
	bgtu x1, x0, LBB1_338
LBB1_334:                               //  %while.cond916.preheader
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x12, 255
	xori x1, x1, 3
	lw x8, 80 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_336
LBB1_335:                               //  %while.body921
                                        //    Parent Loop BB1_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x12, 92 ( x2 )               //  4-byte Folded Spill
	sw x5, 96 ( x2 )                //  4-byte Folded Spill
	addi x1, x2, 112
	add x1, x5, x1
	lb x11, -1 ( x1 )
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x12, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $_ungetc_r
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 24
	ori x28, x0, -16777216 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, -16777216 >> 12 & 0xfffff
	or x3, x3, x28
	add x1, x3, x1
	addi x8, x8, -1
	addi x5, x5, -1
	srai x12, x1, 24
	addi x1, x0, 3
	bgt x12, x1, LBB1_335
LBB1_336:                               //  %if.end939
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x8, 80 ( x2 )                //  4-byte Folded Spill
	addi x1, x2, 112
	add x8, x5, x1
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 256
	bgtu x1, x0, LBB1_341
LBB1_337:                               //    in Loop: Header=BB1_5 Depth=1
	lw x5, 80 ( x2 )                //  4-byte Folded Reload
	add x9, x0, x8
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	add x8, x0, x3
	jalr x0, LBB1_349 ( x0 )
LBB1_338:                               //  %while.cond928.preheader
	bgt x5, x0, LBB1_372
LBB1_371:                               //  %while.cond928.preheader
	jalr x0, LBB1_53 ( x0 )
LBB1_372:                               //  %while.cond928.preheader
LBB1_339:                               //  %while.body932.preheader
	addi x8, x5, -1
LBB1_340:                               //  %while.body932
                                        //  =>This Inner Loop Header: Depth=1
	addi x1, x2, 112
	add x1, x8, x1
	lb x11, 0 ( x1 )
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x12, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $_ungetc_r
	addi x1, x8, -1
	addi x3, x8, 1
	add x8, x0, x1
	slti x1, x0, 1
	bgt x3, x1, LBB1_340
	jalr x0, LBB1_53 ( x0 )
LBB1_341:                               //  %if.then942
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x3, 1024
	beqz x1, LBB1_345
LBB1_342:                               //  %while.cond946.preheader
	bgt x5, x0, LBB1_374
LBB1_373:                               //  %while.cond946.preheader
	jalr x0, LBB1_53 ( x0 )
LBB1_374:                               //  %while.cond946.preheader
LBB1_343:                               //  %while.body950.preheader
	addi x8, x5, -1
LBB1_344:                               //  %while.body950
                                        //  =>This Inner Loop Header: Depth=1
	addi x1, x2, 112
	add x1, x8, x1
	lb x11, 0 ( x1 )
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x12, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $_ungetc_r
	addi x1, x8, -1
	addi x3, x8, 1
	add x8, x0, x1
	slti x1, x0, 1
	bgt x3, x1, LBB1_344
	jalr x0, LBB1_53 ( x0 )
LBB1_345:                               //  %if.end956
                                        //    in Loop: Header=BB1_5 Depth=1
	lbu x1, -1 ( x8 )
	nop
	slli x3, x1, 24
	srai x11, x3, 24
	ori x1, x1, 32
	xori x1, x1, 101
	bgtu x1, x0, LBB1_347
LBB1_346:                               //    in Loop: Header=BB1_5 Depth=1
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	addi x1, x8, -1
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_348 ( x0 )
LBB1_347:                               //  %if.then965
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x12, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $_ungetc_r
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -2
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	addi x1, x8, -2
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	lb x11, -2 ( x8 )
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	nop
LBB1_348:                               //  %if.end970
                                        //    in Loop: Header=BB1_5 Depth=1
	add x12, x0, x8
	call $_ungetc_r
	add x11, x0, x8
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	lw x9, 96 ( x2 )                //  4-byte Folded Reload
LBB1_349:                               //  %if.end972
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x8, 16
	beqz x1, LBB1_376
LBB1_375:                               //  %if.end972
                                        //    in Loop: Header=BB1_5 Depth=1
	jalr x0, LBB1_52 ( x0 )
LBB1_376:                               //  %if.end972
                                        //    in Loop: Header=BB1_5 Depth=1
LBB1_350:                               //  %if.then976
                                        //    in Loop: Header=BB1_5 Depth=1
	sb x0, 0 ( x9 )
	andi x1, x8, 1536
	xori x1, x1, 1024
	sw x5, 92 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB1_353
LBB1_351:                               //  %if.else984
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB1_358
LBB1_352:                               //  %if.end991.thread1541
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	addi x11, x3, 1
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	addi x13, x0, 10
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	call $_strtol_r
	lw x4, 32 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x10, x1
	jalr x0, LBB1_355 ( x0 )
LBB1_353:                               //  %if.end991
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x3, x1
	beqz x1, LBB1_358
LBB1_354:                               //    in Loop: Header=BB1_5 Depth=1
	sub x1, x0, x1
	add x4, x0, x9
LBB1_355:                               //  %if.then993
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x3, x4, LBB1_357
LBB1_356:                               //  %if.then993
                                        //    in Loop: Header=BB1_5 Depth=1
	addi x3, x2, 450
	add x4, x0, x3
LBB1_357:                               //  %if.then993
                                        //    in Loop: Header=BB1_5 Depth=1
	sw x1, 8 ( x2 )
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 4 ( x2 )
	sw x4, 0 ( x2 )
	call $sprintf
LBB1_358:                               //  %if.end1006
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 112
	add x12, x0, x0
	call $_strtod_r
	add x4, x0, x11
	andi x1, x8, 1
	beqz x1, LBB1_360
LBB1_359:                               //  %if.then1011
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 720 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 720 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x4, 4 ( x1 )
	sw x10, 0 ( x1 )
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_52 ( x0 )
LBB1_360:                               //  %if.else1013
                                        //    in Loop: Header=BB1_5 Depth=1
	andi x1, x8, 2
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB1_362
LBB1_361:                               //  %if.then1016
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 720 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 720 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x4, 4 ( x1 )
	sw x10, 0 ( x1 )
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_44 ( x0 )
LBB1_362:                               //  %if.else1018
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 720 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 720 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	add x11, x0, x4
	sw x4, 80 ( x2 )                //  4-byte Folded Spill
	call $__fpclassifyd
	bgtu x10, x0, LBB1_365
LBB1_363:                               //  %if.then1023
                                        //    in Loop: Header=BB1_5 Depth=1
	add x10, x0, x0
	call $nanf
LBB1_364:                               //  %for.cond.backedge
                                        //    in Loop: Header=BB1_5 Depth=1
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 0 ( x1 )
	jalr x0, LBB1_186 ( x0 )
LBB1_365:                               //  %if.else1025
                                        //    in Loop: Header=BB1_5 Depth=1
	add x10, x0, x8
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	nop
	call $__truncdfsf2
	jalr x0, LBB1_364 ( x0 )
LBB1_366:                               //  %land.lhs.true515.while.cond493.backedge_crit_edge
                                        //    in Loop: Header=BB1_190 Depth=2
	lw x1, 0 ( x8 )
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	lw x9, 96 ( x2 )                //  4-byte Folded Reload
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_192 ( x0 )
$func_end1:
	.size	$__svfscanf_r, ($func_end1)-($__svfscanf_r)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	LBB1_115
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_19
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_29
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
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
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_34
	.long	LBB1_66
	.long	LBB1_56
	.long	LBB1_66
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_32
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_35
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_36
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_39
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_40
	.long	LBB1_57
	.long	LBB1_66
	.long	LBB1_66
	.long	LBB1_66
	.long	LBB1_31
	.long	LBB1_62
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_24
	.long	LBB1_56
	.long	LBB1_42
	.long	LBB1_63
	.long	LBB1_41
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_38
	.long	LBB1_56
	.long	LBB1_65
	.long	LBB1_56
	.long	LBB1_56
	.long	LBB1_36
JTI1_1:
	.long	LBB1_82
	.long	LBB1_121
	.long	LBB1_145
	.long	LBB1_204
	.long	LBB1_262
JTI1_2:
	.long	LBB1_279
	.long	LBB1_311
	.long	LBB1_279
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_273
	.long	LBB1_277
	.long	LBB1_277
	.long	LBB1_277
	.long	LBB1_277
	.long	LBB1_277
	.long	LBB1_277
	.long	LBB1_277
	.long	LBB1_277
	.long	LBB1_277
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_290
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_302
	.long	LBB1_297
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_291
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_281
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_300
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_301
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_290
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_302
	.long	LBB1_297
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_291
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_281
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_300
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_311
	.long	LBB1_301
JTI1_3:
	.long	LBB1_231
	.long	LBB1_241
	.long	LBB1_231
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_214
	.long	LBB1_225
	.long	LBB1_225
	.long	LBB1_225
	.long	LBB1_225
	.long	LBB1_225
	.long	LBB1_225
	.long	LBB1_225
	.long	LBB1_226
	.long	LBB1_226
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_229
	.long	LBB1_229
	.long	LBB1_229
	.long	LBB1_229
	.long	LBB1_229
	.long	LBB1_229
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_233
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_229
	.long	LBB1_229
	.long	LBB1_229
	.long	LBB1_229
	.long	LBB1_229
	.long	LBB1_229
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_241
	.long	LBB1_233

	.text
	.globl	$__svfscanf
	.type	$__svfscanf,@function
$__svfscanf:                            //  @__svfscanf
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
	j $__svfscanf_r
$func_end2:
	.size	$__svfscanf, ($func_end2)-($__svfscanf)
	.cfi_endproc

	.globl	$_vfscanf_r
	.type	$_vfscanf_r,@function
$_vfscanf_r:                            //  @_vfscanf_r
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
	j $__svfscanf_r
$func_end3:
	.size	$_vfscanf_r, ($func_end3)-($_vfscanf_r)
	.cfi_endproc

	.address_space	0	
	.address_space	0	
	.type	$__svfscanf_r.basefix,@object //  @__svfscanf_r.basefix
	.section	.rodata,"a",@progbits
	.p2align	1
$__svfscanf_r.basefix:
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
	.size	$__svfscanf_r.basefix, 34

	.address_space	0	
	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"e%ld"
	.size	$.str, 5


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
