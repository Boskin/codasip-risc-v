	.text
	.file	"qsort.bc"
	.globl	$qsort
	.type	$qsort,@function
$qsort:                                 //  @qsort
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs
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
	sw x13, 68 ( x2 )               //  4-byte Folded Spill
	add x5, x0, x11
	or x1, x12, x10
	xori x3, x12, 4
	sltu x3, x0, x3
	andi x1, x1, 3
	add x4, x0, x0
	andi x3, x3, 1
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
	beq x1, x4, LBB0_2
LBB0_1:                                 //  %entry
	addi x3, x0, 2
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
LBB0_2:                                 //  %entry
	seqz x1, x1
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	sub x1, x0, x12
	sw x1, 56 ( x2 )                //  4-byte Folded Spill
	sltiu x1, x5, 7
	sw x12, 60 ( x2 )               //  4-byte Folded Spill
	sw x10, 72 ( x2 )               //  4-byte Folded Spill
	bgtu x1, x0, LBB0_7
LBB0_3:                                 //  %if.end26.lr.ph
	srli x1, x12, 2
	sw x1, 4 ( x2 )                 //  4-byte Folded Spill
	addi x1, x1, 1
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	addi x1, x12, 1
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
LBB0_4:                                 //  %if.end26
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_63 Depth 2
                                        //      Child Loop BB0_65 Depth 2
                                        //      Child Loop BB0_67 Depth 2
                                        //        Child Loop BB0_105 Depth 3
                                        //          Child Loop BB0_110 Depth 4
                                        //        Child Loop BB0_75 Depth 3
                                        //          Child Loop BB0_79 Depth 4
                                        //        Child Loop BB0_69 Depth 3
                                        //        Child Loop BB0_113 Depth 3
                                        //          Child Loop BB0_117 Depth 4
                                        //        Child Loop BB0_98 Depth 3
                                        //          Child Loop BB0_102 Depth 4
                                        //        Child Loop BB0_84 Depth 3
                                        //        Child Loop BB0_125 Depth 3
                                        //        Child Loop BB0_124 Depth 3
                                        //      Child Loop BB0_145 Depth 2
                                        //      Child Loop BB0_147 Depth 2
                                        //      Child Loop BB0_153 Depth 2
                                        //      Child Loop BB0_155 Depth 2
	sw x5, 24 ( x2 )                //  4-byte Folded Spill
	srli x10, x5, 1
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsi3
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	xori x1, x3, 7
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	nop
	add x8, x10, x12
	beqz x1, LBB0_58
LBB0_5:                                 //  %if.then30
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x10, x3, -1
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsi3
	lw x4, 24 ( x2 )                //  4-byte Folded Reload
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	sltiu x1, x4, 41
	add x5, x10, x3
	sw x5, 64 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB0_24
LBB0_6:                                 //    in Loop: Header=BB0_4 Depth=1
	add x1, x0, x3
	jalr x0, LBB0_50 ( x0 )
LBB0_7:                                 //  %for.cond.preheader
	add x10, x0, x5
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__mulsi3
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	ble x10, x8, LBB0_134
LBB0_8:                                 //  %for.cond8.preheader.lr.ph
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	nop
	srli x1, x3, 2
	add x4, x10, x12
	sw x4, 20 ( x2 )                //  4-byte Folded Spill
	add x4, x0, x0
	sw x4, 44 ( x2 )                //  4-byte Folded Spill
	addi x1, x1, 1
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	add x8, x3, x12
	addi x1, x3, 1
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	add x4, x0, x8
	sw x12, 24 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB0_10 ( x0 )
LBB0_9:                                 //  %for.cond.loopexit
                                        //    in Loop: Header=BB0_10 Depth=1
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	lw x4, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x1, x4
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x1, x3
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x1, x3
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgeu x4, x1, LBB0_134
LBB0_10:                                //  %for.cond8.preheader
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_22 Depth 2
                                        //        Child Loop BB0_23 Depth 3
                                        //      Child Loop BB0_17 Depth 2
                                        //        Child Loop BB0_19 Depth 3
                                        //      Child Loop BB0_13 Depth 2
	sw x4, 28 ( x2 )                //  4-byte Folded Spill
	bgeu x12, x4, LBB0_9
LBB0_11:                                //  %land.rhs.lr.ph
                                        //    in Loop: Header=BB0_10 Depth=1
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_15
LBB0_12:                                //  %land.rhs.us.preheader
                                        //    in Loop: Header=BB0_10 Depth=1
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_13:                                //  %land.rhs.us
                                        //    Parent Loop BB0_10 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x10, 64 ( x2 )               //  4-byte Folded Spill
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x1, x10
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	lw x7, 64 ( x2 )                //  4-byte Folded Reload
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	ble x10, x0, LBB0_9
LBB0_14:                                //  %if.then14.us
                                        //    in Loop: Header=BB0_13 Depth=2
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x9 )
	lw x3, 0 ( x7 )
	lw x4, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x4, x7
	lw x5, 60 ( x2 )                //  4-byte Folded Reload
	nop
	add x5, x5, x4
	sw x3, 0 ( x9 )
	sw x1, 0 ( x7 )
	add x10, x0, x4
	bgeu x12, x5, LBB0_9
	jalr x0, LBB0_13 ( x0 )
LBB0_15:                                //  %land.rhs.lr.ph.split
                                        //    in Loop: Header=BB0_10 Depth=1
	lw x13, 44 ( x2 )               //  4-byte Folded Reload
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_22
LBB0_16:                                //  %land.rhs.us644.preheader
                                        //    in Loop: Header=BB0_10 Depth=1
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
LBB0_17:                                //  %land.rhs.us644
                                        //    Parent Loop BB0_10 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_19 Depth 3
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x1, x11
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	slti x11, x0, 1
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	ble x10, x0, LBB0_9
LBB0_18:                                //  %if.then.i.us659
                                        //    in Loop: Header=BB0_17 Depth=2
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	nop
	add x3, x0, x10
LBB0_19:                                //  %do.body.i.us660
                                        //    Parent Loop BB0_10 Depth=1
                                        //      Parent Loop BB0_17 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x4, x3, x12
	add x5, x3, x8
	lw x7, 0 ( x5 )
	lw x9, 0 ( x4 )
	addi x1, x1, -1
	addi x3, x3, 4
	sw x9, 0 ( x5 )
	sw x7, 0 ( x4 )
	bgt x1, x11, LBB0_19
LBB0_20:                                //  %for.cond8.backedge.us672
                                        //    in Loop: Header=BB0_17 Depth=2
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sub x10, x10, x1
	sw x10, 64 ( x2 )               //  4-byte Folded Spill
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x1
	bgeu x12, x1, LBB0_9
	jalr x0, LBB0_17 ( x0 )
LBB0_21:                                //  %for.cond8.backedge
                                        //    in Loop: Header=BB0_22 Depth=2
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sub x13, x13, x1
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x1
	bgeu x12, x1, LBB0_9
LBB0_22:                                //  %land.rhs
                                        //    Parent Loop BB0_10 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_23 Depth 3
	sw x13, 64 ( x2 )               //  4-byte Folded Spill
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x1, x11
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	lw x13, 64 ( x2 )               //  4-byte Folded Reload
	slti x11, x0, 1
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	add x3, x0, x13
	ble x10, x0, LBB0_9
LBB0_23:                                //  %do.body7.i
                                        //    Parent Loop BB0_10 Depth=1
                                        //      Parent Loop BB0_22 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x4, x3, x12
	add x5, x3, x8
	lb x7, 0 ( x5 )
	lb x9, 0 ( x4 )
	addi x1, x1, -1
	addi x3, x3, 1
	sb x9, 0 ( x5 )
	sb x7, 0 ( x4 )
	bgt x1, x11, LBB0_23
	j LBB0_21
LBB0_24:                                //  %if.then34
                                        //    in Loop: Header=BB0_4 Depth=1
	srli x10, x4, 3
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	sw x3, 72 ( x2 )                //  4-byte Folded Spill
	call $__mulsi3
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x10, x1
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	slli x3, x10, 1
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x1
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x1, x3
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgez x1, LBB0_29
LBB0_25:                                //  %cond.true.i
                                        //    in Loop: Header=BB0_4 Depth=1
	bgt x0, x10, LBB0_32
LBB0_26:                                //  %cond.false.i
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 72 ( x2 )               //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	add x1, x0, x0
	bgt x1, x10, LBB0_28
LBB0_27:                                //  %cond.false.i
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_28:                                //  %cond.false.i
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x3, 52 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_32 ( x0 )
LBB0_29:                                //  %cond.false11.i
                                        //    in Loop: Header=BB0_4 Depth=1
	bgt x10, x0, LBB0_32
LBB0_30:                                //  %cond.false15.i
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 72 ( x2 )               //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	bgt x1, x10, LBB0_32
LBB0_31:                                //  %cond.false15.i
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
LBB0_32:                                //  %med3.exit
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sub x10, x8, x1
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x8
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x1, x8
	add x10, x0, x8
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x0, x1
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgez x1, LBB0_36
LBB0_33:                                //  %cond.true.i438
                                        //    in Loop: Header=BB0_4 Depth=1
	bgt x0, x10, LBB0_40
LBB0_34:                                //  %cond.false.i442
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x8, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	add x11, x0, x8
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	add x1, x0, x0
	bgt x1, x10, LBB0_39
LBB0_35:                                //  %cond.false.i442
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_39 ( x0 )
LBB0_36:                                //  %cond.false11.i444
                                        //    in Loop: Header=BB0_4 Depth=1
	bgt x10, x0, LBB0_40
LBB0_37:                                //  %cond.false15.i448
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	add x1, x0, x0
	bgt x1, x10, LBB0_39
LBB0_38:                                //  %cond.false15.i448
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x8, 8 ( x2 )                 //  4-byte Folded Reload
LBB0_39:                                //  %cond.false15.i448
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
LBB0_40:                                //  %med3.exit450
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sub x10, x4, x1
	add x11, x3, x4
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	bgez x1, LBB0_44
LBB0_41:                                //  %cond.true.i455
                                        //    in Loop: Header=BB0_4 Depth=1
	bgt x0, x10, LBB0_45
LBB0_42:                                //  %cond.false.i459
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	add x1, x0, x0
	bgt x1, x10, LBB0_49
LBB0_43:                                //  %cond.false.i459
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_49 ( x0 )
LBB0_44:                                //  %cond.false11.i461
                                        //    in Loop: Header=BB0_4 Depth=1
	ble x10, x0, LBB0_46
LBB0_45:                                //    in Loop: Header=BB0_4 Depth=1
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_49 ( x0 )
LBB0_46:                                //  %cond.false15.i465
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	add x1, x0, x0
	bgt x1, x10, LBB0_48
LBB0_47:                                //  %cond.false15.i465
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_48:                                //  %cond.false15.i465
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x3, 64 ( x2 )                //  4-byte Folded Spill
LBB0_49:                                //  %if.end51
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_50:                                //  %if.end51
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x1, 52 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x1
	add x11, x0, x8
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	sw x10, 48 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	bgez x1, LBB0_54
LBB0_51:                                //  %cond.true.i472
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	slti x11, x0, 1
	bgt x0, x10, LBB0_59
LBB0_52:                                //  %cond.false.i476
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	add x1, x0, x0
	bgt x1, x10, LBB0_57
LBB0_53:                                //  %cond.false.i476
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_57 ( x0 )
LBB0_54:                                //  %cond.false11.i478
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	slti x11, x0, 1
	bgt x10, x0, LBB0_59
LBB0_55:                                //  %cond.false15.i482
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	add x1, x0, x0
	bgt x1, x10, LBB0_57
LBB0_56:                                //  %cond.false15.i482
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
LBB0_57:                                //  %cond.false15.i482
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
LBB0_58:                                //  %if.end53
                                        //    in Loop: Header=BB0_4 Depth=1
	slti x11, x0, 1
LBB0_59:                                //  %if.end53
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_61
LBB0_60:                                //  %if.then55
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x1, 0 ( x12 )
	lw x3, 0 ( x8 )
	nop
	sw x3, 0 ( x12 )
	sw x1, 0 ( x8 )
	jalr x0, LBB0_66 ( x0 )
LBB0_61:                                //  %if.else57
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_64
LBB0_62:                                //    in Loop: Header=BB0_4 Depth=1
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	add x3, x0, x12
LBB0_63:                                //  %do.body7.i502
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lb x4, 0 ( x3 )
	lb x5, 0 ( x8 )
	addi x1, x1, -1
	addi x7, x8, 1
	addi x9, x3, 1
	sb x5, 0 ( x3 )
	sb x4, 0 ( x8 )
	add x8, x0, x7
	add x3, x0, x9
	bgt x1, x11, LBB0_63
	jalr x0, LBB0_66 ( x0 )
LBB0_64:                                //  %if.then.i486
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	add x3, x0, x12
LBB0_65:                                //  %do.body.i494
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x4, 0 ( x3 )
	lw x5, 0 ( x8 )
	addi x1, x1, -1
	addi x7, x8, 4
	addi x9, x3, 4
	sw x5, 0 ( x3 )
	sw x4, 0 ( x8 )
	add x3, x0, x9
	add x8, x0, x7
	bgt x1, x11, LBB0_65
LBB0_66:                                //  %if.end58
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	addi x10, x1, -1
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	add x1, x11, x12
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	call $__mulsi3
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	nop
	add x8, x10, x11
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x13, x0, x1
	add x10, x0, x1
	sw x8, 48 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
LBB0_67:                                //  %for.cond63
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_105 Depth 3
                                        //          Child Loop BB0_110 Depth 4
                                        //        Child Loop BB0_75 Depth 3
                                        //          Child Loop BB0_79 Depth 4
                                        //        Child Loop BB0_69 Depth 3
                                        //        Child Loop BB0_113 Depth 3
                                        //          Child Loop BB0_117 Depth 4
                                        //        Child Loop BB0_98 Depth 3
                                        //          Child Loop BB0_102 Depth 4
                                        //        Child Loop BB0_84 Depth 3
                                        //        Child Loop BB0_125 Depth 3
                                        //        Child Loop BB0_124 Depth 3
	bgtu x10, x8, LBB0_82
LBB0_68:                                //  %land.rhs65.lr.ph
                                        //    in Loop: Header=BB0_67 Depth=2
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_74
LBB0_69:                                //  %land.rhs65.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_67 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sw x13, 52 ( x2 )               //  4-byte Folded Spill
	sw x10, 64 ( x2 )               //  4-byte Folded Spill
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	bgt x10, x0, LBB0_106
LBB0_70:                                //  %while.body.us
                                        //    in Loop: Header=BB0_69 Depth=3
	slti x4, x0, 1
	lw x13, 52 ( x2 )               //  4-byte Folded Reload
	beqz x10, LBB0_72
LBB0_71:                                //    in Loop: Header=BB0_69 Depth=3
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_73 ( x0 )
LBB0_72:                                //  %if.then72.us
                                        //    in Loop: Header=BB0_69 Depth=3
	lw x1, 0 ( x13 )
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	nop
	lw x3, 0 ( x10 )
	nop
	sw x3, 0 ( x13 )
	sw x1, 0 ( x10 )
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	add x13, x1, x13
	sw x4, 44 ( x2 )                //  4-byte Folded Spill
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
LBB0_73:                                //  %if.end77.us
                                        //    in Loop: Header=BB0_69 Depth=3
	add x10, x1, x10
	bgeu x8, x10, LBB0_69
	jalr x0, LBB0_82 ( x0 )
LBB0_74:                                //  %land.rhs65.lr.ph.split
                                        //    in Loop: Header=BB0_67 Depth=2
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_105
LBB0_75:                                //  %land.rhs65.us720
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_67 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_79 Depth 4
	sw x13, 52 ( x2 )               //  4-byte Folded Spill
	sw x10, 64 ( x2 )               //  4-byte Folded Spill
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	bgt x10, x0, LBB0_106
LBB0_76:                                //  %while.body.us726
                                        //    in Loop: Header=BB0_75 Depth=3
	slti x12, x0, 1
	lw x13, 52 ( x2 )               //  4-byte Folded Reload
	beqz x10, LBB0_78
LBB0_77:                                //    in Loop: Header=BB0_75 Depth=3
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_81 ( x0 )
LBB0_78:                                //  %if.then.i505.us738
                                        //    in Loop: Header=BB0_75 Depth=3
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	add x3, x0, x0
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_79:                                //  %do.body.i513.us739
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_67 Depth=2
                                        //        Parent Loop BB0_75 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	add x4, x3, x10
	add x5, x3, x13
	lw x7, 0 ( x5 )
	lw x9, 0 ( x4 )
	addi x1, x1, -1
	addi x3, x3, 4
	sw x9, 0 ( x5 )
	sw x7, 0 ( x4 )
	bgt x1, x12, LBB0_79
LBB0_80:                                //  %if.end75.loopexit.us755
                                        //    in Loop: Header=BB0_75 Depth=3
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	add x13, x1, x13
	sw x12, 44 ( x2 )               //  4-byte Folded Spill
LBB0_81:                                //  %if.end77.us750
                                        //    in Loop: Header=BB0_75 Depth=3
	add x10, x1, x10
	bgeu x8, x10, LBB0_75
LBB0_82:                                //  %while.cond79.preheader
                                        //    in Loop: Header=BB0_67 Depth=2
	sw x10, 64 ( x2 )               //  4-byte Folded Spill
	sw x13, 52 ( x2 )               //  4-byte Folded Spill
	bgtu x10, x8, LBB0_89
LBB0_83:                                //  %land.rhs81.lr.ph
                                        //    in Loop: Header=BB0_67 Depth=2
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_97
LBB0_84:                                //  %land.rhs81.us
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_67 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x10, x0, x8
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	bgt x0, x10, LBB0_120
LBB0_85:                                //  %while.body85.us
                                        //    in Loop: Header=BB0_84 Depth=3
	beqz x10, LBB0_87
LBB0_86:                                //    in Loop: Header=BB0_84 Depth=3
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_88 ( x0 )
LBB0_87:                                //  %if.then89.us
                                        //    in Loop: Header=BB0_84 Depth=3
	lw x1, 0 ( x8 )
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 0 ( x4 )
	nop
	sw x3, 0 ( x8 )
	sw x1, 0 ( x4 )
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x1, x4
	sw x4, 48 ( x2 )                //  4-byte Folded Spill
	slti x3, x0, 1
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
LBB0_88:                                //  %if.end95.us
                                        //    in Loop: Header=BB0_84 Depth=3
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	add x8, x1, x8
	bgeu x8, x3, LBB0_84
LBB0_89:                                //  %for.end110
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $__mulsi3
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	nop
	add x13, x10, x12
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_138
LBB0_90:                                //  %for.cond114.preheader
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	ble x10, x1, LBB0_134
LBB0_91:                                //  %for.cond119.preheader.preheader
	add x1, x0, x0
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	add x8, x1, x12
	addi x1, x1, 1
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	sw x12, 28 ( x2 )               //  4-byte Folded Spill
	sw x13, 24 ( x2 )               //  4-byte Folded Spill
LBB0_92:                                //  %for.cond119.preheader
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_136 Depth 2
                                        //        Child Loop BB0_137 Depth 3
                                        //      Child Loop BB0_129 Depth 2
                                        //        Child Loop BB0_131 Depth 3
                                        //      Child Loop BB0_95 Depth 2
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	bgeu x12, x3, LBB0_133
LBB0_93:                                //  %land.rhs121.lr.ph
                                        //    in Loop: Header=BB0_92 Depth=1
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB0_127
LBB0_94:                                //  %land.rhs121.us.preheader
                                        //    in Loop: Header=BB0_92 Depth=1
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_95:                                //  %land.rhs121.us
                                        //    Parent Loop BB0_92 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x10, 64 ( x2 )               //  4-byte Folded Spill
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x1, x10
	sw x11, 52 ( x2 )               //  4-byte Folded Spill
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	lw x7, 64 ( x2 )                //  4-byte Folded Reload
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	ble x10, x0, LBB0_133
LBB0_96:                                //  %if.then129.us
                                        //    in Loop: Header=BB0_95 Depth=2
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x9 )
	lw x3, 0 ( x7 )
	lw x4, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x4, x7
	lw x5, 60 ( x2 )                //  4-byte Folded Reload
	nop
	add x5, x5, x4
	sw x3, 0 ( x9 )
	sw x1, 0 ( x7 )
	add x10, x0, x4
	bgtu x5, x12, LBB0_95
	jalr x0, LBB0_133 ( x0 )
LBB0_97:                                //  %land.rhs81.lr.ph.split
                                        //    in Loop: Header=BB0_67 Depth=2
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_113
LBB0_98:                                //  %land.rhs81.us772
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_67 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_102 Depth 4
	add x10, x0, x8
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	bgt x0, x10, LBB0_120
LBB0_99:                                //  %while.body85.us778
                                        //    in Loop: Header=BB0_98 Depth=3
	beqz x10, LBB0_101
LBB0_100:                               //    in Loop: Header=BB0_98 Depth=3
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_104 ( x0 )
LBB0_101:                               //  %if.then.i524.us790
                                        //    in Loop: Header=BB0_98 Depth=3
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	add x3, x0, x0
	slti x10, x0, 1
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_102:                               //  %do.body.i532.us791
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_67 Depth=2
                                        //        Parent Loop BB0_98 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	add x4, x3, x11
	add x5, x3, x8
	lw x7, 0 ( x5 )
	lw x9, 0 ( x4 )
	addi x1, x1, -1
	addi x3, x3, 4
	sw x9, 0 ( x5 )
	sw x7, 0 ( x4 )
	bgt x1, x10, LBB0_102
LBB0_103:                               //  %if.end92.loopexit.us807
                                        //    in Loop: Header=BB0_98 Depth=3
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x1, x11
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
LBB0_104:                               //  %if.end95.us802
                                        //    in Loop: Header=BB0_98 Depth=3
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	add x8, x1, x8
	bgtu x3, x8, LBB0_89
	jalr x0, LBB0_98 ( x0 )
LBB0_105:                               //  %land.rhs65
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_67 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_110 Depth 4
	sw x13, 52 ( x2 )               //  4-byte Folded Spill
	sw x10, 64 ( x2 )               //  4-byte Folded Spill
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	ble x10, x0, LBB0_107
LBB0_106:                               //    in Loop: Header=BB0_67 Depth=2
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	lw x13, 52 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_82 ( x0 )
LBB0_107:                               //  %while.body
                                        //    in Loop: Header=BB0_105 Depth=3
	slti x12, x0, 1
	lw x13, 52 ( x2 )               //  4-byte Folded Reload
	beqz x10, LBB0_109
LBB0_108:                               //    in Loop: Header=BB0_105 Depth=3
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_112 ( x0 )
LBB0_109:                               //  %do.body7.i521.preheader
                                        //    in Loop: Header=BB0_105 Depth=3
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	add x3, x0, x0
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_110:                               //  %do.body7.i521
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_67 Depth=2
                                        //        Parent Loop BB0_105 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	add x4, x3, x10
	add x5, x3, x13
	lb x7, 0 ( x5 )
	lb x9, 0 ( x4 )
	addi x1, x1, -1
	addi x3, x3, 1
	sb x9, 0 ( x5 )
	sb x7, 0 ( x4 )
	bgt x1, x12, LBB0_110
LBB0_111:                               //  %if.end75
                                        //    in Loop: Header=BB0_105 Depth=3
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	add x13, x1, x13
	sw x12, 44 ( x2 )               //  4-byte Folded Spill
LBB0_112:                               //  %if.end77
                                        //    in Loop: Header=BB0_105 Depth=3
	add x10, x1, x10
	bgtu x10, x8, LBB0_82
	jalr x0, LBB0_105 ( x0 )
LBB0_113:                               //  %land.rhs81
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_67 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB0_117 Depth 4
	add x10, x0, x8
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	bgt x0, x10, LBB0_120
LBB0_114:                               //  %while.body85
                                        //    in Loop: Header=BB0_113 Depth=3
	beqz x10, LBB0_116
LBB0_115:                               //    in Loop: Header=BB0_113 Depth=3
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_119 ( x0 )
LBB0_116:                               //  %do.body7.i540.preheader
                                        //    in Loop: Header=BB0_113 Depth=3
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	add x3, x0, x0
	slti x10, x0, 1
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_117:                               //  %do.body7.i540
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_67 Depth=2
                                        //        Parent Loop BB0_113 Depth=3
                                        //  =>      This Inner Loop Header: Depth=4
	add x4, x3, x11
	add x5, x3, x8
	lb x7, 0 ( x5 )
	lb x9, 0 ( x4 )
	addi x1, x1, -1
	addi x3, x3, 1
	sb x9, 0 ( x5 )
	sb x7, 0 ( x4 )
	bgt x1, x10, LBB0_117
LBB0_118:                               //  %if.end92
                                        //    in Loop: Header=BB0_113 Depth=3
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x1, x11
	sw x11, 48 ( x2 )               //  4-byte Folded Spill
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
LBB0_119:                               //  %if.end95
                                        //    in Loop: Header=BB0_113 Depth=3
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	add x8, x1, x8
	bgtu x3, x8, LBB0_89
	jalr x0, LBB0_113 ( x0 )
LBB0_120:                               //  %if.end101
                                        //    in Loop: Header=BB0_67 Depth=2
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	slti x12, x0, 1
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	bgtu x1, x0, LBB0_122
LBB0_121:                               //  %if.then103
                                        //    in Loop: Header=BB0_67 Depth=2
	lw x1, 0 ( x10 )
	lw x3, 0 ( x8 )
	nop
	sw x3, 0 ( x10 )
	sw x1, 0 ( x8 )
	jalr x0, LBB0_126 ( x0 )
LBB0_122:                               //  %if.else105
                                        //    in Loop: Header=BB0_67 Depth=2
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	add x3, x0, x8
	add x4, x0, x10
	lw x5, 32 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x5, LBB0_125
LBB0_123:                               //  %if.then.i543
                                        //    in Loop: Header=BB0_67 Depth=2
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	add x3, x0, x10
	add x4, x0, x8
LBB0_124:                               //  %do.body.i551
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_67 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lw x5, 0 ( x3 )
	lw x7, 0 ( x4 )
	addi x1, x1, -1
	addi x9, x4, 4
	addi x13, x3, 4
	sw x7, 0 ( x3 )
	sw x5, 0 ( x4 )
	add x3, x0, x13
	add x4, x0, x9
	bgt x1, x12, LBB0_124
	jalr x0, LBB0_126 ( x0 )
LBB0_125:                               //  %do.body7.i559
                                        //    Parent Loop BB0_4 Depth=1
                                        //      Parent Loop BB0_67 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lb x5, 0 ( x4 )
	lb x7, 0 ( x3 )
	addi x1, x1, -1
	addi x9, x3, 1
	addi x13, x4, 1
	sb x7, 0 ( x4 )
	sb x5, 0 ( x3 )
	add x3, x0, x9
	add x4, x0, x13
	bgt x1, x12, LBB0_125
LBB0_126:                               //  %if.end106
                                        //    in Loop: Header=BB0_67 Depth=2
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x8, x1, x8
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x1, x10
	sw x12, 44 ( x2 )               //  4-byte Folded Spill
	lw x13, 52 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_67 ( x0 )
LBB0_127:                               //  %land.rhs121.lr.ph.split
                                        //    in Loop: Header=BB0_92 Depth=1
	lw x13, 36 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB0_136
LBB0_128:                               //  %land.rhs121.us679.preheader
                                        //    in Loop: Header=BB0_92 Depth=1
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
LBB0_129:                               //  %land.rhs121.us679
                                        //    Parent Loop BB0_92 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_131 Depth 3
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x1, x11
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	slti x11, x0, 1
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	ble x10, x0, LBB0_133
LBB0_130:                               //  %if.then.i562.us694
                                        //    in Loop: Header=BB0_129 Depth=2
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	nop
	add x3, x0, x10
LBB0_131:                               //  %do.body.i570.us695
                                        //    Parent Loop BB0_92 Depth=1
                                        //      Parent Loop BB0_129 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x4, x3, x12
	add x5, x3, x8
	lw x7, 0 ( x5 )
	lw x9, 0 ( x4 )
	addi x1, x1, -1
	addi x3, x3, 4
	sw x9, 0 ( x5 )
	sw x7, 0 ( x4 )
	bgt x1, x11, LBB0_131
LBB0_132:                               //  %for.cond119.backedge.us707
                                        //    in Loop: Header=BB0_129 Depth=2
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sub x10, x10, x1
	sw x10, 64 ( x2 )               //  4-byte Folded Spill
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x1
	bgtu x1, x12, LBB0_129
LBB0_133:                               //  %for.inc143
                                        //    in Loop: Header=BB0_92 Depth=1
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x1, x3
	lw x4, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x1, x4
	sw x4, 28 ( x2 )                //  4-byte Folded Spill
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x1, x4
	sw x4, 36 ( x2 )                //  4-byte Folded Spill
	lw x13, 24 ( x2 )               //  4-byte Folded Reload
	nop
	bgtu x13, x3, LBB0_92
LBB0_134:                               //  %cleanup
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
LBB0_135:                               //  %for.cond119.backedge
                                        //    in Loop: Header=BB0_136 Depth=2
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sub x13, x13, x1
	lw x1, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x1
	bgeu x12, x1, LBB0_133
LBB0_136:                               //  %land.rhs121
                                        //    Parent Loop BB0_92 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_137 Depth 3
	sw x13, 64 ( x2 )               //  4-byte Folded Spill
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x1, x11
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	lw x1, 68 ( x2 )                //  4-byte Folded Reload
	nop
	call_reg x1
	lw x13, 64 ( x2 )               //  4-byte Folded Reload
	slti x11, x0, 1
	lw x12, 72 ( x2 )               //  4-byte Folded Reload
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	add x3, x0, x13
	ble x10, x0, LBB0_133
LBB0_137:                               //  %do.body7.i578
                                        //    Parent Loop BB0_92 Depth=1
                                        //      Parent Loop BB0_136 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x4, x3, x12
	add x5, x3, x8
	lb x7, 0 ( x5 )
	lb x9, 0 ( x4 )
	addi x1, x1, -1
	addi x3, x3, 1
	sb x9, 0 ( x5 )
	sb x7, 0 ( x4 )
	bgt x1, x11, LBB0_137
	j LBB0_135
LBB0_138:                               //  %if.end146
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x7, 52 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x7, x12
	lw x11, 64 ( x2 )               //  4-byte Folded Reload
	nop
	sub x10, x11, x7
	add x3, x0, x12
	bgt x10, x1, LBB0_140
LBB0_139:                               //  %if.end146
                                        //    in Loop: Header=BB0_4 Depth=1
	add x3, x0, x7
LBB0_140:                               //  %if.end146
                                        //    in Loop: Header=BB0_4 Depth=1
	slti x9, x0, 1
	bgt x10, x1, LBB0_142
LBB0_141:                               //  %if.end146
                                        //    in Loop: Header=BB0_4 Depth=1
	add x7, x0, x11
LBB0_142:                               //  %if.end146
                                        //    in Loop: Header=BB0_4 Depth=1
	sub x4, x7, x3
	beqz x4, LBB0_148
LBB0_143:                               //  %if.then166
                                        //    in Loop: Header=BB0_4 Depth=1
	sub x1, x11, x4
	lw x5, 32 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x5, x0, LBB0_146
LBB0_144:                               //  %do.body7.i597.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x4, x7, 1
	sub x3, x4, x3
	add x4, x0, x12
LBB0_145:                               //  %do.body7.i597
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lb x5, 0 ( x4 )
	lb x7, 0 ( x1 )
	nop
	sb x7, 0 ( x4 )
	sb x5, 0 ( x1 )
	addi x1, x1, 1
	addi x4, x4, 1
	addi x3, x3, -1
	bgt x3, x9, LBB0_145
	jalr x0, LBB0_148 ( x0 )
LBB0_146:                               //  %if.then.i581
                                        //    in Loop: Header=BB0_4 Depth=1
	srli x3, x4, 2
	addi x3, x3, 1
	add x4, x0, x12
LBB0_147:                               //  %do.body.i589
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x5, 0 ( x4 )
	lw x7, 0 ( x1 )
	nop
	sw x7, 0 ( x4 )
	sw x5, 0 ( x1 )
	addi x1, x1, 4
	addi x4, x4, 4
	addi x3, x3, -1
	bgt x3, x9, LBB0_147
LBB0_148:                               //  %if.end169
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x13, x4
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	sub x7, x4, x8
	add x3, x0, x7
	bgtu x1, x7, LBB0_150
LBB0_149:                               //  %if.end169
                                        //    in Loop: Header=BB0_4 Depth=1
	add x3, x0, x1
LBB0_150:                               //  %if.end169
                                        //    in Loop: Header=BB0_4 Depth=1
	beqz x3, LBB0_156
LBB0_151:                               //  %if.then190
                                        //    in Loop: Header=BB0_4 Depth=1
	sub x1, x13, x3
	lw x4, 32 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x4, x0, LBB0_154
LBB0_152:                               //  %do.body7.i616.preheader
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x3, x3, 1
LBB0_153:                               //  %do.body7.i616
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lb x4, 0 ( x11 )
	lb x5, 0 ( x1 )
	nop
	sb x5, 0 ( x11 )
	sb x4, 0 ( x1 )
	addi x1, x1, 1
	addi x11, x11, 1
	addi x3, x3, -1
	bgt x3, x9, LBB0_153
	jalr x0, LBB0_156 ( x0 )
LBB0_154:                               //  %if.then.i600
                                        //    in Loop: Header=BB0_4 Depth=1
	srli x3, x3, 2
	addi x3, x3, 1
LBB0_155:                               //  %do.body.i608
                                        //    Parent Loop BB0_4 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x4, 0 ( x11 )
	lw x5, 0 ( x1 )
	nop
	sw x5, 0 ( x11 )
	sw x4, 0 ( x1 )
	addi x1, x1, 4
	addi x11, x11, 4
	addi x3, x3, -1
	bgt x3, x9, LBB0_155
LBB0_156:                               //  %if.end193
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	nop
	bgeu x8, x10, LBB0_158
LBB0_157:                               //  %if.then198
                                        //    in Loop: Header=BB0_4 Depth=1
	add x11, x0, x8
	sw x12, 72 ( x2 )               //  4-byte Folded Spill
	sw x13, 24 ( x2 )               //  4-byte Folded Spill
	sw x7, 64 ( x2 )                //  4-byte Folded Spill
	call $__udivsi3
	add x1, x0, x10
	lw x10, 72 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	add x12, x0, x8
	lw x13, 68 ( x2 )               //  4-byte Folded Reload
	nop
	call $qsort
	lw x7, 64 ( x2 )                //  4-byte Folded Reload
	lw x13, 24 ( x2 )               //  4-byte Folded Reload
LBB0_158:                               //  %if.end200
                                        //    in Loop: Header=BB0_4 Depth=1
	bgeu x8, x7, LBB0_134
LBB0_159:                               //  %if.then205
                                        //    in Loop: Header=BB0_4 Depth=1
	sub x1, x13, x7
	sw x1, 72 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x7
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x0, x8
	call $__udivsi3
	add x5, x0, x10
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	or x1, x8, x1
	andi x1, x1, 3
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x0
	beq x1, x3, LBB0_161
LBB0_160:                               //  %if.then205
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x3, x0, 2
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
LBB0_161:                               //  %if.then205
                                        //    in Loop: Header=BB0_4 Depth=1
	seqz x1, x1
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	sltiu x1, x5, 7
	beqz x1, LBB0_4
	jalr x0, LBB0_7 ( x0 )
$func_end0:
	.size	$qsort, ($func_end0)-($qsort)
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
