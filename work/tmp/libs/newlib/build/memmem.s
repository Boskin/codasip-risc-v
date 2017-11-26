	.text
	.file	"memmem.bc"
	.globl	$memmem
	.type	$memmem,@function
$memmem:                                //  @memmem
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -1072
$cfi2:
	.cfi_adjust_cfa_offset 1072
	sw x1, 1068 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 1060 ( x2 )              //  4-byte Folded Spill
	add x8, x0, x13
	add x3, x0, x12
	add x4, x0, x11
	beqz x8, LBB0_92
LBB0_1:                                 //  %if.end
	add x1, x0, x0
	bgeu x4, x8, LBB0_3
LBB0_2:
	add x10, x0, x1
	jalr x0, LBB0_92 ( x0 )
LBB0_3:                                 //  %if.end3
	addi x1, x0, 31
	sw x3, 28 ( x2 )                //  4-byte Folded Spill
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x4, 20 ( x2 )                //  4-byte Folded Spill
	bgtu x8, x1, LBB0_42
LBB0_4:                                 //  %if.then5
	lbu x11, 0 ( x3 )
	add x12, x0, x4
	call $memchr
	add x3, x0, x10
	xori x1, x8, 1
	bgtu x1, x0, LBB0_6
LBB0_5:
	add x10, x0, x3
	jalr x0, LBB0_92 ( x0 )
LBB0_6:                                 //  %if.then5
	add x10, x0, x3
	beqz x3, LBB0_92
LBB0_7:                                 //  %if.end9
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	lw x4, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x4, x1
	add x10, x0, x0
	bgtu x8, x1, LBB0_92
LBB0_8:                                 //  %if.end13
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	addi x12, x2, 32
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $critical_factorization
	add x1, x0, x10
	lw x3, 32 ( x2 )
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x1
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
	add x11, x3, x10
	call $memcmp
	bgtu x10, x0, LBB0_24
LBB0_9:                                 //  %while.cond.preheader.i
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	nop
	sub x1, x8, x12
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sub x4, x3, x8
	add x3, x0, x0
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	addi x5, x10, -1
	sub x7, x0, x10
	add x9, x0, x3
	add x11, x0, x3
	lw x16, 28 ( x2 )               //  4-byte Folded Reload
	lw x17, 24 ( x2 )               //  4-byte Folded Reload
	add x18, x0, x10
	add x19, x0, x12
LBB0_10:                                //  %while.body.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_14 Depth 2
                                        //      Child Loop BB0_17 Depth 2
	add x10, x0, x11
	bgtu x11, x18, LBB0_12
LBB0_11:                                //  %while.body.i
                                        //    in Loop: Header=BB0_10 Depth=1
	add x10, x0, x18
LBB0_12:                                //  %while.body.i
                                        //    in Loop: Header=BB0_10 Depth=1
	bgeu x10, x8, LBB0_16
LBB0_13:                                //  %land.rhs.i.preheader
                                        //    in Loop: Header=BB0_10 Depth=1
	add x12, x9, x17
LBB0_14:                                //  %land.rhs.i
                                        //    Parent Loop BB0_10 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x13, x10, x16
	add x14, x10, x12
	lbu x14, 0 ( x14 )
	lbu x13, 0 ( x13 )
	nop
	bne x13, x14, LBB0_21
LBB0_15:                                //  %while.body10.i
                                        //    in Loop: Header=BB0_14 Depth=2
	addi x10, x10, 1
	bgtu x8, x10, LBB0_14
LBB0_16:                                //  %while.cond15.i.preheader
                                        //    in Loop: Header=BB0_10 Depth=1
	add x10, x9, x17
	add x13, x0, x5
LBB0_17:                                //  %while.cond15.i
                                        //    Parent Loop BB0_10 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x12, x13, 1
	bgeu x11, x12, LBB0_19
LBB0_18:                                //  %land.rhs19.i
                                        //    in Loop: Header=BB0_17 Depth=2
	add x14, x13, x16
	add x15, x13, x10
	lbu x15, 0 ( x15 )
	lbu x14, 0 ( x14 )
	addi x13, x13, -1
	beq x14, x15, LBB0_17
LBB0_19:                                //  %while.end29.i
                                        //    in Loop: Header=BB0_10 Depth=1
	addi x11, x11, 1
	bgtu x11, x12, LBB0_92
LBB0_20:                                //  %if.end.i
                                        //    in Loop: Header=BB0_10 Depth=1
	add x9, x19, x9
	add x11, x0, x1
	jalr x0, LBB0_22 ( x0 )
LBB0_21:                                //  %if.else.i
                                        //    in Loop: Header=BB0_10 Depth=1
	add x9, x9, x7
	add x9, x10, x9
	addi x9, x9, 1
	add x11, x0, x3
LBB0_22:                                //  %while.cond.backedge.i
                                        //    in Loop: Header=BB0_10 Depth=1
	bgeu x4, x9, LBB0_10
LBB0_23:
	add x10, x0, x3
	jalr x0, LBB0_92 ( x0 )
LBB0_24:                                //  %if.else43.i
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x8, x1
	add x16, x0, x1
	bgtu x3, x16, LBB0_26
LBB0_25:                                //  %if.else43.i
	add x3, x0, x16
LBB0_26:                                //  %if.else43.i
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x8
	addi x3, x3, 1
	sw x3, 32 ( x2 )
	lw x14, 28 ( x2 )               //  4-byte Folded Reload
	lw x15, 24 ( x2 )               //  4-byte Folded Reload
	bgtu x8, x16, LBB0_32
LBB0_27:                                //  %while.cond58.preheader.i.preheader
	add x10, x0, x0
	add x4, x0, x10
LBB0_28:                                //  %while.cond58.preheader.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_29 Depth 2
	add x5, x4, x15
	add x7, x0, x16
LBB0_29:                                //  %while.cond77.i
                                        //    Parent Loop BB0_28 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	beqz x7, LBB0_91
LBB0_30:                                //  %land.rhs80.i
                                        //    in Loop: Header=BB0_29 Depth=2
	add x9, x7, x14
	add x11, x7, x5
	lbu x11, -1 ( x11 )
	lbu x9, -1 ( x9 )
	addi x7, x7, -1
	beq x9, x11, LBB0_29
LBB0_31:                                //  %if.end96.i
                                        //    in Loop: Header=BB0_28 Depth=1
	add x4, x3, x4
	bgeu x1, x4, LBB0_28
	jalr x0, LBB0_92 ( x0 )
LBB0_32:                                //  %while.cond58.preheader.us.i.preheader
	add x5, x16, x14
	add x7, x16, x15
	add x10, x0, x0
	add x4, x0, x10
LBB0_33:                                //  %while.cond58.preheader.us.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_34 Depth 2
                                        //      Child Loop BB0_36 Depth 2
	add x11, x4, x7
	add x9, x0, x10
LBB0_34:                                //  %land.rhs61.us.i
                                        //    Parent Loop BB0_33 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x12, x9, x5
	add x13, x9, x11
	lbu x13, 0 ( x13 )
	lbu x12, 0 ( x12 )
	nop
	beq x12, x13, LBB0_40
LBB0_35:                                //  %if.else98.us.i
                                        //    in Loop: Header=BB0_33 Depth=1
	add x4, x9, x4
	addi x4, x4, 1
	bgeu x1, x4, LBB0_33
	jalr x0, LBB0_92 ( x0 )
LBB0_36:                                //  %while.cond77.us.i
                                        //    Parent Loop BB0_33 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	beqz x11, LBB0_91
LBB0_37:                                //  %land.rhs80.us.i
                                        //    in Loop: Header=BB0_36 Depth=2
	add x12, x11, x14
	add x13, x11, x9
	lbu x13, -1 ( x13 )
	lbu x12, -1 ( x12 )
	addi x11, x11, -1
	beq x12, x13, LBB0_36
LBB0_38:                                //  %if.end96.us.i
                                        //    in Loop: Header=BB0_33 Depth=1
	add x4, x3, x4
	bgeu x1, x4, LBB0_33
	jalr x0, LBB0_92 ( x0 )
LBB0_40:                                //  %while.body70.us.i
                                        //    in Loop: Header=BB0_34 Depth=2
	addi x9, x9, 1
	add x12, x9, x16
	bgtu x8, x12, LBB0_34
LBB0_41:                                //  %while.cond77.us.i.preheader
                                        //    in Loop: Header=BB0_33 Depth=1
	add x9, x4, x15
	add x11, x0, x16
	jalr x0, LBB0_36 ( x0 )
LBB0_42:                                //  %if.end15
	addi x12, x2, 1056
	add x10, x0, x3
	add x11, x0, x8
	call $critical_factorization
	add x9, x0, x10
	add x1, x0, x0
	addi x11, x2, 32
LBB0_43:                                //  %for.body.i
                                        //  =>This Inner Loop Header: Depth=1
	addi x3, x1, 4
	add x1, x1, x11
	xori x4, x3, 1024
	sw x8, 0 ( x1 )
	add x1, x0, x3
	bgtu x4, x0, LBB0_43
LBB0_44:                                //  %for.body3.lr.ph.i
	addi x1, x8, -1
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	nop
	add x3, x0, x10
LBB0_45:                                //  %for.body3.i
                                        //  =>This Inner Loop Header: Depth=1
	lbu x4, 0 ( x3 )
	addi x5, x1, -1
	xori x7, x5, -1
	addi x3, x3, 1
	slli x4, x4, 2
	add x4, x4, x11
	sw x1, 0 ( x4 )
	add x1, x0, x5
	bgtu x7, x0, LBB0_45
LBB0_46:                                //  %for.end9.i
	lw x1, 1056 ( x2 )
	add x12, x0, x9
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	add x11, x1, x10
	sw x9, 12 ( x2 )                //  4-byte Folded Spill
	call $memcmp
	bgtu x10, x0, LBB0_69
LBB0_47:                                //  %while.cond.preheader.i47
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x8, x10
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sub x4, x3, x8
	add x3, x0, x0
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	nop
	addi x5, x12, -1
	sub x7, x0, x12
	add x11, x0, x3
	add x9, x0, x3
	lw x16, 28 ( x2 )               //  4-byte Folded Reload
	lw x17, 24 ( x2 )               //  4-byte Folded Reload
	add x18, x0, x12
	addi x19, x2, 32
	lw x20, 16 ( x2 )               //  4-byte Folded Reload
	add x21, x0, x10
LBB0_48:                                //  %while.body.i48
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_61 Depth 2
                                        //      Child Loop BB0_64 Depth 2
	add x10, x20, x9
	add x10, x10, x17
	lbu x10, 0 ( x10 )
	nop
	slli x10, x10, 2
	add x10, x10, x19
	lw x10, 0 ( x10 )
	nop
	beqz x10, LBB0_57
LBB0_49:                                //  %if.then19.i
                                        //    in Loop: Header=BB0_48 Depth=1
	add x12, x0, x1
	bgtu x21, x10, LBB0_51
LBB0_50:                                //  %if.then19.i
                                        //    in Loop: Header=BB0_48 Depth=1
	add x12, x0, x10
LBB0_51:                                //  %if.then19.i
                                        //    in Loop: Header=BB0_48 Depth=1
	beq x11, x3, LBB0_53
LBB0_52:                                //  %if.then19.i
                                        //    in Loop: Header=BB0_48 Depth=1
	add x10, x0, x12
LBB0_53:                                //  %if.then19.i
                                        //    in Loop: Header=BB0_48 Depth=1
	add x9, x9, x10
LBB0_54:                                //  %while.cond.backedge.i51
                                        //    in Loop: Header=BB0_48 Depth=1
	add x11, x0, x3
LBB0_55:                                //  %while.cond.backedge.i51
                                        //    in Loop: Header=BB0_48 Depth=1
	bgeu x4, x9, LBB0_48
LBB0_56:
	add x10, x0, x3
	jalr x0, LBB0_92 ( x0 )
LBB0_57:                                //  %if.end24.i
                                        //    in Loop: Header=BB0_48 Depth=1
	add x10, x0, x11
	bgtu x11, x18, LBB0_59
LBB0_58:                                //  %if.end24.i
                                        //    in Loop: Header=BB0_48 Depth=1
	add x10, x0, x18
LBB0_59:                                //  %if.end24.i
                                        //    in Loop: Header=BB0_48 Depth=1
	bgeu x10, x20, LBB0_63
LBB0_60:                                //  %land.rhs.i54.preheader
                                        //    in Loop: Header=BB0_48 Depth=1
	add x12, x9, x17
LBB0_61:                                //  %land.rhs.i54
                                        //    Parent Loop BB0_48 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x13, x10, x16
	add x14, x10, x12
	lbu x14, 0 ( x14 )
	lbu x13, 0 ( x13 )
	nop
	bne x13, x14, LBB0_68
LBB0_62:                                //  %while.body35.i
                                        //    in Loop: Header=BB0_61 Depth=2
	addi x10, x10, 1
	bgtu x20, x10, LBB0_61
LBB0_63:                                //  %while.cond42.i.preheader
                                        //    in Loop: Header=BB0_48 Depth=1
	add x10, x9, x17
	add x13, x0, x5
LBB0_64:                                //  %while.cond42.i
                                        //    Parent Loop BB0_48 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x12, x13, 1
	bgeu x11, x12, LBB0_66
LBB0_65:                                //  %land.rhs46.i
                                        //    in Loop: Header=BB0_64 Depth=2
	add x14, x13, x16
	add x15, x13, x10
	lbu x15, 0 ( x15 )
	lbu x14, 0 ( x14 )
	addi x13, x13, -1
	beq x14, x15, LBB0_64
LBB0_66:                                //  %while.end56.i
                                        //    in Loop: Header=BB0_48 Depth=1
	addi x11, x11, 1
	bgtu x11, x12, LBB0_92
LBB0_67:                                //  %if.end63.i
                                        //    in Loop: Header=BB0_48 Depth=1
	add x9, x21, x9
	add x11, x0, x1
	jalr x0, LBB0_55 ( x0 )
LBB0_68:                                //  %if.else.i57
                                        //    in Loop: Header=BB0_48 Depth=1
	add x9, x9, x7
	add x9, x10, x9
	addi x9, x9, 1
	jalr x0, LBB0_54 ( x0 )
LBB0_69:                                //  %if.else72.i
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x8, x1
	lw x15, 24 ( x2 )               //  4-byte Folded Reload
	add x16, x0, x1
	lw x18, 16 ( x2 )               //  4-byte Folded Reload
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	bgtu x3, x16, LBB0_71
LBB0_70:                                //  %if.else72.i
	add x3, x0, x16
LBB0_71:                                //  %if.else72.i
	sub x1, x1, x8
	addi x3, x3, 1
	sw x3, 1056 ( x2 )
	lw x14, 28 ( x2 )               //  4-byte Folded Reload
	addi x17, x2, 32
	bgtu x18, x16, LBB0_79
LBB0_72:                                //  %while.body87.i.preheader
	add x10, x0, x0
	add x4, x0, x10
LBB0_73:                                //  %while.body87.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_75 Depth 2
	add x5, x18, x4
	add x5, x5, x15
	lbu x5, 0 ( x5 )
	nop
	slli x5, x5, 2
	add x5, x5, x17
	lw x5, 0 ( x5 )
	nop
	bgtu x5, x0, LBB0_78
LBB0_74:                                //  %while.cond119.i.preheader
                                        //    in Loop: Header=BB0_73 Depth=1
	add x5, x4, x15
	add x7, x0, x16
LBB0_75:                                //  %while.cond119.i
                                        //    Parent Loop BB0_73 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	beqz x7, LBB0_91
LBB0_76:                                //  %land.rhs122.i
                                        //    in Loop: Header=BB0_75 Depth=2
	add x9, x7, x14
	add x11, x7, x5
	lbu x11, -1 ( x11 )
	lbu x9, -1 ( x9 )
	addi x7, x7, -1
	beq x9, x11, LBB0_75
LBB0_77:                                //    in Loop: Header=BB0_73 Depth=1
	add x5, x0, x3
LBB0_78:                                //  %while.cond83.backedge.i
                                        //    in Loop: Header=BB0_73 Depth=1
	add x4, x4, x5
	bgeu x1, x4, LBB0_73
	jalr x0, LBB0_92 ( x0 )
LBB0_79:                                //  %while.body87.us.i.preheader
	add x5, x16, x14
	add x7, x16, x15
	add x10, x0, x0
	add x4, x0, x10
LBB0_80:                                //  %while.body87.us.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_82 Depth 2
                                        //      Child Loop BB0_84 Depth 2
	add x9, x18, x4
	add x9, x9, x15
	lbu x9, 0 ( x9 )
	nop
	slli x9, x9, 2
	add x9, x9, x17
	lw x9, 0 ( x9 )
	nop
	bgtu x9, x0, LBB0_89
LBB0_81:                                //  %land.rhs102.us.i.preheader
                                        //    in Loop: Header=BB0_80 Depth=1
	add x11, x4, x7
	add x9, x0, x10
LBB0_82:                                //  %land.rhs102.us.i
                                        //    Parent Loop BB0_80 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x12, x9, x5
	add x13, x9, x11
	lbu x13, 0 ( x13 )
	lbu x12, 0 ( x12 )
	nop
	beq x12, x13, LBB0_87
LBB0_83:                                //  %if.else140.us.i
                                        //    in Loop: Header=BB0_80 Depth=1
	add x4, x9, x4
	addi x4, x4, 1
	bgeu x1, x4, LBB0_80
	jalr x0, LBB0_92 ( x0 )
LBB0_84:                                //  %while.cond119.us.i
                                        //    Parent Loop BB0_80 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	beqz x11, LBB0_91
LBB0_85:                                //  %land.rhs122.us.i
                                        //    in Loop: Header=BB0_84 Depth=2
	add x12, x11, x14
	add x13, x11, x9
	lbu x13, -1 ( x13 )
	lbu x12, -1 ( x12 )
	addi x11, x11, -1
	beq x12, x13, LBB0_84
LBB0_86:                                //  %if.end138.us.i
                                        //    in Loop: Header=BB0_80 Depth=1
	add x4, x3, x4
	bgeu x1, x4, LBB0_80
	jalr x0, LBB0_92 ( x0 )
LBB0_87:                                //  %while.body111.us.i
                                        //    in Loop: Header=BB0_82 Depth=2
	addi x9, x9, 1
	add x12, x9, x16
	bgtu x18, x12, LBB0_82
LBB0_88:                                //  %while.cond119.us.i.preheader
                                        //    in Loop: Header=BB0_80 Depth=1
	add x9, x4, x15
	add x11, x0, x16
	jalr x0, LBB0_84 ( x0 )
LBB0_89:                                //  %if.then95.us.i
                                        //    in Loop: Header=BB0_80 Depth=1
	add x4, x4, x9
	bgeu x1, x4, LBB0_80
	jalr x0, LBB0_92 ( x0 )
LBB0_91:                                //  %cleanup146.i
	add x10, x4, x15
LBB0_92:                                //  %cleanup
	lw x8, 1060 ( x2 )              //  4-byte Folded Reload
	lw x1, 1068 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 1072
$cfi5:
	.cfi_adjust_cfa_offset -1072
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$memmem, ($func_end0)-($memmem)
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
