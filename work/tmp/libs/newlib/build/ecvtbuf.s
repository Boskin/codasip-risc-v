	.text
	.file	"ecvtbuf.bc"
	.globl	$fcvtbuf
	.type	$fcvtbuf,@function
$fcvtbuf:                               //  @fcvtbuf
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
	sw x14, 20 ( x2 )               //  4-byte Folded Spill
	sw x13, 24 ( x2 )               //  4-byte Folded Spill
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x8, 0 ( x1 )
	sw x12, 32 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	sw x10, 28 ( x2 )               //  4-byte Folded Spill
	bgtu x15, x0, LBB0_5
LBB0_1:                                 //  %if.then
	lw x1, 80 ( x8 )
	addi x3, x12, 35
	lw x15, 84 ( x8 )
	bgt x1, x3, LBB0_5
LBB0_2:                                 //  %if.then2
	addi x12, x12, 36
	add x10, x0, x8
	add x11, x0, x15
	sw x12, 16 ( x2 )               //  4-byte Folded Spill
	call $_realloc_r
	add x15, x0, x10
	bgtu x15, x0, LBB0_4
LBB0_3:
	add x9, x0, x0
	jalr x0, LBB0_17 ( x0 )
LBB0_4:                                 //  %if.end
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 80 ( x8 )
	sw x15, 84 ( x8 )
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
LBB0_5:                                 //  %if.end11
	sw x8, 12 ( x2 )                //  4-byte Folded Spill
	sw x15, 16 ( x2 )               //  4-byte Folded Spill
	add x12, x0, x0
	lui x13, 1072693248>>12 &0xfffff
	add x8, x0, x10
	call $__ltdf2
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	ori x28, x0, -1074790400 & 0xfff
	slli x28, x28, 20
	lui x1, -1074790400 >> 12 & 0xfffff
	srli x28, x28, 20
	or x13, x1, x28
	add x10, x0, x8
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x8, x0, x0
	add x12, x0, x8
	call $__gtdf2
	addi x1, x0, 3
	ble x10, x8, LBB0_7
LBB0_6:
	addi x13, x0, 2
	jalr x0, LBB0_8 ( x0 )
LBB0_7:                                 //  %if.end11
	add x13, x0, x1
LBB0_8:                                 //  %if.end11
	lw x16, 20 ( x2 )               //  4-byte Folded Reload
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x4, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	bgt x8, x4, LBB0_10
LBB0_9:                                 //  %if.end11
	add x13, x0, x1
LBB0_10:                                //  %if.end11
	addi x17, x2, 40
	lw x14, 32 ( x2 )               //  4-byte Folded Reload
	lw x8, 24 ( x2 )                //  4-byte Folded Reload
	nop
	add x15, x0, x8
	call $_dtoa_r
	lw x1, 0 ( x8 )
	nop
	sub x3, x0, x1
	lw x1, 40 ( x2 )
	nop
	bgtu x1, x10, LBB0_18
LBB0_11:
	lw x9, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x0, x9
	lw x5, 32 ( x2 )                //  4-byte Folded Reload
	nop
LBB0_12:                                //  %while.cond20.preheader
	ble x5, x3, LBB0_16
LBB0_13:                                //  %while.body22.preheader
	sub x3, x5, x3
	addi x4, x0, 48
	add x5, x0, x3
	add x7, x0, x1
LBB0_14:                                //  %while.body22
                                        //  =>This Inner Loop Header: Depth=1
	sb x4, 0 ( x7 )
	addi x7, x7, 1
	addi x5, x5, -1
	bgtu x5, x0, LBB0_14
LBB0_15:                                //  %while.end25.loopexit
	add x1, x3, x1
LBB0_16:                                //  %while.end25
	sb x0, 0 ( x1 )
LBB0_17:                                //  %cleanup
	add x10, x0, x9
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
LBB0_18:
	lw x9, 16 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x0, x9
	lw x5, 32 ( x2 )                //  4-byte Folded Reload
LBB0_19:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lb x4, 0 ( x10 )
	nop
	sb x4, 0 ( x1 )
	addi x3, x3, 1
	addi x1, x1, 1
	addi x10, x10, 1
	lw x4, 40 ( x2 )
	nop
	bgtu x4, x10, LBB0_19
	jalr x0, LBB0_12 ( x0 )
$func_end0:
	.size	$fcvtbuf, ($func_end0)-($fcvtbuf)
	.cfi_endproc

	.globl	$ecvtbuf
	.type	$ecvtbuf,@function
$ecvtbuf:                               //  @ecvtbuf
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -48
$cfi9:
	.cfi_adjust_cfa_offset 48
	sw x1, 44 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x15
	add x4, x0, x14
	add x5, x0, x13
	add x3, x0, x12
	add x7, x0, x11
	add x9, x0, x10
	ori x28, x0, $_impure_ptr & 0xfff
	slli x28, x28, 20
	lui x1, $_impure_ptr >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	lw x10, 0 ( x1 )
	sw x3, 28 ( x2 )                //  4-byte Folded Spill
	bgtu x8, x0, LBB1_5
LBB1_1:                                 //  %if.then
	lw x1, 80 ( x10 )
	lw x8, 84 ( x10 )
	bgt x1, x3, LBB1_5
LBB1_2:                                 //  %if.then2
	sw x9, 12 ( x2 )                //  4-byte Folded Spill
	sw x7, 16 ( x2 )                //  4-byte Folded Spill
	sw x5, 20 ( x2 )                //  4-byte Folded Spill
	sw x4, 24 ( x2 )                //  4-byte Folded Spill
	addi x12, x3, 1
	sw x10, 8 ( x2 )                //  4-byte Folded Spill
	add x11, x0, x8
	sw x12, 4 ( x2 )                //  4-byte Folded Spill
	call $_realloc_r
	add x8, x0, x10
	bgtu x8, x0, LBB1_4
LBB1_3:
	add x8, x0, x0
	jalr x0, LBB1_13 ( x0 )
LBB1_4:                                 //  %if.end
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x3, 80 ( x1 )
	sw x8, 84 ( x1 )
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	lw x4, 24 ( x2 )                //  4-byte Folded Reload
	lw x5, 20 ( x2 )                //  4-byte Folded Reload
	lw x7, 16 ( x2 )                //  4-byte Folded Reload
	lw x9, 12 ( x2 )                //  4-byte Folded Reload
	add x10, x0, x1
LBB1_5:                                 //  %if.end10
	addi x13, x0, 2
	addi x17, x2, 32
	add x11, x0, x9
	add x12, x0, x7
	add x14, x0, x3
	add x15, x0, x5
	add x16, x0, x4
	call $_dtoa_r
	lw x1, 32 ( x2 )
	nop
	bgtu x1, x10, LBB1_14
LBB1_6:
	add x3, x0, x0
	add x1, x0, x8
	jalr x0, LBB1_8 ( x0 )
LBB1_7:                                 //  %while.cond14.preheader.loopexit
	add x1, x3, x8
LBB1_8:                                 //  %while.cond14.preheader
	lw x4, 28 ( x2 )                //  4-byte Folded Reload
	nop
	ble x4, x3, LBB1_12
LBB1_9:                                 //  %while.body16.preheader
	sub x3, x4, x3
	addi x4, x0, 48
	add x5, x0, x3
	add x7, x0, x1
LBB1_10:                                //  %while.body16
                                        //  =>This Inner Loop Header: Depth=1
	addi x5, x5, -1
	sb x4, 0 ( x7 )
	addi x7, x7, 1
	bgtu x5, x0, LBB1_10
LBB1_11:                                //  %while.end19.loopexit
	add x1, x3, x1
LBB1_12:                                //  %while.end19
	sb x0, 0 ( x1 )
LBB1_13:                                //  %cleanup
	add x10, x0, x8
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	lw x1, 44 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 48
$cfi12:
	.cfi_adjust_cfa_offset -48
$cfi13:
	.cfi_def_cfa 2, 0
	ret
LBB1_14:                                //  %while.body.preheader
	add x3, x0, x0
LBB1_15:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	add x1, x3, x10
	lb x1, 0 ( x1 )
	add x4, x3, x8
	addi x3, x3, 1
	add x5, x3, x10
	sb x1, 0 ( x4 )
	lw x1, 32 ( x2 )
	nop
	bgtu x1, x5, LBB1_15
	j LBB1_7
$func_end1:
	.size	$ecvtbuf, ($func_end1)-($ecvtbuf)
	.cfi_endproc

	.globl	$_gcvt
	.type	$_gcvt,@function
$_gcvt:                                 //  @_gcvt
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi14:
	.cfi_def_cfa 2, 0
$cfi15:
	.cfi_val_offset 2, 0
	addi x2, x2, -64
$cfi16:
	.cfi_adjust_cfa_offset 64
	sw x1, 60 ( x2 )
$cfi17:
	.cfi_offset 1, -4
	sw x8, 52 ( x2 )                //  4-byte Folded Spill
	sw x16, 8 ( x2 )                //  4-byte Folded Spill
	sw x15, 4 ( x2 )                //  4-byte Folded Spill
	sw x14, 24 ( x2 )               //  4-byte Folded Spill
	sw x13, 20 ( x2 )               //  4-byte Folded Spill
	sw x10, 12 ( x2 )               //  4-byte Folded Spill
	add x3, x0, x12
	sw x3, 28 ( x2 )                //  4-byte Folded Spill
	add x8, x0, x11
	ori x28, x0, -2147483648 & 0xfff
	slli x28, x28, 20
	lui x1, -2147483648 >> 12 & 0xfffff
	srli x28, x28, 20
	add x10, x0, x0
	or x11, x1, x28
	add x12, x0, x8
	add x13, x0, x3
	call $__subdf3
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	sw x8, 16 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x0
	add x13, x0, x12
	add x8, x0, x12
	call $__ltdf2
	add x12, x0, x8
	bgt x12, x10, LBB2_2
LBB2_1:                                 //  %entry
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
LBB2_2:                                 //  %entry
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	bgt x12, x10, LBB2_4
LBB2_3:                                 //  %entry
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	nop
LBB2_4:                                 //  %entry
	sw x11, 36 ( x2 )               //  4-byte Folded Spill
	lw x8, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x0, x8
	add x13, x0, x12
	call $__nedf2
	lw x13, 24 ( x2 )               //  4-byte Folded Reload
	bgtu x10, x0, LBB2_6
LBB2_5:                                 //  %if.then2
	addi x1, x0, 48
	sb x1, 0 ( x13 )
	sb x0, 1 ( x13 )
	jalr x0, LBB2_49 ( x0 )
LBB2_6:                                 //  %if.else
	add x10, x0, x8
	add x8, x0, x13
	lui x1, -350469331 >> 12 & 0xfffff
	ori x28, x0, -350469331 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x12, x1, x28
	lui x1, 1058682594 >> 12 & 0xfffff
	ori x28, x0, 1058682594 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x13, x1, x28
	sw x10, 32 ( x2 )               //  4-byte Folded Spill
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ledf2
	ble x10, x0, LBB2_8
LBB2_7:                                 //  %lor.lhs.false
	lw x10, 20 ( x2 )               //  4-byte Folded Reload
	nop
	call $_mprec_log10
	add x1, x0, x10
	add x3, x0, x11
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x1
	add x13, x0, x3
	call $__gedf2
	bgt x0, x10, LBB2_9
LBB2_8:                                 //  %if.then5
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	addi x14, x1, -1
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x8
	lw x12, 32 ( x2 )               //  4-byte Folded Reload
	lw x13, 36 ( x2 )               //  4-byte Folded Reload
	lw x15, 4 ( x2 )                //  4-byte Folded Reload
	lw x16, 8 ( x2 )                //  4-byte Folded Reload
	nop
	call $print_e
	add x13, x0, x8
	jalr x0, LBB2_49 ( x0 )
LBB2_9:                                 //  %if.else7
	lui x13, 1072693248>>12 &0xfffff
	lw x10, 32 ( x2 )               //  4-byte Folded Reload
	lw x11, 36 ( x2 )               //  4-byte Folded Reload
	add x1, x0, x0
	add x12, x0, x1
	call $__ltdf2
	add x1, x0, x0
	ble x1, x10, LBB2_11
LBB2_10:
	addi x13, x0, 3
	jalr x0, LBB2_12 ( x0 )
LBB2_11:                                //  %if.else7
	addi x13, x0, 2
LBB2_12:                                //  %if.else7
	lw x14, 20 ( x2 )               //  4-byte Folded Reload
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	addi x15, x2, 48
	addi x16, x2, 44
	addi x17, x2, 40
	lw x11, 32 ( x2 )               //  4-byte Folded Reload
	nop
	call $_dtoa_r
	add x1, x0, x10
	lw x5, 48 ( x2 )
	lui x3, 9999 >> 12 & 0xfffff
	ori x28, x0, 9999 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x3, x3, x28
	beq x5, x3, LBB2_50
LBB2_13:                                //  %while.cond.preheader
	lbu x9, 0 ( x1 )
	nop
	bgtu x9, x0, LBB2_15
LBB2_14:
	add x13, x0, x8
	add x3, x0, x13
	add x4, x0, x1
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB2_17 ( x0 )
LBB2_15:                                //  %while.cond.preheader
	lw x12, 8 ( x2 )                //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	bgt x5, x0, LBB2_21
LBB2_16:
	add x3, x0, x13
	add x4, x0, x1
LBB2_17:                                //  %while.cond23.preheader
	bgt x11, x0, LBB2_19
LBB2_18:
	add x1, x0, x11
	jalr x0, LBB2_27 ( x0 )
LBB2_19:                                //  %while.cond23.preheader
	bgt x5, x0, LBB2_24
LBB2_20:
	add x1, x0, x11
	jalr x0, LBB2_27 ( x0 )
LBB2_21:
	slti x7, x0, 1
	add x3, x0, x13
LBB2_22:                                //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	sb x9, 0 ( x3 )
	addi x11, x11, -1
	addi x3, x3, 1
	addi x4, x1, 1
	lw x10, 48 ( x2 )
	nop
	addi x5, x10, -1
	sw x5, 48 ( x2 )
	lbu x9, 1 ( x1 )
	nop
	beqz x9, LBB2_17
LBB2_23:                                //  %while.body
                                        //    in Loop: Header=BB2_22 Depth=1
	add x1, x0, x4
	ble x10, x7, LBB2_17
	jalr x0, LBB2_22 ( x0 )
LBB2_24:
	addi x5, x0, 48
	slti x7, x0, 1
LBB2_25:                                //  %while.body30
                                        //  =>This Inner Loop Header: Depth=1
	sb x5, 0 ( x3 )
	lw x9, 48 ( x2 )
	nop
	addi x1, x9, -1
	sw x1, 48 ( x2 )
	addi x1, x11, -1
	addi x3, x3, 1
	slti x10, x11, 2
	bgtu x10, x0, LBB2_27
LBB2_26:                                //  %while.body30
                                        //    in Loop: Header=BB2_25 Depth=1
	add x11, x0, x1
	bgt x9, x7, LBB2_25
LBB2_27:                                //  %while.end34
	bgtu x12, x0, LBB2_29
LBB2_28:                                //  %lor.lhs.false36
	lbu x5, 0 ( x4 )
	nop
	beqz x5, LBB2_48
LBB2_29:                                //  %if.then39
	bne x3, x13, LBB2_31
LBB2_30:                                //  %if.then42
	addi x3, x0, 48
	sb x3, 0 ( x13 )
	addi x3, x13, 1
LBB2_31:                                //  %if.end44
	addi x5, x0, 46
	sb x5, 0 ( x3 )
	addi x3, x3, 1
	ble x1, x0, LBB2_33
LBB2_32:                                //  %if.end44
	lw x5, 48 ( x2 )
	nop
	bgt x0, x5, LBB2_38
LBB2_33:
	add x5, x0, x1
LBB2_34:                                //  %while.cond57.preheader
	slt x1, x0, x5
	bgt x5, x0, LBB2_36
LBB2_35:
	add x4, x0, x5
	jalr x0, LBB2_44 ( x0 )
LBB2_36:                                //  %while.cond57.preheader
	lb x10, 0 ( x4 )
	nop
	andi x7, x10, 255
	bgtu x7, x0, LBB2_41
LBB2_37:
	add x4, x0, x5
	jalr x0, LBB2_44 ( x0 )
LBB2_38:
	addi x7, x0, 48
LBB2_39:                                //  %while.body53
                                        //  =>This Inner Loop Header: Depth=1
	sb x7, 0 ( x3 )
	lw x9, 48 ( x2 )
	nop
	addi x5, x9, 1
	sw x5, 48 ( x2 )
	addi x3, x3, 1
	addi x5, x1, -1
	slti x1, x1, 2
	bgtu x1, x0, LBB2_34
LBB2_40:                                //  %while.body53
                                        //    in Loop: Header=BB2_39 Depth=1
	slti x9, x9, -1
	add x1, x0, x5
	beqz x9, LBB2_34
	jalr x0, LBB2_39 ( x0 )
LBB2_41:                                //  %while.body64.preheader
	addi x9, x4, 1
	slti x7, x0, 1
LBB2_42:                                //  %while.body64
                                        //  =>This Inner Loop Header: Depth=1
	sb x10, 0 ( x3 )
	slt x1, x7, x5
	addi x4, x5, -1
	addi x3, x3, 1
	slti x5, x5, 2
	bgtu x5, x0, LBB2_44
LBB2_43:                                //  %while.body64
                                        //    in Loop: Header=BB2_42 Depth=1
	addi x5, x9, 1
	lb x10, 0 ( x9 )
	nop
	andi x11, x10, 255
	add x9, x0, x5
	add x5, x0, x4
	bgtu x11, x0, LBB2_42
LBB2_44:                                //  %while.end68
	beqz x12, LBB2_48
LBB2_45:                                //  %while.end68
	andi x1, x1, 1
	beqz x1, LBB2_48
LBB2_46:                                //  %while.body74.preheader
	addi x1, x4, 1
	addi x4, x0, 48
	slti x5, x0, 1
LBB2_47:                                //  %while.body74
                                        //  =>This Inner Loop Header: Depth=1
	sb x4, 0 ( x3 )
	addi x3, x3, 1
	addi x1, x1, -1
	bgt x1, x5, LBB2_47
LBB2_48:                                //  %if.end79
	sb x0, 0 ( x3 )
LBB2_49:                                //  %cleanup86
	add x10, x0, x13
	lw x8, 52 ( x2 )                //  4-byte Folded Reload
	lw x1, 60 ( x2 )
$cfi18:
	.cfi_same_value 1
	addi x2, x2, 64
$cfi19:
	.cfi_adjust_cfa_offset -64
$cfi20:
	.cfi_def_cfa 2, 0
	ret
LBB2_50:                                //  %if.then15
	add x10, x0, x8
	add x11, x0, x1
	call $strcpy
	add x13, x0, x8
	jalr x0, LBB2_49 ( x0 )
$func_end2:
	.size	$_gcvt, ($func_end2)-($_gcvt)
	.cfi_endproc

	.type	$print_e,@function
$print_e:                               //  @print_e
	.cfi_startproc
  .codasip_retval_regs
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi21:
	.cfi_def_cfa 2, 0
$cfi22:
	.cfi_val_offset 2, 0
	addi x2, x2, -40
$cfi23:
	.cfi_adjust_cfa_offset 40
	sw x1, 36 ( x2 )
$cfi24:
	.cfi_offset 1, -4
	sw x8, 28 ( x2 )                //  4-byte Folded Spill
	sw x16, 4 ( x2 )                //  4-byte Folded Spill
	sw x15, 8 ( x2 )                //  4-byte Folded Spill
	sw x11, 12 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x14
	addi x14, x8, 1
	addi x1, x0, 2
	addi x15, x2, 16
	addi x16, x2, 24
	addi x17, x2, 20
	add x11, x0, x12
	add x12, x0, x13
	add x13, x0, x1
	call $_dtoa_r
	add x1, x0, x10
	ori x28, x0, 9999 & 0xfff
	lw x3, 16 ( x2 )
	slli x28, x28, 20
	lui x4, 9999 >> 12 & 0xfffff
	srli x28, x28, 20
	or x4, x4, x28
	bne x3, x4, LBB3_2
LBB3_1:                                 //  %if.then
	lw x10, 12 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $strcpy
	jalr x0, LBB3_23 ( x0 )
LBB3_2:                                 //  %if.end
	lb x3, 0 ( x1 )
	lw x4, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	or x4, x8, x4
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	nop
	sb x3, 0 ( x5 )
	add x9, x0, x8
	bgtu x4, x0, LBB3_4
LBB3_3:
	addi x8, x5, 1
	jalr x0, LBB3_5 ( x0 )
LBB3_4:                                 //  %if.then4
	addi x3, x0, 46
	sb x3, 1 ( x5 )
	addi x8, x5, 2
LBB3_5:                                 //  %while.cond.preheader
	lw x7, 8 ( x2 )                 //  4-byte Folded Reload
	ble x9, x0, LBB3_10
LBB3_6:                                 //  %while.cond.preheader
	lb x3, 1 ( x1 )
	nop
	andi x4, x3, 255
	beqz x4, LBB3_10
LBB3_7:                                 //  %while.body.preheader
	addi x1, x1, 2
LBB3_8:                                 //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	slti x4, x9, 2
	sb x3, 0 ( x8 )
	addi x9, x9, -1
	addi x8, x8, 1
	bgtu x4, x0, LBB3_10
LBB3_9:                                 //  %while.body
                                        //    in Loop: Header=BB3_8 Depth=1
	addi x4, x1, 1
	lb x3, 0 ( x1 )
	nop
	andi x5, x3, 255
	add x1, x0, x4
	bgtu x5, x0, LBB3_8
LBB3_10:                                //  %while.end
	xori x1, x7, 71
	beqz x1, LBB3_24
LBB3_11:                                //  %while.end
	xori x1, x7, 103
	bgtu x1, x0, LBB3_13
LBB3_12:
	addi x7, x0, 101
	jalr x0, LBB3_16 ( x0 )
LBB3_13:                                //  %while.cond21.preheader
	ble x9, x0, LBB3_16
LBB3_14:                                //  %while.body24.preheader
	addi x1, x9, 1
	addi x3, x0, 48
	slti x4, x0, 1
LBB3_15:                                //  %while.body24
                                        //  =>This Inner Loop Header: Depth=1
	addi x1, x1, -1
	sb x3, 0 ( x8 )
	addi x8, x8, 1
	bgt x1, x4, LBB3_15
LBB3_16:                                //  %if.end29
	sb x7, 0 ( x8 )
	lw x1, 16 ( x2 )
	nop
	addi x3, x1, -1
	sw x3, 16 ( x2 )
	bgt x1, x0, LBB3_18
LBB3_17:                                //  %if.then34
	addi x1, x0, 45
	sb x1, 1 ( x8 )
	lw x1, 16 ( x2 )
	nop
	sub x10, x0, x1
	sw x10, 16 ( x2 )
	jalr x0, LBB3_19 ( x0 )
LBB3_18:                                //  %if.else36
	addi x1, x0, 43
	sb x1, 1 ( x8 )
	lw x10, 16 ( x2 )
	nop
LBB3_19:                                //  %if.end38
	slti x1, x10, 100
	beqz x1, LBB3_21
LBB3_20:
	addi x8, x8, 2
	jalr x0, LBB3_22 ( x0 )
LBB3_21:                                //  %if.then41
	addi x11, x0, 100
	call $__udivsi3
	addi x1, x10, 48
	sb x1, 2 ( x8 )
	addi x11, x0, -100
	call $__mulsi3
	lw x1, 16 ( x2 )
	addi x8, x8, 3
	add x10, x10, x1
	sw x10, 16 ( x2 )
LBB3_22:                                //  %if.end47
	addi x11, x0, 10
	call $__divsi3
	addi x1, x10, 48
	sb x1, 0 ( x8 )
	addi x11, x0, -10
	call $__mulsi3
	lw x1, 16 ( x2 )
	nop
	add x1, x10, x1
	addi x3, x1, 48
	sw x1, 16 ( x2 )
	sb x3, 1 ( x8 )
	sb x0, 2 ( x8 )
LBB3_23:                                //  %cleanup
	lw x8, 28 ( x2 )                //  4-byte Folded Reload
	lw x1, 36 ( x2 )
$cfi25:
	.cfi_same_value 1
	addi x2, x2, 40
$cfi26:
	.cfi_adjust_cfa_offset -40
$cfi27:
	.cfi_def_cfa 2, 0
	ret
LBB3_24:                                //  %if.then19
	addi x7, x0, 69
	jalr x0, LBB3_16 ( x0 )
$func_end3:
	.size	$print_e, ($func_end3)-($print_e)
	.cfi_endproc

	.globl	$_dcvt
	.type	$_dcvt,@function
$_dcvt:                                 //  @_dcvt
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi28:
	.cfi_def_cfa 2, 0
$cfi29:
	.cfi_val_offset 2, 0
	addi x2, x2, -56
$cfi30:
	.cfi_adjust_cfa_offset 56
	sw x1, 52 ( x2 )
$cfi31:
	.cfi_offset 1, -4
	sw x8, 44 ( x2 )                //  4-byte Folded Spill
	sw x17, 12 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x14
	sw x13, 24 ( x2 )               //  4-byte Folded Spill
	sw x12, 20 ( x2 )               //  4-byte Folded Spill
	sw x11, 28 ( x2 )               //  4-byte Folded Spill
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	sw x16, 8 ( x2 )                //  4-byte Folded Spill
	addi x10, x16, -69
	addi x1, x0, 34
	bgtu x10, x1, LBB4_36
LBB4_1:                                 //  %entry
	addi x11, x0, 4
	call $__mulsi3
	lui x1, JTI4_0 >> 12 & 0xfffff
	ori x28, x0, JTI4_0 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB4_2:                                 //  %sw.bb
	addi x13, x0, 3
	addi x15, x2, 40
	addi x16, x2, 36
	addi x17, x2, 32
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	lw x12, 24 ( x2 )               //  4-byte Folded Reload
	add x14, x0, x8
	call $_dtoa_r
	add x1, x0, x10
	ori x28, x0, 9999 & 0xfff
	lw x5, 40 ( x2 )
	slli x28, x28, 20
	lui x3, 9999 >> 12 & 0xfffff
	srli x28, x28, 20
	or x3, x3, x28
	beq x5, x3, LBB4_28
LBB4_3:                                 //  %while.cond.preheader.i
	bgt x5, x0, LBB4_24
LBB4_4:
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	add x4, x0, x1
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
LBB4_5:                                 //  %while.cond5.preheader.i
	ble x5, x0, LBB4_8
LBB4_6:
	addi x5, x0, 48
	slti x7, x0, 1
LBB4_7:                                 //  %while.body8.i
                                        //  =>This Inner Loop Header: Depth=1
	sb x5, 0 ( x3 )
	lw x9, 40 ( x2 )
	nop
	addi x10, x9, -1
	sw x10, 40 ( x2 )
	addi x3, x3, 1
	bgt x9, x7, LBB4_7
LBB4_8:                                 //  %while.end11.i
	or x5, x8, x11
	bgtu x5, x0, LBB4_10
LBB4_9:                                 //  %lor.lhs.false.i
	lbu x5, 0 ( x4 )
	nop
	beqz x5, LBB4_23
LBB4_10:                                //  %if.then15.i
	bne x4, x1, LBB4_12
LBB4_11:                                //  %if.then18.i
	addi x1, x0, 48
	sb x1, 0 ( x3 )
	addi x3, x3, 1
LBB4_12:                                //  %if.end20.i
	addi x1, x0, 46
	sb x1, 0 ( x3 )
	addi x3, x3, 1
	ble x8, x0, LBB4_14
LBB4_13:                                //  %if.end20.i
	lw x1, 40 ( x2 )
	nop
	bgt x0, x1, LBB4_29
LBB4_14:
	add x1, x0, x8
LBB4_15:                                //  %while.cond33.preheader.i
	ble x1, x0, LBB4_20
LBB4_16:                                //  %while.cond33.preheader.i
	lb x5, 0 ( x4 )
	nop
	andi x7, x5, 255
	beqz x7, LBB4_20
LBB4_17:                                //  %while.body40.i.preheader
	addi x4, x4, 1
LBB4_18:                                //  %while.body40.i
                                        //  =>This Inner Loop Header: Depth=1
	slti x7, x1, 2
	sb x5, 0 ( x3 )
	addi x1, x1, -1
	addi x3, x3, 1
	bgtu x7, x0, LBB4_20
LBB4_19:                                //  %while.body40.i
                                        //    in Loop: Header=BB4_18 Depth=1
	addi x7, x4, 1
	lb x5, 0 ( x4 )
	nop
	andi x9, x5, 255
	add x4, x0, x7
	bgtu x9, x0, LBB4_18
LBB4_20:                                //  %while.cond45.preheader.i
	ble x1, x0, LBB4_23
LBB4_21:                                //  %while.body48.i.preheader
	addi x1, x1, 1
	addi x4, x0, 48
	slti x5, x0, 1
LBB4_22:                                //  %while.body48.i
                                        //  =>This Inner Loop Header: Depth=1
	addi x1, x1, -1
	sb x4, 0 ( x3 )
	addi x3, x3, 1
	bgt x1, x5, LBB4_22
LBB4_23:                                //  %if.end52.i
	sb x0, 0 ( x3 )
	jalr x0, LBB4_36 ( x0 )
LBB4_24:                                //  %while.cond.preheader.i
	lb x7, 0 ( x1 )
	nop
	andi x9, x7, 255
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	add x4, x0, x1
	lw x11, 12 ( x2 )               //  4-byte Folded Reload
	beqz x9, LBB4_5
LBB4_25:
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	add x9, x0, x1
LBB4_26:                                //  %while.body.i
                                        //  =>This Inner Loop Header: Depth=1
	sb x7, 0 ( x3 )
	addi x3, x3, 1
	addi x4, x9, 1
	lw x7, 40 ( x2 )
	nop
	addi x5, x7, -1
	sw x5, 40 ( x2 )
	slti x7, x7, 2
	bgtu x7, x0, LBB4_5
LBB4_27:                                //  %while.body.i
                                        //    in Loop: Header=BB4_26 Depth=1
	lb x7, 1 ( x9 )
	nop
	andi x10, x7, 255
	add x9, x0, x4
	beqz x10, LBB4_5
	jalr x0, LBB4_26 ( x0 )
LBB4_28:                                //  %if.then.i
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	add x11, x0, x1
	call $strcpy
	jalr x0, LBB4_36 ( x0 )
LBB4_29:
	addi x5, x0, 48
LBB4_30:                                //  %while.body29.i
                                        //  =>This Inner Loop Header: Depth=1
	sb x5, 0 ( x3 )
	lw x7, 40 ( x2 )
	nop
	addi x1, x7, 1
	sw x1, 40 ( x2 )
	addi x3, x3, 1
	addi x1, x8, -1
	slti x9, x8, 2
	bgtu x9, x0, LBB4_15
LBB4_31:                                //  %while.body29.i
                                        //    in Loop: Header=BB4_30 Depth=1
	slti x7, x7, -1
	add x8, x0, x1
	beqz x7, LBB4_15
	jalr x0, LBB4_30 ( x0 )
LBB4_32:                                //  %sw.bb2
	add x1, x0, x0
	bne x8, x1, LBB4_34
LBB4_33:
	slti x8, x0, 1
LBB4_34:                                //  %sw.bb2
	lw x16, 12 ( x2 )               //  4-byte Folded Reload
	lw x12, 24 ( x2 )               //  4-byte Folded Reload
	lw x15, 8 ( x2 )                //  4-byte Folded Reload
	lw x11, 20 ( x2 )               //  4-byte Folded Reload
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	add x13, x0, x8
	lw x14, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $_gcvt
	jalr x0, LBB4_36 ( x0 )
LBB4_35:                                //  %sw.bb5
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 28 ( x2 )               //  4-byte Folded Reload
	lw x12, 20 ( x2 )               //  4-byte Folded Reload
	lw x13, 24 ( x2 )               //  4-byte Folded Reload
	add x14, x0, x8
	lw x15, 8 ( x2 )                //  4-byte Folded Reload
	lw x16, 12 ( x2 )               //  4-byte Folded Reload
	nop
	call $print_e
LBB4_36:                                //  %sw.epilog
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
	lw x8, 44 ( x2 )                //  4-byte Folded Reload
	lw x1, 52 ( x2 )
$cfi32:
	.cfi_same_value 1
	addi x2, x2, 56
$cfi33:
	.cfi_adjust_cfa_offset -56
$cfi34:
	.cfi_def_cfa 2, 0
	ret
$func_end4:
	.size	$_dcvt, ($func_end4)-($_dcvt)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI4_0:
	.long	LBB4_35
	.long	LBB4_2
	.long	LBB4_32
	.long	LBB4_36
	.long	LBB4_36
	.long	LBB4_36
	.long	LBB4_36
	.long	LBB4_36
	.long	LBB4_36
	.long	LBB4_36
	.long	LBB4_36
	.long	LBB4_36
	.long	LBB4_36
	.long	LBB4_36
	.long	LBB4_36
	.long	LBB4_36
	.long	LBB4_36
	.long	LBB4_36
	.long	LBB4_36
	.long	LBB4_36
	.long	LBB4_36
	.long	LBB4_36
	.long	LBB4_36
	.long	LBB4_36
	.long	LBB4_36
	.long	LBB4_36
	.long	LBB4_36
	.long	LBB4_36
	.long	LBB4_36
	.long	LBB4_36
	.long	LBB4_36
	.long	LBB4_36
	.long	LBB4_35
	.long	LBB4_2
	.long	LBB4_32

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
