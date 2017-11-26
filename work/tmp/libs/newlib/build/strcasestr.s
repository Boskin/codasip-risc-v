	.text
	.file	"strcasestr.bc"
	.globl	$strcasestr
	.type	$strcasestr,@function
$strcasestr:                            //  @strcasestr
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
	add x14, x0, x11
	add x8, x0, x10
	lbu x11, 0 ( x14 )
	lbu x9, 0 ( x8 )
	seqz x10, x11
	bgtu x9, x0, LBB0_2
LBB0_1:
	slti x1, x0, 1
	add x12, x0, x14
	jalr x0, LBB0_12 ( x0 )
LBB0_2:                                 //  %land.rhs.lr.ph
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	lui x1, $__ctype_ptr__ >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x1, 0 ( x1 )
	slti x3, x0, 1
	addi x5, x8, 1
	addi x4, x1, 1
	add x1, x0, x3
	add x7, x0, x14
LBB0_3:                                 //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	beqz x10, LBB0_7
LBB0_4:
	add x12, x0, x7
LBB0_5:                                 //  %if.end
	beqz x1, LBB0_14
LBB0_6:
	add x14, x0, x8
	jalr x0, LBB0_172 ( x0 )
LBB0_7:                                 //  %while.body
                                        //    in Loop: Header=BB0_3 Depth=1
	andi x10, x11, 255
	add x11, x10, x4
	lbu x11, 0 ( x11 )
	nop
	andi x11, x11, 3
	bne x11, x3, LBB0_9
LBB0_8:                                 //    in Loop: Header=BB0_3 Depth=1
	addi x10, x10, 32
LBB0_9:                                 //  %while.body
                                        //    in Loop: Header=BB0_3 Depth=1
	andi x9, x9, 255
	add x11, x9, x4
	lbu x11, 0 ( x11 )
	nop
	andi x11, x11, 3
	bne x11, x3, LBB0_11
LBB0_10:                                //    in Loop: Header=BB0_3 Depth=1
	addi x9, x9, 32
LBB0_11:                                //  %while.body
                                        //    in Loop: Header=BB0_3 Depth=1
	xor x9, x10, x9
	seqz x9, x9
	and x1, x1, x9
	addi x13, x5, 1
	addi x12, x7, 1
	lbu x11, 1 ( x7 )
	nop
	seqz x10, x11
	andi x1, x1, 1
	lbu x9, 0 ( x5 )
	add x7, x0, x12
	add x5, x0, x13
	bgtu x9, x0, LBB0_3
LBB0_12:                                //  %while.end
	andi x3, x10, 1
	bgtu x3, x0, LBB0_5
LBB0_13:
	add x14, x0, x0
	jalr x0, LBB0_172 ( x0 )
LBB0_14:                                //  %if.end33
	sub x11, x12, x14
	addi x1, x0, 31
	addi x3, x11, -1
	sw x3, 28 ( x2 )                //  4-byte Folded Spill
	addi x3, x8, 1
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
	sw x8, 32 ( x2 )                //  4-byte Folded Spill
	sw x14, 36 ( x2 )               //  4-byte Folded Spill
	sw x11, 44 ( x2 )               //  4-byte Folded Spill
	bgtu x11, x1, LBB0_90
LBB0_15:                                //  %if.then38
	addi x12, x2, 48
	add x10, x0, x14
	call $critical_factorization
	add x3, x0, x10
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	lw x1, 48 ( x2 )
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x3
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	add x11, x1, x10
	call $strncasecmp
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_44
LBB0_16:                                //  %while.cond.preheader.i
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x3, x1
	add x11, x0, x0
	slti x12, x0, 1
	call $memchr
	lw x13, 44 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x13, x0, LBB0_18
LBB0_17:
	add x14, x0, x0
	jalr x0, LBB0_172 ( x0 )
LBB0_18:                                //  %while.cond.preheader.i
	add x14, x0, x0
	bgtu x10, x0, LBB0_172
LBB0_19:                                //  %while.body.lr.ph.i
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x13, x1
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	add x14, x0, x0
	lw x15, 20 ( x2 )               //  4-byte Folded Reload
	nop
	sub x1, x0, x15
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	add x18, x0, x14
	add x17, x0, x14
	add x1, x0, x13
LBB0_20:                                //  %while.body.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_24 Depth 2
                                        //      Child Loop BB0_31 Depth 2
	add x3, x0, x18
	bgtu x18, x15, LBB0_22
LBB0_21:                                //  %while.body.i
                                        //    in Loop: Header=BB0_20 Depth=1
	add x3, x0, x15
LBB0_22:                                //  %while.body.i
                                        //    in Loop: Header=BB0_20 Depth=1
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, $__ctype_ptr__ >> 12 & 0xfffff
	or x4, x4, x28
	lw x4, 0 ( x4 )
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	slti x16, x0, 1
	bgeu x3, x13, LBB0_30
LBB0_23:                                //  %land.rhs9.lr.ph.i
                                        //    in Loop: Header=BB0_20 Depth=1
	add x5, x17, x8
	addi x7, x4, 1
LBB0_24:                                //  %land.rhs9.i
                                        //    Parent Loop BB0_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x9, x3, x5
	lbu x9, 1 ( x9 )
	nop
	add x10, x9, x7
	lbu x10, 0 ( x10 )
	nop
	andi x10, x10, 3
	bne x10, x16, LBB0_26
LBB0_25:                                //    in Loop: Header=BB0_24 Depth=2
	addi x9, x9, 32
LBB0_26:                                //  %land.rhs9.i
                                        //    in Loop: Header=BB0_24 Depth=2
	add x10, x3, x12
	lbu x10, 0 ( x10 )
	nop
	add x11, x10, x7
	lbu x11, 0 ( x11 )
	nop
	andi x11, x11, 3
	bne x11, x16, LBB0_28
LBB0_27:                                //    in Loop: Header=BB0_24 Depth=2
	addi x10, x10, 32
LBB0_28:                                //  %land.rhs9.i
                                        //    in Loop: Header=BB0_24 Depth=2
	bne x10, x9, LBB0_39
LBB0_29:                                //  %while.body46.i
                                        //    in Loop: Header=BB0_24 Depth=2
	addi x3, x3, 1
	bgtu x13, x3, LBB0_24
LBB0_30:                                //  %while.cond51.i.preheader
                                        //    in Loop: Header=BB0_20 Depth=1
	add x3, x17, x8
	addi x4, x4, 1
	add x10, x0, x15
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
LBB0_31:                                //  %while.cond51.i
                                        //    Parent Loop BB0_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x5, x0, x10
	bgeu x18, x5, LBB0_37
LBB0_32:                                //  %land.rhs55.i
                                        //    in Loop: Header=BB0_31 Depth=2
	add x7, x5, x3
	lbu x7, 0 ( x7 )
	nop
	add x9, x7, x4
	lbu x9, 0 ( x9 )
	nop
	andi x9, x9, 3
	bne x9, x16, LBB0_34
LBB0_33:                                //    in Loop: Header=BB0_31 Depth=2
	addi x7, x7, 32
LBB0_34:                                //  %land.rhs55.i
                                        //    in Loop: Header=BB0_31 Depth=2
	add x9, x5, x12
	lbu x9, -1 ( x9 )
	nop
	add x10, x9, x4
	lbu x10, 0 ( x10 )
	nop
	andi x10, x10, 3
	bne x10, x16, LBB0_36
LBB0_35:                                //    in Loop: Header=BB0_31 Depth=2
	addi x9, x9, 32
LBB0_36:                                //  %land.rhs55.i
                                        //    in Loop: Header=BB0_31 Depth=2
	addi x10, x5, -1
	beq x9, x7, LBB0_31
LBB0_37:                                //  %while.end99.i
                                        //    in Loop: Header=BB0_20 Depth=1
	addi x3, x18, 1
	bgtu x3, x5, LBB0_43
LBB0_38:                                //  %if.end.i
                                        //    in Loop: Header=BB0_20 Depth=1
	add x17, x11, x17
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_40 ( x0 )
LBB0_39:                                //  %if.else.i
                                        //    in Loop: Header=BB0_20 Depth=1
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	add x4, x17, x4
	add x3, x3, x4
	addi x17, x3, 1
	sw x14, 24 ( x2 )               //  4-byte Folded Spill
LBB0_40:                                //  %while.cond.backedge.i
                                        //    in Loop: Header=BB0_20 Depth=1
	sw x17, 28 ( x2 )               //  4-byte Folded Spill
	add x8, x13, x17
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x1, x3
	sub x12, x8, x1
	add x11, x0, x14
	call $memchr
	bgtu x8, x0, LBB0_42
LBB0_41:
	add x14, x0, x0
	jalr x0, LBB0_172 ( x0 )
LBB0_42:                                //  %while.cond.backedge.i
                                        //    in Loop: Header=BB0_20 Depth=1
	add x1, x0, x8
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	lw x13, 44 ( x2 )               //  4-byte Folded Reload
	add x14, x0, x0
	lw x15, 20 ( x2 )               //  4-byte Folded Reload
	lw x17, 28 ( x2 )               //  4-byte Folded Reload
	lw x18, 24 ( x2 )               //  4-byte Folded Reload
	beqz x10, LBB0_20
	jalr x0, LBB0_172 ( x0 )
LBB0_43:                                //  %cleanup.i
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x14, x17, x1
	jalr x0, LBB0_172 ( x0 )
LBB0_44:                                //  %if.else113.i
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x5
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	lw x4, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x4, x3
	add x3, x0, x5
	bgtu x1, x3, LBB0_46
LBB0_45:                                //  %if.else113.i
	add x1, x0, x3
LBB0_46:                                //  %if.else113.i
	addi x1, x1, 1
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	sw x1, 48 ( x2 )
	add x11, x0, x0
	slti x12, x0, 1
	call $memchr
	lw x12, 44 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x12, x0, LBB0_48
LBB0_47:
	add x14, x0, x0
	jalr x0, LBB0_172 ( x0 )
LBB0_48:                                //  %if.else113.i
	add x14, x0, x0
	bgtu x10, x0, LBB0_172
LBB0_49:                                //  %while.cond134.preheader.lr.ph.i
	lw x13, 20 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x12, x13, LBB0_60
LBB0_50:                                //  %while.cond134.preheader.i.preheader
	add x14, x0, x0
	lui x4, $__ctype_ptr__ >> 12 & 0xfffff
	add x1, x0, x12
	add x16, x0, x14
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	slti x15, x0, 1
LBB0_51:                                //  %while.cond134.preheader.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_52 Depth 2
	add x3, x16, x8
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x4, x28
	lw x4, 0 ( x4 )
	nop
	addi x4, x4, 1
	add x5, x0, x13
LBB0_52:                                //  %while.cond187.i
                                        //    Parent Loop BB0_51 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	beqz x5, LBB0_80
LBB0_53:                                //  %land.rhs190.i
                                        //    in Loop: Header=BB0_52 Depth=2
	add x7, x5, x3
	lbu x7, 0 ( x7 )
	nop
	add x9, x7, x4
	lbu x9, 0 ( x9 )
	nop
	andi x9, x9, 3
	bne x9, x15, LBB0_55
LBB0_54:                                //    in Loop: Header=BB0_52 Depth=2
	addi x7, x7, 32
LBB0_55:                                //  %land.rhs190.i
                                        //    in Loop: Header=BB0_52 Depth=2
	add x9, x5, x11
	lbu x9, -1 ( x9 )
	nop
	add x10, x9, x4
	lbu x10, 0 ( x10 )
	nop
	andi x10, x10, 3
	bne x10, x15, LBB0_57
LBB0_56:                                //    in Loop: Header=BB0_52 Depth=2
	addi x9, x9, 32
LBB0_57:                                //  %land.rhs190.i
                                        //    in Loop: Header=BB0_52 Depth=2
	addi x5, x5, -1
	beq x9, x7, LBB0_52
LBB0_58:                                //  %if.end240.i
                                        //    in Loop: Header=BB0_51 Depth=1
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x16, x3, x16
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x1, x3
	sw x16, 28 ( x2 )               //  4-byte Folded Spill
	add x8, x12, x16
	sub x12, x8, x1
	add x11, x0, x14
	call $memchr
	bgtu x8, x0, LBB0_81
LBB0_59:
	add x14, x0, x0
	jalr x0, LBB0_172 ( x0 )
LBB0_60:                                //  %while.cond134.preheader.us.i.preheader
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	nop
	add x17, x13, x11
	add x1, x13, x8
	add x14, x0, x0
	addi x18, x1, 1
	add x1, x0, x12
	add x16, x0, x14
	slti x15, x0, 1
	sw x17, 16 ( x2 )               //  4-byte Folded Spill
	sw x18, 12 ( x2 )               //  4-byte Folded Spill
LBB0_61:                                //  %while.cond134.preheader.us.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_62 Depth 2
                                        //      Child Loop BB0_68 Depth 2
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $__ctype_ptr__ >> 12 & 0xfffff
	or x3, x3, x28
	lw x3, 0 ( x3 )
	nop
	addi x3, x3, 1
	add x4, x0, x14
LBB0_62:                                //  %land.rhs137.us.i
                                        //    Parent Loop BB0_61 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x5, x4, x16
	add x7, x5, x18
	lbu x7, 0 ( x7 )
	nop
	add x9, x7, x3
	lbu x9, 0 ( x9 )
	nop
	andi x9, x9, 3
	bne x9, x15, LBB0_64
LBB0_63:                                //    in Loop: Header=BB0_62 Depth=2
	addi x7, x7, 32
LBB0_64:                                //  %land.rhs137.us.i
                                        //    in Loop: Header=BB0_62 Depth=2
	add x9, x4, x17
	lbu x9, 0 ( x9 )
	nop
	add x10, x9, x3
	lbu x10, 0 ( x10 )
	nop
	andi x10, x10, 3
	bne x10, x15, LBB0_66
LBB0_65:                                //    in Loop: Header=BB0_62 Depth=2
	addi x9, x9, 32
LBB0_66:                                //  %land.rhs137.us.i
                                        //    in Loop: Header=BB0_62 Depth=2
	beq x9, x7, LBB0_77
LBB0_67:                                //  %if.else242.us.i
                                        //    in Loop: Header=BB0_61 Depth=1
	addi x16, x5, 1
	jalr x0, LBB0_75 ( x0 )
LBB0_68:                                //  %while.cond187.us.i
                                        //    Parent Loop BB0_61 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	beqz x5, LBB0_80
LBB0_69:                                //  %land.rhs190.us.i
                                        //    in Loop: Header=BB0_68 Depth=2
	add x7, x5, x4
	lbu x7, 0 ( x7 )
	nop
	add x9, x7, x3
	lbu x9, 0 ( x9 )
	nop
	andi x9, x9, 3
	bne x9, x15, LBB0_71
LBB0_70:                                //    in Loop: Header=BB0_68 Depth=2
	addi x7, x7, 32
LBB0_71:                                //  %land.rhs190.us.i
                                        //    in Loop: Header=BB0_68 Depth=2
	add x9, x5, x11
	lbu x9, -1 ( x9 )
	nop
	add x10, x9, x3
	lbu x10, 0 ( x10 )
	nop
	andi x10, x10, 3
	bne x10, x15, LBB0_73
LBB0_72:                                //    in Loop: Header=BB0_68 Depth=2
	addi x9, x9, 32
LBB0_73:                                //  %land.rhs190.us.i
                                        //    in Loop: Header=BB0_68 Depth=2
	addi x5, x5, -1
	beq x9, x7, LBB0_68
LBB0_74:                                //  %if.end240.us.i
                                        //    in Loop: Header=BB0_61 Depth=1
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x16, x3, x16
LBB0_75:                                //  %while.cond123.backedge.us.i
                                        //    in Loop: Header=BB0_61 Depth=1
	sw x16, 28 ( x2 )               //  4-byte Folded Spill
	add x8, x12, x16
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x1, x3
	sub x12, x8, x1
	add x11, x0, x14
	call $memchr
	bgtu x8, x0, LBB0_79
LBB0_76:
	add x14, x0, x0
	jalr x0, LBB0_172 ( x0 )
LBB0_77:                                //  %while.body180.us.i
                                        //    in Loop: Header=BB0_62 Depth=2
	addi x4, x4, 1
	add x5, x4, x13
	bgtu x12, x5, LBB0_62
LBB0_78:                                //  %while.cond187.us.i.preheader
                                        //    in Loop: Header=BB0_61 Depth=1
	add x4, x16, x8
	add x5, x0, x13
	jalr x0, LBB0_68 ( x0 )
LBB0_79:                                //  %while.cond123.backedge.us.i
                                        //    in Loop: Header=BB0_61 Depth=1
	add x1, x0, x8
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	lw x12, 44 ( x2 )               //  4-byte Folded Reload
	add x14, x0, x0
	lw x13, 20 ( x2 )               //  4-byte Folded Reload
	slti x15, x0, 1
	lw x16, 28 ( x2 )               //  4-byte Folded Reload
	lw x17, 16 ( x2 )               //  4-byte Folded Reload
	lw x18, 12 ( x2 )               //  4-byte Folded Reload
	beqz x10, LBB0_61
	jalr x0, LBB0_172 ( x0 )
LBB0_80:                                //  %if.then238.i
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x14, x16, x1
	jalr x0, LBB0_172 ( x0 )
LBB0_81:                                //  %if.end240.i
                                        //    in Loop: Header=BB0_51 Depth=1
	add x1, x0, x8
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	lw x12, 44 ( x2 )               //  4-byte Folded Reload
	add x14, x0, x0
	lw x13, 20 ( x2 )               //  4-byte Folded Reload
	slti x15, x0, 1
	lw x16, 28 ( x2 )               //  4-byte Folded Reload
	lui x4, $__ctype_ptr__ >> 12 & 0xfffff
	beqz x10, LBB0_51
	jalr x0, LBB0_172 ( x0 )
LBB0_82:                                //  %for.cond1.preheader.i
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	lw x4, 28 ( x2 )                //  4-byte Folded Reload
	beqz x5, LBB0_87
LBB0_83:                                //  %for.body3.lr.ph.i
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	lui x1, $__ctype_ptr__ >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 0 ( x1 )
	slti x1, x0, 1
	addi x3, x3, 1
	add x5, x0, x10
LBB0_84:                                //  %for.body3.i
                                        //  =>This Inner Loop Header: Depth=1
	lbu x7, 0 ( x5 )
	nop
	add x9, x7, x3
	lbu x9, 0 ( x9 )
	nop
	andi x9, x9, 3
	bne x9, x1, LBB0_86
LBB0_85:                                //    in Loop: Header=BB0_84 Depth=1
	addi x7, x7, 32
LBB0_86:                                //  %for.body3.i
                                        //    in Loop: Header=BB0_84 Depth=1
	slli x7, x7, 2
	add x7, x7, x11
	sw x4, 0 ( x7 )
	addi x5, x5, 1
	addi x4, x4, -1
	xori x7, x4, -1
	bgtu x7, x0, LBB0_84
LBB0_87:                                //  %for.end16.i
	lw x1, 1072 ( x2 )
	nop
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	add x11, x1, x10
	sw x12, 16 ( x2 )               //  4-byte Folded Spill
	call $strncasecmp
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_126
LBB0_88:                                //  %while.cond.preheader.i76
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x3, x1
	add x11, x0, x0
	slti x12, x0, 1
	call $memchr
	lw x13, 44 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x13, x0, LBB0_92
LBB0_89:
	add x14, x0, x0
	jalr x0, LBB0_172 ( x0 )
LBB0_90:                                //  %if.end39
	addi x12, x2, 1072
	add x10, x0, x14
	call $critical_factorization
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	add x12, x0, x10
	add x1, x0, x0
	addi x11, x2, 48
LBB0_91:                                //  %for.body.i
                                        //  =>This Inner Loop Header: Depth=1
	addi x3, x1, 4
	add x1, x1, x11
	xori x4, x3, 1024
	sw x5, 0 ( x1 )
	add x1, x0, x3
	bgtu x4, x0, LBB0_91
	jalr x0, LBB0_82 ( x0 )
LBB0_92:                                //  %while.cond.preheader.i76
	add x14, x0, x0
	bgtu x10, x0, LBB0_172
LBB0_93:                                //  %while.body.lr.ph.i77
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x13, x1
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	add x14, x0, x0
	lw x15, 16 ( x2 )               //  4-byte Folded Reload
	nop
	sub x1, x0, x15
	sw x1, 4 ( x2 )                 //  4-byte Folded Spill
	add x19, x0, x14
	add x18, x0, x14
	add x1, x0, x13
LBB0_94:                                //  %while.body.i78
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_110 Depth 2
                                        //      Child Loop BB0_117 Depth 2
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $__ctype_ptr__ >> 12 & 0xfffff
	or x3, x3, x28
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x1, x4
	lw x3, 0 ( x3 )
	lbu x4, -1 ( x10 )
	addi x3, x3, 1
	add x5, x4, x3
	lbu x5, 0 ( x5 )
	nop
	andi x5, x5, 3
	slti x17, x0, 1
	bne x5, x17, LBB0_96
LBB0_95:                                //    in Loop: Header=BB0_94 Depth=1
	addi x4, x4, 32
LBB0_96:                                //  %while.body.i78
                                        //    in Loop: Header=BB0_94 Depth=1
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	addi x5, x2, 48
	slli x4, x4, 2
	add x4, x4, x5
	lw x4, 0 ( x4 )
	lw x16, 28 ( x2 )               //  4-byte Folded Reload
	beqz x4, LBB0_106
LBB0_97:                                //  %if.then53.i
                                        //    in Loop: Header=BB0_94 Depth=1
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x5, x4, LBB0_99
LBB0_98:                                //  %if.then53.i
                                        //    in Loop: Header=BB0_94 Depth=1
	add x3, x0, x4
LBB0_99:                                //  %if.then53.i
                                        //    in Loop: Header=BB0_94 Depth=1
	beq x19, x14, LBB0_101
LBB0_100:                               //  %if.then53.i
                                        //    in Loop: Header=BB0_94 Depth=1
	add x4, x0, x3
LBB0_101:                               //  %if.then53.i
                                        //    in Loop: Header=BB0_94 Depth=1
	add x18, x18, x4
LBB0_102:                               //  %while.cond.backedge.i83
                                        //    in Loop: Header=BB0_94 Depth=1
	sw x14, 20 ( x2 )               //  4-byte Folded Spill
LBB0_103:                               //  %while.cond.backedge.i83
                                        //    in Loop: Header=BB0_94 Depth=1
	sw x18, 24 ( x2 )               //  4-byte Folded Spill
	add x8, x13, x18
	sub x12, x8, x1
	add x11, x0, x14
	call $memchr
	bgtu x8, x0, LBB0_105
LBB0_104:
	add x14, x0, x0
	jalr x0, LBB0_172 ( x0 )
LBB0_105:                               //  %while.cond.backedge.i83
                                        //    in Loop: Header=BB0_94 Depth=1
	add x1, x0, x8
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	lw x13, 44 ( x2 )               //  4-byte Folded Reload
	add x14, x0, x0
	lw x15, 16 ( x2 )               //  4-byte Folded Reload
	lw x18, 24 ( x2 )               //  4-byte Folded Reload
	lw x19, 20 ( x2 )               //  4-byte Folded Reload
	beqz x10, LBB0_94
	jalr x0, LBB0_172 ( x0 )
LBB0_106:                               //  %if.end60.i
                                        //    in Loop: Header=BB0_94 Depth=1
	add x4, x0, x19
	bgtu x19, x15, LBB0_108
LBB0_107:                               //  %if.end60.i
                                        //    in Loop: Header=BB0_94 Depth=1
	add x4, x0, x15
LBB0_108:                               //  %if.end60.i
                                        //    in Loop: Header=BB0_94 Depth=1
	bgeu x4, x16, LBB0_116
LBB0_109:                               //  %land.rhs71.i.preheader
                                        //    in Loop: Header=BB0_94 Depth=1
	add x5, x18, x8
LBB0_110:                               //  %land.rhs71.i
                                        //    Parent Loop BB0_94 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x7, x4, x5
	lbu x7, 1 ( x7 )
	nop
	add x9, x7, x3
	lbu x9, 0 ( x9 )
	nop
	andi x9, x9, 3
	bne x9, x17, LBB0_112
LBB0_111:                               //    in Loop: Header=BB0_110 Depth=2
	addi x7, x7, 32
LBB0_112:                               //  %land.rhs71.i
                                        //    in Loop: Header=BB0_110 Depth=2
	add x9, x4, x12
	lbu x9, 0 ( x9 )
	nop
	add x11, x9, x3
	lbu x11, 0 ( x11 )
	nop
	andi x11, x11, 3
	bne x11, x17, LBB0_114
LBB0_113:                               //    in Loop: Header=BB0_110 Depth=2
	addi x9, x9, 32
LBB0_114:                               //  %land.rhs71.i
                                        //    in Loop: Header=BB0_110 Depth=2
	bne x9, x7, LBB0_125
LBB0_115:                               //  %while.body114.i
                                        //    in Loop: Header=BB0_110 Depth=2
	addi x4, x4, 1
	bgtu x16, x4, LBB0_110
LBB0_116:                               //  %while.cond121.i.preheader
                                        //    in Loop: Header=BB0_94 Depth=1
	add x4, x18, x8
	add x11, x0, x15
LBB0_117:                               //  %while.cond121.i
                                        //    Parent Loop BB0_94 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x5, x0, x11
	bgeu x19, x5, LBB0_123
LBB0_118:                               //  %land.rhs125.i
                                        //    in Loop: Header=BB0_117 Depth=2
	add x7, x5, x4
	lbu x7, 0 ( x7 )
	nop
	add x9, x7, x3
	lbu x9, 0 ( x9 )
	nop
	andi x9, x9, 3
	bne x9, x17, LBB0_120
LBB0_119:                               //    in Loop: Header=BB0_117 Depth=2
	addi x7, x7, 32
LBB0_120:                               //  %land.rhs125.i
                                        //    in Loop: Header=BB0_117 Depth=2
	add x9, x5, x12
	lbu x9, -1 ( x9 )
	nop
	add x11, x9, x3
	lbu x11, 0 ( x11 )
	nop
	andi x11, x11, 3
	bne x11, x17, LBB0_122
LBB0_121:                               //    in Loop: Header=BB0_117 Depth=2
	addi x9, x9, 32
LBB0_122:                               //  %land.rhs125.i
                                        //    in Loop: Header=BB0_117 Depth=2
	addi x11, x5, -1
	beq x9, x7, LBB0_117
LBB0_123:                               //  %while.end169.i
                                        //    in Loop: Header=BB0_94 Depth=1
	addi x3, x19, 1
	bgtu x3, x5, LBB0_171
LBB0_124:                               //  %if.end176.i
                                        //    in Loop: Header=BB0_94 Depth=1
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x18, x3, x18
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_103 ( x0 )
LBB0_125:                               //  %if.else.i88
                                        //    in Loop: Header=BB0_94 Depth=1
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	add x3, x18, x3
	add x3, x4, x3
	addi x18, x3, 1
	jalr x0, LBB0_102 ( x0 )
LBB0_126:                               //  %if.else185.i
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x5
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	lw x4, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x4, x3
	add x3, x0, x5
	bgtu x1, x3, LBB0_128
LBB0_127:                               //  %if.else185.i
	add x1, x0, x3
LBB0_128:                               //  %if.else185.i
	addi x1, x1, 1
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	sw x1, 1072 ( x2 )
	add x11, x0, x0
	slti x12, x0, 1
	call $memchr
	lw x13, 44 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x13, x0, LBB0_130
LBB0_129:
	add x14, x0, x0
	jalr x0, LBB0_172 ( x0 )
LBB0_130:                               //  %if.else185.i
	add x14, x0, x0
	bgtu x10, x0, LBB0_172
LBB0_131:                               //  %while.body207.lr.ph.i
	lw x15, 16 ( x2 )               //  4-byte Folded Reload
	lw x16, 28 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x16, x15, LBB0_146
LBB0_132:                               //  %while.body207.i.preheader
	add x14, x0, x0
	add x1, x0, x13
	add x18, x0, x14
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	addi x9, x2, 48
	slti x15, x0, 1
LBB0_133:                               //  %while.body207.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_137 Depth 2
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x1, x3
	lbu x4, -1 ( x10 )
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $__ctype_ptr__ >> 12 & 0xfffff
	or x3, x3, x28
	lw x3, 0 ( x3 )
	nop
	addi x3, x3, 1
	add x5, x4, x3
	lbu x5, 0 ( x5 )
	nop
	andi x5, x5, 3
	bne x5, x15, LBB0_135
LBB0_134:                               //    in Loop: Header=BB0_133 Depth=1
	addi x4, x4, 32
LBB0_135:                               //  %while.body207.i
                                        //    in Loop: Header=BB0_133 Depth=1
	lw x5, 32 ( x2 )                //  4-byte Folded Reload
	lw x7, 16 ( x2 )                //  4-byte Folded Reload
	slli x4, x4, 2
	add x4, x4, x9
	lw x4, 0 ( x4 )
	nop
	bgtu x4, x0, LBB0_144
LBB0_136:                               //  %while.cond290.i.preheader
                                        //    in Loop: Header=BB0_133 Depth=1
	add x4, x18, x5
	add x5, x0, x7
LBB0_137:                               //  %while.cond290.i
                                        //    Parent Loop BB0_133 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	beqz x5, LBB0_171
LBB0_138:                               //  %land.rhs293.i
                                        //    in Loop: Header=BB0_137 Depth=2
	add x7, x5, x4
	lbu x7, 0 ( x7 )
	nop
	add x9, x7, x3
	lbu x9, 0 ( x9 )
	nop
	andi x9, x9, 3
	bne x9, x15, LBB0_140
LBB0_139:                               //    in Loop: Header=BB0_137 Depth=2
	addi x7, x7, 32
LBB0_140:                               //  %land.rhs293.i
                                        //    in Loop: Header=BB0_137 Depth=2
	add x9, x5, x12
	lbu x9, -1 ( x9 )
	nop
	add x11, x9, x3
	lbu x11, 0 ( x11 )
	nop
	andi x11, x11, 3
	bne x11, x15, LBB0_142
LBB0_141:                               //    in Loop: Header=BB0_137 Depth=2
	addi x9, x9, 32
LBB0_142:                               //  %land.rhs293.i
                                        //    in Loop: Header=BB0_137 Depth=2
	addi x5, x5, -1
	beq x9, x7, LBB0_137
LBB0_143:                               //    in Loop: Header=BB0_133 Depth=1
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	nop
LBB0_144:                               //  %while.cond197.backedge.i
                                        //    in Loop: Header=BB0_133 Depth=1
	add x18, x18, x4
	sw x18, 24 ( x2 )               //  4-byte Folded Spill
	add x8, x13, x18
	sub x12, x8, x1
	add x11, x0, x14
	call $memchr
	beqz x10, LBB0_170
LBB0_145:
	add x14, x0, x0
	jalr x0, LBB0_172 ( x0 )
LBB0_146:                               //  %while.body207.us.i.preheader
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	nop
	add x19, x15, x12
	add x1, x15, x8
	add x14, x0, x0
	addi x20, x1, 1
	add x1, x0, x13
	add x18, x0, x14
	addi x7, x2, 48
	slti x17, x0, 1
	sw x19, 20 ( x2 )               //  4-byte Folded Spill
	sw x20, 12 ( x2 )               //  4-byte Folded Spill
LBB0_147:                               //  %while.body207.us.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_151 Depth 2
                                        //      Child Loop BB0_157 Depth 2
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x1, x3
	lbu x4, -1 ( x10 )
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $__ctype_ptr__ >> 12 & 0xfffff
	or x3, x3, x28
	lw x3, 0 ( x3 )
	nop
	addi x3, x3, 1
	add x5, x4, x3
	lbu x5, 0 ( x5 )
	nop
	andi x5, x5, 3
	bne x5, x17, LBB0_149
LBB0_148:                               //    in Loop: Header=BB0_147 Depth=1
	addi x4, x4, 32
LBB0_149:                               //  %while.body207.us.i
                                        //    in Loop: Header=BB0_147 Depth=1
	slli x4, x4, 2
	add x4, x4, x7
	lw x4, 0 ( x4 )
	nop
	bgtu x4, x0, LBB0_166
LBB0_150:                               //  %land.rhs239.us.i.preheader
                                        //    in Loop: Header=BB0_147 Depth=1
	add x4, x0, x14
LBB0_151:                               //  %land.rhs239.us.i
                                        //    Parent Loop BB0_147 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x5, x4, x18
	add x7, x5, x20
	lbu x7, 0 ( x7 )
	nop
	add x9, x7, x3
	lbu x9, 0 ( x9 )
	nop
	andi x9, x9, 3
	bne x9, x17, LBB0_153
LBB0_152:                               //    in Loop: Header=BB0_151 Depth=2
	addi x7, x7, 32
LBB0_153:                               //  %land.rhs239.us.i
                                        //    in Loop: Header=BB0_151 Depth=2
	add x9, x4, x19
	lbu x9, 0 ( x9 )
	nop
	add x11, x9, x3
	lbu x11, 0 ( x11 )
	nop
	andi x11, x11, 3
	bne x11, x17, LBB0_155
LBB0_154:                               //    in Loop: Header=BB0_151 Depth=2
	addi x9, x9, 32
LBB0_155:                               //  %land.rhs239.us.i
                                        //    in Loop: Header=BB0_151 Depth=2
	beq x9, x7, LBB0_164
LBB0_156:                               //  %if.else345.us.i
                                        //    in Loop: Header=BB0_147 Depth=1
	addi x18, x5, 1
	jalr x0, LBB0_167 ( x0 )
LBB0_157:                               //  %while.cond290.us.i
                                        //    Parent Loop BB0_147 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	beqz x5, LBB0_171
LBB0_158:                               //  %land.rhs293.us.i
                                        //    in Loop: Header=BB0_157 Depth=2
	add x7, x5, x4
	lbu x7, 0 ( x7 )
	nop
	add x9, x7, x3
	lbu x9, 0 ( x9 )
	nop
	andi x9, x9, 3
	bne x9, x17, LBB0_160
LBB0_159:                               //    in Loop: Header=BB0_157 Depth=2
	addi x7, x7, 32
LBB0_160:                               //  %land.rhs293.us.i
                                        //    in Loop: Header=BB0_157 Depth=2
	add x9, x5, x12
	lbu x9, -1 ( x9 )
	nop
	add x11, x9, x3
	lbu x11, 0 ( x11 )
	nop
	andi x11, x11, 3
	bne x11, x17, LBB0_162
LBB0_161:                               //    in Loop: Header=BB0_157 Depth=2
	addi x9, x9, 32
LBB0_162:                               //  %land.rhs293.us.i
                                        //    in Loop: Header=BB0_157 Depth=2
	addi x5, x5, -1
	beq x9, x7, LBB0_157
LBB0_163:                               //  %if.end343.us.i
                                        //    in Loop: Header=BB0_147 Depth=1
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	add x18, x3, x18
	jalr x0, LBB0_167 ( x0 )
LBB0_164:                               //  %while.body282.us.i
                                        //    in Loop: Header=BB0_151 Depth=2
	addi x4, x4, 1
	add x5, x4, x15
	bgtu x16, x5, LBB0_151
LBB0_165:                               //  %while.cond290.us.i.preheader
                                        //    in Loop: Header=BB0_147 Depth=1
	add x4, x18, x8
	add x5, x0, x15
	jalr x0, LBB0_157 ( x0 )
LBB0_166:                               //  %if.then232.us.i
                                        //    in Loop: Header=BB0_147 Depth=1
	add x18, x18, x4
LBB0_167:                               //  %while.cond197.backedge.us.i
                                        //    in Loop: Header=BB0_147 Depth=1
	sw x18, 24 ( x2 )               //  4-byte Folded Spill
	add x8, x13, x18
	sub x12, x8, x1
	add x11, x0, x14
	call $memchr
	bgtu x8, x0, LBB0_169
LBB0_168:
	add x14, x0, x0
	jalr x0, LBB0_172 ( x0 )
LBB0_169:                               //  %while.cond197.backedge.us.i
                                        //    in Loop: Header=BB0_147 Depth=1
	add x1, x0, x8
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	lw x13, 44 ( x2 )               //  4-byte Folded Reload
	add x14, x0, x0
	lw x15, 16 ( x2 )               //  4-byte Folded Reload
	addi x7, x2, 48
	lw x16, 28 ( x2 )               //  4-byte Folded Reload
	slti x17, x0, 1
	lw x18, 24 ( x2 )               //  4-byte Folded Reload
	lw x19, 20 ( x2 )               //  4-byte Folded Reload
	lw x20, 12 ( x2 )               //  4-byte Folded Reload
	beqz x10, LBB0_147
	jalr x0, LBB0_172 ( x0 )
LBB0_170:                               //  %while.cond197.backedge.i
                                        //    in Loop: Header=BB0_133 Depth=1
	add x1, x0, x8
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	lw x13, 44 ( x2 )               //  4-byte Folded Reload
	add x14, x0, x0
	addi x9, x2, 48
	slti x15, x0, 1
	lw x18, 24 ( x2 )               //  4-byte Folded Reload
	bgtu x8, x0, LBB0_133
	jalr x0, LBB0_172 ( x0 )
LBB0_171:                               //  %cleanup351.i
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x14, x18, x1
LBB0_172:                               //  %cleanup
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
	.size	$strcasestr, ($func_end0)-($strcasestr)
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
	slti x3, x0, 1
	bgtu x11, x3, LBB1_2
LBB1_1:                                 //  %while.end.thread
	sw x3, 0 ( x12 )
	not x5, x0
	add x4, x0, x5
	jalr x0, LBB1_35 ( x0 )
LBB1_2:                                 //  %while.body.lr.ph.lr.ph.lr.ph.lr.ph
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	lui x5, $__ctype_ptr__ >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x5, x28
	lw x7, 0 ( x3 )
	add x16, x0, x0
	not x4, x0
	slti x3, x0, 1
	addi x7, x7, 1
	add x15, x0, x3
LBB1_3:                                 //  %while.body.lr.ph.lr.ph.lr.ph
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_4 Depth 2
                                        //        Child Loop BB1_6 Depth 3
	add x14, x4, x10
	add x9, x0, x3
	add x13, x0, x16
LBB1_4:                                 //  %while.body.lr.ph
                                        //    Parent Loop BB1_3 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_6 Depth 3
	add x16, x0, x3
	jalr x0, LBB1_6 ( x0 )
LBB1_5:                                 //  %while.cond
                                        //    in Loop: Header=BB1_6 Depth=3
	addi x16, x16, 1
	add x15, x16, x13
	bgeu x15, x11, LBB1_17
LBB1_6:                                 //  %while.body
                                        //    Parent Loop BB1_3 Depth=1
                                        //      Parent Loop BB1_4 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x17, x15, x10
	lbu x17, 0 ( x17 )
	nop
	add x18, x17, x7
	lbu x18, 0 ( x18 )
	nop
	andi x18, x18, 3
	bne x18, x3, LBB1_8
LBB1_7:                                 //    in Loop: Header=BB1_6 Depth=3
	addi x17, x17, 32
LBB1_8:                                 //  %while.body
                                        //    in Loop: Header=BB1_6 Depth=3
	add x18, x16, x14
	lbu x18, 0 ( x18 )
	nop
	add x19, x18, x7
	lbu x19, 0 ( x19 )
	nop
	andi x19, x19, 3
	bne x19, x3, LBB1_10
LBB1_9:                                 //    in Loop: Header=BB1_6 Depth=3
	addi x18, x18, 32
LBB1_10:                                //  %while.body
                                        //    in Loop: Header=BB1_6 Depth=3
	andi x18, x18, 255
	andi x17, x17, 255
	bgeu x17, x18, LBB1_12
LBB1_11:                                //  %if.then
                                        //    in Loop: Header=BB1_4 Depth=2
	sub x9, x15, x4
	addi x16, x15, 1
	add x13, x0, x15
	add x15, x0, x16
	bgtu x11, x16, LBB1_4
	jalr x0, LBB1_17 ( x0 )
LBB1_12:                                //  %if.else
                                        //    in Loop: Header=BB1_6 Depth=3
	bne x17, x18, LBB1_15
LBB1_13:                                //  %if.then41
                                        //    in Loop: Header=BB1_6 Depth=3
	bne x9, x16, LBB1_5
LBB1_14:                                //  %if.else45
                                        //    in Loop: Header=BB1_4 Depth=2
	add x13, x9, x13
	addi x15, x13, 1
	bgtu x11, x15, LBB1_4
	jalr x0, LBB1_17 ( x0 )
LBB1_15:                                //  %if.else47
                                        //    in Loop: Header=BB1_3 Depth=1
	addi x16, x13, 1
	addi x15, x13, 2
	add x4, x0, x13
	bgtu x11, x15, LBB1_3
LBB1_16:
	add x4, x0, x13
	add x9, x0, x3
LBB1_17:                                //  %while.end
	sw x9, 0 ( x12 )
	sltiu x7, x11, 2
	beqz x7, LBB1_19
LBB1_18:
	not x5, x0
	jalr x0, LBB1_35 ( x0 )
LBB1_19:                                //  %while.body55.lr.ph.lr.ph.lr.ph.lr.ph
	add x14, x0, x0
	not x7, x0
	slti x3, x0, 1
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x5, x28
	lw x5, 0 ( x5 )
	nop
	addi x9, x5, 1
	add x16, x0, x3
LBB1_20:                                //  %while.body55.lr.ph.lr.ph.lr.ph
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_21 Depth 2
                                        //        Child Loop BB1_22 Depth 3
                                        //          Child Loop BB1_23 Depth 4
	add x13, x7, x10
	add x5, x0, x14
	add x14, x0, x3
LBB1_21:                                //  %while.body55.lr.ph.lr.ph
                                        //    Parent Loop BB1_20 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_22 Depth 3
                                        //          Child Loop BB1_23 Depth 4
	add x15, x0, x16
LBB1_22:                                //  %while.body55.lr.ph
                                        //    Parent Loop BB1_20 Depth=1
                                        //      Parent Loop BB1_21 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB1_23 Depth 4
	add x16, x0, x3
LBB1_23:                                //  %while.body55
                                        //    Parent Loop BB1_20 Depth=1
                                        //      Parent Loop BB1_21 Depth=2
                                        //        Parent Loop BB1_22 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	add x17, x16, x13
	lbu x17, 0 ( x17 )
	nop
	add x18, x17, x9
	lbu x18, 0 ( x18 )
	nop
	andi x18, x18, 3
	bne x18, x3, LBB1_25
LBB1_24:                                //    in Loop: Header=BB1_23 Depth=4
	addi x17, x17, 32
LBB1_25:                                //  %while.body55
                                        //    in Loop: Header=BB1_23 Depth=4
	add x18, x15, x10
	lbu x18, 0 ( x18 )
	nop
	add x19, x18, x9
	lbu x19, 0 ( x19 )
	nop
	andi x19, x19, 3
	bne x19, x3, LBB1_27
LBB1_26:                                //    in Loop: Header=BB1_23 Depth=4
	addi x18, x18, 32
LBB1_27:                                //  %while.body55
                                        //    in Loop: Header=BB1_23 Depth=4
	andi x18, x18, 255
	andi x17, x17, 255
	bgeu x17, x18, LBB1_31
LBB1_28:                                //  %if.then102
                                        //    in Loop: Header=BB1_21 Depth=2
	sub x14, x15, x7
	addi x16, x15, 1
	add x5, x0, x15
	bgtu x11, x16, LBB1_21
	jalr x0, LBB1_30 ( x0 )
LBB1_29:                                //  %while.cond51
                                        //    in Loop: Header=BB1_23 Depth=4
	addi x16, x16, 1
	add x15, x16, x5
	bgtu x11, x15, LBB1_23
LBB1_30:
	add x3, x0, x14
	add x5, x0, x7
	jalr x0, LBB1_35 ( x0 )
LBB1_31:                                //  %if.else105
                                        //    in Loop: Header=BB1_23 Depth=4
	bne x18, x17, LBB1_34
LBB1_32:                                //  %if.then110
                                        //    in Loop: Header=BB1_23 Depth=4
	bne x14, x16, LBB1_29
LBB1_33:                                //  %if.else115
                                        //    in Loop: Header=BB1_22 Depth=3
	add x5, x14, x5
	addi x15, x5, 1
	bgtu x11, x15, LBB1_22
	jalr x0, LBB1_30 ( x0 )
LBB1_34:                                //  %if.else118
                                        //    in Loop: Header=BB1_20 Depth=1
	addi x14, x5, 1
	addi x16, x5, 2
	add x7, x0, x5
	bgtu x11, x16, LBB1_20
LBB1_35:                                //  %while.end122
	addi x10, x4, 1
	addi x4, x5, 1
	bgtu x10, x4, LBB1_37
LBB1_36:                                //  %if.end129
	sw x3, 0 ( x12 )
	add x10, x0, x4
LBB1_37:                                //  %cleanup
	ret
$func_end1:
	.size	$critical_factorization, ($func_end1)-($critical_factorization)
	.cfi_endproc

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
