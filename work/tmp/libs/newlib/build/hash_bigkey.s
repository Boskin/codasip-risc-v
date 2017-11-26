	.text
	.file	"hash_bigkey.bc"
	.globl	$__big_insert
	.type	$__big_insert,@function
$__big_insert:                          //  @__big_insert
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -56
$cfi2:
	.cfi_adjust_cfa_offset 56
	sw x1, 52 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	add x4, x0, x11
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	lw x7, 16 ( x4 )
	lw x5, 4 ( x12 )
	lw x8, 4 ( x13 )
	sw x13, 4 ( x2 )                //  4-byte Folded Spill
	lw x1, 0 ( x13 )
	nop
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	bgtu x5, x0, LBB0_12
LBB0_1:
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
LBB0_2:                                 //  %for.cond129.preheader
	add x10, x0, x0
	beqz x8, LBB0_27
LBB0_3:
	sw x4, 40 ( x2 )                //  4-byte Folded Spill
LBB0_4:                                 //  %for.body131
                                        //  =>This Inner Loop Header: Depth=1
	lui x9, 65535 >> 12 & 0xfffff
	lhu x1, 0 ( x7 )
	ori x28, x0, 65528 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	slli x1, x1, 1
	add x1, x1, x7
	lh x3, 2 ( x1 )
	lui x4, 65528 >> 12 & 0xfffff
	or x4, x4, x28
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	add x3, x4, x3
	or x4, x9, x28
	and x4, x4, x3
	add x3, x0, x4
	bgt x8, x4, LBB0_6
LBB0_5:                                 //  %for.body131
                                        //    in Loop: Header=BB0_4 Depth=1
	add x3, x0, x8
LBB0_6:                                 //  %for.body131
                                        //    in Loop: Header=BB0_4 Depth=1
	sw x8, 8 ( x2 )                 //  4-byte Folded Spill
	bne x4, x8, LBB0_9
LBB0_7:                                 //  %land.lhs.true
                                        //    in Loop: Header=BB0_4 Depth=1
	lw x4, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	lw x5, 4 ( x4 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x9, x28
	bne x8, x5, LBB0_9
LBB0_8:                                 //    in Loop: Header=BB0_4 Depth=1
	add x3, x4, x3
LBB0_9:                                 //  %if.end148
                                        //    in Loop: Header=BB0_4 Depth=1
	lhu x1, 4 ( x1 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x9, x28
	sw x4, 28 ( x2 )                //  4-byte Folded Spill
	sub x1, x1, x3
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	and x1, x4, x1
	add x10, x1, x7
	and x12, x4, x3
	sw x12, 36 ( x2 )               //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x7
	call $memmove
	lhu x1, 0 ( x8 )
	ori x28, x0, 65526 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	addi x3, x1, 2
	slli x1, x1, 1
	lw x4, 28 ( x2 )                //  4-byte Folded Reload
	nop
	and x4, x4, x3
	slli x4, x4, 1
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	nop
	sub x5, x10, x1
	lui x7, 65526 >> 12 & 0xfffff
	or x7, x7, x28
	add x1, x1, x8
	slli x9, x3, 1
	add x5, x7, x5
	add x4, x4, x8
	lw x7, 8 ( x2 )                 //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	nop
	sub x7, x7, x11
	sh x10, 2 ( x1 )
	sh x5, 2 ( x4 )
	sh x3, 0 ( x8 )
	sh x10, 4 ( x4 )
	add x1, x9, x8
	add x8, x0, x7
	beqz x8, LBB0_26
LBB0_10:                                //  %if.then186
                                        //    in Loop: Header=BB0_4 Depth=1
	addi x3, x0, 2
	sh x3, 0 ( x1 )
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__add_ovflpage
	bgtu x10, x0, LBB0_25
LBB0_11:
	not x10, x0
	jalr x0, LBB0_27 ( x0 )
LBB0_12:                                //  %for.body.preheader
	sw x8, 8 ( x2 )                 //  4-byte Folded Spill
	sw x4, 40 ( x2 )                //  4-byte Folded Spill
	lw x9, 0 ( x12 )
LBB0_13:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lhu x1, 0 ( x7 )
	ori x28, x0, 65528 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	slli x1, x1, 1
	add x1, x1, x7
	lh x3, 2 ( x1 )
	lui x4, 65528 >> 12 & 0xfffff
	or x4, x4, x28
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	add x3, x4, x3
	lui x4, 65535 >> 12 & 0xfffff
	or x4, x4, x28
	and x3, x4, x3
	bgt x5, x3, LBB0_15
LBB0_14:                                //  %for.body
                                        //    in Loop: Header=BB0_13 Depth=1
	add x3, x0, x5
LBB0_15:                                //  %for.body
                                        //    in Loop: Header=BB0_13 Depth=1
	sw x5, 28 ( x2 )                //  4-byte Folded Spill
	lhu x1, 4 ( x1 )
	nop
	sub x1, x1, x3
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	and x1, x4, x1
	add x10, x1, x7
	and x12, x4, x3
	sw x9, 20 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x9
	sw x12, 24 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x7
	sw x4, 36 ( x2 )                //  4-byte Folded Spill
	call $memmove
	lhu x1, 0 ( x8 )
	nop
	slli x3, x1, 1
	add x4, x3, x8
	lw x5, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sh x5, 2 ( x4 )
	sub x3, x5, x3
	ori x28, x0, 65526 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, 65526 >> 12 & 0xfffff
	or x4, x4, x28
	add x3, x4, x3
	addi x1, x1, 2
	sh x1, 0 ( x8 )
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	nop
	and x4, x4, x1
	slli x4, x4, 1
	add x4, x4, x8
	sh x3, 2 ( x4 )
	sh x5, 4 ( x4 )
	slli x1, x1, 1
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	add x1, x1, x8
	slti x3, x0, 1
	sh x3, 0 ( x1 )
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__add_ovflpage
	add x4, x0, x10
	bgtu x4, x0, LBB0_17
LBB0_16:
	not x10, x0
	jalr x0, LBB0_27 ( x0 )
LBB0_17:                                //  %if.end
                                        //    in Loop: Header=BB0_13 Depth=1
	lw x5, 28 ( x2 )                //  4-byte Folded Reload
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sub x5, x5, x3
	sw x4, 40 ( x2 )                //  4-byte Folded Spill
	bgtu x5, x0, LBB0_24
LBB0_18:                                //  %if.then48
	lw x5, 36 ( x2 )                //  4-byte Folded Reload
	nop
	lhu x1, 0 ( x5 )
	nop
	slli x3, x1, 1
	add x7, x3, x5
	lhu x3, 2 ( x7 )
	nop
	beqz x3, LBB0_22
LBB0_19:                                //  %if.then54
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	bgt x1, x3, LBB0_21
LBB0_20:                                //  %if.then54
	add x3, x0, x1
LBB0_21:                                //  %if.then54
	lhu x1, 4 ( x7 )
	nop
	sub x8, x1, x3
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	add x4, x0, x3
	sw x4, 32 ( x2 )                //  4-byte Folded Spill
	and x3, x1, x8
	add x10, x3, x5
	sh x8, 0 ( x7 )
	and x12, x1, x4
	sw x12, 28 ( x2 )               //  4-byte Folded Spill
	sw x7, 24 ( x2 )                //  4-byte Folded Spill
	call $memmove
	lw x5, 36 ( x2 )                //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	addi x1, x0, 3
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sh x1, -4 ( x3 )
	lhu x1, 0 ( x5 )
	nop
	slli x3, x1, 1
	add x3, x3, x5
	lh x4, 2 ( x3 )
	lw x7, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sub x4, x4, x7
	sh x4, 2 ( x3 )
	add x3, x0, x8
	lw x7, 8 ( x2 )                 //  4-byte Folded Reload
	lw x4, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sub x7, x7, x4
	add x11, x4, x11
	addi x1, x1, 2
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	add x8, x0, x7
	jalr x0, LBB0_23 ( x0 )
LBB0_22:                                //  %if.else
	addi x3, x0, 2
	addi x1, x1, -2
	lw x8, 8 ( x2 )                 //  4-byte Folded Reload
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
LBB0_23:                                //  %if.end110.thread
	slli x1, x1, 1
	add x1, x1, x5
	sh x3, 0 ( x1 )
	lb x1, 20 ( x4 )
	lw x7, 16 ( x4 )
	ori x1, x1, 1
	sb x1, 20 ( x4 )
	jalr x0, LBB0_2 ( x0 )
LBB0_24:                                //  %if.end110
                                        //    in Loop: Header=BB0_13 Depth=1
	lb x1, 20 ( x4 )
	lw x7, 16 ( x4 )
	lw x9, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x9, x3, x9
	ori x1, x1, 1
	sb x1, 20 ( x4 )
	jalr x0, LBB0_13 ( x0 )
LBB0_25:                                //  %if.end195
                                        //    in Loop: Header=BB0_4 Depth=1
	lb x1, 20 ( x10 )
	lw x7, 16 ( x10 )
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x3, x11
	ori x1, x1, 1
	sw x10, 40 ( x2 )               //  4-byte Folded Spill
	sb x1, 20 ( x10 )
	jalr x0, LBB0_4 ( x0 )
LBB0_26:                                //  %if.end195.thread
	addi x3, x0, 3
	sh x3, 0 ( x1 )
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	lb x1, 20 ( x3 )
	nop
	ori x1, x1, 1
	sb x1, 20 ( x3 )
	add x10, x0, x0
LBB0_27:                                //  %cleanup
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 56
$cfi5:
	.cfi_adjust_cfa_offset -56
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__big_insert, ($func_end0)-($__big_insert)
	.cfi_endproc

	.globl	$__big_delete
	.type	$__big_delete,@function
$__big_delete:                          //  @__big_delete
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi9:
	.cfi_adjust_cfa_offset 40
	sw x1, 36 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	add x13, x0, x11
	add x8, x0, x10
	add x12, x0, x0
	addi x1, x13, 16
	lui x7, 65535 >> 12 & 0xfffff
	add x14, x0, x12
	sw x13, 12 ( x2 )               //  4-byte Folded Spill
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
LBB1_1:                                 //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x1, 0 ( x1 )
	nop
	lh x3, 4 ( x1 )
	sw x12, 24 ( x2 )               //  4-byte Folded Spill
	beqz x14, LBB1_5
LBB1_2:                                 //  %lor.rhs
                                        //    in Loop: Header=BB1_1 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x7, x28
	and x4, x4, x3
	xori x4, x4, 3
	beqz x4, LBB1_14
LBB1_3:                                 //  %while.body.thread
                                        //    in Loop: Header=BB1_1 Depth=1
	ori x28, x0, 65534 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, 65534 >> 12 & 0xfffff
	or x4, x4, x28
	and x3, x4, x3
	slti x4, x0, 1
	addi x5, x0, 2
	beq x3, x5, LBB1_8
LBB1_4:                                 //  %while.body.thread
                                        //    in Loop: Header=BB1_1 Depth=1
	add x4, x0, x14
	lh x3, 0 ( x1 )
	jalr x0, LBB1_10 ( x0 )
LBB1_5:                                 //  %while.body
                                        //    in Loop: Header=BB1_1 Depth=1
	ori x28, x0, 65534 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x4, 65534 >> 12 & 0xfffff
	or x4, x4, x28
	and x5, x4, x3
	slti x4, x0, 1
	addi x9, x0, 2
	beq x5, x9, LBB1_7
LBB1_6:                                 //  %while.body
                                        //    in Loop: Header=BB1_1 Depth=1
	add x4, x0, x14
LBB1_7:                                 //  %while.body
                                        //    in Loop: Header=BB1_1 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x5, x7, x28
	and x3, x5, x3
	xori x3, x3, 3
	beqz x3, LBB1_9
LBB1_8:                                 //  %while.body.if.end20_crit_edge
                                        //    in Loop: Header=BB1_1 Depth=1
	lh x3, 0 ( x1 )
	jalr x0, LBB1_10 ( x0 )
LBB1_9:                                 //  %land.lhs.true
                                        //    in Loop: Header=BB1_1 Depth=1
	lhu x3, 0 ( x1 )
	nop
	slli x5, x3, 1
	add x5, x5, x1
	lhu x5, 2 ( x5 )
	nop
	bgtu x5, x0, LBB1_15
LBB1_10:                                //  %if.end20
                                        //    in Loop: Header=BB1_1 Depth=1
	sw x4, 20 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x7, x28
	and x3, x4, x3
	slli x3, x3, 1
	add x1, x3, x1
	lhu x11, -2 ( x1 )
	lb x1, 20 ( x13 )
	nop
	ori x1, x1, 1
	sb x1, 20 ( x13 )
	add x10, x0, x8
	add x12, x0, x13
	add x13, x0, x0
	call $__get_buf
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x10
	beqz x11, LBB1_12
LBB1_11:                                //  %if.then28
                                        //    in Loop: Header=BB1_1 Depth=1
	add x10, x0, x8
	sw x13, 16 ( x2 )               //  4-byte Folded Spill
	call $__free_ovflpage
	lw x13, 16 ( x2 )               //  4-byte Folded Reload
	nop
LBB1_12:                                //  %if.end29
                                        //    in Loop: Header=BB1_1 Depth=1
	addi x1, x13, 16
	add x12, x0, x13
	lui x7, 65535 >> 12 & 0xfffff
	lw x14, 20 ( x2 )               //  4-byte Folded Reload
	bgtu x13, x0, LBB1_1
LBB1_13:
	not x10, x0
	jalr x0, LBB1_23 ( x0 )
LBB1_14:                                //  %lor.rhs.while.end_crit_edge
	lh x3, 0 ( x1 )
LBB1_15:                                //  %while.end
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x7, x28
	and x4, x4, x3
	sltiu x5, x4, 3
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	lw x3, 0 ( x3 )
	beqz x5, LBB1_17
LBB1_16:
	add x1, x0, x0
	jalr x0, LBB1_18 ( x0 )
LBB1_17:                                //  %if.then41
	slli x5, x4, 1
	add x1, x5, x1
	lh x1, -2 ( x1 )
	sh x0, 4 ( x3 )
	sh x1, 2 ( x3 )
	lw x1, 8 ( x13 )
LBB1_18:                                //  %if.end46
	ori x28, x0, 65535 & 0xfff
	addi x5, x4, -2
	slli x28, x28, 20
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	nop
	sw x1, 8 ( x11 )
	sh x5, 0 ( x3 )
	srli x28, x28, 20
	lw x1, 12 ( x8 )
	or x7, x7, x28
	ori x28, x0, 65534 & 0xfff
	slli x28, x28, 20
	and x5, x7, x5
	slli x4, x4, 1
	srli x28, x28, 20
	slli x5, x5, 1
	sub x4, x1, x4
	lui x9, 65534 >> 12 & 0xfffff
	or x9, x9, x28
	add x3, x5, x3
	add x4, x9, x4
	add x1, x7, x1
	sh x4, 2 ( x3 )
	sh x1, 4 ( x3 )
	lb x1, 20 ( x11 )
	nop
	ori x1, x1, 1
	sb x1, 20 ( x11 )
	beqz x13, LBB1_20
LBB1_19:                                //  %if.then70
	add x10, x0, x8
	add x11, x0, x13
	sw x13, 16 ( x2 )               //  4-byte Folded Spill
	call $__free_ovflpage
	lw x13, 16 ( x2 )               //  4-byte Folded Reload
	lw x12, 24 ( x2 )               //  4-byte Folded Reload
	nop
LBB1_20:                                //  %if.end71
	beq x12, x13, LBB1_22
LBB1_21:                                //  %if.then74
	add x10, x0, x8
	add x11, x0, x12
	call $__free_ovflpage
LBB1_22:                                //  %if.end75
	lw x1, 56 ( x8 )
	nop
	addi x1, x1, -1
	sw x1, 56 ( x8 )
	add x10, x0, x0
LBB1_23:                                //  %cleanup
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi12:
	.cfi_adjust_cfa_offset -40
$cfi13:
	.cfi_def_cfa 2, 0
	ret
$func_end1:
	.size	$__big_delete, ($func_end1)-($__big_delete)
	.cfi_endproc

	.globl	$__find_bigpair
	.type	$__find_bigpair,@function
$__find_bigpair:                        //  @__find_bigpair
	.cfi_startproc
  .codasip_retval_regs 10, 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi14:
	.cfi_def_cfa 2, 0
$cfi15:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi16:
	.cfi_adjust_cfa_offset 40
	sw x1, 36 ( x2 )
$cfi17:
	.cfi_offset 1, -4
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	add x7, x0, x11
	add x8, x0, x10
	lw x1, 16 ( x7 )
	slli x3, x12, 1
	lw x4, 12 ( x8 )
	ori x28, x0, 65535 & 0xfff
	add x3, x3, x1
	lh x3, 0 ( x3 )
	slli x28, x28, 20
	lui x5, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	sub x3, x4, x3
	or x4, x5, x28
	and x4, x4, x3
	bgt x4, x14, LBB2_9
LBB2_1:                                 //  %land.rhs.preheader
	add x9, x0, x14
	sw x14, 4 ( x2 )                //  4-byte Folded Spill
	sw x8, 8 ( x2 )                 //  4-byte Folded Spill
LBB2_2:                                 //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	slli x3, x12, 1
	add x8, x3, x1
	lhu x3, 2 ( x8 )
	nop
	xori x3, x3, 1
	beqz x3, LBB2_4
LBB2_3:
	add x14, x0, x9
	jalr x0, LBB2_9 ( x0 )
LBB2_4:                                 //  %for.body
                                        //    in Loop: Header=BB2_2 Depth=1
	sw x9, 12 ( x2 )                //  4-byte Folded Spill
	sw x7, 24 ( x2 )                //  4-byte Folded Spill
	lhu x3, 0 ( x8 )
	nop
	add x10, x3, x1
	sw x13, 20 ( x2 )               //  4-byte Folded Spill
	add x11, x0, x13
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x4
	call $memcmp
	bgtu x10, x0, LBB2_10
LBB2_5:                                 //  %if.end
                                        //    in Loop: Header=BB2_2 Depth=1
	lhu x11, 4 ( x8 )
	lw x8, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x12, 24 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x0
	call $__get_buf
	add x7, x0, x10
	bgtu x7, x0, LBB2_7
LBB2_6:
	addi x10, x0, -3
	jalr x0, LBB2_11 ( x0 )
LBB2_7:                                 //  %if.end22
                                        //    in Loop: Header=BB2_2 Depth=1
	lw x3, 12 ( x8 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x4, x1, x28
	lw x1, 16 ( x7 )
	lw x13, 20 ( x2 )               //  4-byte Folded Reload
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x13, x5, x13
	lw x9, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sub x9, x9, x5
	lh x5, 2 ( x1 )
	nop
	sub x3, x3, x5
	and x4, x4, x3
	slti x12, x0, 1
	lw x14, 4 ( x2 )                //  4-byte Folded Reload
	nop
	ble x4, x14, LBB2_2
LBB2_8:
	add x14, x0, x9
	slti x12, x0, 1
LBB2_9:                                 //  %for.end
	beq x14, x4, LBB2_12
LBB2_10:
	addi x10, x0, -2
LBB2_11:                                //  %cleanup
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi18:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi19:
	.cfi_adjust_cfa_offset -40
$cfi20:
	.cfi_def_cfa 2, 0
	ret
LBB2_12:                                //  %lor.lhs.false
	slli x3, x12, 1
	add x3, x3, x1
	lhu x3, 0 ( x3 )
	nop
	add x10, x3, x1
	add x11, x0, x13
	add x8, x0, x12
	add x12, x0, x14
	call $memcmp
	add x3, x0, x8
	add x1, x0, x0
	beq x10, x1, LBB2_14
LBB2_13:                                //  %lor.lhs.false
	addi x3, x0, -2
LBB2_14:                                //  %lor.lhs.false
	add x10, x0, x3
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi21:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi22:
	.cfi_adjust_cfa_offset -40
$cfi23:
	.cfi_def_cfa 2, 0
	ret
$func_end2:
	.size	$__find_bigpair, ($func_end2)-($__find_bigpair)
	.cfi_endproc

	.globl	$__find_last_page
	.type	$__find_last_page,@function
$__find_last_page:                      //  @__find_last_page
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi24:
	.cfi_def_cfa 2, 0
$cfi25:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi26:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi27:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	sw x11, 4 ( x2 )                //  4-byte Folded Spill
	lw x1, 0 ( x11 )
	add x3, x0, x0
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
LBB3_1:                                 //  %for.cond
                                        //  =>This Inner Loop Header: Depth=1
	lw x3, 16 ( x1 )
	nop
	lhu x5, 4 ( x3 )
	lhu x4, 0 ( x3 )
	xori x5, x5, 3
	bgtu x5, x0, LBB3_6
LBB3_2:                                 //  %land.lhs.true
                                        //    in Loop: Header=BB3_1 Depth=1
	xori x5, x4, 2
	bgtu x5, x0, LBB3_4
LBB3_3:                                 //  %for.end.thread
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
	jalr x0, LBB3_9 ( x0 )
LBB3_4:                                 //  %lor.lhs.false
                                        //    in Loop: Header=BB3_1 Depth=1
	slli x5, x4, 1
	add x5, x5, x3
	lhu x7, 0 ( x5 )
	nop
	beqz x7, LBB3_7
LBB3_5:                                 //  %lor.lhs.false10
                                        //    in Loop: Header=BB3_1 Depth=1
	lhu x5, 2 ( x5 )
	nop
	bgtu x5, x0, LBB3_7
LBB3_6:                                 //  %if.end
                                        //    in Loop: Header=BB3_1 Depth=1
	slli x4, x4, 1
	add x3, x4, x3
	lhu x11, -2 ( x3 )
	add x10, x0, x8
	add x12, x0, x1
	add x13, x0, x0
	call $__get_buf
	add x1, x0, x10
	bgtu x1, x0, LBB3_1
	jalr x0, LBB3_9 ( x0 )
LBB3_7:                                 //  %for.end
	sltiu x4, x4, 3
	lw x5, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 0 ( x5 )
	bgtu x4, x0, LBB3_9
LBB3_8:                                 //  %if.then25
	lh x1, 6 ( x3 )
	nop
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
LBB3_9:                                 //  %cleanup
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	and x10, x1, x3
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi28:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi29:
	.cfi_adjust_cfa_offset -24
$cfi30:
	.cfi_def_cfa 2, 0
	ret
$func_end3:
	.size	$__find_last_page, ($func_end3)-($__find_last_page)
	.cfi_endproc

	.globl	$__big_return
	.type	$__big_return,@function
$__big_return:                          //  @__big_return
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi31:
	.cfi_def_cfa 2, 0
$cfi32:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi33:
	.cfi_adjust_cfa_offset 40
	sw x1, 36 ( x2 )
$cfi34:
	.cfi_offset 1, -4
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	add x9, x0, x11
	sw x14, 20 ( x2 )               //  4-byte Folded Spill
	sw x13, 24 ( x2 )               //  4-byte Folded Spill
	lw x1, 16 ( x9 )
	addi x3, x12, 1
LBB4_1:                                 //  %while.cond
                                        //  =>This Inner Loop Header: Depth=1
	slli x3, x3, 1
	add x3, x3, x1
	lhu x3, 0 ( x3 )
	nop
	xori x4, x3, 1
	beqz x4, LBB4_5
LBB4_2:                                 //  %while.cond
	xori x3, x3, 2
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	bgtu x3, x0, LBB4_11
LBB4_3:                                 //  %if.then12
	lhu x3, 0 ( x1 )
	nop
	slli x3, x3, 1
	add x1, x3, x1
	lhu x11, -2 ( x1 )
	add x13, x0, x0
	add x12, x0, x9
	sw x13, 12 ( x2 )               //  4-byte Folded Spill
	call $__get_buf
	bgtu x10, x0, LBB4_8
LBB4_4:
	not x1, x0
	jalr x0, LBB4_25 ( x0 )
LBB4_5:                                 //  %while.body
                                        //    in Loop: Header=BB4_1 Depth=1
	lhu x3, 0 ( x1 )
	nop
	slli x3, x3, 1
	add x1, x3, x1
	lhu x11, -2 ( x1 )
	add x8, x0, x10
	add x12, x0, x9
	add x13, x0, x0
	call $__get_buf
	add x9, x0, x10
	bgtu x9, x0, LBB4_7
LBB4_6:
	not x1, x0
	jalr x0, LBB4_25 ( x0 )
LBB4_7:                                 //  %if.end
                                        //    in Loop: Header=BB4_1 Depth=1
	lw x1, 16 ( x9 )
	addi x3, x0, 2
	add x10, x0, x8
	jalr x0, LBB4_1 ( x0 )
LBB4_8:                                 //  %if.end21
	lw x1, 16 ( x10 )
	lhu x3, 12 ( x10 )
	nop
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	lh x1, 2 ( x1 )
	nop
	sw x1, 4 ( x2 )                 //  4-byte Folded Spill
	add x8, x0, x10
	add x11, x0, x10
LBB4_9:                                 //  %if.end91
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x13, 20 ( x2 )               //  4-byte Folded Reload
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $collect_data
	xori x1, x10, -1
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 4 ( x3 )
	bgtu x1, x0, LBB4_21
LBB4_10:
	not x1, x0
	jalr x0, LBB4_25 ( x0 )
LBB4_11:                                //  %if.else
	lhu x4, 0 ( x1 )
	nop
	slli x3, x4, 1
	add x3, x3, x1
	lhu x5, 2 ( x3 )
	lhu x11, 0 ( x3 )
	bgtu x5, x0, LBB4_15
LBB4_12:                                //  %if.then30
	sw x11, 4 ( x2 )                //  4-byte Folded Spill
	lhu x11, -2 ( x3 )
	lhu x1, 2 ( x1 )
	nop
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	lhu x1, 12 ( x9 )
	nop
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	add x13, x0, x0
	add x8, x0, x9
	add x12, x0, x9
	call $__get_buf
	add x11, x0, x10
	bgtu x11, x0, LBB4_14
LBB4_13:
	not x1, x0
	jalr x0, LBB4_25 ( x0 )
LBB4_14:                                //  %if.end48
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sub x3, x4, x3
	or x1, x1, x28
	and x1, x1, x3
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB4_9 ( x0 )
LBB4_15:                                //  %if.else50
	add x5, x11, x1
	lw x7, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x5, 0 ( x7 )
	lhu x1, 2 ( x1 )
	nop
	sub x1, x1, x11
	sw x1, 4 ( x7 )
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB4_24
LBB4_16:                                //  %if.then60
	xori x1, x4, 2
	bgtu x1, x0, LBB4_18
LBB4_17:                                //  %if.then65
	lw x1, 292 ( x10 )
	slti x3, x0, 1
	sw x0, 288 ( x10 )
	sw x3, 296 ( x10 )
	addi x1, x1, 1
	sw x1, 292 ( x10 )
	jalr x0, LBB4_24 ( x0 )
LBB4_18:                                //  %if.else66
	lhu x11, -2 ( x3 )
	add x13, x0, x0
	add x12, x0, x9
	add x8, x0, x10
	call $__get_buf
	add x3, x0, x8
	sw x10, 288 ( x3 )
	not x1, x0
	beqz x10, LBB4_25
LBB4_19:                                //  %if.end77
	slti x1, x0, 1
	sw x1, 296 ( x3 )
	lw x1, 16 ( x10 )
	nop
	lhu x1, 0 ( x1 )
	nop
	bgtu x1, x0, LBB4_24
LBB4_20:                                //  %if.then83
	lw x1, 292 ( x3 )
	nop
	addi x1, x1, 1
	sw x1, 292 ( x3 )
	sw x0, 288 ( x3 )
	jalr x0, LBB4_24 ( x0 )
LBB4_21:                                //  %if.end99
	lw x1, 12 ( x8 )
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	beq x1, x3, LBB4_23
LBB4_22:                                //  %if.then104
	call $__errno
	addi x1, x0, 22
	sw x1, 0 ( x10 )
	not x1, x0
	jalr x0, LBB4_25 ( x0 )
LBB4_23:                                //  %if.end106
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lw x1, 16 ( x8 )
	lui x3, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	lw x8, 16 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 280 ( x8 )
	or x3, x3, x28
	lw x4, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	and x3, x3, x4
	add x11, x3, x1
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $memmove
	lw x1, 280 ( x8 )
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
LBB4_24:                                //  %cleanup
	add x1, x0, x0
LBB4_25:                                //  %cleanup
	add x10, x0, x1
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi35:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi36:
	.cfi_adjust_cfa_offset -40
$cfi37:
	.cfi_def_cfa 2, 0
	ret
$func_end4:
	.size	$__big_return, ($func_end4)-($__big_return)
	.cfi_endproc

	.type	$collect_data,@function
$collect_data:                          //  @collect_data
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi38:
	.cfi_def_cfa 2, 0
$cfi39:
	.cfi_val_offset 2, 0
	addi x2, x2, -48
$cfi40:
	.cfi_adjust_cfa_offset 48
	sw x1, 44 ( x2 )
$cfi41:
	.cfi_offset 1, -4
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	add x5, x0, x11
	add x8, x0, x10
	lw x7, 16 ( x5 )
	lw x1, 12 ( x8 )
	lhu x9, 12 ( x5 )
	lhu x3, 4 ( x7 )
	lhu x4, 2 ( x7 )
	xori x3, x3, 3
	sub x1, x1, x4
	sw x7, 8 ( x2 )                 //  4-byte Folded Spill
	sw x5, 32 ( x2 )                //  4-byte Folded Spill
	sw x12, 24 ( x2 )               //  4-byte Folded Spill
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	sw x9, 12 ( x2 )                //  4-byte Folded Spill
	sw x13, 28 ( x2 )               //  4-byte Folded Spill
	bgtu x3, x0, LBB5_10
LBB5_1:                                 //  %if.then
	lw x10, 280 ( x8 )
	add x1, x12, x1
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	beqz x10, LBB5_3
LBB5_2:                                 //  %if.then5
	call $free
LBB5_3:                                 //  %if.end
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	nop
	call $malloc
	sw x10, 280 ( x8 )
	not x3, x0
	beqz x10, LBB5_15
LBB5_4:                                 //  %if.end11
	lw x12, 32 ( x2 )               //  4-byte Folded Reload
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB5_12
LBB5_5:                                 //  %if.then13
	slti x1, x0, 1
	sw x1, 296 ( x8 )
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	lhu x1, 0 ( x4 )
	nop
	xori x3, x1, 2
	bgtu x3, x0, LBB5_7
LBB5_6:                                 //  %if.then18
	lw x1, 292 ( x8 )
	sw x0, 288 ( x8 )
	addi x1, x1, 1
	sw x1, 292 ( x8 )
	jalr x0, LBB5_12 ( x0 )
LBB5_7:                                 //  %if.else
	slli x1, x1, 1
	add x1, x1, x4
	lhu x11, -2 ( x1 )
	add x13, x0, x0
	add x10, x0, x8
	call $__get_buf
	not x3, x0
	lw x12, 32 ( x2 )               //  4-byte Folded Reload
	sw x10, 288 ( x8 )
	beqz x10, LBB5_15
LBB5_8:                                 //  %if.else29
	lw x1, 16 ( x10 )
	nop
	lhu x1, 0 ( x1 )
	nop
	bgtu x1, x0, LBB5_12
LBB5_9:                                 //  %if.then34
	lw x1, 292 ( x8 )
	nop
	addi x1, x1, 1
	sw x1, 292 ( x8 )
	sw x0, 288 ( x8 )
	jalr x0, LBB5_12 ( x0 )
LBB5_10:                                //  %if.else42
	lhu x1, 0 ( x7 )
	nop
	slli x1, x1, 1
	add x1, x1, x7
	lhu x11, -2 ( x1 )
	add x13, x0, x0
	add x10, x0, x8
	add x12, x0, x5
	call $__get_buf
	add x1, x0, x10
	not x3, x0
	beqz x1, LBB5_15
LBB5_11:                                //  %lor.lhs.false
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	lw x4, 20 ( x2 )                //  4-byte Folded Reload
	nop
	add x12, x3, x4
	add x10, x0, x8
	add x11, x0, x1
	lw x13, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $collect_data
	not x3, x0
	lw x12, 32 ( x2 )               //  4-byte Folded Reload
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	ble x10, x0, LBB5_15
LBB5_12:                                //  %if.end56
	lw x1, 12 ( x12 )
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	beq x1, x3, LBB5_14
LBB5_13:                                //  %if.then61
	call $__errno
	addi x1, x0, 22
	sw x1, 0 ( x10 )
	not x3, x0
	jalr x0, LBB5_15 ( x0 )
LBB5_14:                                //  %if.end63
	lw x1, 280 ( x8 )
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	lhu x3, 2 ( x3 )
	lw x4, 16 ( x12 )
	lw x5, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x5, x1
	add x11, x3, x4
	lw x12, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $memmove
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
LBB5_15:                                //  %cleanup
	add x10, x0, x3
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	lw x1, 44 ( x2 )
$cfi42:
	.cfi_same_value 1
	addi x2, x2, 48
$cfi43:
	.cfi_adjust_cfa_offset -48
$cfi44:
	.cfi_def_cfa 2, 0
	ret
$func_end5:
	.size	$collect_data, ($func_end5)-($collect_data)
	.cfi_endproc

	.globl	$__big_keydata
	.type	$__big_keydata,@function
$__big_keydata:                         //  @__big_keydata
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi45:
	.cfi_def_cfa 2, 0
$cfi46:
	.cfi_val_offset 2, 0
	addi x2, x2, -24
$cfi47:
	.cfi_adjust_cfa_offset 24
	sw x1, 20 ( x2 )
$cfi48:
	.cfi_offset 1, -4
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	sw x12, 8 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x0
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x8
	call $collect_key
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	xori x1, x10, -1
	sw x10, 4 ( x3 )
	bgtu x1, x0, LBB6_2
LBB6_1:
	not x8, x0
	jalr x0, LBB6_3 ( x0 )
LBB6_2:                                 //  %if.end
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	lw x1, 284 ( x1 )
	nop
	sw x1, 0 ( x3 )
LBB6_3:                                 //  %return
	add x10, x0, x8
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	lw x1, 20 ( x2 )
$cfi49:
	.cfi_same_value 1
	addi x2, x2, 24
$cfi50:
	.cfi_adjust_cfa_offset -24
$cfi51:
	.cfi_def_cfa 2, 0
	ret
$func_end6:
	.size	$__big_keydata, ($func_end6)-($__big_keydata)
	.cfi_endproc

	.type	$collect_key,@function
$collect_key:                           //  @collect_key
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi52:
	.cfi_def_cfa 2, 0
$cfi53:
	.cfi_val_offset 2, 0
	addi x2, x2, -48
$cfi54:
	.cfi_adjust_cfa_offset 48
	sw x1, 44 ( x2 )
$cfi55:
	.cfi_offset 1, -4
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	add x7, x0, x11
	add x8, x0, x10
	lw x9, 16 ( x7 )
	ori x28, x0, 65534 & 0xfff
	slli x28, x28, 20
	lw x1, 12 ( x8 )
	lhu x3, 4 ( x9 )
	lhu x4, 2 ( x9 )
	lui x5, 65534 >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x5, x28
	and x3, x5, x3
	sub x4, x1, x4
	xori x1, x3, 2
	lhu x5, 12 ( x7 )
	add x3, x12, x4
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
	sw x7, 28 ( x2 )                //  4-byte Folded Spill
	sw x12, 12 ( x2 )               //  4-byte Folded Spill
	sw x9, 8 ( x2 )                 //  4-byte Folded Spill
	sw x4, 4 ( x2 )                 //  4-byte Folded Spill
	sw x5, 16 ( x2 )                //  4-byte Folded Spill
	sw x14, 24 ( x2 )               //  4-byte Folded Spill
	sw x13, 20 ( x2 )               //  4-byte Folded Spill
	bgtu x1, x0, LBB7_5
LBB7_1:                                 //  %if.then
	lw x10, 284 ( x8 )
	nop
	beqz x10, LBB7_3
LBB7_2:                                 //  %if.then11
	call $free
LBB7_3:                                 //  %if.end
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $malloc
	sw x10, 284 ( x8 )
	not x3, x0
	beqz x10, LBB7_10
LBB7_4:                                 //  %if.end17
	slti x12, x0, 1
	add x10, x0, x8
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	lw x13, 20 ( x2 )               //  4-byte Folded Reload
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__big_return
	not x3, x0
	beqz x10, LBB7_7
	jalr x0, LBB7_10 ( x0 )
LBB7_5:                                 //  %if.else
	lhu x1, 0 ( x9 )
	nop
	slli x1, x1, 1
	add x1, x1, x9
	lhu x11, -2 ( x1 )
	add x13, x0, x0
	add x10, x0, x8
	add x12, x0, x7
	call $__get_buf
	add x1, x0, x10
	not x3, x0
	beqz x1, LBB7_10
LBB7_6:                                 //  %lor.lhs.false28
	add x10, x0, x8
	add x11, x0, x1
	lw x12, 32 ( x2 )               //  4-byte Folded Reload
	lw x13, 20 ( x2 )               //  4-byte Folded Reload
	lw x14, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $collect_key
	not x3, x0
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	ble x10, x0, LBB7_10
LBB7_7:                                 //  %if.end34
	lw x4, 28 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 12 ( x4 )
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	beq x1, x3, LBB7_9
LBB7_8:                                 //  %if.then39
	call $__errno
	addi x1, x0, 22
	sw x1, 0 ( x10 )
	not x3, x0
	jalr x0, LBB7_10 ( x0 )
LBB7_9:                                 //  %if.end41
	lw x1, 284 ( x8 )
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	lhu x3, 2 ( x3 )
	lw x4, 16 ( x4 )
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x5, x1
	add x11, x3, x4
	lw x12, 4 ( x2 )                //  4-byte Folded Reload
	nop
	call $memmove
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
LBB7_10:                                //  %cleanup
	add x10, x0, x3
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	lw x1, 44 ( x2 )
$cfi56:
	.cfi_same_value 1
	addi x2, x2, 48
$cfi57:
	.cfi_adjust_cfa_offset -48
$cfi58:
	.cfi_def_cfa 2, 0
	ret
$func_end7:
	.size	$collect_key, ($func_end7)-($collect_key)
	.cfi_endproc

	.globl	$__big_split
	.type	$__big_split,@function
$__big_split:                           //  @__big_split
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi59:
	.cfi_def_cfa 2, 0
$cfi60:
	.cfi_val_offset 2, 0
	addi x2, x2, -56
$cfi61:
	.cfi_adjust_cfa_offset 56
	sw x1, 52 ( x2 )
$cfi62:
	.cfi_offset 1, -4
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	sw x16, 28 ( x2 )               //  4-byte Folded Spill
	sw x15, 16 ( x2 )               //  4-byte Folded Spill
	sw x14, 4 ( x2 )                //  4-byte Folded Spill
	sw x12, 20 ( x2 )               //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	add x1, x0, x13
	add x8, x0, x10
	add x12, x0, x0
	addi x13, x2, 36
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x1
	add x14, x0, x12
	call $collect_key
	add x1, x0, x10
	xori x3, x1, -1
	not x10, x0
	beqz x3, LBB8_24
LBB8_1:                                 //  %if.end
	lw x11, 284 ( x8 )
	sw x8, 32 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	add x12, x0, x1
	call $__call_hash
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
LBB8_2:                                 //  %for.cond.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x1, 16 ( x8 )
	nop
	lhu x4, 4 ( x1 )
	lhu x3, 0 ( x1 )
	xori x4, x4, 3
	bgtu x4, x0, LBB8_6
LBB8_3:                                 //  %land.lhs.true.i
                                        //    in Loop: Header=BB8_2 Depth=1
	xori x4, x3, 2
	beqz x4, LBB8_9
LBB8_4:                                 //  %lor.lhs.false.i
                                        //    in Loop: Header=BB8_2 Depth=1
	slli x4, x3, 1
	add x4, x4, x1
	lhu x5, 0 ( x4 )
	nop
	beqz x5, LBB8_8
LBB8_5:                                 //  %lor.lhs.false10.i
                                        //    in Loop: Header=BB8_2 Depth=1
	lhu x4, 2 ( x4 )
	nop
	bgtu x4, x0, LBB8_8
LBB8_6:                                 //  %if.end.i153
                                        //    in Loop: Header=BB8_2 Depth=1
	slli x3, x3, 1
	add x1, x3, x1
	lhu x11, -2 ( x1 )
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	add x13, x0, x0
	call $__get_buf
	add x8, x0, x10
	bgtu x8, x0, LBB8_2
LBB8_7:
	lw x5, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x8, x0, x5
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB8_10 ( x0 )
LBB8_8:                                 //  %for.end.i
	addi x4, x0, 2
	bgtu x3, x4, LBB8_20
LBB8_9:
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	lw x5, 24 ( x2 )                //  4-byte Folded Reload
LBB8_10:                                //  %__find_last_page.exit.thread
	sh x0, 12 ( x1 )
LBB8_11:                                //  %if.else
	sw x0, 8 ( x1 )
LBB8_12:                                //  %if.end12
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bne x4, x3, LBB8_14
LBB8_13:                                //  %if.end12
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
LBB8_14:                                //  %if.end12
	lb x3, 20 ( x1 )
	nop
	ori x3, x3, 1
	sb x3, 20 ( x1 )
	sw x5, 8 ( x1 )
	lw x3, 16 ( x1 )
	nop
	lhu x4, 0 ( x3 )
	nop
	slli x1, x4, 1
	add x1, x1, x3
	lh x5, 2 ( x1 )
	lh x7, 4 ( x1 )
	lui x1, 65535 >> 12 & 0xfffff
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x9, x1, x28
	addi x10, x4, 1
	and x10, x9, x10
	slli x10, x10, 1
	add x10, x10, x3
	lw x11, 4 ( x2 )                //  4-byte Folded Reload
	nop
	sh x11, 0 ( x10 )
	addi x4, x4, 2
	and x9, x9, x4
	slli x9, x9, 1
	add x9, x9, x3
	sh x0, 0 ( x9 )
	sh x4, 0 ( x3 )
	sh x7, 4 ( x9 )
	lui x3, 65532 >> 12 & 0xfffff
	ori x28, x0, 65532 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	add x3, x3, x5
	sh x3, 2 ( x9 )
	lw x5, 28 ( x2 )                //  4-byte Folded Reload
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 0 ( x5 )
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 4 ( x5 )
	lb x3, 20 ( x8 )
	nop
	ori x3, x3, 1
	lw x9, 16 ( x8 )
	sb x3, 20 ( x8 )
	lhu x3, 0 ( x9 )
	nop
	sltiu x4, x3, 3
	bgtu x4, x0, LBB8_17
LBB8_15:                                //  %if.then51
	ori x28, x0, 65534 & 0xfff
	slli x28, x28, 20
	lui x4, 65534 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	ori x28, x0, 65535 & 0xfff
	slli x5, x3, 1
	add x5, x5, x9
	slli x28, x28, 20
	lh x7, 2 ( x5 )
	srli x28, x28, 20
	add x3, x4, x3
	or x1, x1, x28
	lh x4, 4 ( x5 )
	and x1, x1, x3
	slli x1, x1, 1
	add x1, x1, x9
	addi x5, x7, 4
	lh x7, 8 ( x9 )
	nop
	sw x7, 20 ( x2 )                //  4-byte Folded Spill
	sh x5, 2 ( x1 )
	sw x9, 24 ( x2 )                //  4-byte Folded Spill
	sh x3, 0 ( x9 )
	sh x4, 4 ( x1 )
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	call $__add_ovflpage
	add x8, x0, x10
	not x10, x0
	beqz x8, LBB8_24
LBB8_16:                                //  %if.end79
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sh x3, 8 ( x1 )
	lw x5, 28 ( x2 )                //  4-byte Folded Reload
LBB8_17:                                //  %if.end82
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bne x3, x1, LBB8_19
LBB8_18:                                //  %if.end82
	addi x5, x5, 4
LBB8_19:                                //  %if.end82
	sw x8, 0 ( x5 )
	add x10, x0, x0
	jalr x0, LBB8_24 ( x0 )
LBB8_20:                                //  %__find_last_page.exit
	lhu x11, 6 ( x1 )
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sh x11, 12 ( x1 )
	bgtu x11, x0, LBB8_22
LBB8_21:
	lw x5, 24 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB8_11 ( x0 )
LBB8_22:                                //  %if.then4
	add x13, x0, x0
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	call $__get_buf
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sw x10, 8 ( x1 )
	lw x5, 24 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB8_12
LBB8_23:
	not x10, x0
LBB8_24:                                //  %cleanup
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )
$cfi63:
	.cfi_same_value 1
	addi x2, x2, 56
$cfi64:
	.cfi_adjust_cfa_offset -56
$cfi65:
	.cfi_def_cfa 2, 0
	ret
$func_end8:
	.size	$__big_split, ($func_end8)-($__big_split)
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
