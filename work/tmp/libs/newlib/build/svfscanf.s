	.text
	.file	"svfscanf.bc"
	.globl	$__ssvfscanf_r
	.type	$__ssvfscanf_r,@function
$__ssvfscanf_r:                         //  @__ssvfscanf_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -736
$cfi2:
	.cfi_adjust_cfa_offset 736
	sw x1, 732 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 724 ( x2 )               //  4-byte Folded Spill
	sw x10, 88 ( x2 )               //  4-byte Folded Spill
	lh x1, 12 ( x11 )
	lui x3, 8192>>12 
	sw x13, 720 ( x2 )
	and x4, x3, x1
	bgtu x4, x0, LBB0_2
LBB0_1:                                 //  %if.then
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
LBB0_2:                                 //  %for.cond.preheader
	lbu x1, 0 ( x12 )
	nop
	sh x1, 718 ( x2 )
	add x4, x0, x12
	bgtu x1, x0, LBB0_4
LBB0_3:
	add x1, x0, x0
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_53 ( x0 )
LBB0_4:                                 //  %land.lhs.true.lr.ph
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
LBB0_5:                                 //  %land.lhs.true
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_7 Depth 2
                                        //      Child Loop BB0_16 Depth 2
                                        //        Child Loop BB0_17 Depth 3
                                        //      Child Loop BB0_75 Depth 2
                                        //      Child Loop BB0_270 Depth 2
                                        //        Child Loop BB0_271 Depth 3
                                        //      Child Loop BB0_335 Depth 2
                                        //      Child Loop BB0_212 Depth 2
                                        //      Child Loop BB0_154 Depth 2
                                        //      Child Loop BB0_158 Depth 2
                                        //      Child Loop BB0_177 Depth 2
                                        //      Child Loop BB0_190 Depth 2
                                        //      Child Loop BB0_198 Depth 2
                                        //      Child Loop BB0_126 Depth 2
                                        //      Child Loop BB0_135 Depth 2
                                        //      Child Loop BB0_87 Depth 2
                                        //      Child Loop BB0_91 Depth 2
                                        //      Child Loop BB0_110 Depth 2
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
	beqz x3, LBB0_13
LBB0_6:                                 //  %for.cond18.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x4, 100 ( x2 )               //  4-byte Folded Spill
	lw x1, 4 ( x11 )
	nop
LBB0_7:                                 //  %for.cond18
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	bgt x1, x0, LBB0_10
LBB0_8:                                 //  %land.lhs.true21
                                        //    in Loop: Header=BB0_7 Depth=2
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	sw x5, 92 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	call $__ssrefill_r
	add x11, x0, x8
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	beqz x10, LBB0_10
LBB0_9:                                 //    in Loop: Header=BB0_5 Depth=1
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_52 ( x0 )
LBB0_10:                                //  %lor.lhs.false
                                        //    in Loop: Header=BB0_7 Depth=2
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
	bgtu x3, x0, LBB0_12
LBB0_11:                                //    in Loop: Header=BB0_5 Depth=1
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_52 ( x0 )
LBB0_12:                                //  %if.end30
                                        //    in Loop: Header=BB0_7 Depth=2
	lw x3, 4 ( x11 )
	addi x4, x1, 1
	addi x5, x5, 1
	addi x1, x3, -1
	sw x1, 4 ( x11 )
	sw x4, 0 ( x11 )
	jalr x0, LBB0_7 ( x0 )
LBB0_13:                                //  %if.end33
                                        //    in Loop: Header=BB0_5 Depth=1
	xori x1, x1, 37
	beqz x1, LBB0_15
LBB0_14:                                //    in Loop: Header=BB0_5 Depth=1
	sw x4, 100 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB0_20 ( x0 )
LBB0_15:                                //  %again.outer.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x9, 76 ( x2 )                //  4-byte Folded Spill
	sw x5, 92 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
LBB0_16:                                //  %again.outer
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_17 Depth 3
	addi x4, x4, 1
LBB0_17:                                //  %again
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_16 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sw x4, 100 ( x2 )               //  4-byte Folded Spill
	lbu x8, -1 ( x4 )
	addi x1, x0, 120
	bgtu x8, x1, LBB0_56
LBB0_18:                                //  %again
                                        //    in Loop: Header=BB0_17 Depth=3
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
LBB0_19:                                //  %literal.loopexit
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
LBB0_20:                                //  %literal
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 4 ( x11 )
	add x8, x0, x11
	bgt x1, x0, LBB0_22
LBB0_21:                                //  %land.lhs.true48
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	sw x5, 92 ( x2 )                //  4-byte Folded Spill
	call $__ssrefill_r
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_113
LBB0_22:                                //  %if.end52
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x8 )
	lw x3, 100 ( x2 )               //  4-byte Folded Reload
	nop
	lbu x3, -1 ( x3 )
	lbu x4, 0 ( x1 )
	add x11, x0, x8
	bne x4, x3, LBB0_53
LBB0_23:                                //  %if.end59
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 4 ( x11 )
	addi x1, x1, 1
	addi x5, x5, 1
	addi x3, x3, -1
	sw x3, 4 ( x11 )
	sw x1, 0 ( x11 )
	jalr x0, LBB0_51 ( x0 )
LBB0_24:                                //  %sw.bb70
                                        //    in Loop: Header=BB0_16 Depth=2
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	nop
	lbu x1, 0 ( x4 )
	addi x3, x0, 108
	bne x1, x3, LBB0_26
LBB0_25:                                //    in Loop: Header=BB0_16 Depth=2
	addi x4, x4, 1
LBB0_26:                                //  %sw.bb70
                                        //    in Loop: Header=BB0_16 Depth=2
	lw x7, 80 ( x2 )                //  4-byte Folded Reload
	addi x3, x0, 2
	addi x5, x0, 108
	beq x1, x5, LBB0_28
LBB0_27:                                //  %sw.bb70
                                        //    in Loop: Header=BB0_16 Depth=2
	slti x3, x0, 1
LBB0_28:                                //  %sw.bb70
                                        //    in Loop: Header=BB0_16 Depth=2
	or x7, x3, x7
	sw x7, 80 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_16 ( x0 )
LBB0_29:                                //  %again.outer.backedge.loopexit1981
                                        //    in Loop: Header=BB0_16 Depth=2
	addi x1, x0, 16
LBB0_30:                                //  %again.outer
                                        //    in Loop: Header=BB0_16 Depth=2
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	or x3, x1, x3
	sw x3, 80 ( x2 )                //  4-byte Folded Spill
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_16 ( x0 )
LBB0_31:                                //  %again.outer.backedge.loopexit2142
                                        //    in Loop: Header=BB0_16 Depth=2
	addi x1, x0, 4
	jalr x0, LBB0_30 ( x0 )
LBB0_32:                                //  %again.outer.backedge.loopexit
                                        //    in Loop: Header=BB0_16 Depth=2
	addi x1, x0, 2
	jalr x0, LBB0_30 ( x0 )
LBB0_33:                                //  %sw.bb83
                                        //    in Loop: Header=BB0_17 Depth=3
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	addi x11, x0, 10
	call $__mulsi3
	add x1, x8, x10
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	nop
	addi x4, x4, 1
	addi x1, x1, -48
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_17 ( x0 )
LBB0_34:                                //  %sw.bb84
                                        //    in Loop: Header=BB0_5 Depth=1
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
	jalr x0, LBB0_60 ( x0 )
LBB0_35:                                //  %sw.bb88
                                        //    in Loop: Header=BB0_5 Depth=1
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
	jalr x0, LBB0_64 ( x0 )
LBB0_36:                                //  %sw.bb92
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, $_strtoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtoul_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 512
LBB0_37:                                //  %sw.epilog
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 3
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 16
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_68 ( x0 )
LBB0_38:                                //  %sw.bb95
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x0, 2
	jalr x0, LBB0_67 ( x0 )
LBB0_39:                                //  %sw.bb96
                                        //    in Loop: Header=BB0_5 Depth=1
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
	jalr x0, LBB0_67 ( x0 )
LBB0_40:                                //  %sw.bb99
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 64
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	jalr x0, LBB0_67 ( x0 )
LBB0_41:                                //  %sw.bb101
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, $_strtoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtoul_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 544
	jalr x0, LBB0_37 ( x0 )
LBB0_42:                                //  %sw.bb103
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 16
	beqz x1, LBB0_45
LBB0_43:                                //    in Loop: Header=BB0_5 Depth=1
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
LBB0_44:                                //  %for.cond.backedge
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_52 ( x0 )
LBB0_45:                                //  %if.end107
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x3, 4
	beqz x1, LBB0_47
LBB0_46:                                //  %if.then110
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 720 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 720 ( x2 )
	lw x1, 0 ( x1 )
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	nop
	sh x5, 0 ( x1 )
	jalr x0, LBB0_50 ( x0 )
LBB0_47:                                //  %if.else112
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x3, 1
	beqz x1, LBB0_54
LBB0_48:                                //  %if.then115
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 720 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 720 ( x2 )
	lw x1, 0 ( x1 )
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_49:                                //  %for.cond.backedge
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x5, 0 ( x1 )
LBB0_50:                                //  %for.cond.backedge
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
LBB0_51:                                //  %for.cond.backedge
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
LBB0_52:                                //  %for.cond.backedge
                                        //    in Loop: Header=BB0_5 Depth=1
	lbu x1, 0 ( x4 )
	nop
	sh x1, 718 ( x2 )
	bgtu x1, x0, LBB0_5
LBB0_53:                                //  %cleanup1027
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	lw x8, 724 ( x2 )               //  4-byte Folded Reload
	lw x1, 732 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 736
$cfi5:
	.cfi_adjust_cfa_offset -736
$cfi6:
	.cfi_def_cfa 2, 0
	ret
LBB0_54:                                //  %if.else117
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x3, 2
	beqz x1, LBB0_48
LBB0_55:                                //  %if.then120
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 720 ( x2 )
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	nop
	srai x3, x5, 31
	addi x4, x1, 4
	sw x4, 720 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x3, 4 ( x1 )
	jalr x0, LBB0_49 ( x0 )
LBB0_56:                                //  %sw.default
                                        //    in Loop: Header=BB0_5 Depth=1
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
	jalr x0, LBB0_58 ( x0 )
LBB0_57:                                //  %sw.epilog.loopexit
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, $_strtol_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
LBB0_58:                                //  %sw.epilog
                                        //    in Loop: Header=BB0_5 Depth=1
	lui x1, $_strtol_r >> 12 & 0xfffff
LBB0_59:                                //  %sw.epilog
                                        //    in Loop: Header=BB0_5 Depth=1
	or x1, x1, x28
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
LBB0_60:                                //  %sw.epilog
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x0, 3
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 10
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_68 ( x0 )
LBB0_62:                                //  %sw.epilog.loopexit1807
                                        //    in Loop: Header=BB0_5 Depth=1
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
	jalr x0, LBB0_68 ( x0 )
LBB0_63:                                //  %sw.epilog.loopexit1982
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, $_strtoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtoul_r >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
LBB0_64:                                //  %sw.epilog
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x0, 3
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 8
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_68 ( x0 )
LBB0_65:                                //  %sw.epilog.loopexit2143
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, $_strtoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtoul_r >> 12 & 0xfffff
	jalr x0, LBB0_59 ( x0 )
LBB0_66:                                //  %sw.epilog.loopexit2304
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x1, x0, 4
LBB0_67:                                //  %sw.epilog
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
LBB0_68:                                //  %sw.epilog
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	nop
	lw x1, 4 ( x11 )
	nop
	bgt x1, x0, LBB0_70
LBB0_69:                                //  %land.lhs.true141
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ssrefill_r
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_113
LBB0_70:                                //  %if.end145
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 64
	beqz x1, LBB0_74
LBB0_71:                                //    in Loop: Header=BB0_5 Depth=1
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
LBB0_72:                                //  %if.end171
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	andi x10, x1, 7
	addi x11, x0, 4
	bgeu x11, x10, LBB0_81
LBB0_73:                                //    in Loop: Header=BB0_5 Depth=1
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_52 ( x0 )
LBB0_74:                                //  %while.cond.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
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
LBB0_75:                                //  %while.cond.preheader
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x3, x4, x3
	lbu x3, 1 ( x3 )
	nop
	andi x3, x3, 8
	beqz x3, LBB0_72
LBB0_76:                                //  %while.body
                                        //    in Loop: Header=BB0_75 Depth=2
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 4 ( x8 )
	nop
	addi x4, x3, -1
	slti x3, x3, 2
	sw x4, 4 ( x8 )
	bgtu x3, x0, LBB0_79
LBB0_77:                                //  %if.then162
                                        //    in Loop: Header=BB0_75 Depth=2
	addi x1, x1, 1
	sw x1, 0 ( x8 )
LBB0_78:                                //  %while.cond.backedge
                                        //    in Loop: Header=BB0_75 Depth=2
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x7, x28
	lbu x4, 0 ( x1 )
	lw x3, 0 ( x3 )
	addi x5, x5, 1
	jalr x0, LBB0_75 ( x0 )
LBB0_79:                                //  %if.else165
                                        //    in Loop: Header=BB0_75 Depth=2
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	sw x5, 92 ( x2 )                //  4-byte Folded Spill
	call $__ssrefill_r
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_113
LBB0_80:                                //  %if.else165.while.cond.backedge_crit_edge
                                        //    in Loop: Header=BB0_75 Depth=2
	lw x1, 0 ( x8 )
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	jalr x0, LBB0_78 ( x0 )
LBB0_81:                                //  %if.end171
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x5, 92 ( x2 )                //  4-byte Folded Spill
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
LBB0_82:                                //  %sw.bb172
                                        //    in Loop: Header=BB0_5 Depth=1
	slti x1, x0, 1
	add x13, x0, x1
	add x1, x0, x0
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	nop
	beq x3, x1, LBB0_84
LBB0_83:                                //  %sw.bb172
                                        //    in Loop: Header=BB0_5 Depth=1
	add x13, x0, x3
LBB0_84:                                //  %sw.bb172
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 1
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB0_108
LBB0_85:                                //  %if.then179
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x13, 96 ( x2 )               //  4-byte Folded Spill
	addi x10, x2, 104
	add x8, x0, x0
	add x11, x0, x8
	addi x12, x0, 8
	add x8, x0, x3
	call $memset
	andi x1, x8, 16
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB0_90
LBB0_86:                                //    in Loop: Header=BB0_5 Depth=1
	add x8, x0, x0
LBB0_87:                                //  %while.body191
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	call $__locale_mb_cur_max
	beq x8, x10, LBB0_113
LBB0_88:                                //  %if.end196
                                        //    in Loop: Header=BB0_87 Depth=2
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
	bgtu x1, x0, LBB0_101
LBB0_89:                                //    in Loop: Header=BB0_87 Depth=2
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_103 ( x0 )
LBB0_90:                                //  %while.body191.us.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 720 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 720 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x0
LBB0_91:                                //  %while.body191.us
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	call $__locale_mb_cur_max
	beq x8, x10, LBB0_113
LBB0_92:                                //  %if.end196.us
                                        //    in Loop: Header=BB0_91 Depth=2
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
	bgtu x1, x0, LBB0_94
LBB0_93:                                //    in Loop: Header=BB0_91 Depth=2
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_98 ( x0 )
LBB0_94:                                //  %if.end196.us
                                        //    in Loop: Header=BB0_91 Depth=2
	beqz x10, LBB0_96
LBB0_95:                                //  %if.end196.us
                                        //    in Loop: Header=BB0_91 Depth=2
	xori x1, x10, -1
	bgtu x1, x0, LBB0_97
	jalr x0, LBB0_113 ( x0 )
LBB0_96:                                //  %if.then215.us
                                        //    in Loop: Header=BB0_91 Depth=2
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sh x0, 0 ( x1 )
LBB0_97:                                //  %if.then219.us
                                        //    in Loop: Header=BB0_91 Depth=2
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
LBB0_98:                                //  %if.end227.us
                                        //    in Loop: Header=BB0_91 Depth=2
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x1 )
	sw x3, 96 ( x2 )                //  4-byte Folded Spill
	bgt x1, x0, LBB0_100
LBB0_99:                                //  %land.lhs.true231.us
                                        //    in Loop: Header=BB0_91 Depth=2
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ssrefill_r
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_106
LBB0_100:                               //  %while.cond188.backedge.us
                                        //    in Loop: Header=BB0_91 Depth=2
	bgtu x3, x0, LBB0_91
	jalr x0, LBB0_107 ( x0 )
LBB0_101:                               //  %if.end196
                                        //    in Loop: Header=BB0_87 Depth=2
	xori x1, x10, -1
	beqz x1, LBB0_113
LBB0_102:                               //  %if.then219
                                        //    in Loop: Header=BB0_87 Depth=2
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x8
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, -1
	add x8, x0, x0
LBB0_103:                               //  %if.end227
                                        //    in Loop: Header=BB0_87 Depth=2
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x1 )
	sw x3, 96 ( x2 )                //  4-byte Folded Spill
	ble x1, x0, LBB0_105
LBB0_104:                               //  %while.cond188.backedge
                                        //    in Loop: Header=BB0_87 Depth=2
	bgtu x3, x0, LBB0_87
	jalr x0, LBB0_107 ( x0 )
LBB0_105:                               //  %land.lhs.true231
                                        //    in Loop: Header=BB0_87 Depth=2
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ssrefill_r
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB0_104
LBB0_106:                               //  %if.then234
                                        //    in Loop: Header=BB0_5 Depth=1
	bgtu x8, x0, LBB0_113
LBB0_107:                               //  %cleanup
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	srli x1, x1, 4
	xori x1, x1, 1
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x1
	sw x3, 60 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_43 ( x0 )
LBB0_108:                               //  %if.else246
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x3, 16
	beqz x1, LBB0_119
LBB0_109:                               //  %for.cond250.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	add x4, x0, x8
	add x8, x0, x0
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
LBB0_110:                               //  %for.cond250
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 4 ( x4 )
	nop
	ble x13, x1, LBB0_117
LBB0_111:                               //  %if.then254
                                        //    in Loop: Header=BB0_110 Depth=2
	lw x3, 0 ( x4 )
	sub x13, x13, x1
	sw x13, 96 ( x2 )               //  4-byte Folded Spill
	add x8, x8, x1
	add x1, x1, x3
	sw x1, 0 ( x4 )
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ssrefill_r
	lw x4, 84 ( x2 )                //  4-byte Folded Reload
	lw x13, 96 ( x2 )               //  4-byte Folded Reload
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB0_110
LBB0_112:                               //  %if.then261
                                        //    in Loop: Header=BB0_5 Depth=1
	bgtu x8, x0, LBB0_118
LBB0_113:                               //  %input_failure
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_115
LBB0_114:                               //  %land.lhs.true1022
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	lbu x1, 12 ( x1 )
	nop
	andi x1, x1, 64
	srli x1, x1, 6
	beqz x1, LBB0_53
LBB0_115:                               //  %cleanup1027.loopexit2305
	not x1, x0
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_53 ( x0 )
LBB0_117:                               //  %if.else267
                                        //    in Loop: Header=BB0_5 Depth=1
	sub x1, x1, x13
	sw x1, 4 ( x4 )
	lw x1, 0 ( x4 )
	nop
	add x1, x13, x1
	sw x1, 0 ( x4 )
	add x8, x8, x13
LBB0_118:                               //  %cleanup276.thread
                                        //    in Loop: Header=BB0_5 Depth=1
	add x5, x5, x8
	add x11, x0, x4
	jalr x0, LBB0_51 ( x0 )
LBB0_119:                               //  %if.else279
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 720 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 720 ( x2 )
	lw x11, 0 ( x1 )
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	slti x12, x0, 1
	add x14, x0, x8
	call $_sfread_r
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB0_113
LBB0_120:                               //    in Loop: Header=BB0_5 Depth=1
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	add x5, x5, x10
	add x11, x0, x8
	jalr x0, LBB0_51 ( x0 )
LBB0_121:                               //  %sw.bb293
                                        //    in Loop: Header=BB0_5 Depth=1
	not x1, x0
	add x9, x0, x1
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	add x1, x0, x0
	lw x4, 96 ( x2 )                //  4-byte Folded Reload
	nop
	beq x4, x1, LBB0_123
LBB0_122:                               //  %sw.bb293
                                        //    in Loop: Header=BB0_5 Depth=1
	add x9, x0, x4
LBB0_123:                               //  %sw.bb293
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 16
	beqz x1, LBB0_133
LBB0_124:                               //  %while.cond301.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x3 )
	nop
	lbu x3, 0 ( x1 )
	addi x4, x2, 462
	add x3, x3, x4
	lbu x3, 0 ( x3 )
	nop
	beqz x3, LBB0_53
LBB0_125:                               //  %while.body305.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	slti x3, x0, 1
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	sw x9, 76 ( x2 )                //  4-byte Folded Spill
LBB0_126:                               //  %while.body305
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x10, x0, x3
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 4 ( x5 )
	addi x1, x1, 1
	addi x4, x3, -1
	sw x4, 4 ( x5 )
	sw x1, 0 ( x5 )
	bne x9, x10, LBB0_128
LBB0_127:                               //    in Loop: Header=BB0_5 Depth=1
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_143 ( x0 )
LBB0_128:                               //  %if.end315
                                        //    in Loop: Header=BB0_126 Depth=2
	slti x3, x3, 2
	bgtu x3, x0, LBB0_130
LBB0_129:                               //  %while.cond301.backedge
                                        //    in Loop: Header=BB0_126 Depth=2
	lbu x4, 0 ( x1 )
	addi x3, x10, 1
	addi x5, x2, 462
	add x4, x4, x5
	lbu x4, 0 ( x4 )
	nop
	bgtu x4, x0, LBB0_126
	jalr x0, LBB0_127 ( x0 )
LBB0_130:                               //  %land.lhs.true319
                                        //    in Loop: Header=BB0_126 Depth=2
	sw x10, 96 ( x2 )               //  4-byte Folded Spill
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__ssrefill_r
	beqz x10, LBB0_132
LBB0_131:                               //    in Loop: Header=BB0_5 Depth=1
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_144 ( x0 )
LBB0_132:                               //  %land.lhs.true319.while.cond301.backedge_crit_edge
                                        //    in Loop: Header=BB0_126 Depth=2
	lw x1, 0 ( x8 )
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	lw x9, 76 ( x2 )                //  4-byte Folded Reload
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_129 ( x0 )
LBB0_133:                               //  %if.else333
                                        //    in Loop: Header=BB0_5 Depth=1
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
	beqz x4, LBB0_141
LBB0_134:                               //  %while.body340.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x7, x9, -1
	add x8, x0, x0
	lw x9, 84 ( x2 )                //  4-byte Folded Reload
	sw x5, 80 ( x2 )                //  4-byte Folded Spill
	sw x7, 76 ( x2 )                //  4-byte Folded Spill
LBB0_135:                               //  %while.body340
                                        //    Parent Loop BB0_5 Depth=1
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
	beq x7, x8, LBB0_140
LBB0_136:                               //  %if.end350
                                        //    in Loop: Header=BB0_135 Depth=2
	lw x1, 4 ( x9 )
	nop
	ble x1, x0, LBB0_138
LBB0_137:                               //  %while.cond335.backedge
                                        //    in Loop: Header=BB0_135 Depth=2
	lw x1, 0 ( x9 )
	addi x8, x8, 1
	lbu x3, 0 ( x1 )
	addi x4, x2, 462
	add x3, x3, x4
	lbu x3, 0 ( x3 )
	nop
	bgtu x3, x0, LBB0_135
	jalr x0, LBB0_140 ( x0 )
LBB0_138:                               //  %land.lhs.true354
                                        //    in Loop: Header=BB0_135 Depth=2
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	sw x11, 96 ( x2 )               //  4-byte Folded Spill
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ssrefill_r
	lw x11, 96 ( x2 )               //  4-byte Folded Reload
	lw x9, 84 ( x2 )                //  4-byte Folded Reload
	lw x7, 76 ( x2 )                //  4-byte Folded Reload
	lw x5, 80 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB0_137
LBB0_139:                               //  %if.then357
                                        //    in Loop: Header=BB0_5 Depth=1
	xori x1, x8, -1
	beqz x1, LBB0_113
LBB0_140:                               //  %while.end363.loopexit
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x3, x11, 1
LBB0_141:                               //  %while.end363
                                        //    in Loop: Header=BB0_5 Depth=1
	sub x10, x3, x5
	beqz x10, LBB0_53
LBB0_142:                               //  %if.end367
                                        //    in Loop: Header=BB0_5 Depth=1
	sb x0, 0 ( x3 )
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
LBB0_143:                               //  %if.end369
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_144:                               //  %if.end369
                                        //    in Loop: Header=BB0_5 Depth=1
	add x5, x5, x10
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_52 ( x0 )
LBB0_145:                               //  %sw.bb371
                                        //    in Loop: Header=BB0_5 Depth=1
	not x1, x0
	add x9, x0, x1
	add x1, x0, x0
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	nop
	beq x3, x1, LBB0_147
LBB0_146:                               //  %sw.bb371
                                        //    in Loop: Header=BB0_5 Depth=1
	add x9, x0, x3
LBB0_147:                               //  %sw.bb371
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x8, 80 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x8, 1
	lw x10, 84 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB0_187
LBB0_148:                               //  %if.then378
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x9, 96 ( x2 )                //  4-byte Folded Spill
	addi x10, x2, 104
	add x11, x0, x0
	addi x12, x0, 8
	call $memset
	andi x4, x8, 16
	addi x1, x2, 718
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	bgtu x4, x0, LBB0_150
LBB0_149:                               //  %if.then384
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 720 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 720 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
LBB0_150:                               //  %while.cond388.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $__ctype_ptr__ >> 12 & 0xfffff
	or x1, x1, x28
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	sw x4, 76 ( x2 )                //  4-byte Folded Spill
	beqz x5, LBB0_184
LBB0_151:                               //  %while.cond388.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x1 )
	lw x3, 0 ( x3 )
	nop
	lbu x3, 0 ( x3 )
	nop
	add x1, x3, x1
	lbu x1, 1 ( x1 )
	nop
	andi x1, x1, 8
	bgtu x1, x0, LBB0_184
LBB0_152:                               //  %while.body398.lr.ph
                                        //    in Loop: Header=BB0_5 Depth=1
	beqz x4, LBB0_157
LBB0_153:                               //    in Loop: Header=BB0_5 Depth=1
	add x8, x0, x0
LBB0_154:                               //  %while.body398
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x5, 96 ( x2 )                //  4-byte Folded Spill
	call $__locale_mb_cur_max
	beq x8, x10, LBB0_113
LBB0_155:                               //  %if.end403
                                        //    in Loop: Header=BB0_154 Depth=2
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
	bgtu x1, x0, LBB0_171
LBB0_156:                               //    in Loop: Header=BB0_154 Depth=2
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_179 ( x0 )
LBB0_157:                               //  %while.body398.us.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	add x8, x0, x0
LBB0_158:                               //  %while.body398.us
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	call $__locale_mb_cur_max
	beq x8, x10, LBB0_113
LBB0_159:                               //  %if.end403.us
                                        //    in Loop: Header=BB0_158 Depth=2
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
	bgtu x1, x0, LBB0_161
LBB0_160:                               //    in Loop: Header=BB0_158 Depth=2
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	lw x4, 96 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_167 ( x0 )
LBB0_161:                               //  %if.end403.us
                                        //    in Loop: Header=BB0_158 Depth=2
	beqz x10, LBB0_164
LBB0_162:                               //  %if.end403.us
                                        //    in Loop: Header=BB0_158 Depth=2
	xori x1, x10, -1
	beqz x1, LBB0_113
LBB0_163:                               //  %if.end403.us.if.then423.us_crit_edge
                                        //    in Loop: Header=BB0_158 Depth=2
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	lh x1, 0 ( x1 )
	jalr x0, LBB0_165 ( x0 )
LBB0_164:                               //  %if.then419.us
                                        //    in Loop: Header=BB0_158 Depth=2
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sh x0, 0 ( x1 )
	add x1, x0, x0
LBB0_165:                               //  %if.then423.us
                                        //    in Loop: Header=BB0_158 Depth=2
	slli x1, x1, 16
	srai x10, x1, 16
	call $iswspace
	bgtu x10, x0, LBB0_176
LBB0_166:                               //  %if.end437.us
                                        //    in Loop: Header=BB0_158 Depth=2
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
LBB0_167:                               //  %if.end446.us
                                        //    in Loop: Header=BB0_158 Depth=2
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x1 )
	lui x3, $__ctype_ptr__ >> 12 & 0xfffff
	sw x4, 96 ( x2 )                //  4-byte Folded Spill
	bgt x1, x0, LBB0_169
LBB0_168:                               //  %land.lhs.true450.us
                                        //    in Loop: Header=BB0_158 Depth=2
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ssrefill_r
	lw x4, 96 ( x2 )                //  4-byte Folded Reload
	lui x3, $__ctype_ptr__ >> 12 & 0xfffff
	bgtu x10, x0, LBB0_183
LBB0_169:                               //  %while.cond388.backedge.us
                                        //    in Loop: Header=BB0_158 Depth=2
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x3, x28
	beqz x4, LBB0_184
LBB0_170:                               //  %while.cond388.backedge.us
                                        //    in Loop: Header=BB0_158 Depth=2
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
	beqz x1, LBB0_158
	jalr x0, LBB0_184 ( x0 )
LBB0_171:                               //  %if.end403
                                        //    in Loop: Header=BB0_154 Depth=2
	beqz x10, LBB0_174
LBB0_172:                               //  %if.end403
                                        //    in Loop: Header=BB0_154 Depth=2
	xori x1, x10, -1
	beqz x1, LBB0_113
LBB0_173:                               //  %if.end403.if.then423_crit_edge
                                        //    in Loop: Header=BB0_154 Depth=2
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	lh x1, 0 ( x1 )
	jalr x0, LBB0_175 ( x0 )
LBB0_174:                               //  %if.then419
                                        //    in Loop: Header=BB0_154 Depth=2
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sh x0, 0 ( x1 )
	add x1, x0, x0
LBB0_175:                               //  %if.then423
                                        //    in Loop: Header=BB0_154 Depth=2
	slli x1, x1, 16
	srai x10, x1, 16
	call $iswspace
	beqz x10, LBB0_178
LBB0_176:                               //  %while.cond428.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	beqz x8, LBB0_184
LBB0_177:                               //  %while.body431
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x1, x2, 112
	add x1, x8, x1
	lbu x11, -1 ( x1 )
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x12, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $_sungetc_r
	addi x8, x8, -1
	bgtu x8, x0, LBB0_177
	jalr x0, LBB0_184 ( x0 )
LBB0_178:                               //  %if.end437
                                        //    in Loop: Header=BB0_154 Depth=2
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x4, x8
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	nop
	addi x5, x5, -1
	add x8, x0, x0
LBB0_179:                               //  %if.end446
                                        //    in Loop: Header=BB0_154 Depth=2
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x1 )
	lui x3, $__ctype_ptr__ >> 12 & 0xfffff
	sw x4, 92 ( x2 )                //  4-byte Folded Spill
	ble x1, x0, LBB0_182
LBB0_180:                               //  %while.cond388.backedge
                                        //    in Loop: Header=BB0_154 Depth=2
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x3, x28
	beqz x5, LBB0_184
LBB0_181:                               //  %while.cond388.backedge
                                        //    in Loop: Header=BB0_154 Depth=2
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
	beqz x1, LBB0_154
	jalr x0, LBB0_184 ( x0 )
LBB0_182:                               //  %land.lhs.true450
                                        //    in Loop: Header=BB0_154 Depth=2
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	sw x5, 96 ( x2 )                //  4-byte Folded Spill
	call $__ssrefill_r
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	lui x3, $__ctype_ptr__ >> 12 & 0xfffff
	beqz x10, LBB0_180
LBB0_183:                               //  %if.then453
                                        //    in Loop: Header=BB0_5 Depth=1
	bgtu x8, x0, LBB0_113
LBB0_184:                               //  %while.end459
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_43
LBB0_185:                               //  %if.then462
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sh x0, 0 ( x1 )
LBB0_186:                               //    in Loop: Header=BB0_5 Depth=1
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_43 ( x0 )
LBB0_187:                               //  %if.else468
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x8, 16
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	ori x28, x0, $__ctype_ptr__ & 0xfff
	beqz x1, LBB0_196
LBB0_188:                               //  %while.cond472.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
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
	bgtu x3, x0, LBB0_195
LBB0_189:                               //  %while.body480.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	slti x3, x0, 1
	sw x9, 96 ( x2 )                //  4-byte Folded Spill
LBB0_190:                               //  %while.body480
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x10, x0, x3
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 4 ( x5 )
	addi x1, x1, 1
	addi x4, x3, -1
	sw x4, 4 ( x5 )
	sw x1, 0 ( x5 )
	beq x9, x10, LBB0_195
LBB0_191:                               //  %if.end490
                                        //    in Loop: Header=BB0_190 Depth=2
	slti x3, x3, 2
	bgtu x3, x0, LBB0_193
LBB0_192:                               //  %while.cond472.backedge
                                        //    in Loop: Header=BB0_190 Depth=2
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
	beqz x4, LBB0_190
	jalr x0, LBB0_195 ( x0 )
LBB0_193:                               //  %land.lhs.true494
                                        //    in Loop: Header=BB0_190 Depth=2
	sw x10, 80 ( x2 )               //  4-byte Folded Spill
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__ssrefill_r
	beqz x10, LBB0_366
LBB0_194:                               //    in Loop: Header=BB0_5 Depth=1
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
LBB0_195:                               //  %while.end499
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	nop
	add x5, x5, x10
	jalr x0, LBB0_73 ( x0 )
LBB0_196:                               //  %if.else501
                                        //    in Loop: Header=BB0_5 Depth=1
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
	bgtu x3, x0, LBB0_203
LBB0_197:                               //  %while.body512.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	slti x3, x0, 1
	sub x8, x3, x9
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 1
LBB0_198:                               //  %while.body512
                                        //    Parent Loop BB0_5 Depth=1
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
	beqz x8, LBB0_203
LBB0_199:                               //  %if.end522
                                        //    in Loop: Header=BB0_198 Depth=2
	lw x1, 4 ( x11 )
	nop
	ble x1, x0, LBB0_201
LBB0_200:                               //  %while.cond503.backedge
                                        //    in Loop: Header=BB0_198 Depth=2
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
	beqz x4, LBB0_198
	jalr x0, LBB0_203 ( x0 )
LBB0_201:                               //  %land.lhs.true526
                                        //    in Loop: Header=BB0_198 Depth=2
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	sw x12, 96 ( x2 )               //  4-byte Folded Spill
	call $__ssrefill_r
	lw x12, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	beqz x10, LBB0_200
LBB0_202:                               //    in Loop: Header=BB0_5 Depth=1
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
LBB0_203:                               //  %while.end531
                                        //    in Loop: Header=BB0_5 Depth=1
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
	jalr x0, LBB0_52 ( x0 )
LBB0_204:                               //  %sw.bb539
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x4, 96 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x4, -1
	addi x3, x0, 349
	add x5, x0, x3
	addi x3, x0, 348
	bgtu x1, x3, LBB0_206
LBB0_205:                               //  %sw.bb539
                                        //    in Loop: Header=BB0_5 Depth=1
	add x5, x0, x4
LBB0_206:                               //  %sw.bb539
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, 3456 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 3456 >> 12 & 0xfffff
	or x3, x3, x28
	lw x4, 80 ( x2 )                //  4-byte Folded Reload
	nop
	or x4, x3, x4
	sw x4, 80 ( x2 )                //  4-byte Folded Spill
	bgtu x5, x0, LBB0_208
LBB0_207:                               //    in Loop: Header=BB0_5 Depth=1
	add x1, x0, x0
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_241 ( x0 )
LBB0_208:                               //  %for.body550.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x3, x0, 348
	sw x5, 76 ( x2 )                //  4-byte Folded Spill
	bgeu x3, x1, LBB0_210
LBB0_209:                               //    in Loop: Header=BB0_5 Depth=1
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -349
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	jalr x0, LBB0_211 ( x0 )
LBB0_210:                               //  %for.body550.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	add x1, x0, x0
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
LBB0_211:                               //  %for.body550.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x3, x2, 112
	sw x3, 72 ( x2 )                //  4-byte Folded Spill
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
LBB0_212:                               //  %for.body550
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 0 ( x1 )
	nop
	lbu x8, 0 ( x3 )
	nop
	addi x10, x8, -43
	addi x1, x0, 77
	bgtu x10, x1, LBB0_241
LBB0_213:                               //  %for.body550
                                        //    in Loop: Header=BB0_212 Depth=2
	sw x3, 64 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 4
	call $__mulsi3
	ori x28, x0, JTI0_3 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI0_3 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB0_214:                               //  %sw.bb553
                                        //    in Loop: Header=BB0_212 Depth=2
	ori x28, x0, 2048 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 2048 >> 12 & 0xfffff
	or x1, x1, x28
	lw x5, 80 ( x2 )                //  4-byte Folded Reload
	nop
	and x1, x1, x5
	bgtu x1, x0, LBB0_216
LBB0_215:                               //    in Loop: Header=BB0_212 Depth=2
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_236 ( x0 )
LBB0_216:                               //  %if.end557
                                        //    in Loop: Header=BB0_212 Depth=2
	add x1, x0, x0
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	bne x3, x1, LBB0_218
LBB0_217:                               //    in Loop: Header=BB0_212 Depth=2
	ori x5, x5, 512
LBB0_218:                               //  %if.end557
                                        //    in Loop: Header=BB0_212 Depth=2
	addi x1, x0, 8
	add x3, x0, x0
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	nop
	beq x4, x3, LBB0_220
LBB0_219:                               //  %if.end557
                                        //    in Loop: Header=BB0_212 Depth=2
	add x1, x0, x4
LBB0_220:                               //  %if.end557
                                        //    in Loop: Header=BB0_212 Depth=2
	andi x3, x5, 1024
	beqz x3, LBB0_222
LBB0_221:                               //  %if.then565
                                        //    in Loop: Header=BB0_212 Depth=2
	andi x5, x5, -1409
	jalr x0, LBB0_235 ( x0 )
LBB0_222:                               //  %if.end567
                                        //    in Loop: Header=BB0_212 Depth=2
	add x3, x0, x0
	add x4, x0, x3
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	nop
	beq x7, x4, LBB0_224
LBB0_223:                               //  %if.end567
                                        //    in Loop: Header=BB0_212 Depth=2
	addi x3, x7, -1
LBB0_224:                               //  %if.end567
                                        //    in Loop: Header=BB0_212 Depth=2
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
	jalr x0, LBB0_237 ( x0 )
LBB0_225:                               //  %sw.bb575
                                        //    in Loop: Header=BB0_212 Depth=2
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
	ori x28, x0, $__ssvfscanf_r.basefix & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $__ssvfscanf_r.basefix >> 12 & 0xfffff
	or x3, x3, x28
	add x1, x3, x1
	lh x3, 0 ( x1 )
	jalr x0, LBB0_236 ( x0 )
LBB0_226:                               //  %sw.bb579
                                        //    in Loop: Header=BB0_212 Depth=2
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x4, 1
	ori x28, x0, $__ssvfscanf_r.basefix & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $__ssvfscanf_r.basefix >> 12 & 0xfffff
	or x3, x3, x28
	add x1, x3, x1
	lh x1, 0 ( x1 )
	addi x3, x4, -1
	sltiu x3, x3, 8
	beqz x3, LBB0_228
LBB0_227:                               //    in Loop: Header=BB0_5 Depth=1
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_241 ( x0 )
LBB0_228:                               //  %if.end585
                                        //    in Loop: Header=BB0_212 Depth=2
	ori x28, x0, -2945 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, -2945 >> 12 & 0xfffff
	or x3, x3, x28
	lw x5, 80 ( x2 )                //  4-byte Folded Reload
	nop
	and x5, x3, x5
	jalr x0, LBB0_235 ( x0 )
LBB0_229:                               //  %sw.bb587
                                        //    in Loop: Header=BB0_212 Depth=2
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	slti x1, x3, 11
	bgtu x1, x0, LBB0_241
LBB0_230:                               //  %if.end591
                                        //    in Loop: Header=BB0_212 Depth=2
	ori x28, x0, -2945 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -2945 >> 12 & 0xfffff
	or x1, x1, x28
	lw x5, 80 ( x2 )                //  4-byte Folded Reload
	nop
	and x5, x1, x5
	jalr x0, LBB0_236 ( x0 )
LBB0_231:                               //  %sw.bb593
                                        //    in Loop: Header=BB0_212 Depth=2
	lw x5, 80 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x5, 128
	beqz x1, LBB0_241
LBB0_232:                               //  %if.then596
                                        //    in Loop: Header=BB0_212 Depth=2
	andi x5, x5, -129
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_236 ( x0 )
LBB0_233:                               //  %sw.bb599
                                        //    in Loop: Header=BB0_212 Depth=2
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 1536
	xori x1, x1, 512
	bgtu x1, x0, LBB0_241
LBB0_234:                               //  %if.then603
                                        //    in Loop: Header=BB0_212 Depth=2
	andi x1, x3, -1793
	ori x5, x1, 1280
	addi x1, x0, 16
LBB0_235:                               //  %ok
                                        //    in Loop: Header=BB0_212 Depth=2
	add x3, x0, x1
LBB0_236:                               //  %ok
                                        //    in Loop: Header=BB0_212 Depth=2
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	sw x3, 68 ( x2 )                //  4-byte Folded Spill
	sb x8, 0 ( x1 )
	lw x8, 96 ( x2 )                //  4-byte Folded Reload
	nop
	addi x8, x8, 1
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
LBB0_237:                               //  %skip
                                        //    in Loop: Header=BB0_212 Depth=2
	sw x5, 80 ( x2 )                //  4-byte Folded Spill
	lw x1, 4 ( x11 )
	nop
	addi x3, x1, -1
	sw x3, 4 ( x11 )
	slti x1, x1, 2
	sw x8, 96 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB0_239
LBB0_238:                               //  %if.then614
                                        //    in Loop: Header=BB0_212 Depth=2
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 0 ( x11 )
	jalr x0, LBB0_240 ( x0 )
LBB0_239:                               //  %if.else617
                                        //    in Loop: Header=BB0_212 Depth=2
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ssrefill_r
	bgtu x10, x0, LBB0_241
LBB0_240:                               //  %for.inc623
                                        //    in Loop: Header=BB0_212 Depth=2
	addi x1, x2, 112
	add x1, x8, x1
	sw x1, 72 ( x2 )                //  4-byte Folded Spill
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB0_212
LBB0_241:                               //  %for.end625
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x4, 80 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x4, 256
	addi x3, x2, 112
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	nop
	add x8, x5, x3
	bgtu x1, x0, LBB0_243
LBB0_242:                               //    in Loop: Header=BB0_5 Depth=1
	lw x13, 68 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_246 ( x0 )
LBB0_243:                               //  %if.then628
                                        //    in Loop: Header=BB0_5 Depth=1
	ble x5, x0, LBB0_245
LBB0_244:                               //  %if.then632
                                        //    in Loop: Header=BB0_5 Depth=1
	lb x11, -1 ( x8 )
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x12, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $_sungetc_r
	lw x4, 80 ( x2 )                //  4-byte Folded Reload
	addi x8, x8, -1
LBB0_245:                               //  %if.end636
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x13, 68 ( x2 )               //  4-byte Folded Reload
	addi x1, x2, 112
	bne x8, x1, LBB0_368
LBB0_367:                               //  %if.end636
                                        //    in Loop: Header=BB0_5 Depth=1
	jalr x0, LBB0_53 ( x0 )
LBB0_368:                               //  %if.end636
                                        //    in Loop: Header=BB0_5 Depth=1
LBB0_246:                               //  %if.end642
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x4, 16
	beqz x1, LBB0_248
LBB0_247:                               //    in Loop: Header=BB0_5 Depth=1
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	addi x1, x2, 112
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_261 ( x0 )
LBB0_248:                               //  %if.then646
                                        //    in Loop: Header=BB0_5 Depth=1
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
	beqz x1, LBB0_250
LBB0_249:                               //  %if.then651
                                        //    in Loop: Header=BB0_5 Depth=1
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
	jalr x0, LBB0_259 ( x0 )
LBB0_250:                               //  %if.else653
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x8, 4
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB0_252
LBB0_251:                               //  %if.then656
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 720 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 720 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sh x10, 0 ( x1 )
	jalr x0, LBB0_259 ( x0 )
LBB0_252:                               //  %if.else659
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x8, 1
	bgtu x1, x0, LBB0_258
LBB0_253:                               //  %if.else664
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x8, 2
	beqz x1, LBB0_258
LBB0_254:                               //  %if.then667
                                        //    in Loop: Header=BB0_5 Depth=1
	ori x28, x0, $_strtoul_r & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_strtoul_r >> 12 & 0xfffff
	or x1, x1, x28
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	lw x8, 96 ( x2 )                //  4-byte Folded Reload
	bne x3, x1, LBB0_256
LBB0_255:                               //  %if.then670
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 112
	add x12, x0, x0
	lw x13, 68 ( x2 )               //  4-byte Folded Reload
	nop
	call $_strtoull_r
	jalr x0, LBB0_257 ( x0 )
LBB0_256:                               //  %if.else673
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 112
	add x12, x0, x0
	lw x13, 68 ( x2 )               //  4-byte Folded Reload
	nop
	call $_strtoll_r
LBB0_257:                               //  %if.end676
                                        //    in Loop: Header=BB0_5 Depth=1
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
	jalr x0, LBB0_260 ( x0 )
LBB0_258:                               //  %if.else678
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 720 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 720 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x10, 0 ( x1 )
LBB0_259:                               //  %if.end683
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x8, 96 ( x2 )                //  4-byte Folded Reload
LBB0_260:                               //  %if.end683
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	addi x1, x2, 112
LBB0_261:                               //  %cleanup692.thread
                                        //    in Loop: Header=BB0_5 Depth=1
	sub x1, x5, x1
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x3, x1
	add x5, x8, x1
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_52 ( x0 )
LBB0_262:                               //  %sw.bb695
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x4, 96 ( x2 )                //  4-byte Folded Reload
	nop
	addi x5, x4, -1
	addi x8, x0, 349
	addi x1, x0, 348
	sw x5, 76 ( x2 )                //  4-byte Folded Spill
	bgtu x5, x1, LBB0_264
LBB0_263:                               //  %sw.bb695
                                        //    in Loop: Header=BB0_5 Depth=1
	add x8, x0, x4
LBB0_264:                               //  %sw.bb695
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	nop
	call $_localeconv_r
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 1920
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	bgtu x8, x0, LBB0_266
LBB0_265:                               //    in Loop: Header=BB0_5 Depth=1
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
	jalr x0, LBB0_325 ( x0 )
LBB0_266:                               //  %for.body708.preheader.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 0 ( x10 )
	nop
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 348
	lw x3, 76 ( x2 )                //  4-byte Folded Reload
	nop
	bgeu x1, x3, LBB0_268
LBB0_267:                               //    in Loop: Header=BB0_5 Depth=1
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -349
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	jalr x0, LBB0_269 ( x0 )
LBB0_268:                               //  %for.body708.preheader.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	add x1, x0, x0
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
LBB0_269:                               //  %for.body708.preheader.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	add x7, x0, x1
	add x9, x0, x1
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_270:                               //  %for.body708.preheader
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_271 Depth 3
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
LBB0_271:                               //  %for.body708
                                        //    Parent Loop BB0_5 Depth=1
                                        //      Parent Loop BB0_270 Depth=2
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
	bgtu x10, x1, LBB0_311
LBB0_272:                               //  %for.body708
                                        //    in Loop: Header=BB0_271 Depth=3
	sw x11, 72 ( x2 )               //  4-byte Folded Spill
	addi x11, x0, 4
	sw x7, 76 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x9
	call $__mulsi3
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	add x9, x0, x8
	lw x7, 76 ( x2 )                //  4-byte Folded Reload
	ori x28, x0, JTI0_2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI0_2 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB0_273:                               //  %sw.bb711
                                        //    in Loop: Header=BB0_271 Depth=3
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 256
	beqz x1, LBB0_277
LBB0_274:                               //  %if.then714
                                        //    in Loop: Header=BB0_271 Depth=3
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, -129
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	bgtu x3, x0, LBB0_276
LBB0_275:                               //    in Loop: Header=BB0_271 Depth=3
	add x1, x0, x0
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x9
	add x12, x0, x7
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_318 ( x0 )
LBB0_276:                               //  %if.then718
                                        //    in Loop: Header=BB0_271 Depth=3
	lw x8, 92 ( x2 )                //  4-byte Folded Reload
	nop
	addi x8, x8, 1
	addi x3, x3, -1
	sw x3, 28 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x9
	add x12, x0, x7
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_319 ( x0 )
LBB0_277:                               //  %sw.bb723
                                        //    in Loop: Header=BB0_271 Depth=3
	slli x1, x7, 24
	srai x1, x1, 24
	sub x1, x0, x1
	slli x3, x9, 24
	srai x3, x3, 24
	bne x3, x1, LBB0_304
LBB0_278:                               //  %if.then729
                                        //    in Loop: Header=BB0_271 Depth=3
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, -385
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_314 ( x0 )
LBB0_279:                               //  %sw.bb732
                                        //    in Loop: Header=BB0_271 Depth=3
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 128
	beqz x1, LBB0_304
LBB0_280:                               //  %if.then735
                                        //    in Loop: Header=BB0_271 Depth=3
	andi x3, x3, -129
	sw x3, 64 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_314 ( x0 )
LBB0_281:                               //  %sw.bb738
                                        //    in Loop: Header=BB0_271 Depth=3
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 1792
	xori x1, x1, 1792
	bgtu x1, x0, LBB0_285
LBB0_282:                               //  %sw.bb738
                                        //    in Loop: Header=BB0_271 Depth=3
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_285
LBB0_283:                               //  %sw.bb738
                                        //    in Loop: Header=BB0_271 Depth=3
	andi x1, x9, 255
	bgtu x1, x0, LBB0_285
LBB0_284:                               //  %if.then749
                                        //    in Loop: Header=BB0_271 Depth=3
	andi x3, x3, -1921
	sw x3, 64 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	slti x1, x0, 1
	add x13, x0, x1
	jalr x0, LBB0_315 ( x0 )
LBB0_285:                               //  %if.end751
                                        //    in Loop: Header=BB0_271 Depth=3
	andi x1, x9, 255
	xori x1, x1, 2
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB0_287
LBB0_286:                               //    in Loop: Header=BB0_271 Depth=3
	addi x1, x0, 3
	add x13, x0, x1
	add x12, x0, x7
	jalr x0, LBB0_317 ( x0 )
LBB0_287:                               //  %if.end756
                                        //    in Loop: Header=BB0_271 Depth=3
	andi x1, x7, 255
	xori x3, x1, 4
	beqz x3, LBB0_289
LBB0_288:                               //  %if.end756
                                        //    in Loop: Header=BB0_271 Depth=3
	xori x1, x1, 1
	bgtu x1, x0, LBB0_304
LBB0_289:                               //  %if.then764
                                        //    in Loop: Header=BB0_271 Depth=3
	addi x12, x7, 1
	add x13, x0, x9
	jalr x0, LBB0_317 ( x0 )
LBB0_290:                               //  %sw.bb767
                                        //    in Loop: Header=BB0_271 Depth=3
	andi x1, x9, 255
	xori x1, x1, 1
	addi x3, x0, 2
	add x13, x0, x3
	add x12, x0, x7
	jalr x0, LBB0_299 ( x0 )
LBB0_291:                               //  %sw.bb773
                                        //    in Loop: Header=BB0_271 Depth=3
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 1792
	xori x1, x1, 1792
	bgtu x1, x0, LBB0_295
LBB0_292:                               //  %sw.bb773
                                        //    in Loop: Header=BB0_271 Depth=3
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_295
LBB0_293:                               //  %sw.bb773
                                        //    in Loop: Header=BB0_271 Depth=3
	andi x1, x7, 255
	bgtu x1, x0, LBB0_295
LBB0_294:                               //  %if.then784
                                        //    in Loop: Header=BB0_271 Depth=3
	andi x3, x3, -1921
	sw x3, 64 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x9
	slti x8, x0, 1
	add x12, x0, x8
	jalr x0, LBB0_316 ( x0 )
LBB0_295:                               //  %if.end786
                                        //    in Loop: Header=BB0_271 Depth=3
	andi x1, x7, 255
	xori x3, x1, 5
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	beqz x3, LBB0_289
LBB0_296:                               //  %if.end786
                                        //    in Loop: Header=BB0_271 Depth=3
	xori x1, x1, 3
	beqz x1, LBB0_289
	jalr x0, LBB0_304 ( x0 )
LBB0_297:                               //  %sw.bb797
                                        //    in Loop: Header=BB0_271 Depth=3
	andi x1, x7, 255
	xori x1, x1, 2
	add x13, x0, x9
	addi x8, x0, 3
LBB0_298:                               //  %sw.bb797
                                        //    in Loop: Header=BB0_271 Depth=3
	add x12, x0, x8
LBB0_299:                               //  %sw.bb797
                                        //    in Loop: Header=BB0_271 Depth=3
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB0_304
	jalr x0, LBB0_317 ( x0 )
LBB0_300:                               //  %sw.bb803
                                        //    in Loop: Header=BB0_271 Depth=3
	andi x1, x7, 255
	xori x1, x1, 6
	add x13, x0, x9
	addi x8, x0, 7
	jalr x0, LBB0_298 ( x0 )
LBB0_301:                               //  %sw.bb809
                                        //    in Loop: Header=BB0_271 Depth=3
	andi x1, x7, 255
	xori x1, x1, 7
	add x13, x0, x9
	addi x8, x0, 8
	jalr x0, LBB0_298 ( x0 )
LBB0_302:                               //  %sw.bb815
                                        //    in Loop: Header=BB0_271 Depth=3
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x4, 1280
	xori x1, x1, 1024
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB0_306
LBB0_303:                               //  %lor.lhs.false819
                                        //    in Loop: Header=BB0_271 Depth=3
	andi x1, x4, 1024
	bgtu x1, x0, LBB0_305
LBB0_304:                               //    in Loop: Header=BB0_5 Depth=1
	add x13, x0, x9
	add x12, x0, x7
	jalr x0, LBB0_325 ( x0 )
LBB0_305:                               //  %lor.lhs.false819
                                        //    in Loop: Header=BB0_271 Depth=3
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_304
LBB0_306:                               //  %if.then824
                                        //    in Loop: Header=BB0_271 Depth=3
	andi x1, x4, 512
	add x3, x0, x0
	bne x1, x3, LBB0_308
LBB0_307:                               //    in Loop: Header=BB0_271 Depth=3
	addi x3, x2, 112
	add x3, x5, x3
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
LBB0_308:                               //  %if.then824
                                        //    in Loop: Header=BB0_271 Depth=3
	add x3, x0, x0
	bne x1, x3, LBB0_310
LBB0_309:                               //    in Loop: Header=BB0_271 Depth=3
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x3, x1
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
LBB0_310:                               //  %if.then824
                                        //    in Loop: Header=BB0_271 Depth=3
	andi x1, x4, -1921
	ori x1, x1, 384
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x9
	add x12, x0, x7
	jalr x0, LBB0_317 ( x0 )
LBB0_311:                               //  %sw.default834
                                        //    in Loop: Header=BB0_271 Depth=3
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 512
	beqz x1, LBB0_304
LBB0_312:                               //  %sw.default834
                                        //    in Loop: Header=BB0_271 Depth=3
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lb x1, 0 ( x1 )
	nop
	andi x1, x1, 255
	bne x11, x1, LBB0_304
LBB0_313:                               //  %if.then844
                                        //    in Loop: Header=BB0_271 Depth=3
	andi x3, x3, -641
	sw x3, 64 ( x2 )                //  4-byte Folded Spill
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
LBB0_314:                               //  %fok
                                        //    in Loop: Header=BB0_271 Depth=3
	add x13, x0, x9
LBB0_315:                               //  %fok
                                        //    in Loop: Header=BB0_271 Depth=3
	add x12, x0, x7
LBB0_316:                               //  %fok
                                        //    in Loop: Header=BB0_271 Depth=3
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
LBB0_317:                               //  %fok
                                        //    in Loop: Header=BB0_271 Depth=3
	addi x1, x2, 112
	add x1, x5, x1
	sb x11, 0 ( x1 )
	addi x5, x5, 1
LBB0_318:                               //  %fskip
                                        //    in Loop: Header=BB0_271 Depth=3
	lw x8, 92 ( x2 )                //  4-byte Folded Reload
LBB0_319:                               //  %fskip
                                        //    in Loop: Header=BB0_271 Depth=3
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	nop
	lw x1, 4 ( x11 )
	nop
	addi x3, x1, -1
	sw x3, 4 ( x11 )
	addi x8, x8, -1
	slti x1, x1, 2
	sw x5, 96 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB0_322
LBB0_320:                               //  %if.then856
                                        //    in Loop: Header=BB0_270 Depth=2
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 0 ( x11 )
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	add x7, x0, x12
	add x9, x0, x13
	bgtu x8, x0, LBB0_270
LBB0_321:                               //  %for.end865.loopexit2314
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_325 ( x0 )
LBB0_322:                               //  %if.else859
                                        //    in Loop: Header=BB0_271 Depth=3
	sw x13, 76 ( x2 )               //  4-byte Folded Spill
	sw x12, 92 ( x2 )               //  4-byte Folded Spill
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ssrefill_r
	bgtu x8, x0, LBB0_324
LBB0_323:                               //    in Loop: Header=BB0_5 Depth=1
	lw x12, 92 ( x2 )               //  4-byte Folded Reload
	lw x13, 76 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_325 ( x0 )
LBB0_324:                               //  %if.else859
                                        //    in Loop: Header=BB0_271 Depth=3
	lw x13, 76 ( x2 )               //  4-byte Folded Reload
	nop
	add x9, x0, x13
	lw x12, 92 ( x2 )               //  4-byte Folded Reload
	nop
	add x7, x0, x12
	beqz x10, LBB0_271
LBB0_325:                               //  %for.end865
                                        //    in Loop: Header=BB0_5 Depth=1
	add x1, x0, x0
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	beq x3, x1, LBB0_327
LBB0_326:                               //  %for.end865
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, -257
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
LBB0_327:                               //  %for.end865
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	slli x1, x13, 24
	srai x1, x1, 24
	addi x1, x1, -1
	slti x3, x0, 1
	bgtu x1, x3, LBB0_331
LBB0_328:                               //  %while.cond875.preheader
	bgt x5, x0, LBB0_370
LBB0_369:                               //  %while.cond875.preheader
	jalr x0, LBB0_53 ( x0 )
LBB0_370:                               //  %while.cond875.preheader
LBB0_329:                               //  %while.body879.preheader
	addi x1, x2, 112
	add x8, x5, x1
LBB0_330:                               //  %while.body879
                                        //  =>This Inner Loop Header: Depth=1
	lb x11, -1 ( x8 )
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x12, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $_sungetc_r
	addi x8, x8, -1
	addi x1, x2, 112
	bgtu x8, x1, LBB0_330
	jalr x0, LBB0_53 ( x0 )
LBB0_331:                               //  %if.end885
                                        //    in Loop: Header=BB0_5 Depth=1
	slli x1, x12, 24
	srai x1, x1, 24
	addi x3, x1, -1
	addi x4, x0, 6
	bgeu x4, x3, LBB0_333
LBB0_332:                               //    in Loop: Header=BB0_5 Depth=1
	lw x8, 80 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_336 ( x0 )
LBB0_333:                               //  %if.then890
                                        //    in Loop: Header=BB0_5 Depth=1
	slti x1, x1, 3
	bgtu x1, x0, LBB0_338
LBB0_334:                               //  %while.cond895.preheader
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x12, 255
	xori x1, x1, 3
	lw x8, 80 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB0_336
LBB0_335:                               //  %while.body900
                                        //    Parent Loop BB0_5 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x12, 92 ( x2 )               //  4-byte Folded Spill
	sw x5, 96 ( x2 )                //  4-byte Folded Spill
	addi x1, x2, 112
	add x1, x5, x1
	lb x11, -1 ( x1 )
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x12, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $_sungetc_r
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
	bgt x12, x1, LBB0_335
LBB0_336:                               //  %if.end918
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x8, 80 ( x2 )                //  4-byte Folded Spill
	addi x1, x2, 112
	add x8, x5, x1
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 256
	bgtu x1, x0, LBB0_341
LBB0_337:                               //    in Loop: Header=BB0_5 Depth=1
	lw x5, 80 ( x2 )                //  4-byte Folded Reload
	add x9, x0, x8
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	add x8, x0, x3
	jalr x0, LBB0_349 ( x0 )
LBB0_338:                               //  %while.cond907.preheader
	bgt x5, x0, LBB0_372
LBB0_371:                               //  %while.cond907.preheader
	jalr x0, LBB0_53 ( x0 )
LBB0_372:                               //  %while.cond907.preheader
LBB0_339:                               //  %while.body911.preheader
	addi x8, x5, -1
LBB0_340:                               //  %while.body911
                                        //  =>This Inner Loop Header: Depth=1
	addi x1, x2, 112
	add x1, x8, x1
	lb x11, 0 ( x1 )
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x12, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $_sungetc_r
	addi x1, x8, -1
	addi x3, x8, 1
	add x8, x0, x1
	slti x1, x0, 1
	bgt x3, x1, LBB0_340
	jalr x0, LBB0_53 ( x0 )
LBB0_341:                               //  %if.then921
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x3, 1024
	beqz x1, LBB0_345
LBB0_342:                               //  %while.cond925.preheader
	bgt x5, x0, LBB0_374
LBB0_373:                               //  %while.cond925.preheader
	jalr x0, LBB0_53 ( x0 )
LBB0_374:                               //  %while.cond925.preheader
LBB0_343:                               //  %while.body929.preheader
	addi x8, x5, -1
LBB0_344:                               //  %while.body929
                                        //  =>This Inner Loop Header: Depth=1
	addi x1, x2, 112
	add x1, x8, x1
	lb x11, 0 ( x1 )
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x12, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $_sungetc_r
	addi x1, x8, -1
	addi x3, x8, 1
	add x8, x0, x1
	slti x1, x0, 1
	bgt x3, x1, LBB0_344
	jalr x0, LBB0_53 ( x0 )
LBB0_345:                               //  %if.end935
                                        //    in Loop: Header=BB0_5 Depth=1
	lbu x1, -1 ( x8 )
	nop
	slli x3, x1, 24
	srai x11, x3, 24
	ori x1, x1, 32
	xori x1, x1, 101
	bgtu x1, x0, LBB0_347
LBB0_346:                               //    in Loop: Header=BB0_5 Depth=1
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	addi x1, x8, -1
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_348 ( x0 )
LBB0_347:                               //  %if.then944
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x12, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $_sungetc_r
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
LBB0_348:                               //  %if.end949
                                        //    in Loop: Header=BB0_5 Depth=1
	add x12, x0, x8
	call $_sungetc_r
	add x11, x0, x8
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	lw x9, 96 ( x2 )                //  4-byte Folded Reload
LBB0_349:                               //  %if.end951
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x8, 16
	beqz x1, LBB0_376
LBB0_375:                               //  %if.end951
                                        //    in Loop: Header=BB0_5 Depth=1
	jalr x0, LBB0_52 ( x0 )
LBB0_376:                               //  %if.end951
                                        //    in Loop: Header=BB0_5 Depth=1
LBB0_350:                               //  %if.then955
                                        //    in Loop: Header=BB0_5 Depth=1
	sb x0, 0 ( x9 )
	andi x1, x8, 1536
	xori x1, x1, 1024
	sw x5, 92 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB0_353
LBB0_351:                               //  %if.else963
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_358
LBB0_352:                               //  %if.end970.thread1489
                                        //    in Loop: Header=BB0_5 Depth=1
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
	jalr x0, LBB0_355 ( x0 )
LBB0_353:                               //  %if.end970
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x3, x1
	beqz x1, LBB0_358
LBB0_354:                               //    in Loop: Header=BB0_5 Depth=1
	sub x1, x0, x1
	add x4, x0, x9
LBB0_355:                               //  %if.then972
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x3, x4, LBB0_357
LBB0_356:                               //  %if.then972
                                        //    in Loop: Header=BB0_5 Depth=1
	addi x3, x2, 450
	add x4, x0, x3
LBB0_357:                               //  %if.then972
                                        //    in Loop: Header=BB0_5 Depth=1
	sw x1, 8 ( x2 )
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 4 ( x2 )
	sw x4, 0 ( x2 )
	call $sprintf
LBB0_358:                               //  %if.end985
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	addi x11, x2, 112
	add x12, x0, x0
	call $_strtod_r
	add x4, x0, x11
	andi x1, x8, 1
	beqz x1, LBB0_360
LBB0_359:                               //  %if.then990
                                        //    in Loop: Header=BB0_5 Depth=1
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
	jalr x0, LBB0_52 ( x0 )
LBB0_360:                               //  %if.else992
                                        //    in Loop: Header=BB0_5 Depth=1
	andi x1, x8, 2
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB0_362
LBB0_361:                               //  %if.then995
                                        //    in Loop: Header=BB0_5 Depth=1
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
	jalr x0, LBB0_44 ( x0 )
LBB0_362:                               //  %if.else997
                                        //    in Loop: Header=BB0_5 Depth=1
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
	bgtu x10, x0, LBB0_365
LBB0_363:                               //  %if.then1002
                                        //    in Loop: Header=BB0_5 Depth=1
	add x10, x0, x0
	call $nanf
LBB0_364:                               //  %for.cond.backedge
                                        //    in Loop: Header=BB0_5 Depth=1
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 0 ( x1 )
	jalr x0, LBB0_186 ( x0 )
LBB0_365:                               //  %if.else1004
                                        //    in Loop: Header=BB0_5 Depth=1
	add x10, x0, x8
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	nop
	call $__truncdfsf2
	jalr x0, LBB0_364 ( x0 )
LBB0_366:                               //  %land.lhs.true494.while.cond472.backedge_crit_edge
                                        //    in Loop: Header=BB0_190 Depth=2
	lw x1, 0 ( x8 )
	lui x7, $__ctype_ptr__ >> 12 & 0xfffff
	lw x9, 96 ( x2 )                //  4-byte Folded Reload
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_192 ( x0 )
$func_end0:
	.size	$__ssvfscanf_r, ($func_end0)-($__ssvfscanf_r)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	LBB0_115
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_19
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_29
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_33
	.long	LBB0_33
	.long	LBB0_33
	.long	LBB0_33
	.long	LBB0_33
	.long	LBB0_33
	.long	LBB0_33
	.long	LBB0_33
	.long	LBB0_33
	.long	LBB0_33
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_34
	.long	LBB0_66
	.long	LBB0_56
	.long	LBB0_66
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_32
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_35
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_36
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_39
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_40
	.long	LBB0_57
	.long	LBB0_66
	.long	LBB0_66
	.long	LBB0_66
	.long	LBB0_31
	.long	LBB0_62
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_24
	.long	LBB0_56
	.long	LBB0_42
	.long	LBB0_63
	.long	LBB0_41
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_38
	.long	LBB0_56
	.long	LBB0_65
	.long	LBB0_56
	.long	LBB0_56
	.long	LBB0_36
JTI0_1:
	.long	LBB0_82
	.long	LBB0_121
	.long	LBB0_145
	.long	LBB0_204
	.long	LBB0_262
JTI0_2:
	.long	LBB0_279
	.long	LBB0_311
	.long	LBB0_279
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_273
	.long	LBB0_277
	.long	LBB0_277
	.long	LBB0_277
	.long	LBB0_277
	.long	LBB0_277
	.long	LBB0_277
	.long	LBB0_277
	.long	LBB0_277
	.long	LBB0_277
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_290
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_302
	.long	LBB0_297
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_291
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_281
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_300
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_301
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_290
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_302
	.long	LBB0_297
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_291
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_281
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_300
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_311
	.long	LBB0_301
JTI0_3:
	.long	LBB0_231
	.long	LBB0_241
	.long	LBB0_231
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_214
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_226
	.long	LBB0_226
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_229
	.long	LBB0_229
	.long	LBB0_229
	.long	LBB0_229
	.long	LBB0_229
	.long	LBB0_229
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_233
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_229
	.long	LBB0_229
	.long	LBB0_229
	.long	LBB0_229
	.long	LBB0_229
	.long	LBB0_229
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_241
	.long	LBB0_233

	.address_space	0	
	.type	$__ssvfscanf_r.basefix,@object //  @__ssvfscanf_r.basefix
	.p2align	1
$__ssvfscanf_r.basefix:
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
	.size	$__ssvfscanf_r.basefix, 34

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
