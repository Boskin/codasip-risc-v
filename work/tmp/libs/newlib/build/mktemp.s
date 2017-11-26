	.text
	.file	"mktemp.bc"
	.globl	$_mkstemp_r
	.type	$_mkstemp_r,@function
$_mkstemp_r:                            //  @_mkstemp_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi2:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x0
	addi x12, x2, 8
	lui x15, 65536>>12 
	add x13, x0, x8
	add x14, x0, x8
	call $_gettemp
	beq x10, x8, LBB0_2
LBB0_1:
	lw x10, 8 ( x2 )
	jalr x0, LBB0_3 ( x0 )
LBB0_2:                                 //  %entry
	not x10, x0
LBB0_3:                                 //  %entry
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi5:
	.cfi_adjust_cfa_offset -24
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$_mkstemp_r, ($func_end0)-($_mkstemp_r)
	.cfi_endproc

	.type	$_gettemp,@function
$_gettemp:                              //  @_gettemp
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -120
$cfi9:
	.cfi_adjust_cfa_offset 120
	sw x1, 116 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 108 ( x2 )               //  4-byte Folded Spill
	sw x15, 16 ( x2 )               //  4-byte Folded Spill
	sw x13, 24 ( x2 )               //  4-byte Folded Spill
	sw x12, 20 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	sw x14, 32 ( x2 )               //  4-byte Folded Spill
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	call $_getpid_r
	add x4, x0, x8
	add x8, x0, x0
	lw x1, 32 ( x2 )                //  4-byte Folded Reload
	nop
	not x1, x1
LBB1_1:                                 //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	add x7, x8, x4
	lbu x3, 0 ( x7 )
	addi x8, x8, 1
	bgtu x3, x0, LBB1_1
LBB1_2:                                 //  %for.end
	add x3, x8, x4
	addi x3, x3, -1
	sub x3, x3, x4
	lw x5, 32 ( x2 )                //  4-byte Folded Reload
	nop
	bgeu x3, x5, LBB1_4
LBB1_3:                                 //  %if.then
	addi x1, x0, 22
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
	jalr x0, LBB1_44 ( x0 )
LBB1_4:                                 //  %if.end
	sw x7, 8 ( x2 )                 //  4-byte Folded Spill
	sub x3, x4, x5
	add x3, x8, x3
	addi x3, x3, -1
	add x5, x0, x3
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
	bgeu x4, x3, LBB1_8
LBB1_5:                                 //  %land.rhs.preheader
	add x1, x1, x4
	add x1, x8, x1
	addi x1, x1, -1
	sw x4, 36 ( x2 )                //  4-byte Folded Spill
LBB1_6:                                 //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	add x5, x0, x1
	lbu x1, 0 ( x5 )
	nop
	xori x1, x1, 88
	bgtu x1, x0, LBB1_8
LBB1_7:                                 //  %while.body
                                        //    in Loop: Header=BB1_6 Depth=1
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	addi x1, x0, 10
	add x11, x0, x1
	sw x5, 44 ( x2 )                //  4-byte Folded Spill
	call $__umodsi3
	ori x1, x10, 48
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sb x1, 0 ( x3 )
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	addi x11, x0, 10
	call $__udivsi3
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	addi x1, x5, -1
	bgtu x5, x4, LBB1_6
LBB1_8:                                 //  %while.end
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x5
	slti x1, x1, 6
	bgtu x1, x0, LBB1_3
LBB1_9:                                 //  %for.cond15.preheader
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	bgeu x4, x5, LBB1_12
LBB1_10:
	add x7, x0, x5
	jalr x0, LBB1_39 ( x0 )
LBB1_11:                                //  %if.end31
	addi x1, x0, 47
	sb x1, 0 ( x4 )
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	add x4, x0, x3
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
LBB1_12:                                //  %for.cond36.preheader
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB1_43
LBB1_13:                                //  %if.else.lr.ph
	sub x7, x0, x3
	ori x28, x0, 2562 & 0xfff
	add x1, x7, x4
	slli x28, x28, 20
	add x1, x8, x1
	sub x3, x1, x5
	lui x1, 2562 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	addi x3, x3, -2
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
	addi x3, x5, 1
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	sw x4, 36 ( x2 )                //  4-byte Folded Spill
	beqz x3, LBB1_18
LBB1_14:                                //  %if.else.us132.preheader
	sw x7, 44 ( x2 )                //  4-byte Folded Spill
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	or x8, x1, x3
	addi x13, x0, 384
	add x11, x0, x4
	add x12, x0, x8
	call $_open_r
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 0 ( x1 )
	slti x9, x0, 1
	bgez x10, LBB1_45
LBB1_15:                                //  %if.end46.us136.preheader
	sw x8, 32 ( x2 )                //  4-byte Folded Spill
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	add x8, x3, x1
	add x7, x0, x0
	addi x11, x0, 97
	lui x12, $__ctype_ptr__ >> 12 & 0xfffff
LBB1_16:                                //  %if.end46.us136
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_31 Depth 2
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x3 )
	nop
	xori x1, x1, 17
	add x10, x0, x3
	beqz x1, LBB1_28
LBB1_17:
	add x9, x0, x7
	jalr x0, LBB1_45 ( x0 )
LBB1_18:                                //  %if.else.us.preheader
	sw x5, 44 ( x2 )                //  4-byte Folded Spill
	addi x12, x2, 48
	add x11, x0, x4
	call $_stat_r
	bgtu x10, x0, LBB1_26
LBB1_19:                                //  %for.cond62.preheader.us.preheader
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	not x1, x1
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	add x1, x1, x8
	addi x11, x1, -1
	add x9, x0, x0
	addi x8, x0, 97
	lui x12, $__ctype_ptr__ >> 12 & 0xfffff
	addi x13, x2, 48
LBB1_20:                                //  %for.cond62.preheader.us
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_21 Depth 2
	lw x7, 36 ( x2 )                //  4-byte Folded Reload
	add x3, x0, x11
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x4, LBB1_45
LBB1_21:                                //  %if.end66.us
                                        //    Parent Loop BB1_20 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x4, 0 ( x1 )
	nop
	xori x5, x4, 122
	beqz x5, LBB1_27
LBB1_22:                                //  %if.else72.us
                                        //    in Loop: Header=BB1_20 Depth=1
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x12, x28
	lw x3, 0 ( x3 )
	nop
	add x3, x4, x3
	lbu x3, 1 ( x3 )
	nop
	andi x3, x3, 4
	sw x11, 44 ( x2 )               //  4-byte Folded Spill
	bne x3, x9, LBB1_24
LBB1_23:                                //    in Loop: Header=BB1_20 Depth=1
	addi x3, x4, 1
	jalr x0, LBB1_25 ( x0 )
LBB1_24:                                //  %if.else72.us
                                        //    in Loop: Header=BB1_20 Depth=1
	add x3, x0, x8
LBB1_25:                                //  %if.else72.us
                                        //    in Loop: Header=BB1_20 Depth=1
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	sb x3, 0 ( x1 )
	add x11, x0, x7
	add x12, x0, x13
	call $_stat_r
	addi x13, x2, 48
	add x9, x0, x0
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	lui x12, $__ctype_ptr__ >> 12 & 0xfffff
	beqz x10, LBB1_20
LBB1_26:                                //  %if.then55
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 0 ( x1 )
	nop
	xori x1, x1, 2
	seqz x1, x1
	andi x9, x1, 1
	jalr x0, LBB1_45 ( x0 )
LBB1_27:                                //  %if.then70.us
                                        //    in Loop: Header=BB1_21 Depth=2
	addi x3, x3, -1
	sb x8, 0 ( x1 )
	addi x1, x1, 1
	bgtu x3, x0, LBB1_21
	jalr x0, LBB1_45 ( x0 )
LBB1_28:                                //  %if.end46.us136
                                        //    in Loop: Header=BB1_16 Depth=1
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x0, LBB1_30
LBB1_29:
	add x9, x0, x7
	jalr x0, LBB1_45 ( x0 )
LBB1_30:                                //  %if.end66.us141.preheader
                                        //    in Loop: Header=BB1_16 Depth=1
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	lw x5, 32 ( x2 )                //  4-byte Folded Reload
LBB1_31:                                //  %if.end66.us141
                                        //    Parent Loop BB1_16 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	lbu x3, 0 ( x1 )
	nop
	xori x4, x3, 122
	beqz x4, LBB1_36
LBB1_32:                                //  %if.else72.us144
                                        //    in Loop: Header=BB1_16 Depth=1
	ori x28, x0, $__ctype_ptr__ & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x12, x28
	lw x4, 0 ( x4 )
	nop
	add x4, x3, x4
	lbu x4, 1 ( x4 )
	nop
	andi x4, x4, 4
	bne x4, x7, LBB1_34
LBB1_33:                                //    in Loop: Header=BB1_16 Depth=1
	addi x3, x3, 1
	jalr x0, LBB1_35 ( x0 )
LBB1_34:                                //  %if.else72.us144
                                        //    in Loop: Header=BB1_16 Depth=1
	add x3, x0, x11
LBB1_35:                                //  %if.else72.us144
                                        //    in Loop: Header=BB1_16 Depth=1
	sb x3, 0 ( x1 )
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x5
	addi x13, x0, 384
	call $_open_r
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 0 ( x1 )
	slti x9, x0, 1
	add x7, x0, x0
	addi x11, x0, 97
	lui x12, $__ctype_ptr__ >> 12 & 0xfffff
	bgt x0, x10, LBB1_16
	jalr x0, LBB1_45 ( x0 )
LBB1_36:                                //  %if.then70.us153
                                        //    in Loop: Header=BB1_31 Depth=2
	addi x3, x1, 1
	sb x11, 0 ( x1 )
	add x1, x0, x3
	bne x8, x3, LBB1_31
LBB1_37:
	add x9, x0, x7
	jalr x0, LBB1_45 ( x0 )
LBB1_38:                                //  %for.inc33
                                        //    in Loop: Header=BB1_39 Depth=1
	addi x7, x7, -1
	bgeu x4, x7, LBB1_12
LBB1_39:                                //  %if.end19
                                        //  =>This Inner Loop Header: Depth=1
	lbu x1, 0 ( x7 )
	nop
	xori x1, x1, 47
	bgtu x1, x0, LBB1_38
LBB1_40:                                //  %if.then23
	sw x5, 44 ( x2 )                //  4-byte Folded Spill
	sb x0, 0 ( x7 )
	addi x12, x2, 48
	add x11, x0, x4
	sw x4, 36 ( x2 )                //  4-byte Folded Spill
	sw x7, 40 ( x2 )                //  4-byte Folded Spill
	call $_stat_r
	add x9, x0, x0
	bgtu x10, x0, LBB1_45
LBB1_41:                                //  %if.end27
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	lbu x1, 53 ( x2 )
	nop
	andi x1, x1, 64
	bgtu x1, x0, LBB1_11
LBB1_42:                                //  %if.then29
	addi x1, x0, 20
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
	jalr x0, LBB1_45 ( x0 )
LBB1_43:                                //  %if.then38
	addi x1, x0, 88
	sw x1, 0 ( x10 )
LBB1_44:                                //  %cleanup
	add x9, x0, x0
LBB1_45:                                //  %cleanup
	add x10, x0, x9
	lw x8, 108 ( x2 )               //  4-byte Folded Reload
	lw x1, 116 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 120
$cfi12:
	.cfi_adjust_cfa_offset -120
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$_gettemp, ($func_end1)-($_gettemp)
	.cfi_endproc

	.globl	$_mkdtemp_r
	.type	$_mkdtemp_r,@function
$_mkdtemp_r:                            //  @_mkdtemp_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi14:
	.cfi_def_cfa 2, 0
$cfi15:
	.cfi_val_offset 2, 0
	addi x2, x2, -96
$cfi16:
	.cfi_adjust_cfa_offset 96
	sw x1, 92 ( x2 )
$cfi17:
	.cfi_offset 1, -4
	sw x8, 84 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	call $_getpid_r
	sw x8, 8 ( x2 )                 //  4-byte Folded Spill
	addi x8, x8, -1
LBB2_1:                                 //  %for.cond.i
                                        //  =>This Inner Loop Header: Depth=1
	lbu x1, 1 ( x8 )
	addi x8, x8, 1
	bgtu x1, x0, LBB2_1
LBB2_2:                                 //  %for.end.i
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bgtu x8, x1, LBB2_4
LBB2_3:
	add x1, x0, x0
	add x5, x0, x8
	jalr x0, LBB2_7 ( x0 )
LBB2_4:                                 //  %land.rhs.i.preheader
	addi x3, x8, -1
LBB2_5:                                 //  %land.rhs.i
                                        //  =>This Inner Loop Header: Depth=1
	add x5, x0, x3
	lbu x1, 0 ( x5 )
	nop
	xori x3, x1, 88
	bgtu x3, x0, LBB2_7
LBB2_6:                                 //  %while.body.i
                                        //    in Loop: Header=BB2_5 Depth=1
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	addi x1, x0, 10
	add x11, x0, x1
	sw x5, 20 ( x2 )                //  4-byte Folded Spill
	call $__umodsi3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	addi x11, x0, 10
	call $__udivsi3
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 48
	addi x3, x5, -1
	sb x1, 0 ( x5 )
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bgtu x5, x4, LBB2_5
LBB2_7:                                 //  %while.end.i
	sub x3, x8, x5
	slti x3, x3, 6
	beqz x3, LBB2_9
LBB2_8:
	addi x4, x0, 22
	lw x8, 4 ( x2 )                 //  4-byte Folded Reload
	jalr x0, LBB2_19 ( x0 )
LBB2_9:                                 //  %for.cond15.preheader.i
	addi x4, x0, 88
	lw x8, 4 ( x2 )                 //  4-byte Folded Reload
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bgeu x3, x5, LBB2_19
LBB2_10:                                //  %if.end19.i.preheader
	andi x1, x1, 255
	xori x1, x1, 47
	beqz x1, LBB2_15
LBB2_11:                                //  %for.inc33.i.preheader
	addi x1, x5, -1
LBB2_12:                                //  %for.inc33.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bgeu x3, x1, LBB2_19
LBB2_13:                                //  %for.inc33.i.if.end19.i_crit_edge
                                        //    in Loop: Header=BB2_12 Depth=1
	lbu x3, 0 ( x1 )
	addi x1, x1, -1
	xori x3, x3, 47
	bgtu x3, x0, LBB2_12
LBB2_14:                                //  %if.then23.i.loopexit
	addi x5, x1, 1
LBB2_15:                                //  %if.then23.i
	sw x5, 20 ( x2 )                //  4-byte Folded Spill
	sb x0, 0 ( x5 )
	addi x12, x2, 24
	add x10, x0, x8
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $_stat_r
	bgtu x10, x0, LBB2_20
LBB2_16:                                //  %if.end27.i
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	lbu x1, 29 ( x2 )
	nop
	andi x1, x1, 64
	bgtu x1, x0, LBB2_18
LBB2_17:
	addi x4, x0, 20
	jalr x0, LBB2_19 ( x0 )
LBB2_18:                                //  %if.end31.i
	addi x1, x0, 47
	sb x1, 0 ( x3 )
	addi x4, x0, 88
LBB2_19:                                //  %_gettemp.exit.sink.split
	sw x4, 0 ( x8 )
LBB2_20:                                //  %_gettemp.exit
	add x10, x0, x0
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	lw x1, 92 ( x2 )
$cfi18:
	.cfi_same_value 1
	addi x2, x2, 96
$cfi19:
	.cfi_adjust_cfa_offset -96
$cfi20:
	.cfi_def_cfa 2, 0
	ret
$func_end2:
	.size	$_mkdtemp_r, ($func_end2)-($_mkdtemp_r)
	.cfi_endproc

	.globl	$_mkstemps_r
	.type	$_mkstemps_r,@function
$_mkstemps_r:                           //  @_mkstemps_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi21:
	.cfi_def_cfa 2, 0
$cfi22:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi23:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi24:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x12
	addi x12, x2, 8
	add x8, x0, x0
	lui x15, 65536>>12 
	add x13, x0, x8
	add x14, x0, x1
	call $_gettemp
	beq x10, x8, LBB3_2
LBB3_1:
	lw x10, 8 ( x2 )
	jalr x0, LBB3_3 ( x0 )
LBB3_2:                                 //  %entry
	not x10, x0
LBB3_3:                                 //  %entry
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi25:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi26:
	.cfi_adjust_cfa_offset -24
$cfi27:
	.cfi_def_cfa 2, 0
	ret
$func_end3:
	.size	$_mkstemps_r, ($func_end3)-($_mkstemps_r)
	.cfi_endproc

	.globl	$_mkostemp_r
	.type	$_mkostemp_r,@function
$_mkostemp_r:                           //  @_mkostemp_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi28:
	.cfi_def_cfa 2, 0
$cfi29:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi30:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi31:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x0
	andi x15, x12, -4
	addi x12, x2, 8
	add x13, x0, x8
	add x14, x0, x8
	call $_gettemp
	beq x10, x8, LBB4_2
LBB4_1:
	lw x10, 8 ( x2 )
	jalr x0, LBB4_3 ( x0 )
LBB4_2:                                 //  %entry
	not x10, x0
LBB4_3:                                 //  %entry
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi32:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi33:
	.cfi_adjust_cfa_offset -24
$cfi34:
	.cfi_def_cfa 2, 0
	ret
$func_end4:
	.size	$_mkostemp_r, ($func_end4)-($_mkostemp_r)
	.cfi_endproc

	.globl	$_mkostemps_r
	.type	$_mkostemps_r,@function
$_mkostemps_r:                          //  @_mkostemps_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi35:
	.cfi_def_cfa 2, 0
$cfi36:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi37:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi38:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x12
	andi x15, x13, -4
	addi x12, x2, 8
	add x8, x0, x0
	add x13, x0, x8
	add x14, x0, x1
	call $_gettemp
	beq x10, x8, LBB5_2
LBB5_1:
	lw x10, 8 ( x2 )
	jalr x0, LBB5_3 ( x0 )
LBB5_2:                                 //  %entry
	not x10, x0
LBB5_3:                                 //  %entry
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi39:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi40:
	.cfi_adjust_cfa_offset -24
$cfi41:
	.cfi_def_cfa 2, 0
	ret
$func_end5:
	.size	$_mkostemps_r, ($func_end5)-($_mkostemps_r)
	.cfi_endproc

	.globl	$_mktemp_r
	.type	$_mktemp_r,@function
$_mktemp_r:                             //  @_mktemp_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi42:
	.cfi_def_cfa 2, 0
$cfi43:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi44:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi45:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	sw x11, 8 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x0
	add x12, x0, x8
	add x13, x0, x8
	add x14, x0, x8
	add x15, x0, x8
	call $_gettemp
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	bne x10, x8, LBB6_2
LBB6_1:                                 //  %entry
	add x1, x0, x8
LBB6_2:                                 //  %entry
	add x10, x0, x1
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi46:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi47:
	.cfi_adjust_cfa_offset -24
$cfi48:
	.cfi_def_cfa 2, 0
	ret
$func_end6:
	.size	$_mktemp_r, ($func_end6)-($_mktemp_r)
	.cfi_endproc

	.globl	$mkstemp
	.type	$mkstemp,@function
$mkstemp:                               //  @mkstemp
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi49:
	.cfi_def_cfa 2, 0
$cfi50:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi51:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi52:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x10
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x3, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	lw x10, 0 ( x3 )
	add x8, x0, x0
	addi x12, x2, 8
	lui x15, 65536>>12 
	add x11, x0, x1
	add x13, x0, x8
	add x14, x0, x8
	call $_gettemp
	beq x10, x8, LBB7_2
LBB7_1:
	lw x10, 8 ( x2 )
	jalr x0, LBB7_3 ( x0 )
LBB7_2:                                 //  %entry
	not x10, x0
LBB7_3:                                 //  %entry
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi53:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi54:
	.cfi_adjust_cfa_offset -24
$cfi55:
	.cfi_def_cfa 2, 0
	ret
$func_end7:
	.size	$mkstemp, ($func_end7)-($mkstemp)
	.cfi_endproc

	.globl	$mkdtemp
	.type	$mkdtemp,@function
$mkdtemp:                               //  @mkdtemp
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi56:
	.cfi_def_cfa 2, 0
$cfi57:
	.cfi_val_offset 2, 0
	addi x2, x2, -96
$cfi58:
	.cfi_adjust_cfa_offset 96
	sw x1, 92 ( x2 )
$cfi59:
	.cfi_offset 1, -4
	sw x8, 84 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x10, 0 ( x1 )
	nop
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	call $_getpid_r
	sw x8, 8 ( x2 )                 //  4-byte Folded Spill
	addi x8, x8, -1
LBB8_1:                                 //  %for.cond.i
                                        //  =>This Inner Loop Header: Depth=1
	lbu x1, 1 ( x8 )
	addi x8, x8, 1
	bgtu x1, x0, LBB8_1
LBB8_2:                                 //  %for.end.i
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bgtu x8, x1, LBB8_4
LBB8_3:
	add x1, x0, x0
	add x5, x0, x8
	jalr x0, LBB8_7 ( x0 )
LBB8_4:                                 //  %land.rhs.i.preheader
	addi x3, x8, -1
LBB8_5:                                 //  %land.rhs.i
                                        //  =>This Inner Loop Header: Depth=1
	add x5, x0, x3
	lbu x1, 0 ( x5 )
	nop
	xori x3, x1, 88
	bgtu x3, x0, LBB8_7
LBB8_6:                                 //  %while.body.i
                                        //    in Loop: Header=BB8_5 Depth=1
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	addi x1, x0, 10
	add x11, x0, x1
	sw x5, 20 ( x2 )                //  4-byte Folded Spill
	call $__umodsi3
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	addi x11, x0, 10
	call $__udivsi3
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 48
	addi x3, x5, -1
	sb x1, 0 ( x5 )
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bgtu x5, x4, LBB8_5
LBB8_7:                                 //  %while.end.i
	sub x3, x8, x5
	slti x3, x3, 6
	beqz x3, LBB8_9
LBB8_8:
	addi x4, x0, 22
	lw x8, 4 ( x2 )                 //  4-byte Folded Reload
	jalr x0, LBB8_19 ( x0 )
LBB8_9:                                 //  %for.cond15.preheader.i
	addi x4, x0, 88
	lw x8, 4 ( x2 )                 //  4-byte Folded Reload
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bgeu x3, x5, LBB8_19
LBB8_10:                                //  %if.end19.i.preheader
	andi x1, x1, 255
	xori x1, x1, 47
	beqz x1, LBB8_15
LBB8_11:                                //  %for.inc33.i.preheader
	addi x1, x5, -1
LBB8_12:                                //  %for.inc33.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bgeu x3, x1, LBB8_19
LBB8_13:                                //  %for.inc33.i.if.end19.i_crit_edge
                                        //    in Loop: Header=BB8_12 Depth=1
	lbu x3, 0 ( x1 )
	addi x1, x1, -1
	xori x3, x3, 47
	bgtu x3, x0, LBB8_12
LBB8_14:                                //  %if.then23.i.loopexit
	addi x5, x1, 1
LBB8_15:                                //  %if.then23.i
	sw x5, 20 ( x2 )                //  4-byte Folded Spill
	sb x0, 0 ( x5 )
	addi x12, x2, 24
	add x10, x0, x8
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $_stat_r
	bgtu x10, x0, LBB8_20
LBB8_16:                                //  %if.end27.i
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	lbu x1, 29 ( x2 )
	nop
	andi x1, x1, 64
	bgtu x1, x0, LBB8_18
LBB8_17:
	addi x4, x0, 20
	jalr x0, LBB8_19 ( x0 )
LBB8_18:                                //  %if.end31.i
	addi x1, x0, 47
	sb x1, 0 ( x3 )
	addi x4, x0, 88
LBB8_19:                                //  %_gettemp.exit.sink.split
	sw x4, 0 ( x8 )
LBB8_20:                                //  %_gettemp.exit
	add x10, x0, x0
	lw x8, 84 ( x2 )                //  4-byte Folded Reload
	lw x1, 92 ( x2 )
$cfi60:
	.cfi_same_value 1
	addi x2, x2, 96
$cfi61:
	.cfi_adjust_cfa_offset -96
$cfi62:
	.cfi_def_cfa 2, 0
	ret
$func_end8:
	.size	$mkdtemp, ($func_end8)-($mkdtemp)
	.cfi_endproc

	.globl	$mkstemps
	.type	$mkstemps,@function
$mkstemps:                              //  @mkstemps
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi63:
	.cfi_def_cfa 2, 0
$cfi64:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi65:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi66:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x11
	add x3, x0, x10
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x4, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	lw x10, 0 ( x4 )
	addi x12, x2, 8
	add x8, x0, x0
	lui x15, 65536>>12 
	add x11, x0, x3
	add x13, x0, x8
	add x14, x0, x1
	call $_gettemp
	beq x10, x8, LBB9_2
LBB9_1:
	lw x10, 8 ( x2 )
	jalr x0, LBB9_3 ( x0 )
LBB9_2:                                 //  %entry
	not x10, x0
LBB9_3:                                 //  %entry
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi67:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi68:
	.cfi_adjust_cfa_offset -24
$cfi69:
	.cfi_def_cfa 2, 0
	ret
$func_end9:
	.size	$mkstemps, ($func_end9)-($mkstemps)
	.cfi_endproc

	.globl	$mkostemp
	.type	$mkostemp,@function
$mkostemp:                              //  @mkostemp
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi70:
	.cfi_def_cfa 2, 0
$cfi71:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi72:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi73:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x10
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x3, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	lw x10, 0 ( x3 )
	add x8, x0, x0
	andi x15, x11, -4
	addi x12, x2, 8
	add x11, x0, x1
	add x13, x0, x8
	add x14, x0, x8
	call $_gettemp
	beq x10, x8, LBB10_2
LBB10_1:
	lw x10, 8 ( x2 )
	jalr x0, LBB10_3 ( x0 )
LBB10_2:                                //  %entry
	not x10, x0
LBB10_3:                                //  %entry
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi74:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi75:
	.cfi_adjust_cfa_offset -24
$cfi76:
	.cfi_def_cfa 2, 0
	ret
$func_end10:
	.size	$mkostemp, ($func_end10)-($mkostemp)
	.cfi_endproc

	.globl	$mkostemps
	.type	$mkostemps,@function
$mkostemps:                             //  @mkostemps
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi77:
	.cfi_def_cfa 2, 0
$cfi78:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi79:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi80:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x11
	add x3, x0, x10
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x4, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	lw x10, 0 ( x4 )
	andi x15, x12, -4
	addi x12, x2, 8
	add x8, x0, x0
	add x11, x0, x3
	add x13, x0, x8
	add x14, x0, x1
	call $_gettemp
	beq x10, x8, LBB11_2
LBB11_1:
	lw x10, 8 ( x2 )
	jalr x0, LBB11_3 ( x0 )
LBB11_2:                                //  %entry
	not x10, x0
LBB11_3:                                //  %entry
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi81:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi82:
	.cfi_adjust_cfa_offset -24
$cfi83:
	.cfi_def_cfa 2, 0
	ret
$func_end11:
	.size	$mkostemps, ($func_end11)-($mkostemps)
	.cfi_endproc

	.globl	$mktemp
	.type	$mktemp,@function
$mktemp:                                //  @mktemp
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi84:
	.cfi_def_cfa 2, 0
$cfi85:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi86:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi87:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x3, x0, x10
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x10, 0 ( x1 )
	add x8, x0, x0
	add x11, x0, x3
	add x12, x0, x8
	add x13, x0, x8
	add x14, x0, x8
	add x15, x0, x8
	call $_gettemp
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	bne x10, x8, LBB12_2
LBB12_1:                                //  %entry
	add x1, x0, x8
LBB12_2:                                //  %entry
	add x10, x0, x1
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi88:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi89:
	.cfi_adjust_cfa_offset -24
$cfi90:
	.cfi_def_cfa 2, 0
	ret
$func_end12:
	.size	$mktemp, ($func_end12)-($mktemp)
	.cfi_endproc

	.address_space	0	
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
