	.text
	.file	"svfwprintf.bc"
	.globl	$_svfwprintf_r
	.type	$_svfwprintf_r,@function
$_svfwprintf_r:                         //  @_svfwprintf_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -344
$cfi2:
	.cfi_adjust_cfa_offset 344
	sw x1, 340 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 332 ( x2 )               //  4-byte Folded Spill
	sw x12, 112 ( x2 )              //  4-byte Folded Spill
	add x8, x0, x11
	sw x13, 312 ( x2 )
	sw x0, 280 ( x2 )
	sw x10, 104 ( x2 )              //  4-byte Folded Spill
	call $_localeconv_r
	lw x1, 0 ( x10 )
	lbu x3, 12 ( x8 )
	lb x1, 0 ( x1 )
	andi x3, x3, 128
	sh x1, 308 ( x2 )
	beqz x3, LBB0_5
LBB0_1:                                 //  %land.lhs.true
	lw x1, 16 ( x8 )
	nop
	bgtu x1, x0, LBB0_5
LBB0_2:                                 //  %if.then
	addi x11, x0, 64
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	nop
	call $_malloc_r
	sw x10, 0 ( x8 )
	sw x10, 16 ( x8 )
	bgtu x10, x0, LBB0_4
LBB0_3:                                 //  %if.then9
	addi x1, x0, 12
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
	not x10, x0
	jalr x0, LBB0_407 ( x0 )
LBB0_4:                                 //  %if.end
	addi x1, x0, 64
	sw x1, 20 ( x8 )
LBB0_5:                                 //  %if.end11
	sw x8, 100 ( x2 )               //  4-byte Folded Spill
	addi x1, x2, 286
	addi x3, x2, 204
	addi x7, x2, 268
	add x4, x0, x0
	addi x5, x1, 6
	sw x5, 28 ( x2 )                //  4-byte Folded Spill
	addi x5, x2, 124
	sw x3, 268 ( x2 )
	sw x0, 8 ( x7 )
	addi x1, x1, 4
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	addi x1, x5, 80
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	sw x0, 272 ( x2 )
	sw x4, 84 ( x2 )                //  4-byte Folded Spill
	sw x4, 40 ( x2 )                //  4-byte Folded Spill
	sw x4, 52 ( x2 )                //  4-byte Folded Spill
	sw x4, 36 ( x2 )                //  4-byte Folded Spill
	sw x4, 76 ( x2 )                //  4-byte Folded Spill
	sw x4, 48 ( x2 )                //  4-byte Folded Spill
LBB0_6:                                 //  %for.cond.outer
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_7 Depth 2
                                        //        Child Loop BB0_8 Depth 3
                                        //          Child Loop BB0_9 Depth 4
                                        //          Child Loop BB0_22 Depth 4
                                        //            Child Loop BB0_23 Depth 5
                                        //              Child Loop BB0_46 Depth 6
                                        //              Child Loop BB0_37 Depth 6
                                        //      Child Loop BB0_162 Depth 2
                                        //      Child Loop BB0_201 Depth 2
                                        //      Child Loop BB0_212 Depth 2
                                        //      Child Loop BB0_203 Depth 2
                                        //      Child Loop BB0_107 Depth 2
                                        //      Child Loop BB0_113 Depth 2
                                        //      Child Loop BB0_234 Depth 2
                                        //      Child Loop BB0_255 Depth 2
                                        //      Child Loop BB0_264 Depth 2
                                        //      Child Loop BB0_372 Depth 2
                                        //      Child Loop BB0_329 Depth 2
                                        //      Child Loop BB0_352 Depth 2
                                        //      Child Loop BB0_306 Depth 2
                                        //      Child Loop BB0_288 Depth 2
                                        //      Child Loop BB0_388 Depth 2
	addi x1, x2, 204
	add x9, x0, x1
LBB0_7:                                 //  %for.cond
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_8 Depth 3
                                        //          Child Loop BB0_9 Depth 4
                                        //          Child Loop BB0_22 Depth 4
                                        //            Child Loop BB0_23 Depth 5
                                        //              Child Loop BB0_46 Depth 6
                                        //              Child Loop BB0_37 Depth 6
	lw x5, 112 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_8:                                 //  %for.cond
                                        //    Parent Loop BB0_6 Depth=1
                                        //      Parent Loop BB0_7 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_9 Depth 4
                                        //          Child Loop BB0_22 Depth 4
                                        //            Child Loop BB0_23 Depth 5
                                        //              Child Loop BB0_46 Depth 6
                                        //              Child Loop BB0_37 Depth 6
	add x8, x0, x5
LBB0_9:                                 //  %while.cond
                                        //    Parent Loop BB0_6 Depth=1
                                        //      Parent Loop BB0_7 Depth=2
                                        //        Parent Loop BB0_8 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	lhu x1, 0 ( x8 )
	nop
	beqz x1, LBB0_12
LBB0_10:                                //  %while.cond
                                        //    in Loop: Header=BB0_9 Depth=4
	xori x3, x1, 37
	beqz x3, LBB0_12
LBB0_11:                                //  %while.body
                                        //    in Loop: Header=BB0_9 Depth=4
	addi x8, x8, 2
	jalr x0, LBB0_9 ( x0 )
LBB0_12:                                //  %while.end
                                        //    in Loop: Header=BB0_8 Depth=3
	sub x3, x8, x5
	srai x10, x3, 1
	bgtu x10, x0, LBB0_14
LBB0_13:                                //    in Loop: Header=BB0_8 Depth=3
	sw x9, 68 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_20 ( x0 )
LBB0_14:                                //  %if.then19
                                        //    in Loop: Header=BB0_8 Depth=3
	sw x3, 4 ( x9 )
	sw x5, 0 ( x9 )
	lw x4, 8 ( x7 )
	nop
	add x3, x3, x4
	sw x3, 8 ( x7 )
	lw x3, 272 ( x2 )
	nop
	addi x4, x3, 1
	slti x3, x3, 7
	sw x4, 272 ( x2 )
	beqz x3, LBB0_16
LBB0_15:                                //    in Loop: Header=BB0_8 Depth=3
	addi x9, x9, 8
	jalr x0, LBB0_19 ( x0 )
LBB0_16:                                //  %if.then26
                                        //    in Loop: Header=BB0_8 Depth=3
	sw x10, 116 ( x2 )              //  4-byte Folded Spill
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x7
	call $__ssprint_r
	beqz x10, LBB0_18
LBB0_17:
	lw x3, 100 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_404 ( x0 )
LBB0_18:                                //  %if.then26.if.end32_crit_edge
                                        //    in Loop: Header=BB0_8 Depth=3
	lh x1, 0 ( x8 )
	addi x3, x2, 204
	add x9, x0, x3
	lw x10, 116 ( x2 )              //  4-byte Folded Reload
LBB0_19:                                //  %if.end32
                                        //    in Loop: Header=BB0_8 Depth=3
	sw x9, 68 ( x2 )                //  4-byte Folded Spill
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x10
	sw x3, 84 ( x2 )                //  4-byte Folded Spill
LBB0_20:                                //  %if.end34
                                        //    in Loop: Header=BB0_8 Depth=3
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	bgtu x1, x0, LBB0_410
LBB0_409:                               //  %if.end34
                                        //    in Loop: Header=BB0_8 Depth=3
	jalr x0, LBB0_401 ( x0 )
LBB0_410:                               //  %if.end34
                                        //    in Loop: Header=BB0_8 Depth=3
LBB0_21:                                //  %if.end39
                                        //    in Loop: Header=BB0_8 Depth=3
	addi x1, x8, 2
	sh x0, 310 ( x2 )
	add x3, x0, x0
	sw x3, 96 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x3
	not x4, x0
	add x5, x0, x4
	sw x3, 88 ( x2 )                //  4-byte Folded Spill
LBB0_22:                                //  %rflag
                                        //    Parent Loop BB0_6 Depth=1
                                        //      Parent Loop BB0_7 Depth=2
                                        //        Parent Loop BB0_8 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB0_23 Depth 5
                                        //              Child Loop BB0_46 Depth 6
                                        //              Child Loop BB0_37 Depth 6
	sw x5, 92 ( x2 )                //  4-byte Folded Spill
	addi x8, x1, 2
	lh x7, 0 ( x1 )
LBB0_23:                                //  %reswitch
                                        //    Parent Loop BB0_6 Depth=1
                                        //      Parent Loop BB0_7 Depth=2
                                        //        Parent Loop BB0_8 Depth=3
                                        //          Parent Loop BB0_22 Depth=4
                                        //  =>        This Loop Header: Depth=5
                                        //              Child Loop BB0_46 Depth 6
                                        //              Child Loop BB0_37 Depth 6
	sw x10, 108 ( x2 )              //  4-byte Folded Spill
	sw x8, 112 ( x2 )               //  4-byte Folded Spill
	addi x1, x0, 120
	sw x7, 116 ( x2 )               //  4-byte Folded Spill
	bgeu x1, x7, LBB0_412
LBB0_411:                               //  %reswitch
                                        //    in Loop: Header=BB0_23 Depth=5
	jalr x0, LBB0_224 ( x0 )
LBB0_412:                               //  %reswitch
                                        //    in Loop: Header=BB0_23 Depth=5
LBB0_24:                                //  %reswitch
                                        //    in Loop: Header=BB0_23 Depth=5
	add x10, x0, x7
	addi x11, x0, 4
	call $__mulsi3
	lw x7, 116 ( x2 )               //  4-byte Folded Reload
	ori x28, x0, JTI0_0 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI0_0 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB0_25:                                //  %sw.bb
                                        //    in Loop: Header=BB0_22 Depth=4
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	nop
	and x3, x1, x3
	lw x4, 112 ( x2 )               //  4-byte Folded Reload
	nop
	add x1, x0, x4
	lw x10, 108 ( x2 )              //  4-byte Folded Reload
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	bgtu x3, x0, LBB0_22
LBB0_26:                                //  %if.then44
                                        //    in Loop: Header=BB0_22 Depth=4
	addi x1, x0, 32
	sh x1, 310 ( x2 )
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x4
	jalr x0, LBB0_22 ( x0 )
LBB0_27:                                //  %sw.bb46
                                        //    in Loop: Header=BB0_22 Depth=4
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 1
LBB0_28:                                //  %rflag
                                        //    in Loop: Header=BB0_22 Depth=4
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
LBB0_29:                                //  %rflag
                                        //    in Loop: Header=BB0_22 Depth=4
	lw x1, 112 ( x2 )               //  4-byte Folded Reload
LBB0_30:                                //  %rflag
                                        //    in Loop: Header=BB0_22 Depth=4
	lw x10, 108 ( x2 )              //  4-byte Folded Reload
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_22 ( x0 )
LBB0_31:                                //  %sw.bb47
                                        //    in Loop: Header=BB0_22 Depth=4
	lw x1, 312 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 312 ( x2 )
	lw x10, 0 ( x1 )
	lw x3, 112 ( x2 )               //  4-byte Folded Reload
	nop
	add x1, x0, x3
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	bgez x10, LBB0_22
LBB0_32:                                //  %if.end51
                                        //    in Loop: Header=BB0_22 Depth=4
	sub x10, x0, x10
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 4
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x3
	jalr x0, LBB0_22 ( x0 )
LBB0_33:                                //  %sw.bb52.loopexit
                                        //    in Loop: Header=BB0_22 Depth=4
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 4
	jalr x0, LBB0_28 ( x0 )
LBB0_34:                                //  %sw.bb54
                                        //    in Loop: Header=BB0_22 Depth=4
	addi x1, x0, 43
	sh x1, 310 ( x2 )
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_29 ( x0 )
LBB0_35:                                //  %sw.bb55
                                        //    in Loop: Header=BB0_23 Depth=5
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
	nop
	lh x7, 0 ( x8 )
	addi x8, x8, 2
	xori x1, x7, 42
	beqz x1, LBB0_41
LBB0_36:                                //  %while.cond67.preheader
                                        //    in Loop: Header=BB0_23 Depth=5
	addi x5, x7, -48
	add x3, x0, x0
	addi x1, x0, 9
	bgtu x5, x1, LBB0_38
LBB0_37:                                //  %while.body71
                                        //    Parent Loop BB0_6 Depth=1
                                        //      Parent Loop BB0_7 Depth=2
                                        //        Parent Loop BB0_8 Depth=3
                                        //          Parent Loop BB0_22 Depth=4
                                        //            Parent Loop BB0_23 Depth=5
                                        //  =>          This Inner Loop Header: Depth=6
	sw x5, 116 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x3
	addi x11, x0, 10
	call $__mulsi3
	lh x7, 0 ( x8 )
	lw x1, 116 ( x2 )               //  4-byte Folded Reload
	nop
	add x3, x1, x10
	addi x8, x8, 2
	addi x5, x7, -48
	sltiu x1, x5, 10
	bgtu x1, x0, LBB0_37
LBB0_38:                                //  %while.end77
                                        //    in Loop: Header=BB0_23 Depth=5
	not x1, x0
	lw x10, 108 ( x2 )              //  4-byte Folded Reload
	bgt x3, x1, LBB0_40
LBB0_39:                                //  %while.end77
                                        //    in Loop: Header=BB0_23 Depth=5
	not x3, x0
LBB0_40:                                //  %while.end77
                                        //    in Loop: Header=BB0_23 Depth=5
	sw x3, 92 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_23 ( x0 )
LBB0_41:                                //  %if.then60
                                        //    in Loop: Header=BB0_22 Depth=4
	lw x1, 312 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 312 ( x2 )
	lw x5, 0 ( x1 )
	not x1, x0
	bgt x5, x1, LBB0_43
LBB0_42:                                //  %if.then60
                                        //    in Loop: Header=BB0_22 Depth=4
	not x1, x0
	add x5, x0, x1
LBB0_43:                                //  %if.then60
                                        //    in Loop: Header=BB0_22 Depth=4
	add x1, x0, x8
	lw x10, 108 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB0_22 ( x0 )
LBB0_44:                                //  %sw.bb80
                                        //    in Loop: Header=BB0_22 Depth=4
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 128
	jalr x0, LBB0_28 ( x0 )
LBB0_45:                                //  %do.body.preheader
                                        //    in Loop: Header=BB0_23 Depth=5
	add x3, x0, x7
	add x1, x0, x0
	add x10, x0, x1
	lw x8, 112 ( x2 )               //  4-byte Folded Reload
LBB0_46:                                //  %do.body
                                        //    Parent Loop BB0_6 Depth=1
                                        //      Parent Loop BB0_7 Depth=2
                                        //        Parent Loop BB0_8 Depth=3
                                        //          Parent Loop BB0_22 Depth=4
                                        //            Parent Loop BB0_23 Depth=5
                                        //  =>          This Inner Loop Header: Depth=6
	sw x3, 116 ( x2 )               //  4-byte Folded Spill
	addi x11, x0, 10
	call $__mulsi3
	lh x7, 0 ( x8 )
	lw x1, 116 ( x2 )               //  4-byte Folded Reload
	nop
	add x1, x10, x1
	addi x8, x8, 2
	addi x10, x1, -48
	addi x1, x7, -48
	sltiu x1, x1, 10
	add x3, x0, x7
	bgtu x1, x0, LBB0_46
	jalr x0, LBB0_23 ( x0 )
LBB0_47:                                //  %sw.bb91
                                        //    in Loop: Header=BB0_22 Depth=4
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 8
	jalr x0, LBB0_28 ( x0 )
LBB0_48:                                //  %sw.bb93
                                        //    in Loop: Header=BB0_22 Depth=4
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 64
	jalr x0, LBB0_28 ( x0 )
LBB0_49:                                //  %sw.bb95
                                        //    in Loop: Header=BB0_22 Depth=4
	lw x3, 112 ( x2 )               //  4-byte Folded Reload
	nop
	lhu x1, 0 ( x3 )
	nop
	xori x1, x1, 108
	bgtu x1, x0, LBB0_51
LBB0_50:                                //  %if.then99
                                        //    in Loop: Header=BB0_22 Depth=4
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 32
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	addi x1, x3, 2
	jalr x0, LBB0_30 ( x0 )
LBB0_51:                                //  %if.else
                                        //    in Loop: Header=BB0_22 Depth=4
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 16
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x3
	jalr x0, LBB0_30 ( x0 )
LBB0_52:                                //  %sw.bb104
                                        //    in Loop: Header=BB0_22 Depth=4
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 32
	jalr x0, LBB0_28 ( x0 )
LBB0_53:                                //  %sw.bb106
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 312 ( x2 )
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	nop
	andi x3, x3, 16
	addi x4, x1, 4
	sw x4, 312 ( x2 )
	lw x10, 0 ( x1 )
	beqz x3, LBB0_56
LBB0_54:                                //    in Loop: Header=BB0_6 Depth=1
	add x8, x0, x0
	addi x3, x0, 99
LBB0_55:                                //  %if.end129
                                        //    in Loop: Header=BB0_6 Depth=1
	sh x10, 124 ( x2 )
	sh x0, 126 ( x2 )
	sh x0, 310 ( x2 )
	sw x3, 116 ( x2 )               //  4-byte Folded Spill
	addi x1, x2, 124
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
	sw x8, 56 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x8
	slti x1, x0, 1
	add x10, x0, x1
	add x1, x0, x3
	sw x8, 72 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_225 ( x0 )
LBB0_56:                                //  %if.then113
                                        //    in Loop: Header=BB0_6 Depth=1
	call $btowc
	xori x1, x10, -1
	add x8, x0, x0
	addi x3, x0, 99
	bgtu x1, x0, LBB0_55
LBB0_57:                                //  %cleanup
	lw x3, 100 ( x2 )               //  4-byte Folded Reload
	nop
	lh x1, 12 ( x3 )
	nop
	ori x1, x1, 64
	sh x1, 12 ( x3 )
	jalr x0, LBB0_404 ( x0 )
LBB0_58:                                //  %sw.bb131
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 32
	beqz x1, LBB0_60
LBB0_59:                                //  %cond.true134
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 312 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 312 ( x2 )
	lw x9, 0 ( x1 )
	addi x1, x3, 4
	sw x1, 312 ( x2 )
	lw x11, 0 ( x3 )
	add x8, x0, x0
	slti x1, x0, 1
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_65 ( x0 )
LBB0_60:                                //  %cond.false136
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x1, x3, 16
	beqz x1, LBB0_62
LBB0_61:                                //  %cond.true139
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 312 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 312 ( x2 )
	lw x9, 0 ( x1 )
	jalr x0, LBB0_64 ( x0 )
LBB0_62:                                //  %cond.false141
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 312 ( x2 )
	andi x3, x3, 64
	addi x4, x1, 4
	sw x4, 312 ( x2 )
	lw x9, 0 ( x1 )
	beqz x3, LBB0_64
LBB0_63:                                //  %cond.true144
                                        //    in Loop: Header=BB0_6 Depth=1
	slli x1, x9, 16
	srai x9, x1, 16
LBB0_64:                                //  %cond.end161
                                        //    in Loop: Header=BB0_6 Depth=1
	add x8, x0, x0
	slti x1, x0, 1
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	srai x11, x9, 31
LBB0_65:                                //  %cond.end164
                                        //    in Loop: Header=BB0_6 Depth=1
	bgt x0, x11, LBB0_67
LBB0_66:                                //    in Loop: Header=BB0_6 Depth=1
	lw x13, 96 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_194 ( x0 )
LBB0_67:                                //  %if.then168
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x3, x0, 45
	sh x3, 310 ( x2 )
	lw x13, 96 ( x2 )               //  4-byte Folded Reload
	bne x9, x8, LBB0_69
LBB0_68:                                //  %if.then168
                                        //    in Loop: Header=BB0_6 Depth=1
	add x1, x0, x8
LBB0_69:                                //  %if.then168
                                        //    in Loop: Header=BB0_6 Depth=1
	sub x3, x0, x11
	sub x11, x3, x1
	sub x9, x0, x9
	slti x1, x0, 1
	jalr x0, LBB0_194 ( x0 )
LBB0_70:                                //  %sw.bb171
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 312 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 312 ( x2 )
	lw x10, 0 ( x1 )
	addi x1, x3, 4
	sw x1, 312 ( x2 )
	lw x8, 0 ( x3 )
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x8
	call $__fpclassifyd
	xori x1, x10, 1
	sw x8, 40 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB0_77
LBB0_71:                                //  %if.then185
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x8, x0, x0
	add x12, x0, x8
	add x13, x0, x8
	call $__ltdf2
	bgez x10, LBB0_73
LBB0_72:                                //  %if.then189
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 45
	sh x1, 310 ( x2 )
LBB0_73:                                //  %if.end190
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.1 >> 12 & 0xfffff
	or x1, x1, x28
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $.str >> 12 & 0xfffff
	or x3, x3, x28
	sw x3, 88 ( x2 )                //  4-byte Folded Spill
	addi x7, x2, 268
	addi x3, x0, 72
	lw x13, 96 ( x2 )               //  4-byte Folded Reload
	lw x9, 68 ( x2 )                //  4-byte Folded Reload
	lw x4, 116 ( x2 )               //  4-byte Folded Reload
	nop
	bgt x3, x4, LBB0_75
LBB0_74:                                //  %if.end190
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
LBB0_75:                                //  %if.end190
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x13, x13, -129
LBB0_76:                                //  %sw.epilog643
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x8, 56 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x8
	addi x1, x0, 3
	add x10, x0, x1
	add x1, x0, x3
	sw x8, 72 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_227 ( x0 )
LBB0_77:                                //  %if.end197
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__fpclassifyd
	bgtu x10, x0, LBB0_81
LBB0_78:                                //  %if.then202
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $.str.3 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.3 >> 12 & 0xfffff
	or x1, x1, x28
	ori x28, x0, $.str.2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $.str.2 >> 12 & 0xfffff
	or x3, x3, x28
	sw x3, 88 ( x2 )                //  4-byte Folded Spill
	addi x7, x2, 268
	addi x3, x0, 72
	lw x9, 68 ( x2 )                //  4-byte Folded Reload
	lw x4, 116 ( x2 )               //  4-byte Folded Reload
	nop
	bgt x3, x4, LBB0_80
LBB0_79:                                //  %if.then202
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
LBB0_80:                                //  %if.then202
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, -129
	add x8, x0, x0
	add x13, x0, x1
	jalr x0, LBB0_76 ( x0 )
LBB0_81:                                //  %if.end209
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	nop
	xori x1, x4, -1
	addi x3, x0, 6
	add x13, x0, x3
	lw x8, 104 ( x2 )               //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	lw x12, 40 ( x2 )               //  4-byte Folded Reload
	lw x17, 116 ( x2 )              //  4-byte Folded Reload
	beqz x1, LBB0_86
LBB0_82:                                //  %if.else214
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x1, x17, 32
	slti x3, x0, 1
	add x13, x0, x3
	addi x3, x0, 103
	beq x1, x3, LBB0_84
LBB0_83:                                //  %if.else214
                                        //    in Loop: Header=BB0_6 Depth=1
	add x13, x0, x4
LBB0_84:                                //  %if.else214
                                        //    in Loop: Header=BB0_6 Depth=1
	add x1, x0, x0
	beq x4, x1, LBB0_86
LBB0_85:                                //  %if.else214
                                        //    in Loop: Header=BB0_6 Depth=1
	add x13, x0, x4
LBB0_86:                                //  %if.end224
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	ori x14, x1, 256
	addi x1, x0, 40
	sw x1, 8 ( x2 )
	addi x1, x2, 124
	sw x1, 4 ( x2 )
	addi x1, x2, 280
	sw x1, 0 ( x2 )
	add x10, x0, x8
	sw x13, 92 ( x2 )               //  4-byte Folded Spill
	sw x14, 20 ( x2 )               //  4-byte Folded Spill
	addi x15, x2, 306
	addi x16, x2, 300
	call $wcvt
	add x3, x0, x8
	lw x8, 280 ( x2 )
	nop
	slti x1, x8, 41
	beqz x1, LBB0_88
LBB0_87:                                //    in Loop: Header=BB0_6 Depth=1
	sw x10, 88 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x0
	add x12, x0, x8
	sw x12, 72 ( x2 )               //  4-byte Folded Spill
	lw x4, 116 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_93 ( x0 )
LBB0_88:                                //  %if.then237
                                        //    in Loop: Header=BB0_6 Depth=1
	slli x11, x8, 1
	add x10, x0, x3
	call $_malloc_r
	bgtu x10, x0, LBB0_92
LBB0_89:                                //  %if.then242
	lw x3, 100 ( x2 )               //  4-byte Folded Reload
	nop
	lh x1, 12 ( x3 )
	add x11, x0, x0
	ori x1, x1, 64
	sh x1, 12 ( x3 )
	add x8, x0, x10
LBB0_90:                                //  %error
	bgtu x8, x0, LBB0_414
LBB0_413:                               //  %error
	jalr x0, LBB0_404 ( x0 )
LBB0_414:                               //  %error
LBB0_91:                                //  %if.then1499
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x3
	call $_free_r
	add x3, x0, x8
	jalr x0, LBB0_404 ( x0 )
LBB0_92:                                //  %if.end247
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x8, 8 ( x2 )
	sw x10, 4 ( x2 )
	addi x1, x2, 280
	sw x1, 0 ( x2 )
	sw x10, 72 ( x2 )               //  4-byte Folded Spill
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x11, 52 ( x2 )               //  4-byte Folded Reload
	lw x12, 40 ( x2 )               //  4-byte Folded Reload
	lw x13, 92 ( x2 )               //  4-byte Folded Reload
	lw x14, 20 ( x2 )               //  4-byte Folded Reload
	addi x15, x2, 306
	addi x16, x2, 300
	lw x8, 116 ( x2 )               //  4-byte Folded Reload
	nop
	add x17, x0, x8
	call $wcvt
	add x4, x0, x8
	sw x10, 88 ( x2 )               //  4-byte Folded Spill
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x0
	add x12, x0, x8
LBB0_93:                                //  %if.end250
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x1, x4, 32
	xori x1, x1, 103
	addi x7, x2, 268
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	lw x9, 68 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB0_98
LBB0_94:                                //  %if.then256
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 300 ( x2 )
	addi x4, x4, -2
	sw x4, 116 ( x2 )               //  4-byte Folded Spill
	slti x1, x10, -3
	bgtu x1, x0, LBB0_100
LBB0_95:                                //  %if.then256
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x10, x1, LBB0_100
LBB0_96:                                //  %if.else307
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 280 ( x2 )
	nop
	bgt x1, x10, LBB0_125
LBB0_97:                                //  %if.then310
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x1, x5, 1
	add x3, x1, x10
	jalr x0, LBB0_128 ( x0 )
LBB0_98:                                //  %if.end266
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 101
	bgt x4, x1, LBB0_117
LBB0_99:                                //  %if.end266.if.then269_crit_edge
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 300 ( x2 )
LBB0_100:                               //  %if.then269
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 45
	slti x3, x0, 1
	bgt x3, x10, LBB0_102
LBB0_101:                               //  %if.then269
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 43
LBB0_102:                               //  %if.then269
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x3, x10, -1
	slti x4, x0, 1
	ble x4, x10, LBB0_104
LBB0_103:                               //    in Loop: Header=BB0_6 Depth=1
	sub x10, x4, x10
	jalr x0, LBB0_105 ( x0 )
LBB0_104:                               //  %if.then269
                                        //    in Loop: Header=BB0_6 Depth=1
	add x10, x0, x3
LBB0_105:                               //  %if.then269
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x3, 300 ( x2 )
	lw x3, 116 ( x2 )               //  4-byte Folded Reload
	nop
	sh x3, 286 ( x2 )
	sh x1, 288 ( x2 )
	slti x1, x10, 10
	bgtu x1, x0, LBB0_115
LBB0_106:                               //  %do.body.i.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 14
	add x3, x0, x1
	addi x1, x2, 330
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	slti x1, x0, 1
	add x14, x0, x1
LBB0_107:                               //  %do.body.i
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x14, 60 ( x2 )               //  4-byte Folded Spill
	sw x11, 64 ( x2 )               //  4-byte Folded Spill
	sw x10, 92 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x3
	addi x1, x0, 10
	add x11, x0, x1
	call $__modsi3
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	addi x1, x8, -2
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	addi x1, x10, 48
	lw x8, 80 ( x2 )                //  4-byte Folded Reload
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	sh x1, 0 ( x8 )
	lw x10, 92 ( x2 )               //  4-byte Folded Reload
	addi x11, x0, 10
	call $__divsi3
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	lw x14, 60 ( x2 )               //  4-byte Folded Reload
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
	addi x8, x8, -2
	sw x8, 80 ( x2 )                //  4-byte Folded Spill
	addi x11, x11, 2
	addi x14, x14, -1
	addi x1, x0, 99
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x1, LBB0_107
LBB0_108:                               //  %do.end.i
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x15, 32 ( x2 )               //  4-byte Folded Reload
	lw x13, 36 ( x2 )               //  4-byte Folded Reload
	addi x3, x10, 48
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sh x3, 0 ( x1 )
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	addi x7, x2, 268
	slti x4, x0, 1
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	lw x9, 68 ( x2 )                //  4-byte Folded Reload
	add x8, x0, x0
	add x12, x0, x8
	bgt x14, x4, LBB0_116
LBB0_109:                               //  %for.inc.i.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x4, x14, -2
	sh x3, 290 ( x2 )
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	addi x3, x0, -2
	bgt x4, x3, LBB0_116
LBB0_110:                               //  %for.inc.for.inc_crit_edge.i.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	sh x15, 292 ( x2 )
	bgtu x14, x0, LBB0_112
LBB0_111:                               //    in Loop: Header=BB0_6 Depth=1
	add x1, x0, x11
	jalr x0, LBB0_116 ( x0 )
LBB0_112:                               //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x2, 294
	addi x4, x2, 318
LBB0_113:                               //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x3, x13, x4
	lh x3, 0 ( x3 )
	nop
	sh x3, 0 ( x1 )
	addi x1, x1, 2
	addi x13, x13, 2
	xori x3, x13, 14
	bgtu x3, x0, LBB0_113
LBB0_114:                               //    in Loop: Header=BB0_6 Depth=1
	add x1, x0, x11
	jalr x0, LBB0_116 ( x0 )
LBB0_115:                               //  %if.else20.i
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x2, 286
	addi x3, x0, 48
	sh x3, 4 ( x1 )
	addi x1, x10, 48
	sh x1, 292 ( x2 )
	addi x1, x2, 294
LBB0_116:                               //  %wexponent.exit
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 280 ( x2 )
	slti x4, x0, 1
	slt x4, x4, x3
	or x4, x5, x4
	addi x5, x2, 286
	sub x1, x1, x5
	srai x1, x1, 1
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	add x1, x3, x1
	andi x3, x4, 1
	add x3, x3, x1
	add x10, x0, x12
	jalr x0, LBB0_130 ( x0 )
LBB0_117:                               //  %if.else281
                                        //    in Loop: Header=BB0_6 Depth=1
	xori x1, x4, 102
	lw x10, 300 ( x2 )
	bgtu x1, x0, LBB0_96
LBB0_118:                               //  %if.then284
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x1, x5, 1
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	nop
	or x1, x1, x4
	ble x10, x0, LBB0_122
LBB0_119:                               //  %if.then287
                                        //    in Loop: Header=BB0_6 Depth=1
	bgtu x1, x0, LBB0_121
LBB0_120:                               //    in Loop: Header=BB0_6 Depth=1
	add x3, x0, x10
	addi x1, x0, 102
	jalr x0, LBB0_129 ( x0 )
LBB0_121:                               //  %if.then292
                                        //    in Loop: Header=BB0_6 Depth=1
	add x1, x10, x4
	addi x3, x1, 1
	addi x1, x0, 102
	jalr x0, LBB0_129 ( x0 )
LBB0_122:                               //  %if.else296
                                        //    in Loop: Header=BB0_6 Depth=1
	slti x3, x0, 1
	beq x1, x12, LBB0_124
LBB0_123:                               //  %if.else296
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x3, x4, 2
LBB0_124:                               //  %if.else296
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 102
	jalr x0, LBB0_129 ( x0 )
LBB0_125:                               //  %if.else316
                                        //    in Loop: Header=BB0_6 Depth=1
	slti x3, x0, 1
	bgt x10, x12, LBB0_127
LBB0_126:                               //  %if.else316
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x3, x0, 2
	sub x3, x3, x10
LBB0_127:                               //  %if.else316
                                        //    in Loop: Header=BB0_6 Depth=1
	add x3, x1, x3
LBB0_128:                               //  %if.end327
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 103
LBB0_129:                               //  %if.end327
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x1, 116 ( x2 )               //  4-byte Folded Spill
LBB0_130:                               //  %if.end327
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x10, 56 ( x2 )               //  4-byte Folded Spill
	lhu x1, 306 ( x2 )
	nop
	bgtu x1, x0, LBB0_132
LBB0_131:                               //    in Loop: Header=BB0_6 Depth=1
	lw x13, 20 ( x2 )               //  4-byte Folded Reload
	add x1, x0, x12
	add x10, x0, x3
	jalr x0, LBB0_227 ( x0 )
LBB0_132:                               //  %if.then329
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 45
	sh x1, 310 ( x2 )
	jalr x0, LBB0_131 ( x0 )
LBB0_133:                               //  %sw.bb331
                                        //    in Loop: Header=BB0_8 Depth=3
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 32
	beqz x1, LBB0_135
LBB0_134:                               //  %if.then334
                                        //    in Loop: Header=BB0_8 Depth=3
	lw x1, 312 ( x2 )
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	nop
	srai x3, x5, 31
	addi x4, x1, 4
	sw x4, 312 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x3, 4 ( x1 )
	sw x5, 0 ( x1 )
	addi x7, x2, 268
	lw x5, 112 ( x2 )               //  4-byte Folded Reload
	lw x9, 68 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_8 ( x0 )
LBB0_135:                               //  %if.else337
                                        //    in Loop: Header=BB0_8 Depth=3
	andi x1, x3, 16
	lw x4, 84 ( x2 )                //  4-byte Folded Reload
	addi x7, x2, 268
	lw x9, 68 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB0_137
LBB0_136:                               //  %if.then340
                                        //    in Loop: Header=BB0_7 Depth=2
	lw x1, 312 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 312 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x4, 0 ( x1 )
	jalr x0, LBB0_7 ( x0 )
LBB0_137:                               //  %if.else342
                                        //    in Loop: Header=BB0_8 Depth=3
	andi x1, x3, 64
	lw x5, 112 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB0_139
LBB0_138:                               //  %if.then345
                                        //    in Loop: Header=BB0_8 Depth=3
	lw x1, 312 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 312 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sh x4, 0 ( x1 )
	jalr x0, LBB0_8 ( x0 )
LBB0_139:                               //  %if.else348
                                        //    in Loop: Header=BB0_8 Depth=3
	lw x1, 312 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 312 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x4, 0 ( x1 )
	jalr x0, LBB0_8 ( x0 )
LBB0_140:                               //  %sw.bb353
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 32
	beqz x1, LBB0_142
LBB0_141:                               //  %cond.true356
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 312 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 312 ( x2 )
	lw x9, 0 ( x1 )
	addi x1, x3, 4
	sw x1, 312 ( x2 )
	lw x11, 0 ( x3 )
	addi x7, x0, 111
	add x8, x0, x0
	lw x13, 96 ( x2 )               //  4-byte Folded Reload
	add x1, x0, x8
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_193 ( x0 )
LBB0_142:                               //  %cond.false358
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x1, x3, 16
	add x4, x0, x3
	add x8, x0, x0
	beqz x1, LBB0_144
LBB0_143:                               //  %cond.true361
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 312 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 312 ( x2 )
	lw x9, 0 ( x1 )
	add x13, x0, x4
	jalr x0, LBB0_146 ( x0 )
LBB0_144:                               //  %cond.false363
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 312 ( x2 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	addi x3, x1, 4
	sw x3, 312 ( x2 )
	andi x3, x4, 64
	lw x9, 0 ( x1 )
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	add x13, x0, x4
	beq x3, x8, LBB0_146
LBB0_145:                               //  %cond.false363
                                        //    in Loop: Header=BB0_6 Depth=1
	and x9, x1, x9
LBB0_146:                               //  %cond.false363
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	addi x7, x0, 111
	add x11, x0, x8
	add x1, x0, x8
	jalr x0, LBB0_193 ( x0 )
LBB0_147:                               //  %sw.bb388
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 312 ( x2 )
	ori x28, x0, $.str.4 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	addi x3, x1, 4
	sw x3, 312 ( x2 )
	lw x9, 0 ( x1 )
	addi x1, x0, 48
	sh x1, 120 ( x2 )
	addi x7, x0, 120
	sh x7, 122 ( x2 )
	lui x3, $.str.4 >> 12 & 0xfffff
	or x3, x3, x28
	sw x3, 76 ( x2 )                //  4-byte Folded Spill
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	nop
	ori x3, x3, 2
	add x8, x0, x0
	add x13, x0, x3
	add x11, x0, x8
	addi x1, x0, 2
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_193 ( x0 )
LBB0_148:                               //  %sw.bb394
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 312 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 312 ( x2 )
	lw x10, 0 ( x1 )
	sh x0, 310 ( x2 )
	bgtu x10, x0, LBB0_152
LBB0_149:                               //  %if.then398
                                        //    in Loop: Header=BB0_6 Depth=1
	add x8, x0, x0
	addi x1, x0, 6
	lw x3, 92 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x3, LBB0_151
LBB0_150:                               //  %if.then398
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 6
	add x3, x0, x1
LBB0_151:                               //  %if.then398
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.5 >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 115
	sw x1, 116 ( x2 )               //  4-byte Folded Spill
	sw x8, 56 ( x2 )                //  4-byte Folded Spill
	add x4, x0, x8
	add x10, x0, x3
	sw x8, 72 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x4
	jalr x0, LBB0_225 ( x0 )
LBB0_152:                               //  %if.else405
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 16
	add x8, x0, x0
	add x11, x0, x8
	lw x12, 92 ( x2 )               //  4-byte Folded Reload
	bgtu x1, x0, LBB0_165
LBB0_153:                               //  %if.then411
                                        //    in Loop: Header=BB0_6 Depth=1
	bgt x0, x12, LBB0_156
LBB0_154:                               //  %if.then414
                                        //    in Loop: Header=BB0_6 Depth=1
	add x8, x0, x10
	call $memchr
	add x13, x0, x0
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
	beq x10, x13, LBB0_157
LBB0_155:                               //  %if.then414
                                        //    in Loop: Header=BB0_6 Depth=1
	sub x11, x10, x8
	jalr x0, LBB0_157 ( x0 )
LBB0_156:                               //  %if.else424
                                        //    in Loop: Header=BB0_6 Depth=1
	add x8, x0, x10
	call $strlen
	add x13, x0, x0
	add x11, x0, x10
LBB0_157:                               //  %if.end426
                                        //    in Loop: Header=BB0_6 Depth=1
	sltiu x1, x11, 40
	bgtu x1, x0, LBB0_160
LBB0_158:                               //  %if.then429
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x11, 92 ( x2 )               //  4-byte Folded Spill
	slli x1, x11, 1
	addi x11, x1, 2
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	nop
	call $_malloc_r
	beqz x10, LBB0_89
LBB0_159:                               //    in Loop: Header=BB0_6 Depth=1
	sw x10, 72 ( x2 )               //  4-byte Folded Spill
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	add x3, x0, x10
	addi x7, x2, 268
	lw x9, 68 ( x2 )                //  4-byte Folded Reload
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x0
	jalr x0, LBB0_161 ( x0 )
LBB0_160:                               //  %if.end443
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x13, 72 ( x2 )               //  4-byte Folded Spill
	addi x1, x2, 124
	add x3, x0, x1
	add x1, x0, x13
	addi x7, x2, 268
	lw x9, 68 ( x2 )                //  4-byte Folded Reload
	beqz x11, LBB0_164
LBB0_161:                               //  %for.body.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	add x10, x0, x3
	add x1, x0, x3
	add x3, x0, x13
LBB0_162:                               //  %for.body
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x4, x3, x8
	lb x4, 0 ( x4 )
	addi x3, x3, 1
	addi x5, x1, 2
	sh x4, 0 ( x1 )
	add x1, x0, x5
	bne x11, x3, LBB0_162
LBB0_163:                               //    in Loop: Header=BB0_6 Depth=1
	add x1, x0, x11
	add x3, x0, x10
LBB0_164:                               //  %cleanup452.thread
                                        //    in Loop: Header=BB0_6 Depth=1
	add x10, x0, x1
	slli x1, x10, 1
	sw x3, 88 ( x2 )                //  4-byte Folded Spill
	add x1, x1, x3
	sh x0, 0 ( x1 )
	addi x1, x0, 115
	sw x1, 116 ( x2 )               //  4-byte Folded Spill
	sw x13, 56 ( x2 )               //  4-byte Folded Spill
	add x1, x0, x13
	lw x13, 96 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_227 ( x0 )
LBB0_165:                               //  %if.else456
                                        //    in Loop: Header=BB0_6 Depth=1
	bgt x0, x12, LBB0_171
LBB0_166:                               //  %if.then459
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x12, 92 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x10
	call $wmemchr
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_168
LBB0_167:                               //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 115
	sw x1, 116 ( x2 )               //  4-byte Folded Spill
	sw x8, 88 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	add x4, x0, x1
	sw x4, 56 ( x2 )                //  4-byte Folded Spill
	lw x10, 92 ( x2 )               //  4-byte Folded Reload
	sw x4, 72 ( x2 )                //  4-byte Folded Spill
	addi x7, x2, 268
	lw x9, 68 ( x2 )                //  4-byte Folded Reload
	add x13, x0, x3
	jalr x0, LBB0_227 ( x0 )
LBB0_168:                               //  %if.then464
                                        //    in Loop: Header=BB0_6 Depth=1
	add x5, x0, x0
	sub x1, x10, x8
	srai x1, x1, 1
	addi x7, x2, 268
	lw x9, 68 ( x2 )                //  4-byte Folded Reload
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x1, x4, LBB0_170
LBB0_169:                               //  %if.then464
                                        //    in Loop: Header=BB0_6 Depth=1
	add x4, x0, x1
LBB0_170:                               //  %if.then464
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 115
	sw x1, 116 ( x2 )               //  4-byte Folded Spill
	sw x8, 88 ( x2 )                //  4-byte Folded Spill
	sw x5, 56 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x5
	add x10, x0, x4
	sw x5, 72 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x3
	jalr x0, LBB0_227 ( x0 )
LBB0_171:                               //  %if.else475
                                        //    in Loop: Header=BB0_6 Depth=1
	add x8, x0, x10
	call $wcslen
	addi x1, x0, 115
	sw x1, 116 ( x2 )               //  4-byte Folded Spill
	sw x8, 88 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x0
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x3
	sw x3, 72 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_225 ( x0 )
LBB0_172:                               //  %sw.bb480
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 32
	beqz x1, LBB0_174
LBB0_173:                               //  %cond.true483
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 312 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 312 ( x2 )
	lw x9, 0 ( x1 )
	addi x1, x3, 4
	sw x1, 312 ( x2 )
	lw x11, 0 ( x3 )
	addi x7, x0, 117
	slti x1, x0, 1
	add x8, x0, x0
	lw x13, 96 ( x2 )               //  4-byte Folded Reload
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_193 ( x0 )
LBB0_174:                               //  %cond.false485
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x1, x3, 16
	add x4, x0, x3
	add x8, x0, x0
	beqz x1, LBB0_176
LBB0_175:                               //  %cond.true488
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 312 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 312 ( x2 )
	lw x9, 0 ( x1 )
	slti x1, x0, 1
	add x13, x0, x4
	jalr x0, LBB0_179 ( x0 )
LBB0_176:                               //  %cond.false490
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 312 ( x2 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	addi x3, x1, 4
	sw x3, 312 ( x2 )
	andi x3, x4, 64
	lw x9, 0 ( x1 )
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	add x13, x0, x4
	beq x3, x8, LBB0_178
LBB0_177:                               //  %cond.false490
                                        //    in Loop: Header=BB0_6 Depth=1
	and x9, x1, x9
LBB0_178:                               //  %cond.false490
                                        //    in Loop: Header=BB0_6 Depth=1
	slti x1, x0, 1
LBB0_179:                               //  %cond.end510
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	addi x7, x0, 117
	add x11, x0, x8
	jalr x0, LBB0_193 ( x0 )
LBB0_180:                               //  %hex.loopexit2853
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $.str.4 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.4 >> 12 & 0xfffff
	jalr x0, LBB0_182 ( x0 )
LBB0_181:                               //  %hex.loopexit
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $.str.6 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.6 >> 12 & 0xfffff
LBB0_182:                               //  %hex
                                        //    in Loop: Header=BB0_6 Depth=1
	or x1, x1, x28
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	lw x4, 96 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x4, 32
	add x8, x0, x0
	beqz x1, LBB0_184
LBB0_183:                               //  %cond.true519
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 312 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 312 ( x2 )
	lw x9, 0 ( x1 )
	addi x1, x3, 4
	sw x1, 312 ( x2 )
	lw x11, 0 ( x3 )
	add x13, x0, x4
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_189 ( x0 )
LBB0_184:                               //  %cond.false521
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x1, x4, 16
	add x13, x0, x4
	beqz x1, LBB0_186
LBB0_185:                               //  %cond.true524
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 312 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 312 ( x2 )
	lw x9, 0 ( x1 )
	jalr x0, LBB0_188 ( x0 )
LBB0_186:                               //  %cond.false526
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 312 ( x2 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	addi x3, x1, 4
	sw x3, 312 ( x2 )
	andi x3, x13, 64
	lw x9, 0 ( x1 )
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	beq x3, x8, LBB0_188
LBB0_187:                               //  %cond.false526
                                        //    in Loop: Header=BB0_6 Depth=1
	and x9, x1, x9
LBB0_188:                               //  %cond.false526
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x8
LBB0_189:                               //  %cond.end549
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x1, x13, 1
	beqz x1, LBB0_192
LBB0_190:                               //  %cond.end549
                                        //    in Loop: Header=BB0_6 Depth=1
	or x1, x11, x9
	beqz x1, LBB0_192
LBB0_191:                               //  %if.then556
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 48
	sh x1, 120 ( x2 )
	sh x7, 122 ( x2 )
	ori x13, x13, 2
LBB0_192:                               //  %nosign
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 2
LBB0_193:                               //  %nosign
                                        //    in Loop: Header=BB0_6 Depth=1
	sh x0, 310 ( x2 )
LBB0_194:                               //  %number
                                        //    in Loop: Header=BB0_6 Depth=1
	not x3, x0
	ble x4, x3, LBB0_196
LBB0_195:                               //    in Loop: Header=BB0_6 Depth=1
	andi x13, x13, -129
LBB0_196:                               //  %number
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x7, 116 ( x2 )               //  4-byte Folded Spill
	bgtu x4, x0, LBB0_198
LBB0_197:                               //  %number
                                        //    in Loop: Header=BB0_6 Depth=1
	or x3, x11, x9
	beqz x3, LBB0_217
LBB0_198:                               //  %if.then573
                                        //    in Loop: Header=BB0_6 Depth=1
	beqz x1, LBB0_202
LBB0_199:                               //  %if.then573
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x1, x1, 255
	xori x3, x1, 1
	beqz x3, LBB0_207
LBB0_200:                               //  %if.then573
                                        //    in Loop: Header=BB0_6 Depth=1
	xori x1, x1, 2
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB0_216
LBB0_201:                               //  %do.body610
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	andi x1, x9, 15
	slli x1, x1, 1
	lw x3, 76 ( x2 )                //  4-byte Folded Reload
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
	bgtu x1, x0, LBB0_201
	jalr x0, LBB0_222 ( x0 )
LBB0_202:                               //  %do.body576.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x2, 202
LBB0_203:                               //  %do.body576
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
	bgtu x5, x0, LBB0_203
LBB0_204:                               //  %do.end583
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x5, x1, 2
	andi x4, x13, 1
	beqz x4, LBB0_222
LBB0_205:                               //  %do.end583
                                        //    in Loop: Header=BB0_6 Depth=1
	xori x3, x3, 48
	beqz x3, LBB0_222
LBB0_206:                               //  %if.then590
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x3, x0, 48
	sh x3, 0 ( x1 )
	jalr x0, LBB0_221 ( x0 )
LBB0_207:                               //  %sw.bb593
                                        //    in Loop: Header=BB0_6 Depth=1
	bne x11, x8, LBB0_209
LBB0_208:                               //    in Loop: Header=BB0_6 Depth=1
	sltiu x1, x9, 10
	jalr x0, LBB0_210 ( x0 )
LBB0_209:                               //  %sw.bb593
                                        //    in Loop: Header=BB0_6 Depth=1
	add x1, x0, x8
LBB0_210:                               //  %sw.bb593
                                        //    in Loop: Header=BB0_6 Depth=1
	beqz x1, LBB0_416
LBB0_415:                               //  %sw.bb593
                                        //    in Loop: Header=BB0_6 Depth=1
	jalr x0, LBB0_408 ( x0 )
LBB0_416:                               //  %sw.bb593
                                        //    in Loop: Header=BB0_6 Depth=1
LBB0_211:                               //    in Loop: Header=BB0_6 Depth=1
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	sw x13, 96 ( x2 )               //  4-byte Folded Spill
LBB0_212:                               //  %do.body601
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x11, 80 ( x2 )               //  4-byte Folded Spill
	sw x5, 88 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x9
	sw x10, 72 ( x2 )               //  4-byte Folded Spill
	addi x8, x0, 10
	add x12, x0, x8
	add x13, x0, x0
	call $__umoddi3
	sw x10, 64 ( x2 )               //  4-byte Folded Spill
	lw x10, 72 ( x2 )               //  4-byte Folded Reload
	lw x11, 80 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	add x8, x0, x0
	add x13, x0, x8
	call $__udivdi3
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	bne x1, x8, LBB0_214
LBB0_213:                               //    in Loop: Header=BB0_212 Depth=2
	addi x1, x0, 9
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	sltu x1, x1, x3
	jalr x0, LBB0_215 ( x0 )
LBB0_214:                               //  %do.body601
                                        //    in Loop: Header=BB0_212 Depth=2
	sltu x1, x0, x1
LBB0_215:                               //  %do.body601
                                        //    in Loop: Header=BB0_212 Depth=2
	lw x5, 88 ( x2 )                //  4-byte Folded Reload
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	ori x3, x3, 48
	sh x3, -2 ( x5 )
	addi x5, x5, -2
	add x9, x0, x10
	lw x13, 96 ( x2 )               //  4-byte Folded Reload
	bgtu x1, x0, LBB0_212
	jalr x0, LBB0_222 ( x0 )
LBB0_216:                               //  %sw.default
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $.str.7 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.7 >> 12 & 0xfffff
	sw x13, 96 ( x2 )               //  4-byte Folded Spill
	or x10, x1, x28
	sw x10, 88 ( x2 )               //  4-byte Folded Spill
	call $wcslen
	lw x13, 96 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_223 ( x0 )
LBB0_217:                               //  %if.else619
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x1, x1, 255
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB0_222
LBB0_218:                               //  %if.else619
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x1, x13, 1
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB0_222
LBB0_219:                               //  %if.then626
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 48
LBB0_220:                               //  %if.end629
                                        //    in Loop: Header=BB0_6 Depth=1
	sh x1, 202 ( x2 )
	addi x1, x2, 202
LBB0_221:                               //  %if.end629
                                        //    in Loop: Header=BB0_6 Depth=1
	add x5, x0, x1
LBB0_222:                               //  %if.end629
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	sw x5, 88 ( x2 )                //  4-byte Folded Spill
	sub x1, x1, x5
	srai x10, x1, 1
LBB0_223:                               //  %sw.epilog643
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x8, 56 ( x2 )                //  4-byte Folded Spill
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	sw x8, 72 ( x2 )                //  4-byte Folded Spill
	addi x7, x2, 268
	jalr x0, LBB0_226 ( x0 )
LBB0_224:                               //  %if.end640
                                        //    in Loop: Header=BB0_6 Depth=1
	sh x7, 124 ( x2 )
	sh x0, 310 ( x2 )
	addi x1, x2, 124
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x0
	sw x8, 56 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x8
	slti x1, x0, 1
	add x10, x0, x1
	sw x8, 72 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x3
LBB0_225:                               //  %sw.epilog643
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x7, x2, 268
	lw x13, 96 ( x2 )               //  4-byte Folded Reload
LBB0_226:                               //  %sw.epilog643
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x9, 68 ( x2 )                //  4-byte Folded Reload
LBB0_227:                               //  %sw.epilog643
                                        //    in Loop: Header=BB0_6 Depth=1
	add x3, x0, x1
	sw x10, 92 ( x2 )               //  4-byte Folded Spill
	sw x3, 60 ( x2 )                //  4-byte Folded Spill
	bgt x3, x10, LBB0_229
LBB0_228:                               //  %sw.epilog643
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
LBB0_229:                               //  %sw.epilog643
                                        //    in Loop: Header=BB0_6 Depth=1
	lhu x3, 310 ( x2 )
	nop
	sltu x3, x0, x3
	andi x3, x3, 1
	add x4, x1, x3
	andi x5, x13, 2
	srli x1, x5, 1
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB0_231
LBB0_230:                               //    in Loop: Header=BB0_6 Depth=1
	addi x4, x4, 2
LBB0_231:                               //  %sw.epilog643
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x8, x13, 132
	sw x13, 96 ( x2 )               //  4-byte Folded Spill
	sw x4, 80 ( x2 )                //  4-byte Folded Spill
	sw x5, 68 ( x2 )                //  4-byte Folded Spill
	sw x8, 64 ( x2 )                //  4-byte Folded Spill
	bgtu x8, x0, LBB0_242
LBB0_232:                               //  %if.then662
                                        //    in Loop: Header=BB0_6 Depth=1
	sub x11, x3, x4
	ble x11, x0, LBB0_242
LBB0_233:                               //  %while.cond667.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $_svfwprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfwprintf_r.blanks >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	slti x1, x11, 17
	bgtu x1, x0, LBB0_237
LBB0_234:                               //  %while.body670
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x1, x0, 32
	sw x1, 4 ( x9 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 32
	sw x1, 8 ( x7 )
	lw x1, 272 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 272 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_239
LBB0_235:                               //    in Loop: Header=BB0_234 Depth=2
	addi x9, x9, 8
LBB0_236:                               //  %if.end686
                                        //    in Loop: Header=BB0_234 Depth=2
	ori x28, x0, $_svfwprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfwprintf_r.blanks >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	addi x11, x11, -16
	addi x1, x0, 16
	bgt x11, x1, LBB0_234
LBB0_237:                               //  %while.end688
                                        //    in Loop: Header=BB0_6 Depth=1
	slli x1, x11, 1
	sw x1, 4 ( x9 )
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 272 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 272 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_241
LBB0_238:                               //    in Loop: Header=BB0_6 Depth=1
	addi x9, x9, 8
	jalr x0, LBB0_242 ( x0 )
LBB0_239:                               //  %if.then680
                                        //    in Loop: Header=BB0_234 Depth=2
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x11
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 268
	call $__ssprint_r
	add x11, x0, x8
	addi x7, x2, 268
	addi x1, x2, 204
	add x9, x0, x1
	beqz x10, LBB0_236
LBB0_240:
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	lw x3, 100 ( x2 )               //  4-byte Folded Reload
	lw x8, 72 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_90 ( x0 )
LBB0_241:                               //  %if.then700
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 268
	call $__ssprint_r
	addi x7, x2, 268
	addi x1, x2, 204
	add x9, x0, x1
	bgtu x10, x0, LBB0_240
LBB0_242:                               //  %if.end708
                                        //    in Loop: Header=BB0_6 Depth=1
	lhu x1, 310 ( x2 )
	nop
	beqz x1, LBB0_246
LBB0_243:                               //  %if.then710
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x2, 310
	sw x1, 0 ( x9 )
	addi x1, x0, 2
	sw x1, 4 ( x9 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 2
	sw x1, 8 ( x7 )
	lw x1, 272 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 272 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_245
LBB0_244:                               //    in Loop: Header=BB0_6 Depth=1
	addi x9, x9, 8
	jalr x0, LBB0_246 ( x0 )
LBB0_245:                               //  %if.then720
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 268
	call $__ssprint_r
	addi x7, x2, 268
	addi x1, x2, 204
	add x9, x0, x1
	bgtu x10, x0, LBB0_240
LBB0_246:                               //  %if.end727
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_250
LBB0_247:                               //  %if.then730
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x2, 120
	sw x1, 0 ( x9 )
	addi x1, x0, 4
	sw x1, 4 ( x9 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 4
	sw x1, 8 ( x7 )
	lw x1, 272 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 272 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_249
LBB0_248:                               //    in Loop: Header=BB0_6 Depth=1
	addi x9, x9, 8
	jalr x0, LBB0_250 ( x0 )
LBB0_249:                               //  %if.then741
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 268
	call $__ssprint_r
	addi x7, x2, 268
	addi x1, x2, 204
	add x9, x0, x1
	bgtu x10, x0, LBB0_240
LBB0_250:                               //  %if.end748
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	xori x1, x1, 128
	beqz x1, LBB0_252
LBB0_251:                               //    in Loop: Header=BB0_6 Depth=1
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_262 ( x0 )
LBB0_252:                               //  %if.then752
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 108 ( x2 )               //  4-byte Folded Reload
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x1, x3
	bgt x8, x0, LBB0_254
LBB0_253:                               //    in Loop: Header=BB0_6 Depth=1
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_262 ( x0 )
LBB0_254:                               //  %while.cond757.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $_svfwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	slti x1, x8, 17
	bgtu x1, x0, LBB0_259
LBB0_255:                               //  %while.body760
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x1, x0, 32
	sw x1, 4 ( x9 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 32
	sw x1, 8 ( x7 )
	lw x1, 272 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 272 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_257
LBB0_256:                               //    in Loop: Header=BB0_255 Depth=2
	addi x9, x9, 8
	jalr x0, LBB0_258 ( x0 )
LBB0_257:                               //  %if.then770
                                        //    in Loop: Header=BB0_255 Depth=2
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 268
	call $__ssprint_r
	addi x7, x2, 268
	addi x1, x2, 204
	add x9, x0, x1
	bgtu x10, x0, LBB0_240
LBB0_258:                               //  %if.end776
                                        //    in Loop: Header=BB0_255 Depth=2
	ori x28, x0, $_svfwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	addi x8, x8, -16
	addi x1, x0, 16
	bgt x8, x1, LBB0_255
LBB0_259:                               //  %while.end778
                                        //    in Loop: Header=BB0_6 Depth=1
	slli x1, x8, 1
	sw x1, 4 ( x9 )
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 272 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 272 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_261
LBB0_260:                               //    in Loop: Header=BB0_6 Depth=1
	addi x9, x9, 8
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_262 ( x0 )
LBB0_261:                               //  %if.then790
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 268
	call $__ssprint_r
	addi x7, x2, 268
	addi x1, x2, 204
	add x9, x0, x1
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_240
LBB0_262:                               //  %if.end798
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x3, x1
	ble x8, x0, LBB0_271
LBB0_263:                               //  %while.cond803.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $_svfwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	slti x1, x8, 17
	bgtu x1, x0, LBB0_268
LBB0_264:                               //  %while.body806
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x1, x0, 32
	sw x1, 4 ( x9 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 32
	sw x1, 8 ( x7 )
	lw x1, 272 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 272 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_266
LBB0_265:                               //    in Loop: Header=BB0_264 Depth=2
	addi x9, x9, 8
	jalr x0, LBB0_267 ( x0 )
LBB0_266:                               //  %if.then816
                                        //    in Loop: Header=BB0_264 Depth=2
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 268
	call $__ssprint_r
	addi x7, x2, 268
	addi x1, x2, 204
	add x9, x0, x1
	bgtu x10, x0, LBB0_240
LBB0_267:                               //  %if.end822
                                        //    in Loop: Header=BB0_264 Depth=2
	ori x28, x0, $_svfwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	addi x8, x8, -16
	addi x1, x0, 16
	bgt x8, x1, LBB0_264
LBB0_268:                               //  %while.end824
                                        //    in Loop: Header=BB0_6 Depth=1
	slli x1, x8, 1
	sw x1, 4 ( x9 )
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 272 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 272 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_270
LBB0_269:                               //    in Loop: Header=BB0_6 Depth=1
	addi x9, x9, 8
	jalr x0, LBB0_271 ( x0 )
LBB0_270:                               //  %if.then836
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 268
	call $__ssprint_r
	addi x7, x2, 268
	addi x1, x2, 204
	add x9, x0, x1
	bgtu x10, x0, LBB0_240
LBB0_271:                               //  %if.end843
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	nop
	andi x1, x10, 256
	bgtu x1, x0, LBB0_274
LBB0_272:                               //  %if.then847
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x9 )
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 1
	sw x1, 4 ( x9 )
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 272 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 272 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_384
LBB0_273:                               //    in Loop: Header=BB0_6 Depth=1
	addi x9, x9, 8
	jalr x0, LBB0_385 ( x0 )
LBB0_274:                               //  %if.else866
                                        //    in Loop: Header=BB0_6 Depth=1
	add x12, x0, x0
	lw x1, 116 ( x2 )               //  4-byte Folded Reload
	nop
	slti x1, x1, 102
	bgtu x1, x0, LBB0_358
LBB0_275:                               //  %if.then869
                                        //    in Loop: Header=BB0_6 Depth=1
	add x8, x0, x9
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x12
	call $__nedf2
	bgtu x10, x0, LBB0_294
LBB0_276:                               //  %if.then873
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $.str.8 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.8 >> 12 & 0xfffff
	or x1, x1, x28
	add x9, x0, x8
	sw x1, 0 ( x9 )
	addi x1, x0, 2
	sw x1, 4 ( x9 )
	addi x4, x2, 268
	lw x1, 8 ( x4 )
	nop
	addi x1, x1, 2
	sw x1, 8 ( x4 )
	lw x1, 272 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 272 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_281
LBB0_277:                               //    in Loop: Header=BB0_6 Depth=1
	addi x9, x9, 8
LBB0_278:                               //  %if.end889
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	lw x8, 280 ( x2 )
	andi x1, x1, 1
	bgtu x1, x0, LBB0_283
LBB0_279:                               //  %if.end889
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 300 ( x2 )
	nop
	bgt x8, x1, LBB0_283
LBB0_280:                               //    in Loop: Header=BB0_6 Depth=1
	addi x7, x2, 268
	jalr x0, LBB0_385 ( x0 )
LBB0_281:                               //  %if.then883
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x8, 100 ( x2 )               //  4-byte Folded Reload
	nop
	add x11, x0, x8
	add x12, x0, x4
	call $__ssprint_r
	addi x1, x2, 204
	add x9, x0, x1
	beqz x10, LBB0_278
LBB0_282:
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	add x3, x0, x8
	add x8, x0, x1
	jalr x0, LBB0_90 ( x0 )
LBB0_283:                               //  %if.then895
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x2, 308
	sw x1, 0 ( x9 )
	addi x1, x0, 2
	sw x1, 4 ( x9 )
	addi x7, x2, 268
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 2
	sw x1, 8 ( x7 )
	lw x1, 272 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 272 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_285
LBB0_284:                               //    in Loop: Header=BB0_6 Depth=1
	addi x9, x9, 8
	jalr x0, LBB0_286 ( x0 )
LBB0_285:                               //  %if.then905
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 268
	call $__ssprint_r
	addi x7, x2, 268
	addi x1, x2, 204
	add x9, x0, x1
	bgtu x10, x0, LBB0_240
LBB0_286:                               //  %if.end911
                                        //    in Loop: Header=BB0_6 Depth=1
	slti x1, x8, 2
	bgtu x1, x0, LBB0_385
LBB0_287:                               //  %while.cond916.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x8, x8, -1
	ori x28, x0, $_svfwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	slti x1, x8, 17
	bgtu x1, x0, LBB0_292
LBB0_288:                               //  %while.body919
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x1, x0, 32
	sw x1, 4 ( x9 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 32
	sw x1, 8 ( x7 )
	lw x1, 272 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 272 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_290
LBB0_289:                               //    in Loop: Header=BB0_288 Depth=2
	addi x9, x9, 8
	jalr x0, LBB0_291 ( x0 )
LBB0_290:                               //  %if.then929
                                        //    in Loop: Header=BB0_288 Depth=2
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 268
	call $__ssprint_r
	addi x7, x2, 268
	addi x1, x2, 204
	add x9, x0, x1
	bgtu x10, x0, LBB0_240
LBB0_291:                               //  %if.end935
                                        //    in Loop: Header=BB0_288 Depth=2
	ori x28, x0, $_svfwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	addi x8, x8, -16
	addi x1, x0, 16
	bgt x8, x1, LBB0_288
LBB0_292:                               //  %while.end937
                                        //    in Loop: Header=BB0_6 Depth=1
	slli x1, x8, 1
	sw x1, 4 ( x9 )
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 272 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 272 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_384
LBB0_293:                               //    in Loop: Header=BB0_6 Depth=1
	addi x9, x9, 8
	jalr x0, LBB0_385 ( x0 )
LBB0_294:                               //  %if.else958
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 300 ( x2 )
	addi x7, x2, 268
	add x9, x0, x8
	bgt x3, x0, LBB0_315
LBB0_295:                               //  %if.then961
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $.str.8 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.8 >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	addi x1, x0, 2
	sw x1, 4 ( x9 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 2
	sw x1, 8 ( x7 )
	lw x1, 272 ( x2 )
	nop
	addi x4, x1, 1
	sw x4, 272 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_297
LBB0_296:                               //    in Loop: Header=BB0_6 Depth=1
	addi x9, x9, 8
	lw x8, 72 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_299 ( x0 )
LBB0_297:                               //  %if.then971
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x7
	call $__ssprint_r
	lw x8, 72 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_379
LBB0_298:                               //  %if.then971.if.end977_crit_edge
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 300 ( x2 )
	addi x1, x2, 204
	add x9, x0, x1
	addi x7, x2, 268
LBB0_299:                               //  %if.end977
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x5, 1
	or x1, x1, x3
	lw x4, 280 ( x2 )
	nop
	or x1, x4, x1
	beqz x1, LBB0_385
LBB0_300:                               //  %if.then984
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x4, 116 ( x2 )               //  4-byte Folded Spill
	addi x1, x2, 308
	sw x1, 0 ( x9 )
	addi x1, x0, 2
	sw x1, 4 ( x9 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 2
	sw x1, 8 ( x7 )
	lw x1, 272 ( x2 )
	nop
	addi x4, x1, 1
	sw x4, 272 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_302
LBB0_301:                               //    in Loop: Header=BB0_6 Depth=1
	addi x1, x9, 8
	jalr x0, LBB0_304 ( x0 )
LBB0_302:                               //  %if.then994
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x7
	call $__ssprint_r
	bgtu x10, x0, LBB0_379
LBB0_303:                               //  %if.then994.if.end1000_crit_edge
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 300 ( x2 )
	addi x1, x2, 204
	addi x7, x2, 268
LBB0_304:                               //  %if.end1000
                                        //    in Loop: Header=BB0_6 Depth=1
	bgez x3, LBB0_313
LBB0_305:                               //  %while.cond1005.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	sub x8, x0, x3
	ori x28, x0, $_svfwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, $_svfwprintf_r.zeroes >> 12 & 0xfffff
	or x4, x4, x28
	sw x4, 0 ( x1 )
	addi x4, x0, -17
	bgt x3, x4, LBB0_310
LBB0_306:                               //  %while.body1008
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x3, x0, 32
	sw x3, 4 ( x1 )
	lw x3, 8 ( x7 )
	nop
	addi x3, x3, 32
	sw x3, 8 ( x7 )
	lw x3, 272 ( x2 )
	nop
	addi x4, x3, 1
	sw x4, 272 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB0_308
LBB0_307:                               //    in Loop: Header=BB0_306 Depth=2
	addi x1, x1, 8
	jalr x0, LBB0_309 ( x0 )
LBB0_308:                               //  %if.then1018
                                        //    in Loop: Header=BB0_306 Depth=2
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 268
	call $__ssprint_r
	addi x7, x2, 268
	addi x1, x2, 204
	bgtu x10, x0, LBB0_240
LBB0_309:                               //  %if.end1024
                                        //    in Loop: Header=BB0_306 Depth=2
	ori x28, x0, $_svfwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $_svfwprintf_r.zeroes >> 12 & 0xfffff
	or x3, x3, x28
	sw x3, 0 ( x1 )
	addi x8, x8, -16
	addi x3, x0, 16
	bgt x8, x3, LBB0_306
LBB0_310:                               //  %while.end1026
                                        //    in Loop: Header=BB0_6 Depth=1
	slli x3, x8, 1
	sw x3, 4 ( x1 )
	lw x4, 8 ( x7 )
	nop
	add x3, x3, x4
	sw x3, 8 ( x7 )
	lw x3, 272 ( x2 )
	nop
	addi x4, x3, 1
	sw x4, 272 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB0_312
LBB0_311:                               //    in Loop: Header=BB0_6 Depth=1
	addi x1, x1, 8
	jalr x0, LBB0_313 ( x0 )
LBB0_312:                               //  %if.then1038
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 268
	call $__ssprint_r
	addi x7, x2, 268
	addi x1, x2, 204
	lw x8, 72 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_379
LBB0_313:                               //  %if.end1045
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 0 ( x1 )
	lw x3, 116 ( x2 )               //  4-byte Folded Reload
	nop
	slli x3, x3, 1
	sw x3, 4 ( x1 )
	lw x4, 8 ( x7 )
	nop
	add x3, x3, x4
	sw x3, 8 ( x7 )
	lw x3, 272 ( x2 )
	nop
	addi x4, x3, 1
	sw x4, 272 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB0_384
LBB0_314:                               //    in Loop: Header=BB0_6 Depth=1
	addi x9, x1, 8
	jalr x0, LBB0_385 ( x0 )
LBB0_315:                               //  %if.else1065
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x4, 280 ( x2 )
	nop
	slli x1, x4, 1
	srai x1, x1, 1
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x8, x0, x3
	bgt x1, x3, LBB0_317
LBB0_316:                               //  %if.else1065
                                        //    in Loop: Header=BB0_6 Depth=1
	add x8, x0, x1
LBB0_317:                               //  %if.else1065
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x4, 116 ( x2 )               //  4-byte Folded Spill
	ble x8, x0, LBB0_321
LBB0_318:                               //  %if.then1078
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x9 )
	slli x1, x8, 1
	sw x1, 4 ( x9 )
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 272 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 272 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_320
LBB0_319:                               //    in Loop: Header=BB0_6 Depth=1
	addi x9, x9, 8
	jalr x0, LBB0_321 ( x0 )
LBB0_320:                               //  %if.then1090
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 268
	call $__ssprint_r
	addi x7, x2, 268
	addi x1, x2, 204
	add x9, x0, x1
	bgtu x10, x0, LBB0_240
LBB0_321:                               //  %if.end1097
                                        //    in Loop: Header=BB0_6 Depth=1
	add x1, x0, x0
	bgt x8, x1, LBB0_323
LBB0_322:                               //  %if.end1097
                                        //    in Loop: Header=BB0_6 Depth=1
	add x8, x0, x0
LBB0_323:                               //  %if.end1097
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x1, x8
	bgt x8, x0, LBB0_328
LBB0_324:                               //    in Loop: Header=BB0_6 Depth=1
	lw x8, 100 ( x2 )               //  4-byte Folded Reload
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
LBB0_325:                               //  %cleanup.cont1151
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 300 ( x2 )
	andi x3, x3, 1
	lw x5, 116 ( x2 )               //  4-byte Folded Reload
	bgtu x3, x0, LBB0_337
LBB0_326:                               //  %cleanup.cont1151
                                        //    in Loop: Header=BB0_6 Depth=1
	bgt x5, x1, LBB0_337
LBB0_327:                               //    in Loop: Header=BB0_6 Depth=1
	lw x4, 56 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_341 ( x0 )
LBB0_328:                               //  %while.cond1108.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $_svfwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	slti x1, x8, 17
	bgtu x1, x0, LBB0_333
LBB0_329:                               //  %while.body1111
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x1, x0, 32
	sw x1, 4 ( x9 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 32
	sw x1, 8 ( x7 )
	lw x1, 272 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 272 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_331
LBB0_330:                               //    in Loop: Header=BB0_329 Depth=2
	addi x9, x9, 8
	jalr x0, LBB0_332 ( x0 )
LBB0_331:                               //  %if.then1121
                                        //    in Loop: Header=BB0_329 Depth=2
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 268
	call $__ssprint_r
	addi x7, x2, 268
	addi x1, x2, 204
	add x9, x0, x1
	bgtu x10, x0, LBB0_240
LBB0_332:                               //  %if.end1127
                                        //    in Loop: Header=BB0_329 Depth=2
	ori x28, x0, $_svfwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	addi x8, x8, -16
	addi x1, x0, 16
	bgt x8, x1, LBB0_329
LBB0_333:                               //  %while.end1129
                                        //    in Loop: Header=BB0_6 Depth=1
	slli x1, x8, 1
	sw x1, 4 ( x9 )
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 272 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 272 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_335
LBB0_334:                               //    in Loop: Header=BB0_6 Depth=1
	addi x9, x9, 8
	jalr x0, LBB0_324 ( x0 )
LBB0_335:                               //  %if.then1141
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	nop
	add x8, x0, x11
	addi x12, x2, 268
	call $__ssprint_r
	addi x7, x2, 268
	addi x1, x2, 204
	add x9, x0, x1
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB0_325
LBB0_336:
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x3, x0, x8
	lw x8, 72 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_90 ( x0 )
LBB0_337:                               //  %if.then1158
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x3, x2, 308
	sw x3, 0 ( x9 )
	addi x3, x0, 2
	sw x3, 4 ( x9 )
	lw x3, 8 ( x7 )
	nop
	addi x3, x3, 2
	sw x3, 8 ( x7 )
	lw x3, 272 ( x2 )
	nop
	addi x4, x3, 1
	sw x4, 272 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB0_339
LBB0_338:                               //    in Loop: Header=BB0_6 Depth=1
	addi x9, x9, 8
	lw x4, 56 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_341 ( x0 )
LBB0_339:                               //  %if.then1168
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x7
	call $__ssprint_r
	bgtu x10, x0, LBB0_336
LBB0_340:                               //  %if.then1168.if.end1175_crit_edge
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 300 ( x2 )
	addi x3, x2, 204
	add x9, x0, x3
	addi x7, x2, 268
	lw x4, 56 ( x2 )                //  4-byte Folded Reload
	lw x5, 116 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_341:                               //  %if.end1175
                                        //    in Loop: Header=BB0_6 Depth=1
	sub x8, x5, x1
	sub x3, x5, x4
	slli x3, x3, 1
	srai x3, x3, 1
	bgt x3, x8, LBB0_343
LBB0_342:                               //  %if.end1175
                                        //    in Loop: Header=BB0_6 Depth=1
	add x8, x0, x3
LBB0_343:                               //  %if.end1175
                                        //    in Loop: Header=BB0_6 Depth=1
	ble x8, x0, LBB0_348
LBB0_344:                               //  %if.then1190
                                        //    in Loop: Header=BB0_6 Depth=1
	slli x3, x4, 1
	lw x4, 88 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x4
	sw x3, 0 ( x9 )
	slli x3, x8, 1
	sw x3, 4 ( x9 )
	lw x4, 8 ( x7 )
	nop
	add x3, x3, x4
	sw x3, 8 ( x7 )
	lw x3, 272 ( x2 )
	nop
	addi x4, x3, 1
	sw x4, 272 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB0_346
LBB0_345:                               //    in Loop: Header=BB0_6 Depth=1
	addi x9, x9, 8
	jalr x0, LBB0_348 ( x0 )
LBB0_346:                               //  %if.then1202
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x7
	call $__ssprint_r
	bgtu x10, x0, LBB0_240
LBB0_347:                               //  %if.then1202.if.end1209_crit_edge
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 300 ( x2 )
	addi x3, x2, 204
	add x9, x0, x3
	addi x7, x2, 268
	lw x5, 116 ( x2 )               //  4-byte Folded Reload
LBB0_348:                               //  %if.end1209
                                        //    in Loop: Header=BB0_6 Depth=1
	add x3, x0, x0
	ble x8, x3, LBB0_350
LBB0_349:                               //    in Loop: Header=BB0_6 Depth=1
	sub x3, x0, x8
LBB0_350:                               //  %if.end1209
                                        //    in Loop: Header=BB0_6 Depth=1
	sub x1, x5, x1
	add x8, x3, x1
	ble x8, x0, LBB0_385
LBB0_351:                               //  %while.cond1221.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $_svfwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	slti x1, x8, 17
	bgtu x1, x0, LBB0_356
LBB0_352:                               //  %while.body1224
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x1, x0, 32
	sw x1, 4 ( x9 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 32
	sw x1, 8 ( x7 )
	lw x1, 272 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 272 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_354
LBB0_353:                               //    in Loop: Header=BB0_352 Depth=2
	addi x9, x9, 8
	jalr x0, LBB0_355 ( x0 )
LBB0_354:                               //  %if.then1234
                                        //    in Loop: Header=BB0_352 Depth=2
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 268
	call $__ssprint_r
	addi x7, x2, 268
	addi x1, x2, 204
	add x9, x0, x1
	bgtu x10, x0, LBB0_240
LBB0_355:                               //  %if.end1240
                                        //    in Loop: Header=BB0_352 Depth=2
	ori x28, x0, $_svfwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	addi x8, x8, -16
	addi x1, x0, 16
	bgt x8, x1, LBB0_352
LBB0_356:                               //  %while.end1242
                                        //    in Loop: Header=BB0_6 Depth=1
	slli x1, x8, 1
	sw x1, 4 ( x9 )
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 272 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 272 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_384
LBB0_357:                               //    in Loop: Header=BB0_6 Depth=1
	addi x9, x9, 8
	jalr x0, LBB0_385 ( x0 )
LBB0_358:                               //  %if.else1270
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x11, 280 ( x2 )
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x9 )
	addi x1, x0, 2
	sw x1, 4 ( x9 )
	lw x1, 8 ( x7 )
	nop
	addi x3, x1, 2
	sw x3, 8 ( x7 )
	addi x9, x9, 8
	lw x4, 272 ( x2 )
	nop
	addi x1, x4, 1
	sw x1, 272 ( x2 )
	andi x5, x10, 1
	bgtu x5, x0, LBB0_360
LBB0_359:                               //  %if.else1270
                                        //    in Loop: Header=BB0_6 Depth=1
	slti x5, x11, 2
	bgtu x5, x0, LBB0_380
LBB0_360:                               //  %if.then1276
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x11, 116 ( x2 )              //  4-byte Folded Spill
	slti x4, x4, 7
	add x8, x0, x12
	bgtu x4, x0, LBB0_364
LBB0_361:                               //  %if.then1286
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x7
	add x12, x0, x8
	call $__ssprint_r
	beqz x10, LBB0_363
LBB0_362:
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	lw x8, 72 ( x2 )                //  4-byte Folded Reload
	lw x3, 100 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_90 ( x0 )
LBB0_363:                               //  %if.then1286.if.end1292_crit_edge
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 272 ( x2 )
	lw x3, 8 ( x8 )
	addi x4, x2, 204
	add x9, x0, x4
	add x7, x0, x8
	add x8, x0, x0
LBB0_364:                               //  %if.end1292
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x4, x2, 308
	sw x4, 0 ( x9 )
	addi x4, x0, 2
	sw x4, 4 ( x9 )
	addi x3, x3, 2
	sw x3, 8 ( x7 )
	addi x3, x1, 1
	sw x3, 272 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_366
LBB0_365:                               //    in Loop: Header=BB0_6 Depth=1
	addi x9, x9, 8
	jalr x0, LBB0_367 ( x0 )
LBB0_366:                               //  %if.then1303
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x7
	call $__ssprint_r
	addi x1, x2, 204
	add x9, x0, x1
	bgtu x10, x0, LBB0_240
LBB0_367:                               //  %if.end1309
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x9, 92 ( x2 )                //  4-byte Folded Spill
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	add x13, x0, x8
	call $__eqdf2
	beqz x10, LBB0_370
LBB0_368:                               //  %if.then1312
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 2
	lw x9, 92 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x9 )
	lw x1, 116 ( x2 )               //  4-byte Folded Reload
	nop
	slli x1, x1, 1
	addi x1, x1, -2
	sw x1, 4 ( x9 )
	addi x7, x2, 268
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 272 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 272 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_381
LBB0_369:                               //    in Loop: Header=BB0_6 Depth=1
	addi x9, x9, 8
	jalr x0, LBB0_382 ( x0 )
LBB0_370:                               //  %if.else1333
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 116 ( x2 )               //  4-byte Folded Reload
	nop
	slti x1, x3, 2
	addi x7, x2, 268
	lw x9, 92 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB0_382
LBB0_371:                               //  %while.cond1338.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x8, x3, -1
	ori x28, x0, $_svfwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	slti x1, x8, 17
	bgtu x1, x0, LBB0_376
LBB0_372:                               //  %while.body1341
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x1, x0, 32
	sw x1, 4 ( x9 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 32
	sw x1, 8 ( x7 )
	lw x1, 272 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 272 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_374
LBB0_373:                               //    in Loop: Header=BB0_372 Depth=2
	addi x9, x9, 8
	jalr x0, LBB0_375 ( x0 )
LBB0_374:                               //  %if.then1351
                                        //    in Loop: Header=BB0_372 Depth=2
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 268
	call $__ssprint_r
	addi x7, x2, 268
	addi x1, x2, 204
	add x9, x0, x1
	bgtu x10, x0, LBB0_240
LBB0_375:                               //  %if.end1357
                                        //    in Loop: Header=BB0_372 Depth=2
	ori x28, x0, $_svfwprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfwprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	addi x8, x8, -16
	addi x1, x0, 16
	bgt x8, x1, LBB0_372
LBB0_376:                               //  %while.end1359
                                        //    in Loop: Header=BB0_6 Depth=1
	slli x1, x8, 1
	sw x1, 4 ( x9 )
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 272 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 272 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_378
LBB0_377:                               //    in Loop: Header=BB0_6 Depth=1
	addi x9, x9, 8
	jalr x0, LBB0_382 ( x0 )
LBB0_378:                               //  %if.then1371
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 268
	call $__ssprint_r
	addi x7, x2, 268
	addi x1, x2, 204
	add x9, x0, x1
	lw x8, 72 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB0_382
LBB0_379:
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	lw x3, 100 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_90 ( x0 )
LBB0_380:                               //  %if.else1380
                                        //    in Loop: Header=BB0_6 Depth=1
	slti x1, x4, 7
	bgtu x1, x0, LBB0_382
LBB0_381:                               //  %if.then1326
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 268
	call $__ssprint_r
	addi x7, x2, 268
	addi x1, x2, 204
	add x9, x0, x1
	bgtu x10, x0, LBB0_240
LBB0_382:                               //  %if.end1397
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x2, 286
	sw x1, 0 ( x9 )
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 1
	sw x1, 4 ( x9 )
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 272 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 272 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_384
LBB0_383:                               //    in Loop: Header=BB0_6 Depth=1
	addi x9, x9, 8
	jalr x0, LBB0_385 ( x0 )
LBB0_384:                               //  %if.then859
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 268
	call $__ssprint_r
	addi x7, x2, 268
	addi x1, x2, 204
	add x9, x0, x1
	bgtu x10, x0, LBB0_240
LBB0_385:                               //  %if.end1418
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 4
	beqz x1, LBB0_394
LBB0_386:                               //  %if.then1421
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 108 ( x2 )               //  4-byte Folded Reload
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x1, x3
	ble x8, x0, LBB0_394
LBB0_387:                               //  %while.cond1426.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $_svfwprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfwprintf_r.blanks >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	slti x1, x8, 17
	bgtu x1, x0, LBB0_392
LBB0_388:                               //  %while.body1429
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x1, x0, 32
	sw x1, 4 ( x9 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 32
	sw x1, 8 ( x7 )
	lw x1, 272 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 272 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_390
LBB0_389:                               //    in Loop: Header=BB0_388 Depth=2
	addi x9, x9, 8
	jalr x0, LBB0_391 ( x0 )
LBB0_390:                               //  %if.then1439
                                        //    in Loop: Header=BB0_388 Depth=2
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 268
	call $__ssprint_r
	addi x7, x2, 268
	addi x1, x2, 204
	add x9, x0, x1
	bgtu x10, x0, LBB0_240
LBB0_391:                               //  %if.end1445
                                        //    in Loop: Header=BB0_388 Depth=2
	ori x28, x0, $_svfwprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfwprintf_r.blanks >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x9 )
	addi x8, x8, -16
	addi x1, x0, 16
	bgt x8, x1, LBB0_388
LBB0_392:                               //  %while.end1447
                                        //    in Loop: Header=BB0_6 Depth=1
	slli x1, x8, 1
	sw x1, 4 ( x9 )
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 272 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 272 ( x2 )
	slti x1, x1, 7
	bgtu x1, x0, LBB0_394
LBB0_393:                               //  %if.then1459
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 268
	call $__ssprint_r
	addi x7, x2, 268
	bgtu x10, x0, LBB0_240
LBB0_394:                               //  %if.end1467
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x3, x1, LBB0_396
LBB0_395:                               //  %if.end1467
                                        //    in Loop: Header=BB0_6 Depth=1
	add x3, x0, x1
LBB0_396:                               //  %if.end1467
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	lw x1, 276 ( x2 )
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x0
	beqz x1, LBB0_399
LBB0_397:                               //  %land.lhs.true1477
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 268
	add x8, x0, x11
	call $__ssprint_r
	add x3, x0, x8
	add x8, x0, x0
	addi x7, x2, 268
	beqz x10, LBB0_399
LBB0_398:
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	lw x8, 72 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_90 ( x0 )
LBB0_399:                               //  %if.end1481
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x0, 272 ( x2 )
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_418
LBB0_417:                               //  %if.end1481
                                        //    in Loop: Header=BB0_6 Depth=1
	jalr x0, LBB0_6 ( x0 )
LBB0_418:                               //  %if.end1481
                                        //    in Loop: Header=BB0_6 Depth=1
LBB0_400:                               //  %if.then1486
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $_free_r
	addi x7, x2, 268
	sw x8, 48 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_6 ( x0 )
LBB0_401:                               //  %done
	lw x1, 276 ( x2 )
	lw x3, 100 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB0_403
LBB0_402:                               //  %land.lhs.true1490
	addi x12, x2, 268
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	add x11, x0, x3
	add x8, x0, x3
	call $__ssprint_r
	add x3, x0, x8
	bgtu x10, x0, LBB0_404
LBB0_403:                               //  %if.end1494
	sw x0, 272 ( x2 )
LBB0_404:                               //  %if.end1500
	lbu x1, 12 ( x3 )
	nop
	andi x1, x1, 64
	srli x1, x1, 6
	beqz x1, LBB0_406
LBB0_405:
	not x10, x0
	jalr x0, LBB0_407 ( x0 )
LBB0_406:                               //  %if.end1500
	lw x10, 84 ( x2 )               //  4-byte Folded Reload
LBB0_407:                               //  %cleanup1510
	lw x8, 332 ( x2 )               //  4-byte Folded Reload
	lw x1, 340 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 344
$cfi5:
	.cfi_adjust_cfa_offset -344
$cfi6:
	.cfi_def_cfa 2, 0
	ret
LBB0_408:                               //  %if.then596
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x9, 48
	jalr x0, LBB0_220 ( x0 )
$func_end0:
	.size	$_svfwprintf_r, ($func_end0)-($_svfwprintf_r)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	LBB0_401
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_25
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_27
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_31
	.long	LBB0_34
	.long	LBB0_224
	.long	LBB0_33
	.long	LBB0_35
	.long	LBB0_224
	.long	LBB0_44
	.long	LBB0_45
	.long	LBB0_45
	.long	LBB0_45
	.long	LBB0_45
	.long	LBB0_45
	.long	LBB0_45
	.long	LBB0_45
	.long	LBB0_45
	.long	LBB0_45
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_70
	.long	LBB0_224
	.long	LBB0_70
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_47
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_181
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_53
	.long	LBB0_58
	.long	LBB0_70
	.long	LBB0_70
	.long	LBB0_70
	.long	LBB0_48
	.long	LBB0_58
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_49
	.long	LBB0_224
	.long	LBB0_133
	.long	LBB0_140
	.long	LBB0_147
	.long	LBB0_52
	.long	LBB0_224
	.long	LBB0_148
	.long	LBB0_224
	.long	LBB0_172
	.long	LBB0_224
	.long	LBB0_224
	.long	LBB0_180

	.text
	.type	$wcvt,@function
$wcvt:                                  //  @wcvt
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -56
$cfi9:
	.cfi_adjust_cfa_offset 56
	sw x1, 52 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	sw x16, 32 ( x2 )               //  4-byte Folded Spill
	sw x14, 8 ( x2 )                //  4-byte Folded Spill
	sw x13, 20 ( x2 )               //  4-byte Folded Spill
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	add x3, x0, x12
	sw x17, 28 ( x2 )               //  4-byte Folded Spill
	add x4, x0, x11
	srai x1, x3, 31
	andi x1, x1, 45
	sh x1, 0 ( x15 )
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	add x8, x0, x0
	or x11, x1, x28
	add x10, x0, x8
	sw x4, 12 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x4
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x3
	call $__subdf3
	add x3, x0, x10
	add x4, x0, x11
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	ori x5, x1, 32
	addi x1, x0, 102
	bne x5, x1, LBB1_2
LBB1_1:
	addi x13, x0, 3
	jalr x0, LBB1_3 ( x0 )
LBB1_2:                                 //  %entry
	addi x13, x0, 2
LBB1_3:                                 //  %entry
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x7, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x8, x1, LBB1_5
LBB1_4:                                 //  %entry
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
LBB1_5:                                 //  %entry
	bgt x8, x1, LBB1_7
LBB1_6:                                 //  %entry
	add x4, x0, x1
LBB1_7:                                 //  %entry
	xori x1, x5, 101
	seqz x1, x1
	andi x1, x1, 1
	add x14, x7, x1
	addi x16, x2, 40
	addi x17, x2, 36
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x3
	sw x4, 20 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x4
	sw x14, 12 ( x2 )               //  4-byte Folded Spill
	lw x15, 32 ( x2 )               //  4-byte Folded Reload
	sw x5, 28 ( x2 )                //  4-byte Folded Spill
	call $_dtoa_r
	lw x4, 28 ( x2 )                //  4-byte Folded Reload
	add x5, x0, x10
	lw x7, 64 ( x2 )
	lw x3, 56 ( x2 )
	xori x1, x4, 103
	bgtu x1, x0, LBB1_10
LBB1_8:                                 //  %lor.lhs.false17
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	andi x1, x1, 1
	bgtu x1, x0, LBB1_10
LBB1_9:                                 //  %lor.lhs.false17.if.end40_crit_edge
	lw x1, 36 ( x2 )
	jalr x0, LBB1_23 ( x0 )
LBB1_10:                                //  %if.then20
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x1, x5
	xori x1, x4, 102
	sw x5, 28 ( x2 )                //  4-byte Folded Spill
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB1_12
LBB1_11:
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_17 ( x0 )
LBB1_12:                                //  %if.then24
	add x12, x0, x0
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x12
	call $__eqdf2
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB1_14
LBB1_13:                                //  %if.then24
	lb x1, 0 ( x1 )
	nop
	andi x1, x1, 255
	xori x1, x1, 48
	beqz x1, LBB1_15
LBB1_14:                                //  %if.then24.if.end31_crit_edge
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x1 )
	jalr x0, LBB1_16 ( x0 )
LBB1_15:                                //  %if.then29
	slti x1, x0, 1
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
LBB1_16:                                //  %if.end31
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x1, x3
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
LBB1_17:                                //  %if.end33
	add x12, x0, x0
	add x13, x0, x12
	call $__nedf2
	bgtu x10, x0, LBB1_19
LBB1_18:                                //  %while.cond.preheader.thread
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 36 ( x2 )
	lw x5, 28 ( x2 )                //  4-byte Folded Reload
	lw x7, 64 ( x2 )
	jalr x0, LBB1_22 ( x0 )
LBB1_19:                                //  %while.cond.preheader
	lw x1, 36 ( x2 )
	lw x5, 28 ( x2 )                //  4-byte Folded Reload
	lw x7, 64 ( x2 )
	lw x9, 16 ( x2 )                //  4-byte Folded Reload
	nop
	bgeu x1, x9, LBB1_22
LBB1_20:                                //  %while.body.preheader
	addi x3, x0, 48
LBB1_21:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	addi x4, x1, 1
	sw x4, 36 ( x2 )
	sb x3, 0 ( x1 )
	lw x1, 36 ( x2 )
	nop
	bgtu x9, x1, LBB1_21
LBB1_22:                                //  %if.end40.loopexit
	lw x3, 56 ( x2 )
LBB1_23:                                //  %if.end40
	lw x10, 60 ( x2 )
	sub x1, x1, x5
	sw x1, 0 ( x3 )
	ble x7, x0, LBB1_28
LBB1_24:                                //  %if.end40
	ble x1, x0, LBB1_28
LBB1_25:                                //  %for.body.preheader
	add x3, x0, x10
LBB1_26:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x4, x8, x5
	lb x4, 0 ( x4 )
	nop
	sh x4, 0 ( x3 )
	addi x8, x8, 1
	ble x7, x8, LBB1_28
LBB1_27:                                //  %for.body
                                        //    in Loop: Header=BB1_26 Depth=1
	addi x3, x3, 2
	bgt x1, x8, LBB1_26
LBB1_28:                                //  %for.end
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 56
$cfi12:
	.cfi_adjust_cfa_offset -56
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$wcvt, ($func_end1)-($wcvt)
	.cfi_endproc

	.address_space	0	
	.type	$_svfwprintf_r.blanks,@object //  @_svfwprintf_r.blanks
	.section	.rodata,"a",@progbits
	.p2align	1
$_svfwprintf_r.blanks:
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
	.size	$_svfwprintf_r.blanks, 32

	.address_space	0	
	.type	$_svfwprintf_r.zeroes,@object //  @_svfwprintf_r.zeroes
	.p2align	1
$_svfwprintf_r.zeroes:
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
	.size	$_svfwprintf_r.zeroes, 32

	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str2.2,"aMS",@progbits,2
	.p2align	1
$.str:
	.short	73                      //  0x49
	.short	78                      //  0x4e
	.short	70                      //  0x46
	.short	0                       //  0x0
	.size	$.str, 8

	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
	.p2align	1
$.str.1:
	.short	105                     //  0x69
	.short	110                     //  0x6e
	.short	102                     //  0x66
	.short	0                       //  0x0
	.size	$.str.1, 8

	.address_space	0	
	.type	$.str.2,@object         //  @.str.2
	.p2align	1
$.str.2:
	.short	78                      //  0x4e
	.short	65                      //  0x41
	.short	78                      //  0x4e
	.short	0                       //  0x0
	.size	$.str.2, 8

	.address_space	0	
	.type	$.str.3,@object         //  @.str.3
	.p2align	1
$.str.3:
	.short	110                     //  0x6e
	.short	97                      //  0x61
	.short	110                     //  0x6e
	.short	0                       //  0x0
	.size	$.str.3, 8

	.address_space	0	
	.type	$.str.4,@object         //  @.str.4
	.p2align	1
$.str.4:
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
	.size	$.str.4, 34

	.address_space	0	
	.type	$.str.5,@object         //  @.str.5
	.p2align	1
$.str.5:
	.short	40                      //  0x28
	.short	110                     //  0x6e
	.short	117                     //  0x75
	.short	108                     //  0x6c
	.short	108                     //  0x6c
	.short	41                      //  0x29
	.short	0                       //  0x0
	.size	$.str.5, 14

	.address_space	0	
	.type	$.str.6,@object         //  @.str.6
	.p2align	1
$.str.6:
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
	.size	$.str.6, 34

	.address_space	0	
	.type	$.str.7,@object         //  @.str.7
	.p2align	1
$.str.7:
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
	.size	$.str.7, 52

	.address_space	0	
	.type	$.str.8,@object         //  @.str.8
	.p2align	1
$.str.8:
	.short	48                      //  0x30
	.short	0                       //  0x0
	.size	$.str.8, 4


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
