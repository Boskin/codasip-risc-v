	.text
	.file	"strstr.bc"
	.globl	$strstr
	.type	$strstr,@function
$strstr:                                //  @strstr
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -1088
$cfi2:
	.cfi_adjust_cfa_offset 1088
	sw x1, 1084 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 1076 ( x2 )              //  4-byte Folded Spill
	add x12, x0, x11
	add x14, x0, x10
	lbu x1, 0 ( x12 )
	lbu x5, 0 ( x14 )
	seqz x7, x1
	slti x4, x0, 1
	bgtu x5, x0, LBB0_2
LBB0_1:
	add x3, x0, x12
	jalr x0, LBB0_5 ( x0 )
LBB0_2:                                 //  %land.rhs.preheader
	addi x9, x14, 1
	add x3, x0, x12
	add x10, x0, x1
LBB0_3:                                 //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	bgtu x7, x0, LBB0_7
LBB0_4:                                 //  %while.body
                                        //    in Loop: Header=BB0_3 Depth=1
	lbu x11, 1 ( x3 )
	andi x7, x10, 255
	andi x10, x5, 255
	lbu x5, 0 ( x9 )
	xor x7, x7, x10
	seqz x7, x7
	and x4, x4, x7
	addi x9, x9, 1
	andi x4, x4, 1
	addi x3, x3, 1
	seqz x7, x11
	add x10, x0, x11
	bgtu x5, x0, LBB0_3
LBB0_5:                                 //  %while.end
	andi x5, x7, 1
	bgtu x5, x0, LBB0_7
LBB0_6:
	add x14, x0, x0
	jalr x0, LBB0_123 ( x0 )
LBB0_7:                                 //  %if.end
	bgtu x4, x0, LBB0_123
LBB0_8:                                 //  %if.end10
	slli x1, x1, 24
	srai x11, x1, 24
	sw x12, 40 ( x2 )               //  4-byte Folded Spill
	sub x8, x3, x12
	sw x14, 36 ( x2 )               //  4-byte Folded Spill
	addi x10, x14, 1
	call $strchr
	add x11, x0, x8
	xori x1, x11, 1
	bgtu x1, x0, LBB0_10
LBB0_9:
	add x14, x0, x10
	jalr x0, LBB0_123 ( x0 )
LBB0_10:                                //  %if.end10
	bgtu x10, x0, LBB0_12
LBB0_11:
	add x14, x0, x10
	jalr x0, LBB0_123 ( x0 )
LBB0_12:                                //  %if.end16
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x11, x1
	bgeu x1, x10, LBB0_14
LBB0_13:
	slti x1, x0, 1
	jalr x0, LBB0_15 ( x0 )
LBB0_14:                                //  %if.end16
	sub x1, x1, x10
LBB0_15:                                //  %if.end16
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	addi x1, x0, 31
	sw x11, 44 ( x2 )               //  4-byte Folded Spill
	bgtu x11, x1, LBB0_77
LBB0_16:                                //  %if.then26
	addi x12, x2, 48
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	call $critical_factorization
	add x3, x0, x10
	lw x1, 48 ( x2 )
	nop
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	add x11, x1, x8
	add x10, x0, x8
	add x8, x0, x3
	add x12, x0, x8
	call $memcmp
	sw x8, 24 ( x2 )                //  4-byte Folded Spill
	bgtu x10, x0, LBB0_36
LBB0_17:                                //  %while.cond.preheader.i
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x3, x1
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sub x12, x8, x3
	add x11, x0, x0
	call $memchr
	add x14, x0, x0
	add x11, x0, x8
	beqz x11, LBB0_123
LBB0_18:                                //  %while.cond.preheader.i
	bgtu x10, x0, LBB0_123
LBB0_19:                                //  %while.body.lr.ph.i
	lw x12, 20 ( x2 )               //  4-byte Folded Reload
	nop
	sub x1, x11, x12
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x0
	lw x4, 24 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x4, -1
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	sub x1, x0, x4
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	add x1, x0, x11
	add x8, x0, x3
	add x13, x0, x3
LBB0_20:                                //  %while.body.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_24 Depth 2
                                        //      Child Loop BB0_27 Depth 2
	add x3, x0, x8
	bgtu x8, x4, LBB0_22
LBB0_21:                                //  %while.body.i
                                        //    in Loop: Header=BB0_20 Depth=1
	add x3, x0, x4
LBB0_22:                                //  %while.body.i
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x9, 40 ( x2 )                //  4-byte Folded Reload
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	bgeu x3, x11, LBB0_26
LBB0_23:                                //  %land.rhs9.i.preheader
                                        //    in Loop: Header=BB0_20 Depth=1
	add x4, x13, x10
LBB0_24:                                //  %land.rhs9.i
                                        //    Parent Loop BB0_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x5, x3, x9
	add x7, x3, x4
	lbu x7, 0 ( x7 )
	lbu x5, 0 ( x5 )
	nop
	bne x5, x7, LBB0_31
LBB0_25:                                //  %while.body16.i
                                        //    in Loop: Header=BB0_24 Depth=2
	addi x3, x3, 1
	bgtu x11, x3, LBB0_24
LBB0_26:                                //  %while.cond21.i.preheader
                                        //    in Loop: Header=BB0_20 Depth=1
	add x14, x13, x10
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_27:                                //  %while.cond21.i
                                        //    Parent Loop BB0_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x4, x3, 1
	bgeu x8, x4, LBB0_29
LBB0_28:                                //  %land.rhs25.i
                                        //    in Loop: Header=BB0_27 Depth=2
	add x5, x3, x9
	add x7, x3, x14
	addi x3, x3, -1
	lbu x7, 0 ( x7 )
	lbu x5, 0 ( x5 )
	nop
	beq x5, x7, LBB0_27
LBB0_29:                                //  %while.end35.i
                                        //    in Loop: Header=BB0_20 Depth=1
	addi x3, x8, 1
	bgtu x3, x4, LBB0_123
LBB0_30:                                //  %if.end.i
                                        //    in Loop: Header=BB0_20 Depth=1
	add x13, x12, x13
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_32 ( x0 )
LBB0_31:                                //  %if.else.i
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	add x4, x13, x4
	add x3, x3, x4
	addi x13, x3, 1
	add x8, x0, x0
LBB0_32:                                //  %while.cond.backedge.i
                                        //    in Loop: Header=BB0_20 Depth=1
	sw x13, 28 ( x2 )               //  4-byte Folded Spill
	add x3, x11, x13
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	add x10, x1, x10
	sub x12, x3, x1
	add x11, x0, x0
	call $memchr
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_34
LBB0_33:
	add x14, x0, x0
	jalr x0, LBB0_123 ( x0 )
LBB0_34:                                //  %while.cond.backedge.i
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	lw x4, 24 ( x2 )                //  4-byte Folded Reload
	lw x12, 20 ( x2 )               //  4-byte Folded Reload
	lw x13, 28 ( x2 )               //  4-byte Folded Reload
	beqz x10, LBB0_20
LBB0_35:
	add x14, x0, x0
	jalr x0, LBB0_123 ( x0 )
LBB0_36:                                //  %if.else49.i
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x4, x8
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x8, LBB0_38
LBB0_37:                                //  %if.else49.i
	add x1, x0, x8
LBB0_38:                                //  %if.else49.i
	addi x1, x1, 1
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	sw x1, 48 ( x2 )
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x1, x3
	sub x12, x4, x1
	add x11, x0, x0
	add x8, x0, x11
	call $memchr
	lw x13, 44 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x13, x0, LBB0_40
LBB0_39:
	add x14, x0, x8
	jalr x0, LBB0_123 ( x0 )
LBB0_40:                                //  %if.else49.i
	add x14, x0, x8
	bgtu x10, x0, LBB0_123
LBB0_41:                                //  %while.cond70.preheader.lr.ph.i
	lw x9, 24 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x13, x9, LBB0_48
LBB0_42:                                //  %while.cond70.preheader.i.preheader
	add x14, x0, x0
	add x1, x0, x13
	add x15, x0, x14
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_43:                                //  %while.cond70.preheader.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_44 Depth 2
	add x3, x15, x12
	add x4, x0, x9
LBB0_44:                                //  %while.cond89.i
                                        //    Parent Loop BB0_43 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	beqz x4, LBB0_122
LBB0_45:                                //  %land.rhs92.i
                                        //    in Loop: Header=BB0_44 Depth=2
	addi x5, x4, -1
	add x7, x4, x11
	add x4, x4, x3
	lbu x9, -1 ( x4 )
	lbu x7, -1 ( x7 )
	add x4, x0, x5
	beq x7, x9, LBB0_44
LBB0_46:                                //  %if.end108.i
                                        //    in Loop: Header=BB0_43 Depth=1
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x15, x3, x15
	add x10, x1, x12
	sw x15, 32 ( x2 )               //  4-byte Folded Spill
	add x8, x13, x15
	sub x12, x8, x1
	add x11, x0, x14
	call $memchr
	bgtu x8, x0, LBB0_60
LBB0_47:
	add x14, x0, x0
	jalr x0, LBB0_123 ( x0 )
LBB0_48:                                //  %while.cond70.preheader.us.i.preheader
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	nop
	add x8, x9, x10
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	nop
	add x1, x9, x12
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	add x14, x0, x0
	add x1, x0, x13
	add x15, x0, x14
LBB0_49:                                //  %while.cond70.preheader.us.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_50 Depth 2
                                        //      Child Loop BB0_52 Depth 2
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x15, x3
	add x3, x0, x14
LBB0_50:                                //  %land.rhs73.us.i
                                        //    Parent Loop BB0_49 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x5, x3, x8
	add x7, x3, x4
	lbu x7, 0 ( x7 )
	lbu x5, 0 ( x5 )
	nop
	beq x5, x7, LBB0_57
LBB0_51:                                //  %if.else110.us.i
                                        //    in Loop: Header=BB0_49 Depth=1
	add x3, x3, x15
	addi x15, x3, 1
	jalr x0, LBB0_55 ( x0 )
LBB0_52:                                //  %while.cond89.us.i
                                        //    Parent Loop BB0_49 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	beqz x4, LBB0_122
LBB0_53:                                //  %land.rhs92.us.i
                                        //    in Loop: Header=BB0_52 Depth=2
	addi x5, x4, -1
	add x7, x4, x10
	add x4, x4, x3
	lbu x9, -1 ( x4 )
	lbu x7, -1 ( x7 )
	add x4, x0, x5
	beq x7, x9, LBB0_52
LBB0_54:                                //  %if.end108.us.i
                                        //    in Loop: Header=BB0_49 Depth=1
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x15, x3, x15
LBB0_55:                                //  %while.cond59.backedge.us.i
                                        //    in Loop: Header=BB0_49 Depth=1
	sw x15, 32 ( x2 )               //  4-byte Folded Spill
	add x3, x13, x15
	add x10, x1, x12
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	sub x12, x3, x1
	add x11, x0, x14
	call $memchr
	beqz x10, LBB0_59
LBB0_56:
	add x14, x0, x0
	jalr x0, LBB0_123 ( x0 )
LBB0_57:                                //  %while.body82.us.i
                                        //    in Loop: Header=BB0_50 Depth=2
	addi x3, x3, 1
	add x5, x3, x9
	bgtu x13, x5, LBB0_50
LBB0_58:                                //  %while.cond89.us.i.preheader
                                        //    in Loop: Header=BB0_49 Depth=1
	add x3, x15, x12
	add x4, x0, x9
	jalr x0, LBB0_52 ( x0 )
LBB0_59:                                //  %while.cond59.backedge.us.i
                                        //    in Loop: Header=BB0_49 Depth=1
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x0, x3
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	lw x13, 44 ( x2 )               //  4-byte Folded Reload
	add x14, x0, x0
	lw x9, 24 ( x2 )                //  4-byte Folded Reload
	lw x15, 32 ( x2 )               //  4-byte Folded Reload
	bgtu x3, x0, LBB0_49
	jalr x0, LBB0_123 ( x0 )
LBB0_60:                                //  %if.end108.i
                                        //    in Loop: Header=BB0_43 Depth=1
	add x1, x0, x8
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	lw x13, 44 ( x2 )               //  4-byte Folded Reload
	add x14, x0, x0
	lw x9, 24 ( x2 )                //  4-byte Folded Reload
	lw x15, 32 ( x2 )               //  4-byte Folded Reload
	beqz x10, LBB0_43
	jalr x0, LBB0_123 ( x0 )
LBB0_61:                                //  %for.cond1.preheader.i
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	beqz x4, LBB0_64
LBB0_62:                                //  %for.body3.lr.ph.i
	addi x1, x4, -1
	add x3, x0, x10
LBB0_63:                                //  %for.body3.i
                                        //  =>This Inner Loop Header: Depth=1
	lbu x4, 0 ( x3 )
	nop
	slli x4, x4, 2
	add x4, x4, x5
	sw x1, 0 ( x4 )
	addi x3, x3, 1
	addi x1, x1, -1
	xori x4, x1, -1
	bgtu x4, x0, LBB0_63
LBB0_64:                                //  %for.end9.i
	lw x1, 1072 ( x2 )
	nop
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	add x11, x1, x10
	add x12, x0, x8
	call $memcmp
	sw x8, 24 ( x2 )                //  4-byte Folded Spill
	bgtu x10, x0, LBB0_93
LBB0_65:                                //  %while.cond.preheader.i65
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x3, x1
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sub x12, x8, x3
	add x11, x0, x0
	call $memchr
	add x14, x0, x0
	add x12, x0, x8
	beqz x12, LBB0_123
LBB0_66:                                //  %while.cond.preheader.i65
	bgtu x10, x0, LBB0_123
LBB0_67:                                //  %while.body.lr.ph.i66
	add x11, x0, x0
	lw x4, 24 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x4, -1
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	sub x1, x0, x4
	sw x1, 4 ( x2 )                 //  4-byte Folded Spill
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x12, x1
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	addi x14, x12, -1
	add x1, x0, x12
	add x16, x0, x11
	add x15, x0, x11
	sw x14, 16 ( x2 )               //  4-byte Folded Spill
LBB0_68:                                //  %while.body.i67
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_85 Depth 2
                                        //      Child Loop BB0_88 Depth 2
	lw x13, 36 ( x2 )               //  4-byte Folded Reload
	nop
	add x10, x1, x13
	lbu x3, -1 ( x10 )
	nop
	slli x3, x3, 2
	addi x5, x2, 48
	add x3, x3, x5
	lw x3, 0 ( x3 )
	nop
	beqz x3, LBB0_81
LBB0_69:                                //  %if.then23.i
                                        //    in Loop: Header=BB0_68 Depth=1
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x5, x3, LBB0_71
LBB0_70:                                //  %if.then23.i
                                        //    in Loop: Header=BB0_68 Depth=1
	add x4, x0, x3
LBB0_71:                                //  %if.then23.i
                                        //    in Loop: Header=BB0_68 Depth=1
	beq x16, x11, LBB0_73
LBB0_72:                                //  %if.then23.i
                                        //    in Loop: Header=BB0_68 Depth=1
	add x3, x0, x4
LBB0_73:                                //  %if.then23.i
                                        //    in Loop: Header=BB0_68 Depth=1
	add x15, x15, x3
LBB0_74:                                //  %while.cond.backedge.i74
                                        //    in Loop: Header=BB0_68 Depth=1
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
LBB0_75:                                //  %while.cond.backedge.i74
                                        //    in Loop: Header=BB0_68 Depth=1
	sw x15, 32 ( x2 )               //  4-byte Folded Spill
	add x8, x12, x15
	sub x12, x8, x1
	call $memchr
	bgtu x8, x0, LBB0_79
LBB0_76:
	add x14, x0, x0
	jalr x0, LBB0_123 ( x0 )
LBB0_77:                                //  %if.end28
	addi x12, x2, 1072
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $critical_factorization
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	add x8, x0, x10
	add x1, x0, x0
	addi x5, x2, 48
LBB0_78:                                //  %for.body.i
                                        //  =>This Inner Loop Header: Depth=1
	add x3, x1, x5
	sw x4, 0 ( x3 )
	addi x1, x1, 4
	xori x3, x1, 1024
	bgtu x3, x0, LBB0_78
	jalr x0, LBB0_61 ( x0 )
LBB0_79:                                //  %while.cond.backedge.i74
                                        //    in Loop: Header=BB0_68 Depth=1
	add x1, x0, x8
	lw x12, 44 ( x2 )               //  4-byte Folded Reload
	lw x4, 24 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x0
	lw x14, 16 ( x2 )               //  4-byte Folded Reload
	lw x15, 32 ( x2 )               //  4-byte Folded Reload
	lw x16, 28 ( x2 )               //  4-byte Folded Reload
	beqz x10, LBB0_68
LBB0_80:
	add x14, x0, x11
	jalr x0, LBB0_123 ( x0 )
LBB0_81:                                //  %if.end29.i
                                        //    in Loop: Header=BB0_68 Depth=1
	add x3, x0, x16
	lw x9, 40 ( x2 )                //  4-byte Folded Reload
	bgtu x16, x4, LBB0_83
LBB0_82:                                //  %if.end29.i
                                        //    in Loop: Header=BB0_68 Depth=1
	add x3, x0, x4
LBB0_83:                                //  %if.end29.i
                                        //    in Loop: Header=BB0_68 Depth=1
	bgeu x3, x14, LBB0_87
LBB0_84:                                //  %land.rhs34.i.preheader
                                        //    in Loop: Header=BB0_68 Depth=1
	add x4, x15, x13
LBB0_85:                                //  %land.rhs34.i
                                        //    Parent Loop BB0_68 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x5, x3, x9
	add x7, x3, x4
	lbu x7, 0 ( x7 )
	lbu x5, 0 ( x5 )
	nop
	bne x5, x7, LBB0_92
LBB0_86:                                //  %while.body42.i
                                        //    in Loop: Header=BB0_85 Depth=2
	addi x3, x3, 1
	bgtu x14, x3, LBB0_85
LBB0_87:                                //  %while.cond49.i.preheader
                                        //    in Loop: Header=BB0_68 Depth=1
	add x14, x15, x13
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
LBB0_88:                                //  %while.cond49.i
                                        //    Parent Loop BB0_68 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x4, x3, 1
	bgeu x16, x4, LBB0_90
LBB0_89:                                //  %land.rhs53.i
                                        //    in Loop: Header=BB0_88 Depth=2
	add x5, x3, x9
	add x7, x3, x14
	addi x3, x3, -1
	lbu x7, 0 ( x7 )
	lbu x5, 0 ( x5 )
	nop
	beq x5, x7, LBB0_88
LBB0_90:                                //  %while.end63.i
                                        //    in Loop: Header=BB0_68 Depth=1
	addi x3, x16, 1
	bgtu x3, x4, LBB0_123
LBB0_91:                                //  %if.end70.i
                                        //    in Loop: Header=BB0_68 Depth=1
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x15, x3, x15
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 28 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_75 ( x0 )
LBB0_92:                                //  %if.else.i79
                                        //    in Loop: Header=BB0_68 Depth=1
	lw x4, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	add x4, x15, x4
	add x3, x3, x4
	addi x15, x3, 1
	jalr x0, LBB0_74 ( x0 )
LBB0_93:                                //  %if.else79.i
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x4, x8
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x8, LBB0_95
LBB0_94:                                //  %if.else79.i
	add x1, x0, x8
LBB0_95:                                //  %if.else79.i
	addi x1, x1, 1
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	sw x1, 1072 ( x2 )
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x1, x3
	sub x12, x4, x1
	add x11, x0, x0
	add x8, x0, x11
	call $memchr
	lw x13, 44 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x13, x0, LBB0_97
LBB0_96:
	add x14, x0, x8
	jalr x0, LBB0_123 ( x0 )
LBB0_97:                                //  %if.else79.i
	add x14, x0, x8
	bgtu x10, x0, LBB0_123
LBB0_98:                                //  %while.body100.lr.ph.i
	addi x16, x13, -1
	lw x9, 24 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x16, x9, LBB0_107
LBB0_99:                                //  %while.body100.i.preheader
	add x14, x0, x0
	add x1, x0, x13
	add x15, x0, x14
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	addi x4, x2, 48
LBB0_100:                               //  %while.body100.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_102 Depth 2
	add x10, x1, x12
	lbu x3, -1 ( x10 )
	nop
	slli x3, x3, 2
	add x3, x3, x4
	lw x3, 0 ( x3 )
	nop
	bgtu x3, x0, LBB0_105
LBB0_101:                               //  %while.cond132.i.preheader
                                        //    in Loop: Header=BB0_100 Depth=1
	add x3, x15, x12
	lw x4, 24 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_102:                               //  %while.cond132.i
                                        //    Parent Loop BB0_100 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	beqz x4, LBB0_122
LBB0_103:                               //  %land.rhs135.i
                                        //    in Loop: Header=BB0_102 Depth=2
	addi x5, x4, -1
	add x7, x4, x11
	add x4, x4, x3
	lbu x9, -1 ( x4 )
	lbu x7, -1 ( x7 )
	add x4, x0, x5
	beq x7, x9, LBB0_102
LBB0_104:                               //    in Loop: Header=BB0_100 Depth=1
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_105:                               //  %while.cond90.backedge.i
                                        //    in Loop: Header=BB0_100 Depth=1
	add x15, x15, x3
	sw x15, 32 ( x2 )               //  4-byte Folded Spill
	add x8, x13, x15
	sub x12, x8, x1
	add x11, x0, x14
	call $memchr
	beqz x10, LBB0_121
LBB0_106:
	add x14, x0, x0
	jalr x0, LBB0_123 ( x0 )
LBB0_107:                               //  %while.body100.us.i.preheader
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	nop
	add x17, x9, x11
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	nop
	add x1, x9, x12
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	add x14, x0, x0
	add x1, x0, x13
	add x15, x0, x14
	addi x4, x2, 48
	sw x16, 28 ( x2 )               //  4-byte Folded Spill
	sw x17, 20 ( x2 )               //  4-byte Folded Spill
LBB0_108:                               //  %while.body100.us.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_110 Depth 2
                                        //      Child Loop BB0_112 Depth 2
	add x10, x1, x12
	lbu x3, -1 ( x10 )
	nop
	slli x3, x3, 2
	add x3, x3, x4
	lw x3, 0 ( x3 )
	nop
	bgtu x3, x0, LBB0_117
LBB0_109:                               //  %land.rhs115.us.i.preheader
                                        //    in Loop: Header=BB0_108 Depth=1
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x15, x3
	add x3, x0, x14
LBB0_110:                               //  %land.rhs115.us.i
                                        //    Parent Loop BB0_108 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x5, x3, x17
	add x7, x3, x4
	lbu x7, 0 ( x7 )
	lbu x5, 0 ( x5 )
	nop
	beq x5, x7, LBB0_115
LBB0_111:                               //  %if.else153.us.i
                                        //    in Loop: Header=BB0_108 Depth=1
	add x3, x3, x15
	addi x15, x3, 1
	jalr x0, LBB0_118 ( x0 )
LBB0_112:                               //  %while.cond132.us.i
                                        //    Parent Loop BB0_108 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	beqz x4, LBB0_122
LBB0_113:                               //  %land.rhs135.us.i
                                        //    in Loop: Header=BB0_112 Depth=2
	addi x5, x4, -1
	add x7, x4, x11
	add x4, x4, x3
	lbu x9, -1 ( x4 )
	lbu x7, -1 ( x7 )
	add x4, x0, x5
	beq x7, x9, LBB0_112
LBB0_114:                               //  %if.end151.us.i
                                        //    in Loop: Header=BB0_108 Depth=1
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x15, x3, x15
	jalr x0, LBB0_118 ( x0 )
LBB0_115:                               //  %while.body124.us.i
                                        //    in Loop: Header=BB0_110 Depth=2
	addi x3, x3, 1
	add x5, x3, x9
	bgtu x16, x5, LBB0_110
LBB0_116:                               //  %while.cond132.us.i.preheader
                                        //    in Loop: Header=BB0_108 Depth=1
	add x3, x15, x12
	add x4, x0, x9
	jalr x0, LBB0_112 ( x0 )
LBB0_117:                               //  %if.then108.us.i
                                        //    in Loop: Header=BB0_108 Depth=1
	add x15, x15, x3
LBB0_118:                               //  %while.cond90.backedge.us.i
                                        //    in Loop: Header=BB0_108 Depth=1
	sw x15, 32 ( x2 )               //  4-byte Folded Spill
	add x8, x13, x15
	sub x12, x8, x1
	add x11, x0, x14
	call $memchr
	bgtu x8, x0, LBB0_120
LBB0_119:
	add x14, x0, x0
	jalr x0, LBB0_123 ( x0 )
LBB0_120:                               //  %while.cond90.backedge.us.i
                                        //    in Loop: Header=BB0_108 Depth=1
	add x1, x0, x8
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	lw x13, 44 ( x2 )               //  4-byte Folded Reload
	add x14, x0, x0
	lw x9, 24 ( x2 )                //  4-byte Folded Reload
	addi x4, x2, 48
	lw x15, 32 ( x2 )               //  4-byte Folded Reload
	lw x16, 28 ( x2 )               //  4-byte Folded Reload
	lw x17, 20 ( x2 )               //  4-byte Folded Reload
	beqz x10, LBB0_108
	jalr x0, LBB0_123 ( x0 )
LBB0_121:                               //  %while.cond90.backedge.i
                                        //    in Loop: Header=BB0_100 Depth=1
	add x1, x0, x8
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	lw x13, 44 ( x2 )               //  4-byte Folded Reload
	add x14, x0, x0
	addi x4, x2, 48
	lw x15, 32 ( x2 )               //  4-byte Folded Reload
	bgtu x8, x0, LBB0_100
	jalr x0, LBB0_123 ( x0 )
LBB0_122:                               //  %cleanup159.i
	add x14, x15, x12
LBB0_123:                               //  %cleanup
	add x10, x0, x14
	lw x8, 1076 ( x2 )              //  4-byte Folded Reload
	lw x1, 1084 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 1088
$cfi5:
	.cfi_adjust_cfa_offset -1088
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$strstr, ($func_end0)-($strstr)
	.cfi_endproc

	.type	$critical_factorization,@function
$critical_factorization:                //  @critical_factorization
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	sltiu x5, x11, 2
	bgtu x5, x0, LBB1_28
LBB1_1:                                 //  %while.body.lr.ph.lr.ph.lr.ph.preheader
	not x4, x0
	add x7, x0, x0
	slti x3, x0, 1
	add x14, x0, x3
LBB1_2:                                 //  %while.body.lr.ph.lr.ph.lr.ph
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_3 Depth 2
                                        //        Child Loop BB1_5 Depth 3
	add x13, x4, x10
	add x9, x0, x7
	add x7, x0, x3
LBB1_3:                                 //  %while.body.lr.ph
                                        //    Parent Loop BB1_2 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_5 Depth 3
	add x15, x0, x3
	jalr x0, LBB1_5 ( x0 )
LBB1_4:                                 //  %while.cond
                                        //    in Loop: Header=BB1_5 Depth=3
	addi x15, x15, 1
	add x14, x9, x15
	bgeu x14, x11, LBB1_12
LBB1_5:                                 //  %while.body
                                        //    Parent Loop BB1_2 Depth=1
                                        //      Parent Loop BB1_3 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x17, x14, x10
	add x16, x15, x13
	lbu x16, 0 ( x16 )
	lbu x17, 0 ( x17 )
	nop
	bgeu x17, x16, LBB1_7
LBB1_6:                                 //  %if.then
                                        //    in Loop: Header=BB1_3 Depth=2
	addi x15, x14, 1
	sub x7, x14, x4
	add x9, x0, x14
	add x14, x0, x15
	bgtu x11, x15, LBB1_3
	jalr x0, LBB1_12 ( x0 )
LBB1_7:                                 //  %if.else
                                        //    in Loop: Header=BB1_5 Depth=3
	bne x17, x16, LBB1_10
LBB1_8:                                 //  %if.then12
                                        //    in Loop: Header=BB1_5 Depth=3
	bne x7, x15, LBB1_4
LBB1_9:                                 //  %if.else16
                                        //    in Loop: Header=BB1_3 Depth=2
	add x9, x7, x9
	addi x14, x9, 1
	bgtu x11, x14, LBB1_3
	jalr x0, LBB1_12 ( x0 )
LBB1_10:                                //  %if.else18
                                        //    in Loop: Header=BB1_2 Depth=1
	addi x14, x9, 2
	addi x7, x9, 1
	add x4, x0, x9
	bgtu x11, x14, LBB1_2
LBB1_11:
	add x4, x0, x9
	add x7, x0, x3
LBB1_12:                                //  %while.end
	sw x7, 0 ( x12 )
	beqz x5, LBB1_14
LBB1_13:
	not x5, x0
	jalr x0, LBB1_25 ( x0 )
LBB1_14:                                //  %while.body26.lr.ph.lr.ph.lr.ph.preheader
	not x7, x0
	add x13, x0, x0
	slti x3, x0, 1
	add x14, x0, x3
LBB1_15:                                //  %while.body26.lr.ph.lr.ph.lr.ph
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_16 Depth 2
                                        //        Child Loop BB1_17 Depth 3
	add x9, x7, x10
	add x5, x0, x13
	add x13, x0, x3
LBB1_16:                                //  %while.body26.lr.ph
                                        //    Parent Loop BB1_15 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_17 Depth 3
	add x15, x0, x3
LBB1_17:                                //  %while.body26
                                        //    Parent Loop BB1_15 Depth=1
                                        //      Parent Loop BB1_16 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x17, x14, x10
	add x16, x15, x9
	lbu x16, 0 ( x16 )
	lbu x17, 0 ( x17 )
	nop
	bgeu x16, x17, LBB1_21
LBB1_18:                                //  %if.then35
                                        //    in Loop: Header=BB1_16 Depth=2
	addi x15, x14, 1
	sub x13, x14, x7
	add x5, x0, x14
	add x14, x0, x15
	bgtu x11, x15, LBB1_16
	jalr x0, LBB1_20 ( x0 )
LBB1_19:                                //  %while.cond22
                                        //    in Loop: Header=BB1_17 Depth=3
	addi x15, x15, 1
	add x14, x5, x15
	bgtu x11, x14, LBB1_17
LBB1_20:
	add x3, x0, x13
	add x5, x0, x7
	jalr x0, LBB1_25 ( x0 )
LBB1_21:                                //  %if.else38
                                        //    in Loop: Header=BB1_17 Depth=3
	bne x17, x16, LBB1_24
LBB1_22:                                //  %if.then43
                                        //    in Loop: Header=BB1_17 Depth=3
	bne x13, x15, LBB1_19
LBB1_23:                                //  %if.else48
                                        //    in Loop: Header=BB1_16 Depth=2
	add x5, x13, x5
	addi x14, x5, 1
	bgtu x11, x14, LBB1_16
	jalr x0, LBB1_20 ( x0 )
LBB1_24:                                //  %if.else51
                                        //    in Loop: Header=BB1_15 Depth=1
	addi x14, x5, 2
	addi x13, x5, 1
	add x7, x0, x5
	bgtu x11, x14, LBB1_15
LBB1_25:                                //  %while.end55
	addi x10, x4, 1
	addi x4, x5, 1
	bgtu x10, x4, LBB1_27
LBB1_26:                                //  %if.end62
	sw x3, 0 ( x12 )
	add x10, x0, x4
LBB1_27:                                //  %cleanup
	ret
LBB1_28:                                //  %while.end.thread
	slti x3, x0, 1
	sw x3, 0 ( x12 )
	not x5, x0
	add x4, x0, x5
	jalr x0, LBB1_25 ( x0 )
$func_end1:
	.size	$critical_factorization, ($func_end1)-($critical_factorization)
	.cfi_endproc


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
