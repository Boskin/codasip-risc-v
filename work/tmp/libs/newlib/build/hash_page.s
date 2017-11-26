	.text
	.file	"hash_page.bc"
	.globl	$__delpair
	.type	$__delpair,@function
$__delpair:                             //  @__delpair
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi2:
	.cfi_adjust_cfa_offset 40
	sw x1, 36 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	add x7, x0, x12
	lw x9, 16 ( x11 )
	slli x1, x7, 1
	addi x4, x0, 3
	add x3, x1, x9
	lhu x1, 2 ( x3 )
	nop
	bgtu x1, x4, LBB0_2
LBB0_1:                                 //  %if.then
	call $__big_delete
	jalr x0, LBB0_13 ( x0 )
LBB0_2:                                 //  %if.end
	xori x4, x7, 1
	lhu x12, 0 ( x9 )
	beqz x4, LBB0_4
LBB0_3:                                 //  %if.then6
	lh x4, -2 ( x3 )
	jalr x0, LBB0_5 ( x0 )
LBB0_4:                                 //  %if.else
	lw x4, 12 ( x10 )
LBB0_5:                                 //  %if.end9
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x5, x3, x28
	and x4, x5, x4
	addi x13, x12, -1
	sub x8, x4, x1
	beq x13, x7, LBB0_12
LBB0_6:                                 //  %if.then19
	slli x4, x12, 1
	add x4, x4, x9
	ori x28, x0, 65535 & 0xfff
	lhu x4, 4 ( x4 )
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	and x3, x3, x8
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	add x11, x4, x9
	sw x12, 12 ( x2 )               //  4-byte Folded Spill
	sub x12, x1, x4
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	add x10, x3, x11
	sw x9, 16 ( x2 )                //  4-byte Folded Spill
	sw x13, 8 ( x2 )                //  4-byte Folded Spill
	sw x7, 4 ( x2 )                 //  4-byte Folded Spill
	call $memmove
	lw x13, 8 ( x2 )                //  4-byte Folded Reload
	lw x12, 12 ( x2 )               //  4-byte Folded Reload
	lw x9, 16 ( x2 )                //  4-byte Folded Reload
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	lw x1, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	addi x1, x1, 2
	bgt x1, x12, LBB0_12
LBB0_7:                                 //  %for.body.preheader
	slli x3, x1, 1
	add x3, x3, x9
	add x4, x0, x0
LBB0_8:                                 //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lhu x7, 2 ( x3 )
	lhu x5, 0 ( x3 )
	bgtu x7, x0, LBB0_10
LBB0_9:                                 //    in Loop: Header=BB0_8 Depth=1
	add x7, x0, x4
	jalr x0, LBB0_11 ( x0 )
LBB0_10:                                //  %if.else54
                                        //    in Loop: Header=BB0_8 Depth=1
	add x7, x8, x7
	add x5, x8, x5
LBB0_11:                                //  %if.end70
                                        //    in Loop: Header=BB0_8 Depth=1
	addi x1, x1, 2
	sh x5, -4 ( x3 )
	sh x7, -2 ( x3 )
	addi x3, x3, 4
	ble x1, x12, LBB0_8
LBB0_12:                                //  %if.end72
	lhu x1, 0 ( x9 )
	slli x3, x12, 1
	add x3, x3, x9
	lh x4, 2 ( x3 )
	slli x1, x1, 1
	add x1, x1, x9
	ori x28, x0, 65534 & 0xfff
	lh x1, 4 ( x1 )
	slli x28, x28, 20
	lui x5, 65534 >> 12 & 0xfffff
	srli x28, x28, 20
	add x4, x4, x8
	slli x7, x13, 1
	or x5, x5, x28
	add x1, x8, x1
	add x7, x7, x9
	addi x4, x4, 4
	add x5, x5, x12
	sh x1, 0 ( x3 )
	sh x4, 0 ( x7 )
	sh x5, 0 ( x9 )
	lw x1, 56 ( x10 )
	nop
	addi x1, x1, -1
	sw x1, 56 ( x10 )
	lb x1, 20 ( x11 )
	nop
	ori x1, x1, 1
	sb x1, 20 ( x11 )
	add x10, x0, x0
LBB0_13:                                //  %cleanup
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi5:
	.cfi_adjust_cfa_offset -40
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__delpair, ($func_end0)-($__delpair)
	.cfi_endproc

	.globl	$__split_page
	.type	$__split_page,@function
$__split_page:                          //  @__split_page
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
	sw x12, 88 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x10
	lw x1, 12 ( x8 )
	nop
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	add x12, x0, x0
	sw x11, 76 ( x2 )               //  4-byte Folded Spill
	add x13, x0, x12
	call $__get_buf
	not x4, x0
	beqz x10, LBB1_55
LBB1_1:                                 //  %if.end
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x0
	sw x8, 80 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 88 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x12
	add x8, x0, x4
	call $__get_buf
	add x4, x0, x8
	beqz x10, LBB1_55
LBB1_2:                                 //  %if.end10
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	lb x1, 20 ( x3 )
	nop
	ori x1, x1, 9
	sb x1, 20 ( x3 )
	lb x1, 20 ( x10 )
	nop
	ori x1, x1, 9
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	sb x1, 20 ( x10 )
	lw x5, 16 ( x3 )
	nop
	lhu x1, 0 ( x5 )
	nop
	sltiu x3, x1, 2
	add x4, x0, x0
	sw x4, 48 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x4
	bgtu x3, x0, LBB1_54
LBB1_3:                                 //  %for.body.lr.ph
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 16 ( x1 )
	nop
	sw x1, 72 ( x2 )                //  4-byte Folded Spill
	slti x3, x0, 1
	add x1, x0, x0
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	addi x7, x5, 4
	lui x9, 65535 >> 12 & 0xfffff
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x3
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	sw x5, 68 ( x2 )                //  4-byte Folded Spill
LBB1_4:                                 //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lhu x1, 0 ( x7 )
	addi x4, x0, 3
	bgtu x1, x4, LBB1_47
LBB1_5:                                 //  %if.then25
	lw x5, 28 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 16 ( x5 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lhu x1, 0 ( x10 )
	or x4, x9, x28
	add x3, x4, x1
	and x4, x4, x3
	bgtu x1, x4, LBB1_7
LBB1_6:
	add x4, x0, x0
	add x3, x0, x5
	jalr x0, LBB1_46 ( x0 )
LBB1_7:                                 //  %while.body.lr.ph.i
	ori x28, x0, 65535 & 0xfff
	lw x7, 20 ( x2 )                //  4-byte Folded Reload
	nop
	lw x4, 16 ( x7 )
	nop
	sw x4, 24 ( x2 )                //  4-byte Folded Spill
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x9, x28
	and x3, x4, x3
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	nop
	and x4, x4, x11
	sw x4, 4 ( x2 )                 //  4-byte Folded Spill
	add x4, x0, x0
	sw x7, 44 ( x2 )                //  4-byte Folded Spill
	sw x5, 48 ( x2 )                //  4-byte Folded Spill
	sw x5, 16 ( x2 )                //  4-byte Folded Spill
	sw x4, 8 ( x2 )                 //  4-byte Folded Spill
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	jalr x0, LBB1_9 ( x0 )
LBB1_8:                                 //  %while.cond.loopexit.i
                                        //    in Loop: Header=BB1_9 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x9, x28
	and x3, x4, x3
	and x4, x4, x1
	bgeu x3, x4, LBB1_42
LBB1_9:                                 //  %while.body.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_27 Depth 2
	lh x4, 4 ( x10 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	addi x4, x4, -1
	or x5, x9, x28
	and x4, x5, x4
	addi x5, x0, 2
	bgtu x4, x5, LBB1_18
LBB1_10:                                //  %if.then.i
                                        //    in Loop: Header=BB1_9 Depth=1
	lw x13, 16 ( x2 )               //  4-byte Folded Reload
	nop
	lw x14, 12 ( x13 )
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	lw x12, 44 ( x2 )               //  4-byte Folded Reload
	lw x15, 76 ( x2 )               //  4-byte Folded Reload
	addi x16, x2, 92
	call $__big_split
	beqz x10, LBB1_12
LBB1_11:
	not x4, x0
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_46 ( x0 )
LBB1_12:                                //  %if.end.i
                                        //    in Loop: Header=BB1_9 Depth=1
	lw x1, 96 ( x2 )
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB1_14
LBB1_13:
	not x4, x0
	jalr x0, LBB1_46 ( x0 )
LBB1_14:                                //  %if.end20.i
                                        //    in Loop: Header=BB1_9 Depth=1
	lw x4, 92 ( x2 )
	nop
	bgtu x4, x0, LBB1_16
LBB1_15:
	not x4, x0
	jalr x0, LBB1_46 ( x0 )
LBB1_16:                                //  %if.end24.i
                                        //    in Loop: Header=BB1_9 Depth=1
	lw x5, 100 ( x2 )
	nop
	beqz x5, LBB1_45
LBB1_17:                                //  %if.end28.i
                                        //    in Loop: Header=BB1_9 Depth=1
	sw x4, 44 ( x2 )                //  4-byte Folded Spill
	lw x3, 16 ( x4 )
	nop
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	lw x1, 16 ( x1 )
	nop
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	lw x10, 16 ( x5 )
	sw x5, 8 ( x2 )                 //  4-byte Folded Spill
	sw x5, 16 ( x2 )                //  4-byte Folded Spill
	lui x9, 65535 >> 12 & 0xfffff
	jalr x0, LBB1_24 ( x0 )
LBB1_18:                                //  %if.else.i
                                        //    in Loop: Header=BB1_9 Depth=1
	slli x3, x3, 1
	add x3, x3, x10
	lhu x4, 2 ( x3 )
	nop
	bgtu x4, x0, LBB1_24
LBB1_19:                                //  %if.then36.i
                                        //    in Loop: Header=BB1_9 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x4, x9, x28
	addi x5, x0, -2
	lw x7, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sub x5, x5, x7
	and x1, x4, x1
	lhu x11, 0 ( x3 )
	add x1, x1, x5
	ori x28, x0, 65530 & 0xfff
	slli x28, x28, 20
	and x3, x4, x1
	slli x3, x3, 1
	srli x28, x28, 20
	lw x7, 64 ( x2 )                //  4-byte Folded Reload
	nop
	sub x4, x7, x3
	lui x5, 65530 >> 12 & 0xfffff
	or x5, x5, x28
	add x3, x3, x10
	add x4, x5, x4
	sh x1, 0 ( x10 )
	sh x4, 2 ( x3 )
	sh x7, 4 ( x3 )
	lw x8, 80 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	lw x12, 16 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x0
	call $__get_buf
	add x3, x0, x10
	beqz x3, LBB1_11
LBB1_20:                                //  %if.end61.i
                                        //    in Loop: Header=BB1_9 Depth=1
	lw x1, 12 ( x8 )
	nop
	sw x1, 64 ( x2 )                //  4-byte Folded Spill
	lw x1, 16 ( x3 )
	nop
	sw x1, 72 ( x2 )                //  4-byte Folded Spill
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	sw x3, 16 ( x2 )                //  4-byte Folded Spill
	bgtu x11, x0, LBB1_22
LBB1_21:                                //    in Loop: Header=BB1_9 Depth=1
	sw x3, 8 ( x2 )                 //  4-byte Folded Spill
	jalr x0, LBB1_23 ( x0 )
LBB1_22:                                //  %if.then65.i
                                        //    in Loop: Header=BB1_9 Depth=1
	add x10, x0, x8
	add x8, x0, x3
	call $__free_ovflpage
	sw x8, 8 ( x2 )                 //  4-byte Folded Spill
LBB1_23:                                //  %if.end68.i
                                        //    in Loop: Header=BB1_9 Depth=1
	add x1, x0, x0
	sw x1, 4 ( x2 )                 //  4-byte Folded Spill
	lui x9, 65535 >> 12 & 0xfffff
	lw x10, 72 ( x2 )               //  4-byte Folded Reload
	nop
LBB1_24:                                //  %if.end68.i
                                        //    in Loop: Header=BB1_9 Depth=1
	lhu x1, 0 ( x10 )
	nop
	sltiu x3, x1, 2
	beqz x3, LBB1_26
LBB1_25:                                //    in Loop: Header=BB1_9 Depth=1
	slti x3, x0, 1
	jalr x0, LBB1_8 ( x0 )
LBB1_26:                                //  %land.rhs.lr.ph.i
                                        //    in Loop: Header=BB1_9 Depth=1
	lw x3, 80 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 12 ( x3 )
	slti x3, x0, 1
	add x4, x0, x3
	add x12, x0, x4
	sw x10, 72 ( x2 )               //  4-byte Folded Spill
LBB1_27:                                //  %land.rhs.i
                                        //    Parent Loop BB1_9 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x4, x0, x11
	slli x5, x12, 1
	add x5, x5, x10
	lhu x13, 2 ( x5 )
	nop
	sltiu x7, x13, 4
	bgtu x7, x0, LBB1_8
LBB1_28:                                //  %for.body.i
                                        //    in Loop: Header=BB1_27 Depth=2
	sw x12, 68 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lhu x8, 0 ( x5 )
	srli x28, x28, 20
	or x1, x9, x28
	and x1, x1, x4
	sub x12, x1, x8
	add x11, x8, x10
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	sw x13, 88 ( x2 )               //  4-byte Folded Spill
	sw x11, 56 ( x2 )               //  4-byte Folded Spill
	sw x12, 84 ( x2 )               //  4-byte Folded Spill
	call $__call_hash
	lw x1, 88 ( x2 )                //  4-byte Folded Reload
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x7, x1, x3
	sub x8, x8, x1
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	sw x7, 60 ( x2 )                //  4-byte Folded Spill
	sw x8, 52 ( x2 )                //  4-byte Folded Spill
	bne x10, x1, LBB1_35
LBB1_29:                                //  %if.then114.i
                                        //    in Loop: Header=BB1_27 Depth=2
	lw x5, 32 ( x2 )                //  4-byte Folded Reload
	nop
	lhu x1, 4 ( x5 )
	nop
	sltiu x1, x1, 4
	bgtu x1, x0, LBB1_33
LBB1_30:                                //  %land.lhs.true119.i
                                        //    in Loop: Header=BB1_27 Depth=2
	lhu x9, 0 ( x5 )
	lw x1, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x8, x1
	addi x3, x1, 8
	slli x1, x9, 1
	add x1, x1, x5
	lhu x4, 2 ( x1 )
	nop
	bgtu x3, x4, LBB1_33
LBB1_31:                                //  %if.then132.i
                                        //    in Loop: Header=BB1_27 Depth=2
	lhu x1, 4 ( x1 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lw x12, 84 ( x2 )               //  4-byte Folded Reload
	nop
	sub x3, x1, x12
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	lui x1, 65535 >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	and x1, x1, x3
	add x10, x1, x5
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x5
	sw x9, 56 ( x2 )                //  4-byte Folded Spill
	call $memmove
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	nop
	sub x1, x4, x12
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	and x1, x3, x1
	add x10, x1, x8
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	and x1, x3, x1
	slli x1, x1, 1
	add x1, x1, x8
	sh x4, 0 ( x1 )
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $memmove
	lw x13, 84 ( x2 )               //  4-byte Folded Reload
	lw x11, 88 ( x2 )               //  4-byte Folded Reload
	lui x9, 65535 >> 12 & 0xfffff
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x1, 2
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	and x1, x1, x3
	slli x4, x1, 1
	add x4, x4, x8
	sh x13, 0 ( x4 )
	sh x3, 0 ( x8 )
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
	lw x10, 72 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_41 ( x0 )
LBB1_33:                                //  %if.else133.i
                                        //    in Loop: Header=BB1_27 Depth=2
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	lw x11, 48 ( x2 )               //  4-byte Folded Reload
	nop
	call $__add_ovflpage
	add x3, x0, x10
	beqz x3, LBB1_11
LBB1_34:                                //  %if.end137.i
                                        //    in Loop: Header=BB1_27 Depth=2
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x4, x1, x28
	sw x4, 36 ( x2 )                //  4-byte Folded Spill
	lw x8, 16 ( x3 )
	nop
	lhu x1, 0 ( x8 )
	nop
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	slli x1, x1, 1
	add x1, x1, x8
	lhu x1, 4 ( x1 )
	lw x12, 84 ( x2 )               //  4-byte Folded Reload
	nop
	sub x1, x1, x12
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	and x1, x4, x1
	add x10, x1, x8
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	call $memmove
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	lw x4, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x4, x12
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	and x1, x3, x1
	add x10, x1, x8
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	and x1, x3, x1
	slli x1, x1, 1
	add x1, x1, x8
	sh x4, 0 ( x1 )
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $memmove
	lw x13, 84 ( x2 )               //  4-byte Folded Reload
	lui x9, 65535 >> 12 & 0xfffff
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x1, 2
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	and x1, x1, x3
	slli x4, x1, 1
	add x4, x4, x8
	sh x13, 0 ( x4 )
	sh x3, 0 ( x8 )
	sw x8, 32 ( x2 )                //  4-byte Folded Spill
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_40 ( x0 )
LBB1_35:                                //  %if.else142.i
                                        //    in Loop: Header=BB1_27 Depth=2
	lw x4, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lhu x1, 4 ( x4 )
	nop
	sltiu x1, x1, 4
	bgtu x1, x0, LBB1_38
LBB1_36:                                //  %land.lhs.true147.i
                                        //    in Loop: Header=BB1_27 Depth=2
	lhu x1, 0 ( x4 )
	lw x3, 84 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x8, x3
	addi x3, x3, 8
	slli x1, x1, 1
	add x1, x1, x4
	lhu x1, 2 ( x1 )
	nop
	bgtu x3, x1, LBB1_38
LBB1_37:                                //  %if.then160.i
                                        //    in Loop: Header=BB1_27 Depth=2
	lhu x1, 0 ( x4 )
	nop
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	slli x1, x1, 1
	add x1, x1, x4
	lhu x1, 4 ( x1 )
	lui x3, 65535 >> 12 & 0xfffff
	or x5, x3, x28
	sw x5, 36 ( x2 )                //  4-byte Folded Spill
	lw x12, 84 ( x2 )               //  4-byte Folded Reload
	nop
	sub x1, x1, x12
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	and x1, x5, x1
	add x10, x1, x4
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x4
	call $memmove
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	nop
	sub x1, x4, x12
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	and x1, x3, x1
	add x10, x1, x8
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	and x1, x3, x1
	slli x1, x1, 1
	add x1, x1, x8
	sh x4, 0 ( x1 )
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $memmove
	lw x13, 84 ( x2 )               //  4-byte Folded Reload
	lw x11, 88 ( x2 )               //  4-byte Folded Reload
	lui x9, 65535 >> 12 & 0xfffff
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x1, 2
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	and x1, x1, x3
	slli x4, x1, 1
	add x4, x4, x8
	sh x13, 0 ( x4 )
	sh x3, 0 ( x8 )
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
	lw x10, 72 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_41 ( x0 )
LBB1_38:                                //  %if.else161.i
                                        //    in Loop: Header=BB1_27 Depth=2
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	lw x11, 44 ( x2 )               //  4-byte Folded Reload
	nop
	call $__add_ovflpage
	add x3, x0, x10
	beqz x3, LBB1_11
LBB1_39:                                //  %if.end165.i
                                        //    in Loop: Header=BB1_27 Depth=2
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	or x4, x1, x28
	sw x4, 36 ( x2 )                //  4-byte Folded Spill
	lw x8, 16 ( x3 )
	nop
	lhu x1, 0 ( x8 )
	nop
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	slli x1, x1, 1
	add x1, x1, x8
	lhu x1, 4 ( x1 )
	lw x12, 84 ( x2 )               //  4-byte Folded Reload
	nop
	sub x1, x1, x12
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	and x1, x4, x1
	add x10, x1, x8
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
	call $memmove
	lw x12, 52 ( x2 )               //  4-byte Folded Reload
	lw x4, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x4, x12
	sw x1, 84 ( x2 )                //  4-byte Folded Spill
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	and x1, x3, x1
	add x10, x1, x8
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	and x1, x3, x1
	slli x1, x1, 1
	add x1, x1, x8
	sh x4, 0 ( x1 )
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	call $memmove
	lw x13, 84 ( x2 )               //  4-byte Folded Reload
	lui x9, 65535 >> 12 & 0xfffff
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x1, 2
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	and x1, x1, x3
	slli x4, x1, 1
	add x4, x4, x8
	sh x13, 0 ( x4 )
	sh x3, 0 ( x8 )
	sw x8, 24 ( x2 )                //  4-byte Folded Spill
	lw x4, 44 ( x2 )                //  4-byte Folded Reload
LBB1_40:                                //  %if.end172.i
                                        //    in Loop: Header=BB1_27 Depth=2
	lw x10, 72 ( x2 )               //  4-byte Folded Reload
	lw x11, 88 ( x2 )               //  4-byte Folded Reload
LBB1_41:                                //  %if.end172.i
                                        //    in Loop: Header=BB1_27 Depth=2
	lw x12, 68 ( x2 )               //  4-byte Folded Reload
	ori x28, x0, 65530 & 0xfff
	slli x28, x28, 20
	slli x1, x1, 1
	srli x28, x28, 20
	lui x5, 65530 >> 12 & 0xfffff
	or x5, x5, x28
	sub x7, x13, x1
	add x1, x1, x8
	add x3, x5, x7
	sh x3, 2 ( x1 )
	sh x13, 4 ( x1 )
	lb x1, 20 ( x4 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	ori x1, x1, 1
	sb x1, 20 ( x4 )
	lhu x1, 0 ( x10 )
	addi x3, x12, 2
	or x4, x9, x28
	and x12, x4, x3
	bgeu x12, x1, LBB1_8
	jalr x0, LBB1_27 ( x0 )
LBB1_42:                                //  %while.end.i
	lw x11, 8 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x11, LBB1_44
LBB1_43:                                //  %if.then177.i
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	nop
	call $__free_ovflpage
LBB1_44:                                //  %ugly_split.exit
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
LBB1_45:                                //  %ugly_split.exit
	add x4, x0, x0
LBB1_46:                                //  %ugly_split.exit
	lbu x1, 20 ( x3 )
	nop
	andi x1, x1, 247
	sb x1, 20 ( x3 )
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	lbu x1, 20 ( x3 )
	nop
	andi x1, x1, 247
	sb x1, 20 ( x3 )
	jalr x0, LBB1_55 ( x0 )
LBB1_47:                                //  %if.end36
                                        //    in Loop: Header=BB1_4 Depth=1
	sw x11, 84 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lhu x1, -2 ( x7 )
	srli x28, x28, 20
	or x4, x9, x28
	and x3, x4, x3
	add x11, x1, x5
	sw x3, 60 ( x2 )                //  4-byte Folded Spill
	sub x8, x3, x1
	lw x10, 80 ( x2 )               //  4-byte Folded Reload
	sw x7, 88 ( x2 )                //  4-byte Folded Spill
	sw x11, 56 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x8
	call $__call_hash
	lw x1, 76 ( x2 )                //  4-byte Folded Reload
	nop
	bne x10, x1, LBB1_52
LBB1_48:                                //  %if.then47
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x8, 68 ( x2 )                //  4-byte Folded Reload
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, 65535 >> 12 & 0xfffff
	add x5, x0, x1
	or x3, x5, x28
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	and x1, x3, x1
	lw x11, 60 ( x2 )               //  4-byte Folded Reload
	nop
	sub x1, x1, x11
	and x3, x3, x1
	lw x9, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lhu x4, 0 ( x9 )
	bgtu x3, x0, LBB1_50
LBB1_49:                                //    in Loop: Header=BB1_4 Depth=1
	sw x4, 64 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x0
	add x5, x0, x8
	lw x7, 44 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_51 ( x0 )
LBB1_50:                                //  %if.then52
                                        //    in Loop: Header=BB1_4 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	add x3, x1, x4
	sw x3, 64 ( x2 )                //  4-byte Folded Spill
	or x1, x5, x28
	and x1, x1, x3
	add x10, x1, x8
	sub x12, x11, x4
	add x11, x4, x8
	call $memmove
	lw x9, 88 ( x2 )                //  4-byte Folded Reload
	add x5, x0, x8
	lh x1, -2 ( x9 )
	lhu x3, 0 ( x9 )
	lw x7, 44 ( x2 )                //  4-byte Folded Reload
	nop
	slli x4, x7, 1
	add x4, x4, x5
	lw x10, 64 ( x2 )               //  4-byte Folded Reload
	nop
	add x1, x10, x1
	sub x1, x1, x3
	sh x1, 0 ( x4 )
	sh x10, 2 ( x4 )
	sw x10, 64 ( x2 )               //  4-byte Folded Spill
	add x10, x0, x0
LBB1_51:                                //  %if.end85
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
	addi x7, x7, 2
	sw x7, 44 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_53 ( x0 )
LBB1_52:                                //  %if.else87
                                        //    in Loop: Header=BB1_4 Depth=1
	lw x4, 72 ( x2 )                //  4-byte Folded Reload
	nop
	lhu x1, 0 ( x4 )
	nop
	sw x1, 60 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	slli x1, x1, 1
	add x1, x1, x4
	lhu x1, 4 ( x1 )
	lui x3, 65535 >> 12 & 0xfffff
	or x5, x3, x28
	sw x5, 52 ( x2 )                //  4-byte Folded Spill
	lw x3, 88 ( x2 )                //  4-byte Folded Reload
	nop
	lhu x7, -2 ( x3 )
	nop
	sw x7, 40 ( x2 )                //  4-byte Folded Spill
	lhu x3, 0 ( x3 )
	nop
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	sub x1, x1, x8
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	and x1, x5, x1
	add x10, x1, x4
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x8
	call $memmove
	lw x7, 36 ( x2 )                //  4-byte Folded Reload
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sub x12, x1, x7
	lw x5, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x5, x12
	lw x4, 52 ( x2 )                //  4-byte Folded Reload
	nop
	and x1, x4, x8
	lw x3, 68 ( x2 )                //  4-byte Folded Reload
	nop
	add x11, x7, x3
	lw x3, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x1, x3
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	and x1, x4, x1
	slli x1, x1, 1
	add x1, x1, x3
	sh x5, 0 ( x1 )
	call $memmove
	ori x28, x0, 65530 & 0xfff
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 2
	slli x28, x28, 20
	lw x9, 52 ( x2 )                //  4-byte Folded Reload
	nop
	and x3, x9, x1
	slli x3, x3, 1
	srli x28, x28, 20
	sub x4, x8, x3
	lui x5, 65530 >> 12 & 0xfffff
	or x5, x5, x28
	lw x7, 72 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x7
	add x4, x5, x4
	lw x5, 48 ( x2 )                //  4-byte Folded Reload
	nop
	and x5, x9, x5
	sh x8, 0 ( x3 )
	sh x1, 0 ( x7 )
	sh x4, 2 ( x3 )
	sh x8, 4 ( x3 )
	addi x1, x5, 2
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x0
	lw x5, 68 ( x2 )                //  4-byte Folded Reload
	lw x9, 88 ( x2 )                //  4-byte Folded Reload
	lw x11, 84 ( x2 )               //  4-byte Folded Reload
LBB1_53:                                //  %if.end103
                                        //    in Loop: Header=BB1_4 Depth=1
	lhu x1, 0 ( x5 )
	addi x11, x11, 2
	addi x4, x9, 4
	lh x3, 0 ( x9 )
	add x7, x0, x4
	lui x9, 65535 >> 12 & 0xfffff
	bgt x1, x11, LBB1_4
LBB1_54:                                //  %for.end
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
	nop
	and x4, x3, x4
	sub x1, x1, x4
	ori x28, x0, 65530 & 0xfff
	slli x28, x28, 20
	and x3, x3, x1
	slli x3, x3, 1
	lui x4, 65530 >> 12 & 0xfffff
	srli x28, x28, 20
	lw x7, 64 ( x2 )                //  4-byte Folded Reload
	add x9, x0, x5
	sub x5, x7, x3
	or x4, x4, x28
	add x3, x3, x9
	add x4, x4, x5
	sh x4, 2 ( x3 )
	sh x1, 0 ( x9 )
	sh x7, 4 ( x3 )
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	lbu x1, 20 ( x3 )
	nop
	andi x1, x1, 247
	sb x1, 20 ( x3 )
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	lbu x1, 20 ( x3 )
	nop
	andi x1, x1, 247
	sb x1, 20 ( x3 )
	add x4, x0, x10
LBB1_55:                                //  %cleanup
	add x10, x0, x4
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
	.size	$__split_page, ($func_end1)-($__split_page)
	.cfi_endproc

	.globl	$__addel
	.type	$__addel,@function
$__addel:                               //  @__addel
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi14:
	.cfi_def_cfa 2, 0
$cfi15:
	.cfi_val_offset 2, 0
	addi x2, x2, -56
$cfi16:
	.cfi_adjust_cfa_offset 56
	sw x1, 52 ( x2 )
$cfi17:
	.cfi_offset 1, -4
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	add x7, x0, x11
	sw x13, 40 ( x2 )               //  4-byte Folded Spill
	sw x12, 36 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x10
	lw x9, 16 ( x7 )
	nop
	lhu x1, 0 ( x9 )
	nop
	bgtu x1, x0, LBB2_6
LBB2_1:
	add x1, x0, x0
LBB2_2:                                 //  %while.end
	lhu x3, 4 ( x9 )
	nop
	sltiu x3, x3, 4
	bgtu x3, x0, LBB2_21
LBB2_3:                                 //  %land.lhs.true65
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x3, x28
	and x1, x4, x1
	slli x1, x1, 1
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	nop
	lw x4, 4 ( x4 )
	lw x5, 36 ( x2 )                //  4-byte Folded Reload
	nop
	lw x12, 4 ( x5 )
	add x1, x1, x9
	lhu x1, 2 ( x1 )
	add x4, x4, x12
	addi x4, x4, 8
	bgtu x4, x1, LBB2_21
LBB2_4:                                 //  %if.then78
	lhu x1, 0 ( x9 )
	nop
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	slli x1, x1, 1
	add x1, x1, x9
	lhu x1, 4 ( x1 )
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 0 ( x4 )
	or x3, x3, x28
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	sub x8, x1, x12
	and x1, x3, x8
	add x10, x1, x9
	sw x7, 28 ( x2 )                //  4-byte Folded Spill
	sw x9, 32 ( x2 )                //  4-byte Folded Spill
	call $memmove
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	nop
	and x1, x4, x1
	slli x1, x1, 1
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	sh x8, 0 ( x1 )
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	lw x12, 4 ( x1 )
	lw x11, 0 ( x1 )
	sub x1, x8, x12
	sw x1, 40 ( x2 )                //  4-byte Folded Spill
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	and x1, x4, x1
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x1, x3
	call $memmove
	lw x10, 40 ( x2 )               //  4-byte Folded Reload
	lw x9, 32 ( x2 )                //  4-byte Folded Reload
	lw x7, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 2
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	and x3, x3, x1
	slli x4, x3, 1
	add x4, x4, x9
	sh x10, 0 ( x4 )
	sh x1, 0 ( x9 )
	add x1, x0, x0
LBB2_5:                                 //  %if.end110.sink.split
	ori x28, x0, 65530 & 0xfff
	slli x28, x28, 20
	slli x3, x3, 1
	lui x4, 65530 >> 12 & 0xfffff
	srli x28, x28, 20
	sub x5, x10, x3
	or x4, x4, x28
	add x3, x3, x9
	add x4, x4, x5
	sh x4, 2 ( x3 )
	sh x10, 4 ( x3 )
	jalr x0, LBB2_27 ( x0 )
LBB2_6:                                 //  %land.rhs.lr.ph
	lui x11, 65535 >> 12 & 0xfffff
LBB2_7:                                 //  %land.rhs
                                        //  =>This Inner Loop Header: Depth=1
	lhu x3, 4 ( x9 )
	nop
	sltiu x4, x3, 4
	bgtu x4, x0, LBB2_12
LBB2_8:                                 //  %lor.rhs
                                        //    in Loop: Header=BB2_7 Depth=1
	slli x3, x1, 1
	add x3, x3, x9
	lhu x3, 0 ( x3 )
	nop
	sltiu x3, x3, 4
	beqz x3, LBB2_2
LBB2_9:                                 //  %if.else.if.else36_crit_edge
                                        //    in Loop: Header=BB2_7 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x11, x28
	and x1, x3, x1
LBB2_10:                                //  %if.else36
                                        //    in Loop: Header=BB2_7 Depth=1
	add x5, x0, x8
	slli x3, x1, 1
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	nop
	lw x4, 4 ( x4 )
	lw x10, 36 ( x2 )               //  4-byte Folded Reload
	nop
	lw x12, 4 ( x10 )
	add x8, x3, x9
	lhu x10, 2 ( x8 )
	add x3, x4, x12
	addi x3, x3, 4
	bgeu x3, x10, LBB2_19
LBB2_11:                                //  %if.then46
	addi x1, x1, 2
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	slli x1, x1, 1
	add x1, x1, x9
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	lhu x1, 0 ( x1 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	sub x3, x1, x12
	or x1, x11, x28
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
	and x1, x1, x3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	add x10, x1, x9
	lh x1, -2 ( x8 )
	nop
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	sh x3, -2 ( x8 )
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 0 ( x1 )
	addi x1, x8, 2
	sw x1, 4 ( x2 )                 //  4-byte Folded Spill
	sw x9, 32 ( x2 )                //  4-byte Folded Spill
	call $memmove
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	lw x12, 4 ( x3 )
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x12
	sw x1, 12 ( x2 )                //  4-byte Folded Spill
	sh x1, 0 ( x8 )
	lw x11, 0 ( x3 )
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	and x1, x3, x1
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x1, x8
	call $memmove
	ori x28, x0, 65532 & 0xfff
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sh x5, 0 ( x8 )
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sh x1, 0 ( x3 )
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sh x0, 0 ( x1 )
	slli x28, x28, 20
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 4 ( x1 )
	lui x3, 65532 >> 12 & 0xfffff
	srli x28, x28, 20
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	nop
	lw x4, 4 ( x4 )
	or x3, x3, x28
	lw x7, 28 ( x2 )                //  4-byte Folded Reload
	nop
	and x5, x7, x5
	lw x7, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x7
	slli x5, x5, 1
	sub x1, x3, x1
	add x3, x5, x8
	sub x1, x1, x4
	sh x1, 2 ( x3 )
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sh x1, 4 ( x3 )
	add x1, x0, x0
	jalr x0, LBB2_31 ( x0 )
LBB2_12:                                //  %while.body
                                        //    in Loop: Header=BB2_7 Depth=1
	xori x3, x3, 3
	bgtu x3, x0, LBB2_15
LBB2_13:                                //  %while.body
                                        //    in Loop: Header=BB2_7 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x11, x28
	and x3, x3, x1
	xori x3, x3, 2
	bgtu x3, x0, LBB2_15
LBB2_14:
	addi x1, x0, 2
	jalr x0, LBB2_2 ( x0 )
LBB2_15:                                //  %land.lhs.true21
                                        //    in Loop: Header=BB2_7 Depth=1
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x11, x28
	and x1, x3, x1
	slli x3, x1, 1
	add x3, x3, x9
	lhu x4, 0 ( x3 )
	nop
	beqz x4, LBB2_10
LBB2_16:                                //  %if.then28
                                        //    in Loop: Header=BB2_7 Depth=1
	lhu x11, -2 ( x3 )
	add x10, x0, x8
	add x12, x0, x7
	add x13, x0, x0
	call $__get_buf
	add x7, x0, x10
	bgtu x7, x0, LBB2_18
LBB2_17:
	not x1, x0
	jalr x0, LBB2_31 ( x0 )
LBB2_18:                                //  %while.cond.backedge
                                        //    in Loop: Header=BB2_7 Depth=1
	lw x9, 16 ( x7 )
	nop
	lhu x1, 0 ( x9 )
	lui x11, 65535 >> 12 & 0xfffff
	beqz x1, LBB2_1
	jalr x0, LBB2_7 ( x0 )
LBB2_19:                                //  %if.else47
                                        //    in Loop: Header=BB2_7 Depth=1
	lhu x11, -2 ( x8 )
	add x8, x0, x5
	add x10, x0, x8
	add x12, x0, x7
	add x13, x0, x0
	call $__get_buf
	add x7, x0, x10
	bgtu x7, x0, LBB2_18
LBB2_20:
	not x1, x0
	jalr x0, LBB2_31 ( x0 )
LBB2_21:                                //  %if.else80
	add x10, x0, x8
	add x11, x0, x7
	call $__add_ovflpage
	add x5, x0, x10
	not x1, x0
	beqz x5, LBB2_31
LBB2_22:                                //  %if.end84
	lw x7, 16 ( x5 )
	nop
	lhu x1, 4 ( x7 )
	nop
	sltiu x1, x1, 4
	sw x5, 28 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB2_25
LBB2_23:                                //  %land.lhs.true90
	lhu x9, 0 ( x7 )
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	lw x3, 4 ( x1 )
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	nop
	lw x12, 4 ( x1 )
	slli x1, x9, 1
	add x1, x1, x7
	lhu x4, 2 ( x1 )
	add x3, x3, x12
	addi x3, x3, 8
	bgtu x3, x4, LBB2_25
LBB2_24:                                //  %if.then103
	lhu x1, 4 ( x1 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 0 ( x4 )
	sub x1, x1, x12
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	or x3, x3, x28
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	and x1, x3, x1
	add x10, x1, x7
	sw x7, 32 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x9
	sw x8, 24 ( x2 )                //  4-byte Folded Spill
	call $memmove
	addi x1, x8, 1
	lw x4, 36 ( x2 )                //  4-byte Folded Reload
	nop
	and x1, x4, x1
	slli x1, x1, 1
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	lw x3, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sh x3, 0 ( x1 )
	lw x1, 40 ( x2 )                //  4-byte Folded Reload
	nop
	lw x12, 4 ( x1 )
	lw x11, 0 ( x1 )
	sub x8, x3, x12
	and x1, x4, x8
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x1, x3
	call $memmove
	add x10, x0, x8
	lw x9, 32 ( x2 )                //  4-byte Folded Reload
	lw x7, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 2
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	and x3, x3, x1
	lw x8, 20 ( x2 )                //  4-byte Folded Reload
	slli x4, x3, 1
	add x4, x4, x9
	sh x10, 0 ( x4 )
	sh x1, 0 ( x9 )
	slti x1, x0, 1
	jalr x0, LBB2_5 ( x0 )
LBB2_25:                                //  %if.else104
	add x10, x0, x8
	add x11, x0, x5
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	lw x13, 40 ( x2 )               //  4-byte Folded Reload
	nop
	call $__big_insert
	not x1, x0
	bgtu x10, x0, LBB2_31
LBB2_26:
	slti x1, x0, 1
	lw x7, 28 ( x2 )                //  4-byte Folded Reload
	nop
LBB2_27:                                //  %if.end110
	lb x3, 20 ( x7 )
	nop
	ori x3, x3, 1
	sb x3, 20 ( x7 )
	lw x3, 56 ( x8 )
	nop
	addi x10, x3, 1
	sw x10, 56 ( x8 )
	bgtu x1, x0, LBB2_30
LBB2_28:                                //  %lor.lhs.false
	lw x1, 40 ( x8 )
	nop
	addi x11, x1, 1
	call $__divsi3
	lw x1, 52 ( x8 )
	nop
	bgt x10, x1, LBB2_30
LBB2_29:
	add x1, x0, x0
	jalr x0, LBB2_31 ( x0 )
LBB2_30:                                //  %if.then121
	add x10, x0, x8
	call $__expand_table
	add x1, x0, x10
LBB2_31:                                //  %cleanup
	add x10, x0, x1
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )
$cfi18:
	.cfi_same_value 1
	addi x2, x2, 56
$cfi19:
	.cfi_adjust_cfa_offset -56
$cfi20:
	.cfi_def_cfa 2, 0
	ret
$func_end2:
	.size	$__addel, ($func_end2)-($__addel)
	.cfi_endproc

	.globl	$__add_ovflpage
	.type	$__add_ovflpage,@function
$__add_ovflpage:                        //  @__add_ovflpage
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi21:
	.cfi_def_cfa 2, 0
$cfi22:
	.cfi_val_offset 2, 0
	addi x2, x2, -64
$cfi23:
	.cfi_adjust_cfa_offset 64
	sw x1, 60 ( x2 )
$cfi24:
	.cfi_offset 1, -4
	sw x8, 52 ( x2 )                //  4-byte Folded Spill
	add x9, x0, x10
	lw x1, 52 ( x9 )
	lui x3, 65536>>12 
	lw x4, 16 ( x11 )
	bne x1, x3, LBB3_5
LBB3_1:                                 //  %if.then
	lhu x1, 0 ( x4 )
	addi x3, x0, 8
	bgeu x1, x3, LBB3_3
LBB3_2:
	addi x1, x0, 4
	jalr x0, LBB3_4 ( x0 )
LBB3_3:                                 //  %if.then
	srli x1, x1, 1
LBB3_4:                                 //  %if.then
	sw x1, 52 ( x9 )
LBB3_5:                                 //  %if.end10
	sw x4, 24 ( x2 )                //  4-byte Folded Spill
	lb x1, 20 ( x11 )
	add x15, x0, x0
	ori x1, x1, 1
	sb x1, 20 ( x11 )
	lw x12, 32 ( x9 )
	lw x3, 12 ( x9 )
	lw x4, 16 ( x9 )
	lw x5, 36 ( x9 )
	slli x1, x12, 2
	add x17, x1, x9
	lw x1, 68 ( x17 )
	addi x4, x4, 3
	slli x3, x3, 3
	addi x3, x3, -1
	addi x7, x1, -1
	sra x18, x5, x4
	sra x13, x7, x4
	and x14, x7, x3
	addi x16, x17, 68
	add x10, x0, x15
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	bgt x18, x13, LBB3_23
LBB3_6:                                 //  %for.body.lr.ph.i
	sw x17, 8 ( x2 )                //  4-byte Folded Spill
	add x15, x0, x0
	slti x8, x0, 1
	add x1, x0, x18
	sw x9, 48 ( x2 )                //  4-byte Folded Spill
	sw x12, 36 ( x2 )               //  4-byte Folded Spill
	sw x13, 28 ( x2 )               //  4-byte Folded Spill
	sw x14, 20 ( x2 )               //  4-byte Folded Spill
	sw x16, 16 ( x2 )               //  4-byte Folded Spill
	sw x18, 12 ( x2 )               //  4-byte Folded Spill
LBB3_7:                                 //  %for.body.i
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB3_19 Depth 2
	add x11, x0, x1
	slli x1, x11, 2
	add x1, x1, x9
	lw x10, 312 ( x1 )
	nop
	bgtu x10, x0, LBB3_14
LBB3_8:                                 //  %land.lhs.true.i
                                        //    in Loop: Header=BB3_7 Depth=1
	lw x3, 440 ( x9 )
	nop
	ble x3, x11, LBB3_59
LBB3_9:                                 //  %if.end.i.i
                                        //    in Loop: Header=BB3_7 Depth=1
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	lw x10, 12 ( x9 )
	addi x1, x1, 312
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	call $malloc
	add x1, x0, x10
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
	bgtu x1, x0, LBB3_11
LBB3_10:
	add x15, x0, x0
	jalr x0, LBB3_59 ( x0 )
LBB3_11:                                //  %if.end3.i.i
                                        //    in Loop: Header=BB3_7 Depth=1
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	slli x3, x3, 1
	lw x10, 48 ( x2 )               //  4-byte Folded Reload
	nop
	add x3, x3, x10
	lhu x12, 196 ( x3 )
	add x11, x0, x1
	add x13, x0, x0
	add x14, x0, x8
	add x15, x0, x8
	call $__get_page
	add x1, x0, x10
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 0 ( x3 )
	beqz x1, LBB3_13
LBB3_12:                                //  %if.then9.i.i
	call $free
	add x15, x0, x0
	jalr x0, LBB3_59 ( x0 )
LBB3_13:                                //  %fetch_bitmap.exit.i
                                        //    in Loop: Header=BB3_7 Depth=1
	lw x9, 48 ( x2 )                //  4-byte Folded Reload
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	add x15, x0, x0
	lw x13, 28 ( x2 )               //  4-byte Folded Reload
	lw x14, 20 ( x2 )               //  4-byte Folded Reload
	lw x16, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	lw x18, 12 ( x2 )               //  4-byte Folded Reload
	beqz x10, LBB3_59
LBB3_14:                                //  %if.end.i
                                        //    in Loop: Header=BB3_7 Depth=1
	add x3, x0, x14
	beq x11, x13, LBB3_16
LBB3_15:                                //  %if.else.i
                                        //    in Loop: Header=BB3_7 Depth=1
	lw x1, 12 ( x9 )
	nop
	slli x1, x1, 3
	addi x3, x1, -1
LBB3_16:                                //  %if.end19.i
                                        //    in Loop: Header=BB3_7 Depth=1
	add x4, x0, x15
	add x1, x0, x15
	bne x11, x18, LBB3_18
LBB3_17:                                //  %if.then21.i
                                        //    in Loop: Header=BB3_7 Depth=1
	lw x1, 12 ( x9 )
	lw x4, 36 ( x9 )
	slli x1, x1, 3
	addi x1, x1, -1
	and x1, x4, x1
	srai x4, x1, 31
	srli x4, x4, 27
	add x4, x4, x1
	andi x1, x1, -32
	srai x4, x4, 5
LBB3_18:                                //  %for.cond32.preheader.i
                                        //    in Loop: Header=BB3_7 Depth=1
	bgt x1, x3, LBB3_21
LBB3_19:                                //  %for.body34.i
                                        //    Parent Loop BB3_7 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	slli x5, x4, 2
	add x5, x5, x10
	lw x5, 0 ( x5 )
	nop
	xori x7, x5, -1
	bgtu x7, x0, LBB3_39
LBB3_20:                                //  %for.inc.i
                                        //    in Loop: Header=BB3_19 Depth=2
	addi x1, x1, 32
	addi x4, x4, 1
	ble x1, x3, LBB3_19
LBB3_21:                                //  %for.inc40.i
                                        //    in Loop: Header=BB3_7 Depth=1
	addi x1, x11, 1
	bgt x13, x11, LBB3_7
LBB3_22:                                //  %for.end42.loopexit.i
	lw x1, 0 ( x16 )
	add x15, x0, x0
	lw x17, 8 ( x2 )                //  4-byte Folded Reload
LBB3_23:                                //  %for.end42.i
	sw x1, 36 ( x9 )
	lw x1, 0 ( x16 )
	nop
	addi x1, x1, 1
	sw x1, 0 ( x16 )
	beqz x12, LBB3_25
LBB3_24:                                //  %cond.true.i
	lw x15, 64 ( x17 )
LBB3_25:                                //  %cond.end.i
	ori x28, x0, 2048 & 0xfff
	slli x28, x28, 20
	lui x3, 2048 >> 12 & 0xfffff
	srli x28, x28, 20
	sub x8, x1, x15
	or x1, x3, x28
	bgt x1, x8, LBB3_29
LBB3_26:                                //  %if.then62.i
	slti x1, x12, 31
	bgtu x1, x0, LBB3_28
LBB3_27:                                //  %if.then65.i
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	addi x10, x0, 2
	or x11, x1, x28
	addi x12, x0, 49
	call $write
	add x15, x0, x0
	jalr x0, LBB3_59 ( x0 )
LBB3_28:                                //  %if.end67.i
	addi x12, x12, 1
	sw x12, 32 ( x9 )
	lw x1, 0 ( x16 )
	slli x3, x12, 2
	add x3, x3, x9
	addi x4, x1, -1
	sw x1, 68 ( x3 )
	sw x4, 0 ( x16 )
	slti x8, x0, 1
LBB3_29:                                //  %if.end81.i
	lw x1, 12 ( x9 )
	nop
	slli x3, x1, 3
	addi x3, x3, -1
	bne x14, x3, LBB3_37
LBB3_30:                                //  %if.then87.i
	slti x3, x13, 31
	beqz x3, LBB3_27
LBB3_31:                                //  %if.end92.i
	sw x13, 28 ( x2 )               //  4-byte Folded Spill
	sw x12, 36 ( x2 )               //  4-byte Folded Spill
	sw x9, 48 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x1
	call $malloc
	bgtu x10, x0, LBB3_33
LBB3_32:
	add x15, x0, x0
	jalr x0, LBB3_59 ( x0 )
LBB3_33:                                //  %if.end98.i
	lw x4, 48 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 440 ( x4 )
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 1
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
	addi x1, x1, 1
	sw x1, 440 ( x4 )
	add x11, x0, x0
	addi x12, x0, 4
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	call $memset
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 12 ( x1 )
	lw x3, 44 ( x2 )                //  4-byte Folded Reload
	nop
	addi x10, x3, 4
	addi x11, x0, 255
	addi x12, x1, -4
	call $memset
	lw x9, 48 ( x2 )                //  4-byte Folded Reload
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	nop
	slli x1, x4, 1
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	nop
	slli x3, x12, 11
	slli x4, x4, 2
	not x5, x0
	slli x7, x12, 2
	add x1, x1, x9
	add x3, x8, x3
	add x4, x4, x9
	lw x10, 44 ( x2 )               //  4-byte Folded Reload
	nop
	sw x5, 0 ( x10 )
	sh x3, 196 ( x1 )
	sw x10, 312 ( x4 )
	add x1, x7, x9
	lw x3, 68 ( x1 )
	slti x4, x8, 2047
	addi x3, x3, 1
	sw x3, 68 ( x1 )
	beqz x4, LBB3_35
LBB3_34:
	addi x8, x8, 1
	slli x1, x12, 11
	jalr x0, LBB3_56 ( x0 )
LBB3_35:                                //  %if.then105.i
	add x7, x0, x0
	slti x3, x12, 31
	beqz x3, LBB3_27
LBB3_36:                                //  %if.end110.i
	addi x12, x12, 1
	addi x1, x1, 68
	sw x12, 32 ( x9 )
	lw x3, 0 ( x1 )
	slli x4, x12, 2
	add x4, x4, x9
	addi x5, x3, -1
	sw x3, 68 ( x4 )
	sw x5, 0 ( x1 )
	add x8, x0, x7
	slli x1, x12, 11
	jalr x0, LBB3_56 ( x0 )
LBB3_37:                                //  %if.else126.i
	addi x1, x14, 1
	srai x3, x1, 31
	srli x3, x3, 27
	add x3, x3, x1
	srai x3, x3, 5
	slli x3, x3, 2
	add x3, x3, x10
	lw x4, 0 ( x3 )
	andi x1, x1, 31
	slti x5, x0, 1
	sll x1, x5, x1
	or x1, x1, x4
	sw x1, 0 ( x3 )
	slli x1, x12, 11
	jalr x0, LBB3_56 ( x0 )
LBB3_39:                                //  %found.i
	andi x3, x5, 1
	bgtu x3, x0, LBB3_41
LBB3_40:
	add x3, x0, x0
	jalr x0, LBB3_44 ( x0 )
LBB3_41:                                //  %if.end.i314.i.preheader
	add x3, x0, x0
	addi x4, x0, 31
LBB3_42:                                //  %if.end.i314.i
                                        //  =>This Inner Loop Header: Depth=1
	addi x3, x3, 1
	bgtu x3, x4, LBB3_44
LBB3_43:                                //  %if.end.i314.i
                                        //    in Loop: Header=BB3_42 Depth=1
	slli x8, x8, 1
	and x7, x5, x8
	bgtu x7, x0, LBB3_42
LBB3_44:                                //  %first_free.exit.i
	add x8, x1, x3
	srai x1, x8, 31
	srli x1, x1, 27
	add x1, x1, x8
	srai x1, x1, 5
	slli x1, x1, 2
	add x1, x1, x10
	lw x3, 0 ( x1 )
	andi x4, x8, 31
	slti x5, x0, 1
	sll x4, x5, x4
	or x3, x3, x4
	sw x3, 0 ( x1 )
	lw x10, 12 ( x9 )
	nop
	call $__mulsi3
	lw x9, 48 ( x2 )                //  4-byte Folded Reload
	nop
	lw x4, 36 ( x9 )
	slli x1, x10, 3
	add x3, x1, x8
	addi x1, x3, 1
	bgt x4, x1, LBB3_46
LBB3_45:                                //  %if.then151.i
	sw x3, 36 ( x9 )
LBB3_46:                                //  %for.cond156.preheader.i
	add x15, x0, x0
	lw x7, 36 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x7, x0, LBB3_48
LBB3_47:
	add x3, x0, x15
	jalr x0, LBB3_54 ( x0 )
LBB3_48:                                //  %land.rhs.i.preheader
	add x3, x0, x0
	addi x4, x9, 68
LBB3_49:                                //  %land.rhs.i
                                        //  =>This Inner Loop Header: Depth=1
	lw x5, 0 ( x4 )
	nop
	ble x1, x5, LBB3_52
LBB3_50:                                //  %for.inc165.i
                                        //    in Loop: Header=BB3_49 Depth=1
	addi x3, x3, 1
	addi x4, x4, 4
	bgt x7, x3, LBB3_49
LBB3_51:                                //  %cond.true169.i
	slli x4, x3, 2
	add x4, x4, x9
	lw x4, 64 ( x4 )
	nop
	sub x1, x1, x4
	jalr x0, LBB3_54 ( x0 )
LBB3_52:                                //  %for.end167.i
	bgtu x3, x0, LBB3_51
LBB3_53:
	add x3, x0, x0
LBB3_54:                                //  %cond.end176.i
	addi x4, x0, 2046
	bgt x1, x4, LBB3_59
LBB3_55:                                //  %if.end181.i
	slli x8, x3, 11
LBB3_56:                                //  %overflow_page.exit
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	srli x28, x28, 20
	add x4, x8, x1
	or x1, x3, x28
	and x1, x1, x4
	add x15, x0, x0
	beqz x1, LBB3_59
LBB3_57:                                //  %lor.lhs.false
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x3, x28
	sw x4, 44 ( x2 )                //  4-byte Folded Spill
	and x11, x1, x4
	slti x13, x0, 1
	add x10, x0, x9
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x12, x0, x8
	call $__get_buf
	add x15, x0, x0
	sw x10, 8 ( x8 )
	beqz x10, LBB3_59
LBB3_58:                                //  %if.end17
	lb x1, 20 ( x10 )
	ori x28, x0, 65532 & 0xfff
	slli x28, x28, 20
	lui x3, 65532 >> 12 & 0xfffff
	ori x1, x1, 1
	sb x1, 20 ( x10 )
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	nop
	lhu x1, 0 ( x11 )
	srli x28, x28, 20
	or x3, x3, x28
	slli x4, x1, 1
	addi x1, x1, 2
	add x4, x4, x11
	slli x5, x1, 1
	lh x7, 2 ( x4 )
	add x5, x5, x11
	lh x9, 0 ( x5 )
	lw x12, 44 ( x2 )               //  4-byte Folded Reload
	nop
	sh x12, 2 ( x4 )
	add x3, x3, x7
	sh x3, 6 ( x4 )
	sh x9, 8 ( x4 )
	sh x0, 0 ( x5 )
	sh x1, 0 ( x11 )
	add x15, x0, x10
LBB3_59:                                //  %cleanup
	add x10, x0, x15
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	lw x1, 60 ( x2 )
$cfi25:
	.cfi_same_value 1
	addi x2, x2, 64
$cfi26:
	.cfi_adjust_cfa_offset -64
$cfi27:
	.cfi_def_cfa 2, 0
	ret
$func_end3:
	.size	$__add_ovflpage, ($func_end3)-($__add_ovflpage)
	.cfi_endproc

	.globl	$__get_page
	.type	$__get_page,@function
$__get_page:                            //  @__get_page
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi28:
	.cfi_def_cfa 2, 0
$cfi29:
	.cfi_val_offset 2, 0
	addi x2, x2, -48
$cfi30:
	.cfi_adjust_cfa_offset 48
	sw x1, 44 ( x2 )
$cfi31:
	.cfi_offset 1, -4
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	add x4, x0, x10
	add x8, x0, x12
	lw x3, 12 ( x4 )
	beqz x14, LBB4_2
LBB4_1:                                 //  %entry
	lw x5, 276 ( x4 )
	nop
	xori x1, x5, -1
	bgtu x1, x0, LBB4_3
LBB4_2:                                 //  %if.then
	ori x28, x0, 65530 & 0xfff
	slli x28, x28, 20
	lui x1, 65530 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x3
	sh x0, 0 ( x11 )
	sh x1, 2 ( x11 )
	sh x3, 4 ( x11 )
	jalr x0, LBB4_27 ( x0 )
LBB4_3:                                 //  %if.end
	sw x4, 28 ( x2 )                //  4-byte Folded Spill
	sw x11, 32 ( x2 )               //  4-byte Folded Spill
	sw x15, 16 ( x2 )               //  4-byte Folded Spill
	sw x3, 24 ( x2 )                //  4-byte Folded Spill
	sw x5, 20 ( x2 )                //  4-byte Folded Spill
	beqz x13, LBB4_7
LBB4_4:                                 //  %if.then9
	lw x1, 60 ( x4 )
	nop
	add x3, x8, x1
	bgtu x8, x0, LBB4_6
LBB4_5:
	add x1, x0, x0
	jalr x0, LBB4_11 ( x0 )
LBB4_6:                                 //  %cond.true
	addi x10, x8, 1
	add x8, x0, x5
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
	call $__log2
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	add x5, x0, x8
	lw x4, 28 ( x2 )                //  4-byte Folded Reload
	slli x1, x10, 2
	add x1, x1, x4
	lw x1, 64 ( x1 )
	jalr x0, LBB4_11 ( x0 )
LBB4_7:                                 //  %if.else
	srli x1, x8, 11
	slti x3, x0, 1
	sll x10, x3, x1
	addi x7, x10, -1
	lw x9, 60 ( x4 )
	bgtu x7, x0, LBB4_9
LBB4_8:
	add x1, x0, x0
	jalr x0, LBB4_10 ( x0 )
LBB4_9:                                 //  %cond.true25
	sw x7, 12 ( x2 )                //  4-byte Folded Spill
	sw x9, 8 ( x2 )                 //  4-byte Folded Spill
	call $__log2
	lw x9, 8 ( x2 )                 //  4-byte Folded Reload
	lw x7, 12 ( x2 )                //  4-byte Folded Reload
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	lw x4, 28 ( x2 )                //  4-byte Folded Reload
	slli x1, x10, 2
	add x1, x1, x4
	lw x1, 64 ( x1 )
LBB4_10:                                //  %cond.end36
	andi x3, x8, 2047
	add x3, x3, x7
	add x3, x9, x3
LBB4_11:                                //  %if.end40
	add x1, x1, x3
	lw x3, 16 ( x4 )
	nop
	sll x11, x1, x3
	add x12, x0, x0
	add x10, x0, x5
	call $lseek
	xori x1, x10, -1
	not x8, x0
	beqz x1, LBB4_28
LBB4_12:                                //  %lor.lhs.false46
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	lw x12, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $read
	xori x1, x10, -1
	beqz x1, LBB4_28
LBB4_13:                                //  %if.end51
	bgtu x10, x0, LBB4_18
LBB4_14:                                //  %if.then53
	lw x5, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sh x0, 0 ( x5 )
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
LBB4_15:                                //  %if.end61
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x4, x0, LBB4_20
LBB4_16:                                //  %land.lhs.true
	lhu x1, 0 ( x5 )
	nop
	bgtu x1, x0, LBB4_20
LBB4_17:                                //  %if.then65
	sh x0, 0 ( x5 )
	lw x1, 12 ( x3 )
	ori x28, x0, 65530 & 0xfff
	slli x28, x28, 20
	lui x3, 65530 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	add x3, x3, x1
	sh x3, 2 ( x5 )
	sh x1, 4 ( x5 )
	jalr x0, LBB4_27 ( x0 )
LBB4_18:                                //  %if.else55
	lw x5, 32 ( x2 )                //  4-byte Folded Reload
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	beq x10, x1, LBB4_15
LBB4_19:                                //  %if.then58
	call $__errno
	addi x1, x0, 79
	sw x1, 0 ( x10 )
	jalr x0, LBB4_28 ( x0 )
LBB4_20:                                //  %if.else76
	lw x1, 8 ( x3 )
	nop
	xori x1, x1, 1234
	beqz x1, LBB4_27
LBB4_21:                                //  %if.then80
	beqz x4, LBB4_25
LBB4_22:                                //  %if.then82
	lw x1, 12 ( x3 )
	nop
	srai x1, x1, 2
	ble x1, x0, LBB4_27
LBB4_23:                                //  %for.body.lr.ph
	addi x3, x5, 1
LBB4_24:                                //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x4, -1 ( x3 )
	addi x1, x1, -1
	addi x5, x3, 4
	srli x7, x4, 24
	srli x9, x4, 16
	srli x10, x4, 8
	sb x7, -1 ( x3 )
	sb x9, 0 ( x3 )
	sb x10, 1 ( x3 )
	sb x4, 2 ( x3 )
	add x3, x0, x5
	bgtu x1, x0, LBB4_24
	jalr x0, LBB4_27 ( x0 )
LBB4_25:                                //  %for.body116.preheader
	lh x3, 0 ( x5 )
	addi x1, x5, 3
	srli x4, x3, 8
	sb x4, 0 ( x5 )
	sb x3, 1 ( x5 )
	lhu x3, 0 ( x5 )
	nop
	addi x3, x3, 2
LBB4_26:                                //  %for.body116
                                        //  =>This Inner Loop Header: Depth=1
	lh x4, -1 ( x1 )
	addi x3, x3, -1
	addi x5, x1, 2
	srli x7, x4, 8
	sb x7, -1 ( x1 )
	sb x4, 0 ( x1 )
	add x1, x0, x5
	bgtu x3, x0, LBB4_26
LBB4_27:
	add x8, x0, x0
LBB4_28:                                //  %cleanup
	add x10, x0, x8
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	lw x1, 44 ( x2 )
$cfi32:
	.cfi_same_value 1
	addi x2, x2, 48
$cfi33:
	.cfi_adjust_cfa_offset -48
$cfi34:
	.cfi_def_cfa 2, 0
	ret
$func_end4:
	.size	$__get_page, ($func_end4)-($__get_page)
	.cfi_endproc

	.globl	$__put_page
	.type	$__put_page,@function
$__put_page:                            //  @__put_page
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi35:
	.cfi_def_cfa 2, 0
$cfi36:
	.cfi_val_offset 2, 0
	addi x2, x2, -48
$cfi37:
	.cfi_adjust_cfa_offset 48
	sw x1, 44 ( x2 )
$cfi38:
	.cfi_offset 1, -4
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	add x15, x0, x10
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	lw x8, 276 ( x15 )
	lw x11, 12 ( x15 )
	xori x1, x8, -1
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	bgtu x1, x0, LBB5_4
LBB5_1:                                 //  %land.lhs.true
	sw x14, 4 ( x2 )                //  4-byte Folded Spill
	sw x13, 12 ( x2 )               //  4-byte Folded Spill
	sw x12, 8 ( x2 )                //  4-byte Folded Spill
	not x1, x0
	sw x1, 32 ( x2 )
	slti x10, x0, 1
	addi x11, x2, 32
	addi x12, x2, 28
	add x8, x0, x15
	call $sigprocmask
	ori x28, x0, $open_temp.namestr & 0xfff
	slli x28, x28, 20
	lui x1, $open_temp.namestr >> 12 & 0xfffff
	srli x28, x28, 20
	or x10, x1, x28
	call $mkstemp
	xori x1, x10, -1
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	sw x10, 276 ( x8 )
	beqz x1, LBB5_3
LBB5_2:                                 //  %if.then.i
	ori x28, x0, $open_temp.namestr & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $open_temp.namestr >> 12 & 0xfffff
	or x10, x1, x28
	call $unlink
LBB5_3:                                 //  %open_temp.exit
	add x10, x0, x0
	addi x11, x2, 28
	add x12, x0, x10
	call $sigprocmask
	lw x15, 20 ( x2 )               //  4-byte Folded Reload
	nop
	lw x8, 276 ( x15 )
	nop
	xori x1, x8, -1
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	lw x13, 12 ( x2 )               //  4-byte Folded Reload
	not x3, x0
	lw x14, 4 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB5_25
LBB5_4:                                 //  %if.end
	lw x1, 8 ( x15 )
	nop
	xori x1, x1, 1234
	beqz x1, LBB5_11
LBB5_5:                                 //  %if.then4
	beqz x14, LBB5_9
LBB5_6:                                 //  %if.then6
	lw x1, 12 ( x15 )
	nop
	srai x1, x1, 2
	ble x1, x0, LBB5_11
LBB5_7:                                 //  %for.body.lr.ph
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	addi x3, x3, 1
LBB5_8:                                 //  %for.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x4, -1 ( x3 )
	addi x1, x1, -1
	addi x5, x3, 4
	srli x7, x4, 24
	srli x9, x4, 16
	srli x10, x4, 8
	sb x7, -1 ( x3 )
	sb x9, 0 ( x3 )
	sb x10, 1 ( x3 )
	sb x4, 2 ( x3 )
	add x3, x0, x5
	bgtu x1, x0, LBB5_8
	jalr x0, LBB5_11 ( x0 )
LBB5_9:                                 //  %if.else
	lw x5, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lhu x3, 0 ( x5 )
	addi x1, x5, 3
	srli x4, x3, 8
	sb x4, 0 ( x5 )
	sb x3, 1 ( x5 )
	addi x3, x3, 2
LBB5_10:                                //  %for.body26.for.body26_crit_edge
                                        //  =>This Inner Loop Header: Depth=1
	lh x4, -1 ( x1 )
	addi x3, x3, -1
	addi x5, x1, 2
	srli x7, x4, 8
	sb x7, -1 ( x1 )
	sb x4, 0 ( x1 )
	add x1, x0, x5
	bgtu x3, x0, LBB5_10
LBB5_11:                                //  %if.end39
	beqz x13, LBB5_16
LBB5_12:                                //  %if.then41
	lw x1, 60 ( x15 )
	nop
	add x3, x12, x1
	bgtu x12, x0, LBB5_14
LBB5_13:
	add x1, x0, x0
	add x1, x1, x3
	jalr x0, LBB5_20 ( x0 )
LBB5_14:                                //  %cond.true
	addi x10, x12, 1
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	sw x15, 20 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x3
	call $__log2
	add x3, x0, x8
	lw x15, 20 ( x2 )               //  4-byte Folded Reload
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	slli x1, x10, 2
	add x1, x1, x15
	lw x1, 64 ( x1 )
	nop
	add x1, x1, x3
	jalr x0, LBB5_20 ( x0 )
LBB5_16:                                //  %if.else50
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	srli x1, x12, 11
	slti x3, x0, 1
	sll x10, x3, x1
	addi x8, x10, -1
	lw x4, 60 ( x15 )
	bgtu x8, x0, LBB5_18
LBB5_17:
	add x1, x0, x0
	jalr x0, LBB5_19 ( x0 )
LBB5_18:                                //  %cond.true60
	sw x15, 20 ( x2 )               //  4-byte Folded Spill
	sw x12, 8 ( x2 )                //  4-byte Folded Spill
	sw x4, 4 ( x2 )                 //  4-byte Folded Spill
	call $__log2
	lw x4, 4 ( x2 )                 //  4-byte Folded Reload
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	lw x15, 20 ( x2 )               //  4-byte Folded Reload
	slli x1, x10, 2
	add x1, x1, x15
	lw x1, 64 ( x1 )
LBB5_19:                                //  %cond.end71
	andi x3, x12, 2047
	add x3, x3, x8
	add x3, x4, x3
	add x1, x1, x3
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
LBB5_20:                                //  %if.end75
	lw x3, 16 ( x15 )
	nop
	sll x11, x1, x3
	add x12, x0, x0
	add x10, x0, x8
	call $lseek
	xori x1, x10, -1
	not x3, x0
	beqz x1, LBB5_25
LBB5_21:                                //  %lor.lhs.false
	add x10, x0, x8
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	lw x8, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x12, x0, x8
	call $write
	xori x1, x10, -1
	beqz x1, LBB5_24
LBB5_22:                                //  %if.end85
	add x3, x0, x0
	beq x10, x8, LBB5_25
LBB5_23:                                //  %if.then88
	call $__errno
	addi x1, x0, 79
	sw x1, 0 ( x10 )
LBB5_24:                                //  %cleanup
	not x3, x0
LBB5_25:                                //  %cleanup
	add x10, x0, x3
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	lw x1, 44 ( x2 )
$cfi39:
	.cfi_same_value 1
	addi x2, x2, 48
$cfi40:
	.cfi_adjust_cfa_offset -48
$cfi41:
	.cfi_def_cfa 2, 0
	ret
$func_end5:
	.size	$__put_page, ($func_end5)-($__put_page)
	.cfi_endproc

	.globl	$__ibitmap
	.type	$__ibitmap,@function
$__ibitmap:                             //  @__ibitmap
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi42:
	.cfi_def_cfa 2, 0
$cfi43:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi44:
	.cfi_adjust_cfa_offset 40
	sw x1, 36 ( x2 )
$cfi45:
	.cfi_offset 1, -4
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	sw x13, 12 ( x2 )               //  4-byte Folded Spill
	sw x12, 20 ( x2 )               //  4-byte Folded Spill
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	lw x10, 12 ( x10 )
	nop
	call $malloc
	add x8, x0, x10
	bgtu x8, x0, LBB6_2
LBB6_1:
	slti x10, x0, 1
	jalr x0, LBB6_3 ( x0 )
LBB6_2:                                 //  %if.end
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 440 ( x3 )
	nop
	addi x1, x1, 1
	sw x1, 440 ( x3 )
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, -1
	srai x1, x1, 5
	slli x1, x1, 2
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	addi x12, x1, 4
	sw x12, 4 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x0
	add x10, x0, x8
	call $memset
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lw x1, 12 ( x1 )
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	add x10, x3, x8
	sub x12, x1, x3
	addi x11, x0, 255
	call $memset
	add x10, x0, x0
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 31
	not x3, x0
	sll x1, x3, x1
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	add x3, x3, x8
	sw x1, 0 ( x3 )
	lw x1, 0 ( x8 )
	lw x4, 12 ( x2 )                //  4-byte Folded Reload
	nop
	slli x3, x4, 1
	slli x4, x4, 2
	lw x5, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x3, x5
	ori x1, x1, 1
	add x4, x4, x5
	sw x1, 0 ( x8 )
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sh x1, 196 ( x3 )
	sw x8, 312 ( x4 )
LBB6_3:                                 //  %cleanup
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi46:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi47:
	.cfi_adjust_cfa_offset -40
$cfi48:
	.cfi_def_cfa 2, 0
	ret
$func_end6:
	.size	$__ibitmap, ($func_end6)-($__ibitmap)
	.cfi_endproc

	.globl	$__free_ovflpage
	.type	$__free_ovflpage,@function
$__free_ovflpage:                       //  @__free_ovflpage
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi49:
	.cfi_def_cfa 2, 0
$cfi50:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi51:
	.cfi_adjust_cfa_offset 40
	sw x1, 36 ( x2 )
$cfi52:
	.cfi_offset 1, -4
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x10
	lw x1, 12 ( x11 )
	nop
	srli x3, x1, 11
	andi x3, x3, 31
	bgtu x3, x0, LBB7_2
LBB7_1:
	add x3, x0, x0
	jalr x0, LBB7_3 ( x0 )
LBB7_2:                                 //  %cond.true
	slli x3, x3, 2
	add x3, x3, x8
	lw x3, 64 ( x3 )
LBB7_3:                                 //  %cond.end
	lw x4, 36 ( x8 )
	andi x1, x1, 2047
	add x1, x1, x3
	addi x3, x1, -1
	bgt x1, x4, LBB7_5
LBB7_4:                                 //  %if.then
	sw x3, 36 ( x8 )
LBB7_5:                                 //  %if.end
	lw x1, 16 ( x8 )
	lw x4, 12 ( x8 )
	addi x1, x1, 3
	sra x5, x3, x1
	slli x1, x5, 2
	add x1, x1, x8
	lw x10, 312 ( x1 )
	nop
	bgtu x10, x0, LBB7_8
LBB7_6:                                 //  %if.then20
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
	sw x11, 16 ( x2 )               //  4-byte Folded Spill
	addi x1, x1, 312
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	sw x4, 8 ( x2 )                 //  4-byte Folded Spill
	add x10, x0, x4
	sw x5, 20 ( x2 )                //  4-byte Folded Spill
	call $malloc
	add x1, x0, x10
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	slli x3, x3, 1
	lw x4, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x4 )
	add x3, x3, x8
	lhu x12, 196 ( x3 )
	slti x14, x0, 1
	add x13, x0, x0
	add x10, x0, x8
	add x11, x0, x1
	add x15, x0, x14
	call $__get_page
	add x1, x0, x10
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lw x10, 0 ( x3 )
	bgtu x1, x0, LBB7_9
LBB7_7:
	lw x11, 16 ( x2 )               //  4-byte Folded Reload
	lw x3, 12 ( x2 )                //  4-byte Folded Reload
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	nop
LBB7_8:                                 //  %if.end21
	slli x1, x4, 3
	addi x1, x1, -1
	and x1, x3, x1
	srai x3, x1, 31
	srli x3, x3, 27
	add x3, x3, x1
	srai x3, x3, 5
	slli x3, x3, 2
	add x3, x3, x10
	lw x4, 0 ( x3 )
	andi x1, x1, 31
	slti x5, x0, 1
	sll x1, x5, x1
	not x1, x1
	and x1, x1, x4
	sw x1, 0 ( x3 )
	add x10, x0, x8
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi53:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi54:
	.cfi_adjust_cfa_offset -40
$cfi55:
	.cfi_def_cfa 2, 0
	j $__reclaim_buf
LBB7_9:                                 //  %if.then9.i
	call $free
$func_end7:
	.size	$__free_ovflpage, ($func_end7)-($__free_ovflpage)
	.cfi_endproc

	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"HASH: Out of overflow pages.  Increase page size\n"
	.size	$.str, 50

	.address_space	0	
	.type	$open_temp.namestr,@object //  @open_temp.namestr
	.data
$open_temp.namestr:
	.asciz	"_hashXXXXXX"
	.size	$open_temp.namestr, 12


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
