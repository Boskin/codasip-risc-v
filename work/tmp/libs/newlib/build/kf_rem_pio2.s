	.text
	.file	"kf_rem_pio2.bc"
	.globl	$__kernel_rem_pio2f
	.type	$__kernel_rem_pio2f,@function
$__kernel_rem_pio2f:                    //  @__kernel_rem_pio2f
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -432
$cfi2:
	.cfi_adjust_cfa_offset 432
	sw x1, 428 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 420 ( x2 )               //  4-byte Folded Spill
	sw x15, 52 ( x2 )               //  4-byte Folded Spill
	sw x11, 20 ( x2 )               //  4-byte Folded Spill
	sw x10, 60 ( x2 )               //  4-byte Folded Spill
	addi x1, x12, -3
	srai x3, x1, 31
	srli x3, x3, 29
	add x1, x3, x1
	srai x4, x1, 3
	add x1, x0, x0
	bgt x4, x1, LBB0_2
LBB0_1:                                 //  %entry
	add x4, x0, x1
LBB0_2:                                 //  %entry
	sw x14, 16 ( x2 )               //  4-byte Folded Spill
	slli x1, x14, 2
	lui x3, $init_jk >> 12 & 0xfffff
	ori x28, x0, $init_jk & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	add x1, x3, x1
	sw x4, 56 ( x2 )                //  4-byte Folded Spill
	slli x3, x4, 3
	sw x12, 12 ( x2 )               //  4-byte Folded Spill
	sw x3, 72 ( x2 )                //  4-byte Folded Spill
	sub x3, x12, x3
	sw x3, 80 ( x2 )                //  4-byte Folded Spill
	lw x1, 0 ( x1 )
	sw x13, 64 ( x2 )               //  4-byte Folded Spill
	addi x3, x13, -1
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	sw x3, 84 ( x2 )                //  4-byte Folded Spill
	add x1, x3, x1
	bgt x0, x1, LBB0_7
LBB0_3:                                 //  %for.body.preheader
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sub x4, x1, x3
	slli x1, x4, 2
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x5, x1, x3
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x3, x1
	addi x8, x2, 260
LBB0_4:                                 //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	add x10, x0, x0
	bgt x0, x4, LBB0_6
LBB0_5:                                 //  %cond.false
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x5 )
	sw x4, 96 ( x2 )                //  4-byte Folded Spill
	sw x5, 92 ( x2 )                //  4-byte Folded Spill
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
	call $__floatsisf
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	lw x5, 92 ( x2 )                //  4-byte Folded Reload
	lw x4, 96 ( x2 )                //  4-byte Folded Reload
LBB0_6:                                 //  %cond.end
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x1, x1, -1
	sw x10, 0 ( x8 )
	addi x8, x8, 4
	addi x5, x5, 4
	addi x4, x4, 1
	bgtu x1, x0, LBB0_4
LBB0_7:                                 //  %for.cond14.preheader.lr.ph
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -8
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x1, x0, LBB0_10
LBB0_8:                                 //  %for.cond14.preheader.preheader
	not x1, x0
	addi x3, x2, 100
	lw x5, 76 ( x2 )                //  4-byte Folded Reload
LBB0_9:                                 //  %for.cond14.preheader
                                        //  =>This Inner Loop Header: Depth=1
	addi x1, x1, 1
	sw x0, 0 ( x3 )
	addi x3, x3, 4
	bgt x5, x1, LBB0_9
	jalr x0, LBB0_14 ( x0 )
LBB0_10:                                //  %for.cond14.preheader.us.preheader
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 2
	addi x3, x2, 260
	add x3, x1, x3
	add x1, x0, x0
LBB0_11:                                //  %for.cond14.preheader.us
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_12 Depth 2
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	add x10, x0, x1
	sw x3, 84 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x3
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
LBB0_12:                                //  %for.body17.us
                                        //    Parent Loop BB0_11 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x10, 88 ( x2 )               //  4-byte Folded Spill
	sw x3, 92 ( x2 )                //  4-byte Folded Spill
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	lw x10, 0 ( x8 )
	lw x11, 0 ( x1 )
	nop
	call $__mulsf3
	add x1, x0, x10
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	lw x3, 92 ( x2 )                //  4-byte Folded Reload
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	addi x3, x3, -1
	addi x8, x8, 4
	addi x1, x1, -4
	bgtu x3, x0, LBB0_12
LBB0_13:                                //  %for.cond14.for.end26_crit_edge.us
                                        //    in Loop: Header=BB0_11 Depth=1
	lw x4, 80 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x4, 2
	addi x3, x2, 100
	add x1, x1, x3
	sw x10, 0 ( x1 )
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 4
	addi x1, x4, 1
	lw x5, 76 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x5, x4, LBB0_11
LBB0_14:                                //  %recompute.preheader
	slli x1, x5, 2
	addi x3, x2, 340
	add x1, x1, x3
	addi x3, x0, 7
	addi x4, x0, 8
	addi x7, x2, 100
	lw x9, 72 ( x2 )                //  4-byte Folded Reload
	nop
	sub x9, x0, x9
	sw x9, 8 ( x2 )                 //  4-byte Folded Spill
	lw x9, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x3, x9
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	sub x3, x4, x9
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 4
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	addi x1, x1, -4
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	addi x1, x7, -4
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
LBB0_15:                                //  %recompute
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_17 Depth 2
                                        //      Child Loop BB0_28 Depth 2
                                        //      Child Loop BB0_46 Depth 2
                                        //      Child Loop BB0_51 Depth 2
                                        //      Child Loop BB0_55 Depth 2
                                        //      Child Loop BB0_57 Depth 2
                                        //        Child Loop BB0_58 Depth 3
	add x3, x0, x5
	slli x5, x3, 2
	addi x1, x2, 100
	add x1, x5, x1
	lw x10, 0 ( x1 )
	sw x5, 72 ( x2 )                //  4-byte Folded Spill
	sw x3, 80 ( x2 )                //  4-byte Folded Spill
	ble x3, x0, LBB0_18
LBB0_16:                                //  %for.body35.preheader
                                        //    in Loop: Header=BB0_15 Depth=1
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x5, x1
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	addi x3, x3, 1
	addi x8, x2, 340
	sw x8, 96 ( x2 )                //  4-byte Folded Spill
LBB0_17:                                //  %for.body35
                                        //    Parent Loop BB0_15 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x3, 88 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	lui x11, 998244352>>12 &0xfffff
	call $__mulsf3
	call $__fixsfsi
	call $__floatsisf
	sw x10, 84 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1015021568 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -1015021568 >> 12 & 0xfffff
	or x11, x1, x28
	call $__mulsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__addsf3
	call $__fixsfsi
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 0 ( x1 )
	lw x8, 92 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 0 ( x8 )
	lw x10, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $__addsf3
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, -1
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 4
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	addi x8, x8, -4
	sw x8, 92 ( x2 )                //  4-byte Folded Spill
	slti x1, x0, 1
	bgt x3, x1, LBB0_17
LBB0_18:                                //  %for.end48
                                        //    in Loop: Header=BB0_15 Depth=1
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $scalbnf
	add x8, x0, x10
	lui x11, 1040187392>>12 &0xfffff
	call $__mulsf3
	call $floorf
	ori x28, x0, -1056964608 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -1056964608 >> 12 & 0xfffff
	or x11, x1, x28
	call $__mulsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__addsf3
	sw x10, 96 ( x2 )               //  4-byte Folded Spill
	call $__fixsfsi
	add x8, x0, x10
	call $__floatsisf
	add x1, x0, x10
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__subsf3
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	add x15, x0, x10
	ble x1, x0, LBB0_20
LBB0_19:                                //  %if.then58
                                        //    in Loop: Header=BB0_15 Depth=1
	addi x1, x2, 340
	lw x14, 72 ( x2 )               //  4-byte Folded Reload
	nop
	add x1, x14, x1
	lw x3, -4 ( x1 )
	lw x5, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sra x4, x3, x5
	sll x5, x4, x5
	sub x3, x3, x5
	sw x3, -4 ( x1 )
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sra x11, x3, x1
	add x8, x8, x4
	add x9, x0, x8
	jalr x0, LBB0_22 ( x0 )
LBB0_20:                                //  %if.else
                                        //    in Loop: Header=BB0_15 Depth=1
	sw x8, 68 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB0_24
LBB0_21:                                //  %if.then73
                                        //    in Loop: Header=BB0_15 Depth=1
	addi x1, x2, 340
	lw x14, 72 ( x2 )               //  4-byte Folded Reload
	nop
	add x1, x14, x1
	lw x1, -4 ( x1 )
	nop
	srai x11, x1, 8
	lw x9, 68 ( x2 )                //  4-byte Folded Reload
LBB0_22:                                //  %if.end83
                                        //    in Loop: Header=BB0_15 Depth=1
	addi x12, x0, 255
	bgt x11, x0, LBB0_26
LBB0_23:                                //    in Loop: Header=BB0_15 Depth=1
	sw x11, 44 ( x2 )               //  4-byte Folded Spill
	sw x9, 68 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_43 ( x0 )
LBB0_24:                                //  %if.else77
                                        //    in Loop: Header=BB0_15 Depth=1
	add x10, x0, x15
	lui x11, 1056964608>>12 &0xfffff
	add x8, x0, x15
	call $__gesf2
	add x15, x0, x8
	addi x11, x0, 2
	lw x9, 68 ( x2 )                //  4-byte Folded Reload
	addi x12, x0, 255
	lw x14, 72 ( x2 )               //  4-byte Folded Reload
	bgez x10, LBB0_26
LBB0_25:                                //    in Loop: Header=BB0_15 Depth=1
	add x1, x0, x0
	jalr x0, LBB0_42 ( x0 )
LBB0_26:                                //  %if.then86
                                        //    in Loop: Header=BB0_15 Depth=1
	add x8, x0, x0
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	slti x10, x0, 1
	addi x13, x0, 256
	ble x1, x0, LBB0_32
LBB0_27:                                //  %for.body91.preheader
                                        //    in Loop: Header=BB0_15 Depth=1
	add x4, x0, x0
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	addi x3, x2, 340
LBB0_28:                                //  %for.body91
                                        //    Parent Loop BB0_15 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x5, 0 ( x3 )
	add x7, x0, x12
	bgtu x4, x0, LBB0_30
LBB0_29:                                //  %if.then95
                                        //    in Loop: Header=BB0_28 Depth=2
	add x4, x0, x10
	add x7, x0, x13
	add x8, x0, x0
	beqz x5, LBB0_31
LBB0_30:                                //  %if.end105.sink.split
                                        //    in Loop: Header=BB0_28 Depth=2
	sub x5, x7, x5
	sw x5, 0 ( x3 )
	add x8, x0, x4
LBB0_31:                                //  %for.inc106
                                        //    in Loop: Header=BB0_28 Depth=2
	addi x1, x1, -1
	addi x3, x3, 4
	add x4, x0, x8
	bgtu x1, x0, LBB0_28
LBB0_32:                                //  %for.end108
                                        //    in Loop: Header=BB0_15 Depth=1
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
	lui x10, 1065353216>>12 &0xfffff
	ble x4, x0, LBB0_37
LBB0_33:                                //  %if.then111
                                        //    in Loop: Header=BB0_15 Depth=1
	xori x3, x4, 1
	addi x1, x0, 127
	beqz x3, LBB0_36
LBB0_34:                                //  %if.then111
                                        //    in Loop: Header=BB0_15 Depth=1
	xori x1, x4, 2
	bgtu x1, x0, LBB0_37
LBB0_35:                                //  %sw.bb114
                                        //    in Loop: Header=BB0_15 Depth=1
	addi x1, x0, 63
LBB0_36:                                //  %sw.epilog.sink.split
                                        //    in Loop: Header=BB0_15 Depth=1
	addi x3, x2, 340
	add x3, x14, x3
	lw x4, -4 ( x3 )
	nop
	and x1, x1, x4
	sw x1, -4 ( x3 )
LBB0_37:                                //  %if.end118
                                        //    in Loop: Header=BB0_15 Depth=1
	xori x1, x11, 2
	addi x9, x9, 1
	sw x9, 68 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB0_39
LBB0_38:                                //    in Loop: Header=BB0_15 Depth=1
	sw x11, 44 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB0_43 ( x0 )
LBB0_39:                                //  %if.then121
                                        //    in Loop: Header=BB0_15 Depth=1
	add x11, x0, x15
	call $__subsf3
	add x15, x0, x10
	beqz x8, LBB0_41
LBB0_40:                                //  %if.then125
                                        //    in Loop: Header=BB0_15 Depth=1
	lui x10, 1065353216>>12 &0xfffff
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x15
	call $scalbnf
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__subsf3
	add x15, x0, x10
LBB0_41:                                //  %if.end130
                                        //    in Loop: Header=BB0_15 Depth=1
	addi x1, x0, 2
LBB0_42:                                //  %if.end130
                                        //    in Loop: Header=BB0_15 Depth=1
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
LBB0_43:                                //  %if.end130
                                        //    in Loop: Header=BB0_15 Depth=1
	lw x8, 80 ( x2 )                //  4-byte Folded Reload
	sw x15, 96 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x15
	add x11, x0, x0
	call $__nesf2
	bgtu x10, x0, LBB0_60
LBB0_44:                                //  %for.cond135.preheader
                                        //    in Loop: Header=BB0_15 Depth=1
	lw x7, 76 ( x2 )                //  4-byte Folded Reload
	lw x10, 72 ( x2 )               //  4-byte Folded Reload
	ble x8, x7, LBB0_50
LBB0_45:                                //  %for.body138.preheader
                                        //    in Loop: Header=BB0_15 Depth=1
	addi x1, x2, 336
	add x3, x10, x1
	add x1, x0, x0
	add x4, x0, x8
LBB0_46:                                //  %for.body138
                                        //    Parent Loop BB0_15 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x5, 0 ( x3 )
	addi x4, x4, -1
	addi x3, x3, -4
	or x1, x1, x5
	bgt x4, x7, LBB0_46
LBB0_47:                                //  %for.end142
                                        //    in Loop: Header=BB0_15 Depth=1
	beqz x1, LBB0_50
LBB0_48:                                //  %while.cond.preheader
	addi x1, x2, 340
	add x1, x10, x1
	addi x1, x1, -4
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
LBB0_49:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x3, 0 ( x1 )
	addi x1, x1, -4
	addi x8, x8, -1
	addi x11, x11, -8
	beqz x3, LBB0_49
	jalr x0, LBB0_64 ( x0 )
LBB0_50:                                //  %for.cond146.preheader
                                        //    in Loop: Header=BB0_15 Depth=1
	add x1, x0, x0
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_51:                                //  %for.cond146
                                        //    Parent Loop BB0_15 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x4, 0 ( x3 )
	addi x3, x3, -4
	addi x1, x1, 1
	beqz x4, LBB0_51
LBB0_52:                                //  %for.cond156.preheader
                                        //    in Loop: Header=BB0_15 Depth=1
	add x5, x1, x8
	ble x1, x0, LBB0_15
LBB0_53:                                //  %for.body160.lr.ph
                                        //    in Loop: Header=BB0_15 Depth=1
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	sw x5, 68 ( x2 )                //  4-byte Folded Spill
	bgt x3, x0, LBB0_56
LBB0_54:                                //  %for.body160.preheader
                                        //    in Loop: Header=BB0_15 Depth=1
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x8, x1
	add x3, x8, x3
	slli x1, x1, 2
	slli x3, x3, 2
	lw x4, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x1, x4
	addi x1, x2, 104
	add x7, x10, x1
	addi x1, x2, 260
	add x1, x3, x1
LBB0_55:                                //  %for.body160
                                        //    Parent Loop BB0_15 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
	sw x7, 92 ( x2 )                //  4-byte Folded Spill
	sw x4, 96 ( x2 )                //  4-byte Folded Spill
	lw x10, 0 ( x4 )
	nop
	call $__floatsisf
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	lw x7, 92 ( x2 )                //  4-byte Folded Reload
	lw x4, 96 ( x2 )                //  4-byte Folded Reload
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
	addi x8, x8, 1
	sw x10, 0 ( x1 )
	addi x4, x4, 4
	sw x0, 0 ( x7 )
	addi x7, x7, 4
	addi x1, x1, 4
	bgt x5, x8, LBB0_55
	jalr x0, LBB0_15 ( x0 )
LBB0_56:                                //  %for.body160.us.preheader
                                        //    in Loop: Header=BB0_15 Depth=1
	add x1, x8, x3
	slli x3, x1, 2
	addi x1, x8, 1
	addi x4, x2, 260
	add x3, x3, x4
LBB0_57:                                //  %for.body160.us
                                        //    Parent Loop BB0_15 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_58 Depth 3
	sw x8, 80 ( x2 )                //  4-byte Folded Spill
	add x4, x0, x1
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	sw x4, 72 ( x2 )                //  4-byte Folded Spill
	add x1, x1, x4
	slli x1, x1, 2
	add x8, x0, x3
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	lw x10, 0 ( x1 )
	nop
	call $__floatsisf
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x3, x1
	slli x1, x1, 2
	addi x4, x2, 260
	add x1, x1, x4
	sw x10, 0 ( x1 )
	add x1, x0, x0
	add x10, x0, x1
	add x1, x0, x3
	sw x8, 84 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x8
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
LBB0_58:                                //  %for.body169.us
                                        //    Parent Loop BB0_15 Depth=1
                                        //      Parent Loop BB0_57 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sw x10, 88 ( x2 )               //  4-byte Folded Spill
	sw x3, 92 ( x2 )                //  4-byte Folded Spill
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	lw x10, 0 ( x8 )
	lw x11, 0 ( x3 )
	nop
	call $__mulsf3
	add x1, x0, x10
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	lw x3, 92 ( x2 )                //  4-byte Folded Reload
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	addi x8, x8, 4
	addi x3, x3, -4
	bgtu x1, x0, LBB0_58
LBB0_59:                                //  %for.cond166.for.end178_crit_edge.us
                                        //    in Loop: Header=BB0_57 Depth=2
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x4, 2
	addi x3, x2, 100
	add x1, x1, x3
	sw x10, 0 ( x1 )
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 4
	addi x1, x4, 1
	add x8, x0, x4
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
	nop
	ble x5, x4, LBB0_15
	jalr x0, LBB0_57 ( x0 )
LBB0_60:                                //  %if.else196
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sub x11, x0, x1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	nop
	call $scalbnf
	add x8, x0, x10
	lui x11, 1132462080>>12 &0xfffff
	call $__gesf2
	bgez x10, LBB0_62
LBB0_61:
	add x10, x0, x8
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_63 ( x0 )
LBB0_62:                                //  %if.then201
	lui x11, 998244352>>12 &0xfffff
	add x10, x0, x8
	call $__mulsf3
	call $__fixsfsi
	call $__floatsisf
	sw x10, 96 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1015021568 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -1015021568 >> 12 & 0xfffff
	or x11, x1, x28
	call $__mulsf3
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__addsf3
	call $__fixsfsi
	addi x1, x2, 340
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x3, x1
	sw x10, 0 ( x1 )
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	add x1, x1, x3
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
LBB0_63:                                //  %if.end216
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	slli x1, x1, 2
	addi x3, x2, 340
	add x8, x1, x3
	call $__fixsfsi
	sw x10, 0 ( x8 )
	lw x8, 80 ( x2 )                //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
LBB0_64:                                //  %if.end217
	lui x10, 1065353216>>12 &0xfffff
	call $scalbnf
	sw x8, 80 ( x2 )                //  4-byte Folded Spill
	bgt x0, x8, LBB0_73
LBB0_65:                                //  %for.body222.preheader
	slli x4, x8, 2
	addi x1, x2, 340
	addi x3, x2, 100
	add x3, x4, x3
	sw x3, 96 ( x2 )                //  4-byte Folded Spill
	sw x4, 72 ( x2 )                //  4-byte Folded Spill
	add x1, x4, x1
	addi x3, x8, 1
LBB0_66:                                //  %for.body222
                                        //  =>This Inner Loop Header: Depth=1
	sw x3, 88 ( x2 )                //  4-byte Folded Spill
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	sw x8, 84 ( x2 )                //  4-byte Folded Spill
	lw x10, 0 ( x1 )
	nop
	call $__floatsisf
	add x1, x0, x10
	add x10, x0, x8
	add x11, x0, x1
	call $__mulsf3
	lw x8, 96 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 0 ( x8 )
	lw x10, 84 ( x2 )               //  4-byte Folded Reload
	lui x11, 998244352>>12 &0xfffff
	call $__mulsf3
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	addi x3, x3, -1
	addi x8, x8, -4
	sw x8, 96 ( x2 )                //  4-byte Folded Spill
	addi x1, x1, -4
	bgt x3, x0, LBB0_66
LBB0_67:                                //  %for.cond231.preheader
	lw x8, 80 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x0, x8, LBB0_73
LBB0_68:                                //  %for.body241.preheader.preheader
	addi x1, x2, 100
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x1
	add x1, x0, x8
LBB0_69:                                //  %for.body241.preheader
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_70 Depth 2
	ori x28, x0, $PIo2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	sub x1, x8, x1
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	lui x1, $PIo2 >> 12 & 0xfffff
	or x5, x1, x28
	add x1, x0, x0
	add x4, x0, x1
	add x10, x0, x4
	sw x3, 72 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x3
LBB0_70:                                //  %for.body241
                                        //    Parent Loop BB0_69 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x10, 88 ( x2 )               //  4-byte Folded Spill
	sw x5, 96 ( x2 )                //  4-byte Folded Spill
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	lw x10, 0 ( x5 )
	lw x11, 0 ( x8 )
	nop
	call $__mulsf3
	add x1, x0, x10
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	lw x4, 92 ( x2 )                //  4-byte Folded Reload
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	ble x1, x4, LBB0_72
LBB0_71:                                //  %for.body241
                                        //    in Loop: Header=BB0_70 Depth=2
	addi x8, x8, 4
	addi x5, x5, 4
	addi x1, x4, 1
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x3, x4, LBB0_70
LBB0_72:                                //  %for.end249
                                        //    in Loop: Header=BB0_69 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 2
	addi x3, x2, 180
	add x1, x1, x3
	sw x10, 0 ( x1 )
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, -4
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x4, -1
	lw x8, 80 ( x2 )                //  4-byte Folded Reload
	bgt x4, x0, LBB0_69
LBB0_73:                                //  %for.end254
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x3, -1
	sltiu x1, x1, 2
	bgtu x1, x0, LBB0_81
LBB0_74:                                //  %for.end254
	beqz x3, LBB0_92
LBB0_75:                                //  %for.end254
	xori x1, x3, 3
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB0_108
LBB0_76:                                //  %for.cond311.preheader
	add x5, x0, x0
	ble x8, x0, LBB0_101
LBB0_77:                                //  %for.body314.preheader
	slli x1, x8, 2
	addi x3, x2, 180
	add x3, x1, x3
	add x1, x0, x8
	addi x8, x3, -4
	addi x4, x1, 1
	sw x3, 76 ( x2 )                //  4-byte Folded Spill
	lw x3, 0 ( x3 )
LBB0_78:                                //  %for.body314
                                        //  =>This Inner Loop Header: Depth=1
	sw x4, 96 ( x2 )                //  4-byte Folded Spill
	lw x10, 0 ( x8 )
	nop
	sw x10, 84 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x3
	sw x11, 92 ( x2 )               //  4-byte Folded Spill
	call $__addsf3
	add x1, x0, x10
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
	lw x10, 84 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__subsf3
	add x1, x0, x10
	lw x10, 92 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	lw x4, 96 ( x2 )                //  4-byte Folded Reload
	slti x1, x0, 1
	sw x10, 4 ( x8 )
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 0 ( x8 )
	addi x8, x8, -4
	addi x4, x4, -1
	bgt x4, x1, LBB0_78
LBB0_79:                                //  %for.cond329.preheader
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	slti x3, x1, 2
	beqz x3, LBB0_103
LBB0_80:
	add x5, x0, x0
	jalr x0, LBB0_101 ( x0 )
LBB0_81:                                //  %for.cond274.preheader
	add x3, x0, x0
	bgt x0, x8, LBB0_84
LBB0_82:                                //  %for.body277.preheader
	lw x4, 80 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x4, 2
	addi x3, x2, 180
	add x1, x1, x3
	add x3, x0, x0
	addi x8, x4, 1
LBB0_83:                                //  %for.body277
                                        //  =>This Inner Loop Header: Depth=1
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	lw x11, 0 ( x1 )
	add x10, x0, x3
	call $__addsf3
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	add x3, x0, x10
	addi x8, x8, -1
	addi x1, x1, -4
	bgt x8, x0, LBB0_83
LBB0_84:                                //  %for.end282
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	add x11, x0, x3
	add x8, x0, x3
	call $__subsf3
	add x11, x0, x8
	add x1, x0, x11
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	add x4, x0, x0
	beq x3, x4, LBB0_86
LBB0_85:                                //  %for.end282
	add x1, x0, x10
LBB0_86:                                //  %for.end282
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
	lw x10, 180 ( x2 )
	nop
	call $__subsf3
	add x3, x0, x10
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	ble x1, x0, LBB0_89
LBB0_87:                                //  %for.body296.preheader
	addi x8, x2, 184
LBB0_88:                                //  %for.body296
                                        //  =>This Inner Loop Header: Depth=1
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	lw x11, 0 ( x8 )
	add x10, x0, x3
	call $__addsf3
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	add x3, x0, x10
	addi x1, x1, -1
	addi x8, x8, 4
	bgtu x1, x0, LBB0_88
LBB0_89:                                //  %for.end301
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	or x10, x1, x28
	add x11, x0, x3
	add x8, x0, x3
	call $__subsf3
	add x5, x0, x8
	add x1, x0, x0
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	beq x3, x1, LBB0_91
LBB0_90:                                //  %for.end301
	add x5, x0, x10
LBB0_91:                                //  %for.end301
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 4
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_107 ( x0 )
LBB0_92:                                //  %for.cond256.preheader
	add x3, x0, x0
	bgt x0, x8, LBB0_95
LBB0_93:                                //  %for.body259.preheader
	slli x1, x8, 2
	addi x3, x2, 180
	add x1, x1, x3
	add x3, x0, x0
	addi x8, x8, 1
LBB0_94:                                //  %for.body259
                                        //  =>This Inner Loop Header: Depth=1
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	lw x11, 0 ( x1 )
	add x10, x0, x3
	call $__addsf3
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	add x3, x0, x10
	addi x8, x8, -1
	addi x1, x1, -4
	bgt x8, x0, LBB0_94
LBB0_95:                                //  %for.end264
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	add x11, x0, x3
	add x8, x0, x3
	call $__subsf3
	add x5, x0, x8
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	add x3, x0, x0
	beq x1, x3, LBB0_97
LBB0_96:                                //  %for.end264
	add x5, x0, x10
LBB0_97:                                //  %for.end264
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_107 ( x0 )
LBB0_98:                                //  %for.cond347.preheader
	lw x8, 80 ( x2 )                //  4-byte Folded Reload
	add x5, x0, x0
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x3, x0, LBB0_101
LBB0_99:                                //  %for.body350.preheader
	add x5, x0, x0
LBB0_100:                               //  %for.body350
                                        //  =>This Inner Loop Header: Depth=1
	sw x1, 76 ( x2 )                //  4-byte Folded Spill
	lw x11, 0 ( x1 )
	add x10, x0, x5
	call $__addsf3
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	add x5, x0, x10
	addi x1, x1, -4
	addi x8, x8, -1
	slti x3, x0, 1
	bgt x8, x3, LBB0_100
LBB0_101:                               //  %for.end355
	lw x1, 180 ( x2 )
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x3, x0, LBB0_105
LBB0_102:                               //  %if.then358
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
	lw x1, 184 ( x2 )
	nop
	sw x1, 4 ( x3 )
	jalr x0, LBB0_106 ( x0 )
LBB0_103:                               //  %for.body332.preheader
	sw x3, 72 ( x2 )                //  4-byte Folded Spill
	lw x3, 76 ( x2 )                //  4-byte Folded Reload
	nop
	addi x8, x3, -4
	lw x4, 0 ( x3 )
	add x3, x0, x1
LBB0_104:                               //  %for.body332
                                        //  =>This Inner Loop Header: Depth=1
	sw x3, 96 ( x2 )                //  4-byte Folded Spill
	lw x10, 0 ( x8 )
	nop
	sw x10, 84 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x4
	sw x11, 92 ( x2 )               //  4-byte Folded Spill
	call $__addsf3
	add x1, x0, x10
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
	lw x10, 84 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__subsf3
	add x1, x0, x10
	lw x10, 92 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $__addsf3
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	sw x10, 4 ( x8 )
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x8 )
	addi x8, x8, -4
	addi x3, x3, -1
	add x4, x0, x1
	slti x1, x0, 1
	bgt x3, x1, LBB0_104
	j LBB0_98
LBB0_105:                               //  %if.else364
	lui x3, -2147483648 >> 12 & 0xfffff
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x8, x3, x28
	xor x1, x8, x1
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
	lw x11, 184 ( x2 )
	add x10, x0, x8
	sw x5, 96 ( x2 )                //  4-byte Folded Spill
	call $__subsf3
	lw x5, 96 ( x2 )                //  4-byte Folded Reload
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 4 ( x3 )
	xor x5, x8, x5
LBB0_106:                               //  %if.end373
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	addi x3, x3, 8
LBB0_107:                               //  %sw.epilog374.sink.split
	sw x5, 0 ( x3 )
LBB0_108:                               //  %sw.epilog374
	andi x10, x4, 7
	lw x8, 420 ( x2 )               //  4-byte Folded Reload
	lw x1, 428 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 432
$cfi5:
	.cfi_adjust_cfa_offset -432
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__kernel_rem_pio2f, ($func_end0)-($__kernel_rem_pio2f)
	.cfi_endproc

	.address_space	0	
	.type	$init_jk,@object        //  @init_jk
	.section	.rodata,"a",@progbits
	.p2align	2
$init_jk:
	.long	4                       //  0x4
	.long	7                       //  0x7
	.long	9                       //  0x9
	.size	$init_jk, 12

	.address_space	0	
	.type	$PIo2,@object           //  @PIo2
	.p2align	2
$PIo2:
	.long	1070137344              //  float 1.5703125
	.long	972029952               //  float 4.57763672E-4
	.long	937033728               //  float 2.59876251E-5
	.long	866254848               //  float 7.54371285E-8
	.long	780402688               //  float 6.00266503E-11
	.long	726663168               //  float 7.38964445E-13
	.long	667025408               //  float 5.38458167E-15
	.long	584056832               //  float 5.6378513E-18
	.long	532938752               //  float 8.30092288E-20
	.long	465960960               //  float 3.27563523E-22
	.long	390332416               //  float 6.33310156E-25
	.size	$PIo2, 44


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
