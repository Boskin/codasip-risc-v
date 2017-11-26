	.text
	.file	"k_rem_pio2.bc"
	.globl	$__kernel_rem_pio2
	.type	$__kernel_rem_pio2,@function
$__kernel_rem_pio2:                     //  @__kernel_rem_pio2
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -680
$cfi2:
	.cfi_adjust_cfa_offset 680
	sw x1, 676 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 668 ( x2 )               //  4-byte Folded Spill
	sw x15, 52 ( x2 )               //  4-byte Folded Spill
	sw x13, 64 ( x2 )               //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	sw x10, 60 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x12
	ori x28, x0, $init_jk & 0xfff
	slli x28, x28, 20
	lui x1, $init_jk >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x14, 8 ( x2 )                //  4-byte Folded Spill
	slli x3, x14, 2
	add x1, x1, x3
	sw x1, 100 ( x2 )               //  4-byte Folded Spill
	addi x10, x8, -3
	addi x11, x0, 24
	call $__divsi3
	add x1, x0, x0
	bgt x10, x1, LBB0_2
LBB0_1:                                 //  %entry
	add x10, x0, x1
LBB0_2:                                 //  %entry
	addi x11, x0, -24
	sw x10, 56 ( x2 )               //  4-byte Folded Spill
	call $__mulsi3
	add x1, x10, x8
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	lw x1, 100 ( x2 )               //  4-byte Folded Reload
	nop
	lw x4, 0 ( x1 )
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	sw x1, 88 ( x2 )                //  4-byte Folded Spill
	add x1, x1, x4
	sw x4, 72 ( x2 )                //  4-byte Folded Spill
	bgt x0, x1, LBB0_6
LBB0_3:                                 //  %for.body.preheader
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	nop
	sub x5, x1, x3
	slli x1, x5, 2
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x1, x3
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x4
	addi x8, x2, 424
LBB0_4:                                 //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	bgez x5, LBB0_19
LBB0_5:                                 //    in Loop: Header=BB0_4 Depth=1
	add x7, x0, x0
	add x11, x0, x7
	add x10, x0, x7
	jalr x0, LBB0_20 ( x0 )
LBB0_6:                                 //  %for.cond14.preheader.lr.ph
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -24
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x1, x0, LBB0_15
LBB0_7:                                 //  %for.cond14.preheader.preheader
	not x1, x0
	addi x3, x2, 104
LBB0_8:                                 //  %for.cond14.preheader
                                        //  =>This Inner Loop Header: Depth=1
	addi x1, x1, 1
	sw x0, 4 ( x3 )
	sw x0, 0 ( x3 )
	addi x3, x3, 8
	bgt x4, x1, LBB0_8
LBB0_9:                                 //  %recompute.preheader
	slli x1, x4, 2
	addi x3, x2, 588
	add x1, x1, x3
	addi x3, x0, 23
	addi x5, x2, 104
	lw x7, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x3, x7
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	addi x3, x0, 24
	sub x3, x3, x7
	sw x3, 28 ( x2 )                //  4-byte Folded Spill
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 4
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	addi x1, x1, -4
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	addi x1, x5, -8
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
LBB0_10:                                //  %recompute
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_12 Depth 2
                                        //      Child Loop BB0_29 Depth 2
                                        //      Child Loop BB0_47 Depth 2
                                        //      Child Loop BB0_52 Depth 2
                                        //      Child Loop BB0_56 Depth 2
                                        //      Child Loop BB0_58 Depth 2
                                        //        Child Loop BB0_59 Depth 3
	slli x7, x4, 3
	addi x1, x2, 104
	add x1, x7, x1
	ori x3, x1, 4
	lw x11, 0 ( x3 )
	lw x10, 0 ( x1 )
	sw x4, 76 ( x2 )                //  4-byte Folded Spill
	sw x7, 44 ( x2 )                //  4-byte Folded Spill
	ble x4, x0, LBB0_13
LBB0_11:                                //  %for.body35.preheader
                                        //    in Loop: Header=BB0_10 Depth=1
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x7, x1
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	addi x3, x4, 1
	addi x1, x2, 588
	sw x1, 100 ( x2 )               //  4-byte Folded Spill
LBB0_12:                                //  %for.body35
                                        //    Parent Loop BB0_10 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x3, 92 ( x2 )                //  4-byte Folded Spill
	sw x10, 88 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	add x1, x0, x0
	add x12, x0, x1
	lui x13, 1047527424>>12 &0xfffff
	call $__muldf3
	call $__fixdfsi
	call $__floatsidf
	sw x10, 80 ( x2 )               //  4-byte Folded Spill
	sw x11, 84 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, -1049624576 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -1049624576 >> 12 & 0xfffff
	or x13, x1, x28
	add x12, x0, x0
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	call $__fixdfsi
	lw x1, 100 ( x2 )               //  4-byte Folded Reload
	nop
	sw x10, 0 ( x1 )
	lw x8, 96 ( x2 )                //  4-byte Folded Reload
	nop
	lw x12, 0 ( x8 )
	lw x13, 4 ( x8 )
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	nop
	call $__adddf3
	lw x3, 92 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, -1
	lw x1, 100 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, 4
	sw x1, 100 ( x2 )               //  4-byte Folded Spill
	addi x8, x8, -8
	sw x8, 96 ( x2 )                //  4-byte Folded Spill
	slti x1, x0, 1
	bgt x3, x1, LBB0_12
LBB0_13:                                //  %for.end48
                                        //    in Loop: Header=BB0_10 Depth=1
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $scalbn
	sw x10, 100 ( x2 )              //  4-byte Folded Spill
	sw x11, 96 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x0
	add x12, x0, x8
	lui x13, 1069547520>>12 &0xfffff
	call $__muldf3
	call $floor
	ori x28, x0, -1071644672 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -1071644672 >> 12 & 0xfffff
	or x13, x1, x28
	add x12, x0, x8
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 96 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	add x8, x0, x10
	sw x11, 100 ( x2 )              //  4-byte Folded Spill
	call $__fixdfsi
	sw x10, 80 ( x2 )               //  4-byte Folded Spill
	call $__floatsidf
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	add x17, x0, x10
	add x16, x0, x11
	ble x1, x0, LBB0_21
LBB0_14:                                //  %if.then58
                                        //    in Loop: Header=BB0_10 Depth=1
	lw x8, 76 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x8, 2
	addi x3, x2, 588
	add x1, x1, x3
	lw x3, -4 ( x1 )
	lw x5, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sra x4, x3, x5
	sll x5, x4, x5
	sub x3, x3, x5
	sw x3, -4 ( x1 )
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sra x15, x3, x1
	lw x1, 80 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x4
	add x9, x0, x1
	jalr x0, LBB0_23 ( x0 )
LBB0_15:                                //  %for.cond14.preheader.us.preheader
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 3
	addi x3, x2, 424
	add x3, x1, x3
	add x1, x0, x0
LBB0_16:                                //  %for.cond14.preheader.us
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_17 Depth 2
	sw x1, 80 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	add x11, x0, x1
	add x10, x0, x1
	sw x3, 84 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x3
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
LBB0_17:                                //  %for.body17.us
                                        //    Parent Loop BB0_16 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x10, 88 ( x2 )               //  4-byte Folded Spill
	sw x11, 92 ( x2 )               //  4-byte Folded Spill
	sw x3, 96 ( x2 )                //  4-byte Folded Spill
	sw x1, 100 ( x2 )               //  4-byte Folded Spill
	lw x10, 0 ( x8 )
	lw x11, 4 ( x8 )
	lw x12, 0 ( x1 )
	lw x13, 4 ( x1 )
	nop
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	lw x1, 100 ( x2 )               //  4-byte Folded Reload
	addi x3, x3, -1
	addi x8, x8, 8
	addi x1, x1, -8
	bgtu x3, x0, LBB0_17
LBB0_18:                                //  %for.cond14.for.end26_crit_edge.us
                                        //    in Loop: Header=BB0_16 Depth=1
	lw x5, 80 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x5, 3
	addi x3, x2, 104
	add x1, x1, x3
	ori x3, x1, 4
	sw x10, 0 ( x1 )
	sw x11, 0 ( x3 )
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 8
	addi x1, x5, 1
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	nop
	ble x4, x5, LBB0_9
	jalr x0, LBB0_16 ( x0 )
LBB0_19:                                //  %cond.false
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x10, 0 ( x3 )
	sw x5, 100 ( x2 )               //  4-byte Folded Spill
	sw x3, 96 ( x2 )                //  4-byte Folded Spill
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	call $__floatsidf
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	lw x5, 100 ( x2 )               //  4-byte Folded Reload
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
LBB0_20:                                //  %cond.end
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x1, x1, -1
	sw x10, 0 ( x8 )
	sw x11, 4 ( x8 )
	addi x8, x8, 8
	addi x3, x3, 4
	addi x5, x5, 1
	bgtu x1, x0, LBB0_4
	jalr x0, LBB0_6 ( x0 )
LBB0_21:                                //  %if.else
                                        //    in Loop: Header=BB0_10 Depth=1
	lw x8, 76 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB0_25
LBB0_22:                                //  %if.then73
                                        //    in Loop: Header=BB0_10 Depth=1
	slli x1, x8, 2
	addi x3, x2, 588
	add x1, x1, x3
	lw x1, -4 ( x1 )
	nop
	srai x15, x1, 23
	lw x9, 80 ( x2 )                //  4-byte Folded Reload
LBB0_23:                                //  %if.end83
                                        //    in Loop: Header=BB0_10 Depth=1
	lui x13, 16777215 >> 12 & 0xfffff
	bgt x15, x0, LBB0_27
LBB0_24:                                //    in Loop: Header=BB0_10 Depth=1
	sw x15, 40 ( x2 )               //  4-byte Folded Spill
	sw x9, 80 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_44 ( x0 )
LBB0_25:                                //  %if.else77
                                        //    in Loop: Header=BB0_10 Depth=1
	add x10, x0, x17
	add x11, x0, x16
	add x12, x0, x0
	lui x13, 1071644672>>12 &0xfffff
	sw x16, 100 ( x2 )              //  4-byte Folded Spill
	sw x17, 96 ( x2 )               //  4-byte Folded Spill
	call $__gedf2
	lw x17, 96 ( x2 )               //  4-byte Folded Reload
	lw x16, 100 ( x2 )              //  4-byte Folded Reload
	addi x15, x0, 2
	lw x9, 80 ( x2 )                //  4-byte Folded Reload
	lui x13, 16777215 >> 12 & 0xfffff
	bgez x10, LBB0_27
LBB0_26:                                //    in Loop: Header=BB0_10 Depth=1
	add x1, x0, x0
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB0_44 ( x0 )
LBB0_27:                                //  %if.then86
                                        //    in Loop: Header=BB0_10 Depth=1
	add x1, x0, x8
	add x10, x0, x0
	add x8, x0, x10
	slti x12, x0, 1
	lui x14, 16777216>>12 &0xfffff
	ble x1, x0, LBB0_33
LBB0_28:                                //  %for.body91.preheader
                                        //    in Loop: Header=BB0_10 Depth=1
	add x4, x0, x10
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	addi x3, x2, 588
LBB0_29:                                //  %for.body91
                                        //    Parent Loop BB0_10 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	ori x28, x0, 16777215 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x7, x13, x28
	lw x5, 0 ( x3 )
	bgtu x4, x0, LBB0_31
LBB0_30:                                //  %if.then95
                                        //    in Loop: Header=BB0_29 Depth=2
	add x4, x0, x12
	add x7, x0, x14
	add x8, x0, x10
	beqz x5, LBB0_32
LBB0_31:                                //  %if.end105.sink.split
                                        //    in Loop: Header=BB0_29 Depth=2
	sub x5, x7, x5
	sw x5, 0 ( x3 )
	add x8, x0, x4
LBB0_32:                                //  %for.inc106
                                        //    in Loop: Header=BB0_29 Depth=2
	addi x1, x1, -1
	addi x3, x3, 4
	add x4, x0, x8
	bgtu x1, x0, LBB0_29
LBB0_33:                                //  %for.end108
                                        //    in Loop: Header=BB0_10 Depth=1
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
	lui x11, 1072693248>>12 &0xfffff
	ble x4, x0, LBB0_38
LBB0_34:                                //  %if.then111
                                        //    in Loop: Header=BB0_10 Depth=1
	ori x28, x0, 8388607 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	xori x3, x4, 1
	lui x1, 8388607 >> 12 & 0xfffff
	or x1, x1, x28
	beqz x3, LBB0_37
LBB0_35:                                //  %if.then111
                                        //    in Loop: Header=BB0_10 Depth=1
	xori x1, x4, 2
	bgtu x1, x0, LBB0_38
LBB0_36:                                //  %sw.bb114
                                        //    in Loop: Header=BB0_10 Depth=1
	ori x28, x0, 4194303 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 4194303 >> 12 & 0xfffff
	or x1, x1, x28
LBB0_37:                                //  %sw.epilog.sink.split
                                        //    in Loop: Header=BB0_10 Depth=1
	lw x3, 76 ( x2 )                //  4-byte Folded Reload
	nop
	slli x3, x3, 2
	addi x4, x2, 588
	add x3, x3, x4
	lw x4, -4 ( x3 )
	nop
	and x1, x1, x4
	sw x1, -4 ( x3 )
LBB0_38:                                //  %if.end118
                                        //    in Loop: Header=BB0_10 Depth=1
	xori x1, x15, 2
	addi x9, x9, 1
	sw x9, 80 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB0_40
LBB0_39:                                //    in Loop: Header=BB0_10 Depth=1
	sw x15, 40 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB0_43 ( x0 )
LBB0_40:                                //  %if.then121
                                        //    in Loop: Header=BB0_10 Depth=1
	add x12, x0, x17
	add x13, x0, x16
	call $__subdf3
	add x17, x0, x10
	add x16, x0, x11
	beqz x8, LBB0_42
LBB0_41:                                //  %if.then125
                                        //    in Loop: Header=BB0_10 Depth=1
	add x10, x0, x0
	lui x11, 1072693248>>12 &0xfffff
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
	sw x16, 100 ( x2 )              //  4-byte Folded Spill
	add x8, x0, x17
	call $scalbn
	add x1, x0, x10
	add x3, x0, x11
	add x10, x0, x8
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	add x16, x0, x11
	add x17, x0, x10
LBB0_42:                                //  %if.end130
                                        //    in Loop: Header=BB0_10 Depth=1
	addi x1, x0, 2
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
LBB0_43:                                //  %if.end130
                                        //    in Loop: Header=BB0_10 Depth=1
	lw x8, 76 ( x2 )                //  4-byte Folded Reload
LBB0_44:                                //  %if.end130
                                        //    in Loop: Header=BB0_10 Depth=1
	sw x17, 96 ( x2 )               //  4-byte Folded Spill
	sw x16, 100 ( x2 )              //  4-byte Folded Spill
	add x10, x0, x17
	add x11, x0, x16
	add x12, x0, x0
	add x13, x0, x12
	call $__nedf2
	bgtu x10, x0, LBB0_61
LBB0_45:                                //  %for.cond135.preheader
                                        //    in Loop: Header=BB0_10 Depth=1
	lw x9, 72 ( x2 )                //  4-byte Folded Reload
	add x10, x0, x0
	ble x8, x9, LBB0_51
LBB0_46:                                //  %for.body138.preheader
                                        //    in Loop: Header=BB0_10 Depth=1
	slli x1, x8, 2
	addi x3, x2, 584
	add x4, x1, x3
	add x3, x0, x10
	add x5, x0, x8
LBB0_47:                                //  %for.body138
                                        //    Parent Loop BB0_10 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x7, 0 ( x4 )
	addi x5, x5, -1
	addi x4, x4, -4
	or x3, x3, x7
	bgt x5, x9, LBB0_47
LBB0_48:                                //  %for.end142
                                        //    in Loop: Header=BB0_10 Depth=1
	beqz x3, LBB0_51
LBB0_49:                                //  %while.cond.preheader
	addi x3, x2, 588
	add x1, x1, x3
	addi x1, x1, -4
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
LBB0_50:                                //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x3, 0 ( x1 )
	addi x1, x1, -4
	addi x8, x8, -1
	addi x12, x12, -24
	beqz x3, LBB0_50
	jalr x0, LBB0_65 ( x0 )
LBB0_51:                                //  %for.cond146.preheader
                                        //    in Loop: Header=BB0_10 Depth=1
	add x1, x0, x10
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_52:                                //  %for.cond146
                                        //    Parent Loop BB0_10 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lw x4, 0 ( x3 )
	addi x3, x3, -4
	addi x1, x1, 1
	beqz x4, LBB0_52
LBB0_53:                                //  %for.cond156.preheader
                                        //    in Loop: Header=BB0_10 Depth=1
	add x4, x1, x8
	ble x1, x0, LBB0_10
LBB0_54:                                //  %for.body160.lr.ph
                                        //    in Loop: Header=BB0_10 Depth=1
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	sw x4, 68 ( x2 )                //  4-byte Folded Spill
	bgt x3, x0, LBB0_57
LBB0_55:                                //  %for.body160.preheader
                                        //    in Loop: Header=BB0_10 Depth=1
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x8, x1
	add x3, x8, x3
	slli x1, x1, 2
	slli x3, x3, 3
	lw x4, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x5, x1, x4
	addi x1, x2, 112
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	nop
	add x7, x4, x1
	add x9, x0, x8
	addi x1, x2, 424
	add x8, x3, x1
LBB0_56:                                //  %for.body160
                                        //    Parent Loop BB0_10 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x9, 76 ( x2 )                //  4-byte Folded Spill
	sw x7, 96 ( x2 )                //  4-byte Folded Spill
	sw x5, 100 ( x2 )               //  4-byte Folded Spill
	lw x10, 0 ( x5 )
	nop
	call $__floatsidf
	lw x9, 76 ( x2 )                //  4-byte Folded Reload
	lw x7, 96 ( x2 )                //  4-byte Folded Reload
	lw x5, 100 ( x2 )               //  4-byte Folded Reload
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	addi x9, x9, 1
	sw x11, 4 ( x8 )
	sw x0, 4 ( x7 )
	sw x10, 0 ( x8 )
	addi x5, x5, 4
	sw x0, 0 ( x7 )
	addi x7, x7, 8
	addi x8, x8, 8
	bgt x4, x9, LBB0_56
	jalr x0, LBB0_10 ( x0 )
LBB0_57:                                //  %for.body160.us.preheader
                                        //    in Loop: Header=BB0_10 Depth=1
	add x1, x8, x3
	slli x3, x1, 3
	addi x1, x8, 1
	addi x4, x2, 424
	add x3, x3, x4
LBB0_58:                                //  %for.body160.us
                                        //    Parent Loop BB0_10 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_59 Depth 3
	sw x8, 76 ( x2 )                //  4-byte Folded Spill
	add x4, x0, x1
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	sw x4, 80 ( x2 )                //  4-byte Folded Spill
	add x1, x1, x4
	slli x1, x1, 2
	add x8, x0, x3
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	lw x10, 0 ( x1 )
	nop
	call $__floatsidf
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x4, x1
	slli x1, x1, 3
	addi x3, x2, 424
	add x1, x1, x3
	ori x3, x1, 4
	sw x11, 0 ( x3 )
	sw x10, 0 ( x1 )
	add x1, x0, x0
	add x11, x0, x1
	add x10, x0, x1
	add x1, x0, x4
	sw x8, 84 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x8
	lw x8, 60 ( x2 )                //  4-byte Folded Reload
LBB0_59:                                //  %for.body169.us
                                        //    Parent Loop BB0_10 Depth=1
                                        //      Parent Loop BB0_58 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sw x10, 88 ( x2 )               //  4-byte Folded Spill
	sw x11, 92 ( x2 )               //  4-byte Folded Spill
	sw x3, 96 ( x2 )                //  4-byte Folded Spill
	sw x1, 100 ( x2 )               //  4-byte Folded Spill
	lw x10, 0 ( x8 )
	lw x11, 4 ( x8 )
	lw x12, 0 ( x3 )
	lw x13, 4 ( x3 )
	nop
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	lw x1, 100 ( x2 )               //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	addi x8, x8, 8
	addi x3, x3, -8
	bgtu x1, x0, LBB0_59
LBB0_60:                                //  %for.cond166.for.end178_crit_edge.us
                                        //    in Loop: Header=BB0_58 Depth=2
	lw x5, 80 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x5, 3
	addi x3, x2, 104
	add x1, x1, x3
	ori x3, x1, 4
	sw x10, 0 ( x1 )
	sw x11, 0 ( x3 )
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 8
	addi x1, x5, 1
	add x8, x0, x5
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	nop
	ble x4, x5, LBB0_10
	jalr x0, LBB0_58 ( x0 )
LBB0_61:                                //  %if.else196
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	sub x12, x0, x1
	lw x10, 96 ( x2 )               //  4-byte Folded Reload
	lw x11, 100 ( x2 )              //  4-byte Folded Reload
	nop
	call $scalbn
	add x12, x0, x0
	lui x13, 1097859072>>12 &0xfffff
	sw x10, 100 ( x2 )              //  4-byte Folded Spill
	add x8, x0, x11
	call $__gedf2
	bgez x10, LBB0_63
LBB0_62:
	add x11, x0, x8
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x8, 76 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_64 ( x0 )
LBB0_63:                                //  %if.then201
	add x12, x0, x0
	lui x13, 1047527424>>12 &0xfffff
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	sw x8, 96 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	call $__muldf3
	call $__fixdfsi
	call $__floatsidf
	sw x10, 92 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	ori x28, x0, -1049624576 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, -1049624576 >> 12 & 0xfffff
	or x13, x1, x28
	add x12, x0, x0
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 96 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	call $__fixdfsi
	add x11, x0, x8
	lw x8, 76 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x8, 2
	addi x3, x2, 588
	add x1, x1, x3
	sw x10, 0 ( x1 )
	lw x10, 92 ( x2 )               //  4-byte Folded Reload
	addi x8, x8, 1
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
LBB0_64:                                //  %if.end216
	call $__fixdfsi
	slli x1, x8, 2
	addi x3, x2, 588
	add x1, x1, x3
	sw x10, 0 ( x1 )
	lw x12, 48 ( x2 )               //  4-byte Folded Reload
LBB0_65:                                //  %if.end217
	add x10, x0, x0
	lui x11, 1072693248>>12 &0xfffff
	call $scalbn
	sw x8, 76 ( x2 )                //  4-byte Folded Spill
	bgt x0, x8, LBB0_74
LBB0_66:                                //  %for.body222.preheader
	slli x7, x8, 3
	slli x1, x8, 2
	addi x3, x2, 588
	add x4, x0, x8
	addi x5, x2, 104
	sw x7, 84 ( x2 )                //  4-byte Folded Spill
	add x8, x7, x5
	add x1, x1, x3
	addi x3, x4, 1
LBB0_67:                                //  %for.body222
                                        //  =>This Inner Loop Header: Depth=1
	sw x11, 96 ( x2 )               //  4-byte Folded Spill
	sw x10, 100 ( x2 )              //  4-byte Folded Spill
	sw x3, 88 ( x2 )                //  4-byte Folded Spill
	sw x1, 92 ( x2 )                //  4-byte Folded Spill
	lw x10, 0 ( x1 )
	nop
	call $__floatsidf
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 96 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__muldf3
	sw x11, 4 ( x8 )
	sw x10, 0 ( x8 )
	lw x10, 100 ( x2 )              //  4-byte Folded Reload
	lw x11, 96 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	lui x13, 1047527424>>12 &0xfffff
	call $__muldf3
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	lw x1, 92 ( x2 )                //  4-byte Folded Reload
	addi x3, x3, -1
	addi x8, x8, -8
	addi x1, x1, -4
	bgt x3, x0, LBB0_67
LBB0_68:                                //  %for.cond231.preheader
	lw x8, 76 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x0, x8, LBB0_74
LBB0_69:                                //  %for.body241.preheader.preheader
	addi x1, x2, 104
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x4, x3, x1
	add x1, x0, x8
LBB0_70:                                //  %for.body241.preheader
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_71 Depth 2
	ori x28, x0, $PIo2 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	sub x1, x8, x1
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	lui x1, $PIo2 >> 12 & 0xfffff
	or x5, x1, x28
	add x1, x0, x0
	add x3, x0, x1
	add x11, x0, x3
	add x10, x0, x3
	sw x4, 68 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x4
LBB0_71:                                //  %for.body241
                                        //    Parent Loop BB0_70 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x10, 88 ( x2 )               //  4-byte Folded Spill
	sw x11, 92 ( x2 )               //  4-byte Folded Spill
	sw x5, 100 ( x2 )               //  4-byte Folded Spill
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	lw x10, 0 ( x5 )
	lw x11, 4 ( x5 )
	lw x12, 0 ( x8 )
	lw x13, 4 ( x8 )
	nop
	call $__muldf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 88 ( x2 )               //  4-byte Folded Reload
	lw x11, 92 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	lw x4, 96 ( x2 )                //  4-byte Folded Reload
	lw x5, 100 ( x2 )               //  4-byte Folded Reload
	lw x1, 72 ( x2 )                //  4-byte Folded Reload
	nop
	ble x1, x4, LBB0_73
LBB0_72:                                //  %for.body241
                                        //    in Loop: Header=BB0_71 Depth=2
	addi x8, x8, 8
	addi x5, x5, 8
	addi x1, x4, 1
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x3, x4, LBB0_71
LBB0_73:                                //  %for.end249
                                        //    in Loop: Header=BB0_70 Depth=1
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x1, 3
	addi x3, x2, 264
	add x1, x1, x3
	ori x3, x1, 4
	sw x10, 0 ( x1 )
	sw x11, 0 ( x3 )
	lw x4, 68 ( x2 )                //  4-byte Folded Reload
	nop
	addi x4, x4, -8
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x3, -1
	lw x8, 76 ( x2 )                //  4-byte Folded Reload
	bgt x3, x0, LBB0_70
LBB0_74:                                //  %for.end254
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	addi x1, x3, -1
	sltiu x1, x1, 2
	bgtu x1, x0, LBB0_79
LBB0_75:                                //  %for.end254
	beqz x3, LBB0_81
LBB0_76:                                //  %for.end254
	xori x1, x3, 3
	lw x4, 80 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB0_117
LBB0_77:                                //  %for.cond311.preheader
	bgt x8, x0, LBB0_112
LBB0_78:
	add x9, x0, x0
	add x11, x0, x9
	jalr x0, LBB0_110 ( x0 )
LBB0_79:                                //  %for.cond274.preheader
	add x3, x0, x0
	bgez x8, LBB0_90
LBB0_80:
	add x5, x0, x3
	jalr x0, LBB0_92 ( x0 )
LBB0_81:                                //  %for.cond256.preheader
	add x3, x0, x0
	bgez x8, LBB0_83
LBB0_82:
	add x5, x0, x3
	jalr x0, LBB0_85 ( x0 )
LBB0_83:                                //  %for.body259.preheader
	add x5, x0, x0
	slli x1, x8, 3
	addi x3, x2, 264
	add x4, x0, x8
	add x8, x1, x3
	addi x1, x4, 1
	add x3, x0, x5
LBB0_84:                                //  %for.body259
                                        //  =>This Inner Loop Header: Depth=1
	sw x1, 100 ( x2 )               //  4-byte Folded Spill
	lw x12, 0 ( x8 )
	lw x13, 4 ( x8 )
	add x10, x0, x3
	add x11, x0, x5
	call $__adddf3
	lw x1, 100 ( x2 )               //  4-byte Folded Reload
	add x3, x0, x10
	add x5, x0, x11
	addi x1, x1, -1
	addi x8, x8, -8
	bgt x1, x0, LBB0_84
LBB0_85:                                //  %for.end264
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x8, x0, x0
	add x10, x0, x8
	sw x3, 100 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x3
	sw x5, 96 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x5
	call $__subdf3
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	beq x1, x8, LBB0_87
LBB0_86:                                //  %for.end264
	sw x11, 96 ( x2 )               //  4-byte Folded Spill
LBB0_87:                                //  %for.end264
	lw x7, 12 ( x2 )                //  4-byte Folded Reload
	lw x4, 80 ( x2 )                //  4-byte Folded Reload
	lw x9, 100 ( x2 )               //  4-byte Folded Reload
	beq x1, x8, LBB0_89
LBB0_88:                                //  %for.end264
	add x9, x0, x10
LBB0_89:                                //  %for.end264
	lw x11, 96 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_116 ( x0 )
LBB0_90:                                //  %for.body277.preheader
	add x5, x0, x0
	slli x1, x8, 3
	addi x3, x2, 264
	add x4, x0, x8
	add x8, x1, x3
	addi x1, x4, 1
	add x3, x0, x5
LBB0_91:                                //  %for.body277
                                        //  =>This Inner Loop Header: Depth=1
	sw x1, 100 ( x2 )               //  4-byte Folded Spill
	lw x12, 0 ( x8 )
	lw x13, 4 ( x8 )
	add x10, x0, x3
	add x11, x0, x5
	call $__adddf3
	lw x1, 100 ( x2 )               //  4-byte Folded Reload
	add x3, x0, x10
	add x5, x0, x11
	addi x1, x1, -1
	addi x8, x8, -8
	bgt x1, x0, LBB0_91
LBB0_92:                                //  %for.end282
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	or x11, x1, x28
	add x1, x0, x0
	add x10, x0, x1
	add x12, x0, x3
	sw x5, 100 ( x2 )               //  4-byte Folded Spill
	add x13, x0, x5
	add x8, x0, x3
	call $__subdf3
	add x12, x0, x8
	add x1, x0, x12
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	add x3, x0, x0
	beq x5, x3, LBB0_94
LBB0_93:                                //  %for.end282
	add x1, x0, x10
LBB0_94:                                //  %for.end282
	lw x13, 100 ( x2 )              //  4-byte Folded Reload
	nop
	add x3, x0, x13
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
	lw x8, 76 ( x2 )                //  4-byte Folded Reload
	add x7, x0, x0
	beq x5, x7, LBB0_96
LBB0_95:                                //  %for.end282
	add x3, x0, x11
LBB0_96:                                //  %for.end282
	sw x3, 4 ( x4 )
	sw x1, 0 ( x4 )
	addi x1, x2, 264
	ori x1, x1, 4
	lw x11, 0 ( x1 )
	lw x10, 264 ( x2 )
	nop
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	ble x8, x0, LBB0_99
LBB0_97:                                //  %for.body296.preheader
	add x4, x0, x8
	addi x8, x2, 272
LBB0_98:                                //  %for.body296
                                        //  =>This Inner Loop Header: Depth=1
	sw x4, 76 ( x2 )                //  4-byte Folded Spill
	lw x12, 0 ( x8 )
	lw x13, 4 ( x8 )
	add x10, x0, x1
	add x11, x0, x3
	call $__adddf3
	lw x4, 76 ( x2 )                //  4-byte Folded Reload
	add x1, x0, x10
	add x3, x0, x11
	addi x8, x8, 8
	addi x4, x4, -1
	bgtu x4, x0, LBB0_98
LBB0_99:                                //  %for.end301
	add x10, x0, x0
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, -2147483648 >> 12 & 0xfffff
	or x11, x4, x28
	sw x1, 100 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x1
	add x8, x0, x3
	add x13, x0, x3
	call $__subdf3
	add x3, x0, x0
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	beq x1, x3, LBB0_101
LBB0_100:                               //  %for.end301
	add x8, x0, x11
LBB0_101:                               //  %for.end301
	lw x7, 12 ( x2 )                //  4-byte Folded Reload
	lw x4, 80 ( x2 )                //  4-byte Folded Reload
	lw x9, 100 ( x2 )               //  4-byte Folded Reload
	beq x1, x3, LBB0_103
LBB0_102:                               //  %for.end301
	add x9, x0, x10
LBB0_103:                               //  %for.end301
	addi x7, x7, 8
	add x11, x0, x8
	jalr x0, LBB0_116 ( x0 )
LBB0_104:                               //  %for.cond329.preheader
	add x9, x0, x0
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	slti x4, x1, 2
	add x11, x0, x9
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	bgtu x4, x0, LBB0_110
LBB0_105:                               //  %for.body332.preheader
	sw x4, 56 ( x2 )                //  4-byte Folded Spill
	addi x8, x3, -8
	lw x4, 60 ( x2 )                //  4-byte Folded Reload
	nop
	lw x4, 0 ( x4 )
	lw x5, 0 ( x3 )
	add x3, x0, x1
LBB0_106:                               //  %for.body332
                                        //  =>This Inner Loop Header: Depth=1
	sw x3, 100 ( x2 )               //  4-byte Folded Spill
	lw x10, 0 ( x8 )
	nop
	sw x10, 68 ( x2 )               //  4-byte Folded Spill
	lw x11, 4 ( x8 )
	nop
	sw x11, 72 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x5
	sw x12, 92 ( x2 )               //  4-byte Folded Spill
	add x13, x0, x4
	sw x13, 88 ( x2 )               //  4-byte Folded Spill
	call $__adddf3
	add x1, x0, x10
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x11
	sw x3, 84 ( x2 )                //  4-byte Folded Spill
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 92 ( x2 )               //  4-byte Folded Reload
	lw x11, 88 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	lw x3, 100 ( x2 )               //  4-byte Folded Reload
	sw x11, 12 ( x8 )
	sw x10, 8 ( x8 )
	lw x4, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x4, 4 ( x8 )
	lw x1, 96 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x8 )
	addi x8, x8, -8
	addi x3, x3, -1
	add x5, x0, x1
	slti x1, x0, 1
	bgt x3, x1, LBB0_106
LBB0_107:                               //  %for.cond347.preheader
	add x9, x0, x0
	add x11, x0, x9
	lw x8, 76 ( x2 )                //  4-byte Folded Reload
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	lw x3, 56 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x3, x0, LBB0_110
LBB0_108:                               //  %for.body350.preheader
	add x9, x0, x0
	add x11, x0, x9
LBB0_109:                               //  %for.body350
                                        //  =>This Inner Loop Header: Depth=1
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	lw x12, 0 ( x1 )
	lw x13, 4 ( x1 )
	add x10, x0, x9
	call $__adddf3
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	add x9, x0, x10
	addi x1, x1, -8
	addi x8, x8, -1
	slti x3, x0, 1
	bgt x8, x3, LBB0_109
LBB0_110:                               //  %for.end355
	lw x1, 276 ( x2 )
	addi x4, x2, 264
	lw x3, 8 ( x4 )
	ori x4, x4, 4
	lw x4, 0 ( x4 )
	lw x5, 264 ( x2 )
	lw x7, 40 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x7, x0, LBB0_114
LBB0_111:                               //  %if.then358
	lw x7, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x5, 0 ( x7 )
	sw x4, 4 ( x7 )
	jalr x0, LBB0_115 ( x0 )
LBB0_112:                               //  %for.body314.preheader
	slli x1, x8, 3
	addi x3, x2, 264
	add x3, x1, x3
	add x1, x0, x8
	addi x8, x3, -8
	addi x4, x1, 1
	ori x1, x3, 4
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	lw x5, 0 ( x1 )
	sw x3, 64 ( x2 )                //  4-byte Folded Spill
	lw x3, 0 ( x3 )
LBB0_113:                               //  %for.body314
                                        //  =>This Inner Loop Header: Depth=1
	sw x4, 100 ( x2 )               //  4-byte Folded Spill
	lw x10, 0 ( x8 )
	nop
	sw x10, 68 ( x2 )               //  4-byte Folded Spill
	lw x11, 4 ( x8 )
	nop
	sw x11, 72 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x3
	sw x12, 92 ( x2 )               //  4-byte Folded Spill
	add x13, x0, x5
	sw x13, 88 ( x2 )               //  4-byte Folded Spill
	call $__adddf3
	add x1, x0, x10
	sw x1, 96 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x11
	sw x3, 84 ( x2 )                //  4-byte Folded Spill
	lw x10, 68 ( x2 )               //  4-byte Folded Reload
	lw x11, 72 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__subdf3
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 92 ( x2 )               //  4-byte Folded Reload
	lw x11, 88 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__adddf3
	lw x4, 100 ( x2 )               //  4-byte Folded Reload
	slti x1, x0, 1
	sw x11, 12 ( x8 )
	sw x10, 8 ( x8 )
	lw x5, 84 ( x2 )                //  4-byte Folded Reload
	nop
	sw x5, 4 ( x8 )
	lw x3, 96 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 0 ( x8 )
	addi x8, x8, -8
	addi x4, x4, -1
	bgt x4, x1, LBB0_113
	j LBB0_104
LBB0_114:                               //  %if.else364
	lw x7, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x5, 0 ( x7 )
	lui x5, -2147483648 >> 12 & 0xfffff
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x5, x28
	xor x4, x5, x4
	sw x4, 4 ( x7 )
	xor x11, x5, x11
	xor x1, x5, x1
LBB0_115:                               //  %if.end373
	lw x4, 80 ( x2 )                //  4-byte Folded Reload
	sw x3, 8 ( x7 )
	sw x1, 12 ( x7 )
	addi x7, x7, 16
LBB0_116:                               //  %sw.epilog374.sink.split
	sw x9, 0 ( x7 )
	sw x11, 4 ( x7 )
LBB0_117:                               //  %sw.epilog374
	andi x10, x4, 7
	lw x8, 668 ( x2 )               //  4-byte Folded Reload
	lw x1, 676 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 680
$cfi5:
	.cfi_adjust_cfa_offset -680
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__kernel_rem_pio2, ($func_end0)-($__kernel_rem_pio2)
	.cfi_endproc

	.address_space	0	
	.type	$init_jk,@object        //  @init_jk
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2
$init_jk:
	.long	2                       //  0x2
	.long	3                       //  0x3
	.long	4                       //  0x4
	.long	6                       //  0x6
	.size	$init_jk, 16

	.address_space	0	
	.type	$PIo2,@object           //  @PIo2
	.section	.rodata,"a",@progbits
	.p2align	3
$PIo2:
	.quad	4609753056584663040     //  double 1.5707962512969971
	.quad	4500296887714185216     //  double 7.5497894158615964E-8
	.quad	4393339057296375808     //  double 5.3903025299577648E-15
	.quad	4285399695318056960     //  double 3.2820034158079129E-22
	.quad	4174867106174599168     //  double 1.2706557530806761E-29
	.quad	4069606033725587456     //  double 1.2293330898111133E-36
	.quad	3955147982449410048     //  double 2.7337005381646456E-44
	.quad	3848874662444400640     //  double 2.1674168387780482E-51
	.size	$PIo2, 64


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
