	.text
	.file	"vfiwprintf.bc"
	.globl	$vfiwprintf
	.type	$vfiwprintf,@function
$vfiwprintf:                            //  @vfiwprintf
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
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
	j $_vfiwprintf_r
$func_end0:
	.size	$vfiwprintf, ($func_end0)-($vfiwprintf)
	.cfi_endproc

	.globl	$_vfiwprintf_r
	.type	$_vfiwprintf_r,@function
$_vfiwprintf_r:                         //  @_vfiwprintf_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi2:
	.cfi_def_cfa 2, 0
$cfi3:
	.cfi_val_offset 2, 0
	addi x2, x2, -1240
$cfi4:
	.cfi_adjust_cfa_offset 1240
	sw x1, 1236 ( x2 )
$cfi5:
	.cfi_offset 1, -4
	sw x8, 1228 ( x2 )              //  4-byte Folded Spill
	sw x12, 72 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	sw x13, 68 ( x2 )               //  4-byte Folded Spill
	sw x13, 96 ( x2 )
	sw x10, 64 ( x2 )               //  4-byte Folded Spill
	beqz x10, LBB1_3
LBB1_1:                                 //  %land.lhs.true
	lw x1, 56 ( x10 )
	nop
	bgtu x1, x0, LBB1_3
LBB1_2:                                 //  %if.then
	call $__sinit
LBB1_3:                                 //  %if.end
	lh x1, 12 ( x8 )
	lui x3, 8192>>12 
	and x4, x3, x1
	bgtu x4, x0, LBB1_5
LBB1_4:                                 //  %if.then12
	or x1, x3, x1
	sh x1, 12 ( x8 )
	lw x4, 100 ( x8 )
	nop
	or x3, x3, x4
	sw x3, 100 ( x8 )
LBB1_5:                                 //  %do.end20
	andi x3, x1, 8
	beqz x3, LBB1_7
LBB1_6:                                 //  %lor.lhs.false
	lw x3, 16 ( x8 )
	nop
	bgtu x3, x0, LBB1_9
LBB1_7:                                 //  %land.lhs.true27
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__swsetup_r
	beqz x10, LBB1_247
LBB1_246:                               //  %land.lhs.true27
	jalr x0, LBB1_243 ( x0 )
LBB1_247:                               //  %land.lhs.true27
LBB1_8:                                 //  %land.lhs.true27.if.end42_crit_edge
	lh x1, 12 ( x8 )
	nop
LBB1_9:                                 //  %if.end42
	andi x3, x1, 26
	xori x3, x3, 10
	bgtu x3, x0, LBB1_17
LBB1_10:                                //  %land.lhs.true48
	lh x3, 14 ( x8 )
	nop
	bgt x0, x3, LBB1_17
LBB1_11:                                //  %if.then52
	ori x28, x0, 65533 & 0xfff
	slli x28, x28, 20
	lui x4, 65533 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	and x1, x4, x1
	addi x11, x2, 1124
	sh x1, 12 ( x11 )
	lw x1, 100 ( x8 )
	lw x4, 28 ( x8 )
	lw x5, 36 ( x8 )
	addi x7, x2, 100
	addi x9, x0, 1024
	sw x1, 100 ( x11 )
	sh x3, 14 ( x11 )
	sw x4, 28 ( x11 )
	sw x5, 36 ( x11 )
	sw x7, 1124 ( x2 )
	sw x7, 16 ( x11 )
	sw x9, 8 ( x11 )
	sw x9, 1144 ( x2 )
	sw x0, 24 ( x11 )
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	lw x13, 68 ( x2 )               //  4-byte Folded Reload
	nop
	call $_vfiwprintf_r
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	bgt x0, x10, LBB1_14
LBB1_12:                                //  %land.lhs.true.i
	addi x11, x2, 1124
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	nop
	call $_fflush_r
	add x1, x0, x0
	beq x10, x1, LBB1_14
LBB1_13:                                //  %land.lhs.true.i
	not x1, x0
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
LBB1_14:                                //  %if.end.i
	lbu x1, 1136 ( x2 )
	nop
	andi x1, x1, 64
	beqz x1, LBB1_16
LBB1_15:                                //  %if.then15.i
	lh x1, 12 ( x8 )
	nop
	ori x1, x1, 64
	sh x1, 12 ( x8 )
LBB1_16:                                //  %if.end844
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_244 ( x0 )
LBB1_17:                                //  %if.end66
	sw x8, 60 ( x2 )                //  4-byte Folded Spill
	addi x1, x2, 1124
	addi x7, x2, 80
	add x3, x0, x0
	addi x4, x2, 100
	sw x1, 80 ( x2 )
	sw x0, 8 ( x7 )
	addi x1, x4, 80
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	sw x0, 84 ( x2 )
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
LBB1_18:                                //  %for.cond.outer
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_19 Depth 2
                                        //        Child Loop BB1_20 Depth 3
                                        //        Child Loop BB1_33 Depth 3
                                        //          Child Loop BB1_34 Depth 4
                                        //            Child Loop BB1_55 Depth 5
                                        //            Child Loop BB1_47 Depth 5
                                        //      Child Loop BB1_107 Depth 2
                                        //      Child Loop BB1_146 Depth 2
                                        //      Child Loop BB1_157 Depth 2
                                        //      Child Loop BB1_148 Depth 2
                                        //      Child Loop BB1_179 Depth 2
                                        //      Child Loop BB1_201 Depth 2
                                        //      Child Loop BB1_211 Depth 2
                                        //      Child Loop BB1_224 Depth 2
	addi x1, x2, 1124
	add x9, x0, x1
	lw x5, 72 ( x2 )                //  4-byte Folded Reload
	nop
LBB1_19:                                //  %for.cond
                                        //    Parent Loop BB1_18 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_20 Depth 3
                                        //        Child Loop BB1_33 Depth 3
                                        //          Child Loop BB1_34 Depth 4
                                        //            Child Loop BB1_55 Depth 5
                                        //            Child Loop BB1_47 Depth 5
	add x4, x0, x5
	add x8, x0, x5
LBB1_20:                                //  %while.cond
                                        //    Parent Loop BB1_18 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lhu x1, 0 ( x8 )
	nop
	beqz x1, LBB1_23
LBB1_21:                                //  %while.cond
                                        //    in Loop: Header=BB1_20 Depth=3
	xori x3, x1, 37
	beqz x3, LBB1_23
LBB1_22:                                //  %while.body
                                        //    in Loop: Header=BB1_20 Depth=3
	addi x8, x8, 2
	jalr x0, LBB1_20 ( x0 )
LBB1_23:                                //  %while.end
                                        //    in Loop: Header=BB1_19 Depth=2
	sub x3, x8, x4
	srai x5, x3, 1
	bgtu x5, x0, LBB1_25
LBB1_24:                                //    in Loop: Header=BB1_19 Depth=2
	sw x9, 28 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_31 ( x0 )
LBB1_25:                                //  %if.then75
                                        //    in Loop: Header=BB1_19 Depth=2
	sw x3, 4 ( x9 )
	sw x4, 0 ( x9 )
	lw x4, 8 ( x7 )
	nop
	add x3, x3, x4
	sw x3, 8 ( x7 )
	lw x3, 84 ( x2 )
	nop
	addi x4, x3, 1
	slti x3, x3, 7
	sw x4, 84 ( x2 )
	beqz x3, LBB1_27
LBB1_26:                                //    in Loop: Header=BB1_19 Depth=2
	addi x9, x9, 8
	jalr x0, LBB1_30 ( x0 )
LBB1_27:                                //  %if.then82
                                        //    in Loop: Header=BB1_19 Depth=2
	sw x5, 72 ( x2 )                //  4-byte Folded Spill
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x7
	call $__sprint_r
	beqz x10, LBB1_29
LBB1_28:
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_242 ( x0 )
LBB1_29:                                //  %if.then82.if.end88_crit_edge
                                        //    in Loop: Header=BB1_19 Depth=2
	lh x1, 0 ( x8 )
	addi x3, x2, 1124
	add x9, x0, x3
	lw x5, 72 ( x2 )                //  4-byte Folded Reload
LBB1_30:                                //  %if.end88
                                        //    in Loop: Header=BB1_19 Depth=2
	sw x9, 28 ( x2 )                //  4-byte Folded Spill
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x5
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
LBB1_31:                                //  %if.end90
                                        //    in Loop: Header=BB1_19 Depth=2
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	bgtu x1, x0, LBB1_249
LBB1_248:                               //  %if.end90
                                        //    in Loop: Header=BB1_19 Depth=2
	jalr x0, LBB1_236 ( x0 )
LBB1_249:                               //  %if.end90
                                        //    in Loop: Header=BB1_19 Depth=2
LBB1_32:                                //  %if.end95
                                        //    in Loop: Header=BB1_19 Depth=2
	addi x1, x8, 2
	sh x0, 94 ( x2 )
	add x3, x0, x0
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x3
	not x4, x0
	sw x4, 36 ( x2 )                //  4-byte Folded Spill
	sw x3, 52 ( x2 )                //  4-byte Folded Spill
LBB1_33:                                //  %rflag
                                        //    Parent Loop BB1_18 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB1_34 Depth 4
                                        //            Child Loop BB1_55 Depth 5
                                        //            Child Loop BB1_47 Depth 5
	addi x8, x1, 2
	lh x4, 0 ( x1 )
LBB1_34:                                //  %reswitch
                                        //    Parent Loop BB1_18 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //        Parent Loop BB1_33 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB1_55 Depth 5
                                        //            Child Loop BB1_47 Depth 5
	sw x10, 68 ( x2 )               //  4-byte Folded Spill
	sw x8, 72 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 120
	bgtu x4, x1, LBB1_168
LBB1_35:                                //  %reswitch
                                        //    in Loop: Header=BB1_34 Depth=4
	add x10, x0, x4
	addi x11, x0, 4
	add x8, x0, x4
	call $__mulsi3
	add x4, x0, x8
	ori x28, x0, JTI1_0 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI1_0 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB1_36:                                //  %sw.bb
                                        //    in Loop: Header=BB1_33 Depth=3
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	and x3, x1, x3
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x0, x4
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	bgtu x3, x0, LBB1_33
LBB1_37:                                //  %if.then100
                                        //    in Loop: Header=BB1_33 Depth=3
	addi x1, x0, 32
	sh x1, 94 ( x2 )
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x4
	jalr x0, LBB1_33 ( x0 )
LBB1_38:                                //  %sw.bb102
                                        //    in Loop: Header=BB1_33 Depth=3
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 1
LBB1_39:                                //  %rflag
                                        //    in Loop: Header=BB1_33 Depth=3
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
LBB1_40:                                //  %rflag
                                        //    in Loop: Header=BB1_33 Depth=3
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_33 ( x0 )
LBB1_41:                                //  %sw.bb104
                                        //    in Loop: Header=BB1_33 Depth=3
	lw x1, 96 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 96 ( x2 )
	lw x10, 0 ( x1 )
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x0, x3
	bgez x10, LBB1_33
LBB1_42:                                //  %if.end108
                                        //    in Loop: Header=BB1_33 Depth=3
	sub x10, x0, x10
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 4
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x3
	jalr x0, LBB1_33 ( x0 )
LBB1_43:                                //  %sw.bb109.loopexit
                                        //    in Loop: Header=BB1_33 Depth=3
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 4
	jalr x0, LBB1_39 ( x0 )
LBB1_44:                                //  %sw.bb111
                                        //    in Loop: Header=BB1_33 Depth=3
	addi x1, x0, 43
	sh x1, 94 ( x2 )
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_40 ( x0 )
LBB1_45:                                //  %sw.bb112
                                        //    in Loop: Header=BB1_34 Depth=4
	lw x8, 72 ( x2 )                //  4-byte Folded Reload
	nop
	lh x4, 0 ( x8 )
	addi x8, x8, 2
	xori x1, x4, 42
	beqz x1, LBB1_50
LBB1_46:                                //  %while.cond124.preheader
                                        //    in Loop: Header=BB1_34 Depth=4
	addi x3, x4, -48
	add x1, x0, x0
	add x10, x0, x1
	addi x1, x0, 9
	bgtu x3, x1, LBB1_48
LBB1_47:                                //  %while.body128
                                        //    Parent Loop BB1_18 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //        Parent Loop BB1_33 Depth=3
                                        //          Parent Loop BB1_34 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	sw x3, 72 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 10
	call $__mulsi3
	lh x4, 0 ( x8 )
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x1, x10
	addi x8, x8, 2
	addi x3, x4, -48
	sltiu x1, x3, 10
	bgtu x1, x0, LBB1_47
LBB1_48:                                //  %while.end134
                                        //    in Loop: Header=BB1_34 Depth=4
	not x1, x0
	add x3, x0, x10
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	bgt x3, x1, LBB1_34
LBB1_49:                                //  %while.end134
                                        //    in Loop: Header=BB1_34 Depth=4
	not x1, x0
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_34 ( x0 )
LBB1_50:                                //  %if.then117
                                        //    in Loop: Header=BB1_33 Depth=3
	lw x1, 96 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 96 ( x2 )
	lw x3, 0 ( x1 )
	not x1, x0
	bgt x3, x1, LBB1_52
LBB1_51:                                //  %if.then117
                                        //    in Loop: Header=BB1_33 Depth=3
	not x1, x0
	add x3, x0, x1
LBB1_52:                                //  %if.then117
                                        //    in Loop: Header=BB1_33 Depth=3
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x8
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_33 ( x0 )
LBB1_53:                                //  %sw.bb140
                                        //    in Loop: Header=BB1_33 Depth=3
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 128
	jalr x0, LBB1_39 ( x0 )
LBB1_54:                                //  %do.body143.preheader
                                        //    in Loop: Header=BB1_34 Depth=4
	add x3, x0, x4
	add x1, x0, x0
	add x10, x0, x1
	lw x8, 72 ( x2 )                //  4-byte Folded Reload
LBB1_55:                                //  %do.body143
                                        //    Parent Loop BB1_18 Depth=1
                                        //      Parent Loop BB1_19 Depth=2
                                        //        Parent Loop BB1_33 Depth=3
                                        //          Parent Loop BB1_34 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	sw x3, 72 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 10
	call $__mulsi3
	lh x4, 0 ( x8 )
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x10, x1
	addi x8, x8, 2
	addi x10, x1, -48
	addi x1, x4, -48
	sltiu x1, x1, 10
	add x3, x0, x4
	bgtu x1, x0, LBB1_55
	jalr x0, LBB1_34 ( x0 )
LBB1_56:                                //  %sw.bb154
                                        //    in Loop: Header=BB1_33 Depth=3
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 64
	jalr x0, LBB1_39 ( x0 )
LBB1_57:                                //  %sw.bb156
                                        //    in Loop: Header=BB1_33 Depth=3
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	lhu x1, 0 ( x3 )
	nop
	xori x1, x1, 108
	bgtu x1, x0, LBB1_59
LBB1_58:                                //  %if.then160
                                        //    in Loop: Header=BB1_33 Depth=3
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 32
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	addi x1, x3, 2
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_33 ( x0 )
LBB1_59:                                //  %if.else
                                        //    in Loop: Header=BB1_33 Depth=3
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 16
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x3
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_33 ( x0 )
LBB1_60:                                //  %sw.bb165
                                        //    in Loop: Header=BB1_33 Depth=3
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 32
	jalr x0, LBB1_39 ( x0 )
LBB1_61:                                //  %sw.bb167
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x1, 96 ( x2 )
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	andi x3, x3, 16
	addi x4, x1, 4
	sw x4, 96 ( x2 )
	lw x10, 0 ( x1 )
	beqz x3, LBB1_64
LBB1_62:                                //    in Loop: Header=BB1_18 Depth=1
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
LBB1_63:                                //  %if.end190
                                        //    in Loop: Header=BB1_18 Depth=1
	sh x10, 100 ( x2 )
	sh x0, 102 ( x2 )
	sh x0, 94 ( x2 )
	addi x1, x2, 100
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	add x4, x0, x1
	slti x3, x0, 1
	add x10, x0, x3
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_170 ( x0 )
LBB1_64:                                //  %if.then174
                                        //    in Loop: Header=BB1_18 Depth=1
	call $btowc
	xori x1, x10, -1
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB1_63
LBB1_65:                                //  %cleanup
	lh x1, 12 ( x8 )
	nop
	ori x1, x1, 64
	sh x1, 12 ( x8 )
	jalr x0, LBB1_242 ( x0 )
LBB1_66:                                //  %sw.bb192
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x7, 56 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x7, 32
	beqz x1, LBB1_68
LBB1_67:                                //  %cond.true195
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x1, 96 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 96 ( x2 )
	lw x9, 0 ( x1 )
	addi x1, x3, 4
	sw x1, 96 ( x2 )
	lw x11, 0 ( x3 )
	add x13, x0, x0
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_73 ( x0 )
LBB1_68:                                //  %cond.false197
                                        //    in Loop: Header=BB1_18 Depth=1
	andi x1, x7, 16
	beqz x1, LBB1_70
LBB1_69:                                //  %cond.true200
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x1, 96 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 96 ( x2 )
	lw x9, 0 ( x1 )
	jalr x0, LBB1_72 ( x0 )
LBB1_70:                                //  %cond.false202
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x1, 96 ( x2 )
	andi x3, x7, 64
	addi x4, x1, 4
	sw x4, 96 ( x2 )
	lw x9, 0 ( x1 )
	beqz x3, LBB1_72
LBB1_71:                                //  %cond.true205
                                        //    in Loop: Header=BB1_18 Depth=1
	slli x1, x9, 16
	srai x9, x1, 16
LBB1_72:                                //  %cond.end222
                                        //    in Loop: Header=BB1_18 Depth=1
	add x13, x0, x0
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	srai x11, x9, 31
LBB1_73:                                //  %cond.end225
                                        //    in Loop: Header=BB1_18 Depth=1
	bgt x0, x11, LBB1_75
LBB1_74:                                //    in Loop: Header=BB1_18 Depth=1
	slti x1, x0, 1
	jalr x0, LBB1_139 ( x0 )
LBB1_75:                                //  %if.then229
                                        //    in Loop: Header=BB1_18 Depth=1
	addi x1, x0, 45
	sh x1, 94 ( x2 )
	slti x1, x0, 1
	bne x9, x13, LBB1_77
LBB1_76:                                //  %if.then229
                                        //    in Loop: Header=BB1_18 Depth=1
	add x1, x0, x13
LBB1_77:                                //  %if.then229
                                        //    in Loop: Header=BB1_18 Depth=1
	sub x3, x0, x11
	sub x11, x3, x1
	sub x9, x0, x9
	slti x1, x0, 1
	jalr x0, LBB1_139 ( x0 )
LBB1_78:                                //  %sw.bb232
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 32
	beqz x1, LBB1_80
LBB1_79:                                //  %if.then235
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x1, 96 ( x2 )
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	nop
	srai x3, x5, 31
	addi x4, x1, 4
	sw x4, 96 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x3, 4 ( x1 )
	sw x5, 0 ( x1 )
	addi x7, x2, 80
	lw x5, 72 ( x2 )                //  4-byte Folded Reload
	lw x9, 28 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_19 ( x0 )
LBB1_80:                                //  %if.else238
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x1, x3, 16
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
	addi x7, x2, 80
	lw x5, 72 ( x2 )                //  4-byte Folded Reload
	lw x9, 28 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_82
LBB1_81:                                //  %if.then241
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x1, 96 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 96 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x4, 0 ( x1 )
	jalr x0, LBB1_19 ( x0 )
LBB1_82:                                //  %if.else243
                                        //    in Loop: Header=BB1_19 Depth=2
	andi x1, x3, 64
	beqz x1, LBB1_81
LBB1_83:                                //  %if.then246
                                        //    in Loop: Header=BB1_19 Depth=2
	lw x1, 96 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 96 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sh x4, 0 ( x1 )
	jalr x0, LBB1_19 ( x0 )
LBB1_84:                                //  %sw.bb254
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x7, 56 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x7, 32
	beqz x1, LBB1_86
LBB1_85:                                //  %cond.true257
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x1, 96 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 96 ( x2 )
	lw x9, 0 ( x1 )
	addi x1, x3, 4
	sw x1, 96 ( x2 )
	lw x11, 0 ( x3 )
	add x13, x0, x0
	add x1, x0, x13
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_138 ( x0 )
LBB1_86:                                //  %cond.false259
                                        //    in Loop: Header=BB1_18 Depth=1
	andi x1, x7, 16
	add x13, x0, x0
	beqz x1, LBB1_88
LBB1_87:                                //  %cond.true262
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x1, 96 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 96 ( x2 )
	lw x9, 0 ( x1 )
	jalr x0, LBB1_90 ( x0 )
LBB1_88:                                //  %cond.false264
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x1, 96 ( x2 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	addi x3, x1, 4
	sw x3, 96 ( x2 )
	andi x3, x7, 64
	lw x9, 0 ( x1 )
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	beq x3, x13, LBB1_90
LBB1_89:                                //  %cond.false264
                                        //    in Loop: Header=BB1_18 Depth=1
	and x9, x1, x9
LBB1_90:                                //  %cond.false264
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x13
	add x1, x0, x13
	jalr x0, LBB1_138 ( x0 )
LBB1_91:                                //  %sw.bb289
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x1, 96 ( x2 )
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	addi x3, x1, 4
	sw x3, 96 ( x2 )
	lw x9, 0 ( x1 )
	addi x1, x0, 48
	sh x1, 76 ( x2 )
	addi x1, x0, 120
	sh x1, 78 ( x2 )
	lui x1, $.str >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	lw x7, 56 ( x2 )                //  4-byte Folded Reload
	nop
	ori x7, x7, 2
	add x13, x0, x0
	add x11, x0, x13
	addi x1, x0, 2
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_138 ( x0 )
LBB1_92:                                //  %sw.bb295
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x1, 96 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 96 ( x2 )
	lw x4, 0 ( x1 )
	sh x0, 94 ( x2 )
	bgtu x4, x0, LBB1_96
LBB1_93:                                //  %if.then299
                                        //    in Loop: Header=BB1_18 Depth=1
	addi x1, x0, 6
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x3, LBB1_95
LBB1_94:                                //  %if.then299
                                        //    in Loop: Header=BB1_18 Depth=1
	addi x1, x0, 6
	add x3, x0, x1
LBB1_95:                                //  %if.then299
                                        //    in Loop: Header=BB1_18 Depth=1
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.1 >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	add x4, x0, x1
	add x10, x0, x3
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	addi x7, x2, 80
	jalr x0, LBB1_172 ( x0 )
LBB1_96:                                //  %if.else306
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 16
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	sw x4, 52 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB1_110
LBB1_97:                                //  %if.then312
                                        //    in Loop: Header=BB1_18 Depth=1
	add x11, x0, x0
	bgt x0, x3, LBB1_101
LBB1_98:                                //  %if.then315
                                        //    in Loop: Header=BB1_18 Depth=1
	add x12, x0, x3
	add x10, x0, x4
	call $memchr
	add x3, x0, x0
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	beq x10, x3, LBB1_100
LBB1_99:                                //  %if.then315
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x10, x1
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
LBB1_100:                               //  %if.then315
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_102 ( x0 )
LBB1_101:                               //  %if.else325
                                        //    in Loop: Header=BB1_18 Depth=1
	add x10, x0, x4
	call $strlen
	add x3, x0, x0
	add x4, x0, x10
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
LBB1_102:                               //  %if.end327
                                        //    in Loop: Header=BB1_18 Depth=1
	sltiu x1, x4, 40
	bgtu x1, x0, LBB1_105
LBB1_103:                               //  %if.then330
                                        //    in Loop: Header=BB1_18 Depth=1
	sw x4, 36 ( x2 )                //  4-byte Folded Spill
	slli x1, x4, 1
	addi x11, x1, 2
	call $_malloc_r
	beqz x10, LBB1_239
LBB1_104:                               //    in Loop: Header=BB1_18 Depth=1
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	add x5, x0, x10
	addi x7, x2, 80
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_106 ( x0 )
LBB1_105:                               //  %if.end344
                                        //    in Loop: Header=BB1_18 Depth=1
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	addi x1, x2, 100
	add x5, x0, x1
	addi x7, x2, 80
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	add x12, x0, x4
	add x10, x0, x3
	beqz x12, LBB1_109
LBB1_106:                               //  %for.body.preheader
                                        //    in Loop: Header=BB1_18 Depth=1
	add x11, x0, x5
	add x1, x0, x5
	add x3, x0, x0
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	nop
LBB1_107:                               //  %for.body
                                        //    Parent Loop BB1_18 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x4, x3, x10
	lb x4, 0 ( x4 )
	addi x3, x3, 1
	addi x5, x1, 2
	sh x4, 0 ( x1 )
	add x1, x0, x5
	bne x12, x3, LBB1_107
LBB1_108:                               //    in Loop: Header=BB1_18 Depth=1
	add x10, x0, x12
	add x5, x0, x11
LBB1_109:                               //  %cleanup353.thread
                                        //    in Loop: Header=BB1_18 Depth=1
	slli x1, x10, 1
	sw x5, 52 ( x2 )                //  4-byte Folded Spill
	add x1, x1, x5
	sh x0, 0 ( x1 )
	add x1, x0, x0
	add x4, x0, x1
	jalr x0, LBB1_172 ( x0 )
LBB1_110:                               //  %if.else357
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x0
	bgt x0, x3, LBB1_117
LBB1_111:                               //  %if.then360
                                        //    in Loop: Header=BB1_18 Depth=1
	add x12, x0, x3
	add x10, x0, x4
	sw x12, 36 ( x2 )               //  4-byte Folded Spill
	call $wmemchr
	bgtu x10, x0, LBB1_114
LBB1_112:                               //    in Loop: Header=BB1_18 Depth=1
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	add x4, x0, x1
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_170 ( x0 )
LBB1_114:                               //  %if.then365
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x4, 52 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x10, x4
	srai x1, x1, 1
	addi x7, x2, 80
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x1, x3, LBB1_116
LBB1_115:                               //  %if.then365
                                        //    in Loop: Header=BB1_18 Depth=1
	add x3, x0, x1
LBB1_116:                               //  %if.then365
                                        //    in Loop: Header=BB1_18 Depth=1
	sw x4, 52 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	add x4, x0, x1
	add x10, x0, x3
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_171 ( x0 )
LBB1_117:                               //  %if.else376
                                        //    in Loop: Header=BB1_18 Depth=1
	add x10, x0, x4
	call $wcslen
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	add x4, x0, x1
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_170 ( x0 )
LBB1_118:                               //  %sw.bb381
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x7, 56 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x7, 32
	beqz x1, LBB1_120
LBB1_119:                               //  %cond.true384
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x1, 96 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 96 ( x2 )
	lw x9, 0 ( x1 )
	addi x1, x3, 4
	sw x1, 96 ( x2 )
	lw x11, 0 ( x3 )
	slti x1, x0, 1
	add x13, x0, x0
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_138 ( x0 )
LBB1_120:                               //  %cond.false386
                                        //    in Loop: Header=BB1_18 Depth=1
	andi x1, x7, 16
	add x13, x0, x0
	beqz x1, LBB1_122
LBB1_121:                               //  %cond.true389
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x1, 96 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 96 ( x2 )
	lw x9, 0 ( x1 )
	jalr x0, LBB1_124 ( x0 )
LBB1_122:                               //  %cond.false391
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x1, 96 ( x2 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	addi x3, x1, 4
	sw x3, 96 ( x2 )
	andi x3, x7, 64
	lw x9, 0 ( x1 )
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	beq x3, x13, LBB1_124
LBB1_123:                               //  %cond.false391
                                        //    in Loop: Header=BB1_18 Depth=1
	and x9, x1, x9
LBB1_124:                               //  %cond.false391
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x13
	slti x1, x0, 1
	jalr x0, LBB1_138 ( x0 )
LBB1_125:                               //  %hex.loopexit1769
                                        //    in Loop: Header=BB1_18 Depth=1
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 120
	jalr x0, LBB1_127 ( x0 )
LBB1_126:                               //  %hex.loopexit
                                        //    in Loop: Header=BB1_18 Depth=1
	ori x28, x0, $.str.2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.2 >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 88
LBB1_127:                               //  %hex
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x7, 56 ( x2 )                //  4-byte Folded Reload
	nop
	andi x3, x7, 32
	beqz x3, LBB1_129
LBB1_128:                               //  %cond.true420
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x3, 96 ( x2 )
	nop
	addi x4, x3, 4
	sw x4, 96 ( x2 )
	lw x9, 0 ( x3 )
	addi x3, x4, 4
	sw x3, 96 ( x2 )
	lw x11, 0 ( x4 )
	add x13, x0, x0
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_134 ( x0 )
LBB1_129:                               //  %cond.false422
                                        //    in Loop: Header=BB1_18 Depth=1
	andi x3, x7, 16
	add x13, x0, x0
	beqz x3, LBB1_131
LBB1_130:                               //  %cond.true425
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x3, 96 ( x2 )
	nop
	addi x4, x3, 4
	sw x4, 96 ( x2 )
	lw x9, 0 ( x3 )
	jalr x0, LBB1_133 ( x0 )
LBB1_131:                               //  %cond.false427
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x3, 96 ( x2 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	addi x4, x3, 4
	sw x4, 96 ( x2 )
	andi x4, x7, 64
	lw x9, 0 ( x3 )
	lui x3, 65535 >> 12 & 0xfffff
	or x3, x3, x28
	beq x4, x13, LBB1_133
LBB1_132:                               //  %cond.false427
                                        //    in Loop: Header=BB1_18 Depth=1
	and x9, x3, x9
LBB1_133:                               //  %cond.false427
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x13
LBB1_134:                               //  %cond.end450
                                        //    in Loop: Header=BB1_18 Depth=1
	andi x3, x7, 1
	beqz x3, LBB1_137
LBB1_135:                               //  %cond.end450
                                        //    in Loop: Header=BB1_18 Depth=1
	or x3, x11, x9
	beqz x3, LBB1_137
LBB1_136:                               //  %if.then457
                                        //    in Loop: Header=BB1_18 Depth=1
	addi x3, x0, 48
	sh x3, 76 ( x2 )
	sh x1, 78 ( x2 )
	ori x7, x7, 2
LBB1_137:                               //  %nosign
                                        //    in Loop: Header=BB1_18 Depth=1
	addi x1, x0, 2
LBB1_138:                               //  %nosign
                                        //    in Loop: Header=BB1_18 Depth=1
	sh x0, 94 ( x2 )
LBB1_139:                               //  %number
                                        //    in Loop: Header=BB1_18 Depth=1
	not x3, x0
	ble x4, x3, LBB1_141
LBB1_140:                               //    in Loop: Header=BB1_18 Depth=1
	andi x7, x7, -129
LBB1_141:                               //  %number
                                        //    in Loop: Header=BB1_18 Depth=1
	sw x7, 56 ( x2 )                //  4-byte Folded Spill
	bgtu x4, x0, LBB1_143
LBB1_142:                               //  %number
                                        //    in Loop: Header=BB1_18 Depth=1
	or x3, x11, x9
	beqz x3, LBB1_162
LBB1_143:                               //  %if.then474
                                        //    in Loop: Header=BB1_18 Depth=1
	beqz x1, LBB1_147
LBB1_144:                               //  %if.then474
                                        //    in Loop: Header=BB1_18 Depth=1
	andi x1, x1, 255
	xori x3, x1, 1
	beqz x3, LBB1_152
LBB1_145:                               //  %if.then474
                                        //    in Loop: Header=BB1_18 Depth=1
	xori x1, x1, 2
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB1_161
LBB1_146:                               //  %do.body511
                                        //    Parent Loop BB1_18 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	andi x1, x9, 15
	slli x1, x1, 1
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
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
	bgtu x1, x0, LBB1_146
	jalr x0, LBB1_167 ( x0 )
LBB1_147:                               //  %do.body477.preheader
                                        //    in Loop: Header=BB1_18 Depth=1
	addi x1, x2, 178
LBB1_148:                               //  %do.body477
                                        //    Parent Loop BB1_18 Depth=1
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
	bgtu x5, x0, LBB1_148
LBB1_149:                               //  %do.end484
                                        //    in Loop: Header=BB1_18 Depth=1
	addi x5, x1, 2
	andi x4, x7, 1
	beqz x4, LBB1_167
LBB1_150:                               //  %do.end484
                                        //    in Loop: Header=BB1_18 Depth=1
	xori x3, x3, 48
	beqz x3, LBB1_167
LBB1_151:                               //  %if.then491
                                        //    in Loop: Header=BB1_18 Depth=1
	addi x3, x0, 48
	sh x3, 0 ( x1 )
	jalr x0, LBB1_166 ( x0 )
LBB1_152:                               //  %sw.bb494
                                        //    in Loop: Header=BB1_18 Depth=1
	bne x11, x13, LBB1_154
LBB1_153:                               //    in Loop: Header=BB1_18 Depth=1
	sltiu x1, x9, 10
	jalr x0, LBB1_155 ( x0 )
LBB1_154:                               //  %sw.bb494
                                        //    in Loop: Header=BB1_18 Depth=1
	add x1, x0, x13
LBB1_155:                               //  %sw.bb494
                                        //    in Loop: Header=BB1_18 Depth=1
	bgtu x1, x0, LBB1_245
LBB1_156:                               //    in Loop: Header=BB1_18 Depth=1
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	nop
LBB1_157:                               //  %do.body502
                                        //    Parent Loop BB1_18 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x5, 52 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x9
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	addi x8, x0, 10
	add x12, x0, x8
	add x8, x0, x11
	call $__umoddi3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	addi x12, x0, 10
	add x13, x0, x0
	call $__udivdi3
	add x13, x0, x0
	bne x8, x13, LBB1_159
LBB1_158:                               //    in Loop: Header=BB1_157 Depth=2
	addi x1, x0, 9
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sltu x1, x1, x3
	jalr x0, LBB1_160 ( x0 )
LBB1_159:                               //  %do.body502
                                        //    in Loop: Header=BB1_157 Depth=2
	sltu x1, x0, x8
LBB1_160:                               //  %do.body502
                                        //    in Loop: Header=BB1_157 Depth=2
	lw x5, 52 ( x2 )                //  4-byte Folded Reload
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	ori x3, x3, 48
	sh x3, -2 ( x5 )
	addi x5, x5, -2
	add x9, x0, x10
	bgtu x1, x0, LBB1_157
	jalr x0, LBB1_167 ( x0 )
LBB1_161:                               //  %sw.default
                                        //    in Loop: Header=BB1_18 Depth=1
	ori x28, x0, $.str.3 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.3 >> 12 & 0xfffff
	or x10, x1, x28
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x13
	call $wcslen
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	sw x8, 32 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_169 ( x0 )
LBB1_162:                               //  %if.else520
                                        //    in Loop: Header=BB1_18 Depth=1
	andi x1, x1, 255
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB1_167
LBB1_163:                               //  %if.else520
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 1
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_167
LBB1_164:                               //  %if.then527
                                        //    in Loop: Header=BB1_18 Depth=1
	addi x1, x0, 48
LBB1_165:                               //  %if.end530
                                        //    in Loop: Header=BB1_18 Depth=1
	sh x1, 178 ( x2 )
	addi x1, x2, 178
LBB1_166:                               //  %if.end530
                                        //    in Loop: Header=BB1_18 Depth=1
	add x5, x0, x1
LBB1_167:                               //  %if.end530
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	sw x5, 52 ( x2 )                //  4-byte Folded Spill
	sub x1, x1, x5
	srai x10, x1, 1
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	sw x13, 32 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB1_169 ( x0 )
LBB1_168:                               //  %if.end541
                                        //    in Loop: Header=BB1_18 Depth=1
	sh x4, 100 ( x2 )
	sh x0, 94 ( x2 )
	addi x1, x2, 100
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	add x4, x0, x1
	slti x3, x0, 1
	add x10, x0, x3
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
LBB1_169:                               //  %sw.epilog544
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
LBB1_170:                               //  %sw.epilog544
                                        //    in Loop: Header=BB1_18 Depth=1
	addi x7, x2, 80
LBB1_171:                               //  %sw.epilog544
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
LBB1_172:                               //  %sw.epilog544
                                        //    in Loop: Header=BB1_18 Depth=1
	add x1, x0, x4
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	bgt x4, x10, LBB1_174
LBB1_173:                               //  %sw.epilog544
                                        //    in Loop: Header=BB1_18 Depth=1
	add x1, x0, x10
LBB1_174:                               //  %sw.epilog544
                                        //    in Loop: Header=BB1_18 Depth=1
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	lhu x3, 94 ( x2 )
	nop
	sltu x3, x0, x3
	andi x3, x3, 1
	add x5, x1, x3
	andi x10, x9, 2
	srli x1, x10, 1
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	lw x4, 28 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_176
LBB1_175:                               //    in Loop: Header=BB1_18 Depth=1
	addi x5, x5, 2
LBB1_176:                               //  %sw.epilog544
                                        //    in Loop: Header=BB1_18 Depth=1
	andi x1, x9, 132
	sw x9, 56 ( x2 )                //  4-byte Folded Spill
	sw x5, 36 ( x2 )                //  4-byte Folded Spill
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	bgtu x1, x0, LBB1_185
LBB1_177:                               //  %if.then563
                                        //    in Loop: Header=BB1_18 Depth=1
	sub x8, x3, x5
	ble x8, x0, LBB1_184
LBB1_178:                               //  %while.cond568.preheader
                                        //    in Loop: Header=BB1_18 Depth=1
	ori x28, x0, $_vfiwprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfiwprintf_r.blanks >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	slti x1, x8, 17
	bgtu x1, x0, LBB1_182
LBB1_179:                               //  %while.body571
                                        //    Parent Loop BB1_18 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x1, x0, 32
	sw x1, 4 ( x4 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 32
	sw x1, 8 ( x7 )
	lw x1, 84 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 84 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_188
LBB1_180:                               //    in Loop: Header=BB1_179 Depth=2
	addi x4, x4, 8
LBB1_181:                               //  %if.end587
                                        //    in Loop: Header=BB1_179 Depth=2
	ori x28, x0, $_vfiwprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfiwprintf_r.blanks >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x8, x8, -16
	addi x1, x0, 16
	bgt x8, x1, LBB1_179
LBB1_182:                               //  %while.end589
                                        //    in Loop: Header=BB1_18 Depth=1
	slli x1, x8, 1
	sw x1, 4 ( x4 )
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 84 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 84 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_190
LBB1_183:                               //    in Loop: Header=BB1_18 Depth=1
	addi x4, x4, 8
LBB1_184:                               //  %if.end609
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
LBB1_185:                               //  %if.end609
                                        //    in Loop: Header=BB1_18 Depth=1
	lhu x1, 94 ( x2 )
	nop
	beqz x1, LBB1_194
LBB1_186:                               //  %if.then611
                                        //    in Loop: Header=BB1_18 Depth=1
	addi x1, x2, 94
	sw x1, 0 ( x4 )
	addi x1, x0, 2
	sw x1, 4 ( x4 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 2
	sw x1, 8 ( x7 )
	lw x1, 84 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 84 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_193
LBB1_187:                               //    in Loop: Header=BB1_18 Depth=1
	addi x4, x4, 8
	jalr x0, LBB1_194 ( x0 )
LBB1_188:                               //  %if.then581
                                        //    in Loop: Header=BB1_179 Depth=2
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 80
	call $__sprint_r
	addi x7, x2, 80
	addi x1, x2, 1124
	add x4, x0, x1
	beqz x10, LBB1_181
LBB1_189:
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_192 ( x0 )
LBB1_190:                               //  %if.then601
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	addi x12, x2, 80
	call $__sprint_r
	addi x7, x2, 80
	addi x1, x2, 1124
	add x4, x0, x1
	beqz x10, LBB1_185
LBB1_191:
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
LBB1_192:                               //  %error
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_240 ( x0 )
LBB1_193:                               //  %if.then621
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	addi x12, x2, 80
	call $__sprint_r
	addi x7, x2, 80
	addi x1, x2, 1124
	add x4, x0, x1
	bgtu x10, x0, LBB1_191
LBB1_194:                               //  %if.end628
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB1_198
LBB1_195:                               //  %if.then631
                                        //    in Loop: Header=BB1_18 Depth=1
	addi x1, x2, 76
	sw x1, 0 ( x4 )
	addi x1, x0, 4
	sw x1, 4 ( x4 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 4
	sw x1, 8 ( x7 )
	lw x1, 84 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 84 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_197
LBB1_196:                               //    in Loop: Header=BB1_18 Depth=1
	addi x4, x4, 8
	jalr x0, LBB1_198 ( x0 )
LBB1_197:                               //  %if.then642
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	addi x12, x2, 80
	call $__sprint_r
	addi x7, x2, 80
	addi x1, x2, 1124
	add x4, x0, x1
	bgtu x10, x0, LBB1_191
LBB1_198:                               //  %if.end649
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	xori x1, x1, 128
	bgtu x1, x0, LBB1_208
LBB1_199:                               //  %if.then653
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x1, x3
	ble x8, x0, LBB1_208
LBB1_200:                               //  %while.cond658.preheader
                                        //    in Loop: Header=BB1_18 Depth=1
	ori x28, x0, $_vfiwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfiwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	slti x1, x8, 17
	bgtu x1, x0, LBB1_205
LBB1_201:                               //  %while.body661
                                        //    Parent Loop BB1_18 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x1, x0, 32
	sw x1, 4 ( x4 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 32
	sw x1, 8 ( x7 )
	lw x1, 84 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 84 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_203
LBB1_202:                               //    in Loop: Header=BB1_201 Depth=2
	addi x4, x4, 8
	jalr x0, LBB1_204 ( x0 )
LBB1_203:                               //  %if.then671
                                        //    in Loop: Header=BB1_201 Depth=2
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 80
	call $__sprint_r
	addi x7, x2, 80
	addi x1, x2, 1124
	add x4, x0, x1
	bgtu x10, x0, LBB1_189
LBB1_204:                               //  %if.end677
                                        //    in Loop: Header=BB1_201 Depth=2
	ori x28, x0, $_vfiwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfiwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x8, x8, -16
	addi x1, x0, 16
	bgt x8, x1, LBB1_201
LBB1_205:                               //  %while.end679
                                        //    in Loop: Header=BB1_18 Depth=1
	slli x1, x8, 1
	sw x1, 4 ( x4 )
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 84 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 84 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_207
LBB1_206:                               //    in Loop: Header=BB1_18 Depth=1
	addi x4, x4, 8
	jalr x0, LBB1_208 ( x0 )
LBB1_207:                               //  %if.then691
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 80
	call $__sprint_r
	addi x7, x2, 80
	addi x1, x2, 1124
	add x4, x0, x1
	bgtu x10, x0, LBB1_189
LBB1_208:                               //  %if.end699
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x3, x1
	bgt x8, x0, LBB1_210
LBB1_209:                               //    in Loop: Header=BB1_18 Depth=1
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_218 ( x0 )
LBB1_210:                               //  %while.cond704.preheader
                                        //    in Loop: Header=BB1_18 Depth=1
	ori x28, x0, $_vfiwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfiwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	slti x1, x8, 17
	bgtu x1, x0, LBB1_215
LBB1_211:                               //  %while.body707
                                        //    Parent Loop BB1_18 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x1, x0, 32
	sw x1, 4 ( x4 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 32
	sw x1, 8 ( x7 )
	lw x1, 84 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 84 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_213
LBB1_212:                               //    in Loop: Header=BB1_211 Depth=2
	addi x4, x4, 8
	jalr x0, LBB1_214 ( x0 )
LBB1_213:                               //  %if.then717
                                        //    in Loop: Header=BB1_211 Depth=2
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 80
	call $__sprint_r
	addi x7, x2, 80
	addi x1, x2, 1124
	add x4, x0, x1
	bgtu x10, x0, LBB1_189
LBB1_214:                               //  %if.end723
                                        //    in Loop: Header=BB1_211 Depth=2
	ori x28, x0, $_vfiwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_vfiwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x8, x8, -16
	addi x1, x0, 16
	bgt x8, x1, LBB1_211
LBB1_215:                               //  %while.end725
                                        //    in Loop: Header=BB1_18 Depth=1
	slli x1, x8, 1
	sw x1, 4 ( x4 )
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 84 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 84 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_217
LBB1_216:                               //    in Loop: Header=BB1_18 Depth=1
	addi x4, x4, 8
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_218 ( x0 )
LBB1_217:                               //  %if.then737
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	addi x12, x2, 80
	call $__sprint_r
	addi x7, x2, 80
	addi x1, x2, 1124
	add x4, x0, x1
	bgtu x10, x0, LBB1_191
LBB1_218:                               //  %if.end744
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x4 )
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 1
	sw x1, 4 ( x4 )
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 84 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 84 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_220
LBB1_219:                               //    in Loop: Header=BB1_18 Depth=1
	addi x1, x4, 8
	jalr x0, LBB1_221 ( x0 )
LBB1_220:                               //  %if.then756
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	addi x12, x2, 80
	call $__sprint_r
	addi x7, x2, 80
	addi x1, x2, 1124
	bgtu x10, x0, LBB1_191
LBB1_221:                               //  %if.end762
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	andi x3, x3, 4
	beqz x3, LBB1_230
LBB1_222:                               //  %if.then765
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x3, x4
	ble x8, x0, LBB1_230
LBB1_223:                               //  %while.cond770.preheader
                                        //    in Loop: Header=BB1_18 Depth=1
	ori x28, x0, $_vfiwprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $_vfiwprintf_r.blanks >> 12 & 0xfffff
	or x3, x3, x28
	sw x3, 0 ( x1 )
	slti x3, x8, 17
	bgtu x3, x0, LBB1_228
LBB1_224:                               //  %while.body773
                                        //    Parent Loop BB1_18 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x3, x0, 32
	sw x3, 4 ( x1 )
	lw x3, 8 ( x7 )
	nop
	addi x3, x3, 32
	sw x3, 8 ( x7 )
	lw x3, 84 ( x2 )
	nop
	addi x4, x3, 1
	sw x4, 84 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB1_226
LBB1_225:                               //    in Loop: Header=BB1_224 Depth=2
	addi x1, x1, 8
	jalr x0, LBB1_227 ( x0 )
LBB1_226:                               //  %if.then783
                                        //    in Loop: Header=BB1_224 Depth=2
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 80
	call $__sprint_r
	addi x7, x2, 80
	addi x1, x2, 1124
	bgtu x10, x0, LBB1_189
LBB1_227:                               //  %if.end789
                                        //    in Loop: Header=BB1_224 Depth=2
	ori x28, x0, $_vfiwprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $_vfiwprintf_r.blanks >> 12 & 0xfffff
	or x3, x3, x28
	sw x3, 0 ( x1 )
	addi x8, x8, -16
	addi x3, x0, 16
	bgt x8, x3, LBB1_224
LBB1_228:                               //  %while.end791
                                        //    in Loop: Header=BB1_18 Depth=1
	slli x3, x8, 1
	sw x3, 4 ( x1 )
	lw x1, 8 ( x7 )
	nop
	add x1, x3, x1
	sw x1, 8 ( x7 )
	lw x1, 84 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 84 ( x2 )
	slti x1, x1, 7
	bgtu x1, x0, LBB1_230
LBB1_229:                               //  %if.then803
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 80
	call $__sprint_r
	addi x7, x2, 80
	bgtu x10, x0, LBB1_189
LBB1_230:                               //  %if.end811
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x3, x1, LBB1_232
LBB1_231:                               //  %if.end811
                                        //    in Loop: Header=BB1_18 Depth=1
	add x3, x0, x1
LBB1_232:                               //  %if.end811
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	lw x1, 88 ( x2 )
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_234
LBB1_233:                               //  %land.lhs.true821
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	addi x12, x2, 80
	call $__sprint_r
	addi x7, x2, 80
	bgtu x10, x0, LBB1_191
LBB1_234:                               //  %if.end825
                                        //    in Loop: Header=BB1_18 Depth=1
	sw x0, 84 ( x2 )
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB1_251
LBB1_250:                               //  %if.end825
                                        //    in Loop: Header=BB1_18 Depth=1
	jalr x0, LBB1_18 ( x0 )
LBB1_251:                               //  %if.end825
                                        //    in Loop: Header=BB1_18 Depth=1
LBB1_235:                               //  %if.then830
                                        //    in Loop: Header=BB1_18 Depth=1
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $_free_r
	addi x7, x2, 80
	add x1, x0, x0
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	jalr x0, LBB1_18 ( x0 )
LBB1_236:                               //  %done
	lw x1, 88 ( x2 )
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_238
LBB1_237:                               //  %land.lhs.true834
	addi x12, x2, 80
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__sprint_r
	bgtu x10, x0, LBB1_242
LBB1_238:                               //  %if.end838
	sw x0, 84 ( x2 )
	jalr x0, LBB1_242 ( x0 )
LBB1_239:                               //  %cleanup353
	lh x1, 12 ( x8 )
	add x11, x0, x0
	ori x1, x1, 64
	sh x1, 12 ( x8 )
	add x1, x0, x10
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
LBB1_240:                               //  %error
	beqz x1, LBB1_242
LBB1_241:                               //  %if.then843
	call $_free_r
LBB1_242:                               //  %if.end844
	lbu x1, 12 ( x8 )
	nop
	andi x1, x1, 64
	srli x1, x1, 6
	bgtu x1, x0, LBB1_253
LBB1_252:                               //  %if.end844
	jalr x0, LBB1_16 ( x0 )
LBB1_253:                               //  %if.end844
LBB1_243:
	not x10, x0
LBB1_244:                               //  %cleanup866
	lw x8, 1228 ( x2 )              //  4-byte Folded Reload
	lw x1, 1236 ( x2 )
$cfi6:
	.cfi_same_value 1
	addi x2, x2, 1240
$cfi7:
	.cfi_adjust_cfa_offset -1240
$cfi8:
	.cfi_def_cfa 2, 0
	ret
LBB1_245:                               //  %if.then497
                                        //    in Loop: Header=BB1_18 Depth=1
	addi x1, x9, 48
	jalr x0, LBB1_165 ( x0 )
$func_end1:
	.size	$_vfiwprintf_r, ($func_end1)-($_vfiwprintf_r)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	LBB1_236
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_36
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_38
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_41
	.long	LBB1_44
	.long	LBB1_168
	.long	LBB1_43
	.long	LBB1_45
	.long	LBB1_168
	.long	LBB1_53
	.long	LBB1_54
	.long	LBB1_54
	.long	LBB1_54
	.long	LBB1_54
	.long	LBB1_54
	.long	LBB1_54
	.long	LBB1_54
	.long	LBB1_54
	.long	LBB1_54
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_126
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_61
	.long	LBB1_66
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_56
	.long	LBB1_66
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_57
	.long	LBB1_168
	.long	LBB1_78
	.long	LBB1_84
	.long	LBB1_91
	.long	LBB1_60
	.long	LBB1_168
	.long	LBB1_92
	.long	LBB1_168
	.long	LBB1_118
	.long	LBB1_168
	.long	LBB1_168
	.long	LBB1_125

	.address_space	0	
	.address_space	0	
	.type	$_vfiwprintf_r.blanks,@object //  @_vfiwprintf_r.blanks
	.p2align	1
$_vfiwprintf_r.blanks:
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
	.size	$_vfiwprintf_r.blanks, 32

	.address_space	0	
	.type	$_vfiwprintf_r.zeroes,@object //  @_vfiwprintf_r.zeroes
	.p2align	1
$_vfiwprintf_r.zeroes:
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
	.size	$_vfiwprintf_r.zeroes, 32

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
