	.text
	.file	"svfprintf.bc"
	.globl	$_svfprintf_r
	.type	$_svfprintf_r,@function
$_svfprintf_r:                          //  @_svfprintf_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -280
$cfi2:
	.cfi_adjust_cfa_offset 280
	sw x1, 276 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 268 ( x2 )               //  4-byte Folded Spill
	sw x12, 108 ( x2 )              //  4-byte Folded Spill
	add x8, x0, x11
	sw x13, 252 ( x2 )
	sw x10, 96 ( x2 )               //  4-byte Folded Spill
	call $_localeconv_r
	lw x10, 0 ( x10 )
	nop
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	call $strlen
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	lbu x1, 12 ( x8 )
	nop
	andi x1, x1, 128
	beqz x1, LBB0_5
LBB0_1:                                 //  %land.lhs.true
	lw x1, 16 ( x8 )
	nop
	bgtu x1, x0, LBB0_5
LBB0_2:                                 //  %if.then
	addi x11, x0, 64
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	nop
	call $_malloc_r
	sw x10, 0 ( x8 )
	sw x10, 16 ( x8 )
	bgtu x10, x0, LBB0_4
LBB0_3:                                 //  %if.then9
	addi x1, x0, 12
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
	not x10, x0
	jalr x0, LBB0_400 ( x0 )
LBB0_4:                                 //  %if.end
	addi x1, x0, 64
	sw x1, 20 ( x8 )
LBB0_5:                                 //  %if.end11
	sw x8, 100 ( x2 )               //  4-byte Folded Spill
	addi x4, x2, 237
	addi x5, x2, 160
	addi x7, x2, 224
	add x9, x0, x0
	addi x1, x2, 260
	addi x10, x2, 120
	sw x5, 224 ( x2 )
	sw x0, 8 ( x7 )
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 1
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	addi x3, x4, 3
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
	addi x1, x1, 7
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	addi x1, x4, 2
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	addi x1, x10, 40
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	sw x0, 228 ( x2 )
	sw x9, 76 ( x2 )                //  4-byte Folded Spill
	sw x9, 44 ( x2 )                //  4-byte Folded Spill
	sw x9, 48 ( x2 )                //  4-byte Folded Spill
	sw x9, 20 ( x2 )                //  4-byte Folded Spill
	sw x9, 80 ( x2 )                //  4-byte Folded Spill
	sw x9, 40 ( x2 )                //  4-byte Folded Spill
LBB0_6:                                 //  %for.cond.outer
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_7 Depth 2
                                        //        Child Loop BB0_8 Depth 3
                                        //        Child Loop BB0_19 Depth 3
                                        //          Child Loop BB0_20 Depth 4
                                        //            Child Loop BB0_42 Depth 5
                                        //            Child Loop BB0_33 Depth 5
                                        //      Child Loop BB0_102 Depth 2
                                        //      Child Loop BB0_119 Depth 2
                                        //      Child Loop BB0_124 Depth 2
                                        //      Child Loop BB0_203 Depth 2
                                        //      Child Loop BB0_213 Depth 2
                                        //      Child Loop BB0_205 Depth 2
                                        //      Child Loop BB0_235 Depth 2
                                        //      Child Loop BB0_253 Depth 2
                                        //      Child Loop BB0_262 Depth 2
                                        //      Child Loop BB0_369 Depth 2
                                        //      Child Loop BB0_324 Depth 2
                                        //      Child Loop BB0_349 Depth 2
                                        //      Child Loop BB0_305 Depth 2
                                        //      Child Loop BB0_285 Depth 2
                                        //      Child Loop BB0_383 Depth 2
	add x4, x0, x5
	lw x5, 108 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_7:                                 //  %for.cond
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_8 Depth 3
                                        //        Child Loop BB0_19 Depth 3
                                        //          Child Loop BB0_20 Depth 4
                                        //            Child Loop BB0_42 Depth 5
                                        //            Child Loop BB0_33 Depth 5
	add x8, x0, x5
LBB0_8:                                 //  %while.cond
                                        //    Parent Loop BB0_6 Depth=1
                                        //      Parent Loop BB0_7 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lbu x1, 0 ( x8 )
	nop
	beqz x1, LBB0_11
LBB0_9:                                 //  %while.cond
                                        //    in Loop: Header=BB0_8 Depth=3
	xori x3, x1, 37
	beqz x3, LBB0_11
LBB0_10:                                //  %while.body
                                        //    in Loop: Header=BB0_8 Depth=3
	addi x8, x8, 1
	jalr x0, LBB0_8 ( x0 )
LBB0_11:                                //  %while.end
                                        //    in Loop: Header=BB0_7 Depth=2
	sub x9, x8, x5
	bgtu x9, x0, LBB0_13
LBB0_12:                                //    in Loop: Header=BB0_7 Depth=2
	sw x4, 68 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_17 ( x0 )
LBB0_13:                                //  %if.then19
                                        //    in Loop: Header=BB0_7 Depth=2
	sw x9, 4 ( x4 )
	sw x5, 0 ( x4 )
	lw x1, 8 ( x7 )
	nop
	add x1, x9, x1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	slti x1, x1, 7
	sw x3, 228 ( x2 )
	beqz x1, LBB0_15
LBB0_14:                                //    in Loop: Header=BB0_7 Depth=2
	addi x4, x4, 8
	jalr x0, LBB0_16 ( x0 )
LBB0_15:                                //  %if.then24
                                        //    in Loop: Header=BB0_7 Depth=2
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x7
	sw x9, 112 ( x2 )               //  4-byte Folded Spill
	call $__ssprint_r
	lw x9, 112 ( x2 )               //  4-byte Folded Reload
	addi x1, x2, 160
	add x4, x0, x1
	beqz x10, LBB0_404
LBB0_403:                               //  %if.then24
                                        //    in Loop: Header=BB0_7 Depth=2
	jalr x0, LBB0_397 ( x0 )
LBB0_404:                               //  %if.then24
                                        //    in Loop: Header=BB0_7 Depth=2
LBB0_16:                                //  %if.end30
                                        //    in Loop: Header=BB0_7 Depth=2
	sw x4, 68 ( x2 )                //  4-byte Folded Spill
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x9
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	lb x1, 0 ( x8 )
	nop
LBB0_17:                                //  %if.end32
                                        //    in Loop: Header=BB0_7 Depth=2
	andi x1, x1, 255
	bgtu x1, x0, LBB0_406
LBB0_405:                               //  %if.end32
                                        //    in Loop: Header=BB0_7 Depth=2
	jalr x0, LBB0_394 ( x0 )
LBB0_406:                               //  %if.end32
                                        //    in Loop: Header=BB0_7 Depth=2
LBB0_18:                                //  %if.end37
                                        //    in Loop: Header=BB0_7 Depth=2
	addi x1, x8, 1
	sb x0, 251 ( x2 )
	add x3, x0, x0
	sw x3, 92 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x3
	not x4, x0
	sw x4, 88 ( x2 )                //  4-byte Folded Spill
	sw x3, 84 ( x2 )                //  4-byte Folded Spill
LBB0_19:                                //  %rflag
                                        //    Parent Loop BB0_6 Depth=1
                                        //      Parent Loop BB0_7 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_20 Depth 4
                                        //            Child Loop BB0_42 Depth 5
                                        //            Child Loop BB0_33 Depth 5
	addi x8, x1, 1
	lb x3, 0 ( x1 )
LBB0_20:                                //  %reswitch
                                        //    Parent Loop BB0_6 Depth=1
                                        //      Parent Loop BB0_7 Depth=2
                                        //        Parent Loop BB0_19 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB0_42 Depth 5
                                        //            Child Loop BB0_33 Depth 5
	sw x10, 104 ( x2 )              //  4-byte Folded Spill
	sw x8, 108 ( x2 )               //  4-byte Folded Spill
	addi x1, x0, 120
	sw x3, 112 ( x2 )               //  4-byte Folded Spill
	bgtu x3, x1, LBB0_225
LBB0_21:                                //  %reswitch
                                        //    in Loop: Header=BB0_20 Depth=4
	add x10, x0, x3
	addi x11, x0, 4
	call $__mulsi3
	lw x3, 112 ( x2 )               //  4-byte Folded Reload
	ori x28, x0, JTI0_0 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI0_0 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB0_22:                                //  %sw.bb
                                        //    in Loop: Header=BB0_19 Depth=3
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	andi x3, x1, 255
	lw x4, 108 ( x2 )               //  4-byte Folded Reload
	nop
	add x1, x0, x4
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	bgtu x3, x0, LBB0_19
LBB0_23:                                //  %if.then42
                                        //    in Loop: Header=BB0_19 Depth=3
	addi x1, x0, 32
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	sb x1, 251 ( x2 )
	add x1, x0, x4
	jalr x0, LBB0_19 ( x0 )
LBB0_24:                                //  %sw.bb44
                                        //    in Loop: Header=BB0_19 Depth=3
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 1
LBB0_25:                                //  %rflag
                                        //    in Loop: Header=BB0_19 Depth=3
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
LBB0_26:                                //  %rflag
                                        //    in Loop: Header=BB0_19 Depth=3
	lw x1, 108 ( x2 )               //  4-byte Folded Reload
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB0_19 ( x0 )
LBB0_27:                                //  %sw.bb45
                                        //    in Loop: Header=BB0_19 Depth=3
	lw x1, 252 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 252 ( x2 )
	lw x10, 0 ( x1 )
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	nop
	add x1, x0, x3
	bgez x10, LBB0_19
LBB0_28:                                //  %if.end49
                                        //    in Loop: Header=BB0_19 Depth=3
	sub x10, x0, x10
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 4
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x3
	jalr x0, LBB0_19 ( x0 )
LBB0_29:                                //  %sw.bb50.loopexit
                                        //    in Loop: Header=BB0_19 Depth=3
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 4
	jalr x0, LBB0_25 ( x0 )
LBB0_30:                                //  %sw.bb52
                                        //    in Loop: Header=BB0_19 Depth=3
	addi x1, x0, 43
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	sb x1, 251 ( x2 )
	jalr x0, LBB0_26 ( x0 )
LBB0_31:                                //  %sw.bb53
                                        //    in Loop: Header=BB0_20 Depth=4
	lw x8, 108 ( x2 )               //  4-byte Folded Reload
	nop
	lb x3, 0 ( x8 )
	addi x8, x8, 1
	xori x1, x3, 42
	beqz x1, LBB0_37
LBB0_32:                                //  %while.cond65.preheader
                                        //    in Loop: Header=BB0_20 Depth=4
	addi x4, x3, -48
	add x10, x0, x0
	addi x1, x0, 9
	bgtu x4, x1, LBB0_34
LBB0_33:                                //  %while.body69
                                        //    Parent Loop BB0_6 Depth=1
                                        //      Parent Loop BB0_7 Depth=2
                                        //        Parent Loop BB0_19 Depth=3
                                        //          Parent Loop BB0_20 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	sw x4, 112 ( x2 )               //  4-byte Folded Spill
	addi x11, x0, 10
	call $__mulsi3
	lb x3, 0 ( x8 )
	lw x1, 112 ( x2 )               //  4-byte Folded Reload
	nop
	add x10, x1, x10
	addi x8, x8, 1
	addi x4, x3, -48
	sltiu x1, x4, 10
	bgtu x1, x0, LBB0_33
LBB0_34:                                //  %while.end74
                                        //    in Loop: Header=BB0_20 Depth=4
	not x1, x0
	bgt x10, x1, LBB0_36
LBB0_35:                                //  %while.end74
                                        //    in Loop: Header=BB0_20 Depth=4
	add x10, x0, x1
LBB0_36:                                //  %while.end74
                                        //    in Loop: Header=BB0_20 Depth=4
	sw x10, 88 ( x2 )               //  4-byte Folded Spill
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB0_20 ( x0 )
LBB0_37:                                //  %if.then58
                                        //    in Loop: Header=BB0_19 Depth=3
	lw x3, 252 ( x2 )
	not x1, x0
	addi x4, x3, 4
	sw x4, 252 ( x2 )
	lw x3, 0 ( x3 )
	nop
	bgt x3, x1, LBB0_39
LBB0_38:                                //  %if.then58
                                        //    in Loop: Header=BB0_19 Depth=3
	add x3, x0, x1
LBB0_39:                                //  %if.then58
                                        //    in Loop: Header=BB0_19 Depth=3
	sw x3, 88 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x8
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB0_19 ( x0 )
LBB0_40:                                //  %sw.bb77
                                        //    in Loop: Header=BB0_19 Depth=3
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 128
	jalr x0, LBB0_25 ( x0 )
LBB0_41:                                //  %do.body.preheader
                                        //    in Loop: Header=BB0_20 Depth=4
	add x10, x0, x0
	add x4, x0, x3
	lw x8, 108 ( x2 )               //  4-byte Folded Reload
LBB0_42:                                //  %do.body
                                        //    Parent Loop BB0_6 Depth=1
                                        //      Parent Loop BB0_7 Depth=2
                                        //        Parent Loop BB0_19 Depth=3
                                        //          Parent Loop BB0_20 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	sw x4, 112 ( x2 )               //  4-byte Folded Spill
	addi x11, x0, 10
	call $__mulsi3
	lb x3, 0 ( x8 )
	lw x1, 112 ( x2 )               //  4-byte Folded Reload
	nop
	add x1, x10, x1
	addi x8, x8, 1
	addi x10, x1, -48
	addi x1, x3, -48
	sltiu x1, x1, 10
	add x4, x0, x3
	bgtu x1, x0, LBB0_42
	jalr x0, LBB0_20 ( x0 )
LBB0_43:                                //  %sw.bb88
                                        //    in Loop: Header=BB0_19 Depth=3
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 8
	jalr x0, LBB0_25 ( x0 )
LBB0_44:                                //  %sw.bb90
                                        //    in Loop: Header=BB0_19 Depth=3
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 64
	jalr x0, LBB0_25 ( x0 )
LBB0_45:                                //  %sw.bb92
                                        //    in Loop: Header=BB0_19 Depth=3
	lw x3, 108 ( x2 )               //  4-byte Folded Reload
	nop
	lbu x1, 0 ( x3 )
	nop
	xori x1, x1, 108
	bgtu x1, x0, LBB0_47
LBB0_46:                                //  %if.then96
                                        //    in Loop: Header=BB0_19 Depth=3
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 32
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	addi x1, x3, 1
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB0_19 ( x0 )
LBB0_47:                                //  %if.else
                                        //    in Loop: Header=BB0_19 Depth=3
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 16
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x3
	lw x10, 104 ( x2 )              //  4-byte Folded Reload
	jalr x0, LBB0_19 ( x0 )
LBB0_48:                                //  %sw.bb101
                                        //    in Loop: Header=BB0_19 Depth=3
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 32
	jalr x0, LBB0_25 ( x0 )
LBB0_49:                                //  %sw.bb103
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 252 ( x2 )
	addi x3, x0, 99
	sw x3, 112 ( x2 )               //  4-byte Folded Spill
	addi x3, x1, 4
	sw x3, 252 ( x2 )
	lw x1, 0 ( x1 )
	sb x0, 251 ( x2 )
	sb x1, 120 ( x2 )
	jalr x0, LBB0_226 ( x0 )
LBB0_50:                                //  %sw.bb107
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 68
	sw x1, 112 ( x2 )               //  4-byte Folded Spill
	lw x7, 92 ( x2 )                //  4-byte Folded Reload
	nop
	ori x7, x7, 16
	jalr x0, LBB0_52 ( x0 )
LBB0_51:                                //  %sw.bb109.loopexit
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x7, 92 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_52:                                //  %sw.bb109
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x1, x7, 32
	beqz x1, LBB0_54
LBB0_53:                                //  %cond.true112
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 252 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 252 ( x2 )
	lw x8, 0 ( x1 )
	addi x1, x3, 4
	sw x1, 252 ( x2 )
	lw x11, 0 ( x3 )
	lw x12, 80 ( x2 )               //  4-byte Folded Reload
	lw x9, 88 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_59 ( x0 )
LBB0_54:                                //  %cond.false114
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x1, x7, 16
	lw x12, 80 ( x2 )               //  4-byte Folded Reload
	lw x9, 88 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB0_56
LBB0_55:                                //  %cond.true117
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 252 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 252 ( x2 )
	lw x8, 0 ( x1 )
	jalr x0, LBB0_58 ( x0 )
LBB0_56:                                //  %cond.false119
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 252 ( x2 )
	andi x3, x7, 64
	addi x4, x1, 4
	sw x4, 252 ( x2 )
	lw x8, 0 ( x1 )
	beqz x3, LBB0_58
LBB0_57:                                //  %cond.true122
                                        //    in Loop: Header=BB0_6 Depth=1
	slli x1, x8, 16
	srai x8, x1, 16
LBB0_58:                                //  %cond.end139
                                        //    in Loop: Header=BB0_6 Depth=1
	srai x11, x8, 31
LBB0_59:                                //  %cond.end142
                                        //    in Loop: Header=BB0_6 Depth=1
	bgt x0, x11, LBB0_61
LBB0_60:                                //    in Loop: Header=BB0_6 Depth=1
	slti x1, x0, 1
	jalr x0, LBB0_196 ( x0 )
LBB0_61:                                //  %if.then146
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 45
	add x3, x0, x0
	sb x1, 251 ( x2 )
	slti x1, x0, 1
	add x4, x0, x1
	bne x8, x3, LBB0_63
LBB0_62:                                //  %if.then146
                                        //    in Loop: Header=BB0_6 Depth=1
	add x4, x0, x3
LBB0_63:                                //  %if.then146
                                        //    in Loop: Header=BB0_6 Depth=1
	sub x3, x0, x11
	sub x11, x3, x4
	sub x8, x0, x8
	jalr x0, LBB0_196 ( x0 )
LBB0_64:                                //  %sw.bb149
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 252 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 252 ( x2 )
	lw x10, 0 ( x1 )
	nop
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	addi x1, x3, 4
	sw x1, 252 ( x2 )
	lw x8, 0 ( x3 )
	nop
	add x11, x0, x8
	call $__fpclassifyd
	xori x1, x10, 1
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB0_70
LBB0_65:                                //  %if.then163
                                        //    in Loop: Header=BB0_6 Depth=1
	add x12, x0, x0
	add x11, x0, x8
	add x8, x0, x12
	add x13, x0, x12
	call $__ltdf2
	bgez x10, LBB0_67
LBB0_66:                                //  %if.then167
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 45
	sb x1, 251 ( x2 )
LBB0_67:                                //  %if.end168
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.1 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x3, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 72
	or x3, x3, x28
	sw x3, 84 ( x2 )                //  4-byte Folded Spill
	addi x7, x2, 224
	addi x5, x0, 16
	lw x12, 80 ( x2 )               //  4-byte Folded Reload
	lw x3, 112 ( x2 )               //  4-byte Folded Reload
	nop
	bgt x4, x3, LBB0_69
LBB0_68:                                //  %if.end168
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
LBB0_69:                                //  %if.end168
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x10, x0, 3
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
	nop
	andi x11, x11, -129
	add x13, x0, x8
	jalr x0, LBB0_228 ( x0 )
LBB0_70:                                //  %if.end175
                                        //    in Loop: Header=BB0_6 Depth=1
	add x11, x0, x8
	call $__fpclassifyd
	bgtu x10, x0, LBB0_74
LBB0_71:                                //  %if.then180
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $.str.3 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.3 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	ori x28, x0, $.str.2 & 0xfff
	slli x28, x28, 20
	lui x3, $.str.2 >> 12 & 0xfffff
	srli x28, x28, 20
	addi x4, x0, 72
	or x3, x3, x28
	sw x3, 84 ( x2 )                //  4-byte Folded Spill
	addi x7, x2, 224
	addi x5, x0, 16
	lw x3, 112 ( x2 )               //  4-byte Folded Reload
	nop
	bgt x4, x3, LBB0_73
LBB0_72:                                //  %if.then180
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
LBB0_73:                                //  %if.then180
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x10, x0, 3
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
	nop
	andi x11, x11, -129
	add x8, x0, x0
	add x13, x0, x8
	lw x12, 80 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_228 ( x0 )
LBB0_74:                                //  %if.end187
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	xori x1, x1, -1
	lw x3, 112 ( x2 )               //  4-byte Folded Reload
	nop
	ori x4, x3, 32
	sw x4, 72 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB0_76
LBB0_75:                                //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 6
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	lw x13, 44 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_81 ( x0 )
LBB0_76:                                //  %if.else191
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 103
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	lw x13, 44 ( x2 )               //  4-byte Folded Reload
	bne x4, x1, LBB0_78
LBB0_77:                                //    in Loop: Header=BB0_6 Depth=1
	slti x1, x0, 1
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_79 ( x0 )
LBB0_78:                                //  %if.else191
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 64 ( x2 )                //  4-byte Folded Spill
LBB0_79:                                //  %if.else191
                                        //    in Loop: Header=BB0_6 Depth=1
	add x1, x0, x0
	beq x3, x1, LBB0_81
LBB0_80:                                //  %if.else191
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x3, 64 ( x2 )                //  4-byte Folded Spill
LBB0_81:                                //  %if.end201
                                        //    in Loop: Header=BB0_6 Depth=1
	add x8, x0, x0
	lui x1, -2147483648 >> 12 & 0xfffff
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x11, x1, x28
	add x10, x0, x8
	call $__subdf3
	add x5, x0, x10
	add x7, x0, x11
	addi x1, x0, 102
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	nop
	bne x4, x1, LBB0_83
LBB0_82:                                //    in Loop: Header=BB0_6 Depth=1
	addi x13, x0, 3
	jalr x0, LBB0_84 ( x0 )
LBB0_83:                                //  %if.end201
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x13, x0, 2
LBB0_84:                                //  %if.end201
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x8, x3, LBB0_86
LBB0_85:                                //  %if.end201
                                        //    in Loop: Header=BB0_6 Depth=1
	add x5, x0, x1
LBB0_86:                                //  %if.end201
                                        //    in Loop: Header=BB0_6 Depth=1
	bgt x8, x3, LBB0_88
LBB0_87:                                //  %if.end201
                                        //    in Loop: Header=BB0_6 Depth=1
	add x7, x0, x3
LBB0_88:                                //  %if.end201
                                        //    in Loop: Header=BB0_6 Depth=1
	xori x1, x4, 101
	seqz x1, x1
	andi x1, x1, 1
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	add x14, x1, x3
	addi x15, x2, 244
	addi x16, x2, 260
	addi x17, x2, 256
	sw x5, 88 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x5
	sw x7, 60 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x7
	sw x14, 40 ( x2 )               //  4-byte Folded Spill
	call $_dtoa_r
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	xori x4, x3, 103
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
	sw x10, 84 ( x2 )               //  4-byte Folded Spill
	bgtu x4, x0, LBB0_91
LBB0_89:                                //  %lor.lhs.false12.i
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x1, x11, 1
	bgtu x1, x0, LBB0_91
LBB0_90:                                //  %lor.lhs.false12.if.end35_crit_edge.i
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 256 ( x2 )
	addi x7, x2, 224
	addi x5, x0, 16
	lw x12, 80 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_104 ( x0 )
LBB0_91:                                //  %if.then15.i
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x5, x1, x10
	xori x1, x3, 102
	sw x4, 36 ( x2 )                //  4-byte Folded Spill
	sw x5, 56 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB0_97
LBB0_92:                                //  %if.then19.i
                                        //    in Loop: Header=BB0_6 Depth=1
	add x12, x0, x0
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x12
	call $__eqdf2
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB0_94
LBB0_93:                                //  %if.then19.i
                                        //    in Loop: Header=BB0_6 Depth=1
	lb x1, 0 ( x1 )
	nop
	andi x1, x1, 255
	xori x1, x1, 48
	beqz x1, LBB0_95
LBB0_94:                                //  %if.then19.if.end26_crit_edge.i
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 244 ( x2 )
	jalr x0, LBB0_96 ( x0 )
LBB0_95:                                //  %if.then24.i
                                        //    in Loop: Header=BB0_6 Depth=1
	slti x1, x0, 1
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	sw x1, 244 ( x2 )
LBB0_96:                                //  %if.end26.i
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x1, x3
	sw x3, 56 ( x2 )                //  4-byte Folded Spill
LBB0_97:                                //  %if.end28.i
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	add x13, x0, x12
	call $__nedf2
	bgtu x10, x0, LBB0_99
LBB0_98:                                //  %while.cond.preheader.thread.i
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 256 ( x2 )
	addi x7, x2, 224
	addi x5, x0, 16
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
	lw x12, 80 ( x2 )               //  4-byte Folded Reload
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_104 ( x0 )
LBB0_99:                                //  %while.cond.preheader.i
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 256 ( x2 )
	addi x7, x2, 224
	addi x5, x0, 16
	lw x12, 80 ( x2 )               //  4-byte Folded Reload
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	lw x9, 56 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x9, x1, LBB0_101
LBB0_100:                               //    in Loop: Header=BB0_6 Depth=1
	add x3, x0, x1
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_104 ( x0 )
LBB0_101:                               //  %while.body.i.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
LBB0_102:                               //  %while.body.i
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	addi x3, x1, 1
	sw x3, 256 ( x2 )
	addi x3, x0, 48
	sb x3, 0 ( x1 )
	lw x1, 256 ( x2 )
	nop
	bgtu x9, x1, LBB0_102
LBB0_103:                               //  %if.end35.loopexit.i
                                        //    in Loop: Header=BB0_6 Depth=1
	add x3, x0, x1
LBB0_104:                               //  %cvt.exit
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x3, x1
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
	bgtu x4, x0, LBB0_110
LBB0_105:                               //  %if.then210
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 112 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, -2
	sw x1, 112 ( x2 )               //  4-byte Folded Spill
	lw x13, 244 ( x2 )
	nop
	slti x1, x13, -3
	bgtu x1, x0, LBB0_110
LBB0_106:                               //  %if.then210
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x13, x1, LBB0_110
LBB0_107:                               //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 103
	sw x1, 112 ( x2 )               //  4-byte Folded Spill
LBB0_108:                               //  %if.else262
                                        //    in Loop: Header=BB0_6 Depth=1
	bgt x3, x13, LBB0_140
LBB0_109:                               //  %if.then265
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x1, x11, 1
	sub x1, x0, x1
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	and x1, x3, x1
	add x10, x1, x13
	jalr x0, LBB0_142 ( x0 )
LBB0_110:                               //  %if.end220
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 101
	lw x4, 112 ( x2 )               //  4-byte Folded Reload
	nop
	bgt x4, x1, LBB0_131
LBB0_111:                               //  %if.then223
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 244 ( x2 )
	slti x9, x0, 1
	ble x9, x3, LBB0_113
LBB0_112:                               //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 45
	jalr x0, LBB0_114 ( x0 )
LBB0_113:                               //  %if.then223
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 43
LBB0_114:                               //  %if.then223
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x4, x3, -1
	ble x9, x3, LBB0_116
LBB0_115:                               //    in Loop: Header=BB0_6 Depth=1
	sub x10, x9, x3
	jalr x0, LBB0_117 ( x0 )
LBB0_116:                               //  %if.then223
                                        //    in Loop: Header=BB0_6 Depth=1
	add x10, x0, x4
LBB0_117:                               //  %if.then223
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x4, 244 ( x2 )
	lw x3, 112 ( x2 )               //  4-byte Folded Reload
	nop
	sb x3, 237 ( x2 )
	sb x1, 238 ( x2 )
	slti x1, x10, 10
	beqz x1, LBB0_408
LBB0_407:                               //  %if.then223
                                        //    in Loop: Header=BB0_6 Depth=1
	jalr x0, LBB0_401 ( x0 )
LBB0_408:                               //  %if.then223
                                        //    in Loop: Header=BB0_6 Depth=1
LBB0_118:                               //  %do.body.i.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	add x14, x0, x0
LBB0_119:                               //  %do.body.i
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x8, x0, x14
	sw x10, 88 ( x2 )               //  4-byte Folded Spill
	addi x11, x0, 10
	call $__modsi3
	sw x8, 64 ( x2 )                //  4-byte Folded Spill
	addi x3, x8, -1
	sw x3, 72 ( x2 )                //  4-byte Folded Spill
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x3, x1
	addi x8, x10, 48
	sb x8, 0 ( x1 )
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	addi x11, x0, 10
	call $__divsi3
	lw x14, 72 ( x2 )               //  4-byte Folded Reload
	addi x1, x0, 99
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x3, x1, LBB0_119
LBB0_120:                               //  %do.end.i
                                        //    in Loop: Header=BB0_6 Depth=1
	add x15, x0, x8
	lw x13, 64 ( x2 )               //  4-byte Folded Reload
	nop
	addi x3, x13, -2
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x3, x1
	addi x4, x10, 48
	sb x4, 0 ( x1 )
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	addi x7, x2, 224
	addi x9, x2, 268
	addi x5, x0, 16
	lw x12, 80 ( x2 )               //  4-byte Folded Reload
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x0
	slti x10, x0, 1
	bgt x13, x10, LBB0_126
LBB0_121:                               //  %for.inc.i.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	sb x4, 239 ( x2 )
	addi x4, x0, -2
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	bgt x3, x4, LBB0_126
LBB0_122:                               //  %for.inc.for.inc_crit_edge.i.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	sb x15, 240 ( x2 )
	sub x1, x10, x13
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x1, x3
	sub x1, x0, x13
	addi x10, x2, 241
	beq x3, x10, LBB0_125
LBB0_123:                               //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	add x3, x0, x0
LBB0_124:                               //  %for.inc.for.inc_crit_edge.i.for.inc.for.inc_crit_edge.i_crit_edge
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x4, x3, x9
	add x4, x14, x4
	add x5, x3, x10
	lb x4, 0 ( x4 )
	nop
	sb x4, 0 ( x5 )
	addi x3, x3, 1
	add x4, x3, x13
	bgtu x4, x0, LBB0_124
LBB0_125:                               //  %exponent.exit.loopexit
                                        //    in Loop: Header=BB0_6 Depth=1
	add x1, x1, x10
	addi x5, x0, 16
LBB0_126:                               //  %exponent.exit
                                        //    in Loop: Header=BB0_6 Depth=1
	add x13, x0, x0
	addi x4, x0, 2
	add x3, x0, x13
	lw x9, 40 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x4, x9, LBB0_128
LBB0_127:                               //  %exponent.exit
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
LBB0_128:                               //  %exponent.exit
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x4, x11, 1
	beq x4, x13, LBB0_130
LBB0_129:                               //  %exponent.exit
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
LBB0_130:                               //  %exponent.exit
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x4, x3
	addi x4, x2, 237
	sub x1, x1, x4
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	add x10, x1, x3
	jalr x0, LBB0_142 ( x0 )
LBB0_131:                               //  %if.else235
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x13, 244 ( x2 )
	xori x1, x4, 102
	bgtu x1, x0, LBB0_108
LBB0_132:                               //  %if.then238
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x1, x11, 1
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	nop
	or x1, x1, x4
	ble x13, x0, LBB0_136
LBB0_133:                               //  %if.then241
                                        //    in Loop: Header=BB0_6 Depth=1
	bgtu x1, x0, LBB0_135
LBB0_134:                               //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 102
	sw x1, 112 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x13
	jalr x0, LBB0_142 ( x0 )
LBB0_135:                               //  %if.then246
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	add x10, x13, x1
	jalr x0, LBB0_139 ( x0 )
LBB0_136:                               //  %if.else250
                                        //    in Loop: Header=BB0_6 Depth=1
	add x3, x0, x0
	bne x1, x3, LBB0_138
LBB0_137:                               //    in Loop: Header=BB0_6 Depth=1
	slti x10, x0, 1
	jalr x0, LBB0_139 ( x0 )
LBB0_138:                               //  %if.else250
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x3, x1
LBB0_139:                               //  %if.else250
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 102
	sw x1, 112 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB0_142 ( x0 )
LBB0_140:                               //  %if.else271
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x1, x3
	bgt x13, x0, LBB0_142
LBB0_141:                               //  %if.then275
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x10, 1
	sub x10, x1, x13
LBB0_142:                               //  %if.end281
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x11, x11, 256
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	bgez x1, LBB0_228
LBB0_143:                               //  %if.then283
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 45
	sb x1, 251 ( x2 )
	jalr x0, LBB0_228 ( x0 )
LBB0_144:                               //  %sw.bb285
                                        //    in Loop: Header=BB0_7 Depth=2
	lw x3, 92 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 32
	beqz x1, LBB0_146
LBB0_145:                               //  %if.then288
                                        //    in Loop: Header=BB0_7 Depth=2
	lw x1, 252 ( x2 )
	lw x5, 76 ( x2 )                //  4-byte Folded Reload
	nop
	srai x3, x5, 31
	addi x4, x1, 4
	sw x4, 252 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x3, 4 ( x1 )
	sw x5, 0 ( x1 )
	addi x7, x2, 224
	jalr x0, LBB0_148 ( x0 )
LBB0_146:                               //  %if.else291
                                        //    in Loop: Header=BB0_7 Depth=2
	andi x1, x3, 16
	lw x4, 76 ( x2 )                //  4-byte Folded Reload
	addi x7, x2, 224
	beqz x1, LBB0_149
LBB0_147:                               //  %if.then294
                                        //    in Loop: Header=BB0_7 Depth=2
	lw x1, 252 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 252 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x4, 0 ( x1 )
LBB0_148:                               //  %for.cond
                                        //    in Loop: Header=BB0_7 Depth=2
	lw x5, 108 ( x2 )               //  4-byte Folded Reload
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_7 ( x0 )
LBB0_149:                               //  %if.else296
                                        //    in Loop: Header=BB0_7 Depth=2
	andi x1, x3, 64
	lw x5, 108 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB0_151
LBB0_150:                               //  %if.then299
                                        //    in Loop: Header=BB0_7 Depth=2
	lw x1, 252 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 252 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sh x4, 0 ( x1 )
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_7 ( x0 )
LBB0_151:                               //  %if.else302
                                        //    in Loop: Header=BB0_7 Depth=2
	lw x1, 252 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 252 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x4, 0 ( x1 )
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_7 ( x0 )
LBB0_152:                               //  %sw.bb307
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 79
	sw x1, 112 ( x2 )               //  4-byte Folded Spill
	lw x7, 92 ( x2 )                //  4-byte Folded Reload
	nop
	ori x7, x7, 16
	jalr x0, LBB0_154 ( x0 )
LBB0_153:                               //  %sw.bb309.loopexit
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 111
	sw x1, 112 ( x2 )               //  4-byte Folded Spill
	lw x7, 92 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_154:                               //  %sw.bb309
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x1, x7, 32
	lw x12, 80 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB0_157
LBB0_155:                               //  %cond.true312
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 252 ( x2 )
	add x1, x0, x0
LBB0_156:                               //  %nosign
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x4, x3, 4
	sw x4, 252 ( x2 )
	lw x8, 0 ( x3 )
	addi x3, x4, 4
	sw x3, 252 ( x2 )
	lw x11, 0 ( x4 )
	lw x9, 88 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_195 ( x0 )
LBB0_157:                               //  %cond.false314
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x1, x7, 16
	lw x9, 88 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB0_159
LBB0_158:                               //  %cond.true317
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 252 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 252 ( x2 )
	lw x8, 0 ( x1 )
	jalr x0, LBB0_161 ( x0 )
LBB0_159:                               //  %cond.false319
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 252 ( x2 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	addi x4, x1, 4
	sw x4, 252 ( x2 )
	srli x28, x28, 20
	andi x4, x7, 64
	add x5, x0, x0
	lw x8, 0 ( x1 )
	or x1, x3, x28
	beq x4, x5, LBB0_161
LBB0_160:                               //  %cond.false319
                                        //    in Loop: Header=BB0_6 Depth=1
	and x8, x1, x8
LBB0_161:                               //  %cond.end339
                                        //    in Loop: Header=BB0_6 Depth=1
	add x11, x0, x0
	add x1, x0, x11
	jalr x0, LBB0_195 ( x0 )
LBB0_162:                               //  %sw.bb344
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 252 ( x2 )
	ori x28, x0, $.str.4 & 0xfff
	slli x28, x28, 20
	addi x3, x0, 48
	addi x4, x1, 4
	sw x4, 252 ( x2 )
	lui x4, $.str.4 >> 12 & 0xfffff
	srli x28, x28, 20
	lw x8, 0 ( x1 )
	sb x3, 118 ( x2 )
	add x11, x0, x0
	addi x1, x0, 120
	sb x1, 119 ( x2 )
	or x12, x4, x28
	lw x7, 92 ( x2 )                //  4-byte Folded Reload
	nop
	ori x7, x7, 2
	sw x1, 112 ( x2 )               //  4-byte Folded Spill
	addi x1, x0, 2
	lw x9, 88 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_195 ( x0 )
LBB0_163:                               //  %sw.bb349
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 252 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 252 ( x2 )
	lw x10, 0 ( x1 )
	sb x0, 251 ( x2 )
	bgtu x10, x0, LBB0_167
LBB0_164:                               //  %if.then353
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 6
	lw x12, 80 ( x2 )               //  4-byte Folded Reload
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x3, LBB0_166
LBB0_165:                               //  %if.then353
                                        //    in Loop: Header=BB0_6 Depth=1
	add x3, x0, x1
LBB0_166:                               //  %if.then353
                                        //    in Loop: Header=BB0_6 Depth=1
	add x10, x0, x3
	addi x1, x0, 115
	sw x1, 112 ( x2 )               //  4-byte Folded Spill
	lui x1, $.str.5 >> 12 & 0xfffff
	ori x28, x0, $.str.5 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x0
	add x13, x0, x8
	addi x7, x2, 224
	addi x5, x0, 16
	jalr x0, LBB0_227 ( x0 )
LBB0_167:                               //  %if.else360
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x8, 88 ( x2 )                //  4-byte Folded Reload
	sw x10, 84 ( x2 )               //  4-byte Folded Spill
	bgt x0, x8, LBB0_172
LBB0_168:                               //  %if.then363
                                        //    in Loop: Header=BB0_6 Depth=1
	add x11, x0, x0
	add x12, x0, x8
	call $memchr
	add x1, x0, x0
	add x3, x0, x1
	beq x10, x1, LBB0_170
LBB0_169:                               //  %if.then363
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x10, x1
LBB0_170:                               //  %if.then363
                                        //    in Loop: Header=BB0_6 Depth=1
	add x10, x0, x8
	addi x1, x0, 115
	sw x1, 112 ( x2 )               //  4-byte Folded Spill
	add x13, x0, x3
	add x8, x0, x13
LBB0_171:                               //  %sw.epilog542
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x7, x2, 224
	addi x5, x0, 16
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
	lw x12, 80 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_228 ( x0 )
LBB0_172:                               //  %if.else373
                                        //    in Loop: Header=BB0_6 Depth=1
	call $strlen
	addi x1, x0, 115
	sw x1, 112 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x0
	add x13, x0, x8
	jalr x0, LBB0_171 ( x0 )
LBB0_173:                               //  %sw.bb377
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 85
	sw x1, 112 ( x2 )               //  4-byte Folded Spill
	lw x7, 92 ( x2 )                //  4-byte Folded Reload
	nop
	ori x7, x7, 16
	jalr x0, LBB0_175 ( x0 )
LBB0_174:                               //  %sw.bb379.loopexit
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 117
	sw x1, 112 ( x2 )               //  4-byte Folded Spill
	lw x7, 92 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_175:                               //  %sw.bb379
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x1, x7, 32
	lw x12, 80 ( x2 )               //  4-byte Folded Reload
	beqz x1, LBB0_177
LBB0_176:                               //  %cond.true382
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 252 ( x2 )
	slti x1, x0, 1
	jalr x0, LBB0_156 ( x0 )
LBB0_177:                               //  %cond.false384
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x1, x7, 16
	lw x9, 88 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB0_179
LBB0_178:                               //  %cond.true387
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 252 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 252 ( x2 )
	lw x8, 0 ( x1 )
	jalr x0, LBB0_181 ( x0 )
LBB0_179:                               //  %cond.false389
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 252 ( x2 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	addi x4, x1, 4
	sw x4, 252 ( x2 )
	srli x28, x28, 20
	andi x4, x7, 64
	add x5, x0, x0
	lw x8, 0 ( x1 )
	or x1, x3, x28
	beq x4, x5, LBB0_181
LBB0_180:                               //  %cond.false389
                                        //    in Loop: Header=BB0_6 Depth=1
	and x8, x1, x8
LBB0_181:                               //  %cond.end409
                                        //    in Loop: Header=BB0_6 Depth=1
	add x11, x0, x0
	slti x1, x0, 1
	jalr x0, LBB0_195 ( x0 )
LBB0_182:                               //  %hex.loopexit2773
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $.str.4 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.4 >> 12 & 0xfffff
	jalr x0, LBB0_184 ( x0 )
LBB0_183:                               //  %hex.loopexit
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $.str.6 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.6 >> 12 & 0xfffff
LBB0_184:                               //  %hex
                                        //    in Loop: Header=BB0_6 Depth=1
	srli x28, x28, 20
	or x12, x1, x28
	lw x7, 92 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x7, 32
	beqz x1, LBB0_186
LBB0_185:                               //  %cond.true418
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 252 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 252 ( x2 )
	lw x8, 0 ( x1 )
	addi x1, x3, 4
	sw x1, 252 ( x2 )
	lw x11, 0 ( x3 )
	lw x9, 88 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_191 ( x0 )
LBB0_186:                               //  %cond.false420
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x1, x7, 16
	beqz x1, LBB0_188
LBB0_187:                               //  %cond.true423
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 252 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 252 ( x2 )
	lw x8, 0 ( x1 )
	jalr x0, LBB0_190 ( x0 )
LBB0_188:                               //  %cond.false425
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 252 ( x2 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	addi x4, x1, 4
	sw x4, 252 ( x2 )
	srli x28, x28, 20
	andi x4, x7, 64
	add x5, x0, x0
	lw x8, 0 ( x1 )
	or x1, x3, x28
	beq x4, x5, LBB0_190
LBB0_189:                               //  %cond.false425
                                        //    in Loop: Header=BB0_6 Depth=1
	and x8, x1, x8
LBB0_190:                               //  %cond.false425
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x9, 88 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x0
LBB0_191:                               //  %cond.end448
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x1, x7, 1
	beqz x1, LBB0_194
LBB0_192:                               //  %cond.end448
                                        //    in Loop: Header=BB0_6 Depth=1
	or x1, x11, x8
	beqz x1, LBB0_194
LBB0_193:                               //  %if.then455
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 48
	sb x1, 118 ( x2 )
	lw x1, 112 ( x2 )               //  4-byte Folded Reload
	nop
	sb x1, 119 ( x2 )
	ori x7, x7, 2
LBB0_194:                               //  %nosign
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 2
LBB0_195:                               //  %nosign
                                        //    in Loop: Header=BB0_6 Depth=1
	sb x0, 251 ( x2 )
LBB0_196:                               //  %number
                                        //    in Loop: Header=BB0_6 Depth=1
	not x3, x0
	ble x9, x3, LBB0_198
LBB0_197:                               //    in Loop: Header=BB0_6 Depth=1
	andi x7, x7, -129
LBB0_198:                               //  %number
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x7, 92 ( x2 )                //  4-byte Folded Spill
	bgtu x9, x0, LBB0_200
LBB0_199:                               //  %number
                                        //    in Loop: Header=BB0_6 Depth=1
	or x3, x11, x8
	beqz x3, LBB0_218
LBB0_200:                               //  %if.then473
                                        //    in Loop: Header=BB0_6 Depth=1
	beqz x1, LBB0_204
LBB0_201:                               //  %if.then473
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x1, x1, 255
	xori x3, x1, 1
	sw x12, 80 ( x2 )               //  4-byte Folded Spill
	beqz x3, LBB0_209
LBB0_202:                               //  %if.then473
                                        //    in Loop: Header=BB0_6 Depth=1
	xori x1, x1, 2
	lw x5, 52 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB0_217
LBB0_203:                               //  %do.body510
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	andi x1, x8, 15
	add x1, x1, x12
	lb x1, 0 ( x1 )
	nop
	sb x1, -1 ( x5 )
	srli x1, x8, 4
	slli x3, x11, 28
	or x8, x3, x1
	addi x5, x5, -1
	srli x11, x11, 4
	or x1, x11, x8
	bgtu x1, x0, LBB0_203
	jalr x0, LBB0_223 ( x0 )
LBB0_204:                               //  %do.body476.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x2, 159
LBB0_205:                               //  %do.body476
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	srli x3, x8, 3
	slli x4, x11, 29
	or x4, x4, x3
	andi x3, x8, 7
	ori x3, x3, 48
	sb x3, 0 ( x1 )
	addi x1, x1, -1
	srli x11, x11, 3
	or x5, x11, x4
	add x8, x0, x4
	bgtu x5, x0, LBB0_205
LBB0_206:                               //  %do.end483
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x5, x1, 1
	andi x4, x7, 1
	beqz x4, LBB0_223
LBB0_207:                               //  %do.end483
                                        //    in Loop: Header=BB0_6 Depth=1
	xori x3, x3, 48
	beqz x3, LBB0_223
LBB0_208:                               //  %if.then490
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x3, x0, 48
	sb x3, 0 ( x1 )
	jalr x0, LBB0_222 ( x0 )
LBB0_209:                               //  %sw.bb493
                                        //    in Loop: Header=BB0_6 Depth=1
	add x1, x0, x0
	bne x11, x1, LBB0_211
LBB0_210:                               //    in Loop: Header=BB0_6 Depth=1
	sltiu x1, x8, 10
LBB0_211:                               //  %sw.bb493
                                        //    in Loop: Header=BB0_6 Depth=1
	beqz x1, LBB0_410
LBB0_409:                               //  %sw.bb493
                                        //    in Loop: Header=BB0_6 Depth=1
	jalr x0, LBB0_402 ( x0 )
LBB0_410:                               //  %sw.bb493
                                        //    in Loop: Header=BB0_6 Depth=1
LBB0_212:                               //    in Loop: Header=BB0_6 Depth=1
	lw x5, 52 ( x2 )                //  4-byte Folded Reload
LBB0_213:                               //  %do.body501
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x11, 72 ( x2 )               //  4-byte Folded Spill
	sw x5, 84 ( x2 )                //  4-byte Folded Spill
	addi x12, x0, 10
	add x13, x0, x0
	add x10, x0, x8
	call $__umoddi3
	sw x10, 64 ( x2 )               //  4-byte Folded Spill
	sw x8, 60 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	addi x12, x0, 10
	add x13, x0, x0
	call $__udivdi3
	lw x8, 72 ( x2 )                //  4-byte Folded Reload
	add x1, x0, x0
	bne x8, x1, LBB0_215
LBB0_214:                               //    in Loop: Header=BB0_213 Depth=2
	addi x1, x0, 9
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sltu x1, x1, x3
	jalr x0, LBB0_216 ( x0 )
LBB0_215:                               //  %do.body501
                                        //    in Loop: Header=BB0_213 Depth=2
	sltu x1, x0, x8
LBB0_216:                               //  %do.body501
                                        //    in Loop: Header=BB0_213 Depth=2
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	ori x3, x3, 48
	sb x3, -1 ( x5 )
	addi x5, x5, -1
	add x8, x0, x10
	lw x12, 80 ( x2 )               //  4-byte Folded Reload
	bgtu x1, x0, LBB0_213
	jalr x0, LBB0_223 ( x0 )
LBB0_217:                               //  %sw.default
                                        //    in Loop: Header=BB0_6 Depth=1
	lui x1, $.str.7 >> 12 & 0xfffff
	ori x28, x0, $.str.7 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x1, x28
	sw x10, 84 ( x2 )               //  4-byte Folded Spill
	call $strlen
	lw x12, 80 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_224 ( x0 )
LBB0_218:                               //  %if.else519
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x1, x1, 255
	lw x5, 52 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB0_223
LBB0_219:                               //  %if.else519
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 1
	lw x5, 52 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB0_223
LBB0_220:                               //  %if.then526
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 48
LBB0_221:                               //  %if.end529
                                        //    in Loop: Header=BB0_6 Depth=1
	sb x1, 159 ( x2 )
	addi x1, x2, 159
LBB0_222:                               //  %if.end529
                                        //    in Loop: Header=BB0_6 Depth=1
	add x5, x0, x1
LBB0_223:                               //  %if.end529
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	sw x5, 84 ( x2 )                //  4-byte Folded Spill
	sub x10, x1, x5
LBB0_224:                               //  %sw.epilog542
                                        //    in Loop: Header=BB0_6 Depth=1
	add x1, x0, x0
	add x13, x0, x1
	addi x7, x2, 224
	addi x5, x0, 16
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
	lw x8, 88 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_228 ( x0 )
LBB0_225:                               //  %if.end539
                                        //    in Loop: Header=BB0_6 Depth=1
	sb x3, 120 ( x2 )
	sb x0, 251 ( x2 )
LBB0_226:                               //  %sw.epilog542
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x2, 120
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x0
	add x13, x0, x8
	slti x1, x0, 1
	add x10, x0, x1
	addi x7, x2, 224
	addi x5, x0, 16
	lw x12, 80 ( x2 )               //  4-byte Folded Reload
LBB0_227:                               //  %sw.epilog542
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
LBB0_228:                               //  %sw.epilog542
                                        //    in Loop: Header=BB0_6 Depth=1
	add x1, x0, x8
	bgt x8, x10, LBB0_230
LBB0_229:                               //  %sw.epilog542
                                        //    in Loop: Header=BB0_6 Depth=1
	add x1, x0, x10
LBB0_230:                               //  %sw.epilog542
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x10, 64 ( x2 )               //  4-byte Folded Spill
	sw x8, 88 ( x2 )                //  4-byte Folded Spill
	sw x12, 80 ( x2 )               //  4-byte Folded Spill
	lbu x3, 251 ( x2 )
	nop
	sltu x3, x0, x3
	andi x3, x3, 1
	add x3, x1, x3
	andi x8, x11, 2
	srli x1, x8, 1
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB0_232
LBB0_231:                               //    in Loop: Header=BB0_6 Depth=1
	addi x3, x3, 2
LBB0_232:                               //  %sw.epilog542
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x9, x11, 132
	sw x11, 92 ( x2 )               //  4-byte Folded Spill
	sw x13, 36 ( x2 )               //  4-byte Folded Spill
	sw x3, 72 ( x2 )                //  4-byte Folded Spill
	sw x9, 56 ( x2 )                //  4-byte Folded Spill
	sw x8, 60 ( x2 )                //  4-byte Folded Spill
	bgtu x9, x0, LBB0_242
LBB0_233:                               //  %if.then561
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	nop
	sub x11, x1, x3
	ble x11, x0, LBB0_242
LBB0_234:                               //  %while.cond566.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $_svfprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfprintf_r.blanks >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	slti x3, x11, 17
	bgtu x3, x0, LBB0_239
LBB0_235:                               //  %while.body569
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x5, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 16
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_237
LBB0_236:                               //    in Loop: Header=BB0_235 Depth=2
	addi x4, x4, 8
	jalr x0, LBB0_238 ( x0 )
LBB0_237:                               //  %if.then579
                                        //    in Loop: Header=BB0_235 Depth=2
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x11
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__ssprint_r
	add x11, x0, x8
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	beqz x10, LBB0_412
LBB0_411:                               //  %if.then579
                                        //    in Loop: Header=BB0_235 Depth=2
	jalr x0, LBB0_397 ( x0 )
LBB0_412:                               //  %if.then579
                                        //    in Loop: Header=BB0_235 Depth=2
LBB0_238:                               //  %if.end585
                                        //    in Loop: Header=BB0_235 Depth=2
	ori x28, x0, $_svfprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfprintf_r.blanks >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	addi x11, x11, -16
	bgt x11, x5, LBB0_235
LBB0_239:                               //  %while.end587
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x11, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	add x1, x11, x1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_241
LBB0_240:                               //    in Loop: Header=BB0_6 Depth=1
	addi x4, x4, 8
	jalr x0, LBB0_242 ( x0 )
LBB0_241:                               //  %if.then597
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__ssprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	beqz x10, LBB0_414
LBB0_413:                               //  %if.then597
                                        //    in Loop: Header=BB0_6 Depth=1
	jalr x0, LBB0_397 ( x0 )
LBB0_414:                               //  %if.then597
                                        //    in Loop: Header=BB0_6 Depth=1
LBB0_242:                               //  %if.end605
                                        //    in Loop: Header=BB0_6 Depth=1
	lbu x1, 251 ( x2 )
	nop
	beqz x1, LBB0_246
LBB0_243:                               //  %if.then607
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x2, 251
	sw x1, 0 ( x4 )
	slti x1, x0, 1
	sw x1, 4 ( x4 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_245
LBB0_244:                               //    in Loop: Header=BB0_6 Depth=1
	addi x4, x4, 8
	jalr x0, LBB0_246 ( x0 )
LBB0_245:                               //  %if.then617
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__ssprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	bgtu x10, x0, LBB0_397
LBB0_246:                               //  %if.end624
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_250
LBB0_247:                               //  %if.then627
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x2, 118
	sw x1, 0 ( x4 )
	addi x1, x0, 2
	sw x1, 4 ( x4 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 2
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_249
LBB0_248:                               //    in Loop: Header=BB0_6 Depth=1
	addi x4, x4, 8
	jalr x0, LBB0_250 ( x0 )
LBB0_249:                               //  %if.then638
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__ssprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	bgtu x10, x0, LBB0_397
LBB0_250:                               //  %if.end645
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	xori x1, x1, 128
	bgtu x1, x0, LBB0_260
LBB0_251:                               //  %if.then649
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x1, x3
	ble x8, x0, LBB0_260
LBB0_252:                               //  %while.cond654.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $_svfprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	slti x3, x8, 17
	bgtu x3, x0, LBB0_257
LBB0_253:                               //  %while.body657
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x5, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 16
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_255
LBB0_254:                               //    in Loop: Header=BB0_253 Depth=2
	addi x4, x4, 8
	jalr x0, LBB0_256 ( x0 )
LBB0_255:                               //  %if.then667
                                        //    in Loop: Header=BB0_253 Depth=2
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__ssprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	bgtu x10, x0, LBB0_397
LBB0_256:                               //  %if.end673
                                        //    in Loop: Header=BB0_253 Depth=2
	ori x28, x0, $_svfprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	addi x8, x8, -16
	bgt x8, x5, LBB0_253
LBB0_257:                               //  %while.end675
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x8, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	add x1, x8, x1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_259
LBB0_258:                               //    in Loop: Header=BB0_6 Depth=1
	addi x4, x4, 8
	jalr x0, LBB0_260 ( x0 )
LBB0_259:                               //  %if.then685
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__ssprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	bgtu x10, x0, LBB0_397
LBB0_260:                               //  %if.end693
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x1, x3
	ble x8, x0, LBB0_269
LBB0_261:                               //  %while.cond698.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $_svfprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	slti x3, x8, 17
	bgtu x3, x0, LBB0_266
LBB0_262:                               //  %while.body701
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x5, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 16
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_264
LBB0_263:                               //    in Loop: Header=BB0_262 Depth=2
	addi x4, x4, 8
	jalr x0, LBB0_265 ( x0 )
LBB0_264:                               //  %if.then711
                                        //    in Loop: Header=BB0_262 Depth=2
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__ssprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	bgtu x10, x0, LBB0_397
LBB0_265:                               //  %if.end717
                                        //    in Loop: Header=BB0_262 Depth=2
	ori x28, x0, $_svfprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	addi x8, x8, -16
	bgt x8, x5, LBB0_262
LBB0_266:                               //  %while.end719
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x8, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	add x1, x8, x1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_268
LBB0_267:                               //    in Loop: Header=BB0_6 Depth=1
	addi x4, x4, 8
	jalr x0, LBB0_269 ( x0 )
LBB0_268:                               //  %if.then729
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__ssprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	bgtu x10, x0, LBB0_397
LBB0_269:                               //  %if.end736
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 92 ( x2 )               //  4-byte Folded Reload
	nop
	andi x1, x10, 256
	bgtu x1, x0, LBB0_272
LBB0_270:                               //  %if.then740
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x4 )
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 4 ( x4 )
	lw x1, 8 ( x7 )
	nop
	add x1, x3, x1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_355
LBB0_271:                               //    in Loop: Header=BB0_6 Depth=1
	addi x4, x4, 8
	jalr x0, LBB0_380 ( x0 )
LBB0_272:                               //  %if.else757
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 112 ( x2 )               //  4-byte Folded Reload
	nop
	slti x1, x1, 102
	bgtu x1, x0, LBB0_356
LBB0_273:                               //  %if.then760
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x4, 68 ( x2 )                //  4-byte Folded Spill
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	add x13, x0, x12
	call $__nedf2
	bgtu x10, x0, LBB0_291
LBB0_274:                               //  %if.then764
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $.str.8 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.8 >> 12 & 0xfffff
	or x1, x1, x28
	lw x7, 68 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x7 )
	slti x1, x0, 1
	sw x1, 4 ( x7 )
	addi x4, x2, 224
	lw x1, 8 ( x4 )
	nop
	addi x1, x1, 1
	sw x1, 8 ( x4 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_276
LBB0_275:                               //    in Loop: Header=BB0_6 Depth=1
	addi x7, x7, 8
	addi x5, x0, 16
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	add x4, x0, x7
	jalr x0, LBB0_277 ( x0 )
LBB0_276:                               //  %if.then774
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x4
	call $__ssprint_r
	addi x1, x2, 160
	add x4, x0, x1
	addi x5, x0, 16
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_397
LBB0_277:                               //  %if.end780
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 1
	bgtu x1, x0, LBB0_280
LBB0_278:                               //  %if.end780
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 244 ( x2 )
	nop
	bgt x3, x1, LBB0_280
LBB0_279:                               //    in Loop: Header=BB0_6 Depth=1
	addi x7, x2, 224
	jalr x0, LBB0_380 ( x0 )
LBB0_280:                               //  %if.then786
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x4 )
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 4 ( x4 )
	addi x7, x2, 224
	lw x1, 8 ( x7 )
	nop
	add x1, x3, x1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_282
LBB0_281:                               //    in Loop: Header=BB0_6 Depth=1
	addi x4, x4, 8
	jalr x0, LBB0_283 ( x0 )
LBB0_282:                               //  %if.then796
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__ssprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	bgtu x10, x0, LBB0_397
LBB0_283:                               //  %if.end802
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	slti x1, x3, 2
	bgtu x1, x0, LBB0_380
LBB0_284:                               //  %while.cond807.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x8, x3, -1
	ori x28, x0, $_svfprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	slti x3, x8, 17
	bgtu x3, x0, LBB0_289
LBB0_285:                               //  %while.body810
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x5, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 16
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_287
LBB0_286:                               //    in Loop: Header=BB0_285 Depth=2
	addi x4, x4, 8
	jalr x0, LBB0_288 ( x0 )
LBB0_287:                               //  %if.then820
                                        //    in Loop: Header=BB0_285 Depth=2
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__ssprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	bgtu x10, x0, LBB0_397
LBB0_288:                               //  %if.end826
                                        //    in Loop: Header=BB0_285 Depth=2
	ori x28, x0, $_svfprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	addi x8, x8, -16
	bgt x8, x5, LBB0_285
LBB0_289:                               //  %while.end828
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x8, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	add x1, x8, x1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_355
LBB0_290:                               //    in Loop: Header=BB0_6 Depth=1
	addi x4, x4, 8
	jalr x0, LBB0_380 ( x0 )
LBB0_291:                               //  %if.else847
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 244 ( x2 )
	addi x7, x2, 224
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	bgt x3, x0, LBB0_314
LBB0_292:                               //  %if.then850
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $.str.8 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $.str.8 >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	slti x1, x0, 1
	sw x1, 4 ( x4 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	add x5, x0, x4
	addi x4, x1, 1
	sw x4, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_294
LBB0_293:                               //    in Loop: Header=BB0_6 Depth=1
	addi x5, x5, 8
	add x9, x0, x5
	jalr x0, LBB0_296 ( x0 )
LBB0_294:                               //  %if.then860
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x7
	call $__ssprint_r
	bgtu x10, x0, LBB0_397
LBB0_295:                               //  %if.then860.if.end866_crit_edge
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 244 ( x2 )
	addi x1, x2, 160
	add x9, x0, x1
	addi x7, x2, 224
LBB0_296:                               //  %if.end866
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x5, x0, 16
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 1
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	nop
	or x1, x4, x1
	or x1, x3, x1
	bgtu x1, x0, LBB0_298
LBB0_297:                               //    in Loop: Header=BB0_6 Depth=1
	add x4, x0, x9
	jalr x0, LBB0_380 ( x0 )
LBB0_298:                               //  %if.then873
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x9 )
	lw x4, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x4, 4 ( x9 )
	lw x1, 8 ( x7 )
	nop
	add x1, x4, x1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x4, x1, 1
	sw x4, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_300
LBB0_299:                               //    in Loop: Header=BB0_6 Depth=1
	addi x1, x9, 8
	jalr x0, LBB0_302 ( x0 )
LBB0_300:                               //  %if.then883
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x7
	call $__ssprint_r
	bgtu x10, x0, LBB0_397
LBB0_301:                               //  %if.then883.if.end889_crit_edge
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 244 ( x2 )
	addi x1, x2, 160
	addi x7, x2, 224
	addi x5, x0, 16
LBB0_302:                               //  %if.end889
                                        //    in Loop: Header=BB0_6 Depth=1
	bgt x0, x3, LBB0_304
LBB0_303:                               //    in Loop: Header=BB0_6 Depth=1
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_312 ( x0 )
LBB0_304:                               //  %while.cond894.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	sub x8, x0, x3
	ori x28, x0, $_svfprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, $_svfprintf_r.zeroes >> 12 & 0xfffff
	or x4, x4, x28
	sw x4, 0 ( x1 )
	addi x4, x1, 4
	addi x9, x0, -17
	bgt x3, x9, LBB0_309
LBB0_305:                               //  %while.body897
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x5, 0 ( x4 )
	lw x3, 8 ( x7 )
	nop
	addi x3, x3, 16
	sw x3, 8 ( x7 )
	lw x3, 228 ( x2 )
	nop
	addi x4, x3, 1
	sw x4, 228 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB0_307
LBB0_306:                               //    in Loop: Header=BB0_305 Depth=2
	addi x1, x1, 8
	jalr x0, LBB0_308 ( x0 )
LBB0_307:                               //  %if.then907
                                        //    in Loop: Header=BB0_305 Depth=2
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__ssprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	bgtu x10, x0, LBB0_397
LBB0_308:                               //  %if.end913
                                        //    in Loop: Header=BB0_305 Depth=2
	ori x28, x0, $_svfprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $_svfprintf_r.zeroes >> 12 & 0xfffff
	or x3, x3, x28
	sw x3, 0 ( x1 )
	addi x4, x1, 4
	addi x8, x8, -16
	bgt x8, x5, LBB0_305
LBB0_309:                               //  %while.end915
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x8, 0 ( x4 )
	lw x3, 8 ( x7 )
	nop
	add x3, x8, x3
	sw x3, 8 ( x7 )
	lw x3, 228 ( x2 )
	nop
	addi x4, x3, 1
	sw x4, 228 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB0_311
LBB0_310:                               //    in Loop: Header=BB0_6 Depth=1
	addi x1, x1, 8
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_312 ( x0 )
LBB0_311:                               //  %if.then925
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__ssprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_397
LBB0_312:                               //  %if.end932
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x4, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x4, 0 ( x1 )
	sw x3, 4 ( x1 )
	add x4, x0, x3
	lw x3, 8 ( x7 )
	nop
	add x3, x4, x3
	sw x3, 8 ( x7 )
	lw x3, 228 ( x2 )
	nop
	addi x4, x3, 1
	sw x4, 228 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB0_355
LBB0_313:                               //    in Loop: Header=BB0_6 Depth=1
	addi x4, x1, 8
	jalr x0, LBB0_380 ( x0 )
LBB0_314:                               //  %if.else950
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x8, x0, x3
	addi x5, x0, 16
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x1, x3, LBB0_316
LBB0_315:                               //  %if.else950
                                        //    in Loop: Header=BB0_6 Depth=1
	add x8, x0, x1
LBB0_316:                               //  %if.else950
                                        //    in Loop: Header=BB0_6 Depth=1
	ble x8, x0, LBB0_320
LBB0_317:                               //  %if.then962
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x4 )
	sw x8, 4 ( x4 )
	lw x1, 8 ( x7 )
	nop
	add x1, x8, x1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_319
LBB0_318:                               //    in Loop: Header=BB0_6 Depth=1
	addi x4, x4, 8
	jalr x0, LBB0_320 ( x0 )
LBB0_319:                               //  %if.then972
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__ssprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	bgtu x10, x0, LBB0_397
LBB0_320:                               //  %if.end979
                                        //    in Loop: Header=BB0_6 Depth=1
	add x1, x0, x0
	bgt x8, x1, LBB0_322
LBB0_321:                               //  %if.end979
                                        //    in Loop: Header=BB0_6 Depth=1
	add x8, x0, x1
LBB0_322:                               //  %if.end979
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x1, x8
	ble x8, x0, LBB0_331
LBB0_323:                               //  %while.cond990.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $_svfprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	slti x3, x8, 17
	bgtu x3, x0, LBB0_328
LBB0_324:                               //  %while.body993
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x5, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 16
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_326
LBB0_325:                               //    in Loop: Header=BB0_324 Depth=2
	addi x4, x4, 8
	jalr x0, LBB0_327 ( x0 )
LBB0_326:                               //  %if.then1003
                                        //    in Loop: Header=BB0_324 Depth=2
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__ssprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	bgtu x10, x0, LBB0_397
LBB0_327:                               //  %if.end1009
                                        //    in Loop: Header=BB0_324 Depth=2
	ori x28, x0, $_svfprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	addi x8, x8, -16
	bgt x8, x5, LBB0_324
LBB0_328:                               //  %while.end1011
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x8, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	add x1, x8, x1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_330
LBB0_329:                               //    in Loop: Header=BB0_6 Depth=1
	addi x4, x4, 8
	jalr x0, LBB0_331 ( x0 )
LBB0_330:                               //  %if.then1021
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__ssprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	bgtu x10, x0, LBB0_397
LBB0_331:                               //  %cleanup.cont
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 244 ( x2 )
	lw x3, 92 ( x2 )                //  4-byte Folded Reload
	nop
	andi x3, x3, 1
	bgtu x3, x0, LBB0_333
LBB0_332:                               //  %cleanup.cont
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	ble x3, x1, LBB0_337
LBB0_333:                               //  %if.then1035
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 0 ( x4 )
	add x9, x0, x4
	lw x4, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x4, 4 ( x9 )
	lw x3, 8 ( x7 )
	nop
	add x3, x4, x3
	sw x3, 8 ( x7 )
	lw x3, 228 ( x2 )
	nop
	addi x4, x3, 1
	sw x4, 228 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB0_335
LBB0_334:                               //    in Loop: Header=BB0_6 Depth=1
	addi x9, x9, 8
	add x4, x0, x9
	jalr x0, LBB0_337 ( x0 )
LBB0_335:                               //  %if.then1045
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x7
	call $__ssprint_r
	bgtu x10, x0, LBB0_397
LBB0_336:                               //  %if.then1045.if.end1052_crit_edge
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 244 ( x2 )
	addi x3, x2, 160
	add x4, x0, x3
	addi x7, x2, 224
	addi x5, x0, 16
LBB0_337:                               //  %if.end1052
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x9, 36 ( x2 )                //  4-byte Folded Reload
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x3, x1
	sub x3, x3, x9
	bgt x3, x8, LBB0_339
LBB0_338:                               //  %if.end1052
                                        //    in Loop: Header=BB0_6 Depth=1
	add x8, x0, x3
LBB0_339:                               //  %if.end1052
                                        //    in Loop: Header=BB0_6 Depth=1
	ble x8, x0, LBB0_344
LBB0_340:                               //  %if.then1066
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x9, x3
	sw x3, 0 ( x4 )
	sw x8, 4 ( x4 )
	lw x3, 8 ( x7 )
	nop
	add x3, x8, x3
	sw x3, 8 ( x7 )
	lw x3, 228 ( x2 )
	add x9, x0, x4
	addi x4, x3, 1
	sw x4, 228 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB0_342
LBB0_341:                               //    in Loop: Header=BB0_6 Depth=1
	addi x9, x9, 8
	add x4, x0, x9
	jalr x0, LBB0_344 ( x0 )
LBB0_342:                               //  %if.then1076
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x7
	call $__ssprint_r
	bgtu x10, x0, LBB0_397
LBB0_343:                               //  %if.then1076.if.end1083_crit_edge
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 244 ( x2 )
	addi x3, x2, 160
	add x4, x0, x3
	addi x7, x2, 224
	addi x5, x0, 16
LBB0_344:                               //  %if.end1083
                                        //    in Loop: Header=BB0_6 Depth=1
	add x9, x0, x4
	add x3, x0, x0
	ble x8, x3, LBB0_346
LBB0_345:                               //    in Loop: Header=BB0_6 Depth=1
	sub x3, x0, x8
LBB0_346:                               //  %if.end1083
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x4, x1
	add x8, x3, x1
	bgt x8, x0, LBB0_348
LBB0_347:                               //    in Loop: Header=BB0_6 Depth=1
	add x4, x0, x9
	jalr x0, LBB0_380 ( x0 )
LBB0_348:                               //  %while.cond1095.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $_svfprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	add x4, x0, x9
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	slti x3, x8, 17
	bgtu x3, x0, LBB0_353
LBB0_349:                               //  %while.body1098
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x5, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 16
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_351
LBB0_350:                               //    in Loop: Header=BB0_349 Depth=2
	addi x4, x4, 8
	jalr x0, LBB0_352 ( x0 )
LBB0_351:                               //  %if.then1108
                                        //    in Loop: Header=BB0_349 Depth=2
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__ssprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	bgtu x10, x0, LBB0_397
LBB0_352:                               //  %if.end1114
                                        //    in Loop: Header=BB0_349 Depth=2
	ori x28, x0, $_svfprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	addi x8, x8, -16
	bgt x8, x5, LBB0_349
LBB0_353:                               //  %while.end1116
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x8, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	add x1, x8, x1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_355
LBB0_354:                               //    in Loop: Header=BB0_6 Depth=1
	addi x4, x4, 8
	jalr x0, LBB0_380 ( x0 )
LBB0_355:                               //  %if.then750
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__ssprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	beqz x10, LBB0_380
	jalr x0, LBB0_397 ( x0 )
LBB0_356:                               //  %if.else1142
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x4 )
	slti x1, x0, 1
	add x5, x0, x1
	sw x5, 4 ( x4 )
	lw x1, 8 ( x7 )
	nop
	addi x3, x1, 1
	sw x3, 8 ( x7 )
	addi x11, x4, 8
	lw x4, 228 ( x2 )
	nop
	addi x1, x4, 1
	sw x1, 228 ( x2 )
	lw x9, 40 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x9, x5, LBB0_358
LBB0_357:                               //  %if.else1142
                                        //    in Loop: Header=BB0_6 Depth=1
	andi x5, x10, 1
	beqz x5, LBB0_375
LBB0_358:                               //  %if.then1148
                                        //    in Loop: Header=BB0_6 Depth=1
	slti x4, x4, 7
	bgtu x4, x0, LBB0_361
LBB0_359:                               //  %if.then1158
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x8, x0, x7
	add x12, x0, x8
	call $__ssprint_r
	bgtu x10, x0, LBB0_397
LBB0_360:                               //  %if.then1158.if.end1164_crit_edge
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 228 ( x2 )
	lw x3, 8 ( x8 )
	addi x4, x2, 160
	add x11, x0, x4
	add x7, x0, x8
LBB0_361:                               //  %if.end1164
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x4, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x4, 0 ( x11 )
	lw x4, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sw x4, 4 ( x11 )
	add x3, x4, x3
	sw x3, 8 ( x7 )
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_363
LBB0_362:                               //    in Loop: Header=BB0_6 Depth=1
	addi x11, x11, 8
	add x12, x0, x0
	jalr x0, LBB0_364 ( x0 )
LBB0_363:                               //  %if.then1175
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x7
	call $__ssprint_r
	addi x1, x2, 160
	add x11, x0, x1
	add x12, x0, x0
	bgtu x10, x0, LBB0_397
LBB0_364:                               //  %if.end1181
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x11, 112 ( x2 )              //  4-byte Folded Spill
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x12
	call $__eqdf2
	beqz x10, LBB0_367
LBB0_365:                               //  %if.then1184
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	lw x11, 112 ( x2 )              //  4-byte Folded Reload
	nop
	sw x1, 0 ( x11 )
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	sw x1, 4 ( x11 )
	addi x7, x2, 224
	lw x3, 8 ( x7 )
	nop
	add x1, x1, x3
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_376
LBB0_366:                               //    in Loop: Header=BB0_6 Depth=1
	addi x11, x11, 8
	jalr x0, LBB0_377 ( x0 )
LBB0_367:                               //  %if.else1203
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	slti x1, x3, 2
	addi x7, x2, 224
	lw x11, 112 ( x2 )              //  4-byte Folded Reload
	bgtu x1, x0, LBB0_377
LBB0_368:                               //  %while.cond1208.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x8, x3, -1
	ori x28, x0, $_svfprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x11 )
	addi x1, x11, 4
	slti x3, x8, 17
	addi x4, x0, 16
	bgtu x3, x0, LBB0_373
LBB0_369:                               //  %while.body1211
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x4, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 16
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_371
LBB0_370:                               //    in Loop: Header=BB0_369 Depth=2
	addi x11, x11, 8
	jalr x0, LBB0_372 ( x0 )
LBB0_371:                               //  %if.then1221
                                        //    in Loop: Header=BB0_369 Depth=2
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__ssprint_r
	addi x4, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x11, x0, x1
	bgtu x10, x0, LBB0_397
LBB0_372:                               //  %if.end1227
                                        //    in Loop: Header=BB0_369 Depth=2
	ori x28, x0, $_svfprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x11 )
	addi x1, x11, 4
	addi x8, x8, -16
	bgt x8, x4, LBB0_369
LBB0_373:                               //  %while.end1229
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x8, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	add x1, x8, x1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_376
LBB0_374:                               //    in Loop: Header=BB0_6 Depth=1
	addi x11, x11, 8
	jalr x0, LBB0_377 ( x0 )
LBB0_375:                               //  %if.else1248
                                        //    in Loop: Header=BB0_6 Depth=1
	slti x1, x4, 7
	bgtu x1, x0, LBB0_377
LBB0_376:                               //  %if.then1258
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__ssprint_r
	addi x7, x2, 224
	addi x1, x2, 160
	add x11, x0, x1
	bgtu x10, x0, LBB0_397
LBB0_377:                               //  %if.end1265
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x2, 237
	sw x1, 0 ( x11 )
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 4 ( x11 )
	lw x1, 8 ( x7 )
	nop
	add x1, x3, x1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_379
LBB0_378:                               //    in Loop: Header=BB0_6 Depth=1
	addi x4, x11, 8
	addi x5, x0, 16
	jalr x0, LBB0_380 ( x0 )
LBB0_379:                               //  %if.then1276
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__ssprint_r
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	addi x5, x0, 16
	bgtu x10, x0, LBB0_397
LBB0_380:                               //  %if.end1284
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 4
	beqz x1, LBB0_389
LBB0_381:                               //  %if.then1287
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 104 ( x2 )               //  4-byte Folded Reload
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x1, x3
	ble x8, x0, LBB0_389
LBB0_382:                               //  %while.cond1292.preheader
                                        //    in Loop: Header=BB0_6 Depth=1
	ori x28, x0, $_svfprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfprintf_r.blanks >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	slti x3, x8, 17
	bgtu x3, x0, LBB0_387
LBB0_383:                               //  %while.body1295
                                        //    Parent Loop BB0_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x5, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	addi x1, x1, 16
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB0_385
LBB0_384:                               //    in Loop: Header=BB0_383 Depth=2
	addi x4, x4, 8
	jalr x0, LBB0_386 ( x0 )
LBB0_385:                               //  %if.then1305
                                        //    in Loop: Header=BB0_383 Depth=2
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__ssprint_r
	addi x5, x0, 16
	addi x7, x2, 224
	addi x1, x2, 160
	add x4, x0, x1
	bgtu x10, x0, LBB0_397
LBB0_386:                               //  %if.end1311
                                        //    in Loop: Header=BB0_383 Depth=2
	ori x28, x0, $_svfprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfprintf_r.blanks >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	addi x8, x8, -16
	bgt x8, x5, LBB0_383
LBB0_387:                               //  %while.end1313
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x8, 0 ( x1 )
	lw x1, 8 ( x7 )
	nop
	add x1, x8, x1
	sw x1, 8 ( x7 )
	lw x1, 228 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 228 ( x2 )
	slti x1, x1, 7
	bgtu x1, x0, LBB0_389
LBB0_388:                               //  %if.then1323
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__ssprint_r
	addi x7, x2, 224
	bgtu x10, x0, LBB0_397
LBB0_389:                               //  %if.end1331
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x3, 104 ( x2 )               //  4-byte Folded Reload
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x3, x1, LBB0_391
LBB0_390:                               //  %if.end1331
                                        //    in Loop: Header=BB0_6 Depth=1
	add x3, x0, x1
LBB0_391:                               //  %if.end1331
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	lw x1, 232 ( x2 )
	nop
	beqz x1, LBB0_393
LBB0_392:                               //  %land.lhs.true1341
                                        //    in Loop: Header=BB0_6 Depth=1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	addi x12, x2, 224
	call $__ssprint_r
	addi x7, x2, 224
	bgtu x10, x0, LBB0_397
LBB0_393:                               //  %if.end1345
                                        //    in Loop: Header=BB0_6 Depth=1
	sw x0, 228 ( x2 )
	addi x5, x2, 160
	jalr x0, LBB0_6 ( x0 )
LBB0_394:                               //  %done
	lw x1, 232 ( x2 )
	nop
	beqz x1, LBB0_396
LBB0_395:                               //  %land.lhs.true1354
	addi x12, x2, 224
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	nop
	call $__ssprint_r
	bgtu x10, x0, LBB0_397
LBB0_396:                               //  %if.end1358
	sw x0, 228 ( x2 )
LBB0_397:                               //  %if.end1364
	lw x1, 100 ( x2 )               //  4-byte Folded Reload
	nop
	lbu x1, 12 ( x1 )
	nop
	andi x1, x1, 64
	srli x1, x1, 6
	beqz x1, LBB0_399
LBB0_398:
	not x10, x0
	jalr x0, LBB0_400 ( x0 )
LBB0_399:                               //  %if.end1364
	lw x10, 76 ( x2 )               //  4-byte Folded Reload
LBB0_400:                               //  %cleanup1374
	lw x8, 268 ( x2 )               //  4-byte Folded Reload
	lw x1, 276 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 280
$cfi5:
	.cfi_adjust_cfa_offset -280
$cfi6:
	.cfi_def_cfa 2, 0
	ret
LBB0_401:                               //  %if.else20.i
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x0, 48
	addi x3, x2, 237
	sb x1, 2 ( x3 )
	addi x1, x10, 48
	sb x1, 240 ( x2 )
	addi x1, x2, 241
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_126 ( x0 )
LBB0_402:                               //  %if.then496
                                        //    in Loop: Header=BB0_6 Depth=1
	addi x1, x8, 48
	jalr x0, LBB0_221 ( x0 )
$func_end0:
	.size	$_svfprintf_r, ($func_end0)-($_svfprintf_r)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	LBB0_394
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_22
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_24
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_27
	.long	LBB0_30
	.long	LBB0_225
	.long	LBB0_29
	.long	LBB0_31
	.long	LBB0_225
	.long	LBB0_40
	.long	LBB0_41
	.long	LBB0_41
	.long	LBB0_41
	.long	LBB0_41
	.long	LBB0_41
	.long	LBB0_41
	.long	LBB0_41
	.long	LBB0_41
	.long	LBB0_41
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_50
	.long	LBB0_64
	.long	LBB0_225
	.long	LBB0_64
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_43
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_152
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_173
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_183
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_49
	.long	LBB0_51
	.long	LBB0_64
	.long	LBB0_64
	.long	LBB0_64
	.long	LBB0_44
	.long	LBB0_51
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_45
	.long	LBB0_225
	.long	LBB0_144
	.long	LBB0_153
	.long	LBB0_162
	.long	LBB0_48
	.long	LBB0_225
	.long	LBB0_163
	.long	LBB0_225
	.long	LBB0_174
	.long	LBB0_225
	.long	LBB0_225
	.long	LBB0_182

	.address_space	0	
	.type	$_svfprintf_r.blanks,@object //  @_svfprintf_r.blanks
$_svfprintf_r.blanks:
	.zero	16,32
	.size	$_svfprintf_r.blanks, 16

	.address_space	0	
	.type	$_svfprintf_r.zeroes,@object //  @_svfprintf_r.zeroes
$_svfprintf_r.zeroes:
	.zero	16,48
	.size	$_svfprintf_r.zeroes, 16

	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"INF"
	.size	$.str, 4

	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
$.str.1:
	.asciz	"inf"
	.size	$.str.1, 4

	.address_space	0	
	.type	$.str.2,@object         //  @.str.2
$.str.2:
	.asciz	"NAN"
	.size	$.str.2, 4

	.address_space	0	
	.type	$.str.3,@object         //  @.str.3
$.str.3:
	.asciz	"nan"
	.size	$.str.3, 4

	.address_space	0	
	.type	$.str.4,@object         //  @.str.4
$.str.4:
	.asciz	"0123456789abcdef"
	.size	$.str.4, 17

	.address_space	0	
	.type	$.str.5,@object         //  @.str.5
$.str.5:
	.asciz	"(null)"
	.size	$.str.5, 7

	.address_space	0	
	.type	$.str.6,@object         //  @.str.6
$.str.6:
	.asciz	"0123456789ABCDEF"
	.size	$.str.6, 17

	.address_space	0	
	.type	$.str.7,@object         //  @.str.7
$.str.7:
	.asciz	"bug in vfprintf: bad base"
	.size	$.str.7, 26

	.address_space	0	
	.type	$.str.8,@object         //  @.str.8
$.str.8:
	.asciz	"0"
	.size	$.str.8, 2


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
