	.text
	.file	"svfiprintf.bc"
	.globl	$__ssprint_r
	.type	$__ssprint_r,@function
$__ssprint_r:                           //  @__ssprint_r
	.cfi_sections .debug_frame
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi0:
	.cfi_def_cfa 2, 0
$cfi1:
	.cfi_val_offset 2, 0
	addi x2, x2, -48
$cfi2:
	.cfi_adjust_cfa_offset 48
	sw x1, 44 ( x2 )
$cfi3:
	.cfi_offset 1, -4
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	sw x10, 4 ( x2 )                //  4-byte Folded Spill
	lw x1, 8 ( x12 )
	nop
	bgtu x1, x0, LBB0_2
LBB0_1:
	add x10, x0, x0
	jalr x0, LBB0_20 ( x0 )
LBB0_2:                                 //  %do.body.preheader
	lw x8, 0 ( x12 )
	sw x11, 24 ( x2 )               //  4-byte Folded Spill
	sw x12, 20 ( x2 )               //  4-byte Folded Spill
LBB0_3:                                 //  %while.body
                                        //  =>This Inner Loop Header: Depth=1
	lw x4, 4 ( x8 )
	addi x8, x8, 8
	beqz x4, LBB0_3
LBB0_4:                                 //  %while.end
                                        //    in Loop: Header=BB0_3 Depth=1
	lw x1, 8 ( x11 )
	lw x5, -8 ( x8 )
	sw x4, 32 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x4, LBB0_12
LBB0_5:                                 //  %land.lhs.true
                                        //    in Loop: Header=BB0_3 Depth=1
	lhu x7, 12 ( x11 )
	nop
	andi x3, x7, 1152
	beqz x3, LBB0_12
LBB0_6:                                 //  %if.then3
                                        //    in Loop: Header=BB0_3 Depth=1
	sw x7, 16 ( x2 )                //  4-byte Folded Spill
	sw x5, 8 ( x2 )                 //  4-byte Folded Spill
	lw x10, 20 ( x11 )
	addi x11, x0, 3
	call $__mulsi3
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 16 ( x1 )
	lw x3, 0 ( x1 )
	slt x1, x10, x0
	add x1, x1, x10
	srai x1, x1, 1
	sub x4, x3, x11
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x3, x4, x3
	addi x3, x3, 1
	bgtu x3, x1, LBB0_8
LBB0_7:                                 //  %if.then3
                                        //    in Loop: Header=BB0_3 Depth=1
	add x3, x0, x1
LBB0_8:                                 //  %if.then3
                                        //    in Loop: Header=BB0_3 Depth=1
	sw x4, 28 ( x2 )                //  4-byte Folded Spill
	lw x1, 16 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x1, 1024
	sw x3, 12 ( x2 )                //  4-byte Folded Spill
	beqz x1, LBB0_16
LBB0_9:                                 //  %if.then16
                                        //    in Loop: Header=BB0_3 Depth=1
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x3
	call $_malloc_r
	beqz x10, LBB0_18
LBB0_10:                                //  %if.end19
                                        //    in Loop: Header=BB0_3 Depth=1
	lw x1, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lw x11, 16 ( x1 )
	sw x10, 16 ( x2 )               //  4-byte Folded Spill
	lw x12, 28 ( x2 )               //  4-byte Folded Reload
	nop
	call $memcpy
	lw x4, 28 ( x2 )                //  4-byte Folded Reload
	lw x10, 16 ( x2 )               //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	ori x28, x0, 64383 & 0xfff
	lhu x1, 12 ( x11 )
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, 64383 >> 12 & 0xfffff
	or x3, x3, x28
	and x1, x3, x1
	ori x1, x1, 128
	sh x1, 12 ( x11 )
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
LBB0_11:                                //  %cleanup
                                        //    in Loop: Header=BB0_3 Depth=1
	add x1, x4, x10
	sub x3, x5, x4
	sw x10, 16 ( x11 )
	sw x1, 0 ( x11 )
	sw x5, 20 ( x11 )
	sw x3, 8 ( x11 )
	lw x4, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x0, x4
	lw x5, 8 ( x2 )                 //  4-byte Folded Reload
LBB0_12:                                //  %if.end46
                                        //    in Loop: Header=BB0_3 Depth=1
	add x3, x0, x4
	bgtu x1, x4, LBB0_14
LBB0_13:                                //  %if.end46
                                        //    in Loop: Header=BB0_3 Depth=1
	add x3, x0, x1
LBB0_14:                                //  %if.end46
                                        //    in Loop: Header=BB0_3 Depth=1
	lw x10, 0 ( x11 )
	add x11, x0, x5
	add x12, x0, x3
	sw x12, 28 ( x2 )               //  4-byte Folded Spill
	call $memmove
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	nop
	lw x1, 8 ( x11 )
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	sw x1, 8 ( x11 )
	lw x1, 0 ( x11 )
	nop
	add x1, x3, x1
	sw x1, 0 ( x11 )
	lw x12, 20 ( x2 )               //  4-byte Folded Reload
	nop
	lw x1, 8 ( x12 )
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x1, x3
	sw x1, 8 ( x12 )
	bgtu x1, x0, LBB0_3
LBB0_15:
	add x10, x0, x0
	jalr x0, LBB0_19 ( x0 )
LBB0_16:                                //  %if.else
                                        //    in Loop: Header=BB0_3 Depth=1
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	add x12, x0, x3
	call $_realloc_r
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	lw x11, 24 ( x2 )               //  4-byte Folded Reload
	lw x4, 28 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB0_11
LBB0_17:                                //  %if.then32
	lw x11, 16 ( x11 )
	lw x10, 4 ( x2 )                //  4-byte Folded Reload
	nop
	call $_free_r
LBB0_18:                                //  %err
	addi x1, x0, 12
	lw x3, 4 ( x2 )                 //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	lh x1, 12 ( x3 )
	nop
	ori x1, x1, 64
	sh x1, 12 ( x3 )
	not x10, x0
	lw x12, 20 ( x2 )               //  4-byte Folded Reload
	nop
LBB0_19:                                //  %cleanup71.sink.split.sink.split
	sw x0, 8 ( x12 )
LBB0_20:                                //  %cleanup71
	sw x0, 4 ( x12 )
	lw x8, 36 ( x2 )                //  4-byte Folded Reload
	lw x1, 44 ( x2 )
$cfi4:
	.cfi_same_value 1
	addi x2, x2, 48
$cfi5:
	.cfi_adjust_cfa_offset -48
$cfi6:
	.cfi_def_cfa 2, 0
	ret
$func_end0:
	.size	$__ssprint_r, ($func_end0)-($__ssprint_r)
	.cfi_endproc

	.globl	$_svfiprintf_r
	.type	$_svfiprintf_r,@function
$_svfiprintf_r:                         //  @_svfiprintf_r
	.cfi_startproc
  .codasip_retval_regs 10
  .cfi_return_column 1
//  BB#0:                               //  %entry
$cfi7:
	.cfi_def_cfa 2, 0
$cfi8:
	.cfi_val_offset 2, 0
	addi x2, x2, -208
$cfi9:
	.cfi_adjust_cfa_offset 208
	sw x1, 204 ( x2 )
$cfi10:
	.cfi_offset 1, -4
	sw x8, 196 ( x2 )               //  4-byte Folded Spill
	add x8, x0, x11
	lbu x1, 12 ( x8 )
	sw x13, 192 ( x2 )
	andi x1, x1, 128
	sw x10, 52 ( x2 )               //  4-byte Folded Spill
	beqz x1, LBB1_5
LBB1_1:                                 //  %land.lhs.true
	lw x1, 16 ( x8 )
	nop
	bgtu x1, x0, LBB1_5
LBB1_2:                                 //  %if.then
	sw x12, 64 ( x2 )               //  4-byte Folded Spill
	addi x11, x0, 64
	call $_malloc_r
	sw x10, 0 ( x8 )
	sw x10, 16 ( x8 )
	bgtu x10, x0, LBB1_4
LBB1_3:                                 //  %if.then6
	addi x1, x0, 12
	lw x3, 52 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x3 )
	not x10, x0
	jalr x0, LBB1_209 ( x0 )
LBB1_4:                                 //  %if.end
	addi x1, x0, 64
	sw x1, 20 ( x8 )
	lw x12, 64 ( x2 )               //  4-byte Folded Reload
LBB1_5:                                 //  %if.end8
	sw x8, 56 ( x2 )                //  4-byte Folded Spill
	addi x1, x2, 112
	addi x9, x2, 176
	add x3, x0, x0
	addi x4, x2, 72
	sw x1, 176 ( x2 )
	sw x0, 8 ( x9 )
	addi x4, x4, 40
	sw x4, 12 ( x2 )                //  4-byte Folded Spill
	sw x0, 180 ( x2 )
	sw x3, 28 ( x2 )                //  4-byte Folded Spill
	sw x3, 32 ( x2 )                //  4-byte Folded Spill
LBB1_6:                                 //  %for.cond.outer
                                        //  =>This Loop Header: Depth=1
                                        //      Child Loop BB1_7 Depth 2
                                        //        Child Loop BB1_8 Depth 3
                                        //        Child Loop BB1_19 Depth 3
                                        //          Child Loop BB1_20 Depth 4
                                        //            Child Loop BB1_42 Depth 5
                                        //            Child Loop BB1_33 Depth 5
                                        //      Child Loop BB1_121 Depth 2
                                        //      Child Loop BB1_131 Depth 2
                                        //      Child Loop BB1_123 Depth 2
                                        //      Child Loop BB1_152 Depth 2
                                        //      Child Loop BB1_170 Depth 2
                                        //      Child Loop BB1_179 Depth 2
                                        //      Child Loop BB1_192 Depth 2
	add x4, x0, x1
LBB1_7:                                 //  %for.cond
                                        //    Parent Loop BB1_6 Depth=1
                                        //  =>  This Loop Header: Depth=2
                                        //        Child Loop BB1_8 Depth 3
                                        //        Child Loop BB1_19 Depth 3
                                        //          Child Loop BB1_20 Depth 4
                                        //            Child Loop BB1_42 Depth 5
                                        //            Child Loop BB1_33 Depth 5
	add x8, x0, x12
LBB1_8:                                 //  %while.cond
                                        //    Parent Loop BB1_6 Depth=1
                                        //      Parent Loop BB1_7 Depth=2
                                        //  =>    This Inner Loop Header: Depth=3
	lbu x1, 0 ( x8 )
	nop
	beqz x1, LBB1_11
LBB1_9:                                 //  %while.cond
                                        //    in Loop: Header=BB1_8 Depth=3
	xori x3, x1, 37
	beqz x3, LBB1_11
LBB1_10:                                //  %while.body
                                        //    in Loop: Header=BB1_8 Depth=3
	addi x8, x8, 1
	jalr x0, LBB1_8 ( x0 )
LBB1_11:                                //  %while.end
                                        //    in Loop: Header=BB1_7 Depth=2
	sub x5, x8, x12
	bgtu x5, x0, LBB1_13
LBB1_12:                                //    in Loop: Header=BB1_7 Depth=2
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_17 ( x0 )
LBB1_13:                                //  %if.then16
                                        //    in Loop: Header=BB1_7 Depth=2
	sw x5, 4 ( x4 )
	sw x12, 0 ( x4 )
	lw x1, 8 ( x9 )
	nop
	add x1, x5, x1
	sw x1, 8 ( x9 )
	lw x1, 180 ( x2 )
	nop
	addi x3, x1, 1
	slti x1, x1, 7
	sw x3, 180 ( x2 )
	beqz x1, LBB1_15
LBB1_14:                                //    in Loop: Header=BB1_7 Depth=2
	addi x4, x4, 8
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_16 ( x0 )
LBB1_15:                                //  %if.then21
                                        //    in Loop: Header=BB1_7 Depth=2
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	add x12, x0, x9
	sw x5, 64 ( x2 )                //  4-byte Folded Spill
	call $__ssprint_r
	lw x5, 64 ( x2 )                //  4-byte Folded Reload
	addi x1, x2, 112
	add x4, x0, x1
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB1_206
LBB1_16:                                //  %if.end27
                                        //    in Loop: Header=BB1_7 Depth=2
	sw x4, 16 ( x2 )                //  4-byte Folded Spill
	add x1, x1, x5
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	lb x1, 0 ( x8 )
	nop
LBB1_17:                                //  %if.end29
                                        //    in Loop: Header=BB1_7 Depth=2
	andi x1, x1, 255
	beqz x1, LBB1_203
LBB1_18:                                //  %if.end34
                                        //    in Loop: Header=BB1_7 Depth=2
	addi x1, x8, 1
	sb x0, 191 ( x2 )
	add x3, x0, x0
	sw x3, 48 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x3
	not x4, x0
	sw x4, 36 ( x2 )                //  4-byte Folded Spill
	sw x3, 44 ( x2 )                //  4-byte Folded Spill
LBB1_19:                                //  %rflag
                                        //    Parent Loop BB1_6 Depth=1
                                        //      Parent Loop BB1_7 Depth=2
                                        //  =>    This Loop Header: Depth=3
                                        //          Child Loop BB1_20 Depth 4
                                        //            Child Loop BB1_42 Depth 5
                                        //            Child Loop BB1_33 Depth 5
	addi x8, x1, 1
	lb x4, 0 ( x1 )
LBB1_20:                                //  %reswitch
                                        //    Parent Loop BB1_6 Depth=1
                                        //      Parent Loop BB1_7 Depth=2
                                        //        Parent Loop BB1_19 Depth=3
                                        //  =>      This Loop Header: Depth=4
                                        //            Child Loop BB1_42 Depth 5
                                        //            Child Loop BB1_33 Depth 5
	sw x10, 60 ( x2 )               //  4-byte Folded Spill
	sw x8, 64 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 120
	bgtu x4, x1, LBB1_142
LBB1_21:                                //  %reswitch
                                        //    in Loop: Header=BB1_20 Depth=4
	add x10, x0, x4
	addi x11, x0, 4
	add x8, x0, x4
	call $__mulsi3
	add x4, x0, x8
	ori x28, x0, JTI1_0 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, JTI1_0 >> 12 & 0xfffff
	or x1, x1, x28
	add x1, x1, x10
	lw x1, 0 ( x1 )
	nop
	jr x1
LBB1_22:                                //  %sw.bb
                                        //    in Loop: Header=BB1_19 Depth=3
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	andi x3, x1, 255
	lw x4, 64 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x0, x4
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	bgtu x3, x0, LBB1_19
LBB1_23:                                //  %if.then39
                                        //    in Loop: Header=BB1_19 Depth=3
	addi x1, x0, 32
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	sb x1, 191 ( x2 )
	add x1, x0, x4
	jalr x0, LBB1_19 ( x0 )
LBB1_24:                                //  %sw.bb41
                                        //    in Loop: Header=BB1_19 Depth=3
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 1
LBB1_25:                                //  %rflag
                                        //    in Loop: Header=BB1_19 Depth=3
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
LBB1_26:                                //  %rflag
                                        //    in Loop: Header=BB1_19 Depth=3
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_19 ( x0 )
LBB1_27:                                //  %sw.bb42
                                        //    in Loop: Header=BB1_19 Depth=3
	lw x1, 192 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 192 ( x2 )
	lw x10, 0 ( x1 )
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x0, x3
	bgez x10, LBB1_19
LBB1_28:                                //  %if.end46
                                        //    in Loop: Header=BB1_19 Depth=3
	sub x10, x0, x10
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 4
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x3
	jalr x0, LBB1_19 ( x0 )
LBB1_29:                                //  %sw.bb47.loopexit
                                        //    in Loop: Header=BB1_19 Depth=3
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 4
	jalr x0, LBB1_25 ( x0 )
LBB1_30:                                //  %sw.bb49
                                        //    in Loop: Header=BB1_19 Depth=3
	addi x1, x0, 43
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	sb x1, 191 ( x2 )
	jalr x0, LBB1_26 ( x0 )
LBB1_31:                                //  %sw.bb50
                                        //    in Loop: Header=BB1_20 Depth=4
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
	nop
	lb x4, 0 ( x8 )
	addi x8, x8, 1
	xori x1, x4, 42
	beqz x1, LBB1_37
LBB1_32:                                //  %while.cond62.preheader
                                        //    in Loop: Header=BB1_20 Depth=4
	addi x3, x4, -48
	add x10, x0, x0
	addi x1, x0, 9
	bgtu x3, x1, LBB1_34
LBB1_33:                                //  %while.body66
                                        //    Parent Loop BB1_6 Depth=1
                                        //      Parent Loop BB1_7 Depth=2
                                        //        Parent Loop BB1_19 Depth=3
                                        //          Parent Loop BB1_20 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	sw x3, 64 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 10
	call $__mulsi3
	lb x4, 0 ( x8 )
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	add x10, x1, x10
	addi x8, x8, 1
	addi x3, x4, -48
	sltiu x1, x3, 10
	bgtu x1, x0, LBB1_33
LBB1_34:                                //  %while.end71
                                        //    in Loop: Header=BB1_20 Depth=4
	not x1, x0
	bgt x10, x1, LBB1_36
LBB1_35:                                //  %while.end71
                                        //    in Loop: Header=BB1_20 Depth=4
	add x10, x0, x1
LBB1_36:                                //  %while.end71
                                        //    in Loop: Header=BB1_20 Depth=4
	sw x10, 36 ( x2 )               //  4-byte Folded Spill
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_20 ( x0 )
LBB1_37:                                //  %if.then55
                                        //    in Loop: Header=BB1_19 Depth=3
	lw x3, 192 ( x2 )
	not x1, x0
	addi x4, x3, 4
	sw x4, 192 ( x2 )
	lw x3, 0 ( x3 )
	nop
	sw x3, 36 ( x2 )                //  4-byte Folded Spill
	bgt x3, x1, LBB1_39
LBB1_38:                                //  %if.then55
                                        //    in Loop: Header=BB1_19 Depth=3
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
LBB1_39:                                //  %if.then55
                                        //    in Loop: Header=BB1_19 Depth=3
	add x1, x0, x8
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_19 ( x0 )
LBB1_40:                                //  %sw.bb74
                                        //    in Loop: Header=BB1_19 Depth=3
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 128
	jalr x0, LBB1_25 ( x0 )
LBB1_41:                                //  %do.body.preheader
                                        //    in Loop: Header=BB1_20 Depth=4
	add x10, x0, x0
	add x3, x0, x4
	lw x8, 64 ( x2 )                //  4-byte Folded Reload
LBB1_42:                                //  %do.body
                                        //    Parent Loop BB1_6 Depth=1
                                        //      Parent Loop BB1_7 Depth=2
                                        //        Parent Loop BB1_19 Depth=3
                                        //          Parent Loop BB1_20 Depth=4
                                        //  =>        This Inner Loop Header: Depth=5
	sw x3, 64 ( x2 )                //  4-byte Folded Spill
	addi x11, x0, 10
	call $__mulsi3
	lb x4, 0 ( x8 )
	lw x1, 64 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x10, x1
	addi x8, x8, 1
	addi x10, x1, -48
	addi x1, x4, -48
	sltiu x1, x1, 10
	add x3, x0, x4
	bgtu x1, x0, LBB1_42
	jalr x0, LBB1_20 ( x0 )
LBB1_43:                                //  %sw.bb85
                                        //    in Loop: Header=BB1_19 Depth=3
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 64
	jalr x0, LBB1_25 ( x0 )
LBB1_44:                                //  %sw.bb87
                                        //    in Loop: Header=BB1_19 Depth=3
	lw x3, 64 ( x2 )                //  4-byte Folded Reload
	nop
	lbu x1, 0 ( x3 )
	nop
	xori x1, x1, 108
	bgtu x1, x0, LBB1_46
LBB1_45:                                //  %if.then91
                                        //    in Loop: Header=BB1_19 Depth=3
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 32
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	addi x1, x3, 1
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_19 ( x0 )
LBB1_46:                                //  %if.else
                                        //    in Loop: Header=BB1_19 Depth=3
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 16
	sw x1, 48 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x3
	lw x10, 60 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_19 ( x0 )
LBB1_47:                                //  %sw.bb96
                                        //    in Loop: Header=BB1_19 Depth=3
	lw x1, 48 ( x2 )                //  4-byte Folded Reload
	nop
	ori x1, x1, 32
	jalr x0, LBB1_25 ( x0 )
LBB1_48:                                //  %sw.bb98
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x1, 192 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 192 ( x2 )
	lw x1, 0 ( x1 )
	sb x0, 191 ( x2 )
	sb x1, 72 ( x2 )
	jalr x0, LBB1_143 ( x0 )
LBB1_49:                                //  %sw.bb102
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	nop
	ori x8, x8, 16
	addi x9, x2, 176
	jalr x0, LBB1_51 ( x0 )
LBB1_50:                                //  %sw.bb104.loopexit
                                        //    in Loop: Header=BB1_6 Depth=1
	addi x9, x2, 176
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	nop
LBB1_51:                                //  %sw.bb104
                                        //    in Loop: Header=BB1_6 Depth=1
	andi x1, x8, 32
	beqz x1, LBB1_53
LBB1_52:                                //  %cond.true107
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x1, 192 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 192 ( x2 )
	lw x10, 0 ( x1 )
	addi x1, x3, 4
	sw x1, 192 ( x2 )
	lw x11, 0 ( x3 )
	lw x5, 36 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_58 ( x0 )
LBB1_53:                                //  %cond.false109
                                        //    in Loop: Header=BB1_6 Depth=1
	andi x1, x8, 16
	beqz x1, LBB1_55
LBB1_54:                                //  %cond.true112
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x1, 192 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 192 ( x2 )
	lw x10, 0 ( x1 )
	jalr x0, LBB1_57 ( x0 )
LBB1_55:                                //  %cond.false114
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x1, 192 ( x2 )
	andi x3, x8, 64
	addi x4, x1, 4
	sw x4, 192 ( x2 )
	lw x10, 0 ( x1 )
	beqz x3, LBB1_57
LBB1_56:                                //  %cond.true117
                                        //    in Loop: Header=BB1_6 Depth=1
	slli x1, x10, 16
	srai x10, x1, 16
LBB1_57:                                //  %cond.end134
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x5, 36 ( x2 )                //  4-byte Folded Reload
	srai x11, x10, 31
LBB1_58:                                //  %cond.end137
                                        //    in Loop: Header=BB1_6 Depth=1
	bgt x0, x11, LBB1_60
LBB1_59:                                //    in Loop: Header=BB1_6 Depth=1
	slti x1, x0, 1
	jalr x0, LBB1_114 ( x0 )
LBB1_60:                                //  %if.then141
                                        //    in Loop: Header=BB1_6 Depth=1
	addi x1, x0, 45
	add x3, x0, x0
	sb x1, 191 ( x2 )
	slti x1, x0, 1
	add x4, x0, x1
	bne x10, x3, LBB1_62
LBB1_61:                                //  %if.then141
                                        //    in Loop: Header=BB1_6 Depth=1
	add x4, x0, x3
LBB1_62:                                //  %if.then141
                                        //    in Loop: Header=BB1_6 Depth=1
	sub x3, x0, x11
	sub x11, x3, x4
	sub x10, x0, x10
	jalr x0, LBB1_114 ( x0 )
LBB1_63:                                //  %sw.bb144
                                        //    in Loop: Header=BB1_7 Depth=2
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	nop
	andi x1, x3, 32
	beqz x1, LBB1_65
LBB1_64:                                //  %if.then147
                                        //    in Loop: Header=BB1_7 Depth=2
	lw x1, 192 ( x2 )
	lw x5, 28 ( x2 )                //  4-byte Folded Reload
	nop
	srai x3, x5, 31
	addi x4, x1, 4
	sw x4, 192 ( x2 )
	lw x1, 0 ( x1 )
	nop
	sw x3, 4 ( x1 )
	sw x5, 0 ( x1 )
	jalr x0, LBB1_67 ( x0 )
LBB1_65:                                //  %if.else150
                                        //    in Loop: Header=BB1_7 Depth=2
	andi x1, x3, 16
	beqz x1, LBB1_68
LBB1_66:                                //  %if.then153
                                        //    in Loop: Header=BB1_7 Depth=2
	lw x1, 192 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 192 ( x2 )
	lw x1, 0 ( x1 )
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 0 ( x1 )
LBB1_67:                                //  %for.cond
                                        //    in Loop: Header=BB1_7 Depth=2
	addi x9, x2, 176
	lw x12, 64 ( x2 )               //  4-byte Folded Reload
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_7 ( x0 )
LBB1_68:                                //  %if.else155
                                        //    in Loop: Header=BB1_7 Depth=2
	andi x1, x3, 64
	beqz x1, LBB1_66
LBB1_69:                                //  %if.then158
                                        //    in Loop: Header=BB1_7 Depth=2
	lw x1, 192 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 192 ( x2 )
	lw x1, 0 ( x1 )
	lw x3, 28 ( x2 )                //  4-byte Folded Reload
	nop
	sh x3, 0 ( x1 )
	jalr x0, LBB1_67 ( x0 )
LBB1_70:                                //  %sw.bb166
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	nop
	ori x8, x8, 16
	jalr x0, LBB1_72 ( x0 )
LBB1_71:                                //  %sw.bb168.loopexit
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	nop
LBB1_72:                                //  %sw.bb168
                                        //    in Loop: Header=BB1_6 Depth=1
	andi x1, x8, 32
	beqz x1, LBB1_75
LBB1_73:                                //  %cond.true171
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x3, 192 ( x2 )
	add x1, x0, x0
	addi x4, x3, 4
	sw x4, 192 ( x2 )
	lw x10, 0 ( x3 )
	addi x3, x4, 4
	sw x3, 192 ( x2 )
	lw x11, 0 ( x4 )
LBB1_74:                                //  %nosign
                                        //    in Loop: Header=BB1_6 Depth=1
	addi x9, x2, 176
	lw x5, 36 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_113 ( x0 )
LBB1_75:                                //  %cond.false173
                                        //    in Loop: Header=BB1_6 Depth=1
	andi x1, x8, 16
	beqz x1, LBB1_77
LBB1_76:                                //  %cond.true176
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x1, 192 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 192 ( x2 )
	lw x10, 0 ( x1 )
	jalr x0, LBB1_79 ( x0 )
LBB1_77:                                //  %cond.false178
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x1, 192 ( x2 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	addi x4, x1, 4
	sw x4, 192 ( x2 )
	srli x28, x28, 20
	andi x4, x8, 64
	add x5, x0, x0
	lw x10, 0 ( x1 )
	or x1, x3, x28
	beq x4, x5, LBB1_79
LBB1_78:                                //  %cond.false178
                                        //    in Loop: Header=BB1_6 Depth=1
	and x10, x1, x10
LBB1_79:                                //  %cond.false178
                                        //    in Loop: Header=BB1_6 Depth=1
	addi x9, x2, 176
	lw x5, 36 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x0
	add x1, x0, x11
	jalr x0, LBB1_113 ( x0 )
LBB1_80:                                //  %sw.bb203
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x1, 192 ( x2 )
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	addi x3, x0, 48
	addi x4, x1, 4
	sw x4, 192 ( x2 )
	addi x4, x0, 120
	lui x5, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	lw x10, 0 ( x1 )
	sb x3, 70 ( x2 )
	sb x4, 71 ( x2 )
	add x11, x0, x0
	or x1, x5, x28
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	nop
	ori x8, x8, 2
	addi x1, x0, 2
	jalr x0, LBB1_74 ( x0 )
LBB1_81:                                //  %sw.bb208
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x1, 192 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 192 ( x2 )
	lw x10, 0 ( x1 )
	sb x0, 191 ( x2 )
	bgtu x10, x0, LBB1_86
LBB1_82:                                //  %if.then212
                                        //    in Loop: Header=BB1_6 Depth=1
	addi x1, x0, 6
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	bgtu x1, x3, LBB1_84
LBB1_83:                                //  %if.then212
                                        //    in Loop: Header=BB1_6 Depth=1
	add x3, x0, x1
LBB1_84:                                //  %if.then212
                                        //    in Loop: Header=BB1_6 Depth=1
	add x10, x0, x3
	lui x1, $.str.1 >> 12 & 0xfffff
	ori x28, x0, $.str.1 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
LBB1_85:                                //  %sw.epilog400
                                        //    in Loop: Header=BB1_6 Depth=1
	add x1, x0, x0
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_144 ( x0 )
LBB1_86:                                //  %if.else219
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x12, 36 ( x2 )               //  4-byte Folded Reload
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	bgt x0, x12, LBB1_90
LBB1_87:                                //  %if.then222
                                        //    in Loop: Header=BB1_6 Depth=1
	add x8, x0, x0
	add x11, x0, x8
	call $memchr
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	beq x10, x8, LBB1_89
LBB1_88:                                //  %if.then222
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sub x1, x10, x1
LBB1_89:                                //  %if.then222
                                        //    in Loop: Header=BB1_6 Depth=1
	add x10, x0, x1
	sw x8, 36 ( x2 )                //  4-byte Folded Spill
	jalr x0, LBB1_144 ( x0 )
LBB1_90:                                //  %if.else232
                                        //    in Loop: Header=BB1_6 Depth=1
	call $strlen
	jalr x0, LBB1_85 ( x0 )
LBB1_91:                                //  %sw.bb236
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	nop
	ori x8, x8, 16
	addi x9, x2, 176
	jalr x0, LBB1_93 ( x0 )
LBB1_92:                                //  %sw.bb238.loopexit
                                        //    in Loop: Header=BB1_6 Depth=1
	addi x9, x2, 176
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	nop
LBB1_93:                                //  %sw.bb238
                                        //    in Loop: Header=BB1_6 Depth=1
	andi x1, x8, 32
	beqz x1, LBB1_95
LBB1_94:                                //  %cond.true241
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x3, 192 ( x2 )
	slti x1, x0, 1
	addi x4, x3, 4
	sw x4, 192 ( x2 )
	lw x10, 0 ( x3 )
	addi x3, x4, 4
	sw x3, 192 ( x2 )
	lw x11, 0 ( x4 )
	lw x5, 36 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_113 ( x0 )
LBB1_95:                                //  %cond.false243
                                        //    in Loop: Header=BB1_6 Depth=1
	andi x1, x8, 16
	beqz x1, LBB1_97
LBB1_96:                                //  %cond.true246
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x1, 192 ( x2 )
	nop
	addi x3, x1, 4
	sw x3, 192 ( x2 )
	lw x10, 0 ( x1 )
	jalr x0, LBB1_99 ( x0 )
LBB1_97:                                //  %cond.false248
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x1, 192 ( x2 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x3, 65535 >> 12 & 0xfffff
	addi x4, x1, 4
	sw x4, 192 ( x2 )
	srli x28, x28, 20
	andi x4, x8, 64
	add x5, x0, x0
	lw x10, 0 ( x1 )
	or x1, x3, x28
	beq x4, x5, LBB1_99
LBB1_98:                                //  %cond.false248
                                        //    in Loop: Header=BB1_6 Depth=1
	and x10, x1, x10
LBB1_99:                                //  %cond.false248
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x5, 36 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x0
	slti x1, x0, 1
	jalr x0, LBB1_113 ( x0 )
LBB1_100:                               //  %hex.loopexit1630
                                        //    in Loop: Header=BB1_6 Depth=1
	ori x28, x0, $.str & 0xfff
	slli x28, x28, 20
	lui x1, $.str >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 120
	jalr x0, LBB1_102 ( x0 )
LBB1_101:                               //  %hex.loopexit
                                        //    in Loop: Header=BB1_6 Depth=1
	ori x28, x0, $.str.2 & 0xfff
	slli x28, x28, 20
	lui x1, $.str.2 >> 12 & 0xfffff
	srli x28, x28, 20
	or x1, x1, x28
	sw x1, 32 ( x2 )                //  4-byte Folded Spill
	addi x1, x0, 88
LBB1_102:                               //  %hex
                                        //    in Loop: Header=BB1_6 Depth=1
	addi x9, x2, 176
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	nop
	andi x3, x8, 32
	beqz x3, LBB1_104
LBB1_103:                               //  %cond.true277
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x3, 192 ( x2 )
	nop
	addi x4, x3, 4
	sw x4, 192 ( x2 )
	lw x10, 0 ( x3 )
	addi x3, x4, 4
	sw x3, 192 ( x2 )
	lw x11, 0 ( x4 )
	lw x5, 36 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_109 ( x0 )
LBB1_104:                               //  %cond.false279
                                        //    in Loop: Header=BB1_6 Depth=1
	andi x3, x8, 16
	beqz x3, LBB1_106
LBB1_105:                               //  %cond.true282
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x3, 192 ( x2 )
	nop
	addi x4, x3, 4
	sw x4, 192 ( x2 )
	lw x10, 0 ( x3 )
	jalr x0, LBB1_108 ( x0 )
LBB1_106:                               //  %cond.false284
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x3, 192 ( x2 )
	ori x28, x0, 65535 & 0xfff
	slli x28, x28, 20
	lui x4, 65535 >> 12 & 0xfffff
	addi x5, x3, 4
	sw x5, 192 ( x2 )
	srli x28, x28, 20
	andi x5, x8, 64
	add x7, x0, x0
	lw x10, 0 ( x3 )
	or x3, x4, x28
	beq x5, x7, LBB1_108
LBB1_107:                               //  %cond.false284
                                        //    in Loop: Header=BB1_6 Depth=1
	and x10, x3, x10
LBB1_108:                               //  %cond.false284
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x5, 36 ( x2 )                //  4-byte Folded Reload
	add x11, x0, x0
LBB1_109:                               //  %cond.end307
                                        //    in Loop: Header=BB1_6 Depth=1
	andi x3, x8, 1
	beqz x3, LBB1_112
LBB1_110:                               //  %cond.end307
                                        //    in Loop: Header=BB1_6 Depth=1
	or x3, x11, x10
	beqz x3, LBB1_112
LBB1_111:                               //  %if.then314
                                        //    in Loop: Header=BB1_6 Depth=1
	addi x3, x0, 48
	sb x3, 70 ( x2 )
	sb x1, 71 ( x2 )
	ori x8, x8, 2
LBB1_112:                               //  %nosign
                                        //    in Loop: Header=BB1_6 Depth=1
	addi x1, x0, 2
LBB1_113:                               //  %nosign
                                        //    in Loop: Header=BB1_6 Depth=1
	sb x0, 191 ( x2 )
LBB1_114:                               //  %number
                                        //    in Loop: Header=BB1_6 Depth=1
	not x3, x0
	ble x5, x3, LBB1_116
LBB1_115:                               //    in Loop: Header=BB1_6 Depth=1
	andi x8, x8, -129
LBB1_116:                               //  %number
                                        //    in Loop: Header=BB1_6 Depth=1
	bgtu x5, x0, LBB1_118
LBB1_117:                               //  %number
                                        //    in Loop: Header=BB1_6 Depth=1
	or x3, x11, x10
	beqz x3, LBB1_136
LBB1_118:                               //  %if.then331
                                        //    in Loop: Header=BB1_6 Depth=1
	beqz x1, LBB1_122
LBB1_119:                               //  %if.then331
                                        //    in Loop: Header=BB1_6 Depth=1
	andi x1, x1, 255
	xori x3, x1, 1
	beqz x3, LBB1_127
LBB1_120:                               //  %if.then331
                                        //    in Loop: Header=BB1_6 Depth=1
	xori x1, x1, 2
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB1_135
LBB1_121:                               //  %do.body368
                                        //    Parent Loop BB1_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	andi x1, x10, 15
	lw x3, 32 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	lb x1, 0 ( x1 )
	nop
	sb x1, -1 ( x5 )
	srli x1, x10, 4
	slli x3, x11, 28
	or x10, x3, x1
	addi x5, x5, -1
	srli x11, x11, 4
	or x1, x11, x10
	bgtu x1, x0, LBB1_121
	jalr x0, LBB1_141 ( x0 )
LBB1_122:                               //  %do.body334.preheader
                                        //    in Loop: Header=BB1_6 Depth=1
	addi x1, x2, 111
LBB1_123:                               //  %do.body334
                                        //    Parent Loop BB1_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	srli x3, x10, 3
	slli x4, x11, 29
	or x4, x4, x3
	andi x3, x10, 7
	ori x3, x3, 48
	sb x3, 0 ( x1 )
	addi x1, x1, -1
	srli x11, x11, 3
	or x5, x11, x4
	add x10, x0, x4
	bgtu x5, x0, LBB1_123
LBB1_124:                               //  %do.end341
                                        //    in Loop: Header=BB1_6 Depth=1
	addi x5, x1, 1
	andi x4, x8, 1
	beqz x4, LBB1_141
LBB1_125:                               //  %do.end341
                                        //    in Loop: Header=BB1_6 Depth=1
	xori x3, x3, 48
	beqz x3, LBB1_141
LBB1_126:                               //  %if.then348
                                        //    in Loop: Header=BB1_6 Depth=1
	addi x3, x0, 48
	sb x3, 0 ( x1 )
	jalr x0, LBB1_140 ( x0 )
LBB1_127:                               //  %sw.bb351
                                        //    in Loop: Header=BB1_6 Depth=1
	add x1, x0, x0
	bne x11, x1, LBB1_129
LBB1_128:                               //    in Loop: Header=BB1_6 Depth=1
	sltiu x1, x10, 10
LBB1_129:                               //  %sw.bb351
                                        //    in Loop: Header=BB1_6 Depth=1
	bgtu x1, x0, LBB1_210
LBB1_130:                               //    in Loop: Header=BB1_6 Depth=1
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	sw x8, 48 ( x2 )                //  4-byte Folded Spill
LBB1_131:                               //  %do.body359
                                        //    Parent Loop BB1_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x11, 40 ( x2 )               //  4-byte Folded Spill
	sw x5, 44 ( x2 )                //  4-byte Folded Spill
	addi x12, x0, 10
	add x13, x0, x0
	add x8, x0, x10
	call $__umoddi3
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	sw x8, 20 ( x2 )                //  4-byte Folded Spill
	add x10, x0, x8
	lw x11, 40 ( x2 )               //  4-byte Folded Reload
	addi x12, x0, 10
	add x13, x0, x0
	call $__udivdi3
	lw x8, 40 ( x2 )                //  4-byte Folded Reload
	add x1, x0, x0
	bne x8, x1, LBB1_133
LBB1_132:                               //    in Loop: Header=BB1_131 Depth=2
	addi x1, x0, 9
	lw x3, 20 ( x2 )                //  4-byte Folded Reload
	nop
	sltu x1, x1, x3
	jalr x0, LBB1_134 ( x0 )
LBB1_133:                               //  %do.body359
                                        //    in Loop: Header=BB1_131 Depth=2
	sltu x1, x0, x8
LBB1_134:                               //  %do.body359
                                        //    in Loop: Header=BB1_131 Depth=2
	addi x9, x2, 176
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
	lw x5, 44 ( x2 )                //  4-byte Folded Reload
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	ori x3, x3, 48
	sb x3, -1 ( x5 )
	addi x5, x5, -1
	bgtu x1, x0, LBB1_131
	jalr x0, LBB1_141 ( x0 )
LBB1_135:                               //  %sw.default
                                        //    in Loop: Header=BB1_6 Depth=1
	lui x1, $.str.3 >> 12 & 0xfffff
	ori x28, x0, $.str.3 & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	or x10, x1, x28
	sw x10, 44 ( x2 )               //  4-byte Folded Spill
	call $strlen
	addi x9, x2, 176
	addi x5, x0, 16
	jalr x0, LBB1_145 ( x0 )
LBB1_136:                               //  %if.else377
                                        //    in Loop: Header=BB1_6 Depth=1
	andi x1, x1, 255
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB1_141
LBB1_137:                               //  %if.else377
                                        //    in Loop: Header=BB1_6 Depth=1
	andi x1, x8, 1
	lw x5, 12 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_141
LBB1_138:                               //  %if.then384
                                        //    in Loop: Header=BB1_6 Depth=1
	addi x1, x0, 48
LBB1_139:                               //  %if.end387
                                        //    in Loop: Header=BB1_6 Depth=1
	sb x1, 111 ( x2 )
	addi x1, x2, 111
LBB1_140:                               //  %if.end387
                                        //    in Loop: Header=BB1_6 Depth=1
	add x5, x0, x1
LBB1_141:                               //  %if.end387
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x1, 12 ( x2 )                //  4-byte Folded Reload
	sw x5, 44 ( x2 )                //  4-byte Folded Spill
	sub x10, x1, x5
	addi x5, x0, 16
	jalr x0, LBB1_145 ( x0 )
LBB1_142:                               //  %if.end397
                                        //    in Loop: Header=BB1_6 Depth=1
	sb x4, 72 ( x2 )
	sb x0, 191 ( x2 )
LBB1_143:                               //  %sw.epilog400
                                        //    in Loop: Header=BB1_6 Depth=1
	addi x1, x2, 72
	sw x1, 44 ( x2 )                //  4-byte Folded Spill
	add x1, x0, x0
	sw x1, 36 ( x2 )                //  4-byte Folded Spill
	slti x1, x0, 1
	add x10, x0, x1
LBB1_144:                               //  %sw.epilog400
                                        //    in Loop: Header=BB1_6 Depth=1
	addi x9, x2, 176
	addi x5, x0, 16
	lw x8, 48 ( x2 )                //  4-byte Folded Reload
LBB1_145:                               //  %sw.epilog400
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x3, 36 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x0, x3
	bgt x3, x10, LBB1_147
LBB1_146:                               //  %sw.epilog400
                                        //    in Loop: Header=BB1_6 Depth=1
	add x1, x0, x10
LBB1_147:                               //  %sw.epilog400
                                        //    in Loop: Header=BB1_6 Depth=1
	sw x10, 24 ( x2 )               //  4-byte Folded Spill
	lbu x3, 191 ( x2 )
	nop
	sltu x3, x0, x3
	andi x3, x3, 1
	add x3, x1, x3
	andi x1, x8, 2
	sw x1, 20 ( x2 )                //  4-byte Folded Spill
	srli x1, x1, 1
	lw x4, 16 ( x2 )                //  4-byte Folded Reload
	beqz x1, LBB1_149
LBB1_148:                               //    in Loop: Header=BB1_6 Depth=1
	addi x3, x3, 2
LBB1_149:                               //  %sw.epilog400
                                        //    in Loop: Header=BB1_6 Depth=1
	sw x3, 40 ( x2 )                //  4-byte Folded Spill
	andi x1, x8, 132
	sw x1, 8 ( x2 )                 //  4-byte Folded Spill
	sw x8, 48 ( x2 )                //  4-byte Folded Spill
	bgtu x1, x0, LBB1_159
LBB1_150:                               //  %if.then419
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x1, x3
	ble x8, x0, LBB1_159
LBB1_151:                               //  %while.cond424.preheader
                                        //    in Loop: Header=BB1_6 Depth=1
	ori x28, x0, $_svfiprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfiprintf_r.blanks >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	slti x3, x8, 17
	bgtu x3, x0, LBB1_156
LBB1_152:                               //  %while.body427
                                        //    Parent Loop BB1_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x5, 0 ( x1 )
	lw x1, 8 ( x9 )
	nop
	addi x1, x1, 16
	sw x1, 8 ( x9 )
	lw x1, 180 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 180 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_154
LBB1_153:                               //    in Loop: Header=BB1_152 Depth=2
	addi x4, x4, 8
	jalr x0, LBB1_155 ( x0 )
LBB1_154:                               //  %if.then437
                                        //    in Loop: Header=BB1_152 Depth=2
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 176
	call $__ssprint_r
	addi x5, x0, 16
	addi x9, x2, 176
	addi x1, x2, 112
	add x4, x0, x1
	bgtu x10, x0, LBB1_206
LBB1_155:                               //  %if.end443
                                        //    in Loop: Header=BB1_152 Depth=2
	ori x28, x0, $_svfiprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfiprintf_r.blanks >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	addi x8, x8, -16
	bgt x8, x5, LBB1_152
LBB1_156:                               //  %while.end445
                                        //    in Loop: Header=BB1_6 Depth=1
	sw x8, 0 ( x1 )
	lw x1, 8 ( x9 )
	nop
	add x1, x8, x1
	sw x1, 8 ( x9 )
	lw x1, 180 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 180 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_158
LBB1_157:                               //    in Loop: Header=BB1_6 Depth=1
	addi x4, x4, 8
	jalr x0, LBB1_159 ( x0 )
LBB1_158:                               //  %if.then455
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 176
	call $__ssprint_r
	addi x5, x0, 16
	addi x9, x2, 176
	addi x1, x2, 112
	add x4, x0, x1
	bgtu x10, x0, LBB1_206
LBB1_159:                               //  %if.end463
                                        //    in Loop: Header=BB1_6 Depth=1
	lbu x1, 191 ( x2 )
	nop
	beqz x1, LBB1_163
LBB1_160:                               //  %if.then465
                                        //    in Loop: Header=BB1_6 Depth=1
	addi x1, x2, 191
	sw x1, 0 ( x4 )
	slti x1, x0, 1
	sw x1, 4 ( x4 )
	lw x1, 8 ( x9 )
	nop
	addi x1, x1, 1
	sw x1, 8 ( x9 )
	lw x1, 180 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 180 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_162
LBB1_161:                               //    in Loop: Header=BB1_6 Depth=1
	addi x4, x4, 8
	jalr x0, LBB1_163 ( x0 )
LBB1_162:                               //  %if.then475
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 176
	call $__ssprint_r
	addi x5, x0, 16
	addi x9, x2, 176
	addi x1, x2, 112
	add x4, x0, x1
	bgtu x10, x0, LBB1_206
LBB1_163:                               //  %if.end482
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x1, 20 ( x2 )                //  4-byte Folded Reload
	nop
	beqz x1, LBB1_167
LBB1_164:                               //  %if.then485
                                        //    in Loop: Header=BB1_6 Depth=1
	addi x1, x2, 70
	sw x1, 0 ( x4 )
	addi x1, x0, 2
	sw x1, 4 ( x4 )
	lw x1, 8 ( x9 )
	nop
	addi x1, x1, 2
	sw x1, 8 ( x9 )
	lw x1, 180 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 180 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_166
LBB1_165:                               //    in Loop: Header=BB1_6 Depth=1
	addi x4, x4, 8
	jalr x0, LBB1_167 ( x0 )
LBB1_166:                               //  %if.then496
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 176
	call $__ssprint_r
	addi x5, x0, 16
	addi x9, x2, 176
	addi x1, x2, 112
	add x4, x0, x1
	bgtu x10, x0, LBB1_206
LBB1_167:                               //  %if.end503
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x1, 8 ( x2 )                 //  4-byte Folded Reload
	nop
	xori x1, x1, 128
	bgtu x1, x0, LBB1_177
LBB1_168:                               //  %if.then507
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x1, 60 ( x2 )                //  4-byte Folded Reload
	lw x3, 40 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x1, x3
	ble x8, x0, LBB1_177
LBB1_169:                               //  %while.cond512.preheader
                                        //    in Loop: Header=BB1_6 Depth=1
	ori x28, x0, $_svfiprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfiprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	slti x3, x8, 17
	bgtu x3, x0, LBB1_174
LBB1_170:                               //  %while.body515
                                        //    Parent Loop BB1_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x5, 0 ( x1 )
	lw x1, 8 ( x9 )
	nop
	addi x1, x1, 16
	sw x1, 8 ( x9 )
	lw x1, 180 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 180 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_172
LBB1_171:                               //    in Loop: Header=BB1_170 Depth=2
	addi x4, x4, 8
	jalr x0, LBB1_173 ( x0 )
LBB1_172:                               //  %if.then525
                                        //    in Loop: Header=BB1_170 Depth=2
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 176
	call $__ssprint_r
	addi x5, x0, 16
	addi x9, x2, 176
	addi x1, x2, 112
	add x4, x0, x1
	bgtu x10, x0, LBB1_206
LBB1_173:                               //  %if.end531
                                        //    in Loop: Header=BB1_170 Depth=2
	ori x28, x0, $_svfiprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfiprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	addi x8, x8, -16
	bgt x8, x5, LBB1_170
LBB1_174:                               //  %while.end533
                                        //    in Loop: Header=BB1_6 Depth=1
	sw x8, 0 ( x1 )
	lw x1, 8 ( x9 )
	nop
	add x1, x8, x1
	sw x1, 8 ( x9 )
	lw x1, 180 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 180 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_176
LBB1_175:                               //    in Loop: Header=BB1_6 Depth=1
	addi x4, x4, 8
	jalr x0, LBB1_177 ( x0 )
LBB1_176:                               //  %if.then543
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 176
	call $__ssprint_r
	addi x5, x0, 16
	addi x9, x2, 176
	addi x1, x2, 112
	add x4, x0, x1
	bgtu x10, x0, LBB1_206
LBB1_177:                               //  %if.end551
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x1, 36 ( x2 )                //  4-byte Folded Reload
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x1, x3
	ble x8, x0, LBB1_186
LBB1_178:                               //  %while.cond556.preheader
                                        //    in Loop: Header=BB1_6 Depth=1
	ori x28, x0, $_svfiprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfiprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	slti x3, x8, 17
	bgtu x3, x0, LBB1_183
LBB1_179:                               //  %while.body559
                                        //    Parent Loop BB1_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x5, 0 ( x1 )
	lw x1, 8 ( x9 )
	nop
	addi x1, x1, 16
	sw x1, 8 ( x9 )
	lw x1, 180 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 180 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_181
LBB1_180:                               //    in Loop: Header=BB1_179 Depth=2
	addi x4, x4, 8
	jalr x0, LBB1_182 ( x0 )
LBB1_181:                               //  %if.then569
                                        //    in Loop: Header=BB1_179 Depth=2
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 176
	call $__ssprint_r
	addi x5, x0, 16
	addi x9, x2, 176
	addi x1, x2, 112
	add x4, x0, x1
	bgtu x10, x0, LBB1_206
LBB1_182:                               //  %if.end575
                                        //    in Loop: Header=BB1_179 Depth=2
	ori x28, x0, $_svfiprintf_r.zeroes & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x1, $_svfiprintf_r.zeroes >> 12 & 0xfffff
	or x1, x1, x28
	sw x1, 0 ( x4 )
	addi x1, x4, 4
	addi x8, x8, -16
	bgt x8, x5, LBB1_179
LBB1_183:                               //  %while.end577
                                        //    in Loop: Header=BB1_6 Depth=1
	sw x8, 0 ( x1 )
	lw x1, 8 ( x9 )
	nop
	add x1, x8, x1
	sw x1, 8 ( x9 )
	lw x1, 180 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 180 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_185
LBB1_184:                               //    in Loop: Header=BB1_6 Depth=1
	addi x4, x4, 8
	jalr x0, LBB1_186 ( x0 )
LBB1_185:                               //  %if.then587
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 176
	call $__ssprint_r
	addi x5, x0, 16
	addi x9, x2, 176
	addi x1, x2, 112
	add x4, x0, x1
	bgtu x10, x0, LBB1_206
LBB1_186:                               //  %if.end594
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x1, 44 ( x2 )                //  4-byte Folded Reload
	nop
	sw x1, 0 ( x4 )
	lw x3, 24 ( x2 )                //  4-byte Folded Reload
	nop
	sw x3, 4 ( x4 )
	lw x1, 8 ( x9 )
	nop
	add x1, x3, x1
	sw x1, 8 ( x9 )
	lw x1, 180 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 180 ( x2 )
	slti x1, x1, 7
	beqz x1, LBB1_188
LBB1_187:                               //    in Loop: Header=BB1_6 Depth=1
	addi x1, x4, 8
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	jalr x0, LBB1_189 ( x0 )
LBB1_188:                               //  %if.then604
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 176
	call $__ssprint_r
	addi x5, x0, 16
	addi x9, x2, 176
	addi x1, x2, 112
	lw x3, 48 ( x2 )                //  4-byte Folded Reload
	bgtu x10, x0, LBB1_206
LBB1_189:                               //  %if.end610
                                        //    in Loop: Header=BB1_6 Depth=1
	andi x3, x3, 4
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	beqz x3, LBB1_198
LBB1_190:                               //  %if.then613
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	nop
	sub x8, x3, x4
	ble x8, x0, LBB1_198
LBB1_191:                               //  %while.cond618.preheader
                                        //    in Loop: Header=BB1_6 Depth=1
	ori x28, x0, $_svfiprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $_svfiprintf_r.blanks >> 12 & 0xfffff
	or x3, x3, x28
	sw x3, 0 ( x1 )
	addi x3, x1, 4
	slti x4, x8, 17
	bgtu x4, x0, LBB1_196
LBB1_192:                               //  %while.body621
                                        //    Parent Loop BB1_6 Depth=1
                                        //  =>  This Inner Loop Header: Depth=2
	sw x5, 0 ( x3 )
	lw x3, 8 ( x9 )
	nop
	addi x3, x3, 16
	sw x3, 8 ( x9 )
	lw x3, 180 ( x2 )
	nop
	addi x4, x3, 1
	sw x4, 180 ( x2 )
	slti x3, x3, 7
	beqz x3, LBB1_194
LBB1_193:                               //    in Loop: Header=BB1_192 Depth=2
	addi x1, x1, 8
	jalr x0, LBB1_195 ( x0 )
LBB1_194:                               //  %if.then631
                                        //    in Loop: Header=BB1_192 Depth=2
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 176
	call $__ssprint_r
	addi x5, x0, 16
	addi x9, x2, 176
	addi x1, x2, 112
	bgtu x10, x0, LBB1_206
LBB1_195:                               //  %if.end637
                                        //    in Loop: Header=BB1_192 Depth=2
	ori x28, x0, $_svfiprintf_r.blanks & 0xfff
	slli x28, x28, 20
	srli x28, x28, 20
	lui x3, $_svfiprintf_r.blanks >> 12 & 0xfffff
	or x3, x3, x28
	sw x3, 0 ( x1 )
	addi x3, x1, 4
	addi x8, x8, -16
	bgt x8, x5, LBB1_192
LBB1_196:                               //  %while.end639
                                        //    in Loop: Header=BB1_6 Depth=1
	sw x8, 0 ( x3 )
	lw x1, 8 ( x9 )
	nop
	add x1, x8, x1
	sw x1, 8 ( x9 )
	lw x1, 180 ( x2 )
	nop
	addi x3, x1, 1
	sw x3, 180 ( x2 )
	slti x1, x1, 7
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	bgtu x1, x0, LBB1_198
LBB1_197:                               //  %if.then649
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 176
	call $__ssprint_r
	lw x4, 40 ( x2 )                //  4-byte Folded Reload
	addi x9, x2, 176
	bgtu x10, x0, LBB1_206
LBB1_198:                               //  %if.end657
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x3, 60 ( x2 )                //  4-byte Folded Reload
	nop
	bgt x3, x4, LBB1_200
LBB1_199:                               //  %if.end657
                                        //    in Loop: Header=BB1_6 Depth=1
	add x3, x0, x4
LBB1_200:                               //  %if.end657
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x1, 28 ( x2 )                //  4-byte Folded Reload
	nop
	add x1, x1, x3
	sw x1, 28 ( x2 )                //  4-byte Folded Spill
	lw x1, 184 ( x2 )
	nop
	beqz x1, LBB1_202
LBB1_201:                               //  %land.lhs.true667
                                        //    in Loop: Header=BB1_6 Depth=1
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	addi x12, x2, 176
	call $__ssprint_r
	addi x9, x2, 176
	bgtu x10, x0, LBB1_206
LBB1_202:                               //  %if.end671
                                        //    in Loop: Header=BB1_6 Depth=1
	sw x0, 180 ( x2 )
	addi x1, x2, 112
	lw x12, 64 ( x2 )               //  4-byte Folded Reload
	jalr x0, LBB1_6 ( x0 )
LBB1_203:                               //  %done
	lw x1, 184 ( x2 )
	nop
	beqz x1, LBB1_205
LBB1_204:                               //  %land.lhs.true680
	addi x12, x2, 176
	lw x10, 52 ( x2 )               //  4-byte Folded Reload
	lw x11, 56 ( x2 )               //  4-byte Folded Reload
	nop
	call $__ssprint_r
	bgtu x10, x0, LBB1_206
LBB1_205:                               //  %if.end684
	sw x0, 180 ( x2 )
LBB1_206:                               //  %if.end690
	lw x1, 56 ( x2 )                //  4-byte Folded Reload
	nop
	lbu x1, 12 ( x1 )
	nop
	andi x1, x1, 64
	srli x1, x1, 6
	beqz x1, LBB1_208
LBB1_207:
	not x10, x0
	jalr x0, LBB1_209 ( x0 )
LBB1_208:                               //  %if.end690
	lw x10, 28 ( x2 )               //  4-byte Folded Reload
LBB1_209:                               //  %cleanup
	lw x8, 196 ( x2 )               //  4-byte Folded Reload
	lw x1, 204 ( x2 )
$cfi11:
	.cfi_same_value 1
	addi x2, x2, 208
$cfi12:
	.cfi_adjust_cfa_offset -208
$cfi13:
	.cfi_def_cfa 2, 0
	ret
LBB1_210:                               //  %if.then354
                                        //    in Loop: Header=BB1_6 Depth=1
	addi x1, x10, 48
	jalr x0, LBB1_139 ( x0 )
$func_end1:
	.size	$_svfiprintf_r, ($func_end1)-($_svfiprintf_r)
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
JTI1_0:
	.long	LBB1_203
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_22
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_24
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_27
	.long	LBB1_30
	.long	LBB1_142
	.long	LBB1_29
	.long	LBB1_31
	.long	LBB1_142
	.long	LBB1_40
	.long	LBB1_41
	.long	LBB1_41
	.long	LBB1_41
	.long	LBB1_41
	.long	LBB1_41
	.long	LBB1_41
	.long	LBB1_41
	.long	LBB1_41
	.long	LBB1_41
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_49
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_70
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_91
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_101
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_48
	.long	LBB1_50
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_43
	.long	LBB1_50
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_44
	.long	LBB1_142
	.long	LBB1_63
	.long	LBB1_71
	.long	LBB1_80
	.long	LBB1_47
	.long	LBB1_142
	.long	LBB1_81
	.long	LBB1_142
	.long	LBB1_92
	.long	LBB1_142
	.long	LBB1_142
	.long	LBB1_100

	.address_space	0	
	.type	$_svfiprintf_r.blanks,@object //  @_svfiprintf_r.blanks
$_svfiprintf_r.blanks:
	.zero	16,32
	.size	$_svfiprintf_r.blanks, 16

	.address_space	0	
	.type	$_svfiprintf_r.zeroes,@object //  @_svfiprintf_r.zeroes
$_svfiprintf_r.zeroes:
	.zero	16,48
	.size	$_svfiprintf_r.zeroes, 16

	.address_space	0	
	.type	$.str,@object           //  @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"0123456789abcdef"
	.size	$.str, 17

	.address_space	0	
	.type	$.str.1,@object         //  @.str.1
$.str.1:
	.asciz	"(null)"
	.size	$.str.1, 7

	.address_space	0	
	.type	$.str.2,@object         //  @.str.2
$.str.2:
	.asciz	"0123456789ABCDEF"
	.size	$.str.2, 17

	.address_space	0	
	.type	$.str.3,@object         //  @.str.3
$.str.3:
	.asciz	"bug in vfprintf: bad base"
	.size	$.str.3, 26


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
