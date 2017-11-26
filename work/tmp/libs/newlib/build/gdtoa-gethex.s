	.text
	.file	"gdtoa-gethex.bc"
	.globl	$__gethex
	.type	$__gethex,@function
$__gethex:                              //  @__gethex
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -88
$cfi2:
	.cfi_adjust_cfa_offset 88
	sw x1, 84 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 76 ( x2 )                //  4-byte Folded Spill
	sw x15, 8 ( x2 )                //  4-byte Folded Spill
	sw x14, 20 ( x2 )               //  4-byte Folded Spill
	sw x13, 12 ( x2 )               //  4-byte Folded Spill
	sw x12, 40 ( x2 )               //  4-byte Folded Spill
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	call $_localeconv_r
	lw x8, 0 ( x10 )
	nop
	add x10, x0, x8
	call $strlen
	add x12, x0, x10
	addi x11, x12, -1
	sw x8, 64 ( x2 )                //  4-byte Folded Spill
	add x1, x11, x8
	not x9, x0
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	lw x8, 0 ( x3 )
	lb x7, 0 ( x1 )
LBB0_1:                                 //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	add x1, x9, x8
	lbu x1, 3 ( x1 )
	addi x9, x9, 1
	xori x3, x1, 48
	beqz x3, LBB0_1
LBB0_2:                                 //  %while.end
	ori x28, x0, $__hexdig & 0xfff
	slli x28, x28, 20
	lui x5, $__hexdig >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x5, x28
	add x3, x3, x1
	lbu x3, 0 ( x3 )
	add x4, x9, x8
	addi x10, x4, 2
	sw x12, 56 ( x2 )               //  4-byte Folded Spill
	sw x7, 16 ( x2 )                //  4-byte Folded Spill
	sw x9, 44 ( x2 )                //  4-byte Folded Spill
	sw x11, 68 ( x2 )               //  4-byte Folded Spill
	beqz x3, LBB0_4
LBB0_3:
	add x11, x0, x0
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB0_11 ( x0 )
LBB0_4:                                 //  %if.then
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
	sw x10, 60 ( x2 )               //  4-byte Folded Spill
	call $strncmp
	add x7, x0, x0
	slti x1, x0, 1
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	beqz x10, LBB0_6
LBB0_5:
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x1
	jalr x0, LBB0_23 ( x0 )
LBB0_6:                                 //  %if.end
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x8
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x1
	ori x28, x0, $__hexdig & 0xfff
	lbu x1, 2 ( x3 )
	slli x28, x28, 20
	srli x28, x28, 20
	lui x5, $__hexdig >> 12 & 0xfffff
	or x4, x5, x28
	add x4, x4, x1
	lbu x4, 0 ( x4 )
	addi x11, x3, 2
	beqz x4, LBB0_23
LBB0_7:                                 //  %while.cond16.preheader
	xori x3, x1, 48
	add x10, x0, x11
	bgtu x3, x0, LBB0_10
LBB0_8:                                 //  %while.cond16.while.cond16_crit_edge.preheader
	add x10, x0, x11
LBB0_9:                                 //  %while.cond16.while.cond16_crit_edge
                                        //  =>This Inner Loop Header: Depth=1
	lbu x1, 1 ( x10 )
	addi x10, x10, 1
	xori x3, x1, 48
	beqz x3, LBB0_9
LBB0_10:                                //  %while.end21
	ori x28, x0, $__hexdig & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x5, x28
	add x3, x3, x1
	lbu x3, 0 ( x3 )
	slti x4, x0, 1
	sw x4, 44 ( x2 )                //  4-byte Folded Spill
	seqz x3, x3
	andi x3, x3, 1
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	lw x12, 56 ( x2 )               //  4-byte Folded Reload
LBB0_11:                                //  %while.cond28.preheader
	sw x11, 72 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, $__hexdig & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x5, x28
	add x1, x3, x1
	lbu x1, 0 ( x1 )
	add x8, x0, x10
	beqz x1, LBB0_14
LBB0_12:                                //  %while.cond28.while.cond28_crit_edge.preheader
	add x8, x0, x10
LBB0_13:                                //  %while.cond28.while.cond28_crit_edge
                                        //  =>This Inner Loop Header: Depth=1
	ori x28, x0, $__hexdig & 0xfff
	lbu x1, 1 ( x8 )
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x5, x28
	add x1, x3, x1
	lbu x1, 0 ( x1 )
	addi x8, x8, 1
	bgtu x1, x0, LBB0_13
LBB0_14:                                //  %while.end34
	sw x10, 60 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
	nop
	call $strncmp
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_16
LBB0_15:
	add x11, x0, x8
	jalr x0, LBB0_20 ( x0 )
LBB0_16:                                //  %while.end34
	beqz x10, LBB0_18
LBB0_17:
	add x11, x0, x8
	jalr x0, LBB0_20 ( x0 )
LBB0_18:                                //  %if.then39
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x1, x8
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x8
	lui x5, $__hexdig >> 12 & 0xfffff
LBB0_19:                                //  %while.cond41
                                        //  =>This Inner Loop Header: Depth=1
	ori x28, x0, $__hexdig & 0xfff
	lbu x3, 1 ( x11 )
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x5, x28
	add x3, x4, x3
	lbu x3, 0 ( x3 )
	addi x11, x11, 1
	bgtu x3, x0, LBB0_19
LBB0_20:                                //  %if.end48
	bgtu x1, x0, LBB0_22
LBB0_21:
	add x7, x0, x0
	jalr x0, LBB0_23 ( x0 )
LBB0_22:                                //  %if.then50
	sub x1, x11, x1
	slli x1, x1, 2
	sub x7, x0, x1
LBB0_23:                                //  %pcheck
	lbu x1, 0 ( x11 )
	nop
	ori x1, x1, 32
	xori x1, x1, 112
	beqz x1, LBB0_25
LBB0_24:
	add x8, x0, x11
	jalr x0, LBB0_36 ( x0 )
LBB0_25:                                //  %sw.bb
	lbu x1, 1 ( x11 )
	add x10, x0, x0
	xori x3, x1, 43
	beqz x3, LBB0_29
LBB0_26:                                //  %sw.bb
	xori x3, x1, 45
	beqz x3, LBB0_28
LBB0_27:
	slti x3, x0, 1
	lui x9, $__hexdig >> 12 & 0xfffff
	jalr x0, LBB0_30 ( x0 )
LBB0_28:                                //  %sw.bb56
	slti x10, x0, 1
LBB0_29:                                //  %sw.bb57
	lui x9, $__hexdig >> 12 & 0xfffff
	addi x3, x0, 2
	lb x1, 2 ( x11 )
LBB0_30:                                //  %sw.epilog
	ori x28, x0, $__hexdig & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	andi x1, x1, 255
	or x4, x9, x28
	add x1, x4, x1
	lbu x1, 0 ( x1 )
	addi x4, x0, 24
	addi x5, x1, -1
	andi x5, x5, 255
	bgtu x5, x4, LBB0_24
LBB0_31:                                //  %if.end67
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	sw x7, 24 ( x2 )                //  4-byte Folded Spill
	sw x11, 72 ( x2 )               //  4-byte Folded Spill
	add x3, x3, x11
	ori x28, x0, $__hexdig & 0xfff
	lbu x5, 1 ( x3 )
	slli x28, x28, 20
	srli x28, x28, 20
	or x7, x9, x28
	add x5, x7, x5
	lb x5, 0 ( x5 )
	addi x8, x3, 1
	addi x10, x1, -16
	addi x3, x5, -1
	andi x3, x3, 255
	bgtu x3, x4, LBB0_33
LBB0_32:                                //  %while.body78
                                        //  =>This Inner Loop Header: Depth=1
	sw x5, 68 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 10
	call $__mulsi3
	ori x28, x0, $__hexdig & 0xfff
	lbu x1, 1 ( x8 )
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $__hexdig >> 12 & 0xfffff
	or x3, x3, x28
	add x1, x3, x1
	lb x3, 0 ( x1 )
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 255
	add x1, x10, x1
	addi x8, x8, 1
	addi x4, x3, -1
	andi x4, x4, 255
	sltiu x4, x4, 25
	addi x10, x1, -16
	add x5, x0, x3
	bgtu x4, x0, LBB0_32
LBB0_33:                                //  %while.end80
	add x3, x0, x0
	lw x4, 32 ( x2 )                //  4-byte Folded Reload
	nop
	beq x4, x3, LBB0_35
LBB0_34:                                //  %while.end80
	addi x3, x0, 16
	sub x10, x3, x1
LBB0_35:                                //  %while.end80
	lw x7, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x7, x7, x10
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
LBB0_36:                                //  %sw.epilog86
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	sw x8, 0 ( x1 )
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_39
LBB0_37:                                //  %if.then88
	add x8, x0, x0
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	bne x1, x8, LBB0_162
LBB0_38:                                //  %if.then88
	addi x8, x0, 6
	jalr x0, LBB0_162 ( x0 )
LBB0_39:                                //  %if.end90
	sw x7, 24 ( x2 )                //  4-byte Folded Spill
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	not x1, x1
	add x8, x0, x11
	add x1, x1, x11
	slti x3, x1, 8
	add x11, x0, x0
	bgtu x3, x0, LBB0_42
LBB0_40:                                //  %for.body.preheader
	add x11, x0, x0
	addi x3, x0, 15
LBB0_41:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x4, x0, x1
	srli x1, x4, 1
	addi x11, x11, 1
	bgtu x4, x3, LBB0_41
LBB0_42:                                //  %for.end
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $_Balloc
	addi x1, x10, 20
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	lw x12, 56 ( x2 )               //  4-byte Folded Reload
	lw x5, 60 ( x2 )                //  4-byte Folded Reload
	add x7, x0, x8
	add x9, x0, x0
	bgeu x5, x7, LBB0_54
LBB0_43:                                //  %while.body102.lr.ph.lr.ph
	slti x1, x0, 1
	add x9, x0, x0
	sub x1, x1, x12
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	sub x1, x0, x12
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 255
	sw x1, 68 ( x2 )                //  4-byte Folded Spill
	add x4, x0, x9
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
LBB0_44:                                //  %while.body102.lr.ph
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_45 Depth 2
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x7
LBB0_45:                                //  %while.body102
                                        //    Parent Loop BB0_44 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x3, -1 ( x1 )
	addi x7, x1, -1
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	nop
	bne x3, x4, LBB0_50
LBB0_46:                                //  %land.lhs.true108
                                        //    in Loop: Header=BB0_45 Depth=2
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x3, x1
	bgtu x5, x10, LBB0_50
LBB0_47:                                //  %land.lhs.true113
                                        //    in Loop: Header=BB0_45 Depth=2
	sw x7, 72 ( x2 )                //  4-byte Folded Spill
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x9
	call $strncmp
	add x9, x0, x8
	lw x7, 72 ( x2 )                //  4-byte Folded Reload
	lw x5, 60 ( x2 )                //  4-byte Folded Reload
	lw x12, 56 ( x2 )               //  4-byte Folded Reload
	bgtu x10, x0, LBB0_50
LBB0_48:                                //  %if.then120
                                        //    in Loop: Header=BB0_45 Depth=2
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x7
	bgtu x1, x5, LBB0_45
LBB0_49:
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_54 ( x0 )
LBB0_50:                                //  %if.end124
                                        //    in Loop: Header=BB0_44 Depth=1
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	xori x1, x3, 32
	beqz x1, LBB0_52
LBB0_51:                                //    in Loop: Header=BB0_44 Depth=1
	add x1, x0, x3
	jalr x0, LBB0_53 ( x0 )
LBB0_52:                                //  %if.then127
                                        //    in Loop: Header=BB0_44 Depth=1
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sw x9, 0 ( x1 )
	addi x1, x1, 4
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	add x9, x0, x1
LBB0_53:                                //  %if.end129
                                        //    in Loop: Header=BB0_44 Depth=1
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	ori x28, x0, $__hexdig & 0xfff
	lbu x3, 0 ( x7 )
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, $__hexdig >> 12 & 0xfffff
	or x4, x4, x28
	add x3, x4, x3
	lbu x3, 0 ( x3 )
	addi x4, x1, 4
	andi x3, x3, 15
	sll x1, x3, x1
	or x9, x9, x1
	bgtu x7, x5, LBB0_44
LBB0_54:                                //  %while.end135
	lw x4, 28 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x4, 4
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	srai x3, x1, 2
	sw x9, 0 ( x4 )
	sw x3, 16 ( x10 )
	slli x8, x1, 3
	add x10, x0, x9
	call $__hi0bits
	lw x16, 40 ( x2 )               //  4-byte Folded Reload
	nop
	lw x17, 0 ( x16 )
	sub x1, x8, x10
	ble x1, x17, LBB0_78
LBB0_55:                                //  %if.then150
	sw x17, 72 ( x2 )               //  4-byte Folded Spill
	sub x8, x1, x17
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__any_on
	bgtu x10, x0, LBB0_57
LBB0_56:
	add x18, x0, x0
	lw x16, 40 ( x2 )               //  4-byte Folded Reload
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	lw x17, 72 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_64 ( x0 )
LBB0_57:                                //  %if.then154
	addi x1, x8, -1
	srai x3, x1, 5
	slli x3, x3, 2
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x5
	lw x3, 20 ( x3 )
	andi x4, x1, 31
	slti x18, x0, 1
	sll x4, x18, x4
	and x3, x4, x3
	lw x16, 40 ( x2 )               //  4-byte Folded Reload
	add x10, x0, x5
	lw x17, 72 ( x2 )               //  4-byte Folded Reload
	beqz x3, LBB0_64
LBB0_58:                                //  %if.then162
	slti x1, x1, 2
	beqz x1, LBB0_60
LBB0_59:
	addi x18, x0, 2
	jalr x0, LBB0_64 ( x0 )
LBB0_60:                                //  %land.lhs.true165
	addi x11, x8, -2
	call $__any_on
	add x1, x0, x0
	bne x10, x1, LBB0_62
LBB0_61:
	addi x18, x0, 2
	jalr x0, LBB0_63 ( x0 )
LBB0_62:                                //  %land.lhs.true165
	addi x18, x0, 3
LBB0_63:                                //  %land.lhs.true165
	lw x16, 40 ( x2 )               //  4-byte Folded Reload
	lw x17, 72 ( x2 )               //  4-byte Folded Reload
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_64:                                //  %if.end172
	lw x3, 16 ( x10 )
	srai x1, x8, 5
	lw x5, 32 ( x2 )                //  4-byte Folded Reload
	ble x3, x1, LBB0_75
LBB0_65:                                //  %if.then.i
	addi x7, x10, 20
	slli x3, x3, 2
	andi x5, x8, 31
	slli x1, x1, 2
	add x3, x3, x7
	lw x4, 32 ( x2 )                //  4-byte Folded Reload
	beqz x5, LBB0_74
LBB0_66:                                //  %if.then3.i
	add x4, x1, x7
	lw x7, 0 ( x4 )
	addi x9, x4, 4
	srl x4, x7, x5
	bgtu x3, x9, LBB0_68
LBB0_67:
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_71 ( x0 )
LBB0_68:                                //  %while.body.i.preheader
	addi x7, x0, 32
	sub x7, x7, x5
	addi x9, x10, 24
LBB0_69:                                //  %while.body.i
                                        //  =>This Inner Loop Header: Depth=1
	add x11, x9, x1
	lw x12, 0 ( x11 )
	addi x10, x9, 4
	add x13, x1, x10
	sll x12, x12, x7
	or x4, x4, x12
	sw x4, -4 ( x9 )
	lw x4, 0 ( x11 )
	nop
	srl x4, x4, x5
	add x9, x0, x10
	bgtu x3, x13, LBB0_69
LBB0_70:                                //  %while.end.i.loopexit
	addi x1, x10, -4
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
LBB0_71:                                //  %while.end.i
	add x3, x0, x0
	add x5, x0, x1
	beq x4, x3, LBB0_73
LBB0_72:                                //  %while.end.i
	addi x5, x1, 4
LBB0_73:                                //  %while.end.i
	sw x4, 0 ( x1 )
	jalr x0, LBB0_75 ( x0 )
LBB0_74:                                //  %while.body14.i
                                        //  =>This Inner Loop Header: Depth=1
	add x5, x4, x1
	lw x7, 0 ( x5 )
	addi x5, x4, 4
	add x9, x1, x5
	sw x7, 0 ( x4 )
	add x4, x0, x5
	bgtu x3, x9, LBB0_74
LBB0_75:                                //  %if.end19.i
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x5, x1
	srai x1, x1, 2
	sw x1, 16 ( x10 )
	bgtu x1, x0, LBB0_77
LBB0_76:                                //  %if.then24.i
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x0, 0 ( x1 )
LBB0_77:                                //  %rshift.exit
	lw x7, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x7, x7, x8
	jalr x0, LBB0_81 ( x0 )
LBB0_78:                                //  %if.else
	add x18, x0, x0
	bgt x17, x1, LBB0_80
LBB0_79:
	lw x7, 24 ( x2 )                //  4-byte Folded Reload
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_81 ( x0 )
LBB0_80:                                //  %if.then176
	sub x8, x17, x1
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	sw x17, 72 ( x2 )               //  4-byte Folded Spill
	call $__lshift
	add x18, x0, x0
	lw x17, 72 ( x2 )               //  4-byte Folded Reload
	lw x16, 40 ( x2 )               //  4-byte Folded Reload
	lw x7, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sub x7, x7, x8
	addi x1, x10, 20
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
LBB0_81:                                //  %if.end183
	lw x1, 8 ( x16 )
	nop
	ble x7, x1, LBB0_83
LBB0_82:
	add x11, x0, x10
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $_Bfree
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x0, 0 ( x1 )
	addi x8, x0, 163
	jalr x0, LBB0_162 ( x0 )
LBB0_83:                                //  %if.end187
	lw x1, 4 ( x16 )
	nop
	bgt x1, x7, LBB0_85
LBB0_84:
	slti x8, x0, 1
	jalr x0, LBB0_118 ( x0 )
LBB0_85:                                //  %if.then190
	sub x19, x1, x7
	bgt x17, x19, LBB0_97
LBB0_86:                                //  %if.then195
	lw x3, 12 ( x16 )
	add x8, x0, x10
	xori x4, x3, 3
	beqz x4, LBB0_93
LBB0_87:                                //  %if.then195
	xori x4, x3, 2
	beqz x4, LBB0_95
LBB0_88:                                //  %if.then195
	xori x3, x3, 1
	bgtu x3, x0, LBB0_96
LBB0_89:                                //  %sw.bb196
	bne x17, x19, LBB0_96
LBB0_90:                                //  %land.lhs.true199
	slti x3, x17, 2
	bgtu x3, x0, LBB0_94
LBB0_91:                                //  %lor.lhs.false202
	addi x11, x17, -1
	add x10, x0, x8
	call $__any_on
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB0_96
LBB0_92:                                //  %lor.lhs.false202.one_bit_crit_edge
	lw x1, 4 ( x1 )
	jalr x0, LBB0_94 ( x0 )
LBB0_93:                                //  %sw.bb212
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	beqz x3, LBB0_96
LBB0_94:                                //  %one_bit
	slti x3, x0, 1
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x4 )
	sw x3, 16 ( x8 )
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 0 ( x1 )
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x8, 0 ( x1 )
	addi x8, x0, 98
	jalr x0, LBB0_162 ( x0 )
LBB0_95:                                //  %sw.bb208
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	beqz x3, LBB0_94
LBB0_96:                                //  %sw.epilog219
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $_Bfree
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x0, 0 ( x1 )
	addi x8, x0, 80
	jalr x0, LBB0_162 ( x0 )
LBB0_97:                                //  %if.end220
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	slti x4, x0, 1
	addi x8, x19, -1
	add x10, x0, x4
	bgtu x18, x0, LBB0_101
LBB0_98:                                //  %if.else224
	slti x1, x19, 2
	beqz x1, LBB0_100
LBB0_99:
	add x10, x0, x0
	jalr x0, LBB0_101 ( x0 )
LBB0_100:                               //  %if.then227
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	sw x17, 72 ( x2 )               //  4-byte Folded Spill
	sw x19, 68 ( x2 )               //  4-byte Folded Spill
	call $__any_on
	slti x4, x0, 1
	lw x19, 68 ( x2 )               //  4-byte Folded Reload
	lw x17, 72 ( x2 )               //  4-byte Folded Reload
	lw x16, 40 ( x2 )               //  4-byte Folded Reload
LBB0_101:                               //  %if.end230
	srai x1, x8, 5
	slli x1, x1, 2
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	lw x1, 0 ( x1 )
	andi x3, x8, 31
	sll x4, x4, x3
	add x3, x0, x0
	and x1, x4, x1
	bne x1, x3, LBB0_103
LBB0_102:
	add x18, x0, x10
	jalr x0, LBB0_104 ( x0 )
LBB0_103:                               //  %if.end230
	ori x18, x10, 2
LBB0_104:                               //  %if.end230
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x4, 20
	lw x5, 16 ( x4 )
	srai x4, x19, 5
	add x9, x0, x1
	ble x5, x4, LBB0_115
LBB0_105:                               //  %if.then.i572
	lw x7, 44 ( x2 )                //  4-byte Folded Reload
	nop
	addi x10, x7, 20
	slli x5, x5, 2
	andi x9, x19, 31
	slli x4, x4, 2
	add x5, x5, x10
	add x7, x0, x1
	beqz x9, LBB0_114
LBB0_106:                               //  %if.then3.i578
	add x7, x4, x10
	lw x10, 0 ( x7 )
	addi x11, x7, 4
	srl x7, x10, x9
	bgtu x5, x11, LBB0_108
LBB0_107:
	add x4, x0, x1
	jalr x0, LBB0_111 ( x0 )
LBB0_108:                               //  %while.body.i589.preheader
	addi x10, x0, 32
	sub x10, x10, x9
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	nop
	addi x11, x11, 24
LBB0_109:                               //  %while.body.i589
                                        //  =>This Inner Loop Header: Depth=1
	add x13, x11, x4
	lw x14, 0 ( x13 )
	addi x12, x11, 4
	add x15, x4, x12
	sll x14, x14, x10
	or x7, x7, x14
	sw x7, -4 ( x11 )
	lw x7, 0 ( x13 )
	nop
	srl x7, x7, x9
	add x11, x0, x12
	bgtu x5, x15, LBB0_109
LBB0_110:                               //  %while.end.i595.loopexit
	addi x4, x12, -4
LBB0_111:                               //  %while.end.i595
	add x9, x0, x4
	beq x7, x3, LBB0_113
LBB0_112:                               //  %while.end.i595
	addi x9, x4, 4
LBB0_113:                               //  %while.end.i595
	sw x7, 0 ( x4 )
	jalr x0, LBB0_115 ( x0 )
LBB0_114:                               //  %while.body14.i601
                                        //  =>This Inner Loop Header: Depth=1
	add x3, x7, x4
	lw x3, 0 ( x3 )
	addi x9, x7, 4
	add x10, x4, x9
	sw x3, 0 ( x7 )
	add x7, x0, x9
	bgtu x5, x10, LBB0_114
LBB0_115:                               //  %if.end19.i608
	sub x3, x9, x1
	srai x3, x3, 2
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	nop
	sw x3, 16 ( x10 )
	bgtu x3, x0, LBB0_117
LBB0_116:                               //  %if.then24.i609
	sw x0, 0 ( x1 )
LBB0_117:                               //  %rshift.exit610
	sub x17, x17, x19
	addi x8, x0, 2
	lw x7, 4 ( x16 )
LBB0_118:                               //  %if.end242
	beqz x18, LBB0_126
LBB0_119:                               //  %if.then244
	lw x1, 12 ( x16 )
	nop
	xori x3, x1, 3
	bgtu x3, x0, LBB0_121
LBB0_120:
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	jalr x0, LBB0_128 ( x0 )
LBB0_121:                               //  %if.then244
	xori x3, x1, 2
	beqz x3, LBB0_127
LBB0_122:                               //  %if.then244
	xori x1, x1, 1
	bgtu x1, x0, LBB0_125
LBB0_123:                               //  %sw.bb246
	andi x1, x18, 2
	beqz x1, LBB0_125
LBB0_124:                               //  %land.lhs.true249
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x1 )
	nop
	or x1, x18, x1
	andi x1, x1, 1
	bgtu x1, x0, LBB0_129
LBB0_125:                               //  %if.else308
	ori x8, x8, 16
LBB0_126:                               //  %if.end311
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_161 ( x0 )
LBB0_127:                               //  %sw.bb257
	slti x1, x0, 1
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	sub x3, x1, x3
	add x1, x0, x3
LBB0_128:                               //  %sw.epilog260
	beqz x1, LBB0_125
LBB0_129:                               //  %if.then262
	lw x11, 16 ( x10 )
	addi x1, x10, 20
	slli x9, x11, 2
	add x3, x9, x1
LBB0_130:                               //  %do.body.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x4, 0 ( x1 )
	nop
	xori x5, x4, -1
	beqz x5, LBB0_132
LBB0_131:                               //  %if.then.i563
	addi x3, x4, 1
	sw x3, 0 ( x1 )
	jalr x0, LBB0_137 ( x0 )
LBB0_132:                               //  %if.end.i
                                        //    in Loop: Header=BB0_130 Depth=1
	addi x4, x1, 4
	sw x0, 0 ( x1 )
	add x1, x0, x4
	bgtu x3, x4, LBB0_130
LBB0_133:                               //  %do.end.i
	lw x1, 8 ( x10 )
	nop
	ble x1, x11, LBB0_135
LBB0_134:
	add x1, x0, x11
	jalr x0, LBB0_136 ( x0 )
LBB0_135:                               //  %if.then4.i
	lw x1, 4 ( x10 )
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x3
	sw x11, 64 ( x2 )               //  4-byte Folded Spill
	addi x11, x1, 1
	sw x7, 24 ( x2 )                //  4-byte Folded Spill
	sw x17, 72 ( x2 )               //  4-byte Folded Spill
	sw x9, 68 ( x2 )                //  4-byte Folded Spill
	call $_Balloc
	sw x10, 60 ( x2 )               //  4-byte Folded Spill
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 16 ( x3 )
	addi x10, x10, 12
	addi x11, x3, 12
	slli x1, x1, 2
	addi x12, x1, 8
	call $memcpy
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $_Bfree
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
	lw x9, 68 ( x2 )                //  4-byte Folded Reload
	lw x17, 72 ( x2 )               //  4-byte Folded Reload
	lw x7, 24 ( x2 )                //  4-byte Folded Reload
	lw x16, 40 ( x2 )               //  4-byte Folded Reload
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 16 ( x3 )
	add x10, x0, x3
LBB0_136:                               //  %if.end9.i
	slli x3, x1, 2
	addi x1, x1, 1
	add x3, x3, x10
	slti x4, x0, 1
	sw x1, 16 ( x10 )
	sw x4, 20 ( x3 )
LBB0_137:                               //  %increment.exit
	xori x1, x8, 2
	bgtu x1, x0, LBB0_142
LBB0_138:                               //  %if.then269
	lw x1, 0 ( x16 )
	nop
	addi x1, x1, -1
	beq x17, x1, LBB0_140
LBB0_139:
	addi x8, x0, 2
	jalr x0, LBB0_159 ( x0 )
LBB0_140:                               //  %land.lhs.true274
	srai x1, x17, 5
	slli x1, x1, 2
	add x1, x1, x10
	lw x1, 20 ( x1 )
	andi x3, x17, 31
	slti x8, x0, 1
	sll x3, x8, x3
	and x1, x3, x1
	add x3, x0, x0
	bne x1, x3, LBB0_159
LBB0_141:
	addi x8, x0, 2
	jalr x0, LBB0_159 ( x0 )
LBB0_142:                               //  %if.else283
	lw x4, 16 ( x10 )
	nop
	bgt x4, x11, LBB0_147
LBB0_143:                               //  %lor.lhs.false287
	andi x1, x17, 31
	beqz x1, LBB0_159
LBB0_144:                               //  %land.lhs.true291
	sw x7, 24 ( x2 )                //  4-byte Folded Spill
	sw x1, 72 ( x2 )                //  4-byte Folded Spill
	add x1, x9, x10
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	lw x10, 16 ( x1 )
	nop
	call $__hi0bits
	addi x1, x0, 32
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	bgt x1, x10, LBB0_146
LBB0_145:
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	lw x7, 24 ( x2 )                //  4-byte Folded Reload
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_160 ( x0 )
LBB0_146:                               //  %land.lhs.true291.if.then298_crit_edge
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	lw x4, 16 ( x1 )
	lw x16, 40 ( x2 )               //  4-byte Folded Reload
	lw x7, 24 ( x2 )                //  4-byte Folded Reload
	add x10, x0, x1
LBB0_147:                               //  %if.then298
	addi x1, x10, 20
	add x5, x0, x1
	ble x4, x0, LBB0_155
LBB0_148:                               //  %if.then.i526
	lw x3, 20 ( x10 )
	xori x5, x4, 1
	srli x3, x3, 1
	bgtu x5, x0, LBB0_150
LBB0_149:
	add x13, x0, x10
	add x12, x0, x7
	add x4, x0, x1
	jalr x0, LBB0_152 ( x0 )
LBB0_150:                               //  %while.body.i542.preheader
	add x12, x0, x7
	slli x4, x4, 2
	add x13, x0, x10
	addi x5, x10, 20
	add x5, x4, x5
	add x7, x0, x1
LBB0_151:                               //  %while.body.i542
                                        //  =>This Inner Loop Header: Depth=1
	lw x9, 4 ( x7 )
	addi x10, x7, 8
	addi x4, x7, 4
	slli x11, x9, 31
	or x3, x3, x11
	sw x3, 0 ( x7 )
	srli x3, x9, 1
	add x7, x0, x4
	bgtu x5, x10, LBB0_151
LBB0_152:                               //  %while.end.i548
	add x7, x0, x0
	add x5, x0, x4
	beq x3, x7, LBB0_154
LBB0_153:                               //  %while.end.i548
	addi x5, x4, 4
LBB0_154:                               //  %while.end.i548
	sw x3, 0 ( x4 )
	add x7, x0, x12
	add x10, x0, x13
LBB0_155:                               //  %if.end19.i555
	sub x3, x5, x1
	srai x3, x3, 2
	sw x3, 16 ( x10 )
	bgtu x3, x0, LBB0_157
LBB0_156:                               //  %if.then24.i556
	sw x0, 0 ( x1 )
LBB0_157:                               //  %rshift.exit557
	lw x1, 8 ( x16 )
	nop
	ble x1, x7, LBB0_82
LBB0_158:
	addi x7, x7, 1
LBB0_159:                               //  %if.end306
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
LBB0_160:                               //  %if.end306
	ori x8, x8, 32
LBB0_161:                               //  %if.end311
	sw x10, 0 ( x1 )
	sw x7, 0 ( x3 )
LBB0_162:                               //  %cleanup
	add x10, x0, x8
	lw x8, 76 ( x2 )                //  4-byte Folded Reload
	lw x1, 84 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 88
$cfi5:
	.cfi_adjust_cfa_offset -88
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__gethex, ($func_end0)-($__gethex)
	.cfi_endproc

	.address_space	0	
	.type	$__hexdig,@object       //  @__hexdig
	.section	.rodata,"a",@progbits
	.globl	$__hexdig
$__hexdig:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\020\021\022\023\024\025\026\027\030\031\000\000\000\000\000\000\000\032\033\034\035\036\037\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\032\033\034\035\036\037\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	$__hexdig, 256


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
