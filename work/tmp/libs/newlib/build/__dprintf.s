	.text
	.file	"__dprintf.bc"
	.globl	$__dprintf
	.type	$__dprintf,@function
$__dprintf:                             //  @__dprintf
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -80
$cfi2:
	.cfi_adjust_cfa_offset 80
	sw x1, 76 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 68 ( x2 )                //  4-byte Folded Spill
	addi x1, x2, 84
	sw x1, 28 ( x2 )
	lw x4, 80 ( x2 )
	nop
LBB0_1:                                 //  %while.cond
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB0_32 Depth 2
                                        //      Child Loop BB0_40 Depth 2
                                        //      Child Loop BB0_12 Depth 2
                                        //        Child Loop BB0_16 Depth 3
                                        //        Child Loop BB0_22 Depth 3
	add x8, x0, x4
	lbu x1, 0 ( x8 )
	nop
	xori x3, x1, 37
	beqz x3, LBB0_4
LBB0_2:                                 //  %while.cond
                                        //    in Loop: Header=BB0_1 Depth=1
	bgtu x1, x0, LBB0_7
LBB0_3:                                 //  %while.end73
	lw x8, 68 ( x2 )                //  4-byte Folded Reload
	lw x1, 76 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 80
$cfi5:
	.cfi_adjust_cfa_offset -80
$cfi6:
	.cfi_def_cfa 2, 0
	ret
LBB0_4:                                 //  %lor.lhs.false
                                        //    in Loop: Header=BB0_1 Depth=1
	lbu x3, 1 ( x8 )
	nop
	xori x1, x3, 78
	beqz x1, LBB0_8
LBB0_5:                                 //  %lor.lhs.false
                                        //    in Loop: Header=BB0_1 Depth=1
	xori x1, x3, 37
	bgtu x1, x0, LBB0_28
LBB0_6:                                 //    in Loop: Header=BB0_1 Depth=1
	addi x8, x8, 1
	addi x1, x0, 37
LBB0_7:                                 //  %if.then
                                        //    in Loop: Header=BB0_1 Depth=1
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $_impure_ptr >> 12 & 0xfffff
	or x3, x3, x28
	lw x10, 0 ( x3 )
	sb x1, 35 ( x2 )
	addi x11, x0, 2
	addi x12, x2, 35
	slti x13, x0, 1
	call $_write_r
	addi x4, x8, 1
	jalr x0, LBB0_1 ( x0 )
LBB0_8:                                 //  %if.then17
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x3, 28 ( x2 )
	addi x4, x8, 3
	addi x1, x3, 4
	sw x1, 28 ( x2 )
	lw x5, 0 ( x3 )
	addi x3, x1, 4
	sw x3, 28 ( x2 )
	add x3, x0, x5
	ble x5, x0, LBB0_1
LBB0_9:                                 //  %while.body24.lr.ph
                                        //    in Loop: Header=BB0_1 Depth=1
	lb x5, 2 ( x8 )
	lw x1, 0 ( x1 )
	nop
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 16
	add x7, x0, x1
	addi x1, x0, 120
	sw x5, 8 ( x2 )                 //  4-byte Folded Spill
	beq x5, x1, LBB0_11
LBB0_10:                                //  %while.body24.lr.ph
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x1, x0, 10
	add x7, x0, x1
LBB0_11:                                //  %while.body24.lr.ph
                                        //    in Loop: Header=BB0_1 Depth=1
	sw x7, 24 ( x2 )                //  4-byte Folded Spill
	sw x4, 4 ( x2 )                 //  4-byte Folded Spill
	add x8, x0, x3
LBB0_12:                                //  %while.body24
                                        //    Parent Loop BB0_1 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB0_16 Depth 3
                                        //        Child Loop BB0_22 Depth 3
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	addi x10, x1, -99
	addi x1, x0, 21
	bgtu x10, x1, LBB0_25
LBB0_13:                                //  %while.body24
                                        //    in Loop: Header=BB0_12 Depth=2
	addi x11, x0, 4
	call $__mulsi3
	ori x28, x0, JTI0_0 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI0_0 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	jr x1
LBB0_14:                                //  %sw.bb
                                        //    in Loop: Header=BB0_12 Depth=2
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	lbu x1, 0 ( x1 )
	ori x28, x0, $__unctrl & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $__unctrl >> 12 & 0xfffff
	or x3, x3, x28
	ori x28, x0, $_impure_ptr & 0xfff
	slli x1, x1, 2
	slli x28, x28, 20
	add x1, x3, x1
	srli x28, x28, 20
	lw x8, 0 ( x1 )
	lui x1, $_impure_ptr >> 12 & 0xfffff
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	call $strlen
	add x1, x0, x10
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	addi x11, x0, 2
	add x12, x0, x8
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	add x13, x0, x1
	call $_write_r
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 1
	jalr x0, LBB0_24 ( x0 )
LBB0_15:                                //  %sw.bb28
                                        //    in Loop: Header=BB0_12 Depth=2
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	nop
	lb x1, 3 ( x5 )
	lbu x3, 2 ( x5 )
	lbu x4, 1 ( x5 )
	lbu x5, 0 ( x5 )
	slli x1, x1, 24
	slli x3, x3, 16
	or x1, x1, x3
	slli x3, x4, 8
	or x1, x3, x1
	or x3, x5, x1
	sb x0, 66 ( x2 )
	addi x1, x2, 66
	lui x7, $print_number.chars >> 12 & 0xfffff
	addi x9, x0, 15
LBB0_16:                                //  %do.body.i
                                        //    Parent Loop BB0_1 Depth=1
                                        //      Parent Loop BB0_12 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	add x4, x0, x3
	ori x28, x0, $print_number.chars & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	andi x3, x4, 15
	or x5, x7, x28
	add x3, x5, x3
	lb x5, 0 ( x3 )
	srli x3, x4, 4
	addi x8, x1, -1
	sb x5, -1 ( x1 )
	add x1, x0, x8
	bgtu x4, x9, LBB0_16
LBB0_17:                                //  %print_number.exit
                                        //    in Loop: Header=BB0_12 Depth=2
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	call $strlen
	add x1, x0, x10
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	addi x11, x0, 2
	add x12, x0, x8
	add x13, x0, x1
	call $_write_r
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 4
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB0_25 ( x0 )
LBB0_18:                                //  %sw.bb29
                                        //    in Loop: Header=BB0_12 Depth=2
	lw x5, 16 ( x2 )                //  4-byte Folded Reload
	nop
	lb x1, 3 ( x5 )
	lbu x3, 2 ( x5 )
	lbu x4, 1 ( x5 )
	lbu x5, 0 ( x5 )
	slli x1, x1, 24
	slli x3, x3, 16
	or x1, x1, x3
	slli x3, x4, 8
	or x1, x3, x1
	lw x3, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	xori x3, x3, 100
	or x10, x5, x1
	bgtu x3, x0, LBB0_21
LBB0_19:                                //  %sw.bb29
                                        //    in Loop: Header=BB0_12 Depth=2
	bgez x10, LBB0_21
LBB0_20:                                //  %if.then.i
                                        //    in Loop: Header=BB0_12 Depth=2
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	or x1, x1, x28
	add x8, x0, x10
	lw x10, 0 ( x1 )
	addi x1, x0, 45
	sb x1, 67 ( x2 )
	addi x11, x0, 2
	addi x12, x2, 67
	slti x13, x0, 1
	call $_write_r
	add x10, x0, x8
	sub x10, x0, x10
LBB0_21:                                //  %if.end.i
                                        //    in Loop: Header=BB0_12 Depth=2
	sb x0, 66 ( x2 )
	addi x8, x2, 66
LBB0_22:                                //  %do.body.i127
                                        //    Parent Loop BB0_1 Depth=1
                                        //      Parent Loop BB0_12 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__umodsi3
	ori x28, x0, $print_number.chars & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $print_number.chars >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lb x1, 0 ( x1 )
	nop
	sb x1, -1 ( x8 )
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__udivsi3
	addi x8, x8, -1
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	bgeu x1, x3, LBB0_22
	jalr x0, LBB0_17 ( x0 )
LBB0_23:                                //  %sw.bb41
                                        //    in Loop: Header=BB0_12 Depth=2
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	lw x8, 0 ( x1 )
	lui x1, $_impure_ptr >> 12 & 0xfffff
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	call $strlen
	add x1, x0, x10
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	addi x11, x0, 2
	add x12, x0, x8
	lw x8, 12 ( x2 )                //  4-byte Folded Reload
	add x13, x0, x1
	call $_write_r
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	addi x1, x1, 4
LBB0_24:                                //  %sw.epilog
                                        //    in Loop: Header=BB0_12 Depth=2
	sw x1, 16 ( x2 )                //  4-byte Folded Spill
LBB0_25:                                //  %sw.epilog
                                        //    in Loop: Header=BB0_12 Depth=2
	slti x1, x8, 2
	addi x8, x8, -1
	beqz x1, LBB0_27
LBB0_26:                                //    in Loop: Header=BB0_1 Depth=1
	lw x4, 4 ( x2 )                 //  4-byte Folded Reload
	jalr x0, LBB0_1 ( x0 )
LBB0_27:                                //  %while.cond21.backedge.thread
                                        //    in Loop: Header=BB0_12 Depth=2
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	or x1, x1, x28
	lw x10, 0 ( x1 )
	addi x1, x0, 32
	sb x1, 35 ( x2 )
	addi x11, x0, 2
	addi x12, x2, 35
	slti x13, x0, 1
	call $_write_r
	jalr x0, LBB0_12 ( x0 )
LBB0_28:                                //  %if.else
                                        //    in Loop: Header=BB0_1 Depth=1
	sw x3, 20 ( x2 )                //  4-byte Folded Spill
	slli x1, x3, 24
	srai x1, x1, 24
	addi x10, x1, -99
	addi x4, x8, 2
	addi x1, x0, 21
	bgtu x10, x1, LBB0_1
LBB0_29:                                //  %if.else
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x11, x0, 4
	sw x4, 4 ( x2 )                 //  4-byte Folded Spill
	call $__mulsi3
	lw x4, 4 ( x2 )                 //  4-byte Folded Reload
	ori x28, x0, JTI0_1 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI0_1 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB0_30:                                //  %sw.bb49
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 28 ( x2 )
	ori x28, x0, $__unctrl & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	addi x3, x1, 4
	sw x3, 28 ( x2 )
	lbu x1, 0 ( x1 )
	lui x3, $__unctrl >> 12 & 0xfffff
	or x3, x3, x28
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	slli x1, x1, 2
	add x1, x3, x1
	srli x28, x28, 20
	jalr x0, LBB0_42 ( x0 )
LBB0_31:                                //  %sw.bb55
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 28 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 28 ( x2 )
	lw x3, 0 ( x1 )
	sb x0, 66 ( x2 )
	addi x1, x2, 66
	lui x7, $print_number.chars >> 12 & 0xfffff
	addi x9, x0, 15
LBB0_32:                                //  %do.body.i150
                                        //    Parent Loop BB0_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	add x4, x0, x3
	ori x28, x0, $print_number.chars & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	andi x3, x4, 15
	or x5, x7, x28
	add x3, x5, x3
	lb x5, 0 ( x3 )
	srli x3, x4, 4
	addi x8, x1, -1
	sb x5, -1 ( x1 )
	add x1, x0, x8
	bgtu x4, x9, LBB0_32
LBB0_33:                                //  %print_number.exit153
                                        //    in Loop: Header=BB0_1 Depth=1
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	jalr x0, LBB0_43 ( x0 )
LBB0_34:                                //  %sw.bb57
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x1, x0, 16
	add x4, x0, x1
	addi x1, x0, 120
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	nop
	beq x5, x1, LBB0_36
LBB0_35:                                //  %sw.bb57
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x1, x0, 10
	add x4, x0, x1
LBB0_36:                                //  %sw.bb57
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 28 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 28 ( x2 )
	lw x10, 0 ( x1 )
	xori x1, x5, 100
	bgtu x1, x0, LBB0_39
LBB0_37:                                //  %sw.bb57
                                        //    in Loop: Header=BB0_1 Depth=1
	bgez x10, LBB0_39
LBB0_38:                                //  %if.then.i161
                                        //    in Loop: Header=BB0_1 Depth=1
	addi x1, x0, 45
	sb x1, 67 ( x2 )
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	or x1, x1, x28
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	lw x10, 0 ( x1 )
	add x8, x0, x4
	addi x11, x0, 2
	addi x12, x2, 67
	slti x13, x0, 1
	call $_write_r
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	add x4, x0, x8
	sub x10, x0, x10
LBB0_39:                                //  %if.end.i164
                                        //    in Loop: Header=BB0_1 Depth=1
	sb x0, 66 ( x2 )
	addi x8, x2, 66
	sw x4, 24 ( x2 )                //  4-byte Folded Spill
LBB0_40:                                //  %do.body.i172
                                        //    Parent Loop BB0_1 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x10, 20 ( x2 )               //  4-byte Folded Spill
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__umodsi3
	ori x28, x0, $print_number.chars & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $print_number.chars >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lb x1, 0 ( x1 )
	nop
	sb x1, -1 ( x8 )
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	nop
	call $__udivsi3
	lw x4, 24 ( x2 )                //  4-byte Folded Reload
	addi x8, x8, -1
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	bgeu x1, x4, LBB0_40
	jalr x0, LBB0_33 ( x0 )
LBB0_41:                                //  %sw.bb66
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x1, 28 ( x2 )
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	addi x3, x1, 4
	sw x3, 28 ( x2 )
LBB0_42:                                //  %while.cond
                                        //    in Loop: Header=BB0_1 Depth=1
	lw x8, 0 ( x1 )
LBB0_43:                                //  %while.cond
                                        //    in Loop: Header=BB0_1 Depth=1
	lui x1, $_impure_ptr >> 12 & 0xfffff
	or x1, x1, x28
	lw x1, 0 ( x1 )
	nop
	sw x1, 24 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	call $strlen
	add x1, x0, x10
	lw x10, 24 ( x2 )               //  4-byte Folded Reload
	addi x11, x0, 2
	add x12, x0, x8
	add x13, x0, x1
	call $_write_r
	lw x4, 4 ( x2 )                 //  4-byte Folded Reload
	jalr x0, LBB0_1 ( x0 )
$func_end0:
	.size	$__dprintf, ($func_end0)-($__dprintf)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI0_0:
	.long	LBB0_14
	.long	LBB0_18
	.long	LBB0_25
	.long	LBB0_25
	.long	LBB0_25
	.long	LBB0_25
	.long	LBB0_25
	.long	LBB0_25
	.long	LBB0_25
	.long	LBB0_25
	.long	LBB0_25
	.long	LBB0_25
	.long	LBB0_25
	.long	LBB0_15
	.long	LBB0_25
	.long	LBB0_25
	.long	LBB0_23
	.long	LBB0_25
	.long	LBB0_18
	.long	LBB0_25
	.long	LBB0_25
	.long	LBB0_18
JTI0_1:
	.long	LBB0_30
	.long	LBB0_34
	.long	LBB0_1
	.long	LBB0_1
	.long	LBB0_1
	.long	LBB0_1
	.long	LBB0_1
	.long	LBB0_1
	.long	LBB0_1
	.long	LBB0_1
	.long	LBB0_1
	.long	LBB0_1
	.long	LBB0_1
	.long	LBB0_31
	.long	LBB0_1
	.long	LBB0_1
	.long	LBB0_41
	.long	LBB0_1
	.long	LBB0_34
	.long	LBB0_1
	.long	LBB0_1
	.long	LBB0_34

	.address_space	0	
	.address_space	0	
	.type	$print_number.chars,@object //  @print_number.chars
	.section	.rodata.cst16,"aM",@progbits,16
$print_number.chars:
	.ascii	"0123456789abcdef"
	.size	$print_number.chars, 16

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
