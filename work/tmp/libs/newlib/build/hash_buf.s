	.text
	.file	"hash_buf.bc"
	.globl	$__get_buf
	.type	$__get_buf,@function
$__get_buf:                             //  @__get_buf
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -64
$cfi2:
	.cfi_adjust_cfa_offset 64
	sw x1, 60 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 52 ( x2 )                //  4-byte Folded Spill
	add x14, x0, x12
	add x16, x0, x11
	add x15, x0, x10
	beqz x14, LBB0_8
LBB0_1:                                 //  %if.then
	lw x8, 8 ( x14 )
	nop
	beqz x8, LBB0_3
LBB0_2:                                 //  %lor.lhs.false
	lw x1, 12 ( x8 )
	nop
	beq x1, x16, LBB0_4
LBB0_3:                                 //  %if.then3
	add x8, x0, x0
LBB0_4:                                 //  %if.end
	add x3, x0, x0
	bne x13, x3, LBB0_6
LBB0_5:
	addi x1, x0, 2
	jalr x0, LBB0_7 ( x0 )
LBB0_6:                                 //  %if.end
	add x1, x0, x3
LBB0_7:                                 //  %if.end
	add x4, x0, x3
	add x5, x0, x3
	jalr x0, LBB0_12 ( x0 )
LBB0_8:                                 //  %if.else
	lw x1, 28 ( x15 )
	lw x3, 472 ( x15 )
	lw x4, 24 ( x15 )
	srl x1, x16, x1
	slli x1, x1, 2
	add x1, x1, x3
	lw x3, 0 ( x1 )
	addi x1, x4, -1
	and x4, x16, x1
	slli x1, x4, 2
	add x1, x1, x3
	lw x1, 0 ( x1 )
	nop
	andi x5, x1, 2
	andi x8, x1, -4
	beqz x5, LBB0_10
LBB0_9:
	slti x1, x0, 1
	jalr x0, LBB0_11 ( x0 )
LBB0_10:                                //  %lor.rhs
	lw x1, 304 ( x15 )
	nop
	seqz x1, x1
LBB0_11:                                //  %lor.end
	andi x1, x1, 1
LBB0_12:                                //  %if.end14
	bgtu x8, x0, LBB0_54
LBB0_13:                                //  %if.then16
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	sw x5, 20 ( x2 )                //  4-byte Folded Spill
	sw x4, 24 ( x2 )                //  4-byte Folded Spill
	sw x3, 28 ( x2 )                //  4-byte Folded Spill
	lw x1, 444 ( x15 )
	addi x17, x15, 448
	sw x14, 40 ( x2 )               //  4-byte Folded Spill
	sw x15, 48 ( x2 )               //  4-byte Folded Spill
	sw x16, 36 ( x2 )               //  4-byte Folded Spill
	sw x17, 32 ( x2 )               //  4-byte Folded Spill
	bgtu x1, x0, LBB0_15
LBB0_14:                                //  %lor.lhs.false.i
	lw x13, 448 ( x15 )
	nop
	lbu x1, 20 ( x13 )
	nop
	andi x3, x1, 8
	beqz x3, LBB0_21
LBB0_15:                                //  %if.then.i
	addi x10, x0, 24
	call $malloc
	add x1, x0, x10
	add x8, x0, x0
	beqz x1, LBB0_55
LBB0_16:                                //  %if.end.i
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 12 ( x3 )
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	call $malloc
	lw x13, 44 ( x2 )               //  4-byte Folded Reload
	nop
	sw x10, 16 ( x13 )
	bgtu x10, x0, LBB0_18
LBB0_17:                                //  %if.then7.i
	add x10, x0, x13
	call $free
	jalr x0, LBB0_55 ( x0 )
LBB0_18:                                //  %if.end8.i
	lw x15, 48 ( x2 )               //  4-byte Folded Reload
	nop
	lw x1, 444 ( x15 )
	nop
	bgtu x1, x0, LBB0_20
LBB0_19:
	lw x14, 40 ( x2 )               //  4-byte Folded Reload
	lw x16, 36 ( x2 )               //  4-byte Folded Reload
	lw x17, 32 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB0_44 ( x0 )
LBB0_20:                                //  %if.then11.i
	addi x1, x1, -1
	sw x1, 444 ( x15 )
	jalr x0, LBB0_19 ( x0 )
LBB0_21:                                //  %if.else.i
	lw x3, 0 ( x13 )
	lw x4, 4 ( x13 )
	andi x5, x1, 4
	sw x4, 4 ( x3 )
	lw x4, 4 ( x13 )
	nop
	sw x3, 0 ( x4 )
	lw x12, 12 ( x13 )
	bgtu x5, x0, LBB0_23
LBB0_22:                                //  %if.else.i
	beqz x12, LBB0_44
LBB0_23:                                //  %if.then27.i
	lw x11, 16 ( x13 )
	slli x3, x1, 24
	srai x3, x3, 24
	lhu x4, 0 ( x11 )
	nop
	bgtu x4, x0, LBB0_25
LBB0_24:
	add x18, x0, x0
	jalr x0, LBB0_26 ( x0 )
LBB0_25:                                //  %if.then30.i
	slli x4, x4, 1
	add x4, x4, x11
	lh x18, -2 ( x4 )
LBB0_26:                                //  %if.end34.i
	andi x4, x3, 1
	sw x13, 44 ( x2 )               //  4-byte Folded Spill
	beqz x4, LBB0_29
LBB0_27:                                //  %land.lhs.true.i
	sw x18, 12 ( x2 )               //  4-byte Folded Spill
	andi x13, x3, 4
	add x8, x0, x0
	add x10, x0, x15
	add x14, x0, x8
	call $__put_page
	bgtu x10, x0, LBB0_55
LBB0_28:                                //  %land.lhs.true.if.end47_crit_edge.i
	lw x13, 44 ( x2 )               //  4-byte Folded Reload
	nop
	lb x1, 20 ( x13 )
	lw x14, 40 ( x2 )               //  4-byte Folded Reload
	lw x15, 48 ( x2 )               //  4-byte Folded Reload
	lw x16, 36 ( x2 )               //  4-byte Folded Reload
	lw x17, 32 ( x2 )               //  4-byte Folded Reload
	lw x18, 12 ( x2 )               //  4-byte Folded Reload
LBB0_29:                                //  %if.end47.i
	slli x1, x1, 24
	srai x4, x1, 24
	andi x1, x4, 4
	beqz x1, LBB0_35
LBB0_30:                                //  %if.then52.i
	lw x1, 12 ( x13 )
	lw x3, 28 ( x15 )
	lw x5, 24 ( x15 )
	lw x7, 472 ( x15 )
	lw x9, 304 ( x15 )
	srl x3, x1, x3
	slli x3, x3, 2
	addi x5, x5, -1
	add x3, x3, x7
	and x1, x1, x5
	lw x3, 0 ( x3 )
	beqz x9, LBB0_33
LBB0_31:                                //  %land.lhs.true61.i
	andi x5, x4, 1
	addi x4, x0, 2
	bgtu x5, x0, LBB0_34
LBB0_32:                                //  %lor.lhs.false66.i
	slli x5, x1, 2
	add x5, x5, x3
	lbu x5, 0 ( x5 )
	nop
	andi x5, x5, 2
	bgtu x5, x0, LBB0_34
LBB0_33:                                //  %if.else72.i
	add x4, x0, x0
LBB0_34:                                //  %if.end74.i
	slli x1, x1, 2
	add x1, x1, x3
	sw x4, 0 ( x1 )
LBB0_35:                                //  %for.cond.preheader.i
	lw x5, 8 ( x13 )
	nop
	beqz x5, LBB0_44
LBB0_36:                                //  %for.body.i.preheader
	addi x1, x13, 8
	lui x7, 65535 >> 12 & 0xfffff
	add x8, x0, x0
LBB0_37:                                //  %for.body.i
                                        //  =>This Inner Loop Header: Depth=1
	sw x0, 0 ( x1 )
	lbu x1, 20 ( x5 )
	nop
	andi x3, x1, 4
	bgtu x3, x0, LBB0_44
LBB0_38:                                //  %lor.lhs.false83.i
                                        //    in Loop: Header=BB0_37 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lw x3, 12 ( x5 )
	srli x28, x28, 20
	or x4, x7, x28
	and x12, x4, x18
	bne x12, x3, LBB0_44
LBB0_39:                                //  %if.end89.i
                                        //    in Loop: Header=BB0_37 Depth=1
	lw x11, 16 ( x5 )
	nop
	lhu x3, 0 ( x11 )
	nop
	beqz x3, LBB0_41
LBB0_40:                                //  %if.then93.i
                                        //    in Loop: Header=BB0_37 Depth=1
	slli x3, x3, 1
	add x3, x3, x11
	lh x18, -2 ( x3 )
LBB0_41:                                //  %if.end98.i
                                        //    in Loop: Header=BB0_37 Depth=1
	andi x1, x1, 1
	beqz x1, LBB0_43
LBB0_42:                                //  %land.lhs.true103.i
                                        //    in Loop: Header=BB0_37 Depth=1
	add x10, x0, x15
	add x13, x0, x8
	add x14, x0, x8
	sw x18, 12 ( x2 )               //  4-byte Folded Spill
	sw x5, 8 ( x2 )                 //  4-byte Folded Spill
	call $__put_page
	lui x7, 65535 >> 12 & 0xfffff
	lw x5, 8 ( x2 )                 //  4-byte Folded Reload
	lw x18, 12 ( x2 )               //  4-byte Folded Reload
	lw x17, 32 ( x2 )               //  4-byte Folded Reload
	lw x13, 44 ( x2 )               //  4-byte Folded Reload
	lw x16, 36 ( x2 )               //  4-byte Folded Reload
	lw x15, 48 ( x2 )               //  4-byte Folded Reload
	lw x14, 40 ( x2 )               //  4-byte Folded Reload
	bgtu x10, x0, LBB0_55
LBB0_43:                                //  %if.end109.i
                                        //    in Loop: Header=BB0_37 Depth=1
	sw x0, 12 ( x5 )
	sb x0, 20 ( x5 )
	lw x3, 0 ( x5 )
	lw x4, 4 ( x5 )
	addi x1, x5, 8
	sw x4, 4 ( x3 )
	lw x4, 4 ( x5 )
	nop
	sw x3, 0 ( x4 )
	lw x3, 0 ( x17 )
	nop
	lw x4, 4 ( x3 )
	sw x3, 0 ( x5 )
	sw x4, 4 ( x5 )
	lw x3, 0 ( x17 )
	nop
	sw x5, 4 ( x3 )
	lw x3, 4 ( x5 )
	nop
	sw x5, 0 ( x3 )
	lw x5, 8 ( x5 )
	nop
	bgtu x5, x0, LBB0_37
LBB0_44:                                //  %if.end131.i
	sw x16, 12 ( x13 )
	sw x0, 8 ( x13 )
	bgtu x14, x0, LBB0_46
LBB0_45:
	addi x1, x0, 4
	jalr x0, LBB0_47 ( x0 )
LBB0_46:                                //  %if.then135.i
	sw x13, 8 ( x14 )
	add x1, x0, x0
LBB0_47:                                //  %newbuf.exit
	sb x1, 20 ( x13 )
	lw x1, 452 ( x15 )
	sw x17, 0 ( x13 )
	sw x1, 4 ( x13 )
	sw x13, 452 ( x15 )
	lw x1, 4 ( x13 )
	nop
	sw x13, 0 ( x1 )
	bgtu x13, x0, LBB0_49
LBB0_48:
	add x8, x0, x0
	jalr x0, LBB0_55 ( x0 )
LBB0_49:                                //  %lor.lhs.false18
	sw x13, 44 ( x2 )               //  4-byte Folded Spill
	lw x11, 16 ( x13 )
	seqz x1, x14
	andi x13, x1, 1
	add x8, x0, x0
	add x10, x0, x15
	add x12, x0, x16
	lw x14, 16 ( x2 )               //  4-byte Folded Reload
	add x15, x0, x8
	call $__get_page
	bne x10, x8, LBB0_51
LBB0_50:                                //  %lor.lhs.false18
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
LBB0_51:                                //  %lor.lhs.false18
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	lw x4, 20 ( x2 )                //  4-byte Folded Reload
	lw x5, 40 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x5, x0, LBB0_55
LBB0_52:                                //  %lor.lhs.false18
	bgtu x10, x0, LBB0_55
LBB0_53:                                //  %if.then26
	slli x1, x1, 2
	add x1, x1, x3
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	nop
	or x3, x4, x8
	sw x3, 0 ( x1 )
	jalr x0, LBB0_55 ( x0 )
LBB0_54:                                //  %if.else29
	lw x1, 0 ( x8 )
	lw x3, 4 ( x8 )
	addi x4, x15, 448
	sw x3, 4 ( x1 )
	lw x3, 4 ( x8 )
	nop
	sw x1, 0 ( x3 )
	lw x1, 452 ( x15 )
	sw x4, 0 ( x8 )
	sw x1, 4 ( x8 )
	sw x8, 452 ( x15 )
	lw x1, 4 ( x8 )
	nop
	sw x8, 0 ( x1 )
LBB0_55:                                //  %cleanup
	add x10, x0, x8
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	lw x1, 60 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 64
$cfi5:
	.cfi_adjust_cfa_offset -64
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__get_buf, ($func_end0)-($__get_buf)
	.cfi_endproc

	.globl	$__buf_init
	.type	$__buf_init,@function
$__buf_init:                            //  @__buf_init
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	lw x4, 12 ( x10 )
	lw x5, 16 ( x10 )
	addi x3, x0, 6
	add x4, x4, x11
	addi x4, x4, -1
	sra x4, x4, x5
	bgt x4, x3, LBB1_2
LBB1_1:                                 //  %entry
	add x4, x0, x3
LBB1_2:                                 //  %entry
	sw x4, 444 ( x10 )
	addi x3, x10, 448
	sw x3, 452 ( x10 )
	sw x3, 448 ( x10 )
	ret
$func_end1:
	.size	$__buf_init, ($func_end1)-($__buf_init)
	.cfi_endproc

	.globl	$__buf_free
	.type	$__buf_free,@function
$__buf_free:                            //  @__buf_free
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi9:
	.cfi_def_cfa 2, 0
$cfi10:
	.cfi_val_offset 2, 0
	addi x2, x2, -32
$cfi11:
	.cfi_adjust_cfa_offset 32
	sw x1, 28 ( x2 )
$cfi12:
	.cfi_offset 1, -4
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	lw x8, 448 ( x10 )
	nop
	beqz x8, LBB2_18
LBB2_1:                                 //  %entry
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	addi x4, x10, 448
	beq x8, x4, LBB2_18
LBB2_2:                                 //  %for.body.lr.ph
	sw x4, 12 ( x2 )                //  4-byte Folded Spill
	bgtu x12, x0, LBB2_8
LBB2_3:                                 //  %for.body.us
                                        //  =>This Inner Loop Header: Depth=1
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB2_7
LBB2_4:                                 //  %if.then22.us
                                        //    in Loop: Header=BB2_3 Depth=1
	lw x10, 16 ( x8 )
	nop
	beqz x10, LBB2_6
LBB2_5:                                 //  %if.then25.us
                                        //    in Loop: Header=BB2_3 Depth=1
	call $free
LBB2_6:                                 //  %if.end27.us
                                        //    in Loop: Header=BB2_3 Depth=1
	lw x1, 0 ( x8 )
	lw x3, 4 ( x8 )
	nop
	sw x3, 4 ( x1 )
	lw x3, 4 ( x8 )
	nop
	sw x1, 0 ( x3 )
	add x10, x0, x8
	call $free
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x8, x0, x4
LBB2_7:                                 //  %for.cond.sink.split.us
                                        //    in Loop: Header=BB2_3 Depth=1
	lw x8, 0 ( x8 )
	nop
	bne x8, x4, LBB2_3
	jalr x0, LBB2_18 ( x0 )
LBB2_8:                                 //  %for.body.us60
                                        //  =>This Inner Loop Header: Depth=1
	lw x12, 12 ( x8 )
	lbu x1, 20 ( x8 )
	bgtu x12, x0, LBB2_10
LBB2_9:                                 //  %for.body.us60
                                        //    in Loop: Header=BB2_8 Depth=1
	andi x3, x1, 4
	beqz x3, LBB2_13
LBB2_10:                                //  %land.lhs.true.us69
                                        //    in Loop: Header=BB2_8 Depth=1
	slli x1, x1, 24
	srai x1, x1, 24
	andi x3, x1, 1
	beqz x3, LBB2_13
LBB2_11:                                //  %land.lhs.true12.us74
                                        //    in Loop: Header=BB2_8 Depth=1
	lw x11, 16 ( x8 )
	andi x13, x1, 4
	lw x10, 8 ( x2 )                //  4-byte Folded Reload
	add x14, x0, x0
	call $__put_page
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
	beqz x10, LBB2_13
LBB2_12:
	not x10, x0
	jalr x0, LBB2_19 ( x0 )
LBB2_13:                                //  %if.end20.us79
                                        //    in Loop: Header=BB2_8 Depth=1
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB2_17
LBB2_14:                                //  %if.then22.us80
                                        //    in Loop: Header=BB2_8 Depth=1
	lw x10, 16 ( x8 )
	nop
	beqz x10, LBB2_16
LBB2_15:                                //  %if.then25.us83
                                        //    in Loop: Header=BB2_8 Depth=1
	call $free
LBB2_16:                                //  %if.end27.us84
                                        //    in Loop: Header=BB2_8 Depth=1
	lw x1, 0 ( x8 )
	lw x3, 4 ( x8 )
	nop
	sw x3, 4 ( x1 )
	lw x3, 4 ( x8 )
	nop
	sw x1, 0 ( x3 )
	add x10, x0, x8
	call $free
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x8, x0, x4
LBB2_17:                                //  %for.cond.sink.split.us90
                                        //    in Loop: Header=BB2_8 Depth=1
	lw x8, 0 ( x8 )
	nop
	bne x8, x4, LBB2_8
LBB2_18:
	add x10, x0, x0
LBB2_19:                                //  %cleanup
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	lw x1, 28 ( x2 )
$cfi13:
	.cfi_same_value 1
	addi x2, x2, 32
$cfi14:
	.cfi_adjust_cfa_offset -32
$cfi15:
	.cfi_def_cfa 2, 0
	ret
$func_end2:
	.size	$__buf_free, ($func_end2)-($__buf_free)
	.cfi_endproc

	.globl	$__reclaim_buf
	.type	$__reclaim_buf,@function
$__reclaim_buf:                         //  @__reclaim_buf
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi16:
	.cfi_def_cfa 2, 0
$cfi17:
	.cfi_val_offset 2, 0
	lw x3, 0 ( x11 )
	lw x4, 4 ( x11 )
	sw x0, 8 ( x11 )
	sw x0, 12 ( x11 )
	sb x0, 20 ( x11 )
	sw x4, 4 ( x3 )
	lw x4, 4 ( x11 )
	nop
	sw x3, 0 ( x4 )
	lw x3, 448 ( x10 )
	nop
	lw x4, 4 ( x3 )
	sw x3, 0 ( x11 )
	sw x4, 4 ( x11 )
	lw x3, 448 ( x10 )
	nop
	sw x11, 4 ( x3 )
	lw x3, 4 ( x11 )
	nop
	sw x11, 0 ( x3 )
	ret
$func_end3:
	.size	$__reclaim_buf, ($func_end3)-($__reclaim_buf)
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
