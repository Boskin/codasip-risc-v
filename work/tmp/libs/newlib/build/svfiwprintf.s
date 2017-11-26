	.text
	.file	"svfiwprintf.bc"
	.globl	$_svfiwprintf_r
	.type	$_svfiwprintf_r,@function
$_svfiwprintf_r:                        //  @_svfiwprintf_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -248
$cfi2:
	.cfi_adjust_cfa_offset 248
	sw x1, 244 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 236 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x12
	lbu x1, 12 ( x11 )
	sw x13, 232 ( x2 )
	andi x1, x1, 128
	sw x11, 56 ( x2 )               //  4-byte Folded Spill
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	beqz x1, LBB0_5
LBB0_1:                                 //  %land.lhs.true
	lw x1, 16 ( x11 )
	nop
	bgtu x1, x0, LBB0_5
LBB0_2:                                 //  %if.then
	addi x11, x0, 64
	call $_malloc_r
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 0 ( x1 )
	sw x10, 16 ( x1 )
	bgtu x10, x0, LBB0_4
LBB0_3:                                 //  %if.then6
	addi x1, x0, 12
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
	not x10, x0
	jalr x0, LBB0_236 ( x0 )
LBB0_4:                                 //  %if.end
	addi x3, x0, 64
	sw x3, 20 ( x1 )
LBB0_5:                                 //  %if.end8
	addi x1, x2, 152
	addi x5, x2, 216
	add x3, x0, x0
	addi x4, x2, 72
	sw x1, 216 ( x2 )
	sw x0, 8 ( x5 )
	addi x1, x4, 80
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	sw x0, 220 ( x2 )
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	add x4, x0, x8
LBB0_6:                                 //  %for.cond.outer
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_7 Depth 2
                                        //        Child Loop BB0_8 Depth 3
                                        //        Child Loop BB0_20 Depth 3
                                        //          Child Loop BB0_21 Depth 4
                                        //            Child Loop BB0_43 Depth 5
                                        //            Child Loop BB0_34 Depth 5
                                        //      Child Loop BB0_95 Depth 2
                                        //      Child Loop BB0_133 Depth 2
                                        //      Child Loop BB0_144 Depth 2
                                        //      Child Loop BB0_135 Depth 2
                                        //      Child Loop BB0_169 Depth 2
                                        //      Child Loop BB0_189 Depth 2
                                        //      Child Loop BB0_201 Depth 2
                                        //      Child Loop BB0_214 Depth 2
	addi x1, x2, 152
	add x7, x0, x1
LBB0_7:                                 //  %for.cond
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_8 Depth 3
                                        //        Child Loop BB0_20 Depth 3
                                        //          Child Loop BB0_21 Depth 4
                                        //            Child Loop BB0_43 Depth 5
                                        //            Child Loop BB0_34 Depth 5
	add x8, x0, x4
LBB0_8:                                 //  %while.cond
                                        //    Parent Loop BB0_6 Depth=1
                                        //      Parent Loop BB0_7 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lhu x1, 0 ( x8 )
	nop
	beqz x1, LBB0_11
LBB0_9:                                 //  %while.cond
                                        //    in Loop: Header=BB0_8 Depth=3
	xori x3, x1, 37
	beqz x3, LBB0_11
LBB0_10:                                //  %while.body
                                        //    in Loop: Header=BB0_8 Depth=3
	addi x8, x8, 2
	jalr x0, LBB0_8 ( x0 )
LBB0_11:                                //  %while.end
                                        //    in Loop: Header=BB0_7 Depth=2
	sub x3, x8, x4
	srai x9, x3, 1
	bgtu x9, x0, LBB0_13
LBB0_12:                                //    in Loop: Header=BB0_7 Depth=2
	sw x7, 20 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_18 ( x0 )
LBB0_13:                                //  %if.then16
                                        //    in Loop: Header=BB0_7 Depth=2
	sw x3, 4 ( x7 )
	sw x4, 0 ( x7 )
	lw x4, 8 ( x5 )
	nop
	add x3, x3, x4
	sw x3, 8 ( x5 )
	lw x3, 220 ( x2 )
	nop
	addi x4, x3, 1
	slti x3, x3, 7
	sw x4, 220 ( x2 )
	beqz x3, LBB0_15
LBB0_14:                                //    in Loop: Header=BB0_7 Depth=2
	addi x7, x7, 8
	sw x7, 20 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_17 ( x0 )
LBB0_15:                                //  %if.then23
                                        //    in Loop: Header=BB0_7 Depth=2
	sw x9, 64 ( x2 )                //  4-byte Folded Spill
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x5
	call $__ssprint_r
	beqz x10, LBB0_239
LBB0_238:                               //  %if.then23
                                        //    in Loop: Header=BB0_7 Depth=2
	jalr x0, LBB0_232 ( x0 )
LBB0_239:                               //  %if.then23
                                        //    in Loop: Header=BB0_7 Depth=2
LBB0_16:                                //  %if.then23.if.end29_crit_edge
                                        //    in Loop: Header=BB0_7 Depth=2
	lh x1, 0 ( x8 )
	addi x3, x2, 152
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	lw x9, 64 ( x2 )                //  4-byte Folded Reload
LBB0_17:                                //  %if.end29
                                        //    in Loop: Header=BB0_7 Depth=2
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x9
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
LBB0_18:                                //  %if.end31
                                        //    in Loop: Header=BB0_7 Depth=2
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	bgtu x1, x0, LBB0_241
LBB0_240:                               //  %if.end31
                                        //    in Loop: Header=BB0_7 Depth=2
	jalr x0, LBB0_226 ( x0 )
LBB0_241:                               //  %if.end31
                                        //    in Loop: Header=BB0_7 Depth=2
LBB0_19:                                //  %if.end36
                                        //    in Loop: Header=BB0_7 Depth=2
	addi x1, x8, 2
	sh x0, 230 ( x2 )
	add x3, x0, x0
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x3
	not x4, x0
	sw x4, 32 ( x2 )                //  4-byte Folded Spill
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
LBB0_20:                                //  %rflag
                                        //    Parent Loop BB0_6 Depth=1
                                        //      Parent Loop BB0_7 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_21 Depth 4
                                        //            Child Loop BB0_43 Depth 5
                                        //            Child Loop BB0_34 Depth 5
	addi x8, x1, 2
	lh x5, 0 ( x1 )
LBB0_21:                                //  %reswitch
                                        //    Parent Loop BB0_6 Depth=1
                                        //      Parent Loop BB0_7 Depth=2
                                        //        Parent Loop BB0_20 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB0_43 Depth 5
                                        //            Child Loop BB0_34 Depth 5
	sw x10, 60 ( x2 )               //  4-byte Folded Spill
	sw x8, 64 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 120
	bgtu x5, x1, LBB0_156
LBB0_22:                                //  %reswitch
                                        //    in Loop: Header=BB0_21 Depth=4
	add x10, x0, x5
	addi x11, x0, 4
	add x8, x0, x5
	call $__mulsi3
	add x5, x0, x8
	ori x28, x0, JTI0_0 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI0_0 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB0_23:                                //  %sw.bb
                                        //    in Loop: Header=BB0_20 Depth=3
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	and x3, x1, x3
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x0, x4
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	bgtu x3, x0, LBB0_20
LBB0_24:                                //  %if.then41
                                        //    in Loop: Header=BB0_20 Depth=3
	addi x1, x0, 32
	sh x1, 230 ( x2 )
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x4
	jalr x0, LBB0_20 ( x0 )
LBB0_25:                                //  %sw.bb43
                                        //    in Loop: Header=BB0_20 Depth=3
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 1
LBB0_26:                                //  %rflag
                                        //    in Loop: Header=BB0_20 Depth=3
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
LBB0_27:                                //  %rflag
                                        //    in Loop: Header=BB0_20 Depth=3
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_20 ( x0 )
LBB0_28:                                //  %sw.bb44
                                        //    in Loop: Header=BB0_20 Depth=3
	lw x1, 232 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 232 ( x2 )
	lw x10, 0 ( x1 )
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x0, x3
	bgez x10, LBB0_20
LBB0_29:                                //  %if.end48
                                        //    in Loop: Header=BB0_20 Depth=3
	sub x10, x0, x10
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 4
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x3
	jalr x0, LBB0_20 ( x0 )
LBB0_30:                                //  %sw.bb49.loopexit
                                        //    in Loop: Header=BB0_20 Depth=3
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 4
	jalr x0, LBB0_26 ( x0 )
LBB0_31:                                //  %sw.bb51
                                        //    in Loop: Header=BB0_20 Depth=3
	addi x1, x0, 43
	sh x1, 230 ( x2 )
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_27 ( x0 )
LBB0_32:                                //  %sw.bb52
                                        //    in Loop: Header=BB0_21 Depth=4
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	nop
	lh x5, 0 ( x8 )
	addi x8, x8, 2
	xori x1, x5, 42
	beqz x1, LBB0_38
LBB0_33:                                //  %while.cond64.preheader
                                        //    in Loop: Header=BB0_21 Depth=4
	addi x7, x5, -48
	add x3, x0, x0
	addi x1, x0, 9
	bgtu x7, x1, LBB0_35
LBB0_34:                                //  %while.body68
                                        //    Parent Loop BB0_6 Depth=1
                                        //      Parent Loop BB0_7 Depth=2
                                        //        Parent Loop BB0_20 Depth=3
                                        //          Parent Loop BB0_21 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	sw x7, 64 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x3
	addi x11, x0, 10
	call $__mulsi3
	lh x5, 0 ( x8 )
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x1, x10
	addi x8, x8, 2
	addi x7, x5, -48
	sltiu x1, x7, 10
	bgtu x1, x0, LBB0_34
LBB0_35:                                //  %while.end74
                                        //    in Loop: Header=BB0_21 Depth=4
	not x1, x0
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	bgt x3, x1, LBB0_37
LBB0_36:                                //  %while.end74
                                        //    in Loop: Header=BB0_21 Depth=4
	not x3, x0
LBB0_37:                                //  %while.end74
                                        //    in Loop: Header=BB0_21 Depth=4
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_21 ( x0 )
LBB0_38:                                //  %if.then57
                                        //    in Loop: Header=BB0_20 Depth=3
	lw x1, 232 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 232 ( x2 )
	lw x3, 0 ( x1 )
	not x1, x0
	bgt x3, x1, LBB0_40
LBB0_39:                                //  %if.then57
                                        //    in Loop: Header=BB0_20 Depth=3
	not x1, x0
	add x3, x0, x1
LBB0_40:                                //  %if.then57
                                        //    in Loop: Header=BB0_20 Depth=3
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x8
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_20 ( x0 )
LBB0_41:                                //  %sw.bb77
                                        //    in Loop: Header=BB0_20 Depth=3
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 128
	jalr x0, LBB0_26 ( x0 )
LBB0_42:                                //  %do.body.preheader
                                        //    in Loop: Header=BB0_21 Depth=4
	add x3, x0, x5
	add x1, x0, x0
	add x10, x0, x1
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
LBB0_43:                                //  %do.body
                                        //    Parent Loop BB0_6 Depth=1
                                        //      Parent Loop BB0_7 Depth=2
                                        //        Parent Loop BB0_20 Depth=3
                                        //          Parent Loop BB0_21 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	sw x3, 64 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 10
	call $__mulsi3
	lh x5, 0 ( x8 )
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x10, x1
	addi x8, x8, 2
	addi x10, x1, -48
	addi x1, x5, -48
	sltiu x1, x1, 10
	add x3, x0, x5
	bgtu x1, x0, LBB0_43
	jalr x0, LBB0_21 ( x0 )
LBB0_44:                                //  %sw.bb88
                                        //    in Loop: Header=BB0_20 Depth=3
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 64
	jalr x0, LBB0_26 ( x0 )
LBB0_45:                                //  %sw.bb90
                                        //    in Loop: Header=BB0_20 Depth=3
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	lhu x1, 0 ( x3 )
	nop
	xori x1, x1, 108
	bgtu x1, x0, LBB0_47
LBB0_46:                                //  %if.then94
                                        //    in Loop: Header=BB0_20 Depth=3
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 32
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	addi x1, x3, 2
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_20 ( x0 )
LBB0_47:                                //  %if.else
                                        //    in Loop: Header=BB0_20 Depth=3
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 16
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x3
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_20 ( x0 )
LBB0_48:                                //  %sw.bb99
                                        //    in Loop: Header=BB0_20 Depth=3
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 32
	jalr x0, LBB0_26 ( x0 )
LBB0_49:                                //  %sw.bb101
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 232 ( x2 )
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	andi x3, x3, 16
	addi x4, x1, 4
	sw x4, 232 ( x2 )
	lw x10, 0 ( x1 )
	bgtu x3, x0, LBB0_52
LBB0_50:                                //  %if.then108
                                        //    in Loop: Header=BB0_6 Depth=1
	call $btowc
	xori x1, x10, -1
	bgtu x1, x0, LBB0_52
LBB0_51:                                //  %cleanup
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	lh x1, 12 ( x3 )
	nop
	ori x1, x1, 64
	sh x1, 12 ( x3 )
	jalr x0, LBB0_233 ( x0 )
LBB0_52:                                //  %if.end124
                                        //    in Loop: Header=BB0_6 Depth=1
	sh x10, 72 ( x2 )
	sh x0, 74 ( x2 )
	jalr x0, LBB0_157 ( x0 )
LBB0_53:                                //  %sw.bb126
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x7, 32
	beqz x1, LBB0_55
LBB0_54:                                //  %cond.true129
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 232 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 232 ( x2 )
	lw x9, 0 ( x1 )
	addi x1, x3, 4
	sw x1, 232 ( x2 )
	lw x11, 0 ( x3 )
	add x5, x0, x0
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_60 ( x0 )
LBB0_55:                                //  %cond.false131
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x1, x7, 16
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB0_57
LBB0_56:                                //  %cond.true134
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 232 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 232 ( x2 )
	lw x9, 0 ( x1 )
	jalr x0, LBB0_59 ( x0 )
LBB0_57:                                //  %cond.false136
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 232 ( x2 )
	andi x3, x7, 64
	addi x4, x1, 4
	sw x4, 232 ( x2 )
	lw x9, 0 ( x1 )
	beqz x3, LBB0_59
LBB0_58:                                //  %cond.true139
                                        //    in Loop: Header=BB0_6 Depth=1
	slli x1, x9, 16
	srai x9, x1, 16
LBB0_59:                                //  %cond.end156
                                        //    in Loop: Header=BB0_6 Depth=1
	add x5, x0, x0
	srai x11, x9, 31
LBB0_60:                                //  %cond.end159
                                        //    in Loop: Header=BB0_6 Depth=1
	bgt x0, x11, LBB0_62
LBB0_61:                                //    in Loop: Header=BB0_6 Depth=1
	slti x1, x0, 1
	addi x12, x0, 10
	jalr x0, LBB0_126 ( x0 )
LBB0_62:                                //  %if.then163
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 45
	sh x1, 230 ( x2 )
	slti x1, x0, 1
	bne x9, x5, LBB0_64
LBB0_63:                                //  %if.then163
                                        //    in Loop: Header=BB0_6 Depth=1
	add x1, x0, x5
LBB0_64:                                //  %if.then163
                                        //    in Loop: Header=BB0_6 Depth=1
	sub x3, x0, x11
	sub x11, x3, x1
	sub x9, x0, x9
	jalr x0, LBB0_61 ( x0 )
LBB0_65:                                //  %sw.bb166
                                        //    in Loop: Header=BB0_7 Depth=2
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 32
	beqz x1, LBB0_67
LBB0_66:                                //  %if.then169
                                        //    in Loop: Header=BB0_7 Depth=2
	lw x1, 232 ( x2 )
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	nop
	srai x3, x5, 31
	addi x4, x1, 4
	sw x4, 232 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x3, 4 ( x1 )
	sw x5, 0 ( x1 )
	addi x5, x2, 216
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	lw x7, 20 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_7 ( x0 )
LBB0_67:                                //  %if.else172
                                        //    in Loop: Header=BB0_7 Depth=2
	andi x1, x3, 16
	addi x5, x2, 216
	lw x7, 20 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB0_69
LBB0_68:                                //  %if.then175
                                        //    in Loop: Header=BB0_7 Depth=2
	lw x1, 232 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 232 ( x2 )
	lw x1, 0 ( x1 )
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 0 ( x1 )
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_7 ( x0 )
LBB0_69:                                //  %if.else177
                                        //    in Loop: Header=BB0_7 Depth=2
	andi x1, x3, 64
	beqz x1, LBB0_68
LBB0_70:                                //  %if.then180
                                        //    in Loop: Header=BB0_7 Depth=2
	lw x1, 232 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 232 ( x2 )
	lw x1, 0 ( x1 )
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sh x3, 0 ( x1 )
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_7 ( x0 )
LBB0_71:                                //  %sw.bb188
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x7, 32
	beqz x1, LBB0_74
LBB0_72:                                //  %cond.true191
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 232 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 232 ( x2 )
	lw x9, 0 ( x1 )
	addi x1, x3, 4
	sw x1, 232 ( x2 )
	lw x11, 0 ( x3 )
	add x5, x0, x0
	add x1, x0, x5
LBB0_73:                                //  %nosign
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x12, x0, 10
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_125 ( x0 )
LBB0_74:                                //  %cond.false193
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x1, x7, 16
	add x5, x0, x0
	beqz x1, LBB0_76
LBB0_75:                                //  %cond.true196
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 232 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 232 ( x2 )
	lw x9, 0 ( x1 )
	jalr x0, LBB0_78 ( x0 )
LBB0_76:                                //  %cond.false198
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 232 ( x2 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	addi x3, x1, 4
	sw x3, 232 ( x2 )
	andi x3, x7, 64
	lw x9, 0 ( x1 )
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	beq x3, x5, LBB0_78
LBB0_77:                                //  %cond.false198
                                        //    in Loop: Header=BB0_6 Depth=1
	and x9, x1, x9
LBB0_78:                                //  %cond.false198
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x12, x0, 10
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x5
	add x1, x0, x5
	jalr x0, LBB0_125 ( x0 )
LBB0_79:                                //  %sw.bb223
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 232 ( x2 )
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	addi x3, x1, 4
	sw x3, 232 ( x2 )
	lw x9, 0 ( x1 )
	addi x1, x0, 48
	sh x1, 68 ( x2 )
	addi x1, x0, 120
	sh x1, 70 ( x2 )
	lui x1, $.str >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	nop
	ori x7, x7, 2
	add x5, x0, x0
	add x11, x0, x5
	addi x1, x0, 2
	jalr x0, LBB0_73 ( x0 )
LBB0_80:                                //  %sw.bb229
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 232 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 232 ( x2 )
	lw x8, 0 ( x1 )
	sh x0, 230 ( x2 )
	bgtu x8, x0, LBB0_84
LBB0_81:                                //  %if.then233
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 6
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x3, LBB0_83
LBB0_82:                                //  %if.then233
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 6
	add x3, x0, x1
LBB0_83:                                //  %if.then233
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.1 >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	add x4, x0, x1
	jalr x0, LBB0_158 ( x0 )
LBB0_84:                                //  %if.else240
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 16
	bgtu x1, x0, LBB0_98
LBB0_85:                                //  %if.then246
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	bgt x0, x1, LBB0_89
LBB0_86:                                //  %if.then249
                                        //    in Loop: Header=BB0_6 Depth=1
	add x12, x0, x1
	add x8, x0, x0
	add x11, x0, x8
	call $memchr
	beq x10, x8, LBB0_88
LBB0_87:                                //  %if.then249
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x10, x1
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
LBB0_88:                                //  %if.then249
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x9, 20 ( x2 )                //  4-byte Folded Reload
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_90 ( x0 )
LBB0_89:                                //  %if.else259
                                        //    in Loop: Header=BB0_6 Depth=1
	call $strlen
	add x8, x0, x10
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x9, 20 ( x2 )                //  4-byte Folded Reload
LBB0_90:                                //  %if.end261
                                        //    in Loop: Header=BB0_6 Depth=1
	sltiu x1, x8, 40
	bgtu x1, x0, LBB0_93
LBB0_91:                                //  %if.then264
                                        //    in Loop: Header=BB0_6 Depth=1
	slli x1, x8, 1
	addi x11, x1, 2
	call $_malloc_r
	beqz x10, LBB0_229
LBB0_92:                                //    in Loop: Header=BB0_6 Depth=1
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x10
	add x7, x0, x0
	lw x9, 20 ( x2 )                //  4-byte Folded Reload
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_94 ( x0 )
LBB0_93:                                //  %if.end278
                                        //    in Loop: Header=BB0_6 Depth=1
	add x7, x0, x0
	sw x7, 24 ( x2 )                //  4-byte Folded Spill
	addi x1, x2, 72
	add x3, x0, x1
	add x10, x0, x7
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	beqz x8, LBB0_97
LBB0_94:                                //  %for.body.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	add x11, x0, x3
	add x1, x0, x3
	add x3, x0, x7
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_95:                                //  %for.body
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x4, x3, x10
	lb x4, 0 ( x4 )
	addi x3, x3, 1
	addi x5, x1, 2
	sh x4, 0 ( x1 )
	add x1, x0, x5
	bne x8, x3, LBB0_95
LBB0_96:                                //    in Loop: Header=BB0_6 Depth=1
	add x10, x0, x8
	add x3, x0, x11
LBB0_97:                                //  %cleanup287.thread
                                        //    in Loop: Header=BB0_6 Depth=1
	slli x1, x10, 1
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
	add x1, x1, x3
	sh x0, 0 ( x1 )
	add x4, x0, x7
	jalr x0, LBB0_161 ( x0 )
LBB0_98:                                //  %if.else291
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x0, x1, LBB0_104
LBB0_99:                                //  %if.then294
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	add x12, x0, x1
	add x8, x0, x0
	add x11, x0, x8
	add x8, x0, x12
	call $wmemchr
	bgtu x10, x0, LBB0_101
LBB0_100:                               //    in Loop: Header=BB0_6 Depth=1
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	add x4, x0, x1
	add x3, x0, x4
	sw x4, 24 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	jalr x0, LBB0_160 ( x0 )
LBB0_101:                               //  %if.then299
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x10, x4
	srai x1, x1, 1
	bgt x1, x8, LBB0_103
LBB0_102:                               //  %if.then299
                                        //    in Loop: Header=BB0_6 Depth=1
	add x8, x0, x1
LBB0_103:                               //  %if.then299
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x4, 44 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	add x4, x0, x1
	add x10, x0, x8
	jalr x0, LBB0_159 ( x0 )
LBB0_104:                               //  %if.else310
                                        //    in Loop: Header=BB0_6 Depth=1
	add x10, x0, x8
	call $wcslen
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	add x4, x0, x1
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	lw x9, 20 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_161 ( x0 )
LBB0_105:                               //  %sw.bb315
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x7, 32
	beqz x1, LBB0_107
LBB0_106:                               //  %cond.true318
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 232 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 232 ( x2 )
	lw x9, 0 ( x1 )
	addi x1, x3, 4
	sw x1, 232 ( x2 )
	lw x11, 0 ( x3 )
	slti x1, x0, 1
	add x5, x0, x0
	jalr x0, LBB0_73 ( x0 )
LBB0_107:                               //  %cond.false320
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x1, x7, 16
	add x5, x0, x0
	beqz x1, LBB0_109
LBB0_108:                               //  %cond.true323
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 232 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 232 ( x2 )
	lw x9, 0 ( x1 )
	jalr x0, LBB0_111 ( x0 )
LBB0_109:                               //  %cond.false325
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 232 ( x2 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	addi x3, x1, 4
	sw x3, 232 ( x2 )
	andi x3, x7, 64
	lw x9, 0 ( x1 )
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	beq x3, x5, LBB0_111
LBB0_110:                               //  %cond.false325
                                        //    in Loop: Header=BB0_6 Depth=1
	and x9, x1, x9
LBB0_111:                               //  %cond.false325
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x12, x0, 10
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x5
	slti x1, x0, 1
	jalr x0, LBB0_125 ( x0 )
LBB0_112:                               //  %hex.loopexit1676
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 120
	jalr x0, LBB0_114 ( x0 )
LBB0_113:                               //  %hex.loopexit
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $.str.2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.2 >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 88
LBB0_114:                               //  %hex
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	nop
	andi x3, x7, 32
	beqz x3, LBB0_116
LBB0_115:                               //  %cond.true354
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 232 ( x2 )
	nop
	addi x4, x3, 4
	sw x4, 232 ( x2 )
	lw x9, 0 ( x3 )
	addi x3, x4, 4
	sw x3, 232 ( x2 )
	lw x11, 0 ( x4 )
	add x5, x0, x0
	addi x12, x0, 10
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_121 ( x0 )
LBB0_116:                               //  %cond.false356
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x3, x7, 16
	add x5, x0, x0
	beqz x3, LBB0_118
LBB0_117:                               //  %cond.true359
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 232 ( x2 )
	nop
	addi x4, x3, 4
	sw x4, 232 ( x2 )
	lw x9, 0 ( x3 )
	jalr x0, LBB0_120 ( x0 )
LBB0_118:                               //  %cond.false361
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 232 ( x2 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	addi x4, x3, 4
	sw x4, 232 ( x2 )
	andi x4, x7, 64
	lw x9, 0 ( x3 )
	lui x3, 65535 >> 12 & 0xfffff
	or x3, x3, x28
	beq x4, x5, LBB0_120
LBB0_119:                               //  %cond.false361
                                        //    in Loop: Header=BB0_6 Depth=1
	and x9, x3, x9
LBB0_120:                               //  %cond.false361
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x12, x0, 10
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x5
LBB0_121:                               //  %cond.end384
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x3, x7, 1
	beqz x3, LBB0_124
LBB0_122:                               //  %cond.end384
                                        //    in Loop: Header=BB0_6 Depth=1
	or x3, x11, x9
	beqz x3, LBB0_124
LBB0_123:                               //  %if.then391
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x3, x0, 48
	sh x3, 68 ( x2 )
	sh x1, 70 ( x2 )
	ori x7, x7, 2
LBB0_124:                               //  %nosign
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 2
LBB0_125:                               //  %nosign
                                        //    in Loop: Header=BB0_6 Depth=1
	sh x0, 230 ( x2 )
LBB0_126:                               //  %number
                                        //    in Loop: Header=BB0_6 Depth=1
	not x3, x0
	ble x8, x3, LBB0_128
LBB0_127:                               //    in Loop: Header=BB0_6 Depth=1
	andi x7, x7, -129
LBB0_128:                               //  %number
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x7, 48 ( x2 )                //  4-byte Folded Spill
	bgtu x8, x0, LBB0_130
LBB0_129:                               //  %number
                                        //    in Loop: Header=BB0_6 Depth=1
	or x3, x11, x9
	beqz x3, LBB0_149
LBB0_130:                               //  %if.then407
                                        //    in Loop: Header=BB0_6 Depth=1
	beqz x1, LBB0_134
LBB0_131:                               //  %if.then407
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x1, x1, 255
	xori x3, x1, 1
	beqz x3, LBB0_139
LBB0_132:                               //  %if.then407
                                        //    in Loop: Header=BB0_6 Depth=1
	xori x1, x1, 2
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB0_148
LBB0_133:                               //  %do.body444
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	andi x1, x9, 15
	slli x1, x1, 1
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	lh x1, 0 ( x1 )
	nop
	sh x1, -2 ( x5 )
	srli x1, x9, 4
	slli x3, x11, 28
	or x9, x3, x1
	addi x5, x5, -2
	srli x11, x11, 4
	or x1, x11, x9
	bgtu x1, x0, LBB0_133
	jalr x0, LBB0_154 ( x0 )
LBB0_134:                               //  %do.body410.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x2, 150
LBB0_135:                               //  %do.body410
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	srli x3, x9, 3
	slli x4, x11, 29
	or x4, x4, x3
	andi x3, x9, 7
	ori x3, x3, 48
	sh x3, 0 ( x1 )
	addi x1, x1, -2
	srli x11, x11, 3
	or x5, x11, x4
	add x9, x0, x4
	bgtu x5, x0, LBB0_135
LBB0_136:                               //  %do.end417
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x5, x1, 2
	andi x4, x7, 1
	beqz x4, LBB0_154
LBB0_137:                               //  %do.end417
                                        //    in Loop: Header=BB0_6 Depth=1
	xori x3, x3, 48
	beqz x3, LBB0_154
LBB0_138:                               //  %if.then424
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x3, x0, 48
	sh x3, 0 ( x1 )
	jalr x0, LBB0_153 ( x0 )
LBB0_139:                               //  %sw.bb427
                                        //    in Loop: Header=BB0_6 Depth=1
	bne x11, x5, LBB0_141
LBB0_140:                               //    in Loop: Header=BB0_6 Depth=1
	sltiu x1, x9, 10
	jalr x0, LBB0_142 ( x0 )
LBB0_141:                               //  %sw.bb427
                                        //    in Loop: Header=BB0_6 Depth=1
	add x1, x0, x5
LBB0_142:                               //  %sw.bb427
                                        //    in Loop: Header=BB0_6 Depth=1
	bgtu x1, x0, LBB0_237
LBB0_143:                               //    in Loop: Header=BB0_6 Depth=1
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_144:                               //  %do.body435
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x5, 44 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x9
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x0
	add x13, x0, x8
	add x8, x0, x11
	call $__umoddi3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	addi x12, x0, 10
	add x13, x0, x0
	call $__udivdi3
	add x1, x0, x0
	bne x8, x1, LBB0_146
LBB0_145:                               //    in Loop: Header=BB0_144 Depth=2
	addi x1, x0, 9
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sltu x1, x1, x3
	jalr x0, LBB0_147 ( x0 )
LBB0_146:                               //  %do.body435
                                        //    in Loop: Header=BB0_144 Depth=2
	sltu x1, x0, x8
LBB0_147:                               //  %do.body435
                                        //    in Loop: Header=BB0_144 Depth=2
	addi x12, x0, 10
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	ori x3, x3, 48
	sh x3, -2 ( x5 )
	addi x5, x5, -2
	add x9, x0, x10
	bgtu x1, x0, LBB0_144
	jalr x0, LBB0_154 ( x0 )
LBB0_148:                               //  %sw.default
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $.str.3 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.3 >> 12 & 0xfffff
	or x10, x1, x28
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	call $wcslen
	jalr x0, LBB0_155 ( x0 )
LBB0_149:                               //  %if.else453
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x1, x1, 255
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB0_154
LBB0_150:                               //  %if.else453
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 1
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB0_154
LBB0_151:                               //  %if.then460
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 48
LBB0_152:                               //  %if.end463
                                        //    in Loop: Header=BB0_6 Depth=1
	sh x1, 150 ( x2 )
	addi x1, x2, 150
LBB0_153:                               //  %if.end463
                                        //    in Loop: Header=BB0_6 Depth=1
	add x5, x0, x1
LBB0_154:                               //  %if.end463
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	sw x5, 44 ( x2 )                //  4-byte Folded Spill
	sub x1, x1, x5
	srai x10, x1, 1
LBB0_155:                               //  %sw.epilog477
                                        //    in Loop: Header=BB0_6 Depth=1
	add x4, x0, x8
	add x1, x0, x0
	jalr x0, LBB0_159 ( x0 )
LBB0_156:                               //  %if.end474
                                        //    in Loop: Header=BB0_6 Depth=1
	sh x5, 72 ( x2 )
LBB0_157:                               //  %sw.epilog477
                                        //    in Loop: Header=BB0_6 Depth=1
	sh x0, 230 ( x2 )
	addi x1, x2, 72
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	add x4, x0, x1
	slti x3, x0, 1
LBB0_158:                               //  %sw.epilog477
                                        //    in Loop: Header=BB0_6 Depth=1
	add x10, x0, x3
LBB0_159:                               //  %sw.epilog477
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
LBB0_160:                               //  %sw.epilog477
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x9, 20 ( x2 )                //  4-byte Folded Reload
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
LBB0_161:                               //  %sw.epilog477
                                        //    in Loop: Header=BB0_6 Depth=1
	add x1, x0, x4
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	bgt x4, x10, LBB0_163
LBB0_162:                               //  %sw.epilog477
                                        //    in Loop: Header=BB0_6 Depth=1
	add x1, x0, x10
LBB0_163:                               //  %sw.epilog477
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	lhu x3, 230 ( x2 )
	nop
	sltu x3, x0, x3
	andi x3, x3, 1
	add x8, x1, x3
	andi x5, x12, 2
	srli x1, x5, 1
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB0_165
LBB0_164:                               //    in Loop: Header=BB0_6 Depth=1
	addi x8, x8, 2
LBB0_165:                               //  %sw.epilog477
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x4, x12, 132
	sw x12, 48 ( x2 )               //  4-byte Folded Spill
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	sw x5, 20 ( x2 )                //  4-byte Folded Spill
	bgtu x4, x0, LBB0_177
LBB0_166:                               //  %if.then496
                                        //    in Loop: Header=BB0_6 Depth=1
	sub x8, x3, x8
	bgt x8, x0, LBB0_168
LBB0_167:                               //    in Loop: Header=BB0_6 Depth=1
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_177 ( x0 )
LBB0_168:                               //  %while.cond501.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x4, 4 ( x2 )                 //  4-byte Folded Spill
	ori x28, x0, $_svfiwprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfiwprintf_r.blanks >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	addi x4, x2, 216
	slti x1, x8, 17
	bgtu x1, x0, LBB0_172
LBB0_169:                               //  %while.body504
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x1, x0, 32
	sw x1, 4 ( x9 )
	lw x1, 8 ( x4 )
	nop
	addi x1, x1, 32
	sw x1, 8 ( x4 )
	lw x1, 220 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 220 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_174
LBB0_170:                               //    in Loop: Header=BB0_169 Depth=2
	addi x9, x9, 8
LBB0_171:                               //  %if.end520
                                        //    in Loop: Header=BB0_169 Depth=2
	ori x28, x0, $_svfiwprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfiwprintf_r.blanks >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	addi x8, x8, -16
	addi x1, x0, 16
	bgt x8, x1, LBB0_169
LBB0_172:                               //  %while.end522
                                        //    in Loop: Header=BB0_6 Depth=1
	slli x1, x8, 1
	sw x1, 4 ( x9 )
	lw x3, 8 ( x4 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x4 )
	lw x1, 220 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 220 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_176
LBB0_173:                               //    in Loop: Header=BB0_6 Depth=1
	addi x9, x9, 8
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x4, 4 ( x2 )                 //  4-byte Folded Reload
	jalr x0, LBB0_177 ( x0 )
LBB0_174:                               //  %if.then514
                                        //    in Loop: Header=BB0_169 Depth=2
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 216
	call $__ssprint_r
	addi x4, x2, 216
	addi x1, x2, 152
	add x9, x0, x1
	beqz x10, LBB0_171
LBB0_175:
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_199 ( x0 )
LBB0_176:                               //  %if.then534
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x4
	call $__ssprint_r
	addi x1, x2, 152
	add x9, x0, x1
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x4, 4 ( x2 )                 //  4-byte Folded Reload
	bgtu x10, x0, LBB0_175
LBB0_177:                               //  %if.end542
                                        //    in Loop: Header=BB0_6 Depth=1
	lhu x1, 230 ( x2 )
	nop
	bgtu x1, x0, LBB0_179
LBB0_178:                               //    in Loop: Header=BB0_6 Depth=1
	addi x5, x2, 216
	jalr x0, LBB0_182 ( x0 )
LBB0_179:                               //  %if.then544
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x2, 230
	sw x1, 0 ( x9 )
	addi x1, x0, 2
	sw x1, 4 ( x9 )
	addi x5, x2, 216
	lw x1, 8 ( x5 )
	nop
	addi x1, x1, 2
	sw x1, 8 ( x5 )
	lw x1, 220 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 220 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_181
LBB0_180:                               //    in Loop: Header=BB0_6 Depth=1
	addi x9, x9, 8
	jalr x0, LBB0_182 ( x0 )
LBB0_181:                               //  %if.then554
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 216
	sw x4, 4 ( x2 )                 //  4-byte Folded Spill
	call $__ssprint_r
	lw x4, 4 ( x2 )                 //  4-byte Folded Reload
	addi x5, x2, 216
	addi x1, x2, 152
	add x9, x0, x1
	bgtu x10, x0, LBB0_175
LBB0_182:                               //  %if.end561
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_186
LBB0_183:                               //  %if.then564
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x2, 68
	sw x1, 0 ( x9 )
	addi x1, x0, 4
	sw x1, 4 ( x9 )
	lw x1, 8 ( x5 )
	nop
	addi x1, x1, 4
	sw x1, 8 ( x5 )
	lw x1, 220 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 220 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_185
LBB0_184:                               //    in Loop: Header=BB0_6 Depth=1
	addi x9, x9, 8
	jalr x0, LBB0_186 ( x0 )
LBB0_185:                               //  %if.then575
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 216
	sw x4, 4 ( x2 )                 //  4-byte Folded Spill
	call $__ssprint_r
	lw x4, 4 ( x2 )                 //  4-byte Folded Reload
	addi x5, x2, 216
	addi x1, x2, 152
	add x9, x0, x1
	bgtu x10, x0, LBB0_175
LBB0_186:                               //  %if.end582
                                        //    in Loop: Header=BB0_6 Depth=1
	xori x1, x4, 128
	bgtu x1, x0, LBB0_195
LBB0_187:                               //  %if.then586
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x1, x8
	ble x8, x0, LBB0_195
LBB0_188:                               //  %while.cond591.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $_svfiwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfiwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	slti x1, x8, 17
	bgtu x1, x0, LBB0_193
LBB0_189:                               //  %while.body594
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x1, x0, 32
	sw x1, 4 ( x9 )
	lw x1, 8 ( x5 )
	nop
	addi x1, x1, 32
	sw x1, 8 ( x5 )
	lw x1, 220 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 220 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_191
LBB0_190:                               //    in Loop: Header=BB0_189 Depth=2
	addi x9, x9, 8
	jalr x0, LBB0_192 ( x0 )
LBB0_191:                               //  %if.then604
                                        //    in Loop: Header=BB0_189 Depth=2
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 216
	call $__ssprint_r
	addi x5, x2, 216
	addi x1, x2, 152
	add x9, x0, x1
	bgtu x10, x0, LBB0_175
LBB0_192:                               //  %if.end610
                                        //    in Loop: Header=BB0_189 Depth=2
	ori x28, x0, $_svfiwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfiwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	addi x8, x8, -16
	addi x1, x0, 16
	bgt x8, x1, LBB0_189
LBB0_193:                               //  %while.end612
                                        //    in Loop: Header=BB0_6 Depth=1
	slli x1, x8, 1
	sw x1, 4 ( x9 )
	lw x3, 8 ( x5 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x5 )
	lw x1, 220 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 220 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_197
LBB0_194:                               //    in Loop: Header=BB0_6 Depth=1
	addi x9, x9, 8
LBB0_195:                               //  %if.end632
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x3, x1
	bgt x8, x0, LBB0_200
LBB0_196:                               //    in Loop: Header=BB0_6 Depth=1
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_208 ( x0 )
LBB0_197:                               //  %if.then624
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 216
	call $__ssprint_r
	addi x5, x2, 216
	addi x1, x2, 152
	add x9, x0, x1
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	beqz x10, LBB0_195
LBB0_198:
	add x11, x0, x1
LBB0_199:                               //  %error
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_230 ( x0 )
LBB0_200:                               //  %while.cond637.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $_svfiwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfiwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	slti x1, x8, 17
	bgtu x1, x0, LBB0_205
LBB0_201:                               //  %while.body640
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x1, x0, 32
	sw x1, 4 ( x9 )
	lw x1, 8 ( x5 )
	nop
	addi x1, x1, 32
	sw x1, 8 ( x5 )
	lw x1, 220 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 220 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_203
LBB0_202:                               //    in Loop: Header=BB0_201 Depth=2
	addi x9, x9, 8
	jalr x0, LBB0_204 ( x0 )
LBB0_203:                               //  %if.then650
                                        //    in Loop: Header=BB0_201 Depth=2
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 216
	call $__ssprint_r
	addi x5, x2, 216
	addi x1, x2, 152
	add x9, x0, x1
	bgtu x10, x0, LBB0_175
LBB0_204:                               //  %if.end656
                                        //    in Loop: Header=BB0_201 Depth=2
	ori x28, x0, $_svfiwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfiwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	addi x8, x8, -16
	addi x1, x0, 16
	bgt x8, x1, LBB0_201
LBB0_205:                               //  %while.end658
                                        //    in Loop: Header=BB0_6 Depth=1
	slli x1, x8, 1
	sw x1, 4 ( x9 )
	lw x3, 8 ( x5 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x5 )
	lw x1, 220 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 220 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_207
LBB0_206:                               //    in Loop: Header=BB0_6 Depth=1
	addi x9, x9, 8
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_208 ( x0 )
LBB0_207:                               //  %if.then670
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 216
	call $__ssprint_r
	addi x5, x2, 216
	addi x1, x2, 152
	add x9, x0, x1
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_175
LBB0_208:                               //  %if.end677
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x9 )
	slli x1, x3, 1
	sw x1, 4 ( x9 )
	lw x3, 8 ( x5 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x5 )
	lw x1, 220 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 220 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_210
LBB0_209:                               //    in Loop: Header=BB0_6 Depth=1
	addi x1, x9, 8
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_211 ( x0 )
LBB0_210:                               //  %if.then689
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 216
	call $__ssprint_r
	addi x5, x2, 216
	addi x1, x2, 152
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_175
LBB0_211:                               //  %if.end695
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	andi x3, x3, 4
	beqz x3, LBB0_220
LBB0_212:                               //  %if.then698
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	lw x7, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x3, x7
	ble x8, x0, LBB0_220
LBB0_213:                               //  %while.cond703.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $_svfiwprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $_svfiwprintf_r.blanks >> 12 & 0xfffff
	or x3, x3, x28
	sw x3, 0 ( x1 )
	slti x3, x8, 17
	bgtu x3, x0, LBB0_218
LBB0_214:                               //  %while.body706
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x3, x0, 32
	sw x3, 4 ( x1 )
	lw x3, 8 ( x5 )
	nop
	addi x3, x3, 32
	sw x3, 8 ( x5 )
	lw x3, 220 ( x2 )
	nop
	addi x4, x3, 1
	sw x4, 220 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB0_216
LBB0_215:                               //    in Loop: Header=BB0_214 Depth=2
	addi x1, x1, 8
	jalr x0, LBB0_217 ( x0 )
LBB0_216:                               //  %if.then716
                                        //    in Loop: Header=BB0_214 Depth=2
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 216
	call $__ssprint_r
	addi x5, x2, 216
	addi x1, x2, 152
	bgtu x10, x0, LBB0_175
LBB0_217:                               //  %if.end722
                                        //    in Loop: Header=BB0_214 Depth=2
	ori x28, x0, $_svfiwprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $_svfiwprintf_r.blanks >> 12 & 0xfffff
	or x3, x3, x28
	sw x3, 0 ( x1 )
	addi x8, x8, -16
	addi x3, x0, 16
	bgt x8, x3, LBB0_214
LBB0_218:                               //  %while.end724
                                        //    in Loop: Header=BB0_6 Depth=1
	slli x3, x8, 1
	sw x3, 4 ( x1 )
	lw x1, 8 ( x5 )
	nop
	add x1, x3, x1
	sw x1, 8 ( x5 )
	lw x1, 220 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 220 ( x2 )
	slti x1, x1, 7
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB0_220
LBB0_219:                               //  %if.then736
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 216
	call $__ssprint_r
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	addi x5, x2, 216
	bgtu x10, x0, LBB0_175
LBB0_220:                               //  %if.end744
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x3, x1, LBB0_222
LBB0_221:                               //  %if.end744
                                        //    in Loop: Header=BB0_6 Depth=1
	add x3, x0, x1
LBB0_222:                               //  %if.end744
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	lw x1, 224 ( x2 )
	nop
	beqz x1, LBB0_224
LBB0_223:                               //  %land.lhs.true754
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 216
	call $__ssprint_r
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	addi x5, x2, 216
	bgtu x10, x0, LBB0_175
LBB0_224:                               //  %if.end758
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x0, 220 ( x2 )
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_243
LBB0_242:                               //  %if.end758
                                        //    in Loop: Header=BB0_6 Depth=1
	jalr x0, LBB0_6 ( x0 )
LBB0_243:                               //  %if.end758
                                        //    in Loop: Header=BB0_6 Depth=1
LBB0_225:                               //  %if.then763
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $_free_r
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	addi x5, x2, 216
	add x1, x0, x0
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	jalr x0, LBB0_6 ( x0 )
LBB0_226:                               //  %done
	lw x1, 224 ( x2 )
	nop
	beqz x1, LBB0_228
LBB0_227:                               //  %land.lhs.true767
	addi x12, x2, 216
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ssprint_r
	bgtu x10, x0, LBB0_232
LBB0_228:                               //  %if.end771
	sw x0, 220 ( x2 )
	jalr x0, LBB0_232 ( x0 )
LBB0_229:                               //  %cleanup287
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	lh x1, 12 ( x3 )
	add x11, x0, x0
	ori x1, x1, 64
	sh x1, 12 ( x3 )
	add x1, x0, x10
LBB0_230:                               //  %error
	beqz x1, LBB0_233
LBB0_231:                               //  %if.then776
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	nop
	call $_free_r
LBB0_232:                               //  %if.end777
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_233:                               //  %if.end777
	lbu x1, 12 ( x3 )
	nop
	andi x1, x1, 64
	srli x1, x1, 6
	beqz x1, LBB0_235
LBB0_234:
	not x10, x0
	jalr x0, LBB0_236 ( x0 )
LBB0_235:                               //  %if.end777
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
LBB0_236:                               //  %cleanup787
	lw x8, 236 ( x2 )               //  4-byte Folded Reload
	lw x1, 244 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 248
$cfi5:
	.cfi_adjust_cfa_offset -248
$cfi6:
	.cfi_def_cfa 2, 0
	ret
LBB0_237:                               //  %if.then430
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x9, 48
	jalr x0, LBB0_152 ( x0 )
$func_end0:
	.size	$_svfiwprintf_r, ($func_end0)-($_svfiwprintf_r)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	LBB0_226
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_23
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_25
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_28
	.long	LBB0_31
	.long	LBB0_156
	.long	LBB0_30
	.long	LBB0_32
	.long	LBB0_156
	.long	LBB0_41
	.long	LBB0_42
	.long	LBB0_42
	.long	LBB0_42
	.long	LBB0_42
	.long	LBB0_42
	.long	LBB0_42
	.long	LBB0_42
	.long	LBB0_42
	.long	LBB0_42
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_113
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_49
	.long	LBB0_53
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_44
	.long	LBB0_53
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_45
	.long	LBB0_156
	.long	LBB0_65
	.long	LBB0_71
	.long	LBB0_79
	.long	LBB0_48
	.long	LBB0_156
	.long	LBB0_80
	.long	LBB0_156
	.long	LBB0_105
	.long	LBB0_156
	.long	LBB0_156
	.long	LBB0_112

	.address_space	0	
	.type	$_svfiwprintf_r.blanks,@object //  @_svfiwprintf_r.blanks
	.p2align	1
$_svfiwprintf_r.blanks:
	.short	32                      //  0x20
	.short	32                      //  0x20
	.short	32                      //  0x20
	.short	32                      //  0x20
	.short	32                      //  0x20
	.short	32                      //  0x20
	.short	32                      //  0x20
	.short	32                      //  0x20
	.short	32                      //  0x20
	.short	32                      //  0x20
	.short	32                      //  0x20
	.short	32                      //  0x20
	.short	32                      //  0x20
	.short	32                      //  0x20
	.short	32                      //  0x20
	.short	32                      //  0x20
	.size	$_svfiwprintf_r.blanks, 32

	.address_space	0	
	.type	$_svfiwprintf_r.zeroes,@object //  @_svfiwprintf_r.zeroes
	.p2align	1
$_svfiwprintf_r.zeroes:
	.short	48                      //  0x30
	.short	48                      //  0x30
	.short	48                      //  0x30
	.short	48                      //  0x30
	.short	48                      //  0x30
	.short	48                      //  0x30
	.short	48                      //  0x30
	.short	48                      //  0x30
	.short	48                      //  0x30
	.short	48                      //  0x30
	.short	48                      //  0x30
	.short	48                      //  0x30
	.short	48                      //  0x30
	.short	48                      //  0x30
	.short	48                      //  0x30
	.short	48                      //  0x30
	.size	$_svfiwprintf_r.zeroes, 32

	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str2.2,"aMS",@progbits,2
	.p2align	1
$.str:
	.short	48                      //  0x30
	.short	49                      //  0x31
	.short	50                      //  0x32
	.short	51                      //  0x33
	.short	52                      //  0x34
	.short	53                      //  0x35
	.short	54                      //  0x36
	.short	55                      //  0x37
	.short	56                      //  0x38
	.short	57                      //  0x39
	.short	97                      //  0x61
	.short	98                      //  0x62
	.short	99                      //  0x63
	.short	100                     //  0x64
	.short	101                     //  0x65
	.short	102                     //  0x66
	.short	0                       //  0x0
	.size	$.str, 34

	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
	.p2align	1
$.str.1:
	.short	40                      //  0x28
	.short	110                     //  0x6e
	.short	117                     //  0x75
	.short	108                     //  0x6c
	.short	108                     //  0x6c
	.short	41                      //  0x29
	.short	0                       //  0x0
	.size	$.str.1, 14

	.address_space	0	
	.type	$.str.2,@object         //  @.str.2
	.p2align	1
$.str.2:
	.short	48                      //  0x30
	.short	49                      //  0x31
	.short	50                      //  0x32
	.short	51                      //  0x33
	.short	52                      //  0x34
	.short	53                      //  0x35
	.short	54                      //  0x36
	.short	55                      //  0x37
	.short	56                      //  0x38
	.short	57                      //  0x39
	.short	65                      //  0x41
	.short	66                      //  0x42
	.short	67                      //  0x43
	.short	68                      //  0x44
	.short	69                      //  0x45
	.short	70                      //  0x46
	.short	0                       //  0x0
	.size	$.str.2, 34

	.address_space	0	
	.type	$.str.3,@object         //  @.str.3
	.p2align	1
$.str.3:
	.short	98                      //  0x62
	.short	117                     //  0x75
	.short	103                     //  0x67
	.short	32                      //  0x20
	.short	105                     //  0x69
	.short	110                     //  0x6e
	.short	32                      //  0x20
	.short	118                     //  0x76
	.short	102                     //  0x66
	.short	112                     //  0x70
	.short	114                     //  0x72
	.short	105                     //  0x69
	.short	110                     //  0x6e
	.short	116                     //  0x74
	.short	102                     //  0x66
	.short	58                      //  0x3a
	.short	32                      //  0x20
	.short	98                      //  0x62
	.short	97                      //  0x61
	.short	100                     //  0x64
	.short	32                      //  0x20
	.short	98                      //  0x62
	.short	97                      //  0x61
	.short	115                     //  0x73
	.short	101                     //  0x65
	.short	0                       //  0x0
	.size	$.str.3, 52


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
